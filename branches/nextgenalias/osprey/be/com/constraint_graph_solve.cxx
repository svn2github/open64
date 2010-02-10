
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
  for (CGNodeToIdMapIterator iter = _graph->begin();
      iter != _graph->end(); iter++) {
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
  for (CGNodeToIdMapIterator iter = _graph->begin();
      iter != _graph->end(); iter++) {
    ConstraintGraphNode *node = iter->first;
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
  if (e->edgeType() == ETYPE_ASSIGN ||
      e->edgeType() == ETYPE_SKEW)
    copySkewList().push(e);
  else {
    FmtAssert(e->edgeType() == ETYPE_ASSIGN_DEREF ||
              e->edgeType() == ETYPE_DEREF_ASSIGN,
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
      if (edge->edgeType() == ETYPE_ASSIGN)
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
      if (edge->edgeType() == ETYPE_ASSIGN_DEREF)
        processAssignDeref(edge);
      else {
        FmtAssert(edge->edgeType() == ETYPE_DEREF_ASSIGN,
            ("ConstraintGraph::solveConstraints: type %d edge in"
                "load/store worklist",edge->edgeType()));
        processDerefAssign(edge);
      }
    }
  } while (!copySkewList.empty());
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
    if (e->edgeType() == ETYPE_ASSIGN_DEREF)
      edgeDelta().add(e);
  }

  // 3) All incoming store (deref_assign) edges
  CGEdgeSet &inLoadStore = node->inLoadStoreEdges();
  for (CGEdgeSetIterator iter = inLoadStore.begin();
       iter != inLoadStore.end();
       iter++) {
    ConstraintGraphEdge *e = (*iter);
    if (e->edgeType() == ETYPE_DEREF_ASSIGN)
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
  // If the copy edge is a copy from parent to child, we
  // simply mark the child, i.e. the dest, as needing
  // processing.
  if (edge->checkFlags(CG_EDGE_PARENT_COPY))
    addEdgesToWorkList(edge->destNode());

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
      CGEdgeQual dstQual = qualMap(ETYPE_ASSIGN,srcQual,edgeQual);
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
      CGEdgeQual dstQual = qualMap(ETYPE_ASSIGN,srcQual,edgeQual);
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
  UINT32 skew = edge->skew();
  CGEdgeQual edgeQual = edge->edgeQual();

  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    CGEdgeQual curQual = pti.qual();
    CGEdgeQual dstQual = qualMap(ETYPE_ASSIGN/*ASSIGN==SKEW*/,curQual,edgeQual);
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
          dst->addPointsTo(skewNode->id(), dstQual);
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
  FmtAssert(etype == ETYPE_ASSIGN_DEREF || etype == ETYPE_DEREF_ASSIGN,
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
    newEdge = addEdge(etype == ETYPE_ASSIGN_DEREF ? node : src,
        etype == ETYPE_ASSIGN_DEREF ? dst : node,
            ETYPE_ASSIGN,qual,size,added);
    if (added)
      edgeDelta().add(newEdge);
  }
}

void
ConstraintGraph::processAssignDeref(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_ASSIGN_DEREF,curQual,edgeQual);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_ASSIGN_DEREF,cpQual,sz,*pti);
  }
}

void
ConstraintGraph::processDerefAssign(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = edge->srcNode();
  ConstraintGraphNode *dst = edge->destNode();
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  for ( PointsToIterator pti(dst); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_DEREF_ASSIGN,curQual,edgeQual);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_DEREF_ASSIGN,cpQual,sz,*pti);
  }
}
