#include <elf.h>
#include <stack>

#include "defs.h"
#include "config_ipa.h"
#include "constraint_graph_escanal.h"
#include "constraint_graph_solve.h"
#include "defs.h"
#include "ipl_summary.h"
#include "ipa_summary.h"
#include "ipa_nystrom_alias_analyzer.h"
#include "opt_defs.h"

IPA_NystromAliasAnalyzer *IPA_NystromAliasAnalyzer::_ipa_naa = NULL;

// Performs cycle detection within the call graph.  The
// algorithm employed is Nuutila's algorithm:
//
// Esko Nuutila and Eljas Soisalon-Soininen, "On finding the
//   strongly connected components in a directed graph".
//   Inf. Process. Letters, 49(1):9-14, 1994.
//
// The algorithm provides two benefits.  First it is an improvement
// over Tarjan's algorithm, runs in O(E) time.  Second it produces
// a topological ordering of the target graph for free, which
// will improve the efficiency of the constraint graph solver.
//
// The implementation is derived from the pseudo code in the
// following paper:
//
// Pereira and Berlin, "Wave Propagation and Deep Propagation for
//   Pointer Analysis", CGO 2009, 126-135, 2009.
//

class IPASCCDetection {
public:
  typedef stack<IPA_NODE *> IPANodeStack;

  IPASCCDetection(IPA_NystromAliasAnalyzer *nyst, IPA_CALL_GRAPH *icg,
                  MEM_POOL *mpool)
  : _nyst(nyst),
    _graph(icg),
    _memPool(mpool),
    _I(0),
    _D(NULL)
  {}

  // Detect and unify all SCCS within the call graph.
  void findAndUnify();

  // Return a handle to the stack of nodes in topological
  // order.  This will be used to seed the initial solution
  // and improve efficiency.
  IPANodeStack &topoNodeStack() { return _T; }

private:

  void visit(IPA_NODE *node);

  void find(void);
  void unify(void);

  IPA_NystromAliasAnalyzer *_nyst;
  IPA_CALL_GRAPH           *_graph;
  MEM_POOL                 *_memPool;
  UINT32                   _I;
  UINT32                  *_D;
  IPANodeStack             _S;
  IPANodeStack             _T;
};

void
IPASCCDetection::visit(IPA_NODE *v)
{
  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
    fprintf(stderr,"visit: IPA_NODE %d, %s\n",v->Node_Index(),v->Name());
  _I += 1;
  _D[v->Node_Index()] = _I;
  _nyst->rep(v,v);
  _nyst->setVisited(v,true);
  IPA_SUCC_ITER succIter(_graph,v);
  for (succIter.First(); !succIter.Is_Empty(); succIter.Next())
  {
    IPA_EDGE *edge = succIter.Current_Edge();
    IPA_NODE *w = _graph->Callee(edge);
    if (!_nyst->visited(w))
      visit(w);
    if (!_nyst->inSCC(w))
    {
      IPA_NODE *rep;
      rep = _D[_nyst->rep(v)->Node_Index()] < _D[_nyst->rep(w)->Node_Index()] ?
          _nyst->rep(v) : _nyst->rep(w);
      _nyst->rep(v,rep);
    }
  }
  if (_nyst->rep(v) == v) {
    _nyst->setInSCC(v,true);
    while (!_S.empty()) {
      IPA_NODE *w = _S.top();
      if (_D[w->Node_Index()] <= _D[v->Node_Index()])
        break;
      else {
        _S.pop();
        _nyst->inSCC(w);
        _nyst->rep(w,v);
      }
    }
    _T.push(v);
  }
  else
    _S.push(v);
}

void
IPASCCDetection::find(void)
{
  // Visit each unvisited root node.   A root node is defined
  // to be a node that has no incoming copy/skew edges
  IPA_NODE_ITER nodeIter(_graph,DONTCARE);
  for (nodeIter.First(); !nodeIter.Is_Empty(); nodeIter.Next()) {
    IPA_NODE *node = nodeIter.Current();
    if (!node) continue;
    if (!_nyst->visited(node)) {
      // We skip any nodes that have a representative other than
      // themselves.  Such nodes occur as a result of merging
      // nodes either through unifying an ACC or other node
      // merging optimizations.  Any such node should have no
      // outgoing edges and therefore should no longer be a member
      // of an SCC.
      if (_nyst->rep(node) == NULL || _nyst->rep(node) == node)
        visit(node);
      else
        _nyst->visited(node);
    }
  }
}

