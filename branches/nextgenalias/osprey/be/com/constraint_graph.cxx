#include <sstream>
#include "constraint_graph.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "ttype.h"
#include "targ_sim.h"
#include "ir_reader.h"

CGNodeId ConstraintGraph::nextCGNodeId = 1;
CallSiteId ConstraintGraph::nextCallSiteId = 1;
UINT32 ConstraintGraph::maxTypeSize = 0;

static bool
exprMayPoint(WN *const wn)
{
  TYPE_ID desc = WN_desc(wn);
  if ((MTYPE_byte_size(desc) != 0 && MTYPE_byte_size(desc) < Pointer_Size) ||
      MTYPE_is_float(desc) ||
      MTYPE_is_complex(desc) || 
      MTYPE_is_vector(desc)) {
     return false;
  }
  return true;
}

static void
addCGNodeInSortedOrder(StInfo *stInfo, ConstraintGraphNode *cgNode)
{
  if (!stInfo->firstOffset()) {
    stInfo->firstOffset(cgNode);
  } else {
    ConstraintGraphNode *n = stInfo->firstOffset();
    ConstraintGraphNode *prevn = NULL;
    while (n && n->offset() <= cgNode->offset()) {
      prevn = n;
      n = n->nextOffset();
    }
    if (prevn) {
      FmtAssert(prevn->offset() != cgNode->offset(),
          ("Found node with same offset"));
      prevn->nextOffset(cgNode);
    }
    else {
      cgNode->nextOffset(n);
      stInfo->firstOffset(cgNode);
    }
  }
}

