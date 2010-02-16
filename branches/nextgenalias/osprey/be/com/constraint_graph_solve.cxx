
#include <stack>
#include "constraint_graph.h"

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
    _D(NULL),
    _S(CGNodeDeque(mpool)),
    _T(CGNodeDeque(mpool))
  {}

  ~SCCDetection() {}

  // Detect and unify all SCCS within the constraint graph.
  void findAndUnify();

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
  void unify(NodeToKValMap&);
  void pointsToAdjust(NodeToKValMap&);

  ConstraintGraph       *_graph;
  MEM_POOL              *_memPool;
  UINT32                 _I;
  UINT32                *_D;
  CGNodeStack            _S;
  CGNodeStack            _T;
};

void
SCCDetection::visit(ConstraintGraphNode *v)
{
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
  for (CGIdToNodeMapIterator iter = _graph->begin();
      iter != _graph->end(); iter++) {
    ConstraintGraphNode *node = iter->second;
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
        node->addFlags(CG_NODE_FLAGS_VISITED);
        CGEdgeSet &outCopyEdges = node->outCopySkewEdges();
        CGEdgeSetIterator outCopyIter = outCopyEdges.begin();
        FmtAssert(outCopyIter == outCopyEdges.end(),
            ("Found copy edge: expect node with representative "
                "to be a leaf node.\n"));
        CGEdgeSet &outLdEdges = node->outLoadStoreEdges();
        CGEdgeSetIterator outLdIter = outLdEdges.begin();
        FmtAssert(outLdIter == outLdEdges.end(),
            ("Found copy edge: expect node with representative "
                "to be a leaf node.\n"));
      }
    }
  }
}

void
SCCDetection::unify(NodeToKValMap &nodeToKValMap)
{
  // Unify the nodes in an SCC into a single node
  for (CGIdToNodeMapIterator iter = _graph->begin();
      iter != _graph->end(); iter++) {
    ConstraintGraphNode *node = iter->second;
    FmtAssert(node->checkFlags(CG_NODE_FLAGS_VISITED),
        ("Node %d unvisited during SCC detection\n",node->id()));
    node->clearFlags(CG_NODE_FLAGS_VISITED|CG_NODE_FLAGS_SCCMEMBER);
    if (node->repParent() && node->repParent() != node) {
      ConstraintGraphEdge dummy(node->repParent(),node,ETYPE_COPY,CQ_HZ,0);
      if (!node->inEdge(&dummy)) {
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
      }
    }
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
    if (newKVal >= Pointer_Size /*config_targ.h*/) {
      // If the resulting K value is still larger than the size
      // of a pointer, then we simply adjust the modulus of the
      // underlying symbol to the min(rep->inKCycle(),modulus)
      for ( PointsToIterator pti(rep); pti != 0; ++pti ) {
        PointsTo &ptsTo = *pti;
        for (PointsTo::SparseBitSetIterator iter(&ptsTo,0); iter != 0; iter++)
        {
          CGNodeId nodeId = *iter;
          ConstraintGraphNode *node = _graph->cgNode(nodeId);
          StInfo *st = _graph->stInfo(node->st_idx());
          if (newKVal < st->modulus())
            st->modulus(newKVal);
        }
      }
    }
    else {
      // If the resulting K value is now less than the size of
      // a pointer, then we adjust the offset of each symbol in
      // the merge points-to set to offset == -1.
      for ( PointsToIterator pti(rep); pti != 0; ++pti ) {
        PointsTo &ptsTo = *pti;
        SparseBitSet<CGNodeId> tmp(_memPool);
        for (PointsTo::SparseBitSetIterator iter(&ptsTo,0); iter != 0; iter++)
        {
          CGNodeId nodeId = *iter;
          ConstraintGraphNode *node = _graph->cgNode(nodeId);
          if (node->offset() != -1)
            node = _graph->getCGNode(node->st_idx(),-1);
          tmp.setBit(node->id());
        }
        ptsTo.clear();
        ptsTo.setUnion(tmp);
      }
    }
  }
}

