#include <elf.h>
#include "constraint_graph_solve.h"
#include "defs.h"
#include "ipl_summary.h"
#include "ipa_summary.h"
#include "ipa_nystrom_alias_analyzer.h"

IPA_NystromAliasAnalyzer *IPA_NystromAliasAnalyzer::_ipa_naa = NULL;

static CG_ST_IDX 
adjustCGstIdx(IPA_NODE *ipaNode, CG_ST_IDX cg_st_idx)
{
  UINT16 fileIdx = (UINT16)(ipaNode->File_Index());
  UINT16 puIdx   = (UINT16)(ipaNode->Proc_Info_Index());
  UINT32 filePUIdx = (fileIdx << 16) | puIdx;
  cg_st_idx = (((UINT64)filePUIdx) << 32) | cg_st_idx;
  return cg_st_idx;
}

void
IPA_NystromAliasAnalyzer::buildIPAConstraintGraph(IPA_NODE *ipaNode)
{
  ConstraintGraph *cg = CXX_NEW(ConstraintGraph(&_memPool, ipaNode), &_memPool);
  _ipaConstraintGraphs[ipaNode->Node_Index()] = cg;
}

void 
IPA_NystromAliasAnalyzer::print(FILE *file)
{
  fprintf(file, "\nPrinting globalConstraintGraph...\n");
  ConstraintGraph::globalCG()->print(file);
  IPACGMapIterator iter = _ipaConstraintGraphs.begin();
  for (; iter != _ipaConstraintGraphs.end(); iter++) {
    ConstraintGraph *cg = iter->second;
    fprintf(file, "\nPrinting local ConstraintGraph...\n");
    fprintf(file, "IPA node: proc: %s file: %s\n", 
            cg->ipaNode()->Name(), cg->ipaNode()->File_Header().file_name);
    cg->print(file);
  }
  char buf[32];
  sprintf(buf,"ipa_initial");
  ConstraintGraphVCG::dumpVCG(buf);
}

ConstraintGraphNode *
ConstraintGraph::findUniqueNode(CGNodeId cgNodeId)
{
  CGIdToNodeMapIterator iter = _uniqueCGNodeIdMap.find(cgNodeId);
  FmtAssert(iter != _uniqueCGNodeIdMap.end(), ("Unique id not found"));
  return iter->second;
}

