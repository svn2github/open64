#include <sstream>

#include "constraint_graph.h"
#include "constraint_graph_solve.h"
#include "data_layout.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "wutil.h"
#include "ttype.h"
#include "targ_sim.h"
#include "ir_reader.h"
#include "cse_table.h"
#include "opt_points_to.h"

MEM_POOL *ConstraintGraph::edgeMemPool = NULL;
UINT32 ConstraintGraph::maxTypeSize = 0;
UINT32 ConstraintGraph::nextCGNodeId = 1;
bool ConstraintGraph::isIPA = false;
ConstraintGraph *ConstraintGraph::globalConstraintGraph = NULL;
ConstraintGraphNode *ConstraintGraph::notAPointerCGNode = NULL;
ConstraintGraphNode *ConstraintGraph::blackHoleCGNode = NULL;
CGIdToNodeMap ConstraintGraph::cgIdToNodeMap(1024);
const PointsTo ConstraintGraphNode::emptyPointsToSet;
const CGEdgeSet ConstraintGraphNode::emptyCGEdgeSet;

static INT32
getArraySize(WN *wn)
{
  FmtAssert(WN_operator(wn) == OPR_ARRAY, ("Expecting OPR_ARRAY"));
  if (WN_element_size(wn) > 0) {
    INT numDims = WN_kid_count(wn) >> 1;
    INT32 size = 1;
    for (INT i = 1; i <= numDims; i++) {
      FmtAssert(WN_operator(WN_kid(wn, i)) == OPR_INTCONST,
                ("Expecting OPR_INTCONST"));
      size *= WN_const_val(WN_kid(wn, i));
    }
    return size * WN_element_size(wn);
  }
  return 0;
}

void
ConstraintGraph::remapDeletedNode(WN *wn)
{
  // Check if node has been marked as deleted and remap
  CGNodeId oldId = WN_MAP_CGNodeId_Get(wn);
  if (_toBeDeletedNodes.find(oldId) != _toBeDeletedNodes.end()) {
    ConstraintGraphNode *old = ConstraintGraph::cgNode(oldId);
    ConstraintGraphNode *parent = old->findRep();
    FmtAssert(parent != old, ("No parent!"));
    FmtAssert(_toBeDeletedNodes.find(parent->id()) == _toBeDeletedNodes.end(),
              ("parent: %d deleted!\n", parent->id()));
    fprintf(stderr, "WN->CGNodeId: Remapping deleted node : %d to "
            "parent: %d\n", old->id(), parent->id());
    WN_MAP_CGNodeId_Set(wn, parent->id());
  }
}

void
ConstraintGraph::deleteOptimizedNodes()
{
  for (hash_set<CGNodeId>::const_iterator iter = _toBeDeletedNodes.begin();
       iter != _toBeDeletedNodes.end(); iter++) {
    fprintf(stderr, "Deleting node %d\n", *iter);
    deleteNode(cgNode(*iter));
  }
}

StInfo *
ConstraintGraphNode::stInfo() 
{ 
  return cg()->stInfo(_cg_st_idx); 
}

bool
ConstraintGraphNode::isOnlyOffset()
{
  // For now we know only about PREGs
  return stInfo()->checkFlags(CG_ST_FLAGS_PREG);
}

bool
ConstraintGraphNode::canBeDeleted()
{
  if ( checkFlags(CG_NODE_FLAGS_ADDR_TAKEN)    ||
       checkFlags(CG_NODE_FLAGS_ACTUAL_RETURN) ||
       checkFlags(CG_NODE_FLAGS_FORMAL_RETURN) ||
       checkFlags(CG_NODE_FLAGS_ACTUAL_PARAM)  ||
       checkFlags(CG_NODE_FLAGS_FORMAL_PARAM)  ||
       checkFlags(CG_NODE_FLAGS_ICALL)         ||
       checkFlags(CG_NODE_FLAGS_NOT_POINTER) )
    return false;

  // we will not have a CG to check for stInfo
  // when creating dummy nodes in checkCGNode
  if (cg()) {
    if (stInfo()->checkFlags(CG_ST_FLAGS_VARARGS))
      return false;
    if (stInfo()->numOffsets() > 1)
      return false;
  }
  return true;
}

// Try adding edge to the in edge set. If the edge already exists
// return the existing edge, else insert the new edge and return it
ConstraintGraphEdge *
ConstraintGraphNode::addInEdge(ConstraintGraphEdge *edge)
{
  // If node is merged only allow adding special PARENT_COPY edges
  if (checkFlags(CG_NODE_FLAGS_MERGED))
    FmtAssert(edge->checkFlags(CG_EDGE_PARENT_COPY),
              ("Only parent copy inEdges allowed"));
  CGEdgeSet &inEdgeSet = _getCGEdgeSet(edge->edgeType(),&_inEdges);
  pair<CGEdgeSet::iterator, bool> p;
  p = inEdgeSet.insert(edge);
  ConstraintGraphEdge *newEdge = *(p.first);
  if (newEdge == edge &&
      edge->edgeType() != ETYPE_SKEW &&
      edge->size() > _maxAccessSize)
    _maxAccessSize = edge->size();
  return newEdge;
}

// Try adding edge to the out edge set. If the edge already exists
// return the existing edge, else insert the new edge and return it
ConstraintGraphEdge *
ConstraintGraphNode::addOutEdge(ConstraintGraphEdge *edge)
{
  // If there is a representative parent, out edges should not be added
  FmtAssert(!checkFlags(CG_NODE_FLAGS_MERGED),
            ("OutEdges not allowed for nodes with representatives"));
  CGEdgeSet &outEdgeSet = _getCGEdgeSet(edge->edgeType(),&_outEdges);
  pair<CGEdgeSet::iterator, bool> p;
  p = outEdgeSet.insert(edge);
  ConstraintGraphEdge *newEdge = *(p.first);
  if (newEdge == edge &&
      edge->edgeType() != ETYPE_SKEW &&
      edge->size() > _maxAccessSize)
    _maxAccessSize = edge->size();
  return newEdge;
}
     
void
ConstraintGraphNode::updateMaxAccessSize()
{
  UINT8 newMax = 0;
  for (CGEdgeListIterator inIter(this,true); inIter != 0; ++inIter) {
    CGEdgeSet edges = *inIter;
    for (CGEdgeSetIterator edgeIter = edges.begin();
        edgeIter != edges.end(); ++edgeIter) {
      ConstraintGraphEdge *e = *edgeIter;
      if (e->edgeType() != ETYPE_SKEW && e->size() > newMax) {
        newMax = e->size();
        // We we find an edge with size equal to current size
        // then we are done.
        if (newMax == _maxAccessSize)
          return;
      }
    }
  }
  for (CGEdgeListIterator outIter(this,false); outIter != 0; ++outIter) {
    CGEdgeSet edges = *outIter;
    for (CGEdgeSetIterator edgeIter = edges.begin();
        edgeIter != edges.end(); ++edgeIter) {
      ConstraintGraphEdge *e = *edgeIter;
      if (e->edgeType() != ETYPE_SKEW && e->size() > newMax) {
        newMax = e->size();
        if (newMax == _maxAccessSize)
          return;
      }
    }
  }
  _maxAccessSize = newMax;
}

void
ConstraintGraphNode::removeInEdge(ConstraintGraphEdge *edge)
{
  CGEdgeSet &inEdgeSet = _getCGEdgeSet(edge->edgeType(),&_inEdges);
  CGEdgeSetIterator iter = inEdgeSet.find(edge);
  if (iter != inEdgeSet.end())
    inEdgeSet.erase(iter);
  if (edge->edgeType() != ETYPE_SKEW && edge->size() == _maxAccessSize)
    updateMaxAccessSize();
}

void
ConstraintGraphNode::removeOutEdge(ConstraintGraphEdge *edge)
{
  CGEdgeSet &outEdgeSet = _getCGEdgeSet(edge->edgeType(),&_outEdges);
  CGEdgeSetIterator iter = outEdgeSet.find(edge);
  if (iter != outEdgeSet.end())
    outEdgeSet.erase(iter);

  if (edge->edgeType() != ETYPE_SKEW && edge->size() == _maxAccessSize)
    updateMaxAccessSize();
}

ConstraintGraphNode::~ConstraintGraphNode()
{
  FmtAssert(canBeDeleted(), ("Cannot delete this node!"));
  FmtAssert(_pointsToList == NULL, ("pointsToList not empty!"));
  FmtAssert(_revPointsToList == NULL, ("revPointsToList not empty!"));
  FmtAssert(_inEdges == NULL, ("inEdges not empty!"));
  FmtAssert(_outEdges == NULL, ("outEdges not empty!"));
}

ModulusRange *
ModulusRange::build(TY &ty, UINT32 offset, MEM_POOL *memPool)
{
  FmtAssert(TY_kind(ty) == KIND_STRUCT,("Expecting only structs"));
  ModulusRange *modRange = 
    CXX_NEW(ModulusRange(offset,offset+TY_size(ty)-1,TY_size(ty),ty), memPool);
  ModulusRange *childRanges = NULL;
  ModulusRange *curRange = NULL;
  for (FLD_HANDLE fld = TY_flist(ty); !fld.Is_Null(); fld = FLD_next(fld)) {
    TY &fty = Ty_Table[FLD_type(fld)];
    ModulusRange *newRange = NULL;
    if (TY_kind(fty) == KIND_ARRAY) {
      UINT32 size = TY_size(fty);
      UINT32 start = offset+FLD_ofst(fld);
      UINT32 end = start+size-1;
      newRange = CXX_NEW(ModulusRange(start,end,size,fty), memPool);
    }
    else if (TY_kind(fty) == KIND_STRUCT)
      newRange = build(fty,offset+FLD_ofst(fld),memPool);
    if (newRange) {
      if (!childRanges)
        childRanges = newRange;
      if (curRange) {
        // If the new range has same start offset as current range  (in case
        // of unions), unify both the ranges to a single flattened range
        if (curRange->_startOffset == newRange->_startOffset) {
          if (newRange->_endOffset > curRange->_endOffset)
            curRange->_endOffset = newRange->_endOffset;
          if (newRange->_modulus < curRange->_modulus)
            curRange->_modulus = newRange->_modulus;
          removeRange(newRange, memPool);
          removeRange(curRange->_child, memPool);
          curRange->_child = NULL;
          newRange = curRange;
        } else
          curRange->_next = newRange;
      }
      curRange = newRange;
    }
  }
  modRange->_child = childRanges;
  return modRange;
}

