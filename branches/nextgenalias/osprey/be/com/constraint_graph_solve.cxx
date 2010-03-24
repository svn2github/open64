
#include <stack>
#include "be_util.h"
#include "constraint_graph.h"
#include "constraint_graph_escanal.h"
#include "constraint_graph_solve.h"
#include "opt_defs.h"
#include "tracing.h"

//
// Performs cycle detection within the constraint graph.  The
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
class SCCDetection {

  typedef mempool_allocator<ConstraintGraphNode *> CGNodeAllocator;
  typedef deque<ConstraintGraphNode *,CGNodeAllocator> CGNodeDeque;

public:
  typedef stack<ConstraintGraphNode *,CGNodeDeque> CGNodeStack;

  SCCDetection(ConstraintGraph *graph, MEM_POOL *mpool)
  : _graph(graph),
    _memPool(mpool),
    _I(0),
    _D(graph->totalCGNodes()),
    _S(CGNodeDeque(mpool)),
    _T(CGNodeDeque(mpool))
  {}

  ~SCCDetection() {}

  // Detect and unify all SCCS within the constraint graph.
  void findAndUnify(UINT32 noMergeMask = 0);

  // Return a handle to the stack of nodes in topological
  // order.  This will be used to seed the initial solution
  // and improve efficiency.
  CGNodeStack &topoNodeStack() { return _T; }

  typedef struct {
    size_t operator()(const ConstraintGraphNode *k) const
    {
      return k->id();
    }
  } hashCGNodeId;
  typedef hash_map<ConstraintGraphNode*,UINT32,hashCGNodeId> NodeToKValMap;
  typedef NodeToKValMap::const_iterator NodeToKValMapIterator;

  private:

  void visit(ConstraintGraphNode *node);

  void find(void);
  void unify(UINT32 noMergeMap, NodeToKValMap&);
  void pointsToAdjust(NodeToKValMap&);

  ConstraintGraph       *_graph;
  MEM_POOL              *_memPool;
  UINT32                 _I;
  hash_map<CGNodeId,UINT32> _D;
  CGNodeStack            _S;
  CGNodeStack            _T;
};

void
SCCDetection::visit(ConstraintGraphNode *v)
{
  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
    fprintf(stderr,"visit: Node %d\n",v->id());
  _I += 1;
  _D[v->id()] = _I;
  v->repParent(v);
  v->addFlags(CG_NODE_FLAGS_VISITED);
  for (CGEdgeSetIterator iter = v->outCopySkewEdges().begin();
      iter != v->outCopySkewEdges().end(); ++iter ) {
    ConstraintGraphEdge *edge = *iter;
    if (!edge->checkFlags(CG_EDGE_PARENT_COPY)) {
      ConstraintGraphNode *w = edge->destNode();
      // Cycle detection does not span constraint graphs
      if (w->cg() != _graph)
        continue;
      if (!w->checkFlags(CG_NODE_FLAGS_VISITED))
        visit(w);
      if (!w->checkFlags(CG_NODE_FLAGS_SCCMEMBER))
      {
        ConstraintGraphNode *rep;
        rep = _D[v->repParent()->id()] < _D[w->repParent()->id()] ?
            v->repParent() : w->repParent();
        v->repParent(rep);
      }
    }
  }
  if (v->repParent() == v) {
    v->addFlags(CG_NODE_FLAGS_SCCMEMBER);
    while (!_S.empty()) {
      ConstraintGraphNode *w = _S.top();
      if (_D[w->id()] <= _D[v->id()])
        break;
      else {
        _S.pop();
        w->addFlags(CG_NODE_FLAGS_SCCMEMBER);
        w->repParent(v);
      }
    }
    _T.push(v);
  }
  else
    _S.push(v);
}

void
SCCDetection::find(void)
{
  // Visit each unvisited root node.   A root node is defined
  // to be a node that has no incoming copy/skew edges
  for (CGNodeToIdMapIterator iter = _graph->lBegin();
      iter != _graph->lEnd(); iter++) {
    ConstraintGraphNode *node = iter->first;
    if (!node->checkFlags(CG_NODE_FLAGS_VISITED)) {
      // We skip any nodes that have a representative other than
      // themselves.  Such nodes occur as a result of merging
      // nodes either through unifying an ACC or other node
      // merging optimizations.  Any such node should have no
      // outgoing edges and therefore should no longer be a member
      // of an SCC.
      if (node->repParent() == NULL || node->repParent() == node)
        visit(node);
      else {
        FmtAssert(node->checkFlags(CG_NODE_FLAGS_MERGED),
                  ("Node with parent has not been merged!"));
        FmtAssert(node->outCopySkewEdges().empty(),
            ("Found copy edge: expect node with representative "
                "to be a leaf node.\n"));
        FmtAssert(node->outLoadStoreEdges().empty(),
            ("Found copy edge: expect node with representative "
                "to be a leaf node.\n"));
      }
    }
  }
}