void
IPASCCDetection::unify()
{
  // Unify the nodes in an SCC into a single node
  IPA_NODE_ITER nodeIter(_graph,DONTCARE);
  for (nodeIter.First(); !nodeIter.Is_Empty(); nodeIter.Next()) {
    IPA_NODE *node = nodeIter.Current();
    if (!node) continue;
    FmtAssert(_nyst->visited(node),
        ("Node %d unvisited during SCC detection\n",node->Node_Index()));
    _nyst->setVisited(node,false);
    _nyst->setInSCC(node,false);
    IPA_NODE *rep = _nyst->rep(node);
    if (rep && rep != node) {
      if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
        fprintf(stderr,"Unify: IPA_NODE %d,%s -> IPA_NODE %d,%s\n",
              node->Node_Index(),node->Name(),
              rep->Node_Index(),node->Name());
      // TODO:  Actually merge constraint graphs for these nodes
      ConstraintGraph *nodeCG = _nyst->cg(node->Node_Index());
      ConstraintGraph *repCG =  _nyst->cg(rep->Node_Index());
      //repCG->merge(nodeCG);
    }
  }
}

void
IPASCCDetection::findAndUnify()
{
  // Reset state
  _I = 0;
  _D = CXX_NEW_ARRAY(UINT32,_graph->Node_Size(),_memPool);
  while (!_S.empty()) _S.pop();
  while (!_T.empty()) _T.pop();

  // Make sure that our aux call graph info has been set up.
  _nyst->allocSCCInfo(_graph);

  find();
  unify();

  CXX_DELETE_ARRAY(_D,_memPool);
}