static void
seedOffsetMinusOnePointsTo(StInfo *stInfo, ConstraintGraphNode *cgNode)
{
  FmtAssert(cgNode->offset() == -1,
      ("seedOffsetMinusOnePointsTo: offset != -1"));

  ConstraintGraphNode *cur = stInfo->firstOffset();
  if (cur->offset() == -1)
    cur = cur->nextOffset();
  while (cur) {
    for ( PointsToIterator pti(cur); pti != 0; ++pti )
      cgNode->unionPointsTo(*pti,pti.qual());
    cur = cur->nextOffset();
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

static BOOL
calleeReturnsNewMemory(const WN *const call_wn)
{
  if (WN_Call_Does_Mem_Alloc(call_wn))
    return TRUE;
  if (WN_operator(call_wn) == OPR_CALL) {
    const ST *const st = WN_st(call_wn);

    if ((strcmp("malloc", ST_name(st)) == 0) ||
        (strcmp("alloca", ST_name(st)) == 0) ||
        (strcmp("calloc", ST_name(st)) == 0) ||
        (strcmp("_F90_ALLOCATE", ST_name(st)) == 0)) {
      return TRUE;
    }
  }
  else if (WN_operator(call_wn) == OPR_INTRINSIC_CALL) {
    if ((WN_intrinsic(call_wn) == INTRN_U4I4ALLOCA) ||
        (WN_intrinsic(call_wn) == INTRN_U8I8ALLOCA) ||
        (WN_intrinsic(call_wn) == INTRN_U4I4MALLOC) ||
        (WN_intrinsic(call_wn) == INTRN_U8I8MALLOC)) {
      return TRUE;
    }
  }
  return FALSE;
}

static BOOL
stmtStoresReturnValueFromCallee(const WN *const stmt)
{
  WN *rhs = WN_kid0(stmt);

  return ((WN_operator(stmt) == OPR_STID) &&
          (WN_operator(rhs) == OPR_LDID) &&
          (ST_sclass(WN_st(rhs)) == SCLASS_REG) &&
          Preg_Is_Dedicated(WN_offset(rhs)) && 
          Is_Return_Preg(WN_offset(rhs)));
}

static BOOL
stmtStoresReturnValueToCaller(const WN *const stmt)
{
  return ((WN_operator(stmt) == OPR_STID) &&
          (ST_sclass(WN_st(stmt)) == SCLASS_REG) &&
          Preg_Is_Dedicated(WN_offset(stmt)) && 
          Is_Return_Preg(WN_offset(stmt)));
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
  else if (WN_operator(wn) == OPR_RETURN_VAL) {
    ConstraintGraphNode *cgNode = processExpr(WN_kid0(wn));
    if (cgNode)
      cgNode->addFlags(CG_NODE_FLAGS_FORMAL_RETURN);
    return WN_next(wn);
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
  // process RHS
  ConstraintGraphNode *cgNodeRHS = processExpr(rhs);
  // process LHS
  ConstraintGraphNode *cgNodeLHS = processLHSofStore(stmt);

  if (!exprMayPoint(stmt))
    return WN_next(stmt);
  
  if (cgNodeRHS == NULL || cgNodeRHS->checkFlags(CG_NODE_FLAGS_UNKNOWN)) {
    cgNodeLHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
    return WN_next(stmt);
  }

  OPERATOR opr = WN_operator(stmt);

  if (OPERATOR_is_scalar_store(opr)) {
    bool added = false;
    // add a copy edge x <-- y
    addEdge(cgNodeRHS, cgNodeLHS, ETYPE_COPY, CQ_HZ,
            WN_object_size(stmt), added);
    if (stmtStoresReturnValueToCaller(stmt))
      cgNodeLHS->addFlags(CG_NODE_FLAGS_FORMAL_RETURN);
  } else if (opr == OPR_ISTORE || opr == OPR_ISTBITS || opr == OPR_MSTORE) {
    bool added = false;
    // Add store edge x *=<-- y
    addEdge(cgNodeRHS, cgNodeLHS, ETYPE_STORE, CQ_HZ,
            WN_object_size(stmt), added);
  }

  return WN_next(stmt);
}

ConstraintGraphNode *
ConstraintGraph::processExpr(WN *expr)
{
  OPCODE opc = WN_opcode(expr);
  OPERATOR opr = OPCODE_operator(opc);
  if (OPCODE_is_leaf(opc)) {
    ConstraintGraphNode *cgNode;
    switch (opr) {
      case OPR_LDA: {
        cgNode = getCGNode(expr);
        // Create a temp preg t and add a to the points-to set of t.
        PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
        ST *preg_st = MTYPE_To_PREG(Pointer_type);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(preg_st), preg);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        if (stInfo(cgNode->st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT))
          tmpCGNode->addPointsTo(cgNode, CQ_GBL);
        else
          tmpCGNode->addPointsTo(cgNode, CQ_HZ);
        cgNode = tmpCGNode;
        break;
      }
      case OPR_LDID:
      case OPR_LDBITS:
        cgNode = getCGNode(expr);
        break;
      case OPR_IDNAME:
        cgNode = getCGNode(expr);
        cgNode->addFlags(CG_NODE_FLAGS_FORMAL_PARAM);
      default:
        return NULL;
    }
    WN_MAP_CGNodeId_Set(expr, cgNode->id());
    return cgNode;
  } else if (OPCODE_is_load(opc)) {
    switch (opr) {
      // For *y, we create a t <--=* y
      case OPR_ILDBITS:
      case OPR_MLOAD:
      case OPR_ILOAD: {
        ConstraintGraphNode *addrCGNode = processExpr(WN_kid0(expr));
        // If the number of bytes is a const, treat it just like an iload
        if (opr == OPR_MLOAD && (WN_operator(WN_kid1(expr)) != OPR_INTCONST)) {
          processExpr(WN_kid1(expr));
          return NULL;
        }
        if (!addrCGNode || addrCGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
          return NULL;
        if (!exprMayPoint(expr))
          return NULL;
        // Create a new temp preg symbol
        PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
        ST *preg_st = MTYPE_To_PREG(Pointer_type);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(preg_st), preg);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        // For a non-zero offset, we need to construct a new tmp preg, t1
        // such that t1 = y + offset (a skew)
        if (WN_offset(expr) != 0) {
          PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
          ST *preg_st1 = MTYPE_To_PREG(Pointer_type);
          ConstraintGraphNode *tmp1CGNode = 
                               getCGNode(ST_st_idx(preg_st1), preg);
          stInfo(tmp1CGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
          bool added = false;
          addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                  WN_offset(expr), added);
          addrCGNode = tmp1CGNode;
          // Adjust the CGNode associated with the address (kid0)
          // with the newly created temp CGNode
          WN_MAP_CGNodeId_Set(WN_kid0(expr), tmp1CGNode->id());
        }
        bool added = false;
        addEdge(addrCGNode, tmpCGNode, ETYPE_LOAD, CQ_HZ,
                WN_object_size(expr), added);
        return tmpCGNode;
      }
      default:
        return NULL;
    }
  } else if (opr == OPR_ARRAY) {
    for (INT i = 1; i < WN_kid_count(expr); i++)
      processExpr(WN_kid(expr, i));
    return processExpr(WN_kid0(expr));
  } else {
    for (INT i = 0; i < WN_kid_count(expr); i++) {
      WN *kid = WN_kid(expr, i);
      processExpr(kid);
    }

    if (!exprMayPoint(expr))
      return NULL;
    
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
        // Create a new tmp preg
        PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
        ST *preg_st = MTYPE_To_PREG(Pointer_type);
        ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(preg_st), preg);
        stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        bool added = false;
        addEdge(kidCGNode, tmpCGNode, ETYPE_SKEW, CQ_HZ, 
                WN_const_val(intConst), added);
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
  } else if (opr == OPR_ISTORE || opr == OPR_ISTBITS || opr == OPR_MSTORE) {
    cgNodeLHS = processExpr(WN_kid1(stmt));
    // If the number of bytes is a const, treat it just like an istore
    if (opr == OPR_MSTORE && (WN_operator(WN_kid2(stmt)) != OPR_INTCONST)) {
      processExpr(WN_kid2(stmt));
      cgNodeLHS = NULL;
    }
    if (cgNodeLHS != NULL) {
      // For a non-zero offset, we need to construct a new tmp preg, t1
      // such that t1 = x + offset (a skew)
      if (WN_offset(stmt) != 0) {
        PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
        ST *preg_st = MTYPE_To_PREG(Pointer_type);
        ConstraintGraphNode *tmp1CGNode = getCGNode(ST_st_idx(preg_st), preg);
        stInfo(tmp1CGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
        bool added = false;
        addEdge(cgNodeLHS, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                WN_offset(stmt), added);
        cgNodeLHS = tmp1CGNode;
      }
    }
  }

  if (cgNodeLHS == NULL) {
    // Create a temp preg node and mark it UNKNOWN
    PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
    ST *preg_st = MTYPE_To_PREG(Pointer_type);
    ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(preg_st), preg);
    tmpCGNode->addFlags(CG_NODE_FLAGS_UNKNOWN);
    stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
    cgNodeLHS = tmpCGNode;
  }
    
  WN_MAP_CGNodeId_Set(stmt, cgNodeLHS->id());

  return cgNodeLHS;
}

ConstraintGraphNode *
ConstraintGraph::processParam(WN *wn)
{
  ConstraintGraphNode *cgNodeKid = processExpr(WN_kid0(wn));
  if (cgNodeKid) {
    return cgNodeKid;
  } else {
    // Create a temp preg and set it UNKNOWN
    PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
    ST *preg_st = MTYPE_To_PREG(Pointer_type);
    ConstraintGraphNode *tmpCGNode = getCGNode(ST_st_idx(preg_st), preg);
    tmpCGNode->addFlags(CG_NODE_FLAGS_UNKNOWN);
    stInfo(tmpCGNode->st_idx())->addFlags(CG_ST_FLAGS_TEMP);
    return tmpCGNode;
  } 
}

WN *
ConstraintGraph::handleCall(WN *callWN)
{
  OPCODE opc = WN_opcode(callWN);
  OPERATOR opr = OPCODE_operator(opc);

  INT numParms;
  ConstraintGraphNode *heapCGNode = NULL;

  ConstraintGraphNode *cgNode = NULL;
  // For indirect calls, process the address of the call
  if (opr == OPR_ICALL || opr == OPR_VFCALL) {
    numParms = WN_kid_count(callWN) - 1;
    cgNode = processExpr(WN_kid(callWN, WN_kid_count(callWN) - 1));
    if (cgNode) {
      cgNode->addFlags(CG_NODE_FLAGS_ICALL);
      WN_MAP_CGNodeId_Set(WN_kid(callWN, WN_kid_count(callWN) - 1), 
                          cgNode->id());
    }
  } else {
    numParms = WN_kid_count(callWN);
    if (calleeReturnsNewMemory(callWN)) {
      ST *heapST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "cgHeap", 
                                         CLASS_VAR, SCLASS_AUTO);
      heapCGNode = getCGNode(ST_st_idx(heapST), 0);
      stInfo(heapCGNode->st_idx())->addFlags(CG_ST_FLAGS_HEAP);
      stInfo(heapCGNode->st_idx())->modulus(maxTypeSize);
      stInfo(heapCGNode->st_idx())->varSize(0);
    }
  }

  // Create a new call site
  CallSite *callSite = CXX_NEW(CallSite(opr == OPR_ICALL || opr == OPR_VFCALL,
                                        _memPool), _memPool);
  _callSiteMap[callSite->id()] = callSite;
  WN_MAP_CallSiteId_Set(callWN, callSite->id());

  // For indirect calls, set the CGNodeId to the ConstraintGraphNode
  // corresponding to the address of the call. For direct calls,
  // set the st_idx of call. Else, mark UNKNOWN
  if ((opr == OPR_ICALL || opr == OPR_VFCALL) && cgNode)
    callSite->cgNodeId(cgNode->id());
  else if (opr == OPR_CALL)
    callSite->st_idx(WN_st_idx(callWN));
  else
    callSite->addFlags(CS_FLAGS_UNKNOWN);
  
  // Process params
  for (UINT i = 0; i < numParms; ++i) {
    WN *parmWN = WN_kid(callWN, i);
    if (WN_parm_flag(parmWN) & WN_PARM_DUMMY)
      continue;
    ConstraintGraphNode *cgNode = processParam(parmWN);
    cgNode->addFlags(CG_NODE_FLAGS_ACTUAL_PARAM);
    callSite->addParm(cgNode->id());
    WN_MAP_CGNodeId_Set(parmWN, cgNode->id());
  }

  WN *stmt = WN_next(callWN);
  while (stmt != NULL && stmtStoresReturnValueFromCallee(stmt)) {
    ConstraintGraphNode *cgNode = processLHSofStore(stmt);
    cgNode->addFlags(CG_NODE_FLAGS_ACTUAL_RETURN);

    if (heapCGNode && !cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
      cgNode->addPointsTo(heapCGNode, CQ_HZ);

    callSite->setReturn(cgNode->id());

    stmt = WN_next(stmt);
  }

  return stmt;
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
// set added = false
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

void
ConstraintGraph::removeEdge(ConstraintGraphEdge *edge)
{
  edge->srcNode()->removeOutEdge(edge);
  edge->destNode()->removeInEdge(edge);
  CXX_DELETE(edge,_memPool);
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
    offset = offset % si->modulus();
    if (si->varSize() != 0)
      Is_True(offset < si->varSize(), ("getCGNode: offset: %lld >= varSize"
              ": %lld\n", offset, si->varSize()));
  } else {
    // Scale PREGs offset to avoid overlap with other pregs
    offset *= CG_PREG_SCALE;
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

  // Since each PREG is independent, we do not link it to the sorted
  // list of its associated symbol. So, the firstOffset of the StInfo
  // will be NULL and so will the next offset of the ConstraintGraphNode
  if (ST_class(st) != CLASS_PREG)
    addCGNodeInSortedOrder(si, cgNode);

  if (cgNode->offset() == -1)
    seedOffsetMinusOnePointsTo(si,cgNode);
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
ConstraintGraph::print(FILE *file)
{
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
      iter != _cgNodeToIdMap.end(); iter++) {
    iter->first->print(file);
    fprintf(stderr, " stInfo: ");
    stInfo(iter->first->st_idx())->print(file);
    fprintf(stderr, "\n ");
  }

  for (CallSiteIterator iter = _callSiteMap.begin(); 
       iter != _callSiteMap.end(); iter++)
    iter->second->print(file);
}

template <typename T>
inline
T gcd(T source, T target)
{
   T t1 = (source >= 0) ? source : -source;
   T t2 = (target >= 0) ? target : -target;
   T rem;

   if (t1 == 0) return t2;
   else if (t2 == 0) return t1;

   for(;;)
   {
      rem = t1 % t2;
      if (rem == 0)
         break;
      t1 = t2;
      t2 = rem;
   }
   return t2;
}

//
// This routine merges the provided node into the current
// node.  The merge process is as follows:
// 1) Migrate edges incoming to 'src' to 'this'
//    a) Track incoming edges from other nodes in the SCC
//       and update the GCD, inKCycle(), on representative.
//    b) Incoming edges from 'this' are deleted.
// 2) Migrate all outgoing edges from 'src' to 'this'
//    a) Track outgoing edges to other nodes in the SCC
//       and update the GCD, inKCycle(), on representative.
//    b) Outgoing edges to 'this' are deleted.
// 3) Remove any existing edge between the two nodes.
// 4) Add a (HZ) copy edge from 'this' to 'src'.  The
//    purpose of this edge is to propagate changes of
//    the points to set of 'this', which is the representative
//    of 'src' to other "covering" fields of the ST to
//    'src' may belong.  This need only be done in the case
//    of unifying an SCC and will likely be made conditional
//    in a generalized version of this routine.
// 5) Union the points-to sets of the two nodes
void
ConstraintGraphNode::merge(ConstraintGraphNode *src)
{
  // 1) Migrate all edges incoming to 'src' to 'this'
  CGEdgeSet &inCopySet = src->inCopySkewEdges();
  for (CGEdgeSetIterator inCopyIter = inCopySet.begin();
      inCopyIter != inCopySet.end(); ) {
    ConstraintGraphEdge *edge = *(inCopyIter);

    // Regardless of what happens to the edge we need to
    // remove it from the current set
    CGEdgeSetIterator save = inCopyIter;
    ++inCopyIter;
    inCopySet.erase(save);

    // If the source of the edge is a node within the
    // SCC, then we must update the inKCycle() value on
    // the representative.
    if (edge->edgeType() == ETYPE_SKEW &&
        edge->srcNode()->parent() == this &&
        edge->skew() != inKCycle())
      inKCycle(gcd((UINT32)edge->skew(),inKCycle()));

    // If the source of this edge is in the current cycle
    // then we will delete the edge rather than migrate.
    if (edge->srcNode()->parent() != parent())
      edge->moveDest(const_cast<ConstraintGraphNode *>(this));
    else
      constraintGraph()->removeEdge(edge);
  }
  CGEdgeSet &inLdSet = src->inLoadStoreEdges();
  for (CGEdgeSetIterator inLdIter = inLdSet.begin();
      inLdIter != inLdSet.end(); ) {
    ConstraintGraphEdge *edge = *(inLdIter);
    // Remove the edge from the set...
    CGEdgeSetIterator save = inLdIter;
    ++inLdIter;
    inLdSet.erase(save);
    // Note that we don't check for the source being the
    // current node, as a self ld/st edge is not problematic
    edge->moveDest(const_cast<ConstraintGraphNode *>(this));
  }

  // 2) Migrate all edges outgoing
  CGEdgeSet &outCopySet = src->outCopySkewEdges();
  for (CGEdgeSetIterator outCopyIter = outCopySet.begin();
      outCopyIter != outCopySet.end(); ) {
    ConstraintGraphEdge *edge = *(outCopyIter);
    // Regardless of what happens to the edge we need to
    // remove it from the current set
    CGEdgeSetIterator save = outCopyIter;
    ++outCopyIter;
    outCopySet.erase(save);

    // If the target of the edge is a node within the
    // SCC, then we must update the inKCycle() value on
    // the representative.
    if (edge->edgeType() == ETYPE_SKEW &&
        edge->destNode()->parent() == this &&
        edge->skew() != inKCycle())
      inKCycle(gcd(edge->skew(),inKCycle()));

    // If the target of this edge is in the current cycle
    // then we delete the edge rather than migrate it.
    if (edge->destNode()->parent() != parent())
      edge->moveSrc(const_cast<ConstraintGraphNode *>(this));
    else
      constraintGraph()->removeEdge(edge);
  }
  CGEdgeSet &outLdSet = src->outLoadStoreEdges();
  for (CGEdgeSetIterator outLdIter = outLdSet.begin();
       outLdIter != outLdSet.end(); )  {
    ConstraintGraphEdge *edge = *(outLdIter);
    // Remove the edge from the set...
    CGEdgeSetIterator save = outLdIter;
    ++outLdIter;
    outLdSet.erase(save);
    // Note that we don't check for the dest being the
    // current node, as a self ld/st edg is not problematic
    edge->moveSrc(const_cast<ConstraintGraphNode *>(this));
  }

  // 4) Add special copy edge from representative
  bool added = false;
  ConstraintGraphEdge *newEdge;
  newEdge = constraintGraph()->addEdge(this,src,ETYPE_COPY,CQ_HZ,0,added);
  FmtAssert(added,("ConstraintGraph::merge: failed to add special copy edge"));
  newEdge->addFlags(CG_EDGE_PARENT_COPY);

  // 5) Merge the points-to sets of the two nodes
  for ( PointsToIterator pti(src); pti != 0; ++pti )
    unionPointsTo(*pti,pti.qual());
}

void
ConstraintGraphNode::print(FILE *file)
{
  fprintf(file, "*CGNodeId: %d*\n ", _id);
  _nodeInfo.print(file);
  if (_nextOffset)
    fprintf(file, " nextCGNodeId: %d", _nextOffset->_id);
  if (parent())
    fprintf(file, "\n parent: %d\n",parent()->_id);
  fprintf(file, "\n inCopySkewCGEdges: ");
  for (CGEdgeSetIterator iter = _inCopySkewCGEdges.begin();
       iter != _inCopySkewCGEdges.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, " outCopySkewCGEdges: ");
  for (CGEdgeSetIterator iter = _outCopySkewCGEdges.begin();
       iter != _outCopySkewCGEdges.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n inLoadStoreCGEdges: ");
  for (CGEdgeSetIterator iter = _inLoadStoreCGEdges.begin();
       iter != _inLoadStoreCGEdges.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, " outLoadStoreCGEdges: ");
  for (CGEdgeSetIterator iter = _outLoadStoreCGEdges.begin();
       iter != _outLoadStoreCGEdges.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, "CGNode flags: [");
  if (checkFlags(CG_NODE_FLAGS_UNKNOWN))
    fprintf(file, " UNKNOWN");
  if (checkFlags(CG_NODE_FLAGS_FORMAL_PARAM))
    fprintf(file, " FPARAM");
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_PARAM))
    fprintf(file, " APARAM");
  if (checkFlags(CG_NODE_FLAGS_FORMAL_RETURN))
    fprintf(file, " FRETURN");
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_RETURN))
    fprintf(file, " ARETURN");
  if (checkFlags(CG_NODE_FLAGS_ICALL))
    fprintf(file, " ICALL");
  fprintf(file, " ]\n");
}