void
SCCDetection::unify(UINT32 noMergeMask, NodeToKValMap &nodeToKValMap)
{
  // We capture the current number of nodes in the graph.  As we
  // merge nodes, additional offsets may materialize that will not
  // be marked as "visited".  They should have no incoming/outgoing
  // edges so we do not flag this as a problem.
  UINT32 nodeCount = _graph->totalCGNodes();

  // Unify the nodes in an SCC into a single node
  for (CGNodeToIdMapIterator iter = _graph->lBegin();
      iter != _graph->lEnd(); iter++) {
    ConstraintGraphNode *node = iter->first;
    FmtAssert(node->checkFlags(CG_NODE_FLAGS_VISITED) ||
              node->checkFlags(CG_NODE_FLAGS_MERGED) ||
              // New nodes created when merging nodes and
              // adjusting the points-to set for an updated
              // inKCycle() value.
              (node->id() >= nodeCount &&
                  node->outCopySkewEdges().empty() &&
                  node->outLoadStoreEdges().empty() &&
                  node->inCopySkewEdges().empty() &&
                  node->inLoadStoreEdges().empty()),
        ("Node %d unvisited during SCC detection\n",node->id()));
    if (node->repParent() && node->repParent() != node &&
        !node->checkFlags(CG_NODE_FLAGS_MERGED)) {
      // If this is a node that we do not want to merge, yes cycle
      // detection may leave cycles in the graph, then we skip it.
      // However, we must reset the representative.
      if (node->cg()->stInfo(node->cg_st_idx())->flags() & noMergeMask) {
        node->repParent(NULL);
        continue;
      }
      ConstraintGraphEdge dummy(node->repParent(),node,ETYPE_COPY,CQ_HZ,0);
      if (!node->inEdge(&dummy)) {
        if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
          fprintf(stderr,"Unify: Node %d -> Node %d\n",
              node->id(),node->repParent()->id());
        // We need to track this node so as to update the modulus
        // of the representative points-to set based on the 'new'
        // value of inKCycle() after the SCC has been collapsed.
        ConstraintGraphNode *rep = node->findRep();
        if (!rep->checkFlags(CG_NODE_FLAGS_INKVALMAP)) {
          nodeToKValMap[rep] = rep->inKCycle();
          rep->addFlags(CG_NODE_FLAGS_INKVALMAP);
        }
        rep->merge(node);
        // If node is the only offset, PARENT_COPY edges are not required
        if (!node->isOnlyOffset()) {
          bool added = false;
          ConstraintGraphEdge *newEdge = 
              ConstraintGraph::addEdge(rep, node, ETYPE_COPY, CQ_HZ, 0,
                                       added, CG_EDGE_PARENT_COPY);
          FmtAssert(added, (":merge: failed to add special copy edge"));
        }
      }
    }
    node->clearFlags(CG_NODE_FLAGS_VISITED|CG_NODE_FLAGS_SCCMEMBER);
  }
}

void
SCCDetection::pointsToAdjust(NodeToKValMap &nodeToKValMap)
{
  // Now that all SCCs have been merged, we update the merged
  // points-to sets based on the final K value.
  for (NodeToKValMapIterator iter = nodeToKValMap.begin();
       iter != nodeToKValMap.end(); ++iter ) {
    ConstraintGraphNode *rep = iter->first;
    UINT32 origKVal = iter->second;
    UINT32 newKVal = rep->inKCycle();
    for ( PointsToIterator pti(rep); pti != 0; ++pti ) {
      PointsTo tmp(_memPool);
      PointsTo &ptsTo = *pti;
      ConstraintGraph::adjustPointsToForKCycle(newKVal,ptsTo,tmp);
      ptsTo.clear();
      ptsTo.setUnion(tmp);
    }
  }
}

void
SCCDetection::findAndUnify(UINT32 noMergeMask)
{
  // Reset state
  _I = 0;
  _D.clear();
  while (!_S.empty()) _S.pop();
  while (!_T.empty()) _T.pop();

  // Mapping of representative node points to the original K value
  // used to determine the updated needed to the merged points-to sets.
  NodeToKValMap nodeToKValMap;

  find();
  unify(noMergeMask,nodeToKValMap);
  pointsToAdjust(nodeToKValMap);
}

void
EdgeDelta::add(ConstraintGraphEdge *e)
{
  bool added;
  if (e->edgeType() == ETYPE_COPY ||
      e->edgeType() == ETYPE_SKEW)
    added = copySkewList().push(e);
  else {
    FmtAssert(e->edgeType() == ETYPE_LOAD ||
              e->edgeType() == ETYPE_STORE,
              ("Unknown edgetype in ConstraintGraphDelta::add()"));
    added = loadStoreList().push(e);
  }
  if (added && Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"   Added to worklist: ");
    e->print(stderr);
    fprintf(stderr,"\n");
  }
}
// Method to perform cycle detection/unification only
void
ConstraintGraphSolve::cycleDetection(UINT32 noMergeMask)
{
  FmtAssert(_cg,("cycleDetection: Requires ConstraintGraph!\n"));
  SCCDetection sccs(_cg,_memPool);
  sccs.findAndUnify(noMergeMask);
}