bool
ModulusRange::flat(TY &ty)
{
  FmtAssert(TY_kind(ty) == KIND_STRUCT,("Expecting only structs"));
  for (FLD_HANDLE fld = TY_flist(ty); !fld.Is_Null(); fld = FLD_next(fld)) {
    TY &fty = Ty_Table[FLD_type(fld)];
    if (TY_kind(fty) == KIND_ARRAY ||
        TY_kind(fty) == KIND_STRUCT)
      return false;
  }
  return true;
}

void
ModulusRange::print(FILE *file, UINT32 indent) {
  for (int i = 0; i < indent; i++)
    fprintf(file," ");
  fprintf(file,"%s [%d, %d] mod: %d\n",
          TY_name(_ty),_startOffset,_endOffset,_modulus);
  if (_child)
    _child->print(file,indent+2);
  if (_next)
    _next->print(file,indent);
}

void
ModulusRange::print(ostream &str,UINT32 indent)
{
  for (int i = 0; i < indent; i++)
    str << " ";
  str << TY_name(_ty) << " [" << _startOffset << ", " << _endOffset << "]";
  str << " mod: " << _modulus << endl;
  if (_child)
    _child->print(str,indent+2);
  if (_next)
    _next->print(str,indent);
}

StInfo::StInfo(ST_IDX st_idx, MEM_POOL *memPool)
  : _flags(0),
    _varSize(0),
    _maxOffsets(32),
    _numOffsets(0),
    _firstOffset(0)
{
  ST *st = &St_Table[st_idx];
  TY& ty = Ty_Table[ST_type(st)];
  // For arrays set size to element size
  if (TY_kind(ty) == KIND_ARRAY) {
    TY &etype = Ty_Table[TY_etype(ty)];
    _varSize = TY_size(etype);
  } else
    _varSize = ST_size(st);
  // As a fall back we resort to setting the size to the
  // current pointer size to ensure a valid modulus for
  // this type.
  if (_varSize == 0)
    _varSize = Pointer_Size;

  if (TY_kind(ty) != KIND_STRUCT || ModulusRange::flat(ty))
    _u._modulus = _varSize;
  else {
    addFlags(CG_ST_FLAGS_MODRANGE);
    _u._modRange = ModulusRange::build(ty,0,memPool);
    _u._modRange->print(stderr);
  }

  // Set the flags
  ST_SCLASS storage_class = ST_sclass(st);
  if (storage_class == SCLASS_FSTATIC ||
      storage_class == SCLASS_COMMON ||
      storage_class == SCLASS_UGLOBAL ||
      storage_class == SCLASS_DGLOBAL ||
      storage_class == SCLASS_UNKNOWN ||
      storage_class == SCLASS_EXTERN)
    addFlags(CG_ST_FLAGS_GLOBAL);

  if (ST_class(st) == CLASS_FUNC)
    addFlags(CG_ST_FLAGS_FUNC);

  if (ST_class(st) == CLASS_PREG)
    addFlags(CG_ST_FLAGS_PREG);

  // Globals are treated context-insensitive
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    addFlags(CG_ST_FLAGS_NOCNTXT);

  // Mark PSTATICs as context-insensitive
  if (storage_class == SCLASS_PSTATIC)
    addFlags(CG_ST_FLAGS_NOCNTXT);

  // Treat every symbol as context-insensitive
  addFlags(CG_ST_FLAGS_NOCNTXT);
}

void
StInfo::applyModulus(void)
{
  ConstraintGraphNode *cur = _firstOffset;
  if (cur && cur->offset() == -1)
    cur = cur->nextOffset();

  UINT32 startOffset, endOffset, modulus;
  while (cur) {
    if (!checkFlags(CG_ST_FLAGS_MODRANGE)) {
      modulus = _u._modulus;
      startOffset = 0;
      endOffset = _varSize;
    }
    else
      modulus = _u._modRange->modulus(cur->offset(),startOffset,endOffset);

    if (cur->offset() >= startOffset + modulus) {
      UINT32 newOffset = startOffset + cur->offset() % modulus;
      ConstraintGraphNode *modNode =
          cur->cg()->getCGNode(cur->cg_st_idx(),newOffset);

      // Now we merge the two nodes together.  NOTE: the original
      // node remains and uses the modulus offset node as its
      // parent, for nodes that may have the original in their
      // points-to sets.
      modNode->merge(cur);
      cur->repParent(modNode);
    }
    cur = cur->nextOffset();
  }
}

void
StInfo::modulus(UINT32 mod, UINT32 offset)
{
  UINT32 startOffset, endOffset;
  if (!checkFlags(CG_ST_FLAGS_MODRANGE)) {
    _u._modulus = mod;
    startOffset = 0;
    endOffset = _varSize;
  }
  else
    _u._modRange->modulus(offset,mod,startOffset,endOffset);

  if(_firstOffset && _firstOffset->cg()->buildComplete()) {
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      fprintf(stderr,"Setting modulus of %s to %d\n",
              ST_name(&St_Table[SYM_ST_IDX(_firstOffset->cg_st_idx())]),mod);
    // We must apply the new modulus to all existing offsets
    ConstraintGraphNode *cur = _firstOffset;
    if (cur && cur->offset() == -1) cur = cur->nextOffset();
    while (cur && cur->offset() < startOffset + mod)
      cur = cur->nextOffset();

    while (cur && cur->offset() <= endOffset) {
      UINT32 newOffset = startOffset + cur->offset() % mod;
      ConstraintGraphNode *modNode =
          cur->cg()->getCGNode(cur->cg_st_idx(),newOffset);

      // Now we merge the two nodes together.  NOTE: the original
      // node remains and uses the modulus offset node as its
      // parent, for nodes that may have the original in their
      // points-to sets.
      modNode->merge(cur);
      cur->repParent(modNode);

      cur = cur->nextOffset();
    }
  }
}

void
ConstraintGraph::adjustPointsToForKCycle(UINT32 kCycle,
                                         const PointsTo &src,
                                         PointsTo &dst)
{
  FmtAssert(&src != &dst,("Expected two different sets"));
  if (kCycle == 0) {
    dst.setUnion(src);
    return;
  }

  for (PointsTo::SparseBitSetIterator iter(&src,0); iter != 0; iter++)
  {
    CGNodeId nodeId = *iter;
    ConstraintGraphNode *node = cgNode(nodeId);
    // If the resulting K value is still larger than the size
    // of a pointer, then we simply adjust the modulus of the
    // underlying symbol to the min(rep->inKCycle(),modulus)
    if (kCycle > Pointer_Size) {
      StInfo *st = node->cg()->stInfo(node->cg_st_idx());
      if (kCycle < st->modulus(node->offset()))
        st->modulus(kCycle,node->offset());
      if (node->offset() >= st->modulus(node->offset()))
        node = node->cg()->getCGNode(node->cg_st_idx(),node->offset());
    }
    // If the K value is < the size of a pointer all offsets
    // are mapped to -1.
    else {
      if (node->offset() != -1)
        node = node->cg()->getCGNode(node->cg_st_idx(),-1);
    }
    dst.setBit(node->id());
  }
}

void 
ConstraintGraph::adjustPointsToForKCycle(ConstraintGraphNode *cgNode)
{
  for (PointsToIterator pti(cgNode); pti != 0; ++pti) {
    PointsTo &ptsTo = *pti;
    PointsTo tmp(Malloc_Mem_Pool);
    adjustPointsToForKCycle(cgNode->inKCycle(), ptsTo, tmp);
    ptsTo.clear();
    ptsTo.setUnion(tmp);
  }
}

bool
ConstraintGraph::exprMayPoint(WN *const wn)
{
  TYPE_ID desc = WN_desc(wn);
  if (MTYPE_is_float(desc) || MTYPE_is_complex(desc) || MTYPE_is_vector(desc)) {
     return false;
  }

  CGNodeId id = WN_MAP_CGNodeId_Get(wn);
  if (id != 0 && cgNode(id)->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
      return false;

  switch (WN_operator(wn)) {
    case OPR_ABS:
    case OPR_MPY:
    case OPR_DIV:
    case OPR_MOD:
    case OPR_REM:
    case OPR_NEG:
    case OPR_RND:
    case OPR_TRUNC:
    case OPR_CEIL:
    case OPR_FLOOR:
    case OPR_BNOT:
    case OPR_BIOR:
    case OPR_BAND:
    case OPR_BXOR:
    case OPR_LNOT:
    case OPR_LAND:
    case OPR_LIOR:
    case OPR_CAND:
    case OPR_CIOR:
    case OPR_LT:
    case OPR_GT:
    case OPR_LE:
    case OPR_GE:
    case OPR_EQ:
    case OPR_NE:
    case OPR_PAIR:
    case OPR_SQRT:
    case OPR_INTRINSIC_OP:
    case OPR_FIRSTPART:
    case OPR_SECONDPART:
      return false;
    default:
      return true;
  }
  return true;
}

bool 
ConstraintGraph::addCGNodeInSortedOrder(StInfo *stInfo, 
                                        ConstraintGraphNode *cgNode)
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
      // Node already exists
      if (prevn->offset() == cgNode->offset())
        return false;
      cgNode->nextOffset(prevn->nextOffset());
      prevn->nextOffset(cgNode);
    }
    else {
      cgNode->nextOffset(n);
      stInfo->firstOffset(cgNode);
    }
  }
  return true;
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
  // There are a number of storage classes for which we do
  // not want to compute the base, i.e. the base storage class
  // uninteresting and obfuscates things.
  if (ST_sclass(st) == SCLASS_TEXT ||
      ST_sclass(st) == SCLASS_FORMAL ||
      ST_sclass(st) == SCLASS_FSTATIC||
      ST_sclass(st) == SCLASS_PSTATIC||
      ST_sclass(st) == SCLASS_DGLOBAL||
      ST_sclass(st) == SCLASS_UGLOBAL) {
    declared_base_idx = st_idx;
    return;
  }

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

    CallSideEffectInfo call_info = 
      CallSideEffectInfo::GetCallSideEffectInfo(call_wn);

    if (call_info.isHeapAllocating())
      return TRUE;
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
          Preg_Is_Dedicated(WN_offset(rhs)));
}

