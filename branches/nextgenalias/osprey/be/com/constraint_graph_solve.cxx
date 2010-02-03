
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

  WorkList &copySkewList = edgeDelta().copySkewList();
  WorkList &loadStoreList = edgeDelta().loadStoreList();

  fprintf(stderr,"\nSeeding solver:\n");
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
          iter != _cgNodeToIdMap.end(); iter++) {
    ConstraintGraphNode *node = iter->first;
    fprintf(stderr,"Node %d\n",node->id());
    fprintf(stderr," Copy Edges:\n");
    for (CGEdgeSetIterator iter = node->outCopySkewEdges().begin();
        iter != node->outCopySkewEdges().end();
        iter++) {
      ConstraintGraphEdge *edge = *iter;
      fprintf(stderr,"  Adding edge:");
      edge->print(stderr);
      fprintf(stderr,"\n");
      copySkewList.push(edge);
    }
    fprintf(stderr," Ld/St Edges:\n");
    for (CGEdgeSetIterator iter = node->outLoadStoreEdges().begin();
        iter != node->outLoadStoreEdges().end();
        iter++) {
      ConstraintGraphEdge *edge = *iter;
      fprintf(stderr,"  Adding edge:");
      edge->print(stderr);
      fprintf(stderr,"\n");
      loadStoreList.push(edge);
    }
  }

  INT32 iterCount = 0;
  do {
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
  UINT32 assignSize = edge->size();
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
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
          change |= dstNode->pointsTo(dstQual).setUnion(cur->pointsTo(srcQual));
          if (change)
            addEdgesToWorkList(dstNode);
          cur = cur->nextOffset();
        }
        if (dstStOffset == -1) {
          ConstraintGraphNode *cur1 = dst->nextOffset();
          while (cur1 != NULL) {
            bool change = false;
            change |= cur1->pointsTo(dstQual).setUnion(sum);
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
        change |= dst->pointsTo(dstQual).setUnion(*pti);
        if (dstStOffset == -1) {
          ConstraintGraphNode *cur = dst->nextOffset();
          while (cur != NULL) {
            bool change = false;
            change |= cur->pointsTo(dstQual).setUnion(*pti);
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
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
  UINT32 skew = edge->skew();
  CGEdgeQual edgeQual = edge->edgeQual();

  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    CGEdgeQual curQual = pti.qual();
    CGEdgeQual dstQual = qualMap(ETYPE_ASSIGN/*ASSIGN==SKEW*/,curQual,edgeQual);
    if (dstQual != CQ_NONE) {
      PointsTo &dstPTS = dst->pointsTo(dstQual);
      PointsTo &srcPTS = *pti;
      for (PointsTo::SparseBitSetIterator iter(&srcPTS,0); iter != 0; iter++)
      {
        CGNodeId nodeId = *iter;
        ConstraintGraphNode *node = cgNode(nodeId);
        StInfo *st = stInfo(node->st_idx());
        INT32 newOffset = node->offset() + skew;
        if (newOffset < st->varSize()) {
          ConstraintGraphNode *skewNode = getCGNode(node->st_idx(),newOffset);
          dstPTS.setBit(skewNode->id());
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
        etype == ETYPE_ASSIGN_DEREF ? dst : node,
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
  ConstraintGraphNode *src = cgNode(edge->srcId());
  ConstraintGraphNode *dst = cgNode(edge->destId());
  UINT32 sz = edge->size();
  CGEdgeQual edgeQual = edge->edgeQual();

  for ( PointsToIterator pti(dst); pti != 0; ++pti ) {
     CGEdgeQual curQual = pti.qual();
     CGEdgeQual cpQual = qualMap(ETYPE_DEREF_ASSIGN,curQual,edgeQual);
     if (cpQual != CQ_NONE)
       addCopiesForLoadStore(src,dst,ETYPE_DEREF_ASSIGN,cpQual,sz,*pti);
  }
}