// Core method to solve a constraint graph assuming that the
// boundary conditions for the solution are provided by 'delta'
// This method assumes that the constraint graph is acyclic.
bool
ConstraintGraphSolve::solveConstraints(UINT32 noMergeMask)
{
  // TODO: Perform cycle detection, here
  SCCDetection sccs(_cg,_memPool);

  bool seed = edgeDelta().empty() && (_cg != NULL);
  EdgeWorkList &copySkewList = edgeDelta().copySkewList();
  EdgeWorkList &loadStoreList = edgeDelta().loadStoreList();

  UINT32 iterCount = 0;
  bool trace = Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG);

  do {
    // Here we walk the constraint graph to locate any SCCs and
    // collapse them to ensure that the solver will converge.
    if (_cg)
      sccs.findAndUnify(noMergeMask);

    // We need to seed the the solver with the appropriate
    // edges, either based on the SCCDetection traversal or the
    // provided edge delta.
    if (seed) {
      seed = false;
      if (trace) fprintf(stderr,"\nSeeding solver:\n");
      SCCDetection::CGNodeStack &stack = sccs.topoNodeStack();
      while (!stack.empty()) {
        ConstraintGraphNode *node = stack.top();
        stack.pop();
        if (trace) fprintf(stderr,"Node %d\n",node->id());
        CGEdgeSetIterator iter = node->outCopySkewEdges().begin();
        if (iter != node->outCopySkewEdges().end()) {
          if (trace) fprintf(stderr," Copy Edges:\n");
          for ( ; iter != node->outCopySkewEdges().end();
              iter++) {
            ConstraintGraphEdge *edge = *iter;
            if (trace) {
              fprintf(stderr,"  Adding edge:");
              edge->print(stderr);
              fprintf(stderr,"\n");
            }
            copySkewList.push(edge);
          }
        }
        CGEdgeSetIterator ldIter = node->outLoadStoreEdges().begin();
        if (ldIter != node->outLoadStoreEdges().end()){
          if (trace) fprintf(stderr," Ld/St Edges:\n");
          for ( ; ldIter != node->outLoadStoreEdges().end();
              ldIter++) {
            ConstraintGraphEdge *edge = *ldIter;
            if (trace) {
              fprintf(stderr,"  Adding edge:");
              edge->print(stderr);
              fprintf(stderr,"\n");
            }
            loadStoreList.push(edge);
          }
        }
      }
    }

    if (trace)
      fprintf(stderr,"Solver Iteration %d\n",++iterCount);
    while (!copySkewList.empty()) {
      ConstraintGraphEdge *edge = copySkewList.front();
      if (trace) {
        fprintf(stderr," Copy Edge:");
        edge->print(stderr);
        fprintf(stderr,"\n");
      }
      if (edge->edgeType() == ETYPE_COPY)
        processAssign(edge);
      else {
        FmtAssert(edge->edgeType() == ETYPE_SKEW,
            ("ConstraintGraph::solveConstraints: type %d edge in "
                "copy/skew worklist",edge->edgeType()));
        processSkew(edge);
      }
      copySkewList.pop();
    }

    while (!loadStoreList.empty()) {
      ConstraintGraphEdge *edge = loadStoreList.pop();
      if (trace) {
        fprintf(stderr," Ld/St Edge:");
        edge->print(stderr);
        fprintf(stderr,"\n");
      }
      if (edge->edgeType() == ETYPE_LOAD)
        processLoad(edge);
      else {
        FmtAssert(edge->edgeType() == ETYPE_STORE,
            ("ConstraintGraph::solveConstraints: type %d edge in"
                "load/store worklist",edge->edgeType()));
        if (!processStore(edge))
          // Bad news.  At the very least, this means that both
          // the src and dest of this edge were flagged as unknown,
          // which means we may as well give up.
          return false;
      }
    }
  } while (!copySkewList.empty());

  return true;
}

bool
ConstraintGraph::nonIPASolver(bool doEscAnal)
{
  // Here we solve the constraint graph for the current procedure
  EdgeDelta delta;
  ConstraintGraphSolve solver(delta,this,_memPool);
  // For now we try to cycle eliminate all variables including GLOBALS.
  if (!solver.solveConstraints())
    return false;

  // The solver has a solution, now we post-process the points-to
  // sets to deal with covering references and field insensitive
  // references
  solver.postProcessPointsTo();

  // Now we perform escape analysis to in order to augment the
  // the points-to sets of "incomplete" symbols to facilitate
  // comparison of their points-to sets with symbols for which
  // we have "complete" information.
  if (doEscAnal) {
    EscapeAnalysis escAnal(this,false/*not summary*/,_memPool);
    escAnal.perform();
    escAnal.markEscaped();
  }
  return true;
}

