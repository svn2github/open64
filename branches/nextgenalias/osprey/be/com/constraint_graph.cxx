#include "constraint_graph.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "ttype.h"
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
    ProcessExprResult res;
    processExpr(wn, res);
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
  WN *rhs = WN_kid0(stmt);
  ProcessExprResult resRHS;
  // process RHS
  ConstraintGraphNode *cgNodeRHS = processExpr(rhs, resRHS);
  // process LHS
  ConstraintGraphNode *cgNodeLHS = processLHSofStore(stmt, cgNodeRHS, resRHS);
  return WN_next(stmt);
}

ConstraintGraphNode *
ConstraintGraph::processExpr(WN *expr, ProcessExprResult& res)
{
  OPCODE opc = WN_opcode(expr);
  OPERATOR opr = OPCODE_operator(opc);
  if (OPCODE_is_leaf(opc)) {
    ConstraintGraphNode *cgNode;
    switch (opr) {
      case OPR_LDA:
        res = ADDR;
        cgNode = getCGNode(expr);
        break;
      case OPR_LDID:
      case OPR_LDBITS:
        res = COPY;
        cgNode = getCGNode(expr);
        break;
      default:
        return NULL;
    }
    WN_MAP_CGNodeId_Set(expr, cgNode->id());
    return cgNode;
  } else if (OPCODE_is_load(opc)) {
    switch (opr) {
      // For *y, we create a t <--=* y
      case OPR_ILOAD: {
        res = COPY;
        ProcessExprResult kidRes;
        ConstraintGraphNode *addrCGNode = processExpr(WN_kid0(expr), kidRes);
        if (!addrCGNode)
          return NULL;
        // Create a new temp symbol
        ST *tempST = 
          Gen_Temp_Named_Symbol(WN_ty(expr), "cgTmp", CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tempST), 0);
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        // For a non-zero offset, get CGNode corresponding to (y + offset)
        if (WN_offset(expr) != 0)
          addrCGNode = getCGNode(addrCGNode->st_idx(), 
                                 addrCGNode->offset() + WN_offset(expr));
        bool added = false;
        addEdge(addrCGNode, tmpCGNode, ETYPE_LOAD, CQ_HZ,
                WN_object_size(expr), added);
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
    
    // y = x +- const;
    // y <-- (const) x
    if (opr == OPR_ADD || opr == OPR_SUB) {
      CGNodeId kid0CGNodeId = WN_MAP_CGNodeId_Get(WN_kid0(expr));
      ConstraintGraphNode *kid0CGNode = 
                           kid0CGNodeId ? cgNode(kid0CGNodeId) : NULL;
      CGNodeId kid1CGNodeId = WN_MAP_CGNodeId_Get(WN_kid1(expr));
      ConstraintGraphNode *kid1CGNode = 
                           kid1CGNodeId ? cgNode(kid1CGNodeId) : NULL;

      ConstraintGraphNode *kidCGNode = NULL;
      if (kid0CGNode != NULL)
        kidCGNode = kid0CGNode;
      else if (kid1CGNode != NULL)
        kidCGNode = kid1CGNode;
     
      WN *intConst = NULL;
      if (WN_operator(WN_kid0(expr)) == OPR_INTCONST)
        intConst = WN_kid0(expr);
      else if (WN_operator(WN_kid1(expr)) == OPR_INTCONST)
        intConst = WN_kid1(expr);
        
      if (kidCGNode && intConst) {
        // Create a new temp symbol
        ST *tempST = Gen_Temp_Named_Symbol(TY_Of_Expr(expr), "cgTmp", 
                                           CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tempST), 0);
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        bool added = false;
        addEdge(kidCGNode, tmpCGNode, ETYPE_SKEW, CQ_HZ, 
                WN_const_val(intConst), added);
        res = COPY;
        return tmpCGNode;
      }
    }
  }
  return NULL;
}

