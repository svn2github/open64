/*
 * nystrom_alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>
#include "be_util.h"
#include "cxx_memory.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "nystrom_alias_analyzer.h"

extern BOOL Write_ALIAS_CGNODE_Map;

PointsTo NystromAliasAnalyzer::emptyPointsToSet;

NystromAliasAnalyzer::NystromAliasAnalyzer(ALIAS_CONTEXT &ac)
  : AliasAnalyzer()
{
  // Activate the use of the Nystrom points-to analysis by the
  // ALIAS_RULE harness and disable alias classification rules.
  ac |= ALIAS_ANALYZER_RULE;
  ac &= ~(CLAS_RULE|IP_CLAS_RULE);

  // Create ConstraintGraph from the summary information generated at IPA
  // For now set it to null
  _constraintGraph = NULL;

  // Set flag to dump the WN to CGNodeId map during Write_PU_Info
  Write_ALIAS_CGNODE_Map = TRUE;
}

NystromAliasAnalyzer::NystromAliasAnalyzer()
{
  // Create ConstraintGraphs from the summary information generated at IPL

  ConstraintGraph::inIPA(true);

  // Set flag to dump the WN to CGNodeId map during Write_PU_Info
  Write_ALIAS_CGNODE_Map = TRUE;
}

NystromAliasAnalyzer::NystromAliasAnalyzer(ALIAS_CONTEXT &ac,
                                           WN *entryWN)
  : AliasAnalyzer(),
    _nextAliasTag(InitialAliasTag)
{
  // Activate the use of the Nystrom points-to analysis by the
  // ALIAS_RULE harness and disable alias classification rules.
  ac |= ALIAS_ANALYZER_RULE;
  ac &= ~(CLAS_RULE|IP_CLAS_RULE);

  _constraintGraph = CXX_NEW(ConstraintGraph(entryWN, &_memPool), &_memPool);
  if (Get_Trace(TP_ALIAS,NYSTROM_CG_PRE_FLAG)) {
    _constraintGraph->print(stderr);
    fdump_tree(stderr, entryWN);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG)) {
    char buf[1024];
    sprintf(buf,"%s_initial",ST_name(WN_st(entryWN)));
    ConstraintGraphVCG::dumpVCG(_constraintGraph, buf);
  }

  if (!_constraintGraph->nonIPASolver())
    return;

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG)) {
    char buf[1024];
    sprintf(buf,"%s_final",ST_name(WN_st(entryWN)));
    ConstraintGraphVCG::dumpVCG(_constraintGraph, buf);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_POST_FLAG)) {
    fprintf(stderr,"Nystrom analysis...complete\n");
    _constraintGraph->print(stderr);
  }

  // Map WNs to AliasTags
  createAliasTags(entryWN);

  // Set flag to dump the WN to CGNodeId map during Write_PU_Info
  Write_ALIAS_CGNODE_Map = TRUE;
}

NystromAliasAnalyzer::~NystromAliasAnalyzer() {}

ALIAS_RESULT
NystromAliasAnalyzer::aliased(AliasTag tag1, AliasTag tag2)
{
  incrAliasQueryCount();

  if (tag1 == InvalidAliasTag || tag1 == EmptyAliasTag ||
      tag2 == InvalidAliasTag || tag2 == EmptyAliasTag ||
      tag1 == tag2)
    return POSSIBLY_ALIASED;

  // Canonicalize the queries, eventually we will be caching
  // the result rather than performing a set intersection
  if (tag1 > tag2) {
    AliasTag tmp = tag2;
    tag2 = tag1;
    tag1 = tmp;
  }

  bool result;
  if (checkQueryFile((UINT32)Current_PU_Count(),tag1,tag2,result))
    return result ? POSSIBLY_ALIASED : NOT_ALIASED;

  PointsTo& ptsSet1 = pointsTo(tag1);
  PointsTo& ptsSet2 = pointsTo(tag2);
  FmtAssert(!ptsSet1.isEmpty(),
            ("Points-to set of alias tag %d is unexpectedly empty",tag1));
  FmtAssert(!ptsSet2.isEmpty(),
            ("Points-to set of alias tag %d is unexpectedly empty",tag2));
  if (ptsSet1.intersect(ptsSet2))
    return POSSIBLY_ALIASED;

  return NOT_ALIASED;
}

/*
 * Generates an AliasTag for a provided <ST,offset,size> triple.
 * Assembles a points-to set that consists of the CGNodeIds for each
 * existing <ST,offset> .... <ST,offset+size-1> that exists.
 */