void
ConstraintGraphSolve::postProcessPointsTo()
{
  PointsTo adjustSet;
  for (CGIdToNodeMapIterator iter = ConstraintGraph::gBegin();
       iter != ConstraintGraph::gEnd(); iter++) {
    ConstraintGraphNode *node = iter->second;
    for ( PointsToIterator pti(node); pti != 0; ++pti ) {
      PointsTo &curSet = *pti;
      for (PointsTo::SparseBitSetIterator sbsi(&curSet,0); sbsi != 0; ++sbsi)
      {
        ConstraintGraphNode *node = ConstraintGraph::cgNode(*sbsi);
        if (node->offset() == -1)
        {
          ConstraintGraphNode *cur = node->nextOffset();
          while (cur) {
            adjustSet.setBit(cur->id());
            cur = cur->nextOffset();
          }
        }
        else {
          // Handle changes in the size of the modulus that may have
          // made the current offset "out of bounds"
          UINT32 modulus = node->stInfo()->modulus(node->offset());
          if (node->offset() >= modulus) {
            FmtAssert(node->repParent(),("Node beyond modulus must have parent\n"));
            node = node->repParent();
            adjustSet.setBit(node->id());
            // If we have overrun our offset limit, then the parent may
            // actually be <ST,-1> rather than <ST,offset%modulus>.
            // In that case we are done.
            if (node->offset() == -1)
              continue;
          }
          else
            adjustSet.setBit(node->id());

          // Now we walk from offset to offset+accessSize and deal
          // with any wraparound that may occur at 'modulus'
          UINT32 endOffset = node->offset() + node->maxAccessSize();
          UINT32 endOffset2;
          bool wrapAround = (endOffset > modulus);
          if (wrapAround) {
            endOffset = modulus;
            endOffset2 = endOffset % modulus;
          }
          ConstraintGraphNode *cur = node->nextOffset();
          while (cur && cur->offset() < endOffset) {
            adjustSet.setBit(cur->id());
            cur = cur->nextOffset();
          }
          if (wrapAround){
            ConstraintGraphNode *cur = node->stInfo()->firstOffset();
            if (cur->offset() == -1) cur = cur->nextOffset();
            while (cur && cur->offset() < endOffset2) {
              adjustSet.setBit(cur->id());
              cur = cur->nextOffset();
            }
          }
        }
      }
      curSet.clear();
      curSet.setUnion(adjustSet);
      adjustSet.clear();
    }
  }
}

void
ConstraintGraphSolve::addEdgesToWorkList(ConstraintGraphNode *node)
{
  // If this routine is being called, then the points-to set of
  // this node has been updated.  We need to add the following
  // edges to the work list for further processing:

  // 1) All outgoing copy/skew edges
  const CGEdgeSet &outCopySkew = node->outCopySkewEdges();
  for (CGEdgeSetIterator iter = outCopySkew.begin();
       iter != outCopySkew.end();
       iter++) {
    edgeDelta().add(*iter);
  }

  // 2) All outgoing load (assign_deref) edges
  const CGEdgeSet &outLoadStore = node->outLoadStoreEdges();
  for (CGEdgeSetIterator iter = outLoadStore.begin();
       iter != outLoadStore.end();
       iter++) {
    ConstraintGraphEdge *e = (*iter);
    if (e->edgeType() == ETYPE_LOAD)
      edgeDelta().add(e);
  }

  // 3) All incoming store (deref_assign) edges
  const CGEdgeSet &inLoadStore = node->inLoadStoreEdges();
  for (CGEdgeSetIterator iter = inLoadStore.begin();
       iter != inLoadStore.end();
       iter++) {
    ConstraintGraphEdge *e = (*iter);
    if (e->edgeType() == ETYPE_STORE)
      edgeDelta().add(e);
  }
}

void
ConstraintGraphSolve::updateOffsets(const ConstraintGraphNode *dst,
                                    PointsTo &pts,
                                    CGEdgeQual dstQual)
{
  if (dst->offset() == -1) {
    ConstraintGraphNode *cur = dst->nextOffset();
    while (cur != NULL) {
      bool change = false;
      change |= cur->unionPointsTo(pts, dstQual);
      if (change)
        addEdgesToWorkList(cur); // Mark outgoing edges as to be updated....
      cur = cur->nextOffset();
    }
  }
  // We need to make sure that we mark any previous offsets, i.e.
  // offsets < dstStOffset, that have references covering dstStOffset
  // as needing to be reprocessed.
  else {
    StInfo *dstStInfo = dst->cg()->stInfo(dst->cg_st_idx());
    ConstraintGraphNode *cur = dstStInfo->firstOffset();
    // Do not assume that the firstOffset() is non-NULL.  For certain
    // types, e.g. preg, we do not generate an offset list.
    if (cur && cur->offset() == -1) {
      // Any update to <ST,offset> requires that we update <ST,-1>
      // if it exists
      bool change = cur->unionPointsTo(pts,dstQual);
      if (change)
        addEdgesToWorkList(cur);
      cur = cur->nextOffset();
    }
    while (cur != NULL && cur->offset() < dst->offset()) {
      if (cur->offset() + cur->maxAccessSize() > dst->offset())
        addEdgesToWorkList(cur);
      cur = cur->nextOffset();
    }
  }
}

