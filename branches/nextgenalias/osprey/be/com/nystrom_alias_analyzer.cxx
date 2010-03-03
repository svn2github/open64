/*
 * nystrom_alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>
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
  : AliasAnalyzer()
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

  _constraintGraph->nonIPASolver();

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG)) {
    char buf[1024];
    sprintf(buf,"%s_final",ST_name(WN_st(entryWN)));
    ConstraintGraphVCG::dumpVCG(_constraintGraph, buf);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_POST_FLAG)) {
    fprintf(stderr,"Nystrom analysis...complete\n");
    _constraintGraph->print(stderr);
  }

  // Initialize the alias tags
  _nextAliasTag = InitialAliasTag;

  // Map WNs to AliasTags
  createAliasTags(entryWN);

  // Set flag to dump the WN to CGNodeId map during Write_PU_Info
  Write_ALIAS_CGNODE_Map = TRUE;
}

NystromAliasAnalyzer::~NystromAliasAnalyzer() {}

ALIAS_RESULT
NystromAliasAnalyzer::aliased(AliasTag tag1, AliasTag tag2)
{
  if (tag1 == InvalidAliasTag || tag1 == EmptyAliasTag ||
      tag2 == InvalidAliasTag || tag2 == EmptyAliasTag ||
      tag1 == tag2)
    return POSSIBLY_ALIASED;

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

AliasTag
NystromAliasAnalyzer::genAliasTag(ST *, INT64, INT64)
{
  return InvalidAliasTag;
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

    if (OPERATOR_is_scalar_istore(opr) || 
        OPERATOR_is_scalar_iload(opr) ||
        OPERATOR_is_scalar_load(opr) ||
        OPERATOR_is_scalar_store(opr) ||
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

      aliasTag = newAliasTag();
      AliasTagInfo *aliasTagInfo = _aliasTagInfo[aliasTag];
   
      // Union all the points-to set
      if (OPERATOR_is_scalar_istore(opr) || 
          OPERATOR_is_scalar_iload(opr) ||
          opr == OPR_MSTORE || 
          opr == OPR_MLOAD)
      {
        aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_GBL));
        aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_DN));
        aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_HZ));
      } 
      // For scalars, the points-to set contains the scalar itself
      else if (OPERATOR_is_scalar_load(opr) || OPERATOR_is_scalar_store(opr))
      {
        aliasTagInfo->pointsTo().setBit(cgNode->id());
        // Here we add in the GBL points-to relation for the scalar
        // to catch the fact that the scalar may have escaped and
        // may have the "black hole" in its points-to set
        aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_GBL));
      }

      // If the points-to set of the alias tag is empty at this point then
      // either we have an escape analysis bug or an uninitialized variable.
      ConstraintGraph *cg = cgNode->constraintGraph();
      if (aliasTagInfo->pointsTo().isEmpty() &&
          !cg->stInfo(cgNode->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
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
      callAliasTagInfo->ref().setUnion(cs->mod());

      // Map aliasTags to the callsite ids
      _aliasTagToCallSiteIdMap[aliasTag] = id;
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