void
SCCDetection::findAndUnify()
{
  // Reset state
  _I = 0;
  _D = CXX_NEW_ARRAY(UINT32,_graph->totalCGNodes(),_memPool);
  while (!_S.empty()) _S.pop();
  while (!_T.empty()) _T.pop();

  // Mapping of representative node points to the original K value
  // used to determine the updated needed to the merged points-to sets.
  NodeToKValMap nodeToKValMap;

  find();
  unify(nodeToKValMap);
  pointsToAdjust(nodeToKValMap);

  CXX_DELETE_ARRAY(_D,_memPool);
}

void
ConstraintGraph::WorkList::push(ConstraintGraphEdge *e)
{
  if (!e->checkFlags(CG_EDGE_IN_WORKLIST)) {
    e->addFlags(CG_EDGE_IN_WORKLIST);
    _edgeList.push_back(e);
  }
}

ConstraintGraphEdge *
ConstraintGraph::WorkList::pop(void)
{
   ConstraintGraphEdge *e = _edgeList.front();
   _edgeList.pop_front();
   e->clearFlags(CG_EDGE_IN_WORKLIST);
   return e;
}

void
ConstraintGraph::EdgeDelta::add(ConstraintGraphEdge *e)
{
  if (e->edgeType() == ETYPE_COPY ||
      e->edgeType() == ETYPE_SKEW)
    copySkewList().push(e);
  else {
    FmtAssert(e->edgeType() == ETYPE_LOAD ||
              e->edgeType() == ETYPE_STORE,
              ("Unknown edgetype in ConstraintGraphDelta::add()"));
    loadStoreList().push(e);
  }
}

// Core method to solve a constraint graph assuming that the
// boundary conditions for the solution are provided by 'delta'
// This method assumes that the constraint graph is acyclic.
void
ConstraintGraph::solveConstraints()
{
  // TODO: Perform cycle detection, here
  SCCDetection sccs(this,_memPool);

  WorkList &copySkewList = edgeDelta().copySkewList();
  WorkList &loadStoreList = edgeDelta().loadStoreList();

  INT32 iterCount = 0;
  do {

    // Here we walk the constraint graph to locate any SCCs and
    // collapse them to ensure that the solver will converge.
    // TODO:  What is the scope of analyis during IPA, bottom-up walk?
    sccs.findAndUnify();

    // TODO: We need to seed the the solver with the approprate
    // edges, either based on the SCCDetection traversal or the
    // provided edge delta.
    if (copySkewList.empty()) {
      fprintf(stderr,"\nSeeding solver:\n");
      SCCDetection::CGNodeStack &stack = sccs.topoNodeStack();
      while (!stack.empty()) {
        ConstraintGraphNode *node = stack.top();
        stack.pop();
        fprintf(stderr,"Node %d\n",node->id());
        CGEdgeSetIterator iter = node->outCopySkewEdges().begin();
        if (iter != node->outCopySkewEdges().end()) {
          fprintf(stderr," Copy Edges:\n");
          for ( ; iter != node->outCopySkewEdges().end();
              iter++) {
            ConstraintGraphEdge *edge = *iter;
            fprintf(stderr,"  Adding edge:");
            edge->print(stderr);
            fprintf(stderr,"\n");
            copySkewList.push(edge);
          }
        }
        CGEdgeSetIterator ldIter = node->outLoadStoreEdges().begin();
        if (ldIter != node->outLoadStoreEdges().end()){
          fprintf(stderr," Ld/St Edges:\n");
          for ( ; ldIter != node->outLoadStoreEdges().end();
              ldIter++) {
            ConstraintGraphEdge *edge = *ldIter;
            fprintf(stderr,"  Adding edge:");
            edge->print(stderr);
            fprintf(stderr,"\n");
            loadStoreList.push(edge);
          }
        }
      }
    }

    fprintf(stderr,"Solver Iteration %d\n",++iterCount);
    while (!copySkewList.empty()) {
      ConstraintGraphEdge *edge = copySkewList.pop();
      fprintf(stderr," Copy Edge:");
      edge->print(stderr);
      fprintf(stderr,"\n");
      if (edge->edgeType() == ETYPE_COPY)
        processAssign(edge);
      else {
        FmtAssert(edge->edgeType() == ETYPE_SKEW,
            ("ConstraintGraph::solveConstraints: type %d edge in "
                "copy/skew worklist",edge->edgeType()));
        processSkew(edge);
      }
    }

    while (!loadStoreList.empty()) {
      ConstraintGraphEdge *edge = loadStoreList.pop();
      fprintf(stderr," Ld/St Edge:");
      edge->print(stderr);
      fprintf(stderr,"\n");
      if (edge->edgeType() == ETYPE_LOAD)
        processLoad(edge);
      else {
        FmtAssert(edge->edgeType() == ETYPE_STORE,
            ("ConstraintGraph::solveConstraints: type %d edge in"
                "load/store worklist",edge->edgeType()));
        processStore(edge);
      }
    }
  } while (!copySkewList.empty());

  computeCompleteness();
  postProcessPointsTo();
}