/*
 * Here is the original assignment rule from Nystrom's implementation
 *
 * u =[t1,z1,s1] v &&  v =&[t2,s2] w && s1 <= t2 <= s1+z1-4
 *--------------------------------------------------------------
 *                   u =&[t1+(t2-s1),s2] w
 *
 * Mapping to our implementation:
 *
 *   We have a special case for the "universal" stride scenario, which
 *   occurs when either when 't1' or 's1' == -1, i.e. <u,-1> or <v,-1>.
 *
 *   Case 1: t1 != -1, s1 != -1
 *
 *      for (t2 = s1; t2 <= s1+z1-4; t2++)
 *         pts-to(<u,t1+(t2-s1)>) U= pts-to(<v,t2>)
 *
 *   Case 2: t1 == -1, s1 != -1
 *
 *      sum = {};
 *      for (t2=s1; t2 <= s1+z1-4; t2++)
 *         pts-to(<u,-1)>) U= pts-to(<v,t2>)
 *         sum U= pts-to(<v,t2>)
 *      for (i=0; i < varsize(u); i++)
 *         if (exists(<u,i>))
 *            pts-to(<u,i>) U= sum;
 *
 *   Case 3: t1 != -1, s1 == -1
 *
 *      pts-to(<u,t1>) U= pts-to(<v,-1>);
 *
 *   Case 4: t1 == -1, s1 == -1
 *
 *      pts-to(<u,t1>) U= pts-to(<v,-1>);
 *      for (i=0; i < varsize(u); i++)
 *         if (exists(<u,i>))
 *            pts-to(<u,i>) U= pts-to(<v,-1>);
 *
 */

void
ConstraintGraphSolve::processAssign(const ConstraintGraphEdge *edge)
{
  // If the source of the copy edge has an unknown
  // points-to set, then we simply need to propagate
  // the unknown flag to the destination and we are
  // done. NOTE: Unfortunately we still need to propagate
  // the points-to sets across the edge to ensure we
  // handle unknown load/store edges correctly.
  if (edge->srcNode()->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG) &&
         !edge->destNode()->checkFlags(CG_NODE_FLAGS_UNKNOWN))
       fprintf(stderr,"processAssign: propagate unknown %d -> %d\n",
           edge->srcNode()->id(),edge->destNode()->id());
    edge->destNode()->addFlags(CG_NODE_FLAGS_UNKNOWN);
  }

  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();

  // Is this constraint context sensitive?
  bool cntxt = 
       !src->cg()->stInfo(src->cg_st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);

  // If the copy edge is a copy from parent to child, we
  // call updateOffsets on the child, i.e. the dest
  if (edge->checkFlags(CG_EDGE_PARENT_COPY)) {
    for (PointsToIterator pti(src); pti != 0; ++pti) {
      CGEdgeQual srcQual = pti.qual();
      CGEdgeQual edgeQual = edge->edgeQual();
      CGEdgeQual dstQual = qualMap(ETYPE_COPY, srcQual, edgeQual, cntxt);
      updateOffsets(dst, *pti, dstQual);
      return;
    }
  }

  UINT32 assignSize = edge->size();
  StInfo *dstStInfo = dst->cg()->stInfo(dst->cg_st_idx());

  INT32 dstStOffset = dst->offset();
  INT32 srcStOffset = src->offset();
  INT32 curEndOffset = src->offset() + assignSize;
  // Case 1 & 2
  if (srcStOffset != -1) {
    CGEdgeQual edgeQual = edge->edgeQual();
    for ( PointsToIterator pti(src); pti != 0; ++pti ) {
      CGEdgeQual srcQual = pti.qual();
      CGEdgeQual dstQual = qualMap(ETYPE_COPY,srcQual,edgeQual,cntxt);
      if (dstQual != CQ_NONE) {
        ConstraintGraphNode *cur = src;
        SparseBitSet<CGNodeId> sum(_memPool);
        bool dstChange = false;
        while (cur != NULL && cur->offset() < curEndOffset) {
          ConstraintGraphNode *dstNode;
          // We do not create new PREGs
          if (dstStOffset != -1 && 
              !dst->stInfo()->checkFlags(CG_ST_FLAGS_PREG)) {
            INT32 dstOffset = dstStOffset + (cur->offset() - srcStOffset);
            // Creates node if necessary
            dstNode = dst->cg()->getCGNode(dst->cg_st_idx(),dstOffset);
          }
          else
            dstNode = dst;
          // We compute the sum because either the target of the copy
          // is <ST,-1> in which case we will use this when we update
          // all other <ST,off> nodes.  Or we are writing <ST,off1...offn>
          // and we need to update <ST,-1>.  Both occur in updateOffset().
          sum.setUnion(cur->pointsTo(srcQual));
          bool change = false;
          if (dstNode->inKCycle() == 0)
            change |= dstNode->unionPointsTo(cur->pointsTo(srcQual), dstQual);
          // We are updating the representative node of an SCC, so we
          // need to map the points-to set to the field insensitive
          // equivalent.
          else {
            PointsTo tmp(_memPool);
            ConstraintGraph::adjustPointsToForKCycle(dstNode->inKCycle(),
                                                     cur->pointsTo(srcQual),
                                                     tmp);
            change |= dstNode->unionPointsTo(tmp, dstQual);
          }
          dstChange |= change;
          if (change)
            addEdgesToWorkList(dstNode);
          cur = cur->nextOffset();
        }
        if (dstChange)
          updateOffsets(dst,sum,dstQual);
      }
    }
  }
  // Case 3 & 4
  else {
    bool change = false;
    CGEdgeQual edgeQual = edge->edgeQual();
    for ( PointsToIterator pti(src); pti != 0; ++pti ) {
      CGEdgeQual srcQual = pti.qual();
      CGEdgeQual dstQual = qualMap(ETYPE_COPY,srcQual,edgeQual,cntxt);
      if (dstQual != CQ_NONE) {
        if (dst->inKCycle() == 0)
          change |= dst->unionPointsTo(*pti, dstQual);
        else {
          PointsTo tmp(_memPool);
          ConstraintGraph::adjustPointsToForKCycle(dst->inKCycle(),*pti,tmp);
          change |= dst->unionPointsTo(tmp, dstQual);
        }
        if (change) {
          addEdgesToWorkList(dst);
          updateOffsets(dst,*pti,dstQual);
        }
      }
    }
  }
}

