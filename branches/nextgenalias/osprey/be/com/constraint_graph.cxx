#include "constraint_graph.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "ir_reader.h"

UINT32 ConstraintGraph::nextCGNodeId = 1;

static void
FindDeclaredBaseAndOffset(ST_IDX  st_idx,
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
  processWNandKids(entryWN);
}

WN *
ConstraintGraph::processWNandKids(WN *wn)
{
  OPCODE opc = WN_opcode(wn);

  if (opc == OPC_BLOCK) {
    for (WN *wn2 = WN_first(wn); wn2 != NULL; )
      wn2 = processWNandKids(wn2);
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
      processWNandKids(kid);
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

  switch (res) {
    case ADDR:
      if (stInfo(cgNodeRHS->st_idx())->checkFlags(CG_ST_FLAGS_GLOBAL))
        cgNodeLHS->addPointsToGBL(cgNodeRHS->id());
      break;
    case ASSIGN:
      addEdge(cgNodeRHS, cgNodeLHS, ETYPE_ASSIGN, CQ_HZ, WN_object_size(stmt));
      break;
    default:
      cgNodeLHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
  }

  return WN_next(stmt);
}

ConstraintGraphNode *
ConstraintGraph::processExpr(WN *expr, ProcessExprResult& res)
{
  //bool exprIsPtr = TY_kind(WN_object_ty(expr));
  OPCODE opc = WN_opcode(expr);
  OPERATOR opr = OPCODE_operator(opc);
  res = UNKNOWN;
  if (OPCODE_is_leaf(opc)) {
    switch (opr) {
      case OPR_LDA:
        res = ADDR;
        return getCGNode(expr);  
     case OPR_LDID:
       res = ASSIGN;
       return getCGNode(expr);
      default:
        return NULL;
    }
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
  ST_IDX base_st_idx;
  INT64 base_offset = WN_offset(wn);
  FindDeclaredBaseAndOffset(WN_st_idx(wn), base_st_idx, base_offset);
  return getCGNode(base_st_idx, base_offset);
}