AliasTag
NystromAliasAnalyzer::genAliasTag(ST *st, INT64 offset, INT64 size, bool direct)
{
  AliasTag aliasTag = InvalidAliasTag;

  if (_constraintGraph == NULL)
    return aliasTag;

  // Scale preg offsets by Pointer_Size
  if (ST_class(st) == CLASS_PREG)
    offset *= Pointer_Size;

  if (offset < 0)
    offset = -offset;

  // First we adjust the requested offset by any modulus that
  // is being model by the constraint graph for this symbol.
  ConstraintGraph *cg = _constraintGraph;
  StInfo *stInfo = cg->stInfo(CG_ST_st_idx(st));
  if (!stInfo)
    return aliasTag;
  if (!stInfo->checkFlags(CG_ST_FLAGS_PREG))
    offset = offset % stInfo->modulus();

  // First we check to see if we have been asked this question before...
  StToAliasTagKey atKey(CG_ST_st_idx(st),offset,size);
  StToAliasTagMapIterator atIter = _stToAliasTagMap.find(atKey);
  if (atIter != _stToAliasTagMap.end())
    aliasTag = atIter->second;
  else {
    // Apparently we did not find a previous query.  So, we either
    // (a) find <ST,offset> exactly when size == 0
    // (b) find <ST,offset> ... <ST,offset+size-1> when size >= zero
    if (size == 0) {
      ConstraintGraphNode *node = cg->checkCGNode(CG_ST_st_idx(st),offset);
      if (node) {
        aliasTag = newAliasTag();
        AliasTagInfo *aliasTagInfo = _aliasTagInfo[aliasTag];
        if (direct) {
          // Record the CGNode that materialized this aliasTag, so
          // that we can restore the mapping from WN to CGNodeIds during
          // CODEREP to WN lowering
          _aliasTagToCGNodeIdMap[aliasTag] = node->id();
          // Add self reference and black hole if required
          aliasTagInfo->pointsTo().setBit(node->id());
          if (node->checkPointsTo(cg->cgNode(cg->blackHoleId()),CQ_GBL))
            aliasTagInfo->pointsTo().setBit(cg->blackHoleId());
        }
        else {
          aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_GBL));
          aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_DN));
          aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_HZ));
        }
        _stToAliasTagMap[atKey] = aliasTag;
      }
    }
    else {
      ConstraintGraphNode *node = stInfo->firstOffset();
      AliasTagInfo *aliasTagInfo = NULL;
      while (node && node->offset() < offset+size) {
        if (node->offset() >= offset) {
          if (aliasTag == InvalidAliasTag) {
            aliasTag = newAliasTag();
            aliasTagInfo = _aliasTagInfo[aliasTag];
            // Save this result in case we are asked for it again
            _stToAliasTagMap[atKey] = aliasTag;
            // Record the CGNode that materialized this aliasTag, so
            // that we can restore the mapping from WN to CGNodeIds during
            // CODEREP to WN lowering
            if (direct)
              _aliasTagToCGNodeIdMap[aliasTag] = node->id();
          }
          if (direct) {
            // Add self reference and black hole if required
            aliasTagInfo->pointsTo().setBit(node->id());
            if (node->checkPointsTo(cg->cgNode(cg->blackHoleId()),CQ_GBL))
              aliasTagInfo->pointsTo().setBit(cg->blackHoleId());
          }
          else {
            aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_GBL));
            aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_DN));
            aliasTagInfo->pointsTo().setUnion(node->pointsTo(CQ_HZ));
          }
        }
        node = node->nextOffset();
      }
    }
    if (aliasTag != InvalidAliasTag &&
        Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
      fprintf(stderr, "new aliasTag %d for %s <%d,%d,%d> with aliasTagInfo: ",
              (UINT32)aliasTag,ST_name(ST_st_idx(st)),(INT32)ST_st_idx(st),(INT32)offset,(INT32)size);
      _aliasTagInfo[aliasTag]->print(stderr);
      fprintf(stderr, "\n");
    }
  }
  return aliasTag;
}

void
NystromAliasAnalyzer::aliasedWithCall(ST *call, AliasTag symTag,
                                      BOOL &mod, BOOL &ref)
{
  mod = ref = TRUE;
}

BOOL
NystromAliasAnalyzer::pointsToSet(AliasTag, PointsTo &)
{
  return FALSE;
}

AliasTag 
NystromAliasAnalyzer::newAliasTag(void) 
{ 
  AliasTag tag = _nextAliasTag;
  AliasTagInfo *aliasTagInfo = CXX_NEW(AliasTagInfo(&_memPool), &_memPool);
  // Associate the AliasTagInfo with the aliasTag
  _aliasTagInfo[_nextAliasTag] = aliasTagInfo;
  _nextAliasTag = (AliasTag)((UINT32)_nextAliasTag + 1);
  return tag;
}

AliasTag 
NystromAliasAnalyzer::newCallAliasTag(void) 
{ 
  AliasTag tag = _nextAliasTag;
  CallAliasTagInfo *aliasTagInfo = 
                    CXX_NEW(CallAliasTagInfo(&_memPool), &_memPool);
  // Associate the AliasTagInfo with the aliasTag
  _aliasTagInfo[_nextAliasTag] = aliasTagInfo;
  _nextAliasTag = (AliasTag)((UINT32)_nextAliasTag + 1);
  return tag;
}

// Unions the points-to set of srcTag into the points-to set of dstTag.
void
NystromAliasAnalyzer::mergePointsTo(AliasTag dstTag, AliasTag srcTag)
{
  AliasTagInfo *dstInfo = _aliasTagInfo[dstTag];
  AliasTagInfo *srcInfo = _aliasTagInfo[srcTag];

  FmtAssert(dstInfo != NULL, ("No AliasTagInfo associated with dstTag: %d\n",
            dstTag));
  FmtAssert(srcInfo != NULL, ("No AliasTagInfo associated with srcTag: %d\n",
            srcTag));

  dstInfo->pointsTo().setUnion(srcInfo->pointsTo());
}