/*
 * Here is the rule from Nystrom's implementation:
 *
 *   u <<[t1,k1,s1] v &&  v =&[t2,s2] w && t2=s1 && valid(w,s2+k1)
 *  --------------------------------------------------------------
 *                   u =&[t1,s2+k1] w
 *
 *  The semantics of valid(w,s2+k1) are such that it returns true if
 *  's2+k1' is less than the object's, 'w', allocated size.  For heap
 *  this is trivially true as the size will be unbounded.
 *
 *  foreach <w,s2> in pts-to(<v,s1>)
 *    if ( varSize(w) < s2+k1 )
 *      pts-to(<u,t1>) U= { <w,s2+k1> }
 *
 */

void
ConstraintGraphSolve::processSkew(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();

  // If the source of the skew edge has an unknown
  // points-to set, then we simply need to propagate
  // the unknown flag to the destination and we are
  // done. NOTE: Unfortunately we still need to propagate
  // the points-to sets across the edge to ensure we
  // handle unknown load/store edges correctly.
  if (src->checkFlags(CG_NODE_FLAGS_UNKNOWN))
  {
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG) &&
        !dst->checkFlags(CG_NODE_FLAGS_UNKNOWN))
      fprintf(stderr,"processSkew: propagate unknown %d -> %d\n",
          src->id(),dst->id());
    dst->addFlags(CG_NODE_FLAGS_UNKNOWN);
  }

  UINT32 skew = edge->skew();
  CGEdgeQual edgeQual = edge->edgeQual();
  bool change = false;
  bool cntxt = 
       !src->cg()->stInfo(src->cg_st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    CGEdgeQual curQual = pti.qual();
    CGEdgeQual dstQual = qualMap(ETYPE_COPY/*COPY==SKEW*/,curQual,edgeQual,cntxt);
    if (dstQual != CQ_NONE) {
      PointsTo &srcPTS = *pti;
      PointsTo tmp;
      for (PointsTo::SparseBitSetIterator iter(&srcPTS,0); iter != 0; iter++)
      {
        CGNodeId nodeId = *iter;
        ConstraintGraphNode *node = ConstraintGraph::cgNode(nodeId);
        StInfo *st = node->cg()->stInfo(node->cg_st_idx());
        INT32 newOffset;
        // Computing the correct offset is interesting.
        // If the source offset is -1, the result is always -1.
        // If the target node is not involved in a cycle, then we
        // simply add (offset + skew).  If the cycle is less
        // than Pointer_Size then we go field insensitive and set
        // the offset to -1.  If > Pointer_Size we adjust the modulus
        // of the symbol of the node.
        if (node->offset() == -1)
          newOffset = -1;
        else if (dst->inKCycle() == 0)
          newOffset = node->offset() + skew;
        else if (dst->inKCycle() < Pointer_Size)
          newOffset = -1;
        else {
          if (dst->inKCycle() < st->modulus(node->offset()/*+skew?*/))
            st->modulus(dst->inKCycle());
          newOffset = node->offset() + skew;
        }
        ConstraintGraphNode *skewNode = 
                       node->cg()->getCGNode(node->cg_st_idx(),newOffset);
        skewNode->addFlags(CG_NODE_FLAGS_ADDR_TAKEN);
        tmp.setBit(skewNode->id());
      }
      bool change = dst->unionPointsTo(tmp,dstQual);
      if (change) {
        addEdgesToWorkList(dst);
        updateOffsets(dst,tmp,dstQual);
      }
    }
  }
}