CG_ST_IDX 
ConstraintGraph::adjustCGstIdx(IPA_NODE *ipaNode, CG_ST_IDX cg_st_idx)
{
  UINT16 fileIdx = (UINT16)(ipaNode->File_Index());
  UINT16 puIdx   = (UINT16)(ipaNode->Proc_Info_Index());
  UINT32 filePUIdx = (fileIdx << 16) | puIdx;
  cg_st_idx = (((UINT64)filePUIdx) << 32) | (cg_st_idx & 0x00000000ffffffffLL);
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

  _name = ipaNode->Name();

  // during summary to constraint graph construction, map them to their 
  // globally unique ids so that lookups don't fail
  _uniqueCGNodeIdMap[notAPointer()->id()] = notAPointer();

  // Add the StInfos.
  UINT32 stInfoIdx = proc->Get_constraint_graph_stinfos_idx();
  UINT32 stInfoCount = proc->Get_constraint_graph_stinfos_count();
  SUMMARY_CONSTRAINT_GRAPH_STINFO *summStInfos = 
          IPA_get_constraint_graph_stinfos_array(ipaNode->File_Header(), size);
  FmtAssert(stInfoCount <= size, ("Invalid stInfoCount"));
  for (UINT32 i = 0; i < stInfoCount; i++) {
    SUMMARY_CONSTRAINT_GRAPH_STINFO &summStInfo = summStInfos[stInfoIdx + i];
    // Ignore notAPointer; they have been already
    // added to the globalConstraintGraph
    if (summStInfo.firstOffset() == notAPointer()->id())
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
    // Ignore notAPointer CGNodes; they have been already
    // added to the globalConstraintGraph
    if (summNode.cgNodeId() == notAPointer()->id())
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
    // Ignore notAPointer; they have been already
    // added to the globalConstraintGraph
    if (summStInfo.firstOffset() == notAPointer()->id())
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
    // Add the edges to the representative parents
    ConstraintGraphEdge *edge = 
      ConstraintGraph::addEdge(srcNode->parent(), destNode->parent(), 
                               (CGEdgeType)summEdge.etype(),
                               (CGEdgeQual)summEdge.qual(), 
                               summEdge.sizeOrSkew(), added, summEdge.flags());
    // In case the edge already exists, just add the flags
    if (!added)
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
    // Ignore notAPointer CGNodes; they have been already
    // created in the globalConstraintGraph
    if (summNode.cgNodeId() == notAPointer()->id())
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
        fprintf(stderr, "Merging oldRepParent %d with newRepParent %d"
                " for node: %d (%s)\n", oldRepParent->id(), newRepParent->id(),
                cgNode->id(), (cgNode->cg() == globalCG()) ? "global" 
                                                           : "local");
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

  // Call applyModulus on the global StInfos to fixup any offsets if the modulus
  // has changed during StInfo merging
  for (CGStInfoMapIterator iter = globalCG()->_cgStInfoMap.begin();
       iter != globalCG()->_cgStInfoMap.end(); iter++) {
    StInfo *stInfo = iter->second;
    if (stInfo->checkFlags(CG_ST_FLAGS_ADJUST_MODULUS)) {
      stInfo->applyModulus();
      stInfo->clearFlags(CG_ST_FLAGS_ADJUST_MODULUS);
    }
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
      cs->cgNodeId(findUniqueNode(summCallSite.cgNodeId())->id());
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
  _buildComplete = true;
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
    // Check if we have a modrange or just a plain modulus
    if (!stInfo->checkFlags(CG_ST_FLAGS_MODRANGE)) {
      if (summ->modulus() != stInfo->mod()) {
        stInfo->mod(gcd(stInfo->mod(), summ->modulus()));
        stInfo->addFlags(CG_ST_FLAGS_ADJUST_MODULUS);
      }
    } else {
      ModulusRange *newMR = buildModRange(summ->modulus(), ipaNode);
      ModulusRange *oldMR = stInfo->modRange();
      FmtAssert(oldMR != NULL, ("Old ModulusRange not found"));
      FmtAssert(newMR != NULL, ("New ModulusRange not found"));
      // If we have a range mismatch, collapse
      if (!newMR->compare(oldMR)) {
        if (oldMR->endOffset() < newMR->endOffset())
          oldMR->endOffset(newMR->endOffset());
        oldMR->mod(gcd(oldMR->mod(), newMR->mod()));
        ModulusRange::removeRange(newMR, _memPool);
        ModulusRange::removeRange(oldMR->child(), _memPool);
        oldMR->child(NULL);
        stInfo->addFlags(CG_ST_FLAGS_ADJUST_MODULUS);
      }
    }
    fprintf(stderr, "Global entry found for StInfo old cg_st_idx: %llu "
                    "new cg_st_idx: %llu\n", summ->cg_st_idx(), cg_st_idx);
    return stInfo;
  }
     
  UINT32 flags = summ->flags(); 
  INT64 varSize = summ->varSize(); 
  StInfo *stInfo = CXX_NEW(StInfo(flags, varSize), _memPool);
  if (flags & CG_ST_FLAGS_MODRANGE) {
    // Read in the ModRanges
    ModulusRange *mr = buildModRange(summ->modulus(), ipaNode);
    stInfo->modRange(mr);
  } else {
    UINT32 modulus = summ->modulus();
    stInfo->mod(modulus);
  }
  // Adjust cg_st_idx with the current pu and file index
  _cgStInfoMap[cg_st_idx] = stInfo;

  fprintf(stderr, "Adding StInfo old cg_stIdx: %llu "
          "new cg_st_idx: %llu to %s\n", summ->cg_st_idx(), cg_st_idx,
          (this == globalCG()) ? "global" : "local");

  return stInfo;
}

ModulusRange *
ConstraintGraph::buildModRange(UINT32 modRangeIdx, IPA_NODE *ipaNode)
{
  // Get the modrange table
  INT32 size;
  SUMMARY_CONSTRAINT_GRAPH_MODRANGE *summModRanges = 
          IPA_get_constraint_graph_modranges_array(ipaNode->File_Header(),
                                                   size);
  SUMMARY_CONSTRAINT_GRAPH_MODRANGE &summMR = summModRanges[modRangeIdx];
  ModulusRange *mr = CXX_NEW(ModulusRange(summMR.startOffset(), 
                                          summMR.endOffset(),
                                          summMR.modulus(),
                                          summMR.ty_idx()), _memPool);
  if (summMR.childIdx() != 0)
    mr->child(buildModRange(summMR.childIdx(), ipaNode));
  if (summMR.nextIdx() != 0)
    mr->next(buildModRange(summMR.nextIdx(), ipaNode));

  return mr;
}



class IPA_EscapeAnalysis : public EscapeAnalysis
{
public:
  IPA_EscapeAnalysis(IPACGMap *map, bool wholePrgMode, MEM_POOL *memPool) :
    EscapeAnalysis(NULL,false,memPool),
    _ipaCGMap(map)
  {
    ipaMode(true);
    wholeProgramMode(wholePrgMode);
  }

  void init();
  void computeReversePointsTo();

private:
  IPACGMap *_ipaCGMap;
};

void
IPA_EscapeAnalysis::init(void)
{
  // Walk each of the PU constraint graphs
  IPACGMap *map = _ipaCGMap;
  for (IPACGMapIterator iter = map->begin();
       iter != map->end(); ++iter) {
    initGraph(iter->second);
  }
  // Don't forget about the global constraint graph
  initGraph(ConstraintGraph::globalCG());


}

void
IPA_EscapeAnalysis::computeReversePointsTo()
{
  for (CGIdToNodeMapIterator iter = ConstraintGraph::gBegin();
       iter != ConstraintGraph::gEnd(); ++iter)
    updateReversePointsTo(iter->second);
}

/*
 * Assemble the list of call edges in the IPA call graph, the list of all
 * possible indirect call targets, and all virtual call sites.
 *
 * Eventually we would like to use IPA_EDGEs directly, but we are currently
 * unable to update the call graph as indirect call targets are resolved to
 * multiple targets.
 */
void
IPA_NystromAliasAnalyzer::callGraphSetup(IPA_CALL_GRAPH *ipaCallGraph,
                            list<IPAEdge> &edgeList,
                            list<pair<IPA_NODE *, CallSiteId> > &indirectCallList)
{
  IPA_NODE_ITER nodeIter(ipaCallGraph,DONTCARE);
  for (nodeIter.First(); !nodeIter.Is_Empty(); nodeIter.Next()) {
    IPA_NODE *caller = nodeIter.Current();
    if (caller == NULL) continue;
    IPA_SUCC_ITER succIter(ipaCallGraph,caller);
    for (succIter.First(); !succIter.Is_Empty(); succIter.Next())
    {
      IPA_EDGE *edge = succIter.Current_Edge();
      IPA_NODE *callee = ipaCallGraph->Callee(edge);
      CallSiteId csId =
          edge->Summary_Callsite()->Get_constraint_graph_callsite_id();
      edgeList.push_back(IPAEdge(caller->Node_Index(),callee->Node_Index(),csId));
    }

    // Collect list of possible indirect call targets
    ST *st = caller->Func_ST();
    if (ST_addr_passed(st) || (PU_ipa_addr_analysis(Pu_Table[ST_pu(st)]) &&
        ST_addr_saved(st)))
      _stToNodeMap[st] = caller;

    // Collect the indirect/virtual callsites
    SUMMARY_PROCEDURE *sumProc = caller->Summary_Proc();
    SUMMARY_CALLSITE *sumCS = IPA_get_callsite_array(caller);
    UINT32 cnt = sumProc->Get_callsite_count();
    UINT32 idx = sumProc->Get_callsite_index();
    for (INT i = 0; i < cnt; i++, idx++ ) {
      CallSiteId csId = sumCS[idx].Get_constraint_graph_callsite_id();
      if (sumCS[idx].Is_func_ptr() || sumCS[idx].Is_virtual_call())
        indirectCallList.push_back(make_pair(caller,csId));
    }
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    for (STToNodeMap::iterator i1 = _stToNodeMap.begin();
        i1 != _stToNodeMap.end(); ++i1) {
      ST *st = i1->first;
      IPA_NODE *node = i1->second;
      fprintf(stderr,"Indirect call target: %s (%d)\n",ST_name(st),node->Node_Index());
    }

    for (list<pair<IPA_NODE *,CallSiteId> >::iterator i2 = indirectCallList.begin();
        i2 != indirectCallList.end(); ++i2) {
      IPA_NODE *caller = i2->first;
      CallSiteId id = i2->second;
      fprintf(stderr,"Indirect call site: IPA_NODE %d, CallSiteId %d\n",
              caller->Node_Index(),id);
    }
  }
}
void
IPA_NystromAliasAnalyzer::callGraphPrep(IPA_CALL_GRAPH *ipaCallGraph,
                                        list<IPAEdge> &workList,
                                        EdgeDelta &delta,
                                        list<IPA_NODE *> &revTopOrder,
                                        UINT32 round)
{
  // TODO:  We need to perform SCC detection here and then
  // perform unification after the edges have been added.
  // The topological ordering may be useful in computing the
  // edge delta for the initial round.

  // Connect param/return edges for edges within the workList.
  // The 'delta' is populated with new constraint graph edges
  // to be processed during the next solution pass.  The first
  // time we do this, we will add *all* edges to the delta.
  UINT32 actualSize[32];
  UINT32 paramCnt = 0;
  while (!workList.empty()) {
    IPAEdge edge = workList.front();
    workList.pop_front();

    // Retrieve the caller/callee constraint graphs
    ConstraintGraph *callerCG = cg(edge.callerIdx());
    FmtAssert(callerCG,("callGraphPrep: no constraint graph for caller"));
    ConstraintGraph *calleeCG = cg(edge.calleeIdx());
    FmtAssert(calleeCG,("callGraphPrep: no constraint graph for callee"));
    UINT32 id = edge.csId();

    IPA_NODE *callee = ipaCallGraph->Graph()->Node_User(edge.calleeIdx());
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      fprintf(stderr,"Prep: connect %s (%d) -> %s\n",
              ipaCallGraph->Graph()->Node_User(edge.callerIdx())->Name(),
              id,
              callee->Name());

    // Now, the real work.  Connect the actuals/formals for this callsite
    callerCG->connect(id,calleeCG,callee->Func_ST(),delta);
  }

  // Perform cycle detection on the call graph and
  // merge nodes within SCCS.  A side-effect of the SCC
  // analysis is the topological order of the acyclic call graph
  if (!workList.empty()) {
    IPASCCDetection scc(this,ipaCallGraph,&_memPool);
    scc.findAndUnify();
    IPASCCDetection::IPANodeStack &topoStack = scc.topoNodeStack();

    // Compute the reverse topological order of the call graph
    if (revTopOrder.empty())
      while (!topoStack.empty()) {
        revTopOrder.push_front(topoStack.top());
        topoStack.pop();
      }
  }

}

void
IPA_NystromAliasAnalyzer::updateCallGraph(IPA_CALL_GRAPH *ipaCallGraph,
                      list<pair<IPA_NODE *,CallSiteId> > &indCallList,
                      list<IPAEdge> &edgeList)
{
  // Walk each indirect call site and determine if there exists
  // an edge in the call graph for each CGNode in the points-to
  // set of the indirect call.
  list<pair<IPA_NODE *,CallSiteId> >::const_iterator iter;
  for (iter = indCallList.begin(); iter != indCallList.end(); ++iter) {
    IPA_NODE *caller = iter->first;
    UINT32 id = iter->second;
    ConstraintGraph *callerCG = cg(caller->Node_Index());
    CallSite *cs = callerCG->callSite(id);
    FmtAssert(cs->isIndirect(),
              ("Expected indirect CallSite in caller constraint graph"));
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
      fprintf(stderr,"Indirect Call: %s (%d) maps to CGNodeId: %d\n",
              caller->Name(),id,cs->cgNodeId());
      fprintf(stderr,"Points To:\n");
    }
    ConstraintGraphNode *csNode = ConstraintGraph::cgNode(cs->cgNodeId());
    for (PointsToIterator pti(csNode); pti != 0; ++pti) {
      PointsTo &curPts = *pti;
      for (PointsTo::SparseBitSetIterator iter(&curPts,0); iter != 0; iter++) {
        CGNodeId nodeId = *iter;
        ConstraintGraphNode *node = ConstraintGraph::cgNode(nodeId);
        StInfo *stInfo = node->stInfo();
        if (!stInfo->checkFlags(CG_ST_FLAGS_FUNC)) {
          fprintf(stderr,"Update Call Graph: callsite points to non-func: cgnode %d\n",
                  node->id());
          continue;
        }
        ST_IDX stIdx = SYM_ST_IDX(node->cg_st_idx());
        ST *st = &St_Table[stIdx];
        IPA_NODE *callee = _stToNodeMap[st];
        if (!callee) {
          FmtAssert(ST_sclass(st) == SCLASS_EXTERN,
                    ("Expect func not in call graph to be extern"));
          // assume whole program mode for the moment
          fprintf(stderr,"Update Call Graph: callsite points to extern func: %s\n",
                  ST_name(st));
          continue;
        }
        IPAEdge newEdge(caller->Node_Index(),callee->Node_Index(),id);
        // Have we seen this edge before?
        IndirectEdgeSet::iterator iter = _indirectEdgeSet.find(newEdge);
        bool isNew = (iter == _indirectEdgeSet.end());

        if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
          fprintf(stderr,"  CGNode: %d, ST: %s, IPA_NODE: %d (%s)\n",
                  nodeId,ST_name(st),callee->Node_Index(),
                  isNew?"New":"Old");

        // New edges are placed in our set of resolved indirect target
        // edges and placed in the work list for the next round of
        // call graph preparation.  Eventually we would like to actually
        // add a true IPA_EDGE to the IPA_CALL_GRAPH here.
        if (isNew) {
          _indirectEdgeSet.insert(newEdge);
          edgeList.push_front(newEdge);
        }
      }
    }
  }
}