AliasTag
NystromAliasAnalyzer::meet(AliasTag dstTag, AliasTag srcTag)
{
  if (dstTag == InvalidAliasTag || srcTag == InvalidAliasTag)
    return InvalidAliasTag;

  AliasTag retTag = dstTag;
  if (dstTag == EmptyAliasTag)
    retTag = newAliasTag();
  mergePointsTo(retTag,srcTag);
  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"Meet of aliasTag %d, aliasTag %d:",dstTag,srcTag);
    fprintf(stderr," result aliasTag %d [",retTag);
    pointsTo(retTag).print(stderr);
    fprintf(stderr,"]\n");
  }
  return retTag;
}

// Map the WNs to an AliasTag. Each AliasTag in turn is mapped to
// an AliasTagInfo which stores the points-to set (CGNodeIds) of the
// locations accessed by the WN
void
NystromAliasAnalyzer::createAliasTags(WN *entryWN)
{
  for (WN_ITER *wni = WN_WALK_TreeIter(entryWN);
       wni; wni = WN_WALK_TreeNext(wni))
  {
    WN *wn = WN_ITER_wn(wni);
    const OPCODE   opc = WN_opcode(wn);
    const OPERATOR opr = OPCODE_operator(opc);

    AliasTag aliasTag = InvalidAliasTag;

    // We only consider indirects; direct references are handled by genAliasTag
    // called during Transfer_alias_tag
    if (OPERATOR_is_scalar_istore(opr) || 
        OPERATOR_is_scalar_iload(opr) ||
        opr == OPR_MSTORE || 
        opr == OPR_MLOAD)
    {
      CGNodeId id;
      // For ILOADS, the points-to set is associated with the address
      // of the iload. So get the CGNode corresponding to the address WN.
      if (opr == OPR_ILDBITS || opr == OPR_MLOAD || opr == OPR_ILOAD)
        id = WN_MAP_CGNodeId_Get(WN_kid0(wn));
      else
        id = WN_MAP_CGNodeId_Get(wn);

      // WN not mapped to any CGNodes
      if (id == 0)
        continue;

      ConstraintGraphNode *cgNode = _constraintGraph->cgNode(id);
      if (cgNode->parent())
        cgNode = cgNode->parent();
      FmtAssert(cgNode != NULL, ("CGNodeId : %d not mapped to a "
                "ConstraintGraphNode\n", id));

      // Any node flagged as unknown is a bad situation, we need
      // to prevent generating an AliasTag for this node
      if (cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        continue;

      aliasTag = newAliasTag();
      AliasTagInfo *aliasTagInfo = _aliasTagInfo[aliasTag];

      // Union all the points-to ses
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_GBL));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_DN));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_HZ));

      // If the points-to set of the alias tag is empty at this point then
      // either we have an escape analysis bug or an uninitialized variable.
      ConstraintGraph *cg = cgNode->constraintGraph();
      if (aliasTagInfo->pointsTo().isEmpty() &&
          !cg->stInfo(cgNode->cg_st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
        aliasTagInfo->pointsTo().setBit(cgNode->id());

      // We expect all alias sets to be non-empty...
      FmtAssert(!aliasTagInfo->pointsTo().isEmpty(),
                ("Alias tag %d (from cgnode %d) has empty alias set",
                    aliasTag,cgNode->id()));

      // Map aliasTags to the cgnode ids
      _aliasTagToCGNodeIdMap[aliasTag] = id;
    }
    // For calls, get the mod/ref info from the callsite
    else if (opr == OPR_ICALL || opr == OPR_VFCALL || opr == OPR_CALL)
    {
      CallSiteId id = WN_MAP_CallSiteId_Get(wn);

      if (id == 0)
        continue;

      CallSite *cs = _constraintGraph->callSite(id);
      FmtAssert(cs != NULL, ("CallSiteId : %d not mapped to a CallSite\n", id));

      // Ignore if marked UNKNOWN or has no mod/ref information
      if (cs->checkFlags(CS_FLAGS_UNKNOWN) || 
          !cs->checkFlags(CS_FLAGS_HAS_MOD_REF))
        continue;

      aliasTag = newCallAliasTag();
      CallAliasTagInfo *callAliasTagInfo = 
                       (CallAliasTagInfo *)_aliasTagInfo[aliasTag];

      callAliasTagInfo->mod().setUnion(cs->mod());
      callAliasTagInfo->ref().setUnion(cs->ref());
    } 
    else
      continue;
       
    // Map the WN to the new aliasTag
    setAliasTag(wn, aliasTag);

    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
      fprintf(stderr, "mapping aliasTag %d to aliasTagInfo: ",
          (UINT32)aliasTag);
      _aliasTagInfo[aliasTag]->print(stderr);
      fprintf(stderr, "\n");
    }
  }
}