void
ConstraintGraph::postProcessPointsTo()
{
  PointsTo adjustSet;
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
       iter != _cgNodeToIdMap.end(); iter++) {
    ConstraintGraphNode *node = iter->first;
    for ( PointsToIterator pti(node); pti != 0; ++pti ) {
      PointsTo &curSet = *pti;
      for (PointsTo::SparseBitSetIterator iter(&curSet,0); iter != 0; ++iter)
      {
        ConstraintGraphNode *node = cgNode(*iter);
        if (node->offset() == -1)
        {
          ConstraintGraphNode *cur = node->nextOffset();
          while (cur) {
            adjustSet.setBit(cur->id());
            cur = cur->nextOffset();
          }
        }
        else {
          // Collect size of all outgoing edges
          UINT32 maxSize = 0;
          CGEdgeSetIterator iter = node->outCopySkewEdges().begin();
          for ( ; iter != node->outCopySkewEdges().end(); ++iter) {
            ConstraintGraphEdge *edge = *iter;
            if (edge->edgeType() == ETYPE_COPY )
              if (edge->size() > maxSize) maxSize = edge->size();
          }
          CGEdgeSetIterator ldIter = node->outLoadStoreEdges().begin();
          for ( ; ldIter != node->outLoadStoreEdges().end(); ++ldIter) {
            ConstraintGraphEdge *edge = *ldIter;
            if (edge->size() > maxSize) maxSize = edge->size();
          }
          UINT32 endOffset = node->offset() + maxSize;
          ConstraintGraphNode *cur = node->nextOffset();
          while (cur && cur->offset() < endOffset) {
            adjustSet.setBit(cur->id());
            cur = cur->nextOffset();
          }
          adjustSet.setBit(node->id());
        }
      }
      curSet.clear();
      curSet.setUnion(adjustSet);
      adjustSet.clear();
    }
  }
}