void 
ConstraintGraph::buildCGipa(IPA_NODE *ipaNode)
{
  INT32 size;
  SUMMARY_PROCEDURE *proc = ipaNode->Summary_Proc();

  fprintf(stderr, "Processing proc: %s file: %s\n",
          ipaNode->Name(), ipaNode->File_Header().file_name);

  // during summary to constraint graph construction, map them to their 
  // globally unique ids so that lookups don't fail
  _uniqueCGNodeIdMap[notAPointer()->id()] = notAPointer();
  _uniqueCGNodeIdMap[blackHole()->id()]   = blackHole();

  // Add the StInfos.
  UINT32 stInfoIdx = proc->Get_constraint_graph_stinfos_idx();
  UINT32 stInfoCount = proc->Get_constraint_graph_stinfos_count();
  SUMMARY_CONSTRAINT_GRAPH_STINFO *summStInfos = 
          IPA_get_constraint_graph_stinfos_array(ipaNode->File_Header(), size);
  FmtAssert(stInfoCount <= size, ("Invalid stInfoCount"));
  for (UINT32 i = 0; i < stInfoCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_STINFO &summStInfo = summStInfos[stInfoIdx + i];
    // Ignore notAPointer and blackHole StInfos; they have been already
    // added to the globalConstraintGraph
    if (summStInfo.firstOffset() == blackHole()->id() ||
        summStInfo.firstOffset() == notAPointer()->id())
      continue;
    StInfo *stInfo;
    // Determine which CG to add the StInfo
    if (summStInfo.flags() & CG_ST_FLAGS_GLOBAL)
      stInfo = globalCG()->buildStInfo(&summStInfo, ipaNode);
    else
      stInfo = buildStInfo(&summStInfo, ipaNode);
    _ipaCGStIdxToStInfoMap[summStInfo.cg_st_idx()] = stInfo;
  }

  // Add the ConstraintGraphNodes
  UINT32 nodeIdx = proc->Get_constraint_graph_nodes_idx();
  UINT32 nodeCount = proc->Get_constraint_graph_nodes_count();
  SUMMARY_CONSTRAINT_GRAPH_NODE *summNodes = 
          IPA_get_constraint_graph_nodes_array(ipaNode->File_Header(), size);
  FmtAssert(nodeCount <= size, ("Invalid nodeCount"));
  for (UINT32 i = 0; i < nodeCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_NODE &summNode = summNodes[nodeIdx + i];
    // Ignore notAPointer and blackHole CGNodes; they have been already
    // added to the globalConstraintGraph
    if (summNode.cgNodeId() == notAPointer()->id() || 
        summNode.cgNodeId() == blackHole()->id())
      continue;
    ConstraintGraphNode *cgNode;
    // Determine which CG to add the ConstraintGraphNode
    StInfo *stInfo = 
            _ipaCGStIdxToStInfoMap.find(summNode.cg_st_idx())->second;
    if (stInfo->checkFlags(CG_ST_FLAGS_GLOBAL))
      cgNode = globalCG()->buildCGNode(&summNode, ipaNode);
    else
      cgNode = buildCGNode(&summNode, ipaNode);
    _uniqueCGNodeIdMap[summNode.cgNodeId()] = cgNode;
  }

  // Set the firstOffset on the StInfo
  for (UINT32 i = 0; i < stInfoCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_STINFO &summStInfo = summStInfos[stInfoIdx + i];
    // Ignore notAPointer and blackHole StInfos; they have been already
    // added to the globalConstraintGraph
    if (summStInfo.firstOffset() == blackHole()->id() ||
        summStInfo.firstOffset() == notAPointer()->id())
      continue;
    UINT32 firstOffsetId = summStInfo.firstOffset();
    if (firstOffsetId != 0) {
      StInfo *stInfo = 
              _ipaCGStIdxToStInfoMap.find(summStInfo.cg_st_idx())->second;
      FmtAssert(!stInfo->checkFlags(CG_ST_FLAGS_PREG),
                ("PREGs should have no nextOffset"));
      ConstraintGraphNode *firstOffset = findUniqueNode(firstOffsetId);
      addCGNodeInSortedOrder(stInfo, firstOffset);
    }
  }

  // Add the ConstraintGraphEdges
  UINT32 edgeIdx = proc->Get_constraint_graph_edges_idx();
  UINT32 edgeCount = proc->Get_constraint_graph_edges_count();
  SUMMARY_CONSTRAINT_GRAPH_EDGE *summEdges = 
          IPA_get_constraint_graph_edges_array(ipaNode->File_Header(), size);
  FmtAssert(edgeCount <= size, ("Invalid edgeCount"));
  for (UINT32 i = 0; i < edgeCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_EDGE &summEdge = summEdges[edgeIdx + i];
    ConstraintGraphNode *srcNode = findUniqueNode(summEdge.src());
    ConstraintGraphNode *destNode = findUniqueNode(summEdge.dest());
    bool added = false;
    ConstraintGraphEdge *edge = 
      ConstraintGraph::addEdge(srcNode, destNode, (CGEdgeType)summEdge.etype(),
                               (CGEdgeQual)summEdge.qual(), 
                               summEdge.sizeOrSkew(), added);
    edge->addFlags(summEdge.flags());
  }

  // Node ids array
  UINT32 nodeIdsIdx = proc->Get_constraint_graph_node_ids_idx();
  UINT32 nodeIdsCount = proc->Get_constraint_graph_node_ids_count();
  UINT32 *nodeIds = 
          IPA_get_constraint_graph_node_ids_array(ipaNode->File_Header(), size);
  FmtAssert(nodeIdsCount <= size, ("Invalid nodeIdsCount"));

  // Update the CGNodeId references in the ConstraintGraphNodes
  for (UINT32 i = 0; i < nodeCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_NODE &summNode = summNodes[nodeIdx + i];
    // Ignore notAPointer and blackHole CGNodes; they have been already
    // created in the globalConstraintGraph
    if (summNode.cgNodeId() == notAPointer()->id() || 
        summNode.cgNodeId() == blackHole()->id())
      continue;
    ConstraintGraphNode *cgNode = findUniqueNode(summNode.cgNodeId());
    // Set nextOffset
    UINT32 nextOffsetId = summNode.nextOffset();
    if (nextOffsetId != 0) {
      StInfo *stInfo = 
              _ipaCGStIdxToStInfoMap.find(summNode.cg_st_idx())->second;
      FmtAssert(!stInfo->checkFlags(CG_ST_FLAGS_PREG),
                ("PREGs should have no nextOffset"));
      ConstraintGraphNode *nextOffset = findUniqueNode(nextOffsetId);
      addCGNodeInSortedOrder(stInfo, nextOffset);
    }

    // Add the pts set
    UINT32 numBitsPtsGBL = summNode.numBitsPtsGBL();
    UINT32 numBitsPtsHZ  = summNode.numBitsPtsHZ();
    UINT32 numBitsPtsDN  = summNode.numBitsPtsDN();
    UINT32 ptsGBLidx     = summNode.ptsGBLidx();
    UINT32 ptsHZidx      = summNode.ptsHZidx();
    UINT32 ptsDNidx      = summNode.ptsDNidx();

    // GBL
    for (UINT32 i = 0; i < numBitsPtsGBL; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsGBLidx + i];
      ConstraintGraphNode *pNode = findUniqueNode(id);
      cgNode->addPointsTo(pNode, CQ_GBL);
    }
    // HZ
    for (UINT32 i = 0; i < numBitsPtsHZ; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsHZidx + i];
      ConstraintGraphNode *pNode = findUniqueNode(id);
      cgNode->addPointsTo(pNode, CQ_HZ);
    }
    // DN
    for (UINT32 i = 0; i < numBitsPtsDN; i++) {
      CGNodeId id = (CGNodeId)nodeIds[ptsDNidx + i];
      ConstraintGraphNode *pNode = findUniqueNode(id);
      cgNode->addPointsTo(pNode, CQ_DN);
    }

    // Adjust pts set if required
    if (cgNode->checkFlags(CG_NODE_FLAGS_ADJUST_K_CYCLE)) {
      adjustPointsToForKCycle(cgNode);
      cgNode->clearFlags(CG_NODE_FLAGS_ADJUST_K_CYCLE);
    }

    // Set repParent
    UINT32 repParentId = summNode.repParent();
    if (repParentId != 0) {
      ConstraintGraphNode *newRepParent =
                           findUniqueNode(repParentId)->findRep();
      ConstraintGraphNode *oldRepParent = cgNode->findRep();
      if (oldRepParent != newRepParent) {
        if (oldRepParent == cgNode)
          cgNode->repParent(newRepParent);
        else {
          // Merge with the new parent
          newRepParent->merge(oldRepParent);
          oldRepParent->repParent(newRepParent);
          fprintf(stderr, "Merging oldRepParent %d with newRepParent %d\n",
                  oldRepParent->id(), newRepParent->id());
        }
      }
    }
  }

  // Add the formal paramters and return
  UINT32 parmIdx = proc->Get_constraint_graph_formal_parm_idx();
  UINT32 pcount = proc->Get_constraint_graph_formal_parm_count();
  UINT32 retIdx = proc->Get_constraint_graph_formal_ret_idx();
  UINT32 retCount = proc->Get_constraint_graph_formal_ret_count();
  for (UINT32 i = 0; i < pcount; i++) {
    CGNodeId id = (CGNodeId)nodeIds[parmIdx + i];   
    ConstraintGraphNode *cn = findUniqueNode(id);
    parameters().push_back(cn->id());
  }
  for (UINT32 i = 0; i < retCount; i++) {
    CGNodeId id = (CGNodeId)nodeIds[retIdx + i];   
    ConstraintGraphNode *cn = findUniqueNode(id);
    returns().push_back(cn->id());
  }

  // Add CallSites
  UINT32 callSiteIdx = proc->Get_constraint_graph_callsites_idx();
  UINT32 callSiteCount = proc->Get_constraint_graph_callsites_count();
  SUMMARY_CONSTRAINT_GRAPH_CALLSITE *summCallSites = 
          IPA_get_constraint_graph_callsites_array(ipaNode->File_Header(),
                                                   size);
  FmtAssert(callSiteCount <= size, ("Invalid callSiteCount"));
  for (UINT32 i = 0; i < callSiteCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_CALLSITE &summCallSite = 
                                       summCallSites[callSiteIdx + i];
    CallSite *cs = CXX_NEW(CallSite(summCallSite.id(), summCallSite.flags(),
                                    _memPool), _memPool);
    _callSiteMap[cs->id()] = cs;

    if (cs->isDirect() && !cs->isIntrinsic())
      cs->st_idx(summCallSite.st_idx());
    else if (cs->isIndirect())
      cs->cgNodeId(summCallSite.cgNodeId());
    else if (cs->isIntrinsic())
      cs->intrinsic(summCallSite.intrinsic());

    UINT32 paramIdx = summCallSite.parmNodeIdx();
    UINT32 parmCount = summCallSite.numParms();
    for (UINT32 i = 0; i < parmCount; i++) {
      CGNodeId id = (CGNodeId)nodeIds[paramIdx + i];   
      ConstraintGraphNode *cn = findUniqueNode(id);
      cs->addParm(cn->id());
    }
    CGNodeId retId = summCallSite.returnId();
    if (retId != 0) {
      ConstraintGraphNode *cn = findUniqueNode(retId);
      cs->returnId(cn->id());
    }
  }
}