void
ConstraintGraphSolve::addCopiesForLoadStore(ConstraintGraphNode *src,
                                            ConstraintGraphNode *dst,
                                            CGEdgeType etype,
                                            CGEdgeQual qual,
                                            UINT32 size,
                                            SparseBitSet<CGNodeId> &ptSet)
{
  FmtAssert(etype == ETYPE_LOAD || etype == ETYPE_STORE,
            ("Expected only adding copy edges for load/store constraints"));
  for (PointsTo::iterator iter(&ptSet,0); iter != 0; iter++)
  {
    CGNodeId nodeId = *iter;
    ConstraintGraphNode *node = ConstraintGraph::cgNode(nodeId);

    // The node we pull out of the points-to set may have been part of a
    // SCC and been merged with a representative node.  Here we make sure
    // that any edge we add targets only the representative
    ConstraintGraphNode *nodeRep = node->findRep();

    // Create the new assignment edge.  If it turns out the edge
    // does already exist nothing further is required.  Otherwise,
    // we add the new edge to the worklist.
    ConstraintGraphEdge *newEdge;
    bool added = false;
    newEdge = ConstraintGraph::addEdge(etype == ETYPE_LOAD ? nodeRep : src,
                                       etype == ETYPE_LOAD ? dst : nodeRep,
                                       ETYPE_COPY,qual,size,added);
    if (added)
      edgeDelta().add(newEdge);
  }
}

void
ConstraintGraphSolve::processLoad(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  // If the source of the edge is unknown, that means it
  // may point to symbols that are not present in its
  // points to set, which means that we are not able to
  // add all necessary copy edges to the target of the load
  // This means we must mark the destination as unknown.
  // NOTE: if the target of the edge is unknown, no action
  // is necessary.
  if (src->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG) &&
         !dst->checkFlags(CG_NODE_FLAGS_UNKNOWN))
       fprintf(stderr,"processLoad: propagate unknown %d -> %d\n",
           src->id(),dst->id());
    dst->addFlags(CG_NODE_FLAGS_UNKNOWN);
  }

  bool cntxt = 
       !src->cg()->stInfo(src->cg_st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_LOAD,curQual,edgeQual,cntxt);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_LOAD,cpQual,sz,*pti);
  }
}

bool
ConstraintGraphSolve::processStore(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  // If the target of the edge is unknown, that means the
  // node may point to symbols that are *not* present in
  // its points-to set.  Since we process a store edge
  // by adding copy edges from the source to each element
  // in the points-to set of the destination, we effectively
  // have missing copy edges.  The destination could point
  // to any symbol.  If the source of the edge is known,
  // we place the contents of its points-to set into
  // every "known" node in the graph (ouch).  If the source
  // of the edge is also unknown, we have a unknown pointer
  // writing an unknown value and we have no choice but to
  // punt.  We simply terminate the solver.
  if (dst->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    // Here we dump a giant warning to help track down these issues
    fprintf(stderr,"=========================================\n");
    fprintf(stderr,"PU: %d processStore",Current_PU_Count());
    edge->print(stderr);
    fprintf(stderr,"\n");
    src->print(stderr);
    dst->print(stderr);
    fprintf(stderr,"=========================================\n");
    if (!src->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
      for (CGIdToNodeMapIterator iter = ConstraintGraph::gBegin();
           iter != ConstraintGraph::gEnd(); iter++) {
        ConstraintGraphNode *node = iter->second;
        if (!node->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
          bool change = false;
          for (PointsToIterator pti(src); pti != 0; ++pti)
            change |= node->unionPointsTo(*pti,CQ_GBL);
          if (change)
            addEdgesToWorkList(node);
        }
      }
    }
    else
      return false;
  }

  bool cntxt = 
       !dst->cg()->stInfo(dst->cg_st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
  for ( PointsToIterator pti(dst); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_STORE,curQual,edgeQual,cntxt);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_STORE,cpQual,sz,*pti);
  }
  return true;
}

CGEdgeQual
ConstraintGraphSolve::qualMap(CGEdgeType et,
                              CGEdgeQual aq,
                              CGEdgeQual eq,
                              bool cs)
{
  /* context sensitive */
  if (cs) {
    if (et == ETYPE_STORE)
      return (aq == CQ_DN) ? CQ_UP : aq;
    else if (et == ETYPE_LOAD)
      return aq;
    else if (et == ETYPE_COPY) {
      if (eq == CQ_HZ)
        return aq;
      else if (eq == CQ_DN || eq == CQ_GBL)
        return eq;
      else /* eq == CQ_UP */
        return (aq == CQ_GBL) ? aq : CQ_NONE;
    }
  }
  /* context insensitive */
  else {
    if (et == ETYPE_COPY)
      return (eq == CQ_DN ? CQ_DN : CQ_GBL);
    else
      return CQ_GBL;
  }
}