void
ConstraintGraph::computeCompleteness()
{
  fprintf(stderr,"Complete Analysis...\n");

  // First we collect some information for the current PU
  // constraint graph
  // 1) The local variables
  // 2) The union of points-to sets of all "global" nodes,
  //    where global is an:
  //    (a) CG_ST_FLAGS_GLOBAL
  //    (b) CG_NODE_FLAGS_ACTUAL_PARM (and call not resolved)
  //    (c) CG_NODE_FLAGS_FORMAL_RETURN (and return not resolved)
  //
  // Under non-ipa, any local variable not contained in the
  // above points-to set is marked as complete.
  PointsTo possiblyEscLocal;
  PointsTo escapedNodes;
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
      iter != _cgNodeToIdMap.end(); ++iter) {
    ConstraintGraphNode *node = iter->first;
    node->clearFlags(CG_NODE_FLAGS_COMPLETE);
    // Here we are collecting all address taken locals and
    // marking those that are not as 'complete'
    if (ST_sclass(&St_Table[node->st_idx()]) == SCLASS_AUTO) {
      if (node->checkFlags(CG_NODE_FLAGS_ADDR_TAKEN))  {
        possiblyEscLocal.setBit(node->id());
        fprintf(stderr,"  Found possible escape local: %d\n",node->id());
      }
    }

    // Here we are collecting the points to sets of all nodes
    // that have possibly escaped.
    // NOTE:  This code will need to be reworked for -ipa
    // to account for the fact that if we have resolved all
    // calls then the actual parm/formal return should be
    // resolved.  Similar changes related to globals.
    if (node->checkFlags(CG_NODE_FLAGS_ACTUAL_PARAM|
                         CG_NODE_FLAGS_FORMAL_RETURN) ||
        stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
      for ( PointsToIterator pti(node); pti != 0; ++pti ) {
        escapedNodes.setUnion(*pti);
      }

  }
  list<const ConstraintGraphEdge *> workList;
  typedef pair<UINT32,bool> VisitedEdge;
  VisitedEdge *visitedEdge = CXX_NEW_ARRAY(VisitedEdge,
      totalCGNodes(),
      _memPool);

  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
      iter != _cgNodeToIdMap.end(); ++iter) {
    ConstraintGraphNode *node = iter->first;
    CGEdgeSetIterator iter = node->inCopySkewEdges().begin();
    // Do we have a root?
    if (iter == node->inCopySkewEdges().end()) {
      if (ST_sclass(&St_Table[node->st_idx()]) == SCLASS_AUTO &&
          (!possiblyEscLocal.isSet(node->id()) ||
              escapedNodes.isSet(node->id()))) {
        node->addFlags(CG_NODE_FLAGS_COMPLETE);
        fprintf(stderr, "  Non-escape root %d: COMPLETE\n",node->id());
      }
      for (CGEdgeSetIterator outIter = node->outCopySkewEdges().begin();
          outIter != node->outCopySkewEdges().end(); ++outIter)
        workList.push_back(*outIter);
    }
  }

  while (!workList.empty()) {
    const ConstraintGraphEdge *edge = workList.front();
    workList.pop_front();

    ConstraintGraphNode *src = edge->srcNode();
    ConstraintGraphNode *dst = edge->destNode();

    fprintf(stderr," Edge:");
    edge->print(stderr);
    fprintf(stderr," <%d,%d>",visitedEdge[dst->id()].first,
        visitedEdge[dst->id()].second);
    fprintf(stderr,"\n");

    // Initialize state for a non-root node visited for the first time
    if (visitedEdge[dst->id()].first == 0) {
      UINT32 cnt = 0;
      for (CGEdgeSetIterator iter = dst->inCopySkewEdges().begin();
          iter != dst->inCopySkewEdges().end(); ++iter)
        cnt += 1;
      visitedEdge[dst->id()].first = cnt;
      if (src->checkFlags(CG_NODE_FLAGS_COMPLETE))
        visitedEdge[dst->id()].second = true;
    }
    // Now we actually decrement the counter to mark the current
    // edge as visited.  If all edges are visited (counter == 0),
    // and if all predecessors are complete we mark current node
    // as complete.
    if ((--visitedEdge[dst->id()].first) == 0) {
      if (visitedEdge[dst->id()].second &&
          !dst->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
        dst->addFlags(CG_NODE_FLAGS_COMPLETE);
        fprintf(stderr,"  Visited %d: COMPLETE\n",dst->id());
      }
      else
        fprintf(stderr,"  Visited %d: INCOMPLETE\n",dst->id());

      // Now that all predecessors are visited push all out
      // copy/skew edges onto the worklist
      for (CGEdgeSetIterator iter = dst->outCopySkewEdges().begin();
          iter != dst->outCopySkewEdges().end(); ++iter)
        workList.push_back(*iter);
    }
  }
  CXX_DELETE_ARRAY(visitedEdge,_memPool);
}

