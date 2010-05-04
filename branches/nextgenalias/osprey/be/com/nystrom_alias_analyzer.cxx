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

#include "pu_info.h"
#include "be_ipa_util.h"
#include "ipa_be_summary.h"
#include "ipa_be_read.h"

extern BOOL Write_ALIAS_CGNODE_Map;

PointsTo NystromAliasAnalyzer::emptyPointsToSet;

NystromAliasAnalyzer::NystromAliasAnalyzer(ALIAS_CONTEXT &ac, WN* entryWN,
                                           bool backend)
  : AliasAnalyzer()
{
  // Activate the use of the Nystrom points-to analysis by the
  // ALIAS_RULE harness and disable alias classification rules.
  ac |= ALIAS_ANALYZER_RULE;
  ac &= ~(CLAS_RULE|IP_CLAS_RULE);

  // Create ConstraintGraph from the summary information generated at IPA
  _constraintGraph = CXX_NEW(ConstraintGraph((WN*) NULL, &_memPool), 
                             &_memPool);

  // Map WNs to AliasTags
  createAliasTags(entryWN, true);

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
    fprintf(stderr, "Printing initial ConstraintGraph\n");
    _constraintGraph->print(stderr);
    fdump_tree(stderr, entryWN);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG)) {
    char buf[1024];
    sprintf(buf,"%s_initial",ST_name(WN_st(entryWN)));
    ConstraintGraphVCG::dumpVCG(buf);
  }

  _constraintGraph->simpleOptimizer();

  // Solve the constraint graph
  if (!_constraintGraph->nonIPASolver())
    return;

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG)) {
    char buf[1024];
    sprintf(buf,"%s_final",ST_name(WN_st(entryWN)));
    ConstraintGraphVCG::dumpVCG(buf);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_POST_FLAG)) {
    fprintf(stderr,"Nystrom analysis...complete\n");
    fprintf(stderr, "Printing final ConstraintGraph\n");
    _constraintGraph->print(stderr);
  }

  // Map WNs to AliasTags
  createAliasTags(entryWN);

  // Delete nodes that are marked deleted
  _constraintGraph->deleteOptimizedNodes();

  // Set flag to dump the WN to CGNodeId map during Write_PU_Info
  Write_ALIAS_CGNODE_Map = TRUE;
}

NystromAliasAnalyzer::~NystromAliasAnalyzer() 
{
  // Clear the static members of the ConstraintGraph
  ConstraintGraph::reset();
}

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

  // First we check the query cache to determine if this query
  // has been made of this pair of tags before.  Presumably this
  // will be faster than actually performing the set intersection
  // for redundant queries and that savings will compensate for
  // the additional hash_map lookup for "new" query.
  QueryCacheKey key(tag1,tag2);
  QueryCacheIterator iter = _queryCacheMap.find(key);
  if (iter != _queryCacheMap.end()) {
    if (Get_Trace(TP_ALIAS,NYSTROM_QUERY_TRACE_FLAG))
      fprintf(stderr,"Found <%d,%d> in cache: %d\n",tag1,tag2,iter->second);
    return iter->second ? POSSIBLY_ALIASED : NOT_ALIASED;
  }

  PointsTo& ptsSet1 = pointsTo(tag1);
  PointsTo& ptsSet2 = pointsTo(tag2);
  FmtAssert(!ptsSet1.isEmpty(),
            ("Points-to set of alias tag %d is unexpectedly empty",tag1));
  FmtAssert(!ptsSet2.isEmpty(),
            ("Points-to set of alias tag %d is unexpectedly empty",tag2));
  result = ptsSet1.intersect(ptsSet2);

  // Update the query cache
  _queryCacheMap[key] = result;

  return result ? POSSIBLY_ALIASED : NOT_ALIASED;
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
  {
    offset = stInfo->alignOffset(stInfo->ty_idx(), offset);
    offset = stInfo->applyModulus(offset);
  }
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
          if (node->checkFlags(CG_NODE_FLAGS_COLLAPSED))
            aliasTagInfo->pointsTo().setBit(node->collapsedParent());
          else
            aliasTagInfo->pointsTo().setBit(node->id());
          // If the node is address taken, we must add "black hole" to
          // the points-to set to cover intersection with other escaped
          // references.  If the node is *not* address taken nothing can
          // point to it.
          if (node->stInfo()->checkFlags(CG_ST_FLAGS_ESCLOCAL) &&
              node->checkPointsTo(ConstraintGraph::blackHole(),CQ_GBL))
            aliasTagInfo->pointsTo().setBit(ConstraintGraph::blackHoleId());
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
            if (node->checkFlags(CG_NODE_FLAGS_COLLAPSED))
              aliasTagInfo->pointsTo().setBit(node->collapsedParent());
            else
              aliasTagInfo->pointsTo().setBit(node->id());
            // If the node is address taken, we must add "black hole" to
            // the points-to set to cover intersection with other escaped
            // references.  If the node is *not* address taken nothing can
            // point to it.
            if (node->stInfo()->checkFlags(CG_ST_FLAGS_ESCLOCAL) &&
                node->checkPointsTo(ConstraintGraph::blackHole(),CQ_GBL))
              aliasTagInfo->pointsTo().setBit(ConstraintGraph::blackHoleId());
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
      fprintf(stderr, "genAliasTag: new aliasTag %d for %s <%d,%d,%d> with aliasTagInfo: ",
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
    fprintf(stderr,"meet: aliasTag %d, aliasTag %d ->",dstTag,srcTag);
    fprintf(stderr," result aliasTag %d [",retTag);
    pointsTo(retTag).print(stderr);
    fprintf(stderr,"]\n");
  }
  return retTag;
}