void
IPA_NystromAliasAnalyzer::findIncompleteIndirectCalls(IPA_CALL_GRAPH *ipaCallGraph,
                                   list<pair<IPA_NODE *,CallSiteId> > &indCallList,
                                   list<IPAEdge> &edgeList)
{
  // Walk each indirect call side and determine if there exists a
  // "blackhole" in its points-to set.  If that is the case, then
  // the target is determined by an incomplete (escaping) symbol.
  list<pair<IPA_NODE *,CallSiteId> >::const_iterator iter;
  for (iter = indCallList.begin(); iter != indCallList.end(); ++iter) {
    IPA_NODE *caller = iter->first;
    UINT32 id = iter->second;
    ConstraintGraph *callerCG = cg(caller->Node_Index());
    CallSite *cs = callerCG->callSite(id);
    FmtAssert(cs->isIndirect(),
              ("Expected indirect CallSite in caller constraint graph"));
    ConstraintGraphNode *icallNode = ConstraintGraph::cgNode(cs->cgNodeId());
    const PointsTo &gblPointsTo = icallNode->pointsTo(CQ_GBL);
    // No, we could not use PointsTo.isSet() here because it is a non-const
    // function.
    for (PointsTo::SparseBitSetIterator sbsi(&gblPointsTo,0); sbsi != 0; sbsi++) {
      if (*sbsi == ConstraintGraph::blackHoleId()) {
        // We have an incomplete indirect call, now connect it up to "everything"
        if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
          fprintf(stderr,"Incomplete Indirect Call: %s (%d) %s maps to CGNodeId: %d\n",
                  caller->Name(),id,
                  ST_name(&St_Table[SYM_ST_IDX(icallNode->cg_st_idx())]),
                  cs->cgNodeId());
        STToNodeMap::const_iterator iter = _stToNodeMap.begin();
        for (; iter != _stToNodeMap.end(); ++iter) {
          const ST *st = iter->first;
          IPA_NODE *ipaNode = iter->second;
          IPAEdge newEdge(caller->Node_Index(),ipaNode->Node_Index(),id);

          // Have we seen this edge before?
          IndirectEdgeSet::iterator iter = _indirectEdgeSet.find(newEdge);
          bool isNew = (iter == _indirectEdgeSet.end());

          // New edges are placed in our set of resolved indirect target
          // edges and placed in the work list for the next round of
          // call graph preparation.  Eventually we would like to actually
          // add a true IPA_EDGE to the IPA_CALL_GRAPH here.
          if (isNew) {
            _indirectEdgeSet.insert(newEdge);
            edgeList.push_front(newEdge);
            if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
              fprintf(stderr,"  Now calls %s\n",ST_name(st));
          }
        }
      }
    }
  }
}

