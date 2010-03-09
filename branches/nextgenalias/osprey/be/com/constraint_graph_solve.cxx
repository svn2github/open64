
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
    for ( PointsToIterator pti(rep); pti != 0; ++pti ) {
      PointsTo tmp(_memPool);
      PointsTo &ptsTo = *pti;
      _graph->adjustPointsToForKCycle(newKVal,ptsTo,tmp);
      ptsTo.clear();
      ptsTo.setUnion(tmp);
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

// Core method to solve a constraint graph assuming that the
// boundary conditions for the solution are provided by 'delta'
// This method assumes that the constraint graph is acyclic.
bool
ConstraintGraphSolve::solveConstraints()
{
  // TODO: Perform cycle detection, here
  SCCDetection sccs(_cg,_memPool);

  EdgeWorkList &copySkewList = edgeDelta().copySkewList();
  EdgeWorkList &loadStoreList = edgeDelta().loadStoreList();

  UINT32 iterCount = 0;
  bool trace = Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG);

  do {
    // Here we walk the constraint graph to locate any SCCs and
    // collapse them to ensure that the solver will converge.
    // TODO:  What is the scope of analyis during IPA, bottom-up walk?
    sccs.findAndUnify();

    // TODO: We need to seed the the solver with the approprate
    // edges, either based on the SCCDetection traversal or the
    // provided edge delta.
    if (copySkewList.empty()) {
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

  postProcessPointsTo();
  return true;
}

bool
ConstraintGraph::nonIPASolver()
{
  // Here we solve the constraint graph for the current procedure
  EdgeDelta delta;
  ConstraintGraphSolve solver(delta,this,_memPool);
  if (!solver.solveConstraints())
    return false;

  // Now we perform escape analysis to in order to augment the
  // the points-to sets of "incomplete" symbols to facilitate
  // comparison of their points-to sets with symbols for which
  // we have "complete" information.
  EscapeAnalysis escAnal(this,false,_memPool);
  escAnal.perform();

  resetBlackHoleId();
  ConstraintGraphNode *bhNode = NULL;
  for (CGIdToNodeMapIterator iter = begin(); iter != end(); iter++) {
    ConstraintGraphNode *node = iter->second;
    if (escAnal.escapeStFlags(node) & CG_ST_FLAGS_ESCALL) {
      if (!bhNode) {
        // The "black hole" is meant to represent all memory that is possibly
        // accessed by symbols that have references outside the scope of the
        // current procedure.
        bhNode = cgNode(blackHoleId());
      }
      node->addPointsTo(bhNode,CQ_GBL);
    }
  }
  return true;
}

void
ConstraintGraphSolve::postProcessPointsTo()
{
  PointsTo adjustSet;
  for (CGIdToNodeMapIterator iter = _cg->begin();
       iter != _cg->end(); iter++) {
    ConstraintGraphNode *node = iter->second;
    for ( PointsToIterator pti(node); pti != 0; ++pti ) {
      PointsTo &curSet = *pti;
      for (PointsTo::SparseBitSetIterator sbsi(&curSet,0); sbsi != 0; ++sbsi)
      {
        ConstraintGraphNode *node = _cg->cgNode(*sbsi);
        if (node->offset() == -1)
        {
          ConstraintGraphNode *cur = node->nextOffset();
          while (cur) {
            adjustSet.setBit(cur->id());
            cur = cur->nextOffset();
          }
        }
        else {
          UINT32 endOffset = node->offset() + node->maxAccessSize();
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

CGNodeId
ConstraintGraph::createBlackHole(void)
{
  ST *bhST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "cgBlackHole",
                                   CLASS_VAR, SCLASS_AUTO);
  ST_IDX bh_idx = ST_st_idx(bhST);
  ConstraintGraphNode *bhNode = getCGNode(bh_idx,0);
  _blackHoleId = bhNode->id();
  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
    fprintf(stderr, "Creating blackHole CGNodeId: %d\n", _blackHoleId);
  return _blackHoleId;
}

void
ConstraintGraphSolve::addEdgesToWorkList(ConstraintGraphNode *node)
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
    StInfo *dstStInfo = _cg->stInfo(dst->st_idx());
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
  StInfo *dstStInfo = _cg->stInfo(dst->st_idx());

  // Is this constraint context sensitive?
  bool cntxt = !_cg->stInfo(src->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);

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
          if (dstStOffset != -1) {
            INT32 dstOffset = dstStOffset + (cur->offset() - srcStOffset);
            // Creates node if necessary.
            dstNode = _cg->getCGNode(dst->st_idx(),dstOffset);
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
            _cg->adjustPointsToForKCycle(dstNode->inKCycle(),
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
          _cg->adjustPointsToForKCycle(dst->inKCycle(),*pti,tmp);
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
  bool cntxt = !_cg->stInfo(src->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    CGEdgeQual curQual = pti.qual();
    CGEdgeQual dstQual = qualMap(ETYPE_COPY/*COPY==SKEW*/,curQual,edgeQual,cntxt);
    if (dstQual != CQ_NONE) {
      PointsTo &srcPTS = *pti;
      PointsTo tmp;
      for (PointsTo::SparseBitSetIterator iter(&srcPTS,0); iter != 0; iter++)
      {
        CGNodeId nodeId = *iter;
        ConstraintGraphNode *node = _cg->cgNode(nodeId);
        StInfo *st = _cg->stInfo(node->st_idx());
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
          if (dst->inKCycle() < st->modulus())
            st->modulus(dst->inKCycle());
          newOffset = node->offset() + skew;
        }
        ConstraintGraphNode *skewNode = _cg->getCGNode(node->st_idx(),newOffset);
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
    ConstraintGraphNode *node = _cg->cgNode(nodeId);

    // The node we pull out of the points-to set may have been part of a
    // SCC and been merged with a representative node.  Here we make sure
    // that any edge we add targets only the representative
    ConstraintGraphNode *nodeRep = node->findRep();

    // Create the new assignment edge.  If it turns out the edge
    // does already exist nothing further is required.  Otherwise,
    // we add the new edge to the worklist.
    ConstraintGraphEdge *newEdge;
    bool added = false;
    newEdge = _cg->addEdge(etype == ETYPE_LOAD ? nodeRep : src,
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

  bool cntxt = !_cg->stInfo(src->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
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
      for (CGIdToNodeMapIterator iter = _cg->begin();
           iter != _cg->end(); iter++) {
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

  bool cntxt = !_cg->stInfo(dst->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT);
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