static BOOL
stmtStoresReturnValueToCaller(const WN *const stmt)
{
  return ((WN_operator(stmt) == OPR_STID) &&
          (ST_sclass(WN_st(stmt)) == SCLASS_REG) &&
          Preg_Is_Dedicated(WN_offset(stmt)));
}

ConstraintGraphNode *
ConstraintGraph::genTempCGNode()
{
  PREG_NUM preg = Create_Preg(Pointer_type, "_cgPreg");
  preg *= CG_PREG_SCALE;
  ST *preg_st = MTYPE_To_PREG(Pointer_type);
  ConstraintGraphNode *tmpCGNode = getCGNode(CG_ST_st_idx(preg_st), preg);
  stInfo(tmpCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_TEMP);
  return tmpCGNode;
}

void 
ConstraintGraph::buildCG(WN *entryWN)
{
  if (Get_Trace(TP_ALIAS,NYSTROM_CG_PRE_FLAG)){
    fprintf(stderr, "Building ConstraintGraph for func %s\n",
        ST_name(WN_st(entryWN)));
    fdump_tree(stderr, entryWN);
  }

  // Create a varArg symbol to denote all parameters after the last fixed one
  if (TY_is_varargs(ST_pu_type(WN_st(entryWN)))) {
    ST *tmpST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgVarArgs",
                                      CLASS_VAR, SCLASS_AUTO);
    _varArgs = getCGNode(CG_ST_st_idx(tmpST), 0);
    stInfo(_varArgs->cg_st_idx())->addFlags(CG_ST_FLAGS_VARARGS);
  }
  
  processWN(entryWN);
 
  // Add the varArgs parameters after all other parameters have been processed
  if (_varArgs) {
    _varArgs->addFlags(CG_NODE_FLAGS_FORMAL_PARAM);
    _parameters.push_back(_varArgs->id());
  }
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
    if (cgNode) {
      cgNode->addFlags(CG_NODE_FLAGS_FORMAL_RETURN);
      _returns.push_back(cgNode->id());
    }
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

  // For non-pointer lhs, check whether rhs may point
  if ((TY_kind(WN_object_ty(stmt)) != KIND_POINTER) && !exprMayPoint(rhs)) {
    if (OPERATOR_is_scalar_store(WN_operator(stmt)))
      cgNodeLHS->addFlags(CG_NODE_FLAGS_NOT_POINTER);
    return WN_next(stmt);
  }

  // Handle ALLOCA which must appear as the rhs of a store 
  if (WN_operator(rhs) == OPR_ALLOCA) {
    TY &stack_ptr_ty = Ty_Table[WN_ty(stmt)];
    FmtAssert(TY_kind(stack_ptr_ty) == KIND_POINTER,
              ("Expecting KIND_POINTER"));
    TY_IDX stack_ty_idx = TY_pointed(stack_ptr_ty);
    TY &stack_ty = Ty_Table[stack_ty_idx];
    // We create a local variable that represents the dynamically
    // allocated stack location
    ConstraintGraphNode *stackCGNode;
    // If the pointed to type is a struct, create a symbol of that type
    // else create a symbol of maxTypeSize
    if (TY_kind(stack_ty) == KIND_STRUCT) {
      ST *stackST = Gen_Temp_Named_Symbol(stack_ty_idx, "_cgStack",
                                          CLASS_VAR, SCLASS_AUTO);
      stackCGNode = getCGNode(CG_ST_st_idx(stackST), 0);
      stInfo(stackCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_STACK);
    } else {
      ST *stackST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgStack",
                                          CLASS_VAR, SCLASS_AUTO);
      stackCGNode = getCGNode(CG_ST_st_idx(stackST), 0);
      stInfo(stackCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_STACK);
      stInfo(stackCGNode->cg_st_idx())->modulus(maxTypeSize);
      stInfo(stackCGNode->cg_st_idx())->varSize(0);
    }
    // Add the stack location to the points to set of the lhs
    cgNodeLHS->addPointsTo(stackCGNode, CQ_HZ);
    return WN_next(stmt);
  }

  if (cgNodeRHS == NULL) {
    cgNodeRHS = genTempCGNode();
    cgNodeRHS->addFlags(CG_NODE_FLAGS_UNKNOWN);
    fprintf(stderr, "***WARNING!!! Setting RHS of STORE to UNKNOWN*******\n");
    fdump_tree(stderr, stmt);
    fprintf(stderr, "****************************************************\n");
  }

  OPERATOR opr = WN_operator(stmt);

  INT32 size;
  if (WN_desc(stmt) == MTYPE_BS)
    size = TY_size(WN_object_ty(stmt));
  else
    size = WN_object_size(stmt);
  if (OPERATOR_is_scalar_store(opr)) {
    bool added = false;
    // add a copy edge x <-- y
    addEdge(cgNodeRHS, cgNodeLHS, ETYPE_COPY, CQ_HZ, size, added);
    if (stmtStoresReturnValueToCaller(stmt)) {
      cgNodeLHS->addFlags(CG_NODE_FLAGS_FORMAL_RETURN);
      _returns.push_back(cgNodeLHS->id());
    }
  } else if (opr == OPR_ISTORE || opr == OPR_ISTBITS || opr == OPR_MSTORE) {
    bool added = false;
    // Add store edge x *=<-- y
    addEdge(cgNodeRHS, cgNodeLHS, ETYPE_STORE, CQ_HZ, size, added);
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
        ConstraintGraphNode *tmpCGNode = genTempCGNode();
        if (stInfo(cgNode->cg_st_idx())->checkFlags(CG_ST_FLAGS_NOCNTXT))
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
        _parameters.push_back(cgNode->id());
        break;
      case OPR_INTCONST:
      case OPR_CONST:
        cgNode = notAPointer();
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
      case OPR_MLOAD:
      case OPR_ILOAD: {
        ConstraintGraphNode *addrCGNode = processExpr(WN_kid0(expr));
        // If the number of bytes is a const, treat it just like an iload
        if (opr == OPR_MLOAD && (WN_operator(WN_kid1(expr)) != OPR_INTCONST)) {
          processExpr(WN_kid1(expr));
          return NULL;
        }
        if (!exprMayPoint(expr)) {
          WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
          return notAPointer();
        }
        if (!addrCGNode || addrCGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
          return NULL;
        // Create a new temp CGNode
        ConstraintGraphNode *tmpCGNode = NULL;
        if (opr == OPR_MLOAD) {
          // For MLOADS, create a symbol, since it can be greater
          // than pointer size
          ST *tmpST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgSym",
                                            CLASS_VAR, SCLASS_AUTO);
          tmpCGNode = getCGNode(CG_ST_st_idx(tmpST), 0);
          stInfo(tmpCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_TEMP);
          stInfo(tmpCGNode->cg_st_idx())->varSize(WN_const_val(WN_kid1(expr)));
          stInfo(tmpCGNode->cg_st_idx())->modulus(WN_const_val(WN_kid1(expr)));
        } else {
          tmpCGNode = genTempCGNode();
        }
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
        // For a non-zero offset, we need to construct a new tmp preg, t1
        // such that t1 = y + offset (a skew)
        if (WN_offset(expr) != 0) {
          ConstraintGraphNode *tmp1CGNode = genTempCGNode();
          bool added = false;
          addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                  WN_offset(expr), added);
          addrCGNode = tmp1CGNode;
          // Adjust the CGNode associated with the address (kid0)
          // with the newly created temp CGNode
          WN_MAP_CGNodeId_Set(WN_kid0(expr), tmp1CGNode->id());
        }
        bool added = false;
        INT32 size;
        if (WN_desc(expr) == MTYPE_BS)
          size = TY_size(WN_object_ty(expr));
        else
          size = WN_object_size(expr);
        addEdge(addrCGNode, tmpCGNode, ETYPE_LOAD, CQ_HZ, size, added);
        return tmpCGNode;
      }
      default:
        return NULL;
    }
  } else if (opr == OPR_ARRAY) {
    for (INT i = 1; i < WN_kid_count(expr); i++)
      processExpr(WN_kid(expr, i));
    ConstraintGraphNode *cgNode = processExpr(WN_kid0(expr));
    if (!cgNode || cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
      return NULL;
    // Since it is a self skew, we just set the inKcycle value and adjust
    // the points to set
    cgNode->inKCycle(gcd(cgNode->inKCycle(), (UINT32)WN_element_size(expr)));
    adjustPointsToForKCycle(cgNode);
    WN_MAP_CGNodeId_Set(expr, cgNode->id());
    return cgNode;
  } else {
    for (INT i = 0; i < WN_kid_count(expr); i++) {
      WN *kid = WN_kid(expr, i);
      processExpr(kid);
    }

    if (!exprMayPoint(expr)) {
      WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
      return notAPointer();
    }

    // TODO: This might be more strict than necessary
    if (opr == OPR_CVT || opr == OPR_CVTL) 
    {
      ConstraintGraphNode *cgn = NULL;
      if (MTYPE_byte_size(WN_rtype(expr)) < Pointer_Size ||
          !MTYPE_is_unsigned(WN_rtype(expr)) || 
          !MTYPE_is_unsigned(WN_rtype(WN_kid0(expr))))
        cgn = notAPointer();
      else {
        CGNodeId cgNodeId = WN_MAP_CGNodeId_Get(WN_kid0(expr));
        cgn = cgNodeId ? cgNode(cgNodeId) : NULL;
        if (cgn == NULL || cgn->checkFlags(CG_NODE_FLAGS_UNKNOWN))
          return NULL;
      }
      WN_MAP_CGNodeId_Set(expr, cgn->id());
      return cgn;
    }
    else if (opr == OPR_EXTRACT_BITS)
    {
      CGNodeId kid0CGNodeId = WN_MAP_CGNodeId_Get(WN_kid0(expr));
      ConstraintGraphNode *kid0CGNode = 
                           kid0CGNodeId ? cgNode(kid0CGNodeId) : NULL;
      if (kid0CGNode == NULL ||
          kid0CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
        return NULL;
      if (kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
        return notAPointer();
      }
      WN_MAP_CGNodeId_Set(expr, kid0CGNodeId);
      return kid0CGNode;
    }
    else if (opr == OPR_SELECT || opr == OPR_CSELECT)
    {
      CGNodeId kid1CGNodeId = WN_MAP_CGNodeId_Get(WN_kid1(expr));
      ConstraintGraphNode *kid1CGNode = 
                           kid1CGNodeId ? cgNode(kid1CGNodeId) : NULL;
      CGNodeId kid2CGNodeId = WN_MAP_CGNodeId_Get(WN_kid2(expr));
      ConstraintGraphNode *kid2CGNode = 
                           kid2CGNodeId ? cgNode(kid2CGNodeId) : NULL;

      // If either is null/unknown return null
      if (kid1CGNode == NULL ||
          kid1CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN) ||
          kid2CGNode == NULL ||
          kid2CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
         return NULL;

      // Both are not a pointer, therefore the result will not be a pointer
      if (kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) &&
          kid2CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
        return notAPointer();
      }

      // If one of the kids is possible pointer and other is not
      // return the possible pointer
      if (!kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
          kid2CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        WN_MAP_CGNodeId_Set(expr, kid1CGNode->id());
        return kid1CGNode;
      }
      // Check the other kid
      if (!kid2CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
          kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        WN_MAP_CGNodeId_Set(expr, kid2CGNode->id());
        return kid2CGNode;
      }

      // both are possible pointers
      ConstraintGraphNode *rep = genTempCGNode();
      bool added = false;
      addEdge(kid1CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
      addEdge(kid2CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
      WN_MAP_CGNodeId_Set(expr, rep->id());
      return rep;
    }
    // Handle binary operators which are not handled by exprMayPoint
    else if (WN_kid_count(expr) == 2) 
    {
      CGNodeId kid0CGNodeId = WN_MAP_CGNodeId_Get(WN_kid0(expr));
      ConstraintGraphNode *kid0CGNode = 
                           kid0CGNodeId ? cgNode(kid0CGNodeId) : NULL;
      CGNodeId kid1CGNodeId = WN_MAP_CGNodeId_Get(WN_kid1(expr));
      ConstraintGraphNode *kid1CGNode = 
                           kid1CGNodeId ? cgNode(kid1CGNodeId) : NULL;

      // If either is null/unknown return null
      if (kid0CGNode == NULL ||
          kid0CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN) ||
          kid1CGNode == NULL ||
          kid1CGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
         return NULL;

      // Both are not a pointer, therefore the result will not be a pointer
      if (kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) &&
          kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
        return notAPointer();
      }

      // Skews
      if (opr == OPR_ADD || opr == OPR_SUB) 
      {
        // Check for skew if one of the kids is a pointer and other
        // is a constant
        ConstraintGraphNode *kidCGNode = NULL;
        if (!kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
          kidCGNode = kid0CGNode;
        else if (!kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
          kidCGNode = kid1CGNode;
     
        WN *intConst = NULL;
        if (WN_operator(WN_kid0(expr)) == OPR_INTCONST)
          intConst = WN_kid0(expr);
        else if (WN_operator(WN_kid1(expr)) == OPR_INTCONST)
          intConst = WN_kid1(expr);
        
        if (kidCGNode && intConst) {
          // Create a new tmp preg
          ConstraintGraphNode *tmpCGNode = genTempCGNode();
          WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
          bool added = false;
          addEdge(kidCGNode, tmpCGNode, ETYPE_SKEW, CQ_HZ, 
                  WN_const_val(intConst), added);
          return tmpCGNode;
        }

        // If one of the kids is possible pointer and other is not
        // we have some unknown skew. Create a self skew cycle and set
        // the skew size to either 1 (conservative) or if the ST associated
        // with the node is known and is of a pointer type, set it to the
        // size of the pointed-to type.
        if (!kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          ST *st = &St_Table[SYM_ST_IDX(kid0CGNode->cg_st_idx())];
          TY &ty = Ty_Table[ST_type(st)];
          INT32 size = 1;
          if (TY_kind(ty) == KIND_POINTER)
            size = TY_size(Ty_Table[TY_pointed(ty)]);
          // Since it is a self skew, we just set the inKcycle value and adjust
          // the points to set
          kid0CGNode->inKCycle(gcd(kid0CGNode->inKCycle(), (UINT32)size));
          adjustPointsToForKCycle(kid0CGNode);
          WN_MAP_CGNodeId_Set(expr, kid0CGNode->id());
          return kid0CGNode;
        }
        // Check the other kid
        if (!kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          ST *st = &St_Table[SYM_ST_IDX(kid1CGNode->cg_st_idx())];
          TY &ty = Ty_Table[ST_type(st)];
          INT32 size = 1;
          if (TY_kind(ty) == KIND_POINTER)
            size = TY_size(Ty_Table[TY_pointed(ty)]);
          // Since it is a self skew, we just set the inKcycle value and adjust
          // the points to set
          kid1CGNode->inKCycle(gcd(kid1CGNode->inKCycle(), (UINT32)size));
          adjustPointsToForKCycle(kid1CGNode);
          WN_MAP_CGNodeId_Set(expr, kid1CGNode->id());
          return kid1CGNode;
        }

        // both are pointers
        // Since we have an unknown skew create a cycle between the two nodes
        // with the skew size set to either 1
        // (conservative) or if the ST associated with the node is known and 
        // is of a pointer type, set it to the size of the pointed-to type. 
        // Compute size from first kid
        INT32 size0 = 1;
        ST *kid0st = &St_Table[SYM_ST_IDX(kid0CGNode->cg_st_idx())];
        TY &kid0ty = Ty_Table[ST_type(kid0st)];
        if (TY_kind(kid0ty) == KIND_POINTER)
          size0 = TY_size(Ty_Table[TY_pointed(kid0ty)]);
        // Compute size from other kid
        INT32 size1 = 1;
        ST *kid1st = &St_Table[SYM_ST_IDX(kid1CGNode->cg_st_idx())];
        TY &kid1ty = Ty_Table[ST_type(kid1st)];
        if (TY_kind(kid1ty) == KIND_POINTER)
          size1 = TY_size(Ty_Table[TY_pointed(kid1ty)]);
        INT32 size = gcd(size0, size1);
        // Add cycle
        bool added = false;
        addEdge(kid0CGNode, kid1CGNode, ETYPE_SKEW, CQ_HZ, size, added);
        addEdge(kid1CGNode, kid0CGNode, ETYPE_SKEW, CQ_HZ, size, added);
        WN_MAP_CGNodeId_Set(expr, kid0CGNode->id());
        return kid0CGNode;
      }
      else if (opr == OPR_MIN || opr == OPR_MAX) 
      {
        // If one of the kids is possible pointer and other is not
        // return the possible pointer
        if (!kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          WN_MAP_CGNodeId_Set(expr, kid0CGNode->id());
          return kid0CGNode;
        }
        // Check the other kid
        if (!kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          WN_MAP_CGNodeId_Set(expr, kid1CGNode->id());
          return kid1CGNode;
        }

        // both are possible pointers
        ConstraintGraphNode *rep = genTempCGNode();
        bool added = false;
        addEdge(kid0CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
        addEdge(kid1CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
        WN_MAP_CGNodeId_Set(expr, rep->id());
        return rep;
      }
      else
      {
        // Any other binary operator

        // If one of the kids is possible pointer and other is not
        // return the possible pointer
        if (!kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          WN_MAP_CGNodeId_Set(expr, kid0CGNode->id());
          return kid0CGNode;
        }
        // Check the other kid
        if (!kid1CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER) && 
            kid0CGNode->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
          WN_MAP_CGNodeId_Set(expr, kid1CGNode->id());
          return kid1CGNode;
        }

        if (opr == OPR_SHL || opr == OPR_ASHR || opr == OPR_LSHR) {
          // both are possible pointers
          ConstraintGraphNode *rep = genTempCGNode();
          bool added = false;
          addEdge(kid0CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
          addEdge(kid1CGNode, rep, ETYPE_COPY, CQ_HZ, 1, added);
          WN_MAP_CGNodeId_Set(expr, rep->id());
          return rep;
        }

        // UNKNOWN for rest
        return NULL;
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
    ConstraintGraphNode *addrCGNode = NULL;
    addrCGNode = processExpr(WN_kid1(stmt));
    // If the number of bytes is a const, treat it just like an istore
    if (opr == OPR_MSTORE && (WN_operator(WN_kid2(stmt)) != OPR_INTCONST)) {
      processExpr(WN_kid2(stmt));
      addrCGNode = NULL;
    }
    if (addrCGNode != NULL) {
      // For a non-zero offset, we need to construct a new tmp preg, t1
      // such that t1 = x + offset (a skew)
      if (WN_offset(stmt) != 0) {
        ConstraintGraphNode *tmp1CGNode = genTempCGNode();
        bool added = false;
        addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, 
                WN_offset(stmt), added);
        addrCGNode = tmp1CGNode;
      }
    }
    cgNodeLHS = addrCGNode;
  }

  if (cgNodeLHS == NULL) {
    // Create a temp preg node and mark it UNKNOWN
    ConstraintGraphNode *tmpCGNode = genTempCGNode();
    tmpCGNode->addFlags(CG_NODE_FLAGS_UNKNOWN);
    cgNodeLHS = tmpCGNode;
    fprintf(stderr, "***WARNING!!! Setting LHS of STORE to UNKNOWN*******\n");
    fdump_tree(stderr, stmt);
    fprintf(stderr, "****************************************************\n");
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
    ConstraintGraphNode *tmpCGNode = genTempCGNode();
    tmpCGNode->addFlags(CG_NODE_FLAGS_UNKNOWN);
    fprintf(stderr, "***WARNING!!! Setting Param to UNKNOWN**********\n");
    fdump_tree(stderr, wn);
    fprintf(stderr, "************************************************\n");
    return tmpCGNode;
  } 
}

WN *
ConstraintGraph::handleCall(WN *callWN)
{
  OPCODE opc = WN_opcode(callWN);
  OPERATOR opr = OPCODE_operator(opc);

  INT numParms;

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
  }

  // Create a new call site
  CallSite *callSite = CXX_NEW(CallSite(opr == OPR_ICALL || opr == OPR_VFCALL,
                                        _nextCallSiteId++, _memPool), _memPool);
  _callSiteMap[callSite->id()] = callSite;
  WN_MAP_CallSiteId_Set(callWN, callSite->id());

  // For indirect calls, set the CGNodeId to the ConstraintGraphNode
  // corresponding to the address of the call. For direct calls,
  // set the st_idx of call. Else, mark UNKNOWN
  if ((opr == OPR_ICALL || opr == OPR_VFCALL) && cgNode) {
    callSite->cgNodeId(cgNode->id());
    if (TY_is_varargs(WN_ty(callWN)))
      callSite->addFlags(CS_FLAGS_HAS_VARARGS);
  } else if (opr == OPR_CALL) {
    callSite->st_idx(WN_st_idx(callWN));
    // Check for varargs
    if (TY_is_varargs(ST_pu_type(WN_st(callWN))))
      callSite->addFlags(CS_FLAGS_HAS_VARARGS);
  } else if (opr == OPR_INTRINSIC_CALL) {
    callSite->addFlags(CS_FLAGS_INTRN);
    callSite->intrinsic((INTRINSIC)WN_intrinsic(callWN));
    // If we are calling va_start(), then we need to make sure
    // that we correctly represent the fact that the variable
    // arguments are being retrieved from two different locations
    // on the stack.  In x86-64, this is the register save area
    // represented by symbols _temp_varargnnn and the caller's
    // stack frame represented by the UpFormal segment.  We will
    // implicitly map all of these symbols to the single node
    // referenced by the va_list.
    if (WN_intrinsic(callWN) == INTRN_VA_START) {
      FmtAssert(_varArgs,
                 ("Found _va_start() call, expected internal CG varargs node"));
      StInfo *vaStInfo = stInfo(_varArgs->cg_st_idx());
      bool nonNullVarArgSym = false;
      for (INT i = First_Int_Preg_Param_Offset;
          i < First_Int_Preg_Param_Offset+MAX_NUMBER_OF_REGISTER_PARAMETERS;
          ++i) {
        PLOC ploc = { i,0,0,0,0 };
        ST *st = Get_Vararg_Symbol(ploc);
        if (st) {
          _cgStInfoMap[CG_ST_st_idx(st)] = vaStInfo;
          nonNullVarArgSym = true;
        }
      }
      // Unless we retrieved a non-null vararg symbol, then
      // we have most likely not initialized the stack frame.
      // This means the upformal segment ST is junk left over
      // from a previous PU.  This can happen when building
      // the constraint graph at -O3 for example.
      if (nonNullVarArgSym) {
        ST *st = Get_Upformal_Segment();
        if (st)
          _cgStInfoMap[CG_ST_st_idx(st)] = vaStInfo;
      }
    }
  } else
    callSite->addFlags(CS_FLAGS_UNKNOWN);

  // Process params
  for (INT i = 0; i < numParms; ++i) {
    WN *parmWN = WN_kid(callWN, i);
    if (WN_parm_flag(parmWN) & WN_PARM_DUMMY)
      continue;
    ConstraintGraphNode *cgNode = processParam(parmWN);
    cgNode->addFlags(CG_NODE_FLAGS_ACTUAL_PARAM);
    callSite->addParm(cgNode->id());
    WN_MAP_CGNodeId_Set(parmWN, cgNode->id());
  }

  // For a VA_START, add the _varArgs node to the pts to set of
  // of the first parameter which is of type va_list
  if (callSite->isIntrinsic() && callSite->intrinsic() == INTRN_VA_START) {
    FmtAssert(WN_operator(WN_kid0(WN_kid0(callWN))) == OPR_LDA, 
              ("Expecting LDA"));
    CGNodeId id = WN_MAP_CGNodeId_Get(WN_kid0(WN_kid0(callWN)));
    // For a LDA, since we create a temp node with the address in the
    // points-to-set of the temp node (t {va_list}), we need to crack open
    // the pts-to-set of t to get to va_list and then add _varArgs to
    // the pts-to-set of va_list
    ConstraintGraphNode *tmpNode = ConstraintGraph::cgNode(id);
    const PointsTo& ptsGBL = tmpNode->pointsTo(CQ_GBL);
    const PointsTo& ptsHZ = tmpNode->pointsTo(CQ_HZ);
    if (!ptsGBL.isEmpty()) {
      for (PointsTo::SparseBitSetIterator iter(&ptsGBL, 0); iter != 0; ++iter) {
        ConstraintGraphNode *valistNode = ConstraintGraph::cgNode(*iter);
        stInfo(valistNode->cg_st_idx())->modulus(Pointer_Size);
        valistNode->addPointsTo(_varArgs, CQ_HZ);
      }
    } else if (!ptsHZ.isEmpty()) {
      for (PointsTo::SparseBitSetIterator iter(&ptsHZ, 0); iter != 0; ++iter) {
        ConstraintGraphNode *valistNode = ConstraintGraph::cgNode(*iter);
        stInfo(valistNode->cg_st_idx())->modulus(Pointer_Size);
        valistNode->addPointsTo(_varArgs, CQ_HZ);
      }
    }
  }

  // Process the return value from the call
  WN *stmt = WN_next(callWN);
  if (stmt != NULL && stmtStoresReturnValueFromCallee(stmt)) {
    ConstraintGraphNode *cgNode = processLHSofStore(stmt);
    cgNode->addFlags(CG_NODE_FLAGS_ACTUAL_RETURN);

    // Create a heap node
    if (calleeReturnsNewMemory(callWN)) {
      ConstraintGraphNode *heapCGNode;
      TY &heap_ptr_ty = Ty_Table[WN_ty(stmt)];
      FmtAssert(TY_kind(heap_ptr_ty) == KIND_POINTER,
                ("Expecting KIND_POINTER"));
      TY_IDX heap_ty_idx = TY_pointed(heap_ptr_ty);
      TY &heap_ty = Ty_Table[heap_ty_idx];
      // If the pointed to type is a struct, create a symbol of that type
      // else create a symbol of maxTypeSize
      if (TY_kind(heap_ty) == KIND_STRUCT) {
        ST *heapST = Gen_Temp_Named_Symbol(heap_ty_idx, "_cgHeap",
                                           CLASS_VAR, SCLASS_AUTO);
        heapCGNode = getCGNode(CG_ST_st_idx(heapST), 0);
        stInfo(heapCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_HEAP);
      } else {
        ST *heapST = Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgHeap",
                                           CLASS_VAR, SCLASS_AUTO);
        heapCGNode = getCGNode(CG_ST_st_idx(heapST), 0);
        stInfo(heapCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_HEAP);
        stInfo(heapCGNode->cg_st_idx())->modulus(maxTypeSize);
        stInfo(heapCGNode->cg_st_idx())->varSize(0);
      }
      cgNode->addPointsTo(heapCGNode,CQ_HZ);
    }

    callSite->returnId(cgNode->id());

    stmt = WN_next(stmt);
  }

  return stmt;
}

ConstraintGraphNode *
ConstraintGraph::getCGNode(WN *wn)
{
  FmtAssert(OPERATOR_is_scalar_store(WN_operator(wn)) ||
            OPCODE_is_leaf(WN_opcode(wn)), ("Can handle only leaf nodes"));
  ST *st = &St_Table[WN_st_idx(wn)];
  INT64 offset = WN_offset(wn);
  ST *base_st;
  INT64 base_offset;

  Expand_ST_into_base_and_ofst(st, offset, &base_st, &base_offset);

  if (WN_desc(wn) == MTYPE_BS) {
    UINT cur_field_id = 0;
    UINT64 field_offset = 0;
    FLD_HANDLE fld = FLD_And_Offset_From_Field_Id(WN_ty(wn), WN_field_id(wn),
                                                  cur_field_id, field_offset);
    base_offset += field_offset;
  }

  // Scale preg offsets by Pointer_Size to avoid overlaps with other registers
  if (ST_class(base_st) == CLASS_PREG)
    base_offset *= CG_PREG_SCALE;

  if (base_offset < 0)
    base_offset = -base_offset;

  return getCGNode(CG_ST_st_idx(base_st), base_offset);
}

// Add edge between src and dest, return the newly added edge if it does
// not exist and set added = true, else return the existing edge and
// set added = false
ConstraintGraphEdge *
ConstraintGraph::addEdge(ConstraintGraphNode *src, ConstraintGraphNode *dest,
                         CGEdgeType etype, CGEdgeQual qual, INT32 sizeorSkew, 
                         bool &added, UINT16 flags)
{
  ConstraintGraphEdge cgEdge(src, dest, etype, qual, sizeorSkew);

  ConstraintGraphEdge *retSrcEdge = src->outEdge(&cgEdge);
  ConstraintGraphEdge *retDestEdge = dest->inEdge(&cgEdge);

  bool edgeExistsInBoth = retSrcEdge && retDestEdge;
  bool edgeExistsInNeither = !retSrcEdge && !retDestEdge;

  if (edgeExistsInNeither) {
    ConstraintGraphEdge *edge =
      CXX_NEW(ConstraintGraphEdge(src, dest, etype, qual, sizeorSkew),
              edgeMemPool);
    edge->addFlags(flags);
    src->addOutEdge(edge);
    dest->addInEdge(edge);
    added = true;
    return edge;
  } else if (edgeExistsInBoth) {
    added = false;
    FmtAssert(retSrcEdge == retDestEdge, ("src and dest edge not same!\n"));
    return retSrcEdge;
  } else  {
    FmtAssert(FALSE, 
              ("Either edge exists in one of src/dest but not in other!\n"));
    return NULL;
  }
}

void
ConstraintGraph::removeEdge(ConstraintGraphEdge *edge)
{
  edge->srcNode()->removeOutEdge(edge);
  edge->destNode()->removeInEdge(edge);
  CXX_DELETE(edge,edgeMemPool);
}

ConstraintGraphNode *
ConstraintGraph::getCGNode(CG_ST_IDX cg_st_idx, INT64 offset)
{
  // Check if we have seen this symbol before
  StInfo *si;
  if (inIPA()) {
    si = stInfo(cg_st_idx);
    if (si == NULL) {
      // Allow globals, since we have a global symtab at IPA
      if (ST_IDX_level(SYM_ST_IDX(cg_st_idx)) == GLOBAL_SYMTAB) {
        si = CXX_NEW(StInfo(SYM_ST_IDX(cg_st_idx), _memPool), _memPool);
        _cgStInfoMap[cg_st_idx] = si;
      } else
        FmtAssert(FALSE, ("I do not know how to create a StInfo in IPA:("));
    }
  } else {
    si = stInfo(cg_st_idx);
    if (si == NULL) {
      si = CXX_NEW(StInfo(SYM_ST_IDX(cg_st_idx), _memPool), _memPool);
      _cgStInfoMap[cg_st_idx] = si;
    }
  }

  if (!si->checkFlags(CG_ST_FLAGS_PREG)) {
    if (offset < -1)
      offset = -offset;
    if (offset != -1)
      offset = offset % si->modulus(offset);
    if (si->varSize() != 0)
      Is_True(offset < si->varSize(), ("getCGNode: offset: %lld >= varSize"
              ": %lld\n", offset, si->varSize()));
  } 

  ConstraintGraphNode *cgNode = NULL;

  // Check if node exists, if so return it
  if ((cgNode = checkCGNode(cg_st_idx, offset)) != NULL)
    return cgNode;

  // In order to control runaway creation of <ST,ofst> pairs that
  // may occur within an inter-procedural skew cycle, we have an
  // upper bound on the number of offsets we will create for a
  // given symbol.  If we reach this point, we are creating a
  // new 'offset'.  At this point any new offsets will be mapped
  // to -1, essentially forcing them to be treated as field
  // insensitive.
  if (!si->checkFlags(CG_ST_FLAGS_PREG)) {
    if (offset != -1 && (si->numOffsets() >= si->maxOffsets())) {
      offset = -1;
      // Check if node exists, if so return it
      if ((cgNode = checkCGNode(cg_st_idx, offset)) != NULL)
        return cgNode;
    }
    si->incrNumOffsets();
  }

  cgNode = CXX_NEW(ConstraintGraphNode(cg_st_idx, offset, this), _memPool);

  // Add it to the _cgNodeToIdMap and the reverse _cgIdToNodeMap
  _cgNodeToIdMap[cgNode] = nextCGNodeId;
  FmtAssert(cgIdToNodeMap.find(nextCGNodeId) == cgIdToNodeMap.end(),
            ("nextCGNodeId: %d already in cgIdToNodeMap\n", nextCGNodeId));
  cgIdToNodeMap[nextCGNodeId] = cgNode;
  cgNode->setId(nextCGNodeId++);

  // Since each PREG is independent, we do not link it to the sorted
  // list of its associated symbol. So, the firstOffset of the StInfo
  // will be NULL and so will the next offset of the ConstraintGraphNode
  if (!si->checkFlags(CG_ST_FLAGS_PREG)) {
    bool added = addCGNodeInSortedOrder(si, cgNode);
    FmtAssert(added, ("Failed to add ConstraintGraphNode"));
  }

  if (cgNode->offset() == -1)
    seedOffsetMinusOnePointsTo(si,cgNode);
  return cgNode;
}

// Checks for a CGNode, return NULL if not present
ConstraintGraphNode *
ConstraintGraph::checkCGNode(CG_ST_IDX cg_st_idx, INT64 offset)
{
  ConstraintGraphNode cgNode(cg_st_idx, offset, NULL);

  CGNodeToIdMapIterator cgIter = _cgNodeToIdMap.find(&cgNode);
  if (cgIter != _cgNodeToIdMap.end())
    return cgIter->first;
  return NULL;
}

PointsTo &
ConstraintGraphNode::_getPointsTo(CGEdgeQual qual, PointsToList **ptl)
{
  PointsTo *pts = _findPointsTo(qual,*ptl);
  if (!pts) {
    MEM_POOL *memPool = cg()->memPool();
    PointsToList *newPTL = CXX_NEW(PointsToList(qual,memPool),memPool);
    PointsToList *tmp = *ptl;
    *ptl = newPTL;
    newPTL->next(tmp);
    pts = newPTL->pointsTo();
  }
  return *pts;
}

// Here we are connecting the actuals from the provided callsite
// to the formals of the callee constraint graph.  Any new edges
// added are inserted into the edge "delta" for the next solution
// pass.
void
ConstraintGraph::connect(CallSiteId id, ConstraintGraph *callee,
                         ST *calleeST, EdgeDelta &delta)
{
  CallSite *cs = callSite(id);

  // Connect actual parameters in caller to formals of callee
  list<CGNodeId>::const_iterator actualIter = cs->parms().begin();
  list<CGNodeId>::const_iterator formalIter = callee->parameters().begin();
  ConstraintGraphNode *lastFormal = NULL;
  for (; actualIter != cs->parms().end() && formalIter != callee->parameters().end();
      ++actualIter, ++formalIter) {
    ConstraintGraphNode *actual = cgNode(*actualIter);
    ConstraintGraphNode *formal = cgNode(*formalIter);
    lastFormal = formal;
    if (actual->checkFlags(CG_NODE_FLAGS_NOT_POINTER) ||
        formal->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
      continue;

    bool added = false;
    INT64 size = formal->stInfo()->varSize();
    ConstraintGraphEdge *edge = addEdge(actual->parent(),formal->parent(),
                                        ETYPE_COPY,CQ_DN,size,added);
    if (added)
      delta.add(edge);
  }

  // If we have more actuals than formals either we either have a
  // signature mismatch or varargs.  For now we don't worry about
  // the other mismatch cases.
  if (actualIter != cs->parms().end() &&
      formalIter == callee->parameters().end() &&
      TY_is_varargs(ST_pu_type(calleeST))) {
    // Hook up remaining actuals to the "varargs" node
    FmtAssert(callee->stInfo(lastFormal->cg_st_idx())
                  ->checkFlags(CG_ST_FLAGS_VARARGS),
                  ("Expect last formal to be varargs!\n"));
    for ( ; actualIter != cs->parms().end(); ++actualIter) {
      ConstraintGraphNode *actual = cgNode(*actualIter);
      if (actual->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
        continue;
      INT64 size = actual->stInfo()->varSize();
      bool added = false;
      ConstraintGraphEdge *edge = addEdge(actual->parent(),lastFormal->parent(),
                                          ETYPE_COPY,CQ_DN,size,added);
      if (added)
        delta.add(edge);
    }
  }

  // Now connect the formal returns in callee to actual returns of caller
  list<CGNodeId>::const_iterator retIter = callee->returns().begin();
  ConstraintGraphNode *actualRet = cgNode(cs->returnId());
  if (actualRet && !actualRet->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
    for (; retIter != callee->returns().end(); ++retIter) {
      ConstraintGraphNode *formalRet = cgNode(*retIter);
      if (formalRet->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
        continue;
      INT64 size = actualRet->stInfo()->varSize();
      bool added;
      ConstraintGraphEdge *edge = 
                addEdge(formalRet->parent(),actualRet->parent(),ETYPE_COPY,
                        CQ_UP,size,added);
      if (added)
        delta.add(edge);
    }
  }
}

CGEdgeSet &
ConstraintGraphNode::_getCGEdgeSet(CGEdgeType t, CGEdgeList **el)
{
  CGEdgeSet *es = _findCGEdgeSet(t,*el);
  if (!es) {
    MEM_POOL *mp = cg()->memPool();
    CGEdgeType setType = (t & ETYPE_COPYSKEW) ? ETYPE_COPYSKEW
                                              : ETYPE_LOADSTORE;
    CGEdgeList *newEL = CXX_NEW(CGEdgeList(setType),mp);
    CGEdgeList *tmp = *el;
    *el = newEL;
    newEL->next(tmp);
    es = newEL->cgEdgeSet();
  }
  return *es;
}

void
ConstraintGraph::print(FILE *file)
{
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
      iter != _cgNodeToIdMap.end(); iter++) {
    iter->first->print(file);
    fprintf(stderr, " stInfo:");
    stInfo(iter->first->cg_st_idx())->print(file);
    fprintf(stderr, "\n");
  }

  for (CallSiteIterator iter = _callSiteMap.begin(); 
       iter != _callSiteMap.end(); iter++)
    iter->second->print(file);

  list<CGNodeId>::iterator iter;
  fprintf(stderr, "parameters: "); 
  for (iter = _parameters.begin(); iter != _parameters.end(); iter++)
    fprintf(file, " %d", *iter);
  fprintf(stderr, ", returns: "); 
  for (iter = _returns.begin(); iter != _returns.end(); iter++)
    fprintf(file, " %d", *iter);
  fprintf(file, "\n");
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
  // 0) The source node may be the rep of another cycle or
  //    have inKCycle() set for some other reason.  Make
  //    sure we merge it into the destination node
  inKCycle(gcd(src->inKCycle(),inKCycle()));

  // 1) Migrate all edges incoming to 'src' to 'this'
  const CGEdgeSet &inCopySet = src->inCopySkewEdges();
  for (CGEdgeSetIterator inCopyIter = inCopySet.begin();
      inCopyIter != inCopySet.end(); ) {
    ConstraintGraphEdge *edge = *(inCopyIter);

    // Regardless, the current edge will be removed from
    // the set that we are iterating over
    ++inCopyIter;

    // If the source of the edge is a node within the
    // SCC, then we must update the inKCycle() value on
    // the representative.
    if (edge->edgeType() == ETYPE_SKEW &&
        edge->srcNode()->parent() == this &&
        edge->skew() != inKCycle())
      inKCycle(gcd((UINT32)edge->skew(),inKCycle()));

    // If the source of this edge is in the current cycle
    // then we will delete the edge rather than migrate.
    bool delEdge = true;
    if (edge->srcNode()->parent() != parent())
      delEdge = !edge->moveDest(const_cast<ConstraintGraphNode *>(this));
    if (delEdge)
      ConstraintGraph::removeEdge(edge);
  }
  const CGEdgeSet &inLdSet = src->inLoadStoreEdges();
  for (CGEdgeSetIterator inLdIter = inLdSet.begin();
      inLdIter != inLdSet.end(); ) {
    ConstraintGraphEdge *edge = *(inLdIter);
    // Regardless, the current edge will be removed from the set
    // we are iterating over.
    ++inLdIter;

    // Note that we don't check for the source being the
    // current node, as a self ld/st edge is not problematic
    if (!edge->moveDest(const_cast<ConstraintGraphNode *>(this)))
      ConstraintGraph::removeEdge(edge);
  }

  // 2) Migrate all edges outgoing
  const CGEdgeSet &outCopySet = src->outCopySkewEdges();
  for (CGEdgeSetIterator outCopyIter = outCopySet.begin();
      outCopyIter != outCopySet.end(); ) {
    ConstraintGraphEdge *edge = *(outCopyIter);
    // Regardless of what happens to the edge we need to
    // remove it from the current set
    ++outCopyIter;

    // If the target of the edge is a node within the
    // SCC, then we must update the inKCycle() value on
    // the representative.
    if (edge->edgeType() == ETYPE_SKEW &&
        edge->destNode()->parent() == this &&
        edge->skew() != inKCycle())
      inKCycle(gcd(edge->skew(),inKCycle()));

    // If the target of this edge is in the current cycle
    // then we delete the edge rather than migrate it.
    bool delEdge = true;
    if (edge->destNode()->parent() != parent())
      delEdge = !edge->moveSrc(const_cast<ConstraintGraphNode *>(this));
    if (delEdge)
      ConstraintGraph::removeEdge(edge);
  }
  const CGEdgeSet &outLdSet = src->outLoadStoreEdges();
  for (CGEdgeSetIterator outLdIter = outLdSet.begin();
       outLdIter != outLdSet.end(); )  {
    ConstraintGraphEdge *edge = *(outLdIter);
    // Regardless of what happens the edge is removed
    ++outLdIter;

    // Note that we don't check for the dest being the
    // current node, as a self ld/st edg is not problematic
    if (!edge->moveSrc(const_cast<ConstraintGraphNode *>(this)))
      ConstraintGraph::removeEdge(edge);
  }

  // 4) Merge the points-to sets of the two nodes and adjust this's 
  //    points to set
  for ( PointsToIterator pti(src); pti != 0; ++pti )
    unionPointsTo(*pti,pti.qual());
  ConstraintGraph::adjustPointsToForKCycle(this);

  // 5) Delete the points-to set
  PointsToList *p = src->_pointsToList;
  PointsToList *np;
  while (p) {
    np = p->next();
    CXX_DELETE(p, cg()->memPool());
    p = np;
  }
  src->_pointsToList = NULL;

  // 6) Delete the incoming/outgoing edge sets
  CGEdgeList *e = src->_inEdges;
  CGEdgeList *ne;
  while (e) {
    ne = e->next();
    FmtAssert(e->cgEdgeSet()->empty(), ("edge set not empty"));
    CXX_DELETE(e, cg()->memPool());
    e = ne;
  }
  src->_inEdges = NULL;
  // outgoing edges
  e = src->_outEdges;
  while (e) {
    ne = e->next();
    FmtAssert(e->cgEdgeSet()->empty(), ("edge set not empty"));
    CXX_DELETE(e, cg()->memPool());
    e = ne;
  }
  src->_outEdges = NULL;

  // 7) Set flags
  src->addFlags(CG_NODE_FLAGS_MERGED);
  if (src->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    addFlags(CG_NODE_FLAGS_UNKNOWN);
}

void
ConstraintGraphNode::print(FILE *file)
{
  fprintf(file, "*CGNodeId: %d*\n ", _id);
  fprintf(file, "sym: ");
  if (!cg()->inIPA()) {
    (&St_Table[SYM_ST_IDX(_cg_st_idx)])->Print(stderr);
  } else {
    if (ST_IDX_level(SYM_ST_IDX(_cg_st_idx)) == GLOBAL_SYMTAB)
      (&St_Table[SYM_ST_IDX(_cg_st_idx)])->Print(stderr);
    else
      fprintf(file, " <file:%d pu:%d st_idx:%d>\n",
              FILE_NUM_ST_IDX(_cg_st_idx),
              PU_NUM_ST_IDX(_cg_st_idx),
              SYM_ST_IDX(_cg_st_idx));
  }
  fprintf(file, " cg_st_idx: %llu, offset: %d", _cg_st_idx, _offset);
  StInfo *stInfo = cg()->stInfo(_cg_st_idx);
  if (stInfo->checkFlags(CG_ST_FLAGS_PREG)) {
    PREG_NUM p = PREG_NUM(_offset / CG_PREG_SCALE);
    if (!cg()->inIPA())
      fprintf(file, " preg:%d,%s", p, !Preg_Is_Dedicated(p) ? Preg_Name(p) 
                                                            : "dedicated");
    else
      fprintf(file, " preg:%d", p);
  }
  fprintf(file, "\n");
  fprintf(file, " GBL: "); pointsTo(CQ_GBL).print(file);
  fprintf(file, " HZ: ");  pointsTo(CQ_HZ).print(file);
  fprintf(file, " DN: ");  pointsTo(CQ_DN).print(file);
  fprintf(file, "\n");
  if (nextOffset())
    fprintf(file, " nextCGNodeId: %d", nextOffset()->_id);
  else
    fprintf(file, " nextCGNodeId: null");
  if (parent())
    fprintf(file, " parent: %d", parent()->_id);
  else
    fprintf(file, " parent: null"); 
  fprintf(file, " inKCycle: %d\n",  inKCycle());
  fprintf(file, " inCopySkewCGEdges: ");
  const CGEdgeSet &inCopySkew = inCopySkewEdges();
  for (CGEdgeSetIterator iter = inCopySkew.begin();
       iter != inCopySkew.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, " outCopySkewCGEdges: ");
  const CGEdgeSet &outCopySkew = outCopySkewEdges();
  for (CGEdgeSetIterator iter = outCopySkew.begin();
       iter != outCopySkew.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n inLoadStoreCGEdges: ");
  const CGEdgeSet &inLoadStore = inLoadStoreEdges();
  for (CGEdgeSetIterator iter = inLoadStore.begin();
       iter != inLoadStore.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, " outLoadStoreCGEdges: ");
  const CGEdgeSet &outLoadStore = outLoadStoreEdges();
  for (CGEdgeSetIterator iter = outLoadStore.begin();
       iter != outLoadStore.end();
       iter++) {
    (*iter)->print(file);
    fprintf(file, " ");
  }
  fprintf(file, "\n");
  fprintf(file, " CGNode flags: [");
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
  if (checkFlags(CG_NODE_FLAGS_NOT_POINTER))
    fprintf(file, " !PTR");
  fprintf(file, " ]\n");
}

void ConstraintGraphNode::print(ostream& ostr)
{
  ostr << "CGNodeId: " << id();
  ostr << " sym: ";
  if (!cg()->inIPA()) {
    ostr << St_Table[SYM_ST_IDX(_cg_st_idx)];
  } else {
    if (ST_IDX_level(SYM_ST_IDX(_cg_st_idx)) == GLOBAL_SYMTAB)
      ostr << St_Table[SYM_ST_IDX(_cg_st_idx)];
    else
      ostr << " <file:" << FILE_NUM_ST_IDX(_cg_st_idx) 
           << " pu:" << PU_NUM_ST_IDX(_cg_st_idx)
           << " st_idx:" << SYM_ST_IDX(_cg_st_idx) << ">" << endl;
  }
  ostr << "cg_st_idx: " << _cg_st_idx << ", offset: " << _offset;
  StInfo *stInfo = cg()->stInfo(_cg_st_idx);
  if (stInfo->checkFlags(CG_ST_FLAGS_PREG)) {
    PREG_NUM p = PREG_NUM(_offset / CG_PREG_SCALE);
    if (!cg()->inIPA())
      ostr << " preg:" << p << ","
           << (!Preg_Is_Dedicated(p) ? Preg_Name(p) : "dedicated");
    else
      ostr << " preg: " << p;
  }
  ostr << endl;
  ostr << "GBL: " << pointsTo(CQ_GBL)
       << " HZ: " << pointsTo(CQ_HZ)
       << " DN: " << pointsTo(CQ_DN)
       << endl;
  if (nextOffset())
    ostr << "nextCGNodeId: " << nextOffset()->_id;
  else
    ostr << "nextCGNodeId: null";
  if (parent())
    ostr << " parent: " << parent()->_id;
  else
    ostr << " parent: null";
  ostr << " inKCycle: " << inKCycle();
  ostr << endl;
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
  if (checkFlags(CG_NODE_FLAGS_NOT_POINTER))
    ostr << " !PTR";
  ostr << " ]" << endl;
}

void
StInfo::print(FILE *file)
{
  fprintf(file, "varSize: %lld", _varSize);
  fprintf(file, " ST flags: [");
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    fprintf(file, "GLOBAL");
  if (checkFlags(CG_ST_FLAGS_TEMP))
    fprintf(file, " TEMP");
  if (checkFlags(CG_ST_FLAGS_PREG))
    fprintf(file, " PREG");
  if (checkFlags(CG_ST_FLAGS_HEAP))
    fprintf(file, " HEAP");
  if (checkFlags(CG_ST_FLAGS_STACK))
    fprintf(file, " STACK");
  if (checkFlags(CG_ST_FLAGS_NOCNTXT))
    fprintf(file, " CI");
  fprintf(file, "]");
  if (_firstOffset)
    fprintf(file, " firstCGNodeId: %d", _firstOffset->id());
  else
    fprintf(file, " firstCGNodeId: null");
  if (!checkFlags(CG_ST_FLAGS_MODRANGE))
    fprintf(file," modulus: %d\n",_u._modulus);
  else {
    fprintf(file,"\n  modulus ranges:\n");
    _u._modRange->print(file,4);
  }
}

void StInfo::print(ostream& str)
{
  str << "varSize: " << _varSize;
  str << " ST flags: [";
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    str << "GLOBAL";
  if (checkFlags(CG_ST_FLAGS_TEMP))
    str << " TEMP";
  if (checkFlags(CG_ST_FLAGS_HEAP))
    str << " HEAP";
  if (checkFlags(CG_ST_FLAGS_STACK))
    str << " STACK";
  if (checkFlags(CG_ST_FLAGS_NOCNTXT))
    str << " CI";
  str << "]";
  if (_firstOffset)
    str << " firstCGNodeId: " << _firstOffset->id();
  else
    str << " firstCGNodeId: null";
  if (!checkFlags(CG_ST_FLAGS_MODRANGE))
     str << " modulus: " << _u._modulus << endl;
   else {
     str << endl << " modulus ranges:" << endl;
     _u._modRange->print(str,2);
   }
}

bool
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
  ConstraintGraphEdge *insInEdge = destNode()->addInEdge(this);
  if (insOutEdge != this) {
    FmtAssert(insInEdge != this,
        ("ConstraintGraphEdge::move: inconsistent edge sets"));
    return false;
  }
  FmtAssert(insInEdge == this,
      ("ConstraintGraphEdge::move: inconsistent edge sets"));
  return true;
}

void
ConstraintGraphEdge::print(FILE *file) const
{
  fprintf(file, "(src: %d dest: %d ", _srcCGNode->id(), _destCGNode->id());
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
  default: 
    FmtAssert(FALSE, ("Unexpected qual: %d\n", qs));
    break;
  }
  fprintf(file, "%s %s %d [",es,qs,_sizeOrSkew);
  if (checkFlags(CG_EDGE_PARENT_COPY))
    fprintf(file, " PCOPY");
  fprintf(file, " ]");
  fprintf(file, ")");
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

// Merge nodes in rhs to this.
// Note: The cg_st_idx of the nodes merged into the new graph still have their
// file, pu. and st_idx refer to the original graph's PU.
void
ConstraintGraph::merge(ConstraintGraph *rhs)
{
  // Transfer nodes
  for (CGNodeToIdMapIterator iter = rhs->_cgNodeToIdMap.begin(); 
       iter != rhs->_cgNodeToIdMap.end(); iter++) {
    ConstraintGraphNode *node = iter->first;
    node->cg(this);
    rhs->_cgNodeToIdMap.erase(node);
    _cgNodeToIdMap[node] = iter->second;
  }

  // Transfer StInfo
  for (CGStInfoMapIterator iter = rhs->_cgStInfoMap.begin(); 
       iter != rhs->_cgStInfoMap.end(); iter++) {
    CG_ST_IDX cg_st_idx = iter->first;
    StInfo *stInfo = iter->second;
    rhs->_cgStInfoMap.erase(cg_st_idx);
    _cgStInfoMap[cg_st_idx] = stInfo;
  }
}

void
CallSite::print(FILE *file)
{
  fprintf(file, "callsite: %d", _id);
  fprintf(file, " [");
  if (checkFlags(CS_FLAGS_UNKNOWN))
    fprintf(file, " %s", "UNKNOWN");
  if (checkFlags(CS_FLAGS_INDIRECT))
    fprintf(file, " %s", "INDIRECT");
  if (checkFlags(CS_FLAGS_INTRN))
    fprintf(file, " %s", "INTRINSIC");
  if (checkFlags(CS_FLAGS_HAS_VARARGS))
    fprintf(file, " %s", "VARARGS");
  fprintf(file, " ]");
  if (isIndirect())
    fprintf(file, " cgNodeid: %d", cgNodeId());
  else if (isIntrinsic())
    fprintf(file, " intrinsic: %s", get_intrinsic_name(intrinsic()));
  else if (isDirect() && !isIntrinsic())
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
   
void
ConstraintGraph::vcg(const char *prefix)
{
  ConstraintGraphVCG::dumpVCG(prefix);
}

void
ConstraintGraphVCG::dumpVCG(const char *fileNamePrefix)
{
  ConstraintGraphVCG vcg(fileNamePrefix);
  vcg.buildVCG();
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
  if (!ConstraintGraph::inIPA()) {
    sprintf(buf, "%d:%s %d", cgNode->id(), 
            ST_name(SYM_ST_IDX(cgNode->cg_st_idx())), cgNode->offset());
  } else {
    if (ST_IDX_level(SYM_ST_IDX(cgNode->cg_st_idx())) == GLOBAL_SYMTAB)
      sprintf(buf, "%d:%s %d", cgNode->id(), 
              ST_name(SYM_ST_IDX(cgNode->cg_st_idx())), cgNode->offset());
    else
      sprintf(buf, "%d %d", cgNode->id(), cgNode->offset());
  }
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
    default: 
      FmtAssert(FALSE, ("Unexpected qual: %d\n", qs));
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
  cgNode->cg()->stInfo(cgNode->cg_st_idx())->print(ss);
  char *str = (char *)MEM_POOL_Alloc(&_memPool, strlen(ss.str().data())*2 + 1);
  const char *p = ss.str().data();
  char *q = str;
  while (*p) {
    // If we have the sequence "\\0" skip the '\\' because
    // the vcg parser will interpret that as an end of string.
    if (*p == '\\' && *(p+1) == '0')
      p++;
    // If we encounter a '"' the vcg parser will interpret as
    // end of string unless we escape properly.
    else if (*p == '"')
      *q++ = '\\';
    *q++ = *p++;
  }
  *q = '\0';
  //strcpy(str, ss.str().data());
  return str;
}

VCGNode *
ConstraintGraphVCG::buildVCGNode(ConstraintGraphNode *cgNode)
{
  char *title = getNodeTitle(cgNode);
  char *label = getNodeLabel(cgNode);
  char *nodeInfo = getNodeInfo(cgNode);
  VCGNode *node = CXX_NEW(VCGNode(title, label, Ellipse), &_memPool);
  if (cgNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    node->backGroundColor(Red);
  node->textColor(Black);
  node->info(1, nodeInfo);
  return node;
}

void 
ConstraintGraphVCG::buildVCG()
{
  // Map ConstraintGraphNode * to the VCGNode title
  hash_map<ConstraintGraphNode *, const char *,
           ConstraintGraphNode::hashCGNode,
           ConstraintGraphNode::equalCGNode> nodeToTitleMap;
  hash_map<ConstraintGraphNode *, const char *,
           ConstraintGraphNode::hashCGNode,
           ConstraintGraphNode::equalCGNode>::const_iterator nodeToTitleMapIter;

  hash_map<ConstraintGraph *, VCGGraph *,hashCG,equalCG> cgToSubGraphMap;
  hash_map<ConstraintGraph *, VCGGraph *,hashCG,equalCG>::iterator cgToSubGraphMapIter;

  VCGGraph vcg("ConstraintGraph VCG");
  vcg.infoName(1, "ConstraintGraph");

  UINT32 copyClassId = vcg.edgeClass("Copy/Skew");
  UINT32 loadClassId = vcg.edgeClass("Load");
  UINT32 storeClassId = vcg.edgeClass("Store");
  UINT32 parentClassId = vcg.edgeClass("Parent",true/*hidden*/);
  UINT32 offsetClassId = vcg.edgeClass("Offset",true/*hidden*/);

  // Iterate over all nodes in the graph
  for (CGIdToNodeMapIterator iter = ConstraintGraph::gBegin(); 
       iter != ConstraintGraph::gEnd(); iter++) {
    ConstraintGraphNode *cgNode = iter->second;
    const char *srcTitle = NULL;
    nodeToTitleMapIter = nodeToTitleMap.find(cgNode);
    // Create a new VCGNode if none exists
    if (nodeToTitleMapIter == nodeToTitleMap.end()) {
      VCGNode *node = buildVCGNode(cgNode);      
      srcTitle = node->title();
      nodeToTitleMap[cgNode] = srcTitle;
      // Check to see if we have created a sub graph for the
      // parent constraint graph
      VCGGraph *subGraph;
      if (0/*cgNode->cg()->name()*/) {
        cgToSubGraphMapIter = cgToSubGraphMap.find(cgNode->cg());
        if (cgToSubGraphMapIter == cgToSubGraphMap.end()) {
          subGraph = new VCGGraph(cgNode->cg()->name());
          subGraph->folding(true);
          cgToSubGraphMap[cgNode->cg()] = subGraph;
          vcg.addSubGraph(*subGraph);
        }
        else
          subGraph = cgToSubGraphMapIter->second;
      }
      else
        subGraph = &vcg;
      subGraph->addNode(*node);
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
      vcgEdge->edgeClass(copyClassId);
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
      vcgEdge->edgeClass(edge->edgeType() == ETYPE_LOAD ? loadClassId : storeClassId);
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
      vcgEdge->edgeClass(parentClassId);
      vcgEdge->lineStyle(Dotted);
      vcg.addEdge(*vcgEdge);
    }

    // Add edge from node to the next node in its symbol offset chain
    if (cgNode->nextOffset()) {
      ConstraintGraphNode *next = cgNode->nextOffset();
      const char *nTitle = NULL;
      nodeToTitleMapIter = nodeToTitleMap.find(next);
      // Create a new parent VCGNode if none exists
      if (nodeToTitleMapIter == nodeToTitleMap.end()) {
        VCGNode *node = buildVCGNode(next);
        nTitle = node->title();
        nodeToTitleMap[next]= nTitle;
        vcg.addNode(*node);
      } else
        nTitle = nodeToTitleMapIter->second;
      VCGEdge *vcgEdge = CXX_NEW(VCGEdge(srcTitle, nTitle), &_memPool);
      vcgEdge->color(Purple);
      vcgEdge->edgeClass(offsetClassId);
      vcgEdge->lineStyle(Dashed);
      vcg.addEdge(*vcgEdge);
    }
  }

  char filename[1024];
  FmtAssert(strlen(_fileNamePrefix)+8<1024,
      ("buildVCG overflow filename buffer"));
  sprintf(filename, "%s_cg.vcg", _fileNamePrefix);
  FILE *vcgfile = fopen(filename, "w");
  Is_True(vcgfile != NULL, ("Couldn't open vcgfile for writing"));

  vcg.emit(vcgfile);
  fclose(vcgfile);
}