void
IPA_NystromAliasAnalyzer::solver(IPA_CALL_GRAPH *ipaCallGraph)
{
  UINT32 round = 0;
  bool contextSensitive = false;

  if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG))
    fprintf(stderr,"IPA Nystrom: Solver Begin\n");

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

  // Assemble a list of all call edges in the call graph to
  // serve as the seed input to the solution process.  On
  // subsequent iterations the work list will comprise only
  // those edges that correspond to newly discovered indirect
  // call targets.
  list<IPAEdge> edgeList;
  list<pair<IPA_NODE *,CallSiteId> > indirectCallList;
  callGraphSetup(ipaCallGraph,edgeList,indirectCallList);

  bool change;
  list<IPA_NODE *> revTopOrder;
  EdgeDelta delta;
  do {
    change = false;
    round++;
    FmtAssert(revTopOrder.empty(),("solver: expected rev top order list empty"));

    if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG)) {
      fprintf(stderr,"#### Round %d ####\n",round);
      fprintf(stderr,"#### Round %d Top-Down ####\n",round);
    }

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
      callGraphPrep(ipaCallGraph,edgeList,delta,revTopOrder,round);
      FmtAssert(edgeList.empty(),
                ("solver: Expected all call edges to be processed"));

      if (delta.empty())
        break;

      // Now, we solve the graph
      ConstraintGraphSolve cgsolver(delta,NULL,&_memPool);
      if (!cgsolver.solveConstraints()) {
        if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG)) {
          ConstraintGraphVCG::dumpVCG("ipa_failed_soln");
          fprintf(stderr,"IPA Nystrom: No solution found, likely unknown write\n");
        }
        return;
      }

      // Determine if there have been any changes to call sites
      // and update the call graph
      updateCallGraph(IPA_Call_Graph,indirectCallList,edgeList);

    } while (1);

    if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG))
       fprintf(stderr,"#### Round %d Bottom-Up ####\n",round);

    // Bottom up
    if (contextSensitive) {
      // Walk the call graph in reverse topological order, using
      // the topological ordering found during SCC detection
      while (!revTopOrder.empty()) {
        IPA_NODE *curNode = revTopOrder.front();
        revTopOrder.pop_front();

        // Apply summaries for the callees of the current routine.
        // This provides the edge delta for the solution.
        ConstraintGraph *curCG = cg(curNode->Node_Index());
        FmtAssert(delta.empty(),("Bottom-Up: expect delta empty after solve"));
        curCG->applyCalleeSummaries(delta);

        // Now, we solve the graph.  We actually perform cycle
        // detect within the the current constraint graph
        ConstraintGraphSolve cgsolver(delta,curCG,&_memPool);
        if (!cgsolver.solveConstraints()) {
          if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG))
            fprintf(stderr,"IPA Nystrom: No solution found, likely unknown write\n");
          return;
        }
      }
    }

    // Determine if there have been any changes to call sites
    // and update the call graph
    FmtAssert(delta.empty(),("Expect delta empty after solve"));
    updateCallGraph(ipaCallGraph,indirectCallList,edgeList);

  } while (change);

  // The solver has a solution, now we post-process the points-to
  // sets to deal with covering references and field insensitive
  // references
  ConstraintGraphSolve::postProcessPointsTo();

  // We perform escape analysis to determine which symbols may point
  // to memory that is not visible within our scope.
  IPA_EscapeAnalysis escAnal(&_ipaConstraintGraphs,
                             IPA_Enable_Whole_Program_Mode,
                             &_memPool);
  escAnal.perform();
  escAnal.markEscaped();

  // If at this point we still have incomplete indirect calls, then
  // we must attach them to possible callee's and perform a final
  // round of solution.  Initially, this may attempt to connect an
  // indirect call with all possible callees.
  findIncompleteIndirectCalls(ipaCallGraph,indirectCallList,edgeList);
  if (!edgeList.empty())  {
    callGraphPrep(ipaCallGraph,edgeList,delta,revTopOrder,+round);
    if (!delta.empty()) {
      ConstraintGraphSolve cgsolver(delta,NULL,&_memPool);
      cgsolver.solveConstraints();
    }
  }

  if (Get_Trace(TP_ALIAS, NYSTROM_SOLVER_FLAG))
     fprintf(stderr,"IPA Nystrom: Solver Complete\n");

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_VCG_FLAG))
    ConstraintGraphVCG::dumpVCG("ipa_final");

}
