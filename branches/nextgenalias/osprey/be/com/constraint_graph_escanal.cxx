/*
 * constraint_graph_escanal.cxx
 *
 *  Created on: Feb 24, 2010
 *      Author: hank
 */

#include "constraint_graph_escanal.h"
#include "opt_defs.h"
#include "tracing.h"

static PointsTo emptyPointsToSet;

void
EscapeAnalysis::printStFlags(UINT32 flags) const
{
  fprintf(stderr,"[");
  if (flags & CG_ST_FLAGS_HOLDING)
    fprintf(stderr," HOLDING");
  if (flags & CG_ST_FLAGS_HOLDING_ESC)
    fprintf(stderr," HOLDING_ESC");
  if (flags & CG_ST_FLAGS_OPAQUE)
    fprintf(stderr," OPAQUE");
  if (flags & CG_ST_FLAGS_PROPAGATES)
    fprintf(stderr," PROPAGATES");
  if (flags & CG_ST_FLAGS_PROPAGATES_RET)
    fprintf(stderr," PROPAGATES_RET");
  fprintf(stderr,"]");
}

UINT32
EscapeAnalysis::escapeStFlags(ConstraintGraphNode *node) const
{
  StTable::const_iterator iter;
  iter = _stTable.find(StTableKey(node->st_idx(),stOffset(node)));
  if (iter != _stTable.end())
    return iter->second;
  return 0;
}

UINT32
EscapeAnalysis::stOffset(const ConstraintGraphNode *node) const
{
  // pregs are special in that they all map to the same ST_IDX,
  // but we must treat each offset as a distinct symbol
  UINT32 offset = 0;
  if (ST_sclass(&St_Table[node->st_idx()]) == SCLASS_REG)
    offset = node->offset();
  return offset;
}

UINT32
EscapeAnalysis::findStFlags(ConstraintGraphNode *node)
{
  UINT32 &stFlags = _stTable[StTableKey(node->st_idx(),stOffset(node))];
  if (!(stFlags & CG_ST_FLAGS_CACHE)) {
    stFlags |= _graph->stInfo(node->st_idx())->flags();
    stFlags |= CG_ST_FLAGS_CACHE;
  }
  return stFlags;
}

void
EscapeAnalysis::addStFlags(ConstraintGraphNode *node, UINT32 flags)
{
  UINT32 &stFlags = _stTable[StTableKey(node->st_idx(),stOffset(node))];
  if (!(stFlags & CG_ST_FLAGS_CACHE)) {
    stFlags |= _graph->stInfo(node->st_idx())->flags();
    stFlags |= CG_ST_FLAGS_CACHE;
  }
  stFlags |= flags;
}

void
EscapeAnalysis::addStToWorkList(ConstraintGraphNode *node)
{
  StInfo *stInfo = _graph->stInfo(node->st_idx());
  ConstraintGraphNode *cur = stInfo->firstOffset() ? stInfo->firstOffset() : node;
  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"ESCANAL: adding node(s) to worklist- ");
    printStFlags(findStFlags(node));
    fprintf(stderr,"\n");
  }
  while (cur) {
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      fprintf(stderr, "ESCANAL:   node %d\n",node->id());
    _workList.push(cur);
    cur = cur->nextOffset();
  }
}

PointsTo *
EscapeAnalysis::reversePointsTo(CGNodeId id)
{
  hash_map<CGNodeId,PointsTo *>::iterator iter =
      _revPtsTable.find(id);
  return (iter != _revPtsTable.end()) ? iter->second : NULL;
}

void
EscapeAnalysis::computeReversePointsTo()
{
  for (CGIdToNodeMapIterator iter = _graph->begin();
      iter != _graph->end(); ++iter) {
    ConstraintGraphNode *node = iter->second;
    for (PointsToIterator pti(node); pti != 0; ++pti) {
      PointsTo &pts = *pti;
      for (PointsTo::SparseBitSetIterator iter(&pts,0); iter != 0; ++iter) {
        CGNodeId cgNodeId = *iter;
        PointsTo *revPtsTo = reversePointsTo(cgNodeId);
        if (!revPtsTo) {
          revPtsTo = CXX_NEW(PointsTo,_memPool);
          _revPtsTable[cgNodeId] = revPtsTo;
        }
        revPtsTo->setBit(node->id());
      }
    }
  }
}

EscapeAnalysis::~EscapeAnalysis()
{
  hash_map<CGNodeId,PointsTo *>::iterator iter = _revPtsTable.begin();
  for (; iter != _revPtsTable.end(); ++iter)
    CXX_DELETE(iter->second,_memPool);
}