void
ConstraintGraph::simpleOptimizer()
{
  fprintf(stderr, "Optimizing ConstraintGraphs...\n");
  // Iterate over all nodes in the graph
  // Simple optimizer, find nodes that have single outgoing/incoming
  // copy edge connecting the two nodes
  for (CGNodeToIdMapIterator iter = ConstraintGraph::lBegin();
       iter != ConstraintGraph::lEnd(); iter++) {
    ConstraintGraphNode *srcNode = iter->first->parent();
    // Ignore if there are outgoing load/store edges
    if (!srcNode->outLoadStoreEdges().empty())
      continue;
    // Single outgoing copy edge
    if (srcNode->outCopySkewEdges().size() != 1)
      continue;
    const CGEdgeSet &eset = srcNode->outCopySkewEdges();
    CGEdgeSetIterator eiter = eset.begin();
    ConstraintGraphEdge *edge = *eiter;
    // Handle only copy edges
    if (edge->edgeType() != ETYPE_COPY)
      continue;
    // Already merged?
    if (edge->checkFlags(CG_EDGE_PARENT_COPY))
      continue;
    ConstraintGraphNode *destNode = edge->destNode();
    FmtAssert(_toBeDeletedNodes.find(destNode->id()) == _toBeDeletedNodes.end(),
              ("Node already deleted"));
    // They should be from the same CG
    if (srcNode->cg() != destNode->cg())
      continue;
    // Ignore if there are incoming load/store edges
    if (!destNode->inLoadStoreEdges().empty())
      continue;
    // Single incoming copy edge
    if (destNode->inCopySkewEdges().size() != 1)
      continue;

    // src should be a node that will always
    // have only a single offset (for now that means just pregs)
    if (!srcNode->isOnlyOffset())
      continue;

    // We prefer the toBeMergedNode to be a preg that can be deleted
    ConstraintGraphNode *parentNode;
    ConstraintGraphNode *toBeMergedNode;
    if (srcNode->stInfo()->checkFlags(CG_ST_FLAGS_PREG) &&
        srcNode->canBeDeleted()) {
      toBeMergedNode = srcNode;
      parentNode = destNode;
    } else {
      toBeMergedNode = destNode;
      parentNode = srcNode;
    }

    // Perform the merge
    parentNode->merge(toBeMergedNode);
    toBeMergedNode->repParent(parentNode);
    fprintf(stderr, "simpleOptimizer - Merging node %d with %d\n",
            toBeMergedNode->id(), parentNode->id());

    // If the toBeMergedNode is not the only offset (for dests only)
    // then add a PARENT_COPY edge from parentNode to toBeMergedNode
    if (!toBeMergedNode->isOnlyOffset()) {
      FmtAssert(toBeMergedNode != srcNode, (""));
      bool added = false;
      ConstraintGraphEdge *newEdge = 
         ConstraintGraph::addEdge(parentNode, toBeMergedNode, ETYPE_COPY,
                                  CQ_HZ, 0, added, CG_EDGE_PARENT_COPY);
      FmtAssert(added, ("merge: failed to add special copy edge"));
    }
    if (toBeMergedNode->stInfo()->checkFlags(CG_ST_FLAGS_PREG) &&
        toBeMergedNode->canBeDeleted())
      _toBeDeletedNodes.insert(toBeMergedNode->id());
  }

  hash_set<CGNodeId> areParents;
  // Adjust parents, so that nodes who have deleted nodes as their parents
  // point to the parent of the deleted nodes, which should not be marked 
  // deleted
  for (CGNodeToIdMapIterator iter = ConstraintGraph::lBegin();
       iter != ConstraintGraph::lEnd(); iter++) {
    ConstraintGraphNode *n = iter->first;
    n->findRep();
    FmtAssert(_toBeDeletedNodes.find(n->parent()->id()) == 
              _toBeDeletedNodes.end(), 
              ("Parent %d of node: %d marked deleted!\n", n->parent()->id(),
                                                          n->id()));
    // Record all nodes that are parents of another non-deleted node
    if (n->parent() != n && 
        _toBeDeletedNodes.find(n->id()) == _toBeDeletedNodes.end())
      areParents.insert(n->parent()->id());
  }

  // Iterate until there are no more deleted nodes
  bool change = true;
  while (change) {
    change = false;
    for (CGNodeToIdMapIterator iter = ConstraintGraph::lBegin();
         iter != ConstraintGraph::lEnd(); iter++) {
      ConstraintGraphNode *destNode = iter->first->parent();
      // If the destNode is a parent of someone, ignore
      if (areParents.find(destNode->id()) != areParents.end())
        continue;
      // If destNode is marked deleted ignore
      if (_toBeDeletedNodes.find(destNode->id()) != _toBeDeletedNodes.end())
        continue;
      // If node is not a preg that can be deleted, ignore
      if (!(destNode->stInfo()->checkFlags(CG_ST_FLAGS_PREG) &&
            destNode->canBeDeleted()))
        continue;
      // Ignore if there are any outgoing edges
      if (!destNode->outLoadStoreEdges().empty() ||
          !destNode->outCopySkewEdges().empty())
        continue;
    }
  }

  fprintf(stderr, "Done optimizing ConstraintGraphs\n");
}