ConstraintGraphNode *
ConstraintGraph::buildCGNode(SUMMARY_CONSTRAINT_GRAPH_NODE *summ,
                             IPA_NODE *ipaNode)
{
  // Adjust cg_st_idx with the current pu and file index for non-globals
  CG_ST_IDX cg_st_idx = summ->cg_st_idx();
  if (this != globalCG())
    cg_st_idx = adjustCGstIdx(ipaNode, cg_st_idx);

  // The global CG might already have this ConstraintGraphNode
  ConstraintGraphNode *cgNode = checkCGNode(cg_st_idx, summ->offset());
  if (cgNode != NULL) {
    FmtAssert(this == globalCG(), ("Expect this to be the globalCG"));
    // Merge inKCycle
    if (summ->inKCycle() != 0 && summ->inKCycle() != cgNode->inKCycle())
      cgNode->addFlags(CG_NODE_FLAGS_ADJUST_K_CYCLE);
    cgNode->inKCycle(gcd(cgNode->inKCycle(), summ->inKCycle()));
    cgNode->addFlags(summ->flags());
    fprintf(stderr, "Global entry found for CGNode oldId: %d newId: %d "
            " old cg_st_idx: %llu new cg_st_idx: %llu\n",
            summ->cgNodeId(), cgNode->id(), summ->cg_st_idx(), cg_st_idx);
    return cgNode;
  }
 
  // Remap the CGNodeId to a unique id
  CGNodeId oldCGNodeId = summ->cgNodeId(); 
  CGNodeId newCGNodeId = nextCGNodeId++;
  cgNode = CXX_NEW(ConstraintGraphNode(cg_st_idx, summ->offset(), 
                                       summ->flags(), summ->inKCycle(),
                                       newCGNodeId, this), _memPool);

  // Add to maps in the current ConstraintGraph
  cgIdToNodeMap[newCGNodeId] = cgNode;
  _cgNodeToIdMap[cgNode] = newCGNodeId;

  fprintf(stderr, "Adding CGNode oldId: %d newId: %d to %s"
          " old cg_st_idx: %llu new cg_st_idx: %llu\n",
          summ->cgNodeId(), cgNode->id(),
          (this == globalCG()) ? "global" : "local",
          summ->cg_st_idx(), cg_st_idx);

  return cgNode;
}