void
NystromAliasAnalyzer::transferAliasTag(WN *dstWN, const WN *srcWN)
{
  if (_constraintGraph == NULL)
    return;

  // First, we check the alias tag map to see if an aliasTag is
  // easily retrievable.
  AliasTag tag = getAliasTag(srcWN);
  if (tag == InvalidAliasTag) {
    // Now, provided that the target operation is one for which we
    // are interested in providing an alias tag, we will work a bit
    // harder to manufacture an aliasTag.  If the source node
    // as a CGNode, then we will create new AliasTag for the target
    // node.
    const OPCODE   opc = WN_opcode(dstWN);
    const OPERATOR opr = OPCODE_operator(opc);

    // We only consider indirects; direct references are handled
    // by genAliasTag called during Transfer_alias_tag
    if (OPERATOR_is_scalar_istore(opr) ||
        OPERATOR_is_scalar_iload(opr) ||
        opr == OPR_MSTORE ||
        opr == OPR_MLOAD)
    {
      CGNodeId id;
      // For ILOADS, the points-to set is associated with the address
      // of the iload. So get the CGNode corresponding to the address WN.
      const OPCODE   srcOpc = WN_opcode(srcWN);
      const OPERATOR srcOpr = OPCODE_operator(srcOpc);
      if (srcOpr == OPR_ILDBITS || srcOpr == OPR_MLOAD || srcOpr == OPR_ILOAD)
        id = WN_MAP_CGNodeId_Get(WN_kid0(srcWN));
      else
        id = WN_MAP_CGNodeId_Get(srcWN);

      // WN not mapped to any CGNodes
      if (id == 0)
        return;

      ConstraintGraphNode *cgNode = _constraintGraph->cgNode(id);
      FmtAssert(cgNode != NULL, ("CGNodeId : %d not mapped to a "
          "ConstraintGraphNode\n", id));

      // Any node flagged as unknown is a bad situation, we need
      // to prevent generating an AliasTag for this node
      if (cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        return;

      tag = newAliasTag();
      AliasTagInfo *aliasTagInfo = _aliasTagInfo[tag];

      // Union all the points-to sets
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_GBL));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_DN));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_HZ));

      // If the points-to set of the alias tag is empty at this point then
      // either we have an escape analysis bug or an uninitialized variable.
      ConstraintGraph *cg = cgNode->cg();
      if (aliasTagInfo->pointsTo().isEmpty() &&
          !cg->stInfo(cgNode->cg_st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
        aliasTagInfo->pointsTo().setBit(cgNode->id());

      WN_MAP_CGNodeId_Set(dstWN,id);

      if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
        fprintf(stderr, "transferAliasTag: mapping aliasTag %d to aliasTagInfo: ",
                (UINT32)tag);
        _aliasTagInfo[tag]->print(stderr);
        fprintf(stderr, "\n");
      }
    }
  }
  setAliasTag(dstWN,tag);
}