void ConstraintGraphNode::print(ostream& ostr)
{
  ostr << "CGNodeId: " << id();
  _nodeInfo.print(ostr);
  if (_nextOffset)
    ostr << " nextCGNodeId: " << _nextOffset->_id;
  if (parent())
    ostr << endl << "parent: " << parent()->_id << endl;
  ostr << "CGNode flags: [";
  if (checkFlags(CG_NODE_FLAGS_UNKNOWN))
    ostr << " UNKNOWN";
  if (checkFlags(CG_NODE_FLAGS_FORMAL_PARAM))
    ostr << " FPARAM";
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_PARAM))
    ostr << " APARAM";
  if (checkFlags(CG_NODE_FLAGS_FORMAL_RETURN))
    ostr << " FRETURN";
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_RETURN))
    ostr << " ARETURN";
  if (checkFlags(CG_NODE_FLAGS_ICALL))
    ostr << " ICALL";
  ostr << " ]" << endl;
}

void
ConstraintGraphNode::NodeInfo::print(FILE *file)
{
  fprintf(file, "sym:");
  (&St_Table[_st_idx])->Print(stderr);
  fprintf(file, " offset: %d", _offset);
  if (ST_class(&St_Table[_st_idx]) == CLASS_PREG) {
    PREG_NUM p = PREG_NUM(_offset / CG_PREG_SCALE);
    fprintf(file, " preg:%d:%s", p, !Preg_Is_Dedicated(p) ? Preg_Name(p) 
                                                          : "dedicated");
  }
  fprintf(file, "\n");
  fprintf(file, " GBL: "); _pointsToGBL.print(file);
  fprintf(file, " HZ: "); _pointsToHZ.print(file);
  fprintf(file, " DN: "); _pointsToDN.print(file);
}