bool
EscapeAnalysis::observed(ConstraintGraphNode *node)
{
  return !node->pointsTo(CQ_DN).isEmpty();
}

void
EscapeAnalysis::newContEscapeNode(ConstraintGraphNode *node, UINT32 flags)
{
  if (node->constraintGraph() != _graph)
    return;

  UINT32 stFlags = findStFlags(node);
  if (_ipaMode &&
      !(stFlags & CG_NODE_FLAGS_FORMAL_PARAM) &&
      !observed(node))
    return;

  if (flags & CG_ST_FLAGS_LCONT_ESC) {
    /* Globals are never marked for local summarization */
    if (stFlags & CG_ST_FLAGS_LCONT_ESC ||
        (_ipaMode &&
         (stFlags & (CG_ST_FLAGS_GLOBAL|CG_ST_FLAGS_NOCNTXT))))
      return;

    addStFlags(node,CG_ST_FLAGS_LCONT_ESC);
    addStToWorkList(node);
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      fprintf(stderr,"ESCANAL: ST_IDX %d marked holding\n",node->st_idx());
  }
}

void
EscapeAnalysis::newPropEscapeNode(ConstraintGraphNode *node, UINT32 flags)
{
  if (node->constraintGraph() != _graph)
    return;

  if (flags & CG_ST_FLAGS_LPROP_ESC) {
    UINT32 stFlags = findStFlags(node);
    /* Globals are never marked for local summarization */
     if (stFlags & CG_ST_FLAGS_LPROP_ESC ||
         (_ipaMode &&
          (stFlags & (CG_ST_FLAGS_GLOBAL|CG_ST_FLAGS_NOCNTXT))))
       return;

     addStFlags(node,CG_ST_FLAGS_LPROP_ESC);
     addStToWorkList(node);
     if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
       fprintf(stderr,"ESCANAL: ST_IDX %d marked propagates\n",node->st_idx());
  }

  if (flags & CG_ST_FLAGS_RETPROP_ESC) {
    UINT32 stFlags = findStFlags(node);
    if (!(stFlags & CG_ST_FLAGS_RETPROP_ESC)) {
      addStFlags(node,CG_ST_FLAGS_RETPROP_ESC);
      addStToWorkList(node);
      if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
        fprintf(stderr,"ESCANAL: ST_IDX %d marked propagates_ret\n",node->st_idx());
    }
  }
}

void
EscapeAnalysis::newFullEscapeNode(ConstraintGraphNode *node, UINT32 flags)
{
  if (node->constraintGraph() != _graph)
      return;

  if (flags & (CG_ST_FLAGS_LFULL_ESC|CG_ST_FLAGS_LPROP_ESC)) {
    UINT32 stFlags = findStFlags(node);
    /* Globals are never marked for local summarization */
    if (stFlags & CG_ST_FLAGS_LFULL_ESC ||
        (_ipaMode &&
         (stFlags & (CG_ST_FLAGS_GLOBAL|CG_ST_FLAGS_NOCNTXT))))
      return;

#if 0
    /* If node is original to a function, it can only
         escape through its own parameters - technically
         a summary node is owned by the owner of its callsite
         that incorporated it ... however there is no access to
         this info at the moment */
    if (IPA_FLAG_ISCLR(node->flags, IPA_CG_NODE_FLAGS_SUMMARY))
    {
      IPA_symbol_info_t *sym;
      sym = IPA_symbol_find_by_id(info, node->data.var_id);
      if (sym->fninfo != param_fninfo)
      {
        /*debug_print("\nDOES NOT REALLY esclocal: ",node,NULL,"\n");*/
        return;
      }
    }
#endif
    addStFlags(node,CG_ST_FLAGS_LFULL_ESC|
                    CG_ST_FLAGS_LCONT_ESC|
                    CG_ST_FLAGS_LPROP_ESC);
    addStToWorkList(node);

    FmtAssert(!_ipaMode ||
              !_graph->stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL),(""));
    FmtAssert(!_ipaMode ||
              !_graph->stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT),(""));

    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
            fprintf(stderr,"ESCANAL: ST_IDX %d marked opaque\n",node->st_idx());

    if (stFlags & CG_ST_FLAGS_GLOBAL)
      _globalEscapeCnt++;
    else {
      _localEscapeCnt++;
      _graph->stInfo(node->st_idx())->addFlags(CG_ST_FLAGS_ESCLOCAL);
    }
  }


  /* Only addresses that are allowed to escape through returns
   *   can become fully escaping at a RETPROP node
   */
  if (flags & CG_ST_FLAGS_RETPROP_ESC) {
    UINT32 stFlags = findStFlags(node);
    if (!(stFlags & CG_ST_FLAGS_NOLOCAL) ||
        (_ipaMode &&
            (stFlags & (CG_ST_FLAGS_GLOBAL|CG_ST_FLAGS_NOCNTXT))))
      return;

    if (stFlags & CG_ST_FLAGS_LFULL_ESC)
      return;

    addStFlags(node,CG_ST_FLAGS_LFULL_ESC|
                    CG_ST_FLAGS_LCONT_ESC|
                    CG_ST_FLAGS_LPROP_ESC);
    addStToWorkList(node);

    FmtAssert(!_ipaMode ||
              !_graph->stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL),(""));
    FmtAssert(!_ipaMode ||
              !_graph->stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT),(""));

    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
                fprintf(stderr,"ESCANAL: ST_IDX %d marked opaque\n",node->st_idx());

    if (stFlags & CG_ST_FLAGS_GLOBAL)
      _globalEscapeCnt++;
    else {
      _localEscapeCnt++;
      _graph->stInfo(node->st_idx())->addFlags(CG_ST_FLAGS_ESCLOCAL);
    }
  }
}

