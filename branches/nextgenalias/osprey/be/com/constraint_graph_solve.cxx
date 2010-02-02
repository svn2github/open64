
#include "constraint_graph.h"

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

  WorkList &copySkewList = edgeDelta().copySkewList();
  WorkList &loadStoreList = edgeDelta().loadStoreList();

  while (!copySkewList.empty()) {
    ConstraintGraphEdge *edge = copySkewList.pop();
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
    if (edge->edgeType() == ETYPE_ASSIGN_DEREF)
      processAssignDeref(edge);
    else {
      FmtAssert(edge->edgeType() == ETYPE_DEREF_ASSIGN,
          ("CosntraintGraph::solveConstraints: type %d edge in"
              "load/store worklist",edge->edgeType()));
      processDerefAssign(edge);
    }
  }
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
void
ConstraintGraph::processAssign(const ConstraintGraphEdge *edge)
{
  UINT32 assignSize = edge->size();
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
  StInfo *dstStInfo = stInfo(dst->st_idx());

  SparseBitSet<CGNodeId> gblAddr(_memPool);
  SparseBitSet<CGNodeId> hzAddr(_memPool);
  SparseBitSet<CGNodeId> dnAddr(_memPool);
  if (src->offset() != -1) {
    // Collect the points-to set that is to be propagated across this
    // assignment edge.  We need to union across all nodes such that
    // src->offset() <= x <= src->offset() + assignSize();
    UINT32 endOffset = src->offset() + assignSize;
    ConstraintGraphNode *cur = src;
    while (cur != NULL && cur->offset() < endOffset) {
      gblAddr.setUnion(cur->pointsToGBL());
      hzAddr.setUnion(cur->pointsToHZ());
      dnAddr.setUnion(cur->pointsToDN());
      cur = cur->nextOffset();
    }
  }
  else {
     gblAddr.setUnion(src->pointsToGBL());
     hzAddr.setUnion(src->pointsToHZ());
     dnAddr.setUnion(src->pointsToDN());
  }

  // Now we deposit the collected points-to set(s) into the
  // destination node(s).
  if (dst->offset() != -1) {
    UINT32 endOffset = dst->offset() + assignSize;
    ConstraintGraphNode *cur = dst;
    while (cur != NULL && cur->offset() < endOffset) {
      bool change = false;
      change |= cur->pointsToGBL().setUnion(gblAddr);
      change |= cur->pointsToHZ().setUnion(hzAddr);
      change |= cur->pointsToDN().setUnion(dnAddr);
      if (change)
        addEdgesToWorkList(cur); // Mark outgoing edges as to be updated....
      cur = cur->nextOffset();
    }
    ConstraintGraphNode *first = dstStInfo->firstOffset();
    if (first->offset() == -1) {
      bool change = false;
      change |= first->pointsToGBL().setUnion(gblAddr);
      change |= first->pointsToHZ().setUnion(hzAddr);
      change |= first->pointsToDN().setUnion(dnAddr);
      if (change)
        addEdgesToWorkList(first); // Mark outgoing edges as to be updated....
    }
  }
  else {
    // When the target offset is -1, we must deposit the points-to
    // set(s) into the current dst node and, in addition, every known
    // offset from this symbol.
    bool change = false;
    change = dst->pointsToGBL().setUnion(gblAddr);
    change = dst->pointsToHZ().setUnion(hzAddr);
    change = dst->pointsToDN().setUnion(dnAddr);
    if (change)
      addEdgesToWorkList(dst);  // Mark outgoing edges as to be updated...

   ConstraintGraphNode *first = dstStInfo->firstOffset();
   FmtAssert(first->offset() == -1,("Expected first known offset to be -1"));
   ConstraintGraphNode *cur = first->nextOffset();
   while (cur != NULL) {
     bool change = false;
     change |= cur->pointsToGBL().setUnion(gblAddr);
     change |= cur->pointsToHZ().setUnion(hzAddr);
     change |= cur->pointsToDN().setUnion(dnAddr);
     if (change)
       addEdgesToWorkList(cur); // Mark outgoing edges as to be updated....
     cur = cur->nextOffset();
   }
  }
}

void
ConstraintGraph::processSkew(const ConstraintGraphEdge *edge)
{
  FmtAssert(FALSE,("ConstraintGraph::processSkew: Not yet implemented..."));
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
  for (SparseBitSet<CGNodeId>::SparseBitSetIterator iter(&ptSet,0);
         iter != 0; iter++)
    {
      CGNodeId nodeId = *iter;
      ConstraintGraphNode *node = cgNode(nodeId);
      // Create the new assignment edge.  If it turns out the edge
      // does already exist nothing further is required.  Otherwise,
      // we add the new edge to the worklist.
      ConstraintGraphEdge *newEdge;
      bool added = false;
      newEdge = addEdge(etype == ETYPE_ASSIGN_DEREF ? node : src,
                        etype == ETYPE_DEREF_ASSIGN ? dst : node,
                        ETYPE_ASSIGN,qual,size,added);
      if (added)
        edgeDelta().add(newEdge);
    }
}

void
ConstraintGraph::processAssignDeref(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
  UINT32 sz = edge->size();
  // Add necessary assignment edges for each points-to set
  addCopiesForLoadStore(src,dst,ETYPE_ASSIGN_DEREF,CQ_GBL,sz,src->pointsToGBL());
  addCopiesForLoadStore(src,dst,ETYPE_ASSIGN_DEREF,CQ_DN,sz,src->pointsToDN());
  addCopiesForLoadStore(src,dst,ETYPE_ASSIGN_DEREF,CQ_HZ,sz,src->pointsToHZ());
}

void
ConstraintGraph::processDerefAssign(const ConstraintGraphEdge *edge)
{
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
  UINT32 sz = edge->size();
  // Add necessary assignment edges for each points-to set
  addCopiesForLoadStore(src,dst,ETYPE_DEREF_ASSIGN,CQ_GBL,sz,src->pointsToGBL());
  addCopiesForLoadStore(src,dst,ETYPE_DEREF_ASSIGN,CQ_DN,sz,src->pointsToDN());
  addCopiesForLoadStore(src,dst,ETYPE_DEREF_ASSIGN,CQ_HZ,sz,src->pointsToHZ());
}