void
ConstraintGraphNode::NodeInfo::print(ostream &ostr)
{
  ostr << " sym: ";
  ostr << St_Table[_st_idx];
  ostr << " offset: " << offset();
  if (ST_class(&St_Table[_st_idx]) == CLASS_PREG) {
    PREG_NUM p = PREG_NUM(_offset / CG_PREG_SCALE);
    ostr << " preg:" << p
         << (!Preg_Is_Dedicated(p) ? Preg_Name(p) : "dedicated");
    ostr << endl;
  }
  ostr << " GBL: " << pointsTo(CQ_GBL)
       << " HZ: " << pointsTo(CQ_HZ)
       << " DN: " << pointsTo(CQ_DN);
}

void
StInfo::print(FILE *file)
{
  fprintf(file, "varSize: %lld modulus: %d", _varSize, _modulus);
  fprintf(file, " ST flags: [");
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    fprintf(file, "GLOBAL");
  if (checkFlags(CG_ST_FLAGS_TEMP))
    fprintf(file, " TEMP");
  if (checkFlags(CG_ST_FLAGS_HEAP))
    fprintf(file, " HEAP");
  if (checkFlags(CG_ST_FLAGS_NOCNTXT))
    fprintf(file, " CI");
  fprintf(file, "]");
  if (_firstOffset)
    fprintf(file, " firstCGNodeId: %d\n", _firstOffset->id());
  else
    fprintf(file, " firstCGNodeId: null\n");
}