// Process x = y and *x = y
// y is cgNodeRHS, resRHS indicates whether y is a direct address or a copy
ConstraintGraphNode *
ConstraintGraph::processLHSofStore(WN *stmt, ConstraintGraphNode *cgNodeRHS,
                                   ProcessExprResult resRHS)
{
  OPERATOR opr = WN_operator(stmt);
  ConstraintGraphNode *cgNodeLHS = NULL;

  // Get CGNode corresponding to x
  if (OPERATOR_is_scalar_store(opr)) {
    cgNodeLHS = getCGNode(stmt);
  } else if (OPERATOR_is_scalar_istore(opr)) {
    ProcessExprResult res;
    cgNodeLHS = processExpr(WN_kid1(stmt), res);
    // For a non-zero offset, get CGNode corresponding to (x + offset)
    if (WN_offset(stmt) != 0)
      cgNodeLHS = getCGNode(cgNodeLHS->st_idx(), 
                            cgNodeLHS->offset() + WN_offset(stmt));
  } 

  if (cgNodeLHS == NULL)
    return NULL;

  WN_MAP_CGNodeId_Set(stmt, cgNodeLHS->id());

  if (cgNodeRHS == NULL) {
    cgNodeLHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
    return cgNodeLHS;
  }

  if (OPERATOR_is_scalar_store(opr)) {
    switch (resRHS) {
      case ADDR:
        // y is a direct address: x = &a, add a to the points-to set of x
        if (stInfo(cgNodeRHS->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
          cgNodeLHS->addPointsTo(cgNodeRHS->id(), CQ_GBL);
        else
          cgNodeLHS->addPointsTo(cgNodeRHS->id(), CQ_HZ);
        break;
      case COPY:
        bool added = false;
        // add a copy edge x <-- y
        addEdge(cgNodeRHS, cgNodeLHS, ETYPE_COPY, CQ_HZ,
                WN_object_size(stmt), added);
        break;
    }
  } else if (OPERATOR_is_scalar_istore(opr)) {
    switch (resRHS) {
      case ADDR: {
        // y is a direct address: *x = &a
        // Create a temp symbol t and add a to the points-to set of t.
        // Make t the new y
        ST *tempST = Gen_Temp_Named_Symbol(WN_ty(WN_kid0(stmt)), "cgTmp", 
                                           CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tempST), 0);
        if (stInfo(cgNodeRHS->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
          tmpCGNode->addPointsTo(cgNodeRHS->id(), CQ_GBL);
        else
          tmpCGNode->addPointsTo(cgNodeRHS->id(), CQ_HZ);
        cgNodeRHS = tmpCGNode;
        break;
      }
      case COPY:
        // Nothing to do here
        break;
    }
    bool added = false;
    // Add store edge x *=<-- y
    addEdge(cgNodeRHS, cgNodeLHS, ETYPE_STORE, CQ_HZ,
            WN_object_size(stmt), added);
  }
  return cgNodeLHS;
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

// Add edge between src and dest, return the newly added edge if it does
// not exist and set added = true, else return the existing edge and
// set adeded = false
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
    // Treat every symbol as context-insensitive
    si->addFlags(CG_ST_FLAGS_NOCNTXT);
  }

  ST *st = &St_Table[st_idx];
  if (ST_class(st) != CLASS_PREG) {
    if (si->varSize() != 0)
      Is_True(offset < si->varSize(), ("getCGNode: offset: %lld >= varSize"
              ": %lld\n", offset, si->varSize()));
    if (si->modulus() != 0)
      offset = offset % si->modulus();
  }

  ConstraintGraphNode *cgNode = NULL;

  // Check if node exists, if so return it
  if (cgNode = checkCGNode(st_idx, offset))
    return cgNode;

  cgNode =  CXX_NEW(ConstraintGraphNode(st_idx, offset, _memPool), _memPool);

  // Add it to the _cgNodeToIdMap and the reverse _cgIdToNodeMap
  _cgNodeToIdMap[cgNode] = nextCGNodeId;
  FmtAssert(_cgIdToNodeMap.find(nextCGNodeId) == _cgIdToNodeMap.end(),
            ("nextCGNodeId: %d already in _cgIdToNodeMap\n", nextCGNodeId));
  _cgIdToNodeMap[nextCGNodeId] = cgNode;
  cgNode->setId(nextCGNodeId++);

  addCGNodeInSortedOrder(si, cgNode);
  return cgNode;
}

// Checks for a CGNode, return NULL if not present
ConstraintGraphNode *
ConstraintGraph::checkCGNode(ST_IDX st_idx, INT64 offset)
{
  ConstraintGraphNode cgNode(st_idx, offset, NULL);

  CGNodeToIdMapIterator cgIter = _cgNodeToIdMap.find(&cgNode);
  if (cgIter != _cgNodeToIdMap.end())
    return cgIter->first;
  return NULL;
}
