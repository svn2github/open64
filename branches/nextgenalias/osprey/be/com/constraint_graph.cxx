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
    processExpr(wn);
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
  ConstraintGraphNode *cgNodeLHS = processLHSofStore(stmt);
  
  if (WN_operator(stmt) == OPR_MSTORE)
    processExpr(WN_kid2(stmt), resRHS);

  if (cgNodeRHS == NULL || cgNodeRHS->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    cgNodeLHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
    return WN_next(stmt);
  }

  OPERATOR opr = WN_operator(stmt);

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
  } else if (opr == OPR_ISTORE || opr == OPR_ISTBITS) {
    switch (resRHS) {
      case ADDR: {
        // y is a direct address: *x = &a
        // Create a temp symbol t and add a to the points-to set of t.
        // Make t the new y
        ST *tmpST = Gen_Temp_Named_Symbol(WN_ty(WN_kid0(stmt)), "cgTmp", 
                                          CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tmpST), 0);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
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

  return WN_next(stmt);
}

// A version of processExpr where I don't care about the ProcessExprResult
ConstraintGraphNode *
ConstraintGraph::processExpr(WN *expr)
{
  ProcessExprResult res;
  return processExpr(expr, res);
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
      case OPR_ILDBITS:
      case OPR_ILOAD: {
        res = COPY;
        ConstraintGraphNode *addrCGNode = processExpr(WN_kid0(expr));
        if (!addrCGNode || addrCGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
          return NULL;
        // Create a new temp symbol
        ST *tmpST = 
          Gen_Temp_Named_Symbol(WN_ty(expr), "cgTmp", CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tmpST), 0);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        // For a non-zero offset, we need to construct a new tmp, t1
        // such that t1 = y + offset (a skew)
        if (WN_offset(expr) != 0) {
          ST *tmp1ST = 
            Gen_Temp_Named_Symbol(WN_ty(expr), "cgTmp", CLASS_VAR, SCLASS_AUTO);
          ConstraintGraphNode *tmp1CGNode = getCGNode(ST_st_idx(tmp1ST), 0);
          stInfo(tmp1CGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
          bool added = false;
          addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                  WN_offset(expr), added);
          addrCGNode = tmp1CGNode;
        }
        bool added = false;
        addEdge(addrCGNode, tmpCGNode, ETYPE_LOAD, CQ_HZ,
                WN_object_size(expr), added);
        return tmpCGNode;
      }
      case OPR_MLOAD:
        processExpr(WN_kid0(expr));
        return NULL;
      default:
        return NULL;
    }
  } else if (opr == OPR_ARRAY) {
    for (INT i = 1; i < WN_kid_count(expr); i++)
      processExpr(WN_kid(expr, i));
    processExpr(WN_kid0(expr));
  } else {
    for (INT i = 0; i < WN_kid_count(expr); i++) {
      WN *kid = WN_kid(expr, i);
      processExpr(kid);
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
      if (kid0CGNode != NULL && 
          !kid0CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        kidCGNode = kid0CGNode;
      else if (kid1CGNode != NULL && 
               kid1CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        kidCGNode = kid1CGNode;
     
      WN *intConst = NULL;
      if (WN_operator(WN_kid0(expr)) == OPR_INTCONST)
        intConst = WN_kid0(expr);
      else if (WN_operator(WN_kid1(expr)) == OPR_INTCONST)
        intConst = WN_kid1(expr);
        
      if (kidCGNode && intConst) {
        // Create a new tmp symbol
        ST *tmpST = Gen_Temp_Named_Symbol(TY_Of_Expr(expr), "cgTmp", 
                                          CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tmpST), 0);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
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
ConstraintGraph::processLHSofStore(WN *stmt)
{
  OPERATOR opr = WN_operator(stmt);
  ConstraintGraphNode *cgNodeLHS = NULL;

  // Get CGNode corresponding to x
  if (OPERATOR_is_scalar_store(opr)) {
    cgNodeLHS = getCGNode(stmt);
  } else if (opr == OPR_ISTORE || opr == OPR_ISTBITS) {
    cgNodeLHS = processExpr(WN_kid1(stmt));
    if (cgNodeLHS != NULL) {
      // For a non-zero offset, we need to construct a new tmp, t1
      // such that t1 = x + offset (a skew)
      if (WN_offset(stmt) != 0) {
        ST *tmp1ST = 
          Gen_Temp_Named_Symbol(WN_ty(WN_kid1(stmt)), 
                                "cgTmp", CLASS_VAR, SCLASS_AUTO);
        ConstraintGraphNode *tmp1CGNode = getCGNode(ST_st_idx(tmp1ST), 0);
        stInfo(tmp1CGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        bool added = false;
        addEdge(cgNodeLHS, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                WN_offset(stmt), added);
        cgNodeLHS = tmp1CGNode;
      }
    }
  } else if (opr == OPR_MSTORE) {
    processExpr(WN_kid1(stmt));
  }

  if (cgNodeLHS == NULL) {
    // Create a temp node and mark it UNKNOWN
    ST *tmpST = Gen_Temp_Named_Symbol(WN_ty(stmt), "cgTmp", 
                                      CLASS_VAR, SCLASS_AUTO);
    ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(tmpST), 0);
    stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
  }
    
  WN_MAP_CGNodeId_Set(stmt, cgNodeLHS->id());

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
  ConstraintGraphEdge cgEdge(src, dest, etype, qual, size);

  ConstraintGraphEdge *retSrcEdge = src->outEdge(&cgEdge);
  ConstraintGraphEdge *retDestEdge = dest->inEdge(&cgEdge);

  bool edgeExistsInBoth = retSrcEdge && retDestEdge;
  bool edgeExistsInNeither = !retSrcEdge && !retDestEdge;

  if (edgeExistsInNeither) {
    ConstraintGraphEdge *edge =
      CXX_NEW(ConstraintGraphEdge(src, dest, etype, qual, size), _memPool);
    src->addOutEdge(edge);
    dest->addInEdge(edge);
    added = true;
    return edge;
  } else if (edgeExistsInBoth) {
    added = false;
    FmtAssert(retSrcEdge == retDestEdge, ("src and dest edge not same!\n"));
    return retSrcEdge;
  } else 
    FmtAssert(FALSE, 
              ("Either edge exists in one of src/dest but not in other!\n"));
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
    offset = offset % si->modulus();
    if (si->varSize() != 0)
      Is_True(offset < si->varSize(), ("getCGNode: offset: %lld >= varSize"
              ": %lld\n", offset, si->varSize()));
  }

  ConstraintGraphNode *cgNode = NULL;

  // Check if node exists, if so return it
  if (cgNode = checkCGNode(st_idx, offset))
    return cgNode;

  cgNode = CXX_NEW(ConstraintGraphNode(st_idx, offset, _memPool), _memPool);
  cgNode->constraintGraph(this);

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

void 
ConstraintGraphEdge::print(FILE *file)
{
  fprintf(file, "(src: %d dest: %d ", _srcCGNode->id(), _destCGNode->id());
  _edgeInfo.print(file);
  fprintf(file, ")");
}