void StInfo::print(ostream& str)
{
  str << "varSize: " << _varSize << " modulus: " << _modulus;
  str << " ST flags: [";
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    str << "GLOBAL";
  if (checkFlags(CG_ST_FLAGS_TEMP))
    str << " TEMP";
  if (checkFlags(CG_ST_FLAGS_HEAP))
    str << " HEAP";
  if (checkFlags(CG_ST_FLAGS_NOCNTXT))
    str << " CI";
  str << "]";
  if (_firstOffset)
    str << " firstCGNodeId: " << _firstOffset->id() << endl;
  else
    str << " firstCGNodeId: null";
}

void 
ConstraintGraphEdge::move(ConstraintGraphNode * newSrc,
                          ConstraintGraphNode *newDest)
{
  // Unfortunately we must yank the edge out of both nodes
  // even if we are only changing one end of the edge
  srcNode()->removeOutEdge(this);
  destNode()->removeInEdge(this);

  if (srcNode() != newSrc)   srcNode(newSrc);
  if (destNode() != newDest) destNode(newDest);

  // Reinsert both ends of the edge
  ConstraintGraphEdge *insOutEdge = srcNode()->addOutEdge(this);
  FmtAssert(insOutEdge == this,
      ("ConstraintGraphEdge::moveDest: Unexpected duplicate out edges..."));
  ConstraintGraphEdge *insInEdge = destNode()->addInEdge(this);
  FmtAssert(insInEdge == this,
      ("ConstraintGraphEdge::moveDest: Unexpected duplicate in edges..."));
}