void
ConstraintGraph::addEdgesToWorkList(ConstraintGraphNode *node)
{
  // If this routine is being called, then the points-to set of
  // this node has been updated.  We need to add the following
  // edges to the work list for further processing:

  // 1) All outgoing copy/skew edges
  CGEdgeSet &outCopySkew = node->outCopySkewEdges();
  for (CGEdgeSetIterator iter = outCopySkew.begin();
       iter != outCopySkew.end();
       iter++) {
    edgeDelta().add(*iter);
  }

  // 2) All outgoing load (assign_deref) edges
  CGEdgeSet &outLoadStore = node->outLoadStoreEdges();
  for (CGEdgeSetIterator iter = outLoadStore.begin();
       iter != outLoadStore.end();
       iter++) {
    ConstraintGraphEdge *e = (*iter);
    if (e->edgeType() == ETYPE_LOAD)
      edgeDelta().add(e);
  }

  // 3) All incoming store (deref_assign) edges
  CGEdgeSet &inLoadStore = node->inLoadStoreEdges();
  for (CGEdgeSetIterator iter = inLoadStore.begin();
       iter != inLoadStore.end();
       iter++) {
    ConstraintGraphEdge *e = (*iter);
    if (e->edgeType() == ETYPE_STORE)
      edgeDelta().add(e);
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
ConstraintGraph::processAssign(const ConstraintGraphEdge *edge)
{
  // If the source of the copy edge has an unknown
  // points-to set, then we simply need to propagate
  // the unknown flag to the destination and we are
  // done. NOTE: Unfortunately we still need to propagate
  // the points-to sets across the edge to ensure we
  // handle unknown load/store edges correctly.
  if (edge->srcNode()->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    edge->destNode()->addFlags(CG_NODE_FLAGS_UNKNOWN);

  // If the copy edge is a copy from parent to child, we
  // simply mark the child, i.e. the dest, as needing
  // processing.
  if (edge->checkFlags(CG_EDGE_PARENT_COPY)) {
    addEdgesToWorkList(edge->destNode());
    return;
  }

  UINT32 assignSize = edge->size();
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  StInfo *dstStInfo = stInfo(dst->st_idx());

  INT32 dstStOffset = dst->offset();
  INT32 srcStOffset = src->offset();
  INT32 curEndOffset = src->offset() + assignSize;
  // Case 1 & 2
  if (srcStOffset != -1) {
    CGEdgeQual edgeQual = edge->edgeQual();
    for ( PointsToIterator pti(src); pti != 0; ++pti ) {
      CGEdgeQual srcQual = pti.qual();
      CGEdgeQual dstQual = qualMap(ETYPE_COPY,srcQual,edgeQual);
      if (dstQual != CQ_NONE) {
        ConstraintGraphNode *cur = src;
        SparseBitSet<CGNodeId> sum(_memPool);
        while (cur != NULL && cur->offset() < curEndOffset) {
          ConstraintGraphNode *dstNode;
          if (dstStOffset != -1) {
            INT32 dstOffset = dstStOffset + (cur->offset() - srcStOffset);
            // Creates node if necessary.
            dstNode = getCGNode(dst->st_idx(),dstOffset);
          }
          else {
            dstNode = dst;
            sum.setUnion(cur->pointsTo(srcQual));
          }
          bool change = false;
          change |= dstNode->unionPointsTo(cur->pointsTo(srcQual), dstQual);
          if (change)
            addEdgesToWorkList(dstNode);
          cur = cur->nextOffset();
        }
        if (dstStOffset == -1) {
          ConstraintGraphNode *cur1 = dst->nextOffset();
          while (cur1 != NULL) {
            bool change = false;
            change |= cur1->unionPointsTo(sum, dstQual);
            if (change)
              addEdgesToWorkList(cur1); // Mark outgoing edges as to be updated....
            cur1 = cur1->nextOffset();
          }
        }
        // We need to make sure that we mark any previous offsets, i.e.
        // offsets < dstStOffset, that have references covering dstStOffset
        // as needing to be reprocessed.
        else {
          ConstraintGraphNode *cur2 = dstStInfo->firstOffset();
          if (cur2->offset() == -1)
            cur2 = cur2->nextOffset();
          while (cur2 != NULL) {
            cur2 = cur2->nextOffset();
          }
        }
      }
    }
  }
  // Case 3 & 4
  else {
    bool change = false;
    CGEdgeQual edgeQual = edge->edgeQual();
    for ( PointsToIterator pti(src); pti != 0; ++pti ) {
      CGEdgeQual srcQual = pti.qual();
      CGEdgeQual dstQual = qualMap(ETYPE_COPY,srcQual,edgeQual);
      if (dstQual != CQ_NONE) {
        change |= dst->unionPointsTo(*pti, dstQual);
        if (dstStOffset == -1) {
          ConstraintGraphNode *cur = dst->nextOffset();
          while (cur != NULL) {
            bool change = false;
            change |= cur->unionPointsTo(*pti, dstQual);
            if (change)
              addEdgesToWorkList(cur); // Mark outgoing edges as to be updated....
            cur = cur->nextOffset();
          }
        }
      }
    }
    if (change)
      addEdgesToWorkList(dst);

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
ConstraintGraph::processSkew(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();

  // If the source of the skew edge has an unknown
  // points-to set, then we simply need to propagate
  // the unknown flag to the destination and we are
  // done. NOTE: Unfortunately we still need to propagate
  // the points-to sets across the edge to ensure we
  // handle unknown load/store edges correctly.
  if (edge->srcNode()->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    edge->destNode()->addFlags(CG_NODE_FLAGS_UNKNOWN);

  UINT32 skew = edge->skew();
  CGEdgeQual edgeQual = edge->edgeQual();
  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    CGEdgeQual curQual = pti.qual();
    CGEdgeQual dstQual = qualMap(ETYPE_COPY/*ASSIGN==SKEW*/,curQual,edgeQual);
    if (dstQual != CQ_NONE) {
      PointsTo &srcPTS = *pti;
      for (PointsTo::SparseBitSetIterator iter(&srcPTS,0); iter != 0; iter++)
      {
        CGNodeId nodeId = *iter;
        ConstraintGraphNode *node = cgNode(nodeId);
        StInfo *st = stInfo(node->st_idx());
        INT32 newOffset = node->offset() + skew;
        if (newOffset < st->varSize()) {
          ConstraintGraphNode *skewNode = getCGNode(node->st_idx(),newOffset);
          dst->addPointsTo(skewNode, dstQual);
        }
      }
    }
  }
}

void
ConstraintGraph::addCopiesForLoadStore(ConstraintGraphNode *src,
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
    ConstraintGraphNode *node = cgNode(nodeId);

    // Create the new assignment edge.  If it turns out the edge
    // does already exist nothing further is required.  Otherwise,
    // we add the new edge to the worklist.
    ConstraintGraphEdge *newEdge;
    bool added = false;
    newEdge = addEdge(etype == ETYPE_LOAD ? node : src,
        etype == ETYPE_LOAD ? dst : node,
            ETYPE_COPY,qual,size,added);
    if (added)
      edgeDelta().add(newEdge);
  }
}

void
ConstraintGraph::processLoad(const ConstraintGraphEdge *edge)
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
  if (src->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    dst->addFlags(CG_NODE_FLAGS_UNKNOWN);

  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_LOAD,curQual,edgeQual);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_LOAD,cpQual,sz,*pti);
  }
}

void
ConstraintGraph::processStore(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  // If the target of the edge is unknown, that means that
  // the node may point to symbols that are not present in
  // the points-to set.  Since we process a store edge by
  // adding copy edges from the source to each element in
  // the points-to set of the destination, the symbols in
  // the source points-to set are now pointed to by unknown
  // symbols.  For this reason we must mark them as unknown.
  // NOTE: If the source is unknown this will be handled when
  // the new copy edges are processed.
  if (dst->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    for (PointsToIterator pti(src); pti != 0; ++pti)
      for (PointsTo::iterator iter(&(*pti),0); iter != 0; iter++)
        cgNode(*iter)->addFlags(CG_NODE_FLAGS_UNKNOWN);
  }

  for ( PointsToIterator pti(dst); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_STORE,curQual,edgeQual);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_STORE,cpQual,sz,*pti);
  }
}