StInfo *
ConstraintGraph::buildStInfo(SUMMARY_CONSTRAINT_GRAPH_STINFO *summ,
                             IPA_NODE *ipaNode)
{
  // Adjust cg_st_idx with the current pu and file index for non-globals
  CG_ST_IDX cg_st_idx = summ->cg_st_idx();
  if (this != globalCG())
    cg_st_idx = adjustCGstIdx(ipaNode, cg_st_idx);

  // The global CG might already have this StInfo
  CGStInfoMapIterator iter = _cgStInfoMap.find(cg_st_idx);
  if (iter != _cgStInfoMap.end()) {
    StInfo *stInfo = iter->second;
    FmtAssert(this == globalCG(), ("Expect this to be the globalCG"));
    FmtAssert(stInfo->varSize() == summ->varSize(), ("Inconsistent varSize"));
    stInfo->addFlags(summ->flags());
    if (summ->modulus() < stInfo->modulus())
      stInfo->modulus(summ->modulus());
    fprintf(stderr, "Global entry found for StInfo old cg_st_idx: %llu "
                    "new cg_st_idx: %llu\n", summ->cg_st_idx(), cg_st_idx);
    return stInfo;
  }
     
  UINT32 flags = summ->flags(); 
  INT64 varSize = summ->varSize(); 
  UINT32 modulus = summ->modulus();
  StInfo *stInfo = CXX_NEW(StInfo(flags, varSize, modulus), _memPool);
  // Adjust cg_st_idx with the current pu and file index
  _cgStInfoMap[cg_st_idx] = stInfo;

  fprintf(stderr, "Adding StInfo old cg_stIdx: %llu "
          "new cg_st_idx: %llu to %s\n", summ->cg_st_idx(), cg_st_idx,
          (this == globalCG()) ? "global" : "local");

  return stInfo;
}