void
ConstraintGraphEdge::print(FILE *file) const
{
  fprintf(file, "(src: %d dest: %d ", _srcCGNode->id(), _destCGNode->id());
  _edgeInfo.print(file);
  fprintf(file, ")");
}

void
ConstraintGraphEdge::EdgeInfo::print(FILE *file) const
{
  char *es, *qs;
  switch (_etype) {
  case ETYPE_COPY:
    es = "COPY";
    break;
  case ETYPE_SKEW:
    es = "SKEW";
    break;
  case ETYPE_STORE:
    es = "STORE";
    break;
  case ETYPE_LOAD:
    es = "LOAD";
    break;
  }
  switch (_qual) {
  case CQ_HZ:
    qs = "HZ";
    break;
  case CQ_DN:
    qs = "DN";
    break;
  case CQ_UP:
    qs = "UP";
    break;
  case CQ_GBL:
    qs = "GBL";
    break;
  }
  fprintf(file, "%s %s %d [",es,qs,_sizeOrSkew);
  if (checkFlags(CG_EDGE_PARENT_COPY))
    fprintf(file, " PCOPY");
  fprintf(file, " ]");
}

UINT32
ConstraintGraph::findMaxTypeSize()
{
  UINT32 size = 0;
  TY_ITER ty;
  ty = Ty_tab.begin();
  for (++ty; ty != Ty_tab.end(); ty++)
    size += TY_size(*ty);
  return size;
}

