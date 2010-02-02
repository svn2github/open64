#include "constraint_graph.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "ir_reader.h"

UINT32 ConstraintGraph::nextCGNodeId = 1;

static void
addCGNodeInSortedOrder(StInfo *stInfo, ConstraintGraphNode *cgNode)
{
  if (!stInfo->firstOffset()) {
    stInfo->firstOffset(cgNode);
  } else {
    ConstraintGraphNode *n = stInfo->firstOffset();
    ConstraintGraphNode *prevn = n;
    while (n && n->offset() <= cgNode->offset()) {
      prevn = n;
      n = n->nextOffset();
    }
    FmtAssert(prevn->offset() != cgNode->offset(),
              ("Found node with same offset"));
    prevn->nextOffset(cgNode);
  }
}

static void
findDeclaredBaseAndOffset(ST_IDX  st_idx,
                          ST_IDX &declared_base_idx,
                          INT64  &declared_offset)
{
  ST *st             = &St_Table[st_idx];
  ST_IDX base_st_idx = ST_base_idx(st);
  ST *base_st;

  declared_base_idx = st_idx;

  while (st_idx != base_st_idx &&
         (base_st = &St_Table[base_st_idx], TRUE) &&
         (ST_class(base_st) != CLASS_BLOCK ||
          !STB_compiler_layout(base_st))) {
    declared_offset   += ST_ofst(st);
    declared_base_idx  = ST_base_idx(st);
    st = base_st;
    st_idx = base_st_idx;
  }
}

void 
ConstraintGraph::buildCG(WN *entryWN)
{
  fprintf(stderr, "Building ConstraintGraph for func %s\n", 
          ST_name(WN_st(entryWN)));
  fdump_tree(stderr, entryWN);
  processWN(entryWN);
}

WN *
ConstraintGraph::processWN(WN *wn)
{
  OPCODE opc = WN_opcode(wn);

  if (opc == OPC_BLOCK) {
    for (WN *wn2 = WN_first(wn); wn2 != NULL; )
      wn2 = processWN(wn2);
    return NULL;
  }
  else if (OPCODE_is_store(opc)) {
    return handleAssignment(wn);
  }
  else if (OPCODE_is_call(opc)) {
    return handleCall(wn);
  }
  else if (OPCODE_is_expression(opc)) {
    // wn is an expression kid of SCF and needs to be handled like the
    // RHS of an assignment statement.
    // (void) Classify_deref_of_expr(wn, FALSE);
    return NULL;
  }
  else if (!OPCODE_is_black_box(opc)) {
    for (INT i = 0; i < WN_kid_count(wn); i++) {
      WN *kid = WN_kid(wn, i);
      processWN(kid);
    }
    return WN_next(wn);
  }
  else {
    return WN_next(wn);
  }
}

WN *
ConstraintGraph::handleAssignment(WN *stmt)
{
  ConstraintGraphNode *cgNodeLHS = processLHSofStore(stmt);

  // process RHS
  WN *rhs = WN_kid0(stmt);

  ProcessExprResult res;
  ConstraintGraphNode *cgNodeRHS = processExpr(rhs, res);
  if (cgNodeRHS == NULL || cgNodeRHS->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    cgNodeLHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
    return WN_next(stmt);
  }

  switch (res) {
    case ADDR:
      if (stInfo(cgNodeRHS->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
        cgNodeLHS->addPointsToGBL(cgNodeRHS->id());
      else
        cgNodeLHS->addPointsToHZ(cgNodeRHS->id());
      break;
    case COPY:
      bool added = false;
      addEdge(cgNodeRHS,cgNodeLHS,ETYPE_COPY,CQ_HZ,WN_object_size(stmt),added);
      break;
  }

  return WN_next(stmt);
}

ConstraintGraphNode *
ConstraintGraph::processExpr(WN *expr, ProcessExprResult& res)
{
  //bool exprIsPtr = TY_kind(WN_object_ty(expr));
  OPCODE opc = WN_opcode(expr);
  OPERATOR opr = OPCODE_operator(opc);
  if (OPCODE_is_leaf(opc)) {
    switch (opr) {
      case OPR_LDA:
        res = ADDR;
        return getCGNode(expr);  
      case OPR_LDID:
       res = COPY;
       return getCGNode(expr);
      default:
        return NULL;
    }
  } else if (OPCODE_is_load(opc)) {
    switch (opr) {
      case OPR_ILOAD: {
        res = COPY;
        ProcessExprResult kidRes;
        ConstraintGraphNode *addrCGNode = processExpr(WN_kid0(expr), kidRes);
        if (!addrCGNode)
          return NULL;
        ST *tempST = 
          Gen_Temp_Named_Symbol(WN_ty(expr), "cgTmp", CLASS_VAR, SCLASS_AUTO);
        // Create a new temp symbol
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tempST), 0);
        if (WN_offset(expr) != 0)
          addrCGNode = getCGNode(addrCGNode->st_idx(), 
                                 addrCGNode->offset() + WN_offset(expr));
        bool added = false;
        addEdge(addrCGNode, tmpCGNode, ETYPE_LOAD, CQ_HZ,
                WN_object_size(expr),added);
        return tmpCGNode;
      }
      default:
        return NULL;
    }
  } else {
    for (INT i = 0; i < WN_kid_count(expr); i++) {
      ProcessExprResult res;
      WN *kid = WN_kid(expr, i);
      processExpr(kid, res);
    }
#if 0
    if (opr == OPR_ADD || opr == OPR_SUB) {
      ConstraintGraphNode *kidCGNode;
      if ( (WN_operator(WN_kid0(expr)) == INTCONST &&
              (kidCGNode = processExpr(WN_kid1(expr), res))) ||
             (WN_operator(WN_kid1(expr)) == INTCONST &&
              (kidCGNode = processExpr(WN_kid0(expr), res))) )
    }
#endif
  }
}