void
EscapeAnalysis::init(void)
{
  /* formal(u) actual(u)  global(u)
   * --------  ---------  ---------
   *   CE(u)      PE(u)     FE(u)
   */

   for (CGIdToNodeMapIterator iter = _graph->begin();
       iter != _graph->end(); ++iter) {
     ConstraintGraphNode *node = iter->second;
     if (node->checkFlags(CG_NODE_FLAGS_FORMAL_PARAM|
                          CG_NODE_FLAGS_ACTUAL_RETURN))
       newContEscapeNode(node,CG_ST_FLAGS_LCONT_ESC);
     if (node->checkFlags(CG_NODE_FLAGS_FORMAL_RETURN))
       newPropEscapeNode(node,CG_ST_FLAGS_RETPROP_ESC);
     if (!_ipaMode &&
         node->checkFlags(CG_NODE_FLAGS_ACTUAL_PARAM) &&
         // We do not mark non-pointer values as being escaped
         !node->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
       newPropEscapeNode(node,CG_ST_FLAGS_LPROP_ESC);
     if (!_ipaMode &&
         _graph->stInfo(node->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
       newFullEscapeNode(node,CG_ST_FLAGS_LFULL_ESC);
   }
}

void
EscapeAnalysis::processContEscapeNode(ConstraintGraphNode *node)
{
  /* New CE node effects:
   *    - IN : store edges
   *    - OUT: copy/skew, load edges
   */

  UINT32 nodeStFlags = findStFlags(node);

  /* u = v , FE(v) or CE(v)        u = v , CE(v)
   * ----------------------  ===>  -------------  DOWN
   *          CE(u)                     CE(u)
   */
  for (CGEdgeSetIterator outCopyIter = node->outCopySkewEdges().begin();
        outCopyIter != node->outCopySkewEdges().end(); ++outCopyIter) {
     ConstraintGraphEdge *edge = *outCopyIter;
     if (_ipaMode)
       if (edge->edgeQual() == CQ_GBL || edge->edgeQual() == CQ_UP ||
           edge->edgeQual() == CQ_DN)
         continue;
     newContEscapeNode(edge->destNode(),nodeStFlags);
  }



  /* u = *v, FE(v) or CE(v)        u = *v , CE(v)
   * ----------------------  ===>  --------------  DOWN
   *         CE(u)                      CE(u)
   */
  for (CGEdgeSetIterator outLdStIter = node->outLoadStoreEdges().begin();
      outLdStIter != node->outLoadStoreEdges().end(); ++outLdStIter) {
     ConstraintGraphEdge *edge = *outLdStIter;
     if (edge->edgeType() == ETYPE_STORE)
       continue;
     if (_ipaMode)
       if (edge->edgeQual() == CQ_GBL || edge->edgeQual() == CQ_UP ||
           edge->edgeQual() == CQ_DN)
         continue;
     newContEscapeNode(edge->destNode(),nodeStFlags);
  }


  /* *u = v, FE(u) or CE(u)        *u = v , CE(u)
   * ----------------------  ===>  --------------  UP
   *          PE(v)                     PE(v)
   */
  for (CGEdgeSetIterator inLdStIter = node->inLoadStoreEdges().begin();
      inLdStIter != node->inLoadStoreEdges().end(); ++inLdStIter) {
    ConstraintGraphEdge *edge = *inLdStIter;
    if (edge->edgeType() == ETYPE_LOAD)
      continue;
    if (_ipaMode)
      if (edge->edgeQual() == CQ_GBL || edge->edgeQual() == CQ_UP ||
          edge->edgeQual() == CQ_DN)
        continue;
    newPropEscapeNode(edge->srcNode(),CG_ST_FLAGS_LPROP_ESC);
  }
}

void
EscapeAnalysis::processPropEscapeNode(ConstraintGraphNode *node)
{
  /* New PE node effects:
   *    - IN : copy/skew, points-to contents
   *    - OUT:
   */
  UINT32 nodeStFlags = findStFlags(node);

  /* u = v , FE(u) or PE(u)        u = v , PE(u)
     * ----------------------  ===>  -------------  UP
     *         PE(v)                      PE(v)
     */
  for (CGEdgeSetIterator inCopyIter = node->inCopySkewEdges().begin();
       inCopyIter != node->inCopySkewEdges().end(); ++inCopyIter) {
    ConstraintGraphEdge *edge = *inCopyIter;
    if (_ipaMode)
      if (edge->edgeQual() == CQ_GBL || edge->edgeQual() == CQ_UP ||
          edge->edgeQual() == CQ_DN)
      continue;
    newPropEscapeNode(edge->srcNode(),nodeStFlags);
  }

  /* u = &v, FE(u) or PE(u)         u = &v , PE(u)
    * ----------------------  ===>   --------------  UP
    *       FE(v)                         FE(v)
    */
  for (PointsToIterator pti(node); pti != 0; ++pti) {
    if (!_ipaMode || pti.qual() == CQ_HZ) {
      PointsTo &pts = *pti;
      for (PointsTo::SparseBitSetIterator iter(&pts,0); iter != 0; ++iter)
        newFullEscapeNode(_graph->cgNode(*iter),nodeStFlags);
    }
  }
}

void
EscapeAnalysis::processFullEscapeNode(ConstraintGraphNode *node)
{
  /* New FE node effects:
   *    - IN : copy/skew, points-to contents, store
   *    - OUT: copy/skew, (assign_addr), load
   */

  /* u = &v , FE(v)                 u = &v , FE(v)
    * --------------          ===>   --------------  DOWN
    *     CE(u)                           CE(u)
    */
  UINT32 stFlags = findStFlags(node);

  // Here we are looking for the outgoing points-to relationship,
  // i.e. who points to the current node.
  PointsTo *revPts = reversePointsTo(node->id());
  if (revPts) {
    for (PointsTo::SparseBitSetIterator iter(revPts,0); iter != 0; ++iter)  {
      // TODO:  this does not handle the qualifier on the address edges for
      //        _ipamode.
      ConstraintGraphNode *revNode = _graph->cgNode(*iter);
      newContEscapeNode(_graph->cgNode(*iter),stFlags);
      if (node->constraintGraph() != _graph &&
          (!_ipaMode ||
              !(stFlags & (CG_ST_FLAGS_GLOBAL|CG_ST_FLAGS_NOCNTXT))))
        addStFlags(node,CG_ST_FLAGS_LCONT_ESCLCL);
    }
  }
}

void
EscapeAnalysis::perform(void)
{
  init();
  computeReversePointsTo();

  UINT32 cnt = 0;
  while (!_workList.empty())  {
    ConstraintGraphNode *node = _workList.pop();

    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      fprintf(stderr,"ESCANAL: Processing node %d\n",node->id());

    UINT32 stFlags = findStFlags(node);
    if (stFlags & (CG_ST_FLAGS_LPROP_ESC|CG_ST_FLAGS_RETPROP_ESC))
      processPropEscapeNode(node);
    if (stFlags & CG_ST_FLAGS_LCONT_ESC)
      processContEscapeNode(node);
    if (stFlags & CG_ST_FLAGS_LFULL_ESC)
      processFullEscapeNode(node);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"ESCANAL: local escape  = %d\n",_localEscapeCnt);
    fprintf(stderr,"ESCANAL: global escape = %d\n",_globalEscapeCnt);
    fprintf(stderr,"ESCANAL: observed      = %d\n",_observedCnt);
  }
}