void
CallSite::print(FILE *file)
{
  fprintf(file, "callsite: %d", _id);
  fprintf(file, " [");
  if (checkFlags(CS_FLAGS_UNKNOWN))
    fprintf(file, " %s", " UNKNOWN");
  if (checkFlags(CS_FLAGS_INDIRECT))
    fprintf(file, " %s", " INDIRECT");
  fprintf(file, " ]");
  if (checkFlags(CS_FLAGS_INDIRECT))
    fprintf(file, " cgNodeid: %d", cgNodeId());
  else if (!checkFlags(CS_FLAGS_UNKNOWN))
    fprintf(file, " st: %s", ST_name(st_idx()));
  list<CGNodeId>::iterator iter;
  fprintf(file, " parms: [");
  for (iter = _parms.begin(); iter != _parms.end(); iter++)
    fprintf(file, " %d", *iter);
  fprintf(file, " ]");
  fprintf(file, " ret: %d", _return);
  fprintf(file, " mod: ["); _mod.print(file); fprintf(file, "]");
  fprintf(file, " ref: ["); _ref.print(file); fprintf(file, "]");
  fprintf(file, "\n");
}
   
char *
ConstraintGraphVCG::getNodeTitle(ConstraintGraphNode *cgNode)
{ 
  char buf[256];
  sprintf(buf, "%d", cgNode->id());
  char *name = (char *)MEM_POOL_Alloc(&_memPool, strlen(buf) + 1);
  strcpy(name, buf);
  return name;
}

char *
ConstraintGraphVCG::getNodeLabel(ConstraintGraphNode *cgNode)
{
  char buf[256];
  sprintf(buf, "%d:%s %d", cgNode->id(), ST_name(cgNode->st_idx()),
          cgNode->offset());
  char *label = (char *)MEM_POOL_Alloc(&_memPool, strlen(buf) + 1);
  strcpy(label, buf);
  return label;
}

char *
ConstraintGraphVCG::getEdgeLabel(ConstraintGraphEdge *cgEdge)
{
  char buf[256];
  char *qs;
  switch (cgEdge->edgeQual()) {
    case CQ_HZ:
      qs = "HZ";
      break;
    case CQ_DN:
      qs = "DN";
      break;
    case CQ_UP:
      qs = "UP";
      break;
    case CQ_GBL:
      qs = "GBL";
      break;
  }
  
  sprintf(buf, "%s %s%d", qs,
          (cgEdge->edgeType() == ETYPE_SKEW ? "+" : ""),
          (cgEdge->edgeType() == ETYPE_SKEW ? cgEdge->skew() : cgEdge->size()));
  char *label = (char *)MEM_POOL_Alloc(&_memPool, strlen(buf) + 1);
  strcpy(label, buf);
  return label;
}

char *
ConstraintGraphVCG::getNodeInfo(ConstraintGraphNode *cgNode)
{
  stringstream ss;
  cgNode->print(ss);
  cgNode->constraintGraph()->stInfo(cgNode->st_idx())->print(ss);
  char *str = (char *)MEM_POOL_Alloc(&_memPool, strlen(ss.str().data()) + 1);
  strcpy(str, ss.str().data());
  return str;
}

VCGNode *
ConstraintGraphVCG::buildVCGNode(ConstraintGraphNode *cgNode)
{
  char *title = getNodeTitle(cgNode);
  char *label = getNodeLabel(cgNode);
  char *nodeInfo = getNodeInfo(cgNode);
  VCGNode *node = CXX_NEW(VCGNode(title, label, Ellipse), &_memPool);
  node->info(1, nodeInfo);
  return node;
}