ConstraintGraphNode *
ConstraintGraph::processLHSofStore(WN *stmt)
{
  OPERATOR opr = WN_operator(stmt);
  ConstraintGraphNode *cgNode = NULL;

  if (OPERATOR_is_scalar_store(opr)) {
    cgNode = getCGNode(stmt);
  } else if (OPERATOR_is_scalar_istore(opr) || opr == OPR_MSTORE) {
    cgNode = NULL;
  }

  return cgNode;
}

WN *
ConstraintGraph::handleCall(WN *wn)
{
  return WN_next(wn);
}

ConstraintGraphNode *
ConstraintGraph::getCGNode(WN *wn)
{
  FmtAssert(OPERATOR_is_scalar_store(WN_operator(wn)) ||
            OPCODE_is_leaf(WN_opcode(wn)), ("Can handle only leaf nodes"));
  ST_IDX base_st_idx;
  INT64 base_offset = WN_offset(wn);
  findDeclaredBaseAndOffset(WN_st_idx(wn), base_st_idx, base_offset);
  return getCGNode(base_st_idx, base_offset);
}

ConstraintGraphEdge *
ConstraintGraph::addEdge(ConstraintGraphNode *src, ConstraintGraphNode *dest,
                         CGEdgeType etype, CGEdgeQual qual, UINT32 size,
                         bool &added)
{
  ConstraintGraphEdge *edge =
    CXX_NEW(ConstraintGraphEdge(src->id(), dest->id(), etype,
                                qual, size), _memPool);
  ConstraintGraphEdge *newEdge = src->addOutEdge(edge);
  if (newEdge == edge) {
    ConstraintGraphEdge *ne = dest->addInEdge(edge);
    FmtAssert(ne == edge, ("Edge exists in dest but not in src"));
    added = true;
    return edge;
  } else {
    ConstraintGraphEdge *ne = dest->addInEdge(edge);
    FmtAssert(ne != edge && ne == newEdge,
              ("Edge exists in src but not in dest"));
    newEdge->addFlags(edge->flags());
    newEdge->size(MAX(size, edge->size()));
    CXX_DELETE(edge, _memPool);
    added = false;
    return newEdge;
  }
}

ConstraintGraphNode *
ConstraintGraph::getCGNode(ST_IDX st_idx, INT64 offset)
{
  // Check if we have seen this symbol before
  StInfo *si = stInfo(st_idx);
  if (si == NULL) {
    si = CXX_NEW(StInfo(st_idx), _memPool);
    _cgStInfoMap[st_idx] = si;
  }

  ST *st = &St_Table[st_idx];
  if (ST_class(st) != CLASS_PREG) {
    if (si->varSize() != 0)
      FmtAssert(offset < si->varSize(), ("getCGNode: offset: %lld >= varSize"
                ": %lld\n", offset, si->varSize()));
    if (si->modulus() != 0)
      offset = offset % si->modulus();
  }

  ConstraintGraphNode *cgNode =
    CXX_NEW(ConstraintGraphNode(st_idx, offset, _memPool), _memPool);

  // Check if node exists, if so return it
  CGNodeToIdMapIterator cgIter = _cgNodeToIdMap.find(cgNode);
  if (cgIter != _cgNodeToIdMap.end()) {
    CXX_DELETE(cgNode, _memPool);
    return cgIter->first;
  }

  // Add it to the _cgNodeToIdMap and the reverse _cgIdToNodeMap
  _cgNodeToIdMap[cgNode] = nextCGNodeId;
  FmtAssert(_cgIdToNodeMap.find(nextCGNodeId) == _cgIdToNodeMap.end(),
            ("nextCGNodeId: %d already in _cgIdToNodeMap\n", nextCGNodeId));
  _cgIdToNodeMap[nextCGNodeId] = cgNode;
  cgNode->setId(nextCGNodeId++);

  addCGNodeInSortedOrder(si, cgNode);
  return cgNode;
}