void
IPA_NystromAliasAnalyzer::callGraphPrep(IPA_CALL_GRAPH *ipaCG,
                                        list<IPA_EDGE *> &workList,
                                        EdgeDelta &delta,
                                        list<IPA_NODE *> &revTopOrder,
                                        UINT32 round)
{
  // (TODO: 1) Perform cycle detection on the call graph and
  //  merge nodes within SCCS.  A side-effect of the SCC
  //  analysis is the topological order of the acyclic call graph

  // 2) Connect param/return edges for edges within the workList.
  //    The 'delta' is populated with new constraint graph edges
  //    to be processed during the next solution pass.  The first
  //    time we do this, we will add *all* edges to the delta.
  UINT32 actualSize[32];
  for (list<IPA_EDGE*>::const_iterator iter = workList.begin();
       iter != workList.end(); ++iter) {
    IPA_EDGE *edge = *iter;
    IPA_NODE *caller = ipaCG->Caller(edge);
    IPA_NODE *callee = ipaCG->Callee(edge);

    SUMMARY_CALLSITE *sumCallSite = edge->Summary_Callsite();
    // Determine the "size" of each actual from the summary
    // information and provide this so that the edges added
    // to the constraint graph are of the correct size.
    // We provide an array of sizes in byte, the first is the
    // the return type size, the remaining 'n' are for the
    // actuals.
    TYPE_ID retTypeId = sumCallSite->Get_return_type();
    actualSize[0] = MTYPE_byte_size(retTypeId);

    UINT32 actualIdx = sumCallSite->Get_actual_index();
    UINT32 paramCnt = sumCallSite->Get_param_count();
    SUMMARY_ACTUAL *actualArray = IPA_get_actual_array(caller);
    for (INT i = 0; i < paramCnt; i++) {
      SUMMARY_ACTUAL *actual = actualArray + actualIdx + i;
      TY_IDX actualTYIdx = actual->Get_ty();
      actualSize[i+1] = TY_size(Ty_Table[actualTYIdx]);
    }

    // Retrieve the caller/callee constraint graphs
    ConstraintGraph *callerCG = cg(caller->Node_Index());
    FmtAssert(callerCG,("callGraphPrep: no constraint graph for caller"));
    ConstraintGraph *calleeCG = cg(callee->Node_Index());
    FmtAssert(calleeCG,("callGraphPrep: no constraint graph for callee"));
    UINT32 id = edge->Summary_Callsite()->Get_constraint_graph_callsite_id();

    // Now, the real work.  Connect the actuals/formals for this callsite
    callerCG->connect(id,calleeCG,callee->Func_ST(),
                      actualSize,paramCnt+1,delta);
  }
}

void
IPA_NystromAliasAnalyzer::updateCallGraph(IPA_CALL_GRAPH *ipaCG,
                      list<pair<IPA_NODE *,SUMMARY_CALLSITE *> > &indCallList,
                      EdgeDelta &delta)
{
  // TODO:  Walk each indirect call site and determine if there exists
  //        an edge for in the call graph for CGNode in the points-to
  //        set of the indirect call.
}