void 
ConstraintGraphVCG::buildVCG(ConstraintGraph *cg)
{
  // Map ConstraintGraphNode * to the VCGNode title
  hash_map<ConstraintGraphNode *, const char *,
           ConstraintGraphNode::hashCGNode,
           ConstraintGraphNode::equalCGNode> nodeToTitleMap;
  hash_map<ConstraintGraphNode *, const char *,
           ConstraintGraphNode::hashCGNode,
           ConstraintGraphNode::equalCGNode>::const_iterator nodeToTitleMapIter;

  VCGGraph vcg("ConstraintGraph VCG");
  vcg.infoName(1, "ConstraintGraph");

  // Iterate over all nodes in the graph
  for (CGIdToNodeMapIterator iter = cg->begin(); iter != cg->end(); iter++) {
    ConstraintGraphNode *cgNode = iter->second;
    const char *srcTitle = NULL;
    nodeToTitleMapIter = nodeToTitleMap.find(cgNode);
    // Create a new VCGNode if none exists
    if (nodeToTitleMapIter == nodeToTitleMap.end()) {
      VCGNode *node = buildVCGNode(cgNode);      
      srcTitle = node->title();
      nodeToTitleMap[cgNode] = srcTitle;
      vcg.addNode(*node);
    } else 
      srcTitle = nodeToTitleMapIter->second;
    
    // Traverse all outgoing COPY/SKEW edges
    for (CGEdgeSetIterator iter = cgNode->outCopySkewEdges().begin();
         iter != cgNode->outCopySkewEdges().end(); iter++) {
      ConstraintGraphEdge *edge = *iter;
      ConstraintGraphNode *destNode = edge->destNode();
      const char *destTitle = NULL;
      nodeToTitleMapIter = nodeToTitleMap.find(destNode);
      // Create a new dest VCGNode if none exists
      if (nodeToTitleMapIter == nodeToTitleMap.end()) {
        VCGNode *node = buildVCGNode(destNode);
        destTitle = node->title();
        nodeToTitleMap[destNode]= destTitle;
        vcg.addNode(*node);
      } else
        destTitle = nodeToTitleMapIter->second;
      // Add edge from cgNode -> destNode
      VCGEdge *vcgEdge = CXX_NEW(VCGEdge(srcTitle, destTitle), &_memPool);
      vcgEdge->color(Black);
      vcgEdge->label(getEdgeLabel(edge));
      vcg.addEdge(*vcgEdge);
    }

    // Traverse all outgoing LOAD/STORE edges
    for (CGEdgeSetIterator iter = cgNode->outLoadStoreEdges().begin();
         iter != cgNode->outLoadStoreEdges().end(); iter++) {
      ConstraintGraphEdge *edge = *iter;
      ConstraintGraphNode *destNode = edge->destNode();
      const char *destTitle = NULL;
      nodeToTitleMapIter = nodeToTitleMap.find(destNode);
      // Create a new dest VCGNode if none exists
      if (nodeToTitleMapIter == nodeToTitleMap.end()) {
        VCGNode *node = buildVCGNode(destNode);      
        destTitle = node->title();
        nodeToTitleMap[destNode]= destTitle;
        vcg.addNode(*node);
      } else
        destTitle = nodeToTitleMapIter->second;
      // Add edge from cgNode -> destNode
      VCGEdge *vcgEdge = CXX_NEW(VCGEdge(srcTitle, destTitle), &_memPool);
      vcgEdge->color(edge->edgeType() == ETYPE_LOAD ? Red : Blue);
      vcgEdge->label(getEdgeLabel(edge));
      vcg.addEdge(*vcgEdge);
    }

    // Add edge from node to its parent (if parent is not the current node)
    if (cgNode->parent() && cgNode->parent() != cgNode) {
      ConstraintGraphNode *parent = cgNode->parent();
      const char *pTitle = NULL;
      nodeToTitleMapIter = nodeToTitleMap.find(parent);
      // Create a new parent VCGNode if none exists
      if (nodeToTitleMapIter == nodeToTitleMap.end()) {
        VCGNode *node = buildVCGNode(parent);      
        pTitle = node->title();
        nodeToTitleMap[parent]= pTitle;
        vcg.addNode(*node);
      } else
        pTitle = nodeToTitleMapIter->second;
      VCGEdge *vcgEdge = CXX_NEW(VCGEdge(srcTitle, pTitle), &_memPool);
      vcgEdge->color(Green);
      vcgEdge->lineStyle(Dotted);
      vcg.addEdge(*vcgEdge);
    }
  }

  char filename[64];
  sprintf(filename, "%s_cg.vcg", _fileNamePrefix);
  FILE *vcgfile = fopen(filename, "w");
  Is_True(vcgfile != NULL, ("Couldn't open vcgfile for writing"));

  vcg.emit(vcgfile);
  fclose(vcgfile);
}