// Map the WNs to an AliasTag. Each AliasTag in turn is mapped to
// an AliasTagInfo which stores the points-to set (CGNodeIds) of the
// locations accessed by the WN
void
NystromAliasAnalyzer::createAliasTags(WN *entryWN, bool isPostIPA)
{
  for (WN_ITER *wni = WN_WALK_TreeIter(entryWN);
      wni; wni = WN_WALK_TreeNext(wni))
  {
    WN *wn = WN_ITER_wn(wni);
    const OPCODE   opc = WN_opcode(wn);
    const OPERATOR opr = OPCODE_operator(opc);

    AliasTag aliasTag = InvalidAliasTag;

    // Check if the WN's CGNodeId has been marked as deleted and remap
    if (!OPCODE_is_call(opc))
      _constraintGraph->remapDeletedNode(wn);

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
      if (opr == OPR_ILDBITS || opr == OPR_MLOAD || opr == OPR_ILOAD) {
        _constraintGraph->remapDeletedNode(WN_kid0(wn));
        id = WN_MAP_CGNodeId_Get(WN_kid0(wn));
      } else
        id = WN_MAP_CGNodeId_Get(wn);

      // WN not mapped to any CGNodes
      if (id == 0)
        continue;

      ConstraintGraphNode *cgNode = ConstraintGraph::cgNode(id);
      FmtAssert(cgNode != NULL, ("CGNodeId : %d not mapped to a "
          "ConstraintGraphNode\n", id));

      // Any node flagged as unknown is a bad situation, we need
      // to prevent generating an AliasTag for this node
      if (cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        continue;

      aliasTag = newAliasTag();
      AliasTagInfo *aliasTagInfo = _aliasTagInfo[aliasTag];

      // Union all the points-to sets
      if (!isPostIPA)
        cgNode->findRep()->postProcessPointsTo(aliasTagInfo->pointsTo());

      // If the points-to set of the alias tag is empty at this point then
      // either we have an escape analysis bug or an uninitialized variable.
      ConstraintGraph *cg = cgNode->cg();
      if (aliasTagInfo->pointsTo().isEmpty() &&
          !cg->stInfo(cgNode->cg_st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
        aliasTagInfo->pointsTo().setBit(cgNode->id());

      // We expect all alias sets to be non-empty...
      FmtAssert(cgNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) ||
                !aliasTagInfo->pointsTo().isEmpty(),
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
      fprintf(stderr, "createAliasTag: mapping aliasTag %d to aliasTagInfo: ",
              (UINT32)aliasTag);
      _aliasTagInfo[aliasTag]->print(stderr);
      fprintf(stderr, "\n");
    }
  }
}


StInfo *
ConstraintGraph::buildStInfo(SUMMARY_CONSTRAINT_GRAPH_STINFO *summ)
{
  CG_ST_IDX cg_st_idx = summ->cg_st_idx();
  
  UINT32 flags = summ->flags();
  INT64 varSize = summ->varSize();
  TY_IDX ty_idx = summ->ty_idx();
  StInfo* st_info = 
    CXX_NEW(StInfo(flags, varSize, ty_idx, _memPool), _memPool);
  if (flags & CG_ST_FLAGS_MODRANGE)
  {
    ModulusRange* mr = buildModRange(summ->modulus());
    st_info->modRange(mr);
  }
  else
  {
    UINT32 modulus = summ->modulus();
    st_info->mod(modulus);
  }
  _cgStInfoMap[cg_st_idx] = st_info;

#if 0
    // Find max non-global st_idx 
  SYMTAB_IDX level = ST_IDX_level(CG_ST_IDX(summ->cg_st_idx()));
  if (level != GLOBAL_SYMTAB) {
    FmtAssert(this != globalCG(), ("Expect this to be a local CG"));
    UINT32 index     = ST_IDX_index(CG_ST_IDX(summ->cg_st_idx()));
    UINT32 max_index = ST_IDX_index(_max_st_idx);
    FmtAssert(_max_st_idx == 0 || (ST_IDX_level(_max_st_idx) == level),
              ("Inconsistent SYMTAB_IDX"));
    if (index > max_index)
      _max_st_idx = make_ST_IDX(index, level);
  }
#endif
}

ModulusRange*
ConstraintGraph::buildModRange(UINT32 modRangeIdx)
{
  INT32 size;
  SUMMARY_CONSTRAINT_GRAPH_MODRANGE* summModRanges =
    CURRENT_BE_SUMMARY.GetCGModRangesArray();
  SUMMARY_CONSTRAINT_GRAPH_MODRANGE& summMR = summModRanges[modRangeIdx];
  ModulusRange* mr = CXX_NEW(ModulusRange(summMR.startOffset(),
                                          summMR.endOffset(),
                                          summMR.modulus(),
                                          summMR.ty_idx()), _memPool);
  if (summMR.childIdx() != 0)
    mr->child(buildModRange(summMR.childIdx()));
  if (summMR.nextIdx() != 0)
    mr->next(buildModRange(summMR.nextIdx()));

  return mr;
}

ConstraintGraphNode* 
ConstraintGraph::buildCGNode(SUMMARY_CONSTRAINT_GRAPH_NODE* summ)
{
  CG_ST_IDX cg_st_idx = summ->cg_st_idx();
  ConstraintGraphNode* cgNode = checkCGNode(cg_st_idx, summ->offset());
  if (cgNode != NULL)
  {
    return cgNode;
  }

  //  CGNodeId newCGNodeId = nextCGNodeId++;
  cgNode = CXX_NEW(ConstraintGraphNode(cg_st_idx, summ->offset(),
                                       summ->flags(), summ->inKCycle(),
                                       summ->cgNodeId(), this), _memPool);
                                       // newCGNodeId, this), _memPool);
  cgNode->ty_idx(summ->ty_idx());
  if (cgNode->flags() & CG_NODE_FLAGS_COLLAPSED)
    cgNode->collapsedParent(summ->collapsedParent());

  cgIdToNodeMap[summ->cgNodeId()] = cgNode;
  _cgNodeToIdMap[cgNode] = summ->cgNodeId();
}




void
ConstraintGraph::buildCGFromSummary()
{
  // ConstraintGraph *cg = CXX_NEW(ConstraintGraph(&_memPool), &_memPool);

  // now build the constraint graph from the summary
  SUMMARY_CONSTRAINT_GRAPH_PU_HEADER* summPUHeaders = 
    CURRENT_BE_SUMMARY.GetProcHeadersArray();
  SUMMARY_CONSTRAINT_GRAPH_NODE* summCGNodes = 
    CURRENT_BE_SUMMARY.GetCGNodesArray();
  SUMMARY_CONSTRAINT_GRAPH_STINFO* summStInfos = 
    CURRENT_BE_SUMMARY.GetCGStInfosArray();
  SUMMARY_CONSTRAINT_GRAPH_CALLSITE* summCallsites = 
    CURRENT_BE_SUMMARY.GetCGCallsitesArray();
  UINT32* nodeIds =
    CURRENT_BE_SUMMARY.GetCGNodeIdsArray();
  
  
  // Get the header corresponding to the current PU
  SUMMARY_CONSTRAINT_GRAPH_PU_HEADER& cur_hdr = summPUHeaders[0];
  bool found = false;
  for (int i = 0; i < CURRENT_BE_SUMMARY.GetPUHdrsCount(); i++)
  {
    if (summPUHeaders[i].stIdx() == PU_Info_proc_sym(Current_PU_Info))
    {
      cur_hdr = summPUHeaders[i];
      found = true;
      break;
    }    
  }
  FmtAssert(found == true, ("constraint graph not found!"));
  if (!found) return;
    
  
  UINT32 nodesCount =     cur_hdr.cgNodesCount();
  UINT32 stInfosCount =   cur_hdr.cgStInfosCount();
  UINT32 callsitesCount = cur_hdr.cgCallsitesCount();
  UINT32 nodeIdsCount =   cur_hdr.cgNodeIdsCount();
  UINT32 formalsCount =   cur_hdr.cgFormalsCount();
  UINT32 returnsCount =   cur_hdr.cgReturnsCount();

  UINT32 nodesIdx =     cur_hdr.cgNodesIdx();
  UINT32 stInfosIdx =   cur_hdr.cgStInfosIdx();
  UINT32 callsitesIdx = cur_hdr.cgCallsitesIdx();
  UINT32 nodeIdsIdx =   cur_hdr.cgNodeIdsIdx();
  UINT32 formalsIdx =   cur_hdr.cgFormalsIdx();
  UINT32 returnsIdx =   cur_hdr.cgReturnsIdx();
  
  if (Get_Trace(TP_ALIAS,NYSTROM_SUMMARY_FLAG))
    fprintf(stderr, 
            "*** nodes = %d, stinfos = %d, callsites = %d, nodeids = %d\n",
            nodesCount, stInfosCount,callsitesCount, nodeIdsCount);

  // add the STInfos
  for (UINT32 i = 0; i < stInfosCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_STINFO& summStInfo = summStInfos[stInfosIdx + i];
    if (summStInfo.firstOffset() == notAPointer()->id())
      continue;
    StInfo * stInfo = buildStInfo(&summStInfo);
  }

  // add ConstraintGraphNodes
  for (UINT32 i = 0; i < nodesCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_NODE& summNode = summCGNodes[nodesIdx + i];
    ConstraintGraphNode* cg_node = buildCGNode(&summNode);
  } 

  for (UINT32 i = 0; i < stInfosCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_STINFO& summStInfo = summStInfos[stInfosIdx + i];
    if (summStInfo.firstOffset() == notAPointer()->id())
      continue;
    UINT32 firstOffsetId = summStInfo.firstOffset();
    if (firstOffsetId != 0) {
      StInfo* stinfo = _cgStInfoMap.find(summStInfo.cg_st_idx())->second;
      FmtAssert(!stinfo->checkFlags(CG_ST_FLAGS_PREG),
                ("PREGs should have no firstOffset"));
      ConstraintGraphNode * firstOffset = cgNode(firstOffsetId);
      bool added = addCGNodeInSortedOrder(stinfo, firstOffset);
      if (added)
        stinfo->incrNumOffsets();
    }
  }
  
  // Node Ids Array
  for (UINT32 i = 0; i < nodesCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_NODE& summNode = summCGNodes[nodesIdx + i];
    if (summNode.cgNodeId() == notAPointer()->id())
      continue;
    ConstraintGraphNode* cgnode = cgNode(summNode.cgNodeId());
    UINT32 repParentId = summNode.repParent();
    if (repParentId != 0 && cgnode->repParent() == NULL)
      cgnode->repParent(cgNode(repParentId));

  }

  for (UINT32 i = 0; i < nodesCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_NODE& summNode = summCGNodes[nodesIdx + i];
    if (summNode.cgNodeId() == notAPointer()->id())
      continue;
    ConstraintGraphNode* cgnode = cgNode(summNode.cgNodeId());
    UInt32 nextOffsetId = summNode.nextOffset();
    if (nextOffsetId != 0)
    {
      StInfo* stinfo = _cgStInfoMap.find(summNode.cg_st_idx())->second;
      FmtAssert(!stinfo->checkFlags(CG_ST_FLAGS_PREG),
                ("PREGs should have no nextOffset"));
      ConstraintGraphNode* nextOffset = cgNode(nextOffsetId);
      bool added = addCGNodeInSortedOrder(stinfo, nextOffset);
      if (added)
        stinfo->incrNumOffsets();
    }
    // Add the pts set
    UINT32 numBitsPtsGBL = summNode.numBitsPtsGBL();
    UINT32 numBitsPtsHZ  = summNode.numBitsPtsHZ();
    UINT32 numBitsPtsDN  = summNode.numBitsPtsDN();
    UINT32 ptsGBLidx     = summNode.ptsGBLidx();
    UINT32 ptsHZidx      = summNode.ptsHZidx();
    UINT32 ptsDNidx      = summNode.ptsDNidx();

    // GBL
    // First, we find all <ST,-1> nodes
    for (UINT32 i = 0; i < numBitsPtsGBL; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsGBLidx + i];
      ConstraintGraphNode *pNode = cgNode(id);
      if (pNode)
        cgnode->parent()->addPointsTo(pNode, CQ_GBL);
      else
        cgnode->parent()->setPointsTo(id, CQ_GBL);
    }
    // cgnode->parent()->sanitizePointsTo(CQ_GBL);
    // Is_True(cgnode->parent()->sanityCheckPointsTo(CQ_GBL),(""));

    // HZ
    for (UINT32 i = 0; i < numBitsPtsHZ; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsHZidx + i];
      ConstraintGraphNode *pNode = cgNode(id);
      if (pNode)
        cgnode->parent()->addPointsTo(pNode, CQ_HZ);
      else
        cgnode->parent()->setPointsTo(id, CQ_HZ);
    }
    // cgnode->parent()->sanitizePointsTo(CQ_HZ);
    // Is_True(cgnode->parent()->sanityCheckPointsTo(CQ_HZ),(""));

    // DN
    for (UINT32 i = 0; i < numBitsPtsDN; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsDNidx + i];
      ConstraintGraphNode *pNode = cgNode(id);
      if (pNode)
        cgnode->parent()->addPointsTo(pNode, CQ_DN);
      else 
        cgnode->parent()->setPointsTo(id, CQ_DN);
    }
    // cgnode->parent()->sanitizePointsTo(CQ_DN);
    // Is_True(cgnode->parent()->sanityCheckPointsTo(CQ_DN),(""));

    // Adjust pts set if required
    if (cgnode->checkFlags(CG_NODE_FLAGS_ADJUST_K_CYCLE)) {
      adjustPointsToForKCycle(cgnode);
      cgnode->clearFlags(CG_NODE_FLAGS_ADJUST_K_CYCLE);
    }

    // Handle the case where the node has an existing parent
    UINT32 repParentId = summNode.repParent();
    if (repParentId != 0 && cgnode->repParent() != NULL) {
      ConstraintGraphNode *newRepParent = cgNode(repParentId)->findRep();
      ConstraintGraphNode *oldRepParent = cgnode->findRep();
      if (oldRepParent != newRepParent) {
        // Merge with the new parent
        newRepParent->merge(oldRepParent);
        // Set the newParent as the parent of oldRepParent
        oldRepParent->repParent(newRepParent);
        // Add special copy edge from newRepParent if !PREG
        if (!oldRepParent->isOnlyOffset()) {
          bool added = false;
          ConstraintGraphEdge *newEdge;
          if (newRepParent->cg() != oldRepParent->cg())
            newEdge =
              ConstraintGraph::addEdge(newRepParent, oldRepParent, ETYPE_COPY,
                                       CQ_GBL, 0, added, CG_EDGE_PARENT_COPY);
          else
            newEdge = 
                ConstraintGraph::addEdge(newRepParent, oldRepParent, ETYPE_COPY,
                                         CQ_HZ, 0, added, CG_EDGE_PARENT_COPY);
          FmtAssert(added, ("ConstraintGraph::merge: failed to add "
                            "special copy edge"));
        }
      }
    }
  }
  
  // formal parms and rets
  for (UINT32 i = 0; i < formalsCount; i++)
  {
    CGNodeId id = (CGNodeId)nodeIds[formalsIdx + i];
    // ConstraintGraphNode* cn = cgNode(id);
    parameters().push_back(id);
  }

  for (UINT32 i = 0; i < returnsCount; i++)
  {
    CGNodeId id = (CGNodeId)nodeIds[returnsIdx + i];
    // ConstraintGraphNode* cn = cgNode(id);
    returns().push_back(id);
  }

  // callsites
  for (UINT32 i = 0; i < callsitesCount; i++)
  {
    SUMMARY_CONSTRAINT_GRAPH_CALLSITE& summCallsite = 
      summCallsites[callsitesIdx + i];
    CallSite* cs = CXX_NEW(CallSite(summCallsite.id(), summCallsite.flags(),
                                    _memPool), _memPool);
    _callSiteMap[cs->id()] = cs;
    if (cs->isDirect() && !cs->isIntrinsic())
      cs->st_idx(summCallsite.st_idx());
    else if (cs->isIndirect())
      cs->cgNodeId(summCallsite.cgNodeId());
    else if (cs->isIntrinsic())
      cs->intrinsic(summCallsite.intrinsic());

    for (UINT32 i = 0; i < formalsCount; i++)
    {
      CGNodeId id = (CGNodeId) nodeIds[formalsIdx + i];
      // ConstraintGraphNode* cn = cgNode(id);
      cs->addParm(id);
    }
    CGNodeId retId = summCallsite.returnId();
    if (retId != 0) 
    {
      cs->returnId(retId);
    }
  }
}