void
IPA_NystromAliasAnalyzer::solver(void)
{
  UINT32 round = 0;

  // Here we have a single driver that supports both a
  // context-sensitive and context-insensitive solutions.
  //
  // Context-sensitive:  The context sensitive solution uses
  // a iterative top-down, bottom-up approach that continues
  // until we can make no future refinements to the call graph
  // The bottom-up pass only is context sensitive
  //
  // Context-insensitive:  We perform iterative solution of the
  // entire global constraint graph.

  // Some up front work
  hash_map<NODE_INDEX,ConstraintGraph *>::iterator iter;
  EdgeDelta dummy;
  for (iter = _ipaConstraintGraphs.begin();
       iter != _ipaConstraintGraphs.end();
       ++iter ) {
    ConstraintGraph *cg = iter->second;
    // Constraint graph optimization?

    // Constraint graph-local cycle detection?
    ConstraintGraphSolve solve(dummy,cg,&_memPool);
    solve.cycleDetection();
  }

  // Assemble a list of all call edges in the call graph to
  // serve as the seed input to the solution process.  On
  // subsequent iterations the work list will comprise only
  // those edges that correspond to newly discovered indirect
  // call targets.
  list<IPA_EDGE *> edgeList;
  list<pair<IPA_NODE *,SUMMARY_CALLSITE *> > indirectCallList;
  IPA_NODE_ITER nodeIter(IPA_Call_Graph,DONTCARE);
  for (nodeIter.First(); !nodeIter.Is_Empty(); nodeIter.Next()) {
    IPA_NODE *caller = nodeIter.Current();
    IPA_SUCC_ITER succIter(IPA_Call_Graph,caller);
    for (succIter.First(); !succIter.Is_Empty(); succIter.Next())
    {
      IPA_EDGE *edge = succIter.Current_Edge();
      edgeList.push_back(edge);
      SUMMARY_CALLSITE *sumCallSite = edge->Summary_Callsite();
      if (sumCallSite->Is_func_ptr() || sumCallSite->Is_virtual_call())
        indirectCallList.push_back(make_pair(caller,sumCallSite));
    }
  }

  bool change;
  list<IPA_NODE *> revTopOrder;
  EdgeDelta delta;
  do {
    change = false;
    round++;
    FmtAssert(revTopOrder.empty(),("solver: expected rev top order list empty"));
    // Top down
    do {
      // Perform SCC detection and collapse within the call graph,
      // connect param/return nodes.  This step will provide
      // 1) A topological ordering of call graph for bottom-up
      // 2) The edge delta for the solution.  Note, the edge delta
      //    for the solution consists only of those new copy edges
      //    added to the graph.  Even for the first iteration, we
      //    assume that we are starting from a valid local solution
      //    computed during IPL.
      callGraphPrep(IPA_Call_Graph,edgeList,delta,revTopOrder,round);
      FmtAssert(edgeList.empty(),
                ("solver: Expected all call edges to be processed"));

      if (delta.empty())
        break;

      // Now, we solve the graph
      ConstraintGraphSolve cgsolver(delta,NULL,&_memPool);
      cgsolver.solveConstraints();

      // Determine if there have been any changes to call sites
      // and update the call graph
      FmtAssert(delta.empty(),("Expect delta empty after solve"));
      updateCallGraph(IPA_Call_Graph,indirectCallList,delta);

    } while (1);

    // Bottom up
    if (0 /*context sensitive */) {
      // Walk the call graph in reverse topological order, using
      // the topological ordering found during SCC detection
      while (0 /* rev topo list !empty*/) {

        // Apply summaries for the callees of the current routine.
        // This provides the edge delta for the solution.

        // Now, we solve the graph.  We actually perform cycle
        // detect within the the current constraint graph
        ConstraintGraphSolve cgsolver(delta,/*cg*/NULL,&_memPool);
        cgsolver.solveConstraints();
      }
    }

    // Determine if there have been any changes to call sites
    // and update the call graph
    FmtAssert(delta.empty(),("Expect delta empty after solve"));
    updateCallGraph(IPA_Call_Graph,indirectCallList,delta);

  } while (change);

  // The solver has a solution, now we post-process the points-to
  // sets to deal with covering references and field insensitive
  // references
  ConstraintGraphSolve::postProcessPointsTo();

  // Don't forget escape analysis.
  // EscapeAnalysis escAnal();
  // escAnal.perform();

}
