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
#include "pu_info.h"
#include "clone.h"

MEM_POOL *ConstraintGraph::edgeMemPool = NULL;
UINT32 ConstraintGraph::maxTypeSize = 0;
CGNodeId ConstraintGraph::nextCGNodeId = 1;
CallSiteId ConstraintGraph::nextCallSiteId = 1;
bool ConstraintGraph::isIPA = false;
ConstraintGraph *ConstraintGraph::globalConstraintGraph = NULL;
ConstraintGraphNode *ConstraintGraph::notAPointerCGNode = NULL;
ConstraintGraphNode *ConstraintGraph::blackHoleCGNode = NULL;
CGIdToNodeMap ConstraintGraph::cgIdToNodeMap(8192);
CallSiteMap ConstraintGraph::csIdToCallSiteMap(1024);
const PointsTo ConstraintGraphNode::emptyPointsToSet;
const CGEdgeSet ConstraintGraphNode::emptyCGEdgeSet;
hash_map<ST_IDX, ST_IDX> ConstraintGraph::origToCloneStIdxMap;
EdgeDelta *ConstraintGraph::_workList = NULL;

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
  if (_toBeDeletedNodes.find(oldId) != _toBeDeletedNodes.end()) 
  {
    ConstraintGraphNode *old = ConstraintGraph::cgNode(oldId);
    ConstraintGraphNode *parent = old->findRep();
    // If there is a parent who is not deleted, map the wn to the parent,
    //  else remove the WN to node mapping
    if (parent == old ||
        _toBeDeletedNodes.find(parent->id()) != _toBeDeletedNodes.end())  {
      if (Get_Trace(TP_ALIAS,NYSTROM_CG_OPT_FLAG))
        fprintf(stderr, "Unmapping WN->CGNodeId for node: %d\n", old->id());
      WN_MAP_CGNodeId_Set(wn, 0);
    } else {
      if (Get_Trace(TP_ALIAS,NYSTROM_CG_OPT_FLAG))
        fprintf(stderr, "WN->CGNodeId: Remapping deleted node : %d to "
                "parent: %d\n", old->id(), parent->id());
      WN_MAP_CGNodeId_Set(wn, parent->id());
    }
  }
}

void
ConstraintGraph::deleteOptimizedNodes()
{
  for (hash_set<CGNodeId>::const_iterator iter = _toBeDeletedNodes.begin();
       iter != _toBeDeletedNodes.end(); iter++) {
    // We may have a black hole in the pts to set..check and clean 
    ConstraintGraphNode *node = cgNode(*iter);
    for (PointsToIterator pti(node); pti != 0; ++pti) {
      PointsTo &pts = *pti;
      FmtAssert(pts.isSet(blackHole()->id()), ("Only expecting blackhole"));
    }
    node->deletePointsToSet();
    if (Get_Trace(TP_ALIAS,NYSTROM_CG_OPT_FLAG))
      fprintf(stderr, "Deleting node %d\n", node->id());
    deleteNode(node);
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
       checkFlags(CG_NODE_FLAGS_MEMOP)         ||
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
      edge->edgeType() == ETYPE_COPY &&
      edge->size() > _maxAccessSize)
    _maxAccessSize = edge->size();
  return newEdge;
}
     
void
ConstraintGraphNode::updateMaxAccessSize()
{
  UINT8 newMax = 0;

  for (CGEdgeListIterator outIter(this,false); outIter != 0; ++outIter) {
    CGEdgeSet edges = *outIter;
    for (CGEdgeSetIterator edgeIter = edges.begin();
        edgeIter != edges.end(); ++edgeIter) {
      ConstraintGraphEdge *e = *edgeIter;
      if (e->edgeType() == ETYPE_COPY && e->size() > newMax) {
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
}

void
ConstraintGraphNode::removeOutEdge(ConstraintGraphEdge *edge)
{
  CGEdgeSet &outEdgeSet = _getCGEdgeSet(edge->edgeType(),&_outEdges);
  CGEdgeSetIterator iter = outEdgeSet.find(edge);
  if (iter != outEdgeSet.end())
    outEdgeSet.erase(iter);

  if (edge->edgeType() == ETYPE_COPY && edge->size() == _maxAccessSize)
    updateMaxAccessSize();
}

// Remove node from the points to set with qualifier qual of 'this'
void
ConstraintGraphNode::removePointsTo(ConstraintGraphNode *node,
                                    CGEdgeQual qual)
{
  // Remove node from the pts of 'this'
  removePointsTo(node->id(), qual);
  // Remove 'this' from the reverse pts of node
  node->removeRevPointsTo(this->id(), qual);
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
ModulusRange::build(TY_IDX ty_idx, UINT32 offset, MEM_POOL *memPool)
{
  TY &ty = Ty_Table[ty_idx];
  FmtAssert(TY_kind(ty) == KIND_STRUCT,("Expecting only structs"));
  if (TY_size(ty) <= 1)
    return NULL;
  ModulusRange *modRange = CXX_NEW(ModulusRange(offset,offset+TY_size(ty)-1, 
						TY_size(ty)
#ifdef Is_True_On
						,ty_idx
#endif
				     ), memPool);
  ModulusRange *childRanges = NULL;
  ModulusRange *curRange = NULL;
  for (FLD_HANDLE fld = TY_flist(ty); !fld.Is_Null(); fld = FLD_next(fld)) {
    TY &fty = Ty_Table[FLD_type(fld)];
    ModulusRange *newRange = NULL;
    if (TY_kind(fty) == KIND_ARRAY) {
      UINT32 start = offset+FLD_ofst(fld);
      UINT32 end = start+TY_size(fty)-1;
      // We need to dive into multi-dimensional arrays
      // to determine the actual element size
      TY_IDX etyIdx = TY_etype(fty);
      while (TY_kind(Ty_Table[etyIdx]) == KIND_ARRAY)
        etyIdx = TY_etype(Ty_Table[etyIdx]);
      UINT32 elmtSize = TY_size(Ty_Table[etyIdx]);
      newRange = CXX_NEW(ModulusRange(start,end,elmtSize
#ifdef Is_True_On
				      ,
                                      FLD_type(fld)
#endif
),memPool);
    }
    else if (TY_kind(fty) == KIND_STRUCT)
      newRange = build(FLD_type(fld),offset+FLD_ofst(fld),memPool);
    if (newRange) {
      if (!childRanges)
        childRanges = newRange;
      if (curRange) {
        // If the new range has same start offset as current range  (in case
        // of unions), unify both the ranges to a single flattened range
        if (curRange->_startOffset == newRange->_startOffset) {
          if (newRange->_endOffset > curRange->_endOffset)
            curRange->_endOffset = newRange->_endOffset;
          curRange->_modulus = gcd(curRange->_modulus, newRange->_modulus);
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

void
ModulusRange::setModulus(ModulusRange *modRange, UINT32 mod, MEM_POOL *memPool)
{
  if (mod < modRange->_modulus) {
    modRange->_modulus = mod;

    // Find first child range that spans new modulus
    ModulusRange *q = NULL;
    ModulusRange *r = modRange->_child;
    while (r && r->_endOffset < mod) {
      q = r;
      r = r->_next;
    }
    if (r) {
      removeRange(r,memPool);
      if (q)
        q->_next = NULL;
      else
        modRange->_child = NULL;
    }
    if (modRange->_child)
      modRange->_child->set(mod);
  }
}

UINT32
ModulusRange::modulus(UINT32 offset, UINT32 mod,
                      UINT32 &startOffset, UINT32 &endOffset,
                      MEM_POOL *memPool)
{
  ModulusRange *modRange = findRange(offset);
  // Set the modulus of this range to 'mod' and cap
  // the modulus all children to this new value.
  if (modRange == NULL)
    modRange = this;
  if (mod < modRange->_modulus) {
    modRange->_modulus = mod;

    // Find first child range that spans new modulus
    ModulusRange *q = NULL;
    ModulusRange *r = modRange->_child;
    while (r && r->_endOffset < mod) {
      q = r;
      r = r->_next;
    }
    if (r) {
      removeRange(r,memPool);
      if (q)
        q->_next = NULL;
      else
        modRange->_child = NULL;
    }
    if (modRange->_child)
      modRange->_child->set(mod);
  }
  startOffset = modRange->_startOffset;
  endOffset = modRange->_endOffset;
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
#ifdef Is_True_On
  fprintf(file,"%s [%d, %d] mod: %d\n",
          TY_name(Ty_Table[_ty_idx]),_startOffset,_endOffset,_modulus);
#else
  fprintf(file,"[%d, %d] mod: %d\n",
          _startOffset,_endOffset,_modulus);
#endif
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
#ifdef Is_True_On
  str << TY_name(Ty_Table[_ty_idx]) << " [" << _startOffset << ", " 
      << _endOffset << "]";
#else
  str << " [" << _startOffset << ", " << _endOffset << "]";
#endif
  str << " mod: " << _modulus << endl;
  if (_child)
    _child->print(str,indent+2);
  if (_next)
    _next->print(str,indent);
}

void
StInfo::init(TY_IDX ty_idx, UINT32 flags, MEM_POOL *memPool)
{
  _flags = flags;
  _varSize = 0;
  _maxOffsets = 256;
  _numOffsets = 0;
  _firstOffset = 0;
  _ty_idx = ty_idx;
  _memPool = memPool;

  TY& ty = Ty_Table[_ty_idx];
  // For arrays set size to element size
  if (TY_kind(ty) == KIND_ARRAY) {
    TY_IDX etyIdx = TY_etype(ty);
    // We need to dive into multi-dimensional arrays
    // to determine the actual element size
    while (TY_kind(Ty_Table[etyIdx]) == KIND_ARRAY)
      etyIdx = TY_etype(Ty_Table[etyIdx]);
    TY &etype = Ty_Table[etyIdx];
    _varSize = TY_size(etype);
  } else
    _varSize = TY_size(ty);

  // In the case of _varSize == 0, i.e. a forward declaration,
  // we default to modulus of 1 as we should see no references
  // of any offsets other than 0.
  // We use a modulus of 1 for any non aggregate types as it makes no
  // sense to apply an offset beyond 0
  if (_varSize == 0 || 
      (TY_kind(ty) != KIND_ARRAY && TY_kind(ty) != KIND_STRUCT))
    _u._modulus = 1;
  else if (TY_kind(ty) != KIND_STRUCT || ModulusRange::flat(ty))
    _u._modulus = _varSize;
  else {
    addFlags(CG_ST_FLAGS_MODRANGE);
    _u._modRange = ModulusRange::build(ty_idx,0,memPool);
    if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG))
      _u._modRange->print(stderr);
  }

  // Treat every symbol as context-insensitive
  addFlags(CG_ST_FLAGS_NOCNTXT);
}

StInfo::StInfo(TY_IDX ty_idx, UINT32 flags, MEM_POOL *memPool)
{
  init(ty_idx, flags, memPool);
}

StInfo::StInfo(ST_IDX st_idx, MEM_POOL *memPool)
{
  ST *st = &St_Table[st_idx];

  init(ST_type(st), 0, memPool);

  // Set the flags
  ST_SCLASS storage_class = ST_sclass(st);
  if (storage_class == SCLASS_FSTATIC ||
      storage_class == SCLASS_COMMON ||
      storage_class == SCLASS_UGLOBAL ||
      storage_class == SCLASS_DGLOBAL ||
      storage_class == SCLASS_UNKNOWN ||
      storage_class == SCLASS_TEXT ||
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
}

void
StInfo::applyModulus(void)
{
  // If not in IPA, and we are in the middle of building the CG,
  // we do not want to apply the modulus. We apply the modulus after 
  // the build is done
  if (!ConstraintGraph::inIPA() && _firstOffset &&
      !_firstOffset->cg()->buildComplete())
    return;

  ConstraintGraphNode *cur = _firstOffset;
  if (cur && cur->offset() == -1)
    cur = cur->nextOffset();

  hash_set<CGNodeId> collapsedNodes;
  hash_set<CGNodeId> modNodes;

  UINT32 startOffset, endOffset, modulus;
  while (cur) {
    if (!checkFlags(CG_ST_FLAGS_MODRANGE)) {
      modulus = _u._modulus;
      startOffset = 0;
      endOffset = _u._modulus;
    }
    else
      modulus = _u._modRange->modulus(cur->offset(),startOffset,endOffset);

    if (cur->offset() >= startOffset + modulus) {
      UINT32 newOffset = startOffset + cur->offset() % modulus;
      ConstraintGraphNode *modNode =
          cur->cg()->getCGNode(cur->cg_st_idx(),newOffset);

      // Now we collapse cur into modNode
      modNode->collapse(cur);

      collapsedNodes.insert(cur->id());
      modNodes.insert(modNode->id());
    }
    cur = cur->nextOffset();
  }

  // Remove the collapsed nodes from StInfo's sorted node list
  ConstraintGraphNode *prev = NULL;
  ConstraintGraphNode *n = _firstOffset;
  while (n) {
    if (collapsedNodes.find(n->id()) != collapsedNodes.end())  {
      FmtAssert(prev != NULL, ("prev offset of node: %d not found", n->id()));
      prev->nextOffset(n->nextOffset());
      ConstraintGraphNode *deln = n;
      n = n->nextOffset();
      deln->nextOffset(NULL);
      _numOffsets--;      
    } else {
      prev = n;
      n = n->nextOffset();
    }
  }

  // Adjust pts of target of merge
  for (hash_set<CGNodeId>::iterator iter = modNodes.begin();
       iter != modNodes.end(); iter++) {
    ConstraintGraphNode *modNode = ConstraintGraph::cgNode(*iter);
    // Since the merge is done to the parent of modNode,
    // adjustPointsToForKCycle for its parent
    modNode = modNode->parent();
    if (modNode->inKCycle() > 0)
      ConstraintGraph::adjustPointsToForKCycle(modNode);
  }
}

void
StInfo::setModulus(UINT32 mod, UINT32 offset)
{
  UINT32 startOffset, endOffset;
  if (!checkFlags(CG_ST_FLAGS_MODRANGE)) {
    startOffset = 0;
    endOffset = _u._modulus;
    _u._modulus = mod;
  }
  else {
//    fprintf(stderr,"Before setting offset %d to modulus %d\n",offset,mod);
//    _u._modRange->print(stderr,true);
      _u._modRange->modulus(offset,mod,startOffset,endOffset,_memPool);
  }

  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"Setting modulus of ");
    CG_ST_IDX idx = _firstOffset->cg_st_idx();
    if (!ConstraintGraph::inIPA() ||
        ST_IDX_level(SYM_ST_IDX(idx)) == GLOBAL_SYMTAB)
      fprintf(stderr,"%s",ST_name(&St_Table[SYM_ST_IDX(idx)]));
    else
      fprintf(stderr, " <file:%d pu:%d st_idx:%d> %llu",
              FILE_NUM_ST_IDX(idx),
              PU_NUM_ST_IDX(idx),
              SYM_ST_IDX(idx),
              idx);

    fprintf(stderr," to %d\n",mod);
  }

  applyModulus();

#if 0
  if (checkFlags(CG_ST_FLAGS_MODRANGE)) {
    fprintf(stderr,"After setting offset %d to modulus %d\n",offset,mod);
    _u._modRange->print(stderr,true);
  }
#endif
}

void
ConstraintGraph::adjustPointsToForKCycle(ConstraintGraphNode *destNode,
                                         const PointsTo &src,
                                         PointsTo &dst,
                                         CGEdgeQual qual)
{
  UINT32 kCycle = destNode->inKCycle();
  FmtAssert(&src != &dst,("Expected two different sets"));
  if (kCycle == 0) {
    dst.setUnion(src);
    return;
  }

  for (PointsTo::SparseBitSetIterator iter(&src,0); iter != 0; iter++)
  {
    CGNodeId nodeId = *iter;
    ConstraintGraphNode *node = cgNode(nodeId);
    if (node->offset() != -1) {
      // A non-array based access is unbounded, so ignore any modulus
      // associated with the node offset and operate on the underlying
      // symbol
      if (!destNode->checkFlags(CG_NODE_FLAGS_ARRAY)) 
      {
        StInfo *st = node->stInfo();
        // Get the mod
        UINT32 mod;
        if (st->checkFlags(CG_ST_FLAGS_MODRANGE))
          mod = st->modRange()->mod();
        else
          mod = st->mod();
        // If the mod is <= pointer size or if the resulting K value is still 
        // larger than the pointer size, then we simply adjust the modulus of
        // the underlying symbol
        if (mod <= Pointer_Size || kCycle > Pointer_Size) 
        {
          if (kCycle < mod) {
            if (st->checkFlags(CG_ST_FLAGS_MODRANGE))
              ModulusRange::setModulus(st->modRange(), kCycle, st->memPool());
            else
              st->mod(kCycle);
            st->applyModulus();
          }
          node = node->cg()->getCGNode(node->cg_st_idx(),node->offset());
        }
        // If the K value is <= the size of a pointer and 
        // modulus > Pointer_Size then all offsets are mapped to -1.
        else 
        {
#if 0
          fprintf(stderr, "Setting -1 on node\n ");
          node->print(stderr); node->stInfo()->print(stderr);
          fprintf(stderr, " due to destNode: \n");
          destNode->print(stderr); destNode->stInfo()->print(stderr);
          node = node->cg()->getCGNode(node->cg_st_idx(),-1);
#endif
#if 1
          // Instead of -1, reduce the symbol to a single node
          fprintf(stderr, "Collapsing St cg_st_idx: %llu\n", node->cg_st_idx());
          st->print(stderr, true);
          st->collapse();
          node = node->cg()->getCGNode(node->cg_st_idx(),0);
#endif
        }
      } 
      else
      {
        // For an array based access, we always set the modulus associated
        // with node->offset(), to kCycle
        StInfo *st = node->stInfo();
        if (kCycle < st->getModulus(node->offset()))
          st->setModulus(kCycle, node->offset());
        node = node->cg()->getCGNode(node->cg_st_idx(),node->offset());
      }

      if (node->offset() == -1)
        destNode->removeNonMinusOneOffsets(dst,node->cg_st_idx(),
                                           qual!=CQ_NONE?destNode:NULL,qual);
    }
    dst.setBit(node->id());
  }
}

void 
ConstraintGraph::adjustPointsToForKCycle(ConstraintGraphNode *cgNode)
{
  for (PointsToIterator pti(cgNode); pti != 0; ++pti) {
    PointsTo &ptsTo = *pti;
    PointsTo tmp;
    adjustPointsToForKCycle(cgNode, ptsTo, tmp, pti.qual());
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

static WN *
nextStmtStoresResultOfCurrentStmt(const WN *const stmt)
{
  WN *nextStmt = WN_next(stmt);
  if (!nextStmt)
    return NULL;

  WN *rhs = WN_kid0(nextStmt);
  if (WN_operator(nextStmt) == OPR_STID &&
      WN_operator(rhs) == OPR_LDID &&
      ST_sclass(WN_st(rhs)) == SCLASS_REG &&
      ST_sclass(WN_st(stmt)) == SCLASS_REG &&
      WN_offset(rhs) == WN_offset(stmt))
    return nextStmt;
  else
    return NULL;
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

// This just recursively processes all initvs starting from initv_idx
// and adds any nodes that correspond to symbols to pts
void
ConstraintGraph::processInitv(INITV_IDX initv_idx, PointsTo &pts)
{
  while (initv_idx) {
    const INITV &initv = Initv_Table[initv_idx];
    if (INITV_kind(initv) == INITVKIND_SYMOFF) {
      ST_IDX initv_st_idx = INITV_st(initv);
      ST *st = &St_Table[initv_st_idx];
      INT64 offset = INITV_ofst(initv);
      ST *base_st;
      INT64 base_offset;
      Expand_ST_into_base_and_ofst(st, offset, &base_st, &base_offset);
      ConstraintGraphNode *node;
      if (ST_class(base_st) == CLASS_CONST)
        node = notAPointer();
      else {
        // Do initial value processing for the symbol
        processInitValues(ST_st_idx(base_st));
        node = getCGNode(CG_ST_st_idx(base_st), base_offset);
      }
      pts.setBit(node->id());
    } 
    else if (INITV_kind(initv) == INITVKIND_ZERO ||
             INITV_kind(initv) == INITVKIND_ONE ||
             INITV_kind(initv) == INITVKIND_VAL)
    {
      pts.setBit(notAPointer()->id());
    }
    else if (INITV_kind(initv) == INITVKIND_BLOCK)
    {
      processInitv(INITV_blk(initv), pts);
    }
    initv_idx = INITV_next(initv);
  }
}

// Special handling for arrays/structs whose init values are not enclosed
// in INITVKIND_BLOCK, but instead provided as a list of INITVKIND_VAL.
// Parses through the INITVKIND_VALs/PADs and updates initv_idx
OffsetPointsToList *
ConstraintGraph::processFlatInitvals(TY &ty, 
                                     INITV_IDX &initv_idx,
                                     UINT32 startOffset, 
                                     UINT32 &repeat,
                                     MEM_POOL *memPool)
{
  FmtAssert(TY_kind(ty) == KIND_ARRAY || TY_kind(ty) == KIND_STRUCT,
            ("Expecting KIND_ARRAY or KIND_STRUCT"));
  FmtAssert(INITV_kind(Initv_Table[initv_idx]) == INITVKIND_VAL ||
            INITV_kind(Initv_Table[initv_idx]) == INITVKIND_PAD,
            ("Expecting INITVKIND_VAL or INITVKIND_PAD"));
  UINT32 size = 0;
  // Iterate over all INITVKIND_VALs/PADs until size of ty
  UINT32 rep = 0;
  while (size < TY_size(ty) && initv_idx != 0) {
    rep++;
    const INITV &initv = Initv_Table[initv_idx];
    FmtAssert(INITV_kind(initv) == INITVKIND_PAD ||
              INITV_kind(initv) == INITVKIND_VAL, 
               ("Expecting INITVKIND_PAD || INITVKIND_VAL"));
    if (INITV_kind(initv) == INITVKIND_PAD) {
      size += INITV_pad(initv);
    } else if (TCON_ty(INITV_tc_val(initv)) == MTYPE_STR) {
      size += TCON_str_len(INITV_tc_val(initv));
    } else {
      size += MTYPE_byte_size(TCON_ty(INITV_tc_val(initv)));
    }
    // Check number of times this initv has been used and proceed to next
    // if repeat factor has been exhausted and we haven't accounted for all
    // of TY_size
    if ((INITV_kind(initv) == INITVKIND_PAD || 
        (INITV_kind(initv) == INITVKIND_VAL && rep == INITV_repeat2(initv))) &&
         size < TY_size(ty)) {
      initv_idx = INITV_next(initv);
      rep = 0;
    }
  }
  // Update the number of times the repeat factor was used
  repeat = rep;
  // FmtAssert(size == TY_size(ty), ("Inconsistent size"));
  // With padding it is impossible to determine how many initvs
  // constitute the initial value of this ty. So bail out if we are not able
  // to verify this.
  if (size != TY_size(ty))
    return NULL;
  PointsTo *pts = CXX_NEW(PointsTo(memPool), memPool);
  pts->setBit(notAPointer()->id());
  OffsetPointsToList *valList = CXX_NEW(OffsetPointsToList(), memPool);
  valList->push_back(make_pair(startOffset, pts));
  return valList;
}

static bool
isFlatArrayOrStruct(TY &ty, INITV_IDX initv_idx)
{
  const INITV &initv = Initv_Table[initv_idx];
  if ( (TY_kind(ty) == KIND_ARRAY || TY_kind(ty) == KIND_STRUCT) &&
       (INITV_kind(initv) == INITVKIND_VAL || 
        INITV_kind(initv) == INITVKIND_PAD) )
    return true;

  return false;
}

OffsetPointsToList *
ConstraintGraph::processInitv(TY &ty, INITV_IDX initv_idx, UINT32 startOffset,
                              MEM_POOL *memPool)
{
  const INITV &initv = Initv_Table[initv_idx];

  // Special handling for arrays/struct whose init values are not enclosed
  // in INITVKIND_BLOCK, but instead provided as a list of INITVKIND_VAL/PAD
  if (isFlatArrayOrStruct(ty, initv_idx)) {
    UINT32 rep;
    return processFlatInitvals(ty, initv_idx, startOffset, rep, memPool);
  }

  if (TY_kind(ty) == KIND_ARRAY || TY_kind(ty) == KIND_STRUCT) {
    FmtAssert(INITV_kind(initv) == INITVKIND_BLOCK,
              ("Expecting INITVKIND_BLOCK"));
  }
  
  if (INITV_kind(initv) == INITVKIND_SYMOFF) 
  {
    ST_IDX initv_st_idx = INITV_st(initv);
    ST *st = &St_Table[initv_st_idx];
    INT64 offset = INITV_ofst(initv);
    ST *base_st;
    INT64 base_offset;
    Expand_ST_into_base_and_ofst(st, offset, &base_st, &base_offset);
    ConstraintGraphNode *node;
    if (ST_class(base_st) == CLASS_CONST)
      node = notAPointer();
    else {
      // Process the init vals of this symbol
      if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG))
        fprintf(stderr, "Processing symbol value...\n");
      processInitValues(ST_st_idx(base_st));
      if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG))
        fprintf(stderr, "End processing symbol value...\n");
      node = getCGNode(CG_ST_st_idx(base_st), base_offset);
    }
    PointsTo *pts = CXX_NEW(PointsTo(memPool), memPool);
    pts->setBit(node->id());
    OffsetPointsToList *valList = CXX_NEW(OffsetPointsToList(), memPool);
    valList->push_back(make_pair(startOffset, pts));
    return valList;
  } 
  else if (INITV_kind(initv) == INITVKIND_ZERO ||
           INITV_kind(initv) == INITVKIND_ONE ||
           INITV_kind(initv) == INITVKIND_VAL)
  {
    PointsTo *pts = CXX_NEW(PointsTo(memPool), memPool);
    pts->setBit(notAPointer()->id());
    OffsetPointsToList *valList = CXX_NEW(OffsetPointsToList(), memPool);
    valList->push_back(make_pair(startOffset, pts));
    return valList;
  }
  else if (INITV_kind(initv) == INITVKIND_BLOCK)
  {
    FmtAssert(TY_kind(ty) == KIND_STRUCT || TY_kind(ty) == KIND_ARRAY,
              ("Expecting KIND_STRUCT or KIND_ARRAY"));
    OffsetPointsToList *valList = CXX_NEW(OffsetPointsToList(), _memPool);
    INITV_IDX child_initv_idx = INITV_blk(initv);
    if (TY_kind(ty) == KIND_STRUCT) {
      // Iterate over all fields in the struct
      FLD_HANDLE fld = TY_flist(ty);
      while (!fld.Is_Null() && child_initv_idx != 0) 
      {
        const INITV &child_initv = Initv_Table[child_initv_idx];
        UINT repeat; 
        if (INITV_kind(child_initv) == INITVKIND_ZERO ||
            INITV_kind(child_initv) == INITVKIND_ONE ||
            INITV_kind(child_initv) == INITVKIND_VAL)
          repeat = INITV_repeat2(child_initv);
        else
          repeat = INITV_repeat1(child_initv);
        UINT r = 0;
        while (r < repeat) {
          FmtAssert(!fld.Is_Null(), ("Premature end of fld"));
          TY &fty = Ty_Table[FLD_type(fld)];
          OffsetPointsToList *fldList;
          // Special handling for arrays/structs whose init values are not 
          // enclosed in INITVKIND_BLOCK, but instead provided as a list of 
          // INITVKIND_VAL/PAD
          if (isFlatArrayOrStruct(fty, child_initv_idx)) {
            UINT32 rep;
            fldList = processFlatInitvals(Ty_Table[FLD_type(fld)], 
                                          child_initv_idx,
                                          startOffset +  FLD_ofst(fld),
                                          rep,
                                          memPool);
            r += rep;
          } else {
            fldList = processInitv(fty, child_initv_idx,
                                   startOffset + FLD_ofst(fld), memPool);
            r++;
          }
          if (fldList == NULL)
            return NULL;
          valList->splice(valList->end(), *fldList);
          // Skip through fields with same offsets
          while (!FLD_next(fld).Is_Null() && 
                 (FLD_ofst(fld) == FLD_ofst(FLD_next(fld))))
            fld = FLD_next(fld);
          fld = FLD_next(fld);
        }
        child_initv_idx = INITV_next(Initv_Table[child_initv_idx]);
        // Skip inter field padding
        if (child_initv_idx &&
            INITV_kind(Initv_Table[child_initv_idx]) == INITVKIND_PAD) {
          child_initv_idx = INITV_next(Initv_Table[child_initv_idx]);
        }
      }
    } else if (TY_kind(ty) == KIND_ARRAY) {
      TY_IDX etyIdx = TY_etype(ty);
      TY &etype = Ty_Table[etyIdx];
      UINT32 numElems = TY_size(ty) / TY_size(etype);
      // Iterate over all elements in the array
      INITV_IDX child_initv_idx = INITV_blk(initv);
      UINT i = 0;
      while (i < numElems && child_initv_idx != 0) 
      {
        const INITV &child_initv = Initv_Table[child_initv_idx];
        // Skip elements to handle padding
        if (INITV_kind(child_initv) == INITVKIND_PAD) {
          i += (INITV_pad(child_initv) / TY_size(etype));
          child_initv_idx = INITV_next(child_initv);
          continue;
        }
        UINT repeat; 
        if (INITV_kind(child_initv) == INITVKIND_ZERO ||
            INITV_kind(child_initv) == INITVKIND_ONE ||
            INITV_kind(child_initv) == INITVKIND_VAL)
          repeat = INITV_repeat2(child_initv);
        else
          repeat = INITV_repeat1(child_initv);
        UINT r = 0;
        while (r < repeat) {
          FmtAssert(i < numElems, ("Premature end of array elems"));
          OffsetPointsToList *elemList;
          // Special handling for arrays/structs whose init values are not 
          // enclosed in INITVKIND_BLOCK, but instead provided as a list of 
          // INITVKIND_VAL/PAD
          if (isFlatArrayOrStruct(etype, child_initv_idx)) {
            UINT32 rep;
            elemList = processFlatInitvals(etype, child_initv_idx, 
                                           startOffset + i * TY_size(etype),
                                           rep, memPool);
            r += rep;
          } else {
            elemList = processInitv(etype, child_initv_idx,
                                    startOffset + i * TY_size(etype), memPool); 
            r++;
          }
          if (elemList == NULL)
            return NULL;
          valList->splice(valList->end(), *elemList);
          i++;
        }
        child_initv_idx = INITV_next(Initv_Table[child_initv_idx]);
      }
      FmtAssert(i == numElems && child_initv_idx == 0,
                ("Inconsistent init values for array"));
    }
    return valList;
  }
  return NULL;
}

void
ConstraintGraph::processInito(const INITO *const inito)
{
  ST_IDX inito_st_idx = INITO_st_idx(*inito);
  ST *st = &St_Table[inito_st_idx];
  INT64 offset = 0;
  ST *base_st;
  INT64 base_offset;
  Expand_ST_into_base_and_ofst(st, offset, &base_st, &base_offset);

  if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG)) {
    fprintf(stderr, "Processing inito for symbol: ");
    base_st->Print(stderr);
    fprintf(stderr, " offset: %lld\n", base_offset);
  }

  MEM_POOL memPool;
  MEM_POOL_Initialize(&memPool, "NystromInitval_Pool", FALSE);

  INITV_IDX initv_idx = INITO_val(*inito);
  TY &base_st_ty = Ty_Table[ST_type(base_st)];
  OffsetPointsToList *valList = 
                processInitv(base_st_ty, initv_idx, base_offset, &memPool);
  if (valList == NULL) {
    if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG))
      fprintf(stderr, "processInitv returning null\n");
    // The init section was not consistent with the type
    // Lump all the init data for this symbol to this node and 
    // make it field insensitive :( (unless its all not a pointer)
    PointsTo tmp;
    processInitv(INITO_val(*inito), tmp);
    // Check if any of the element is a pointer
    bool foundPtr = false;
    for (PointsTo::SparseBitSetIterator sbsi(&tmp, 0); sbsi != 0; ++sbsi) {
      ConstraintGraphNode *node = ConstraintGraph::cgNode(*sbsi);
      if (!node->checkFlags(CG_NODE_FLAGS_NOT_POINTER)) {
        foundPtr = true;
        break;
      }
    }

    // If the init vals did not have a pointer, ignore any initializations
    if (!foundPtr)
      return;

    ConstraintGraphNode::sanitizePointsTo(tmp,NULL,CQ_NONE);
    ConstraintGraphNode *node = getCGNode(CG_ST_st_idx(base_st), base_offset);
    node->unionPointsTo(tmp, CQ_GBL);
    node->stInfo()->setModulus(1, node->offset());
    if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG)) {
      fprintf(stderr, "processInito: Setting modulus to 1 for node:\n");
      node->print(stderr);
      fprintf(stderr, "\n");
    }
    return;
  }

  // For every <offset, pts> pair, create a new node and initialize its 
  // points to set
  for (OffsetPointsToListIterator iter = valList->begin();
       iter != valList->end(); iter++) {
    UINT32 offset = iter->first;
    PointsTo *pts = iter->second;
    ConstraintGraphNode *node = getCGNode(CG_ST_st_idx(base_st),
                                          base_offset + offset);
    ConstraintGraphNode::sanitizePointsTo(*pts,NULL,CQ_NONE);
    node->unionPointsTo(*pts, CQ_HZ);
    if (Get_Trace(TP_ALIAS,NYSTROM_CG_BUILD_FLAG)) {
      fprintf(stderr, "  node offset: %d val offset: %d, pts: ",
              node->offset(), offset);
      pts->print(stderr);
      fprintf(stderr, "\n");
    }
    // node->print(stderr);
  }

  MEM_POOL_Delete(&memPool);
}

void 
ConstraintGraph::processInitValues(ST_IDX st_idx)
{
  For_all(*(Scope_tab[GLOBAL_SYMTAB].inito_tab), ProcessInitData(this, st_idx));
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

ConstraintGraphNode *
ConstraintGraph::handleAlloca(WN *stmt)
{
  WN *rhs = WN_kid0(stmt);
  FmtAssert(WN_operator(rhs) == OPR_ALLOCA, ("Expecting alloca as kid 0"));
  // Handle ALLOCA which must appear as the rhs of a store 
  TY &stack_ptr_ty = Ty_Table[WN_ty(stmt)];
  if (TY_kind(stack_ptr_ty) != KIND_POINTER) {
    // May be looking at an ALLOCA with size 0, in which
    // case we will simply skip this RHS.  These can result
    // when lowering INTRN_F90_STACKTEMPALLOC for example.
    WN *size = WN_kid0(rhs);
    FmtAssert(WN_operator(size) == OPR_INTCONST &&
              WN_const_val(size) == 0,
              ("alloca with non-KIND_POINTER result expected to have"
                  "0 byte allocation\n"));
    return ConstraintGraph::notAPointer();
  } else {
    TY_IDX stack_ty_idx = TY_pointed(stack_ptr_ty);
    // We create a local variable that represents the dynamically
    // allocated stack location.
    // Create a symbol based in the pointed to type
    ST *stackST = Gen_Temp_Named_Symbol(stack_ty_idx, "_cgStack",
                                        CLASS_VAR, SCLASS_AUTO);
    ConstraintGraphNode *stackCGNode = getCGNode(CG_ST_st_idx(stackST), 0);
    stInfo(stackCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_STACK);
    return stackCGNode;
  }
}

static bool
isLHSaPointer(WN *stmt)
{
  TY_IDX stmt_ty;
  if (stmtStoresReturnValueToCaller(stmt))
    stmt_ty = TY_ret_type(Ty_Table[PU_prototype(Get_Current_PU())]);
  else
    stmt_ty = WN_object_ty(stmt);
  return (TY_kind(stmt_ty) == KIND_POINTER);
}

WN *
ConstraintGraph::handleAssignment(WN *stmt)
{
  WN *rhs = WN_kid0(stmt);
  // process RHS
  ConstraintGraphNode *cgNodeRHS = processExpr(rhs);
  // process LHS
  ConstraintGraphNode *cgNodeLHS = processLHSofStore(stmt);

  if (cgNodeLHS->checkFlags(CG_NODE_FLAGS_NOT_POINTER))
    return WN_next(stmt);

  // If rhs is not a pointer and if the lhs is not a pointer type and we are not
  // doing an indirect store, mark lhs as not a pointer.
  // If rhs is not a pointer, we do not need a copy/store edge to the lhs
  if (!exprMayPoint(rhs)) {
    if (!isLHSaPointer(stmt) && OPERATOR_is_scalar_store(WN_operator(stmt))) {
      cgNodeLHS->addFlags(CG_NODE_FLAGS_NOT_POINTER);
      cgNodeLHS->deleteInOutEdges();
    }
    return WN_next(stmt);
  }

  // Handle ALLOCA which must appear as the rhs of a store
  // Add the stack location to the points to set of the lhs
  if (WN_operator(rhs) == OPR_ALLOCA) {
    ConstraintGraphNode *stackCGNode = handleAlloca(stmt);
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
        cgNode->addFlags(CG_NODE_FLAGS_MEMOP);
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
        if (!addrCGNode || addrCGNode->checkFlags(CG_NODE_FLAGS_UNKNOWN))
          return NULL;
        // For a non-zero offset, we need to construct a new tmp preg, t1
        // such that t1 = y + offset (a skew)
        INT32 skew = 0;
        if (WN_offset(expr) != 0)
          skew = WN_offset(expr);
        // For MTYPE_BS, use the field offset
        if (WN_desc(expr) == MTYPE_BS) {
          UINT cur_field_id = 0;
          UINT64 field_offset = 0;
          TY &ptr_ty = Ty_Table[WN_load_addr_ty(expr)]; 
          FmtAssert(TY_kind(ptr_ty) == KIND_POINTER, ("Expect KIND_POINTER"));
          TY_IDX ptd_ty_idx = TY_pointed(ptr_ty);
          FLD_HANDLE fld = 
                     FLD_And_Offset_From_Field_Id(ptd_ty_idx, WN_field_id(expr),
                                                  cur_field_id, field_offset);
          skew += field_offset;
        }
        if (skew != 0) {
          ConstraintGraphNode *tmp1CGNode = genTempCGNode();
          bool added = false;
          addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, skew, added);
          addrCGNode = tmp1CGNode;
          // Adjust the CGNode associated with the address (kid0)
          // with the newly created temp CGNode
          WN_MAP_CGNodeId_Set(WN_kid0(expr), tmp1CGNode->id());
        }
        addrCGNode->addFlags(CG_NODE_FLAGS_MEMOP);
        // If the load can never load a pointer, return notAPointer
        if (!exprMayPoint(expr)) {
          WN_MAP_CGNodeId_Set(expr, notAPointer()->id());
          return notAPointer();
        }
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
          stInfo(tmpCGNode->cg_st_idx())->setModulus(WN_const_val(WN_kid1(expr)),
                                                     tmpCGNode->offset());
        } else {
          tmpCGNode = genTempCGNode();
        }
        WN_MAP_CGNodeId_Set(expr, tmpCGNode->id());
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
    cgNode->addFlags(CG_NODE_FLAGS_ARRAY);
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
      INT32 skew = 0;
      if (WN_offset(stmt) != 0)
        skew = WN_offset(stmt);
      // For MTYPE_BS, use the field offset
      if (WN_desc(stmt) == MTYPE_BS) {
        UINT cur_field_id = 0;
        UINT64 field_offset = 0;
        TY &ptr_ty = Ty_Table[WN_ty(stmt)];
        FmtAssert(TY_kind(ptr_ty) == KIND_POINTER, ("Expect KIND_POINTER"));
        TY_IDX ptd_ty_idx = TY_pointed(ptr_ty);
        FLD_HANDLE fld = 
                   FLD_And_Offset_From_Field_Id(ptd_ty_idx, WN_field_id(stmt),
                                                cur_field_id, field_offset);
        skew += field_offset;
      }
      if (skew != 0) {
        bool added = false;
        ConstraintGraphNode *tmp1CGNode = genTempCGNode();
        addEdge(addrCGNode, tmp1CGNode, ETYPE_SKEW, CQ_HZ, skew, added);
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
    
  cgNodeLHS->addFlags(CG_NODE_FLAGS_MEMOP);
  WN_MAP_CGNodeId_Set(stmt, cgNodeLHS->id());

  return cgNodeLHS;
}

ConstraintGraphNode *
ConstraintGraph::processParam(WN *wn)
{
  // Handle ALLOCA 
  // Create a temp node and add the stack location to its points to set 
  if (WN_operator(WN_kid0(wn)) == OPR_ALLOCA) {
    ConstraintGraphNode *tmpCGNode = genTempCGNode();
    ConstraintGraphNode *stackCGNode = handleAlloca(wn);
    tmpCGNode->addPointsTo(stackCGNode, CQ_HZ);
    return tmpCGNode;
  }

  ConstraintGraphNode *cgNodeKid = processExpr(WN_kid0(wn));
  if (cgNodeKid) {
    return cgNodeKid;
  } else {
    // Create a temp preg and set it UNKNOWN
    ConstraintGraphNode *tmpCGNode = genTempCGNode();
    tmpCGNode->addFlags(CG_NODE_FLAGS_UNKNOWN);
    fprintf(stderr, "***WARNING!!! Setting param to UNKNOWN**********\n");
    fdump_tree(stderr, wn);
    fprintf(stderr, "************************************************\n");
    return tmpCGNode;
  } 
}

static bool
formatContainsPercN(CallSideEffectInfo callInfo, WN *callWN)
{
  for (INT i = 0; i < WN_kid_count(callWN); i++ ) {
    UINT32 argAttr = callInfo.GetArgumentAttr(i,callWN);
    if (argAttr & CPA_is_format_string)
      return doesFormatStringContainPercN(callWN,i);
  }
  return false;
}

/*
 * The semantics of str/memcpy are that we are copying the
 * contents of the second parameter into the locations
 * pointed-to by the first argument.
 */
void
ConstraintGraph::handleMemcopy(CallSite *cs)
{
  list<CGNodeId>::const_iterator li = cs->parms().begin();
  CGNodeId firstParmId = *li;
  ++li;
  CGNodeId secondParmId = *li;

  ConstraintGraphNode *p1Node = cgNode(firstParmId);
  ConstraintGraphNode *p2Node = cgNode(secondParmId);
  ConstraintGraphNode *tmp = genTempCGNode();

  // Now, we model the semantics by inserting a read edge from
  // the source to our temporary node and a write from the
  // temporary node to the destination.
  bool added;
  ConstraintGraphEdge *edge;
  edge = addEdge(p2Node,tmp,ETYPE_LOAD,CQ_HZ,1,added);
  FmtAssert(edge,("Adding of memcpy load edge failed\n"));
  edge = addEdge(tmp,p1Node,ETYPE_STORE,CQ_HZ,1,added);
  FmtAssert(edge,("Adding of memcpy store edge failed\n"));

  // We need to mark both the source and destination has being
  // involved in a byte cycle
  p1Node->inKCycle(1);
  adjustPointsToForKCycle(p1Node);
  p2Node->inKCycle(1);
  adjustPointsToForKCycle(p2Node);

  // Mark graph to indicate the semantics of the callsite are
  // modeled for these actuals.
  p1Node->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);
  p2Node->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);
}

void
ConstraintGraph::handleOneLevelWrite(const WN *call, CallSite *cs)
{
  // First, determine whether the call is "known"
  bool inTable;
  CallSideEffectInfo callInfo =
      CallSideEffectInfo::GetCallSideEffectInfo(call,&inTable);
  if (!inTable) return;

  // Does this call write any of its arguments?  If so, we will
  // model single level writes as long as the same argument is not
  // written beyond two levels.
  if (!callInfo.writeArgIndirectly())
    return;

  // Skip free(), we will conveniently ignore the fact that the
  // returned heap memory is written.
  if (callInfo.isHeapDeallocating())
    return;

  UINT32 argPos = 0;
  list<CGNodeId>::const_iterator li = cs->parms().begin();
  for ( ; li != cs->parms().end(); ++li,++argPos) {
    UINT32 argAttr = callInfo.GetArgumentAttr(argPos,NULL,true);
    if ((argAttr & CPA_one_level_write) &&
        !(argAttr & (CPA_two_level_write|
                     CPA_multi_level_write|
                     CPA_exposed_to_globals))) {
      ConstraintGraphNode *aNode = cgNode(*li);
      if (aNode->checkFlags(CG_NODE_FLAGS_ACTUAL_MODELED))
        continue;
      bool added;
      ConstraintGraphEdge *edge;
      edge = addEdge(notAPointer(),aNode,ETYPE_STORE,CQ_HZ,1,added);
      FmtAssert(edge,("Adding of edge for modeling one level write failed\n"));

      // We mark the destination node has being involved in a byte cycle.
      // While this is supposed to prevent the entire object from escaping
      // we do not known the extent of the write so we model it as
      // context insensitive.
      aNode->inKCycle(1);
      adjustPointsToForKCycle(aNode);

      // Mark the graph to indicate that the semantics of the callsite
      // are modeled for this actual
      aNode->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);
    }
  }
}

/*
 * The semantics of memset are such that we are writing
 * a "non-pointer" value into the locations pointed-to
 * by the first argument. The actual value being written
 * is irrelevant.
 */
void
ConstraintGraph::handleMemset(CallSite *cs)
{
  list<CGNodeId>::const_iterator li = cs->parms().begin();
  CGNodeId firstParmId = *li;
  ConstraintGraphNode *pNode = cgNode(firstParmId);

  // We are going to simply add a store edge into the first
  // actual parameter of "not-a-pointer".
  bool added;
  ConstraintGraphEdge *edge;
  edge = addEdge(notAPointer(),pNode,ETYPE_STORE,CQ_HZ,1,added);
  FmtAssert(edge,("Adding memset store edge failed!"));

  // We mark the destination node has being involved in a byte cycle
  pNode->inKCycle(1);
  adjustPointsToForKCycle(pNode);

  // Mark the graph to indicate that the semantics of the callsite
  // are modeled for this actual
  pNode->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);
}

/*
 * For known calls, arguments may be exposed to the return, e.g.
 * strcat, which essentially returns a pointer to the dest argument.
 * We model that by adding an explicit copy edge from the actual parm
 * to the actual return, marking both as being "modeled".
 */
void
ConstraintGraph::handleExposedToReturn(const WN *call, CallSite *cs) const
{
  // First, determine whether the call is "known"
  bool inTable;
  CallSideEffectInfo callInfo =
      CallSideEffectInfo::GetCallSideEffectInfo(call,&inTable);
  if (!inTable) return;

  // Does this call expose any of its arguments to return?  Typically there
  // is only one such argument, but we will add one copy edge for each
  // argument that is possibly exposed to the return.
  if (!callInfo.exposeArgAddressToReturn())
    return;

  ConstraintGraphNode *actualReturn = cs->returnId()?cgNode(cs->returnId()):NULL;
  UINT32 argPos = 0;
  list<CGNodeId>::const_iterator li = cs->parms().begin();
  for ( ; li != cs->parms().end(); ++li,++argPos) {
    UINT32 argAttr = callInfo.GetArgumentAttr(argPos,NULL,true);
    if (argAttr & CPA_exposed_to_return) {
      ConstraintGraphNode *actualParm = cgNode(*li);
      // We mark the actual parameter as being modeled even if we do not
      // have a return actual, as long as we are not writing the result to
      // globals....
      if (!(argAttr & CPA_exposed_to_globals))
        actualParm->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);

      // Hook up the actual parameter to the return via copy edge...
      if (actualReturn) {
        bool added;
        ConstraintGraphEdge *edge;
        UINT32 size = actualParm->stInfo()->varSize();
        edge = addEdge(actualParm,actualReturn,ETYPE_COPY,CQ_HZ,size,added);
        FmtAssert(edge,("Adding copy edge from actual parm to return failed\n"));
        actualReturn->addFlags(CG_NODE_FLAGS_ACTUAL_MODELED);
      }
    }
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
                                        nextCallSiteId++, _memPool), _memPool);
  _callSiteMap[callSite->id()] = callSite;
  WN_MAP_CallSiteId_Set(callWN, callSite->id());

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

    // Because a *printf routine man have %n in its format string, we
    // examine the call here to avoid having to conservatively assume
    // that all operands after the format string are modified by the call.
    bool inTable = false;
    CallSideEffectInfo callInfo =
        CallSideEffectInfo::GetCallSideEffectInfo(callWN,&inTable);
    if (callInfo.isPrintfLike() && formatContainsPercN(callInfo,callWN))
      callSite->setPercN();

    if (inTable) {
      // Here we take care of the copy semantics of the mem*, str*
      // routines.
      const char *funcName = ST_name(WN_st(callWN));
      if (!strcmp(funcName,"memcpy") ||
          !strcmp(funcName,"memmove") ||
          !strcmp(funcName,"strcpy") ||
          !strcmp(funcName,"strncpy"))
        handleMemcopy(callSite);
      //else if (!strcmp(funcName,"memset"))
      //  handleMemset(callSite);
    }
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

      // For a VA_START, add the _varArgs node to the pts to set of
      // of the first parameter which is of type va_list
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
          stInfo(valistNode->cg_st_idx())->setModulus(Pointer_Size,
                                                      valistNode->offset());
          valistNode->addPointsTo(_varArgs, CQ_HZ);
        }
      } else if (!ptsHZ.isEmpty()) {
        for (PointsTo::SparseBitSetIterator iter(&ptsHZ, 0); iter != 0; ++iter) {
          ConstraintGraphNode *valistNode = ConstraintGraph::cgNode(*iter);
          stInfo(valistNode->cg_st_idx())->setModulus(Pointer_Size,
                                                      valistNode->offset());
          valistNode->addPointsTo(_varArgs, CQ_HZ);
        }
      }
    }
    else if (callSite->intrinsic() == INTRN_MEMCPY ||
        callSite->intrinsic() == INTRN_MEMMOVE||
        callSite->intrinsic() == INTRN_STRCPY ||
        callSite->intrinsic() == INTRN_STRNCPY)
      handleMemcopy(callSite);
    //else if (callSite->intrinsic() == INTRN_MEMSET)
    //  handleMemset(callSite);
  } else
    callSite->addFlags(CS_FLAGS_UNKNOWN);


  // Process the return value from the call
  WN *stmt = WN_next(callWN);
  if (stmt != NULL && stmtStoresReturnValueFromCallee(stmt)) {
    ConstraintGraphNode *cgNode = processLHSofStore(stmt);
    cgNode->addFlags(CG_NODE_FLAGS_ACTUAL_RETURN);

    // If the return value of the call can be determined to be
    // not a pointer, we want to flag the node that represents
    // the target of that return value as !PTR
    if (!exprMayPoint(WN_kid0(stmt))) {
      cgNode->addFlags(CG_NODE_FLAGS_NOT_POINTER);
      cgNode->deleteInOutEdges();
    }

    callSite->returnId(cgNode->id());

    // Create a heap node
    if (calleeReturnsNewMemory(callWN)) {
      // We want to create a symbol of the pointed-to type.  We
      // may have to work a little bit to actually find it.  If
      // we cannot then we create symbol of 'Pointer_type'
      TY_IDX ty_idx;
      if (TY_kind(Ty_Table[WN_ty(stmt)]) != KIND_POINTER) {
        WN *tmpStmt = nextStmtStoresResultOfCurrentStmt(stmt);
        if (tmpStmt && TY_kind(Ty_Table[WN_ty(tmpStmt)]) == KIND_POINTER) {
          ty_idx = TY_pointed(Ty_Table[WN_ty(tmpStmt)]);
          stmt = tmpStmt;
        }
        else
          ty_idx = MTYPE_To_TY(Pointer_type);
      }
      else
        ty_idx = TY_pointed(Ty_Table[WN_ty(stmt)]);

      ST *heapST = Gen_Temp_Named_Symbol(ty_idx, "_cgHeap",
                                         CLASS_VAR, SCLASS_AUTO);
      ConstraintGraphNode *heapCGNode = getCGNode(CG_ST_st_idx(heapST), 0);
      stInfo(heapCGNode->cg_st_idx())->addFlags(CG_ST_FLAGS_HEAP);
      cgNode->addPointsTo(heapCGNode,CQ_HZ);
    }

    stmt = WN_next(stmt);
  }

  // Model the behavior of this callsite in the graph, if possible
  if (callSite->isDirect()) {
     handleOneLevelWrite(callWN,callSite);
     handleExposedToReturn(callWN,callSite);
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

  if (ST_class(base_st) == CLASS_CONST)
    return notAPointer();

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

  ConstraintGraphNode *n = checkCGNode(CG_ST_st_idx(base_st), base_offset);
  if (n)
    return n;

  // If this is the first time we encounter this symbol/node
  if (ST_is_initialized(*base_st) && 
      _processedInitVals.find(ST_st_idx(base_st)) == _processedInitVals.end()) {
    processInitValues(ST_st_idx(base_st));
    _processedInitVals.insert(ST_st_idx(base_st));
  }

  n = getCGNode(CG_ST_st_idx(base_st), base_offset);

  // If the ST is initialized to zero and is a scalar, mark it as 
  // not a pointer
  if (ST_class(base_st) == CLASS_VAR &&
      ST_is_initialized(*base_st) && 
      ST_init_value_zero(*base_st) && 
      TY_kind(ST_type(base_st)) == KIND_SCALAR)
    n->addFlags(CG_NODE_FLAGS_NOT_POINTER);

  n->ty_idx(WN_object_ty(wn));

  return n;
}

// Add edge between src and dest, return the newly added edge if it does
// not exist and set added = true, else return the existing edge and
// set added = false
ConstraintGraphEdge *
ConstraintGraph::addEdge(ConstraintGraphNode *src, ConstraintGraphNode *dest,
                         CGEdgeType etype, CGEdgeQual qual, INT32 sizeOrSkew, 
                         bool &added, UINT16 flags)
{
  ConstraintGraphEdge cgEdge(src, dest, etype, qual, sizeOrSkew);

  ConstraintGraphEdge *retSrcEdge = src->outEdge(&cgEdge);
  ConstraintGraphEdge *retDestEdge = dest->inEdge(&cgEdge);

  bool edgeExistsInBoth = retSrcEdge && retDestEdge;
  bool edgeExistsInNeither = !retSrcEdge && !retDestEdge;

  if (edgeExistsInNeither) {
    ConstraintGraphEdge *edge =
      CXX_NEW(ConstraintGraphEdge(src, dest, etype, qual, sizeOrSkew),
              edgeMemPool);
    edge->addFlags(flags);
    src->addOutEdge(edge);
    dest->addInEdge(edge);
    added = true;
    return edge;
  } else if (edgeExistsInBoth) {
    added = false;
    FmtAssert(retSrcEdge == retDestEdge, ("src and dest edge not same!\n"));
    // If the edge already exists, update the size/skew
    if (etype == ETYPE_SKEW)
      retSrcEdge->skew(MIN(retSrcEdge->skew(), sizeOrSkew));
    else 
      retSrcEdge->size(MAX(retSrcEdge->size(), sizeOrSkew));
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
  if (workList())
    workList()->remove(edge);
  CXX_DELETE(edge,edgeMemPool);
}

static INT64
alignOffset(TY_IDX ty_idx, INT64 offset)
{
  // If the offset is already aligned to Pointer_Size, there
  // is not need to adjust.  It is the sub-pointer size offsets
  // that will cause issues, especially if the offsets to not
  // match up with a valid field offset in the current TY
  if (offset & (~(Pointer_Size-1)) == offset)
    return offset;

  TY ty = Ty_Table[ty_idx];
  TY_KIND kind = TY_kind(ty);

  // For arrays, we dive into the array to determine the actual
  // element type
  if (kind == KIND_ARRAY) {
    TY_IDX etyIdx = TY_etype(ty);
    while (TY_kind(Ty_Table[etyIdx]) == KIND_ARRAY)
      etyIdx = TY_etype(Ty_Table[etyIdx]);
    kind = TY_kind(Ty_Table[etyIdx]);
    ty = Ty_Table[etyIdx];
  }
  if (kind == KIND_SCALAR ||
      kind == KIND_FUNCTION ||
      kind == KIND_POINTER ||
      kind == KIND_VOID)
    offset = offset & (~(Pointer_Size-1));
  else { // kind == KIND_STRUCT
    FmtAssert(kind == KIND_STRUCT,("Expecting only structs here"));

    for (FLD_HANDLE fld = TY_flist(ty); !fld.Is_Null(); fld = FLD_next(fld)) {
       TY &fty = Ty_Table[FLD_type(fld)];
       UINT32 start = FLD_ofst(fld);
       UINT32 end = start+TY_size(fty)-1;
       if (start <= offset && offset <= end) {
         if (TY_kind(fty) == KIND_ARRAY ||
             TY_kind(fty) == KIND_STRUCT)
           offset = alignOffset(FLD_type(fld),offset);
         else
           offset = start;
         break;
       }
    }
  }
  return offset;
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
      offset = si->applyModulus(offset);
    else {
      // If we are requesting offset -1 for a symbol that is already
      // field insensitive, there is no need to create a new node
      if (!si->checkFlags(CG_ST_FLAGS_MODRANGE)) {
        ConstraintGraphNode *n = si->firstOffset();
        Is_True(n,("We should always have at least one offset.\n"));
        if (n->offset() != -1 && si->getModulus(n->offset()) == 1) {
          Is_True(n->offset() == 0,("Only offset should be zero!\n"));
          offset = 0;
        }
      }
      else if (si->checkFlags(CG_ST_FLAGS_NOFIELD))
        offset = si->firstOffset()->offset();
    }
    // Ensure that the computed offset is aligned to a field boundary
    INT64 origOffset = offset;
    offset = alignOffset(si->ty_idx(),origOffset);
#if 0
    if (offset != origOffset) {
      fprintf(stderr,"Aligned offset %d to %d for the following ST\n",
              (int)origOffset,(int)offset);
      si->print(stderr,true);
    }
#endif
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
  // to offset zero.
  if (!si->checkFlags(CG_ST_FLAGS_PREG)) {
    if (offset != -1 && (si->numOffsets() >= si->maxOffsets())) {
      FmtAssert(false,("Need to fix getCGNode: too many offsets!\n"));
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

  if (Get_Trace(TP_ALIAS,NYSTROM_SOLVER_FLAG)) {
    fprintf(stderr,"Creating node:\n");
    cgNode->print(stderr);
    si->print(stderr);
  }

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
ConstraintGraph::stats()
{
  UINT32 nodeCount = 0;
  UINT32 ptsCount = 0;
  UINT32 ptsElemCount = 0;
  UINT32 emptyPtsCount = 0;
  UINT32 totalCardinality = 0;
  for (CGIdToNodeMapIterator iter = gBegin(); iter != gEnd(); ++iter)
  {
    ConstraintGraphNode *node = iter->second;
    nodeCount += 1;
    for (PointsToIterator pti(node); pti != 0; ++pti) {
      PointsTo &pts = *pti;
      if (!pts.isEmpty())
        ptsCount += 1;
      UINT32 card = pts.numBits();
      totalCardinality += card;
      if (card == 0)
        emptyPtsCount += 1;
      ptsElemCount += pts.numElements();
    }
    for (PointsToIterator pti(node,true); pti != 0; ++pti) {
      PointsTo &pts = *pti;
      if (!pts.isEmpty())
        ptsCount += 1;
      UINT32 card = pts.numBits();
      totalCardinality += card;
      if (card == 0)
        emptyPtsCount += 1;
      ptsElemCount += pts.numElements();
    }
  }
  fprintf(stderr,"Points to set statistics\n");
  fprintf(stderr,"  CG Node count:   %d\n",nodeCount);
  fprintf(stderr,"  Points-to count: %d\n",ptsCount);
  fprintf(stderr,"     Empty:        %d\n",emptyPtsCount);
  fprintf(stderr,"  Bits / pts:      %d\n",
          ptsCount > 0 ? totalCardinality/ptsCount : 0);
  fprintf(stderr,"  Bits / elem:     %d\n",
          ptsCount > 0 ? totalCardinality/ptsElemCount : 0);
  fprintf(stderr,"  Elem / pts:      %d\n",
          ptsCount > 0 ? ptsElemCount/ptsCount : 0);
  fprintf(stderr,"  Elem memory:     %d\n",ptsElemCount * 28);
}

void
ConstraintGraph::print(FILE *file)
{
  for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
      iter != _cgNodeToIdMap.end(); iter++) {
    iter->first->print(file);
    fprintf(stderr, " StInfo:\n");
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

  fprintf(file, "StInfos:\n");
  for (CGStInfoMapIterator iter = _cgStInfoMap.begin();
       iter != _cgStInfoMap.end(); iter++) {
    fprintf(file, "cg_st_idx: %llu\n", iter->first);
    iter->second->print(file, true);
    fprintf(file, "\n");
  }
}

// Make the St field insenstive.
// 1) Merge all offsets to first offset.
// 2) Set the modulus to 1. 
// 3) Remove all references to the merged offsets from the pts/rev-pts
//    set of other nodes and replace with the merged node
void
StInfo::collapse()
{
  if (checkFlags(CG_ST_FLAGS_MODRANGE)) {
    ModulusRange *outerRange = modRange();
    ModulusRange::setModulus(outerRange, 1, _memPool);
  }
  else
    mod(1);

  applyModulus();
}

// Collapse cur with 'this' node
void
ConstraintGraphNode::collapse(ConstraintGraphNode *cur)
{
  // Merge cur with 'this' node
  ConstraintGraphNode *curParent = cur->parent();

  // When merging, merge with 'this's parent
  ConstraintGraphNode *thisParent = this->parent();

  if (curParent != thisParent) {
    thisParent->merge(curParent);
    curParent->repParent(thisParent);

    // If cur has a parent which is the only offset, 
    // or if cur does not have a distinct parent,
    // PARENT_COPY edges are not required
    if (cur != curParent && !curParent->isOnlyOffset()) {
      bool added = false;
      ConstraintGraphEdge *newEdge =
      ConstraintGraph::addEdge(thisParent, curParent, ETYPE_COPY, CQ_HZ, 0,
                               added, CG_EDGE_PARENT_COPY);
      FmtAssert(added, (":merge: failed to add special copy edge"));
    }
  }

  // When cur's parent is merged with this, we might have transfered
  // a parent copy edge from cur's parent to cur, which needs to be removed
  cur->deleteInOutEdges();
      
  // We replace cur from the pts to set of CGNodes that point to cur 
  // with 'this'.
  // Use the reverse pts to set to find nodes that point to cur and 
  // replace by 'this'
  for (PointsToIterator pti(cur,true); pti != 0; ++pti) {
    PointsTo &rpts = *pti;
    CGEdgeQual qual = pti.qual();
    for (PointsTo::SparseBitSetIterator sbsi(&rpts,0); sbsi != 0; ++sbsi) {
      ConstraintGraphNode *ptrNode = ConstraintGraph::cgNode(*sbsi);
      // If cur does not exist in ptrNode's pts, the parent 'this' should exist
      if (!ptrNode->checkPointsTo(cur, qual)) {
        FmtAssert(ptrNode->checkPointsTo(this, qual), 
                  ("node: %d shouldn't exist in ptrNode: %d's pts set\n",
                  this->id(), ptrNode->id()));
      } else {
        ptrNode->removePointsTo(cur->id(), qual);
        ptrNode->addPointsTo(this, qual);
      }
    }
  }
  cur->deleteRevPointsToSet();
  cur->collapsedParent(this->id());
  cur->addFlags(CG_NODE_FLAGS_COLLAPSED);

  if (!(cur->checkFlags(CG_NODE_FLAGS_NOT_POINTER)))
    this->clearFlags(CG_NODE_FLAGS_NOT_POINTER);
  if (cur->inKCycle() > 0)
    this->inKCycle(gcd(this->inKCycle(), cur->inKCycle()));
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
//    NOTE: This is now done by the caller, if required
// 5) Union the points-to sets of the two nodes, adjustPointsToForKCycle
//    and delete the pts set and edges of src
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
  for ( PointsToIterator pti(src); pti != 0; ++pti ) {
    bool change = unionPointsTo(*pti,pti.qual());
    if (change && ConstraintGraph::workList())
      ConstraintGraph::addEdgesToWorkList(this);
  }

  // Remove src from the reverse points to set of all nodes in src's 
  // points to set
  for (PointsToIterator pti(src); pti != 0; ++pti) {
    PointsTo &pts = *pti;
    CGEdgeQual qual = pti.qual();
    for (PointsTo::SparseBitSetIterator sbsi(&pts,0); sbsi != 0; ++sbsi) {
      ConstraintGraphNode *ptdNode = ConstraintGraph::cgNode(*sbsi);
      ptdNode->removeRevPointsTo(src->id(), qual);
    }
  }

  // 6) Delete edges and pts to set
  src->deleteInEdgeSet();
  src->deleteOutEdgeSet();
  src->deletePointsToSet();

  // 7) Set flags
  src->addFlags(CG_NODE_FLAGS_MERGED);
  if (src->checkFlags(CG_NODE_FLAGS_UNKNOWN))
    addFlags(CG_NODE_FLAGS_UNKNOWN);
}

void ConstraintGraphNode::deleteInOutEdges()
{
  CGEdgeSet deleteEdges;
  const CGEdgeSet &inLoadStoreSet = inLoadStoreEdges();
  for (CGEdgeSetIterator eiter = inLoadStoreSet.begin();
       eiter != inLoadStoreSet.end(); eiter++) {
    ConstraintGraphEdge *edge = *eiter;
    deleteEdges.insert(edge);
  }
  const CGEdgeSet &inCopySkewSet = inCopySkewEdges();
  for (CGEdgeSetIterator eiter = inCopySkewSet.begin();
       eiter != inCopySkewSet.end(); eiter++) {
    ConstraintGraphEdge *edge = *eiter;
    deleteEdges.insert(edge);
  }
  for (CGEdgeSetIterator eiter = deleteEdges.begin();
       eiter != deleteEdges.end(); eiter++)
    ConstraintGraph::removeEdge(*eiter);

  deleteInEdgeSet();

  // Delete outgoing edges
  deleteEdges.clear();

  const CGEdgeSet &outLoadStoreSet = outLoadStoreEdges();
  for (CGEdgeSetIterator eiter = outLoadStoreSet.begin();
       eiter != outLoadStoreSet.end(); eiter++) {
    ConstraintGraphEdge *edge = *eiter;
    deleteEdges.insert(edge);
  }
  const CGEdgeSet &outCopySkewSet = outCopySkewEdges();
  for (CGEdgeSetIterator eiter = outCopySkewSet.begin();
       eiter != outCopySkewSet.end(); eiter++) {
    ConstraintGraphEdge *edge = *eiter;
    deleteEdges.insert(edge);
  }
  for (CGEdgeSetIterator eiter = deleteEdges.begin();
       eiter != deleteEdges.end(); eiter++)
    ConstraintGraph::removeEdge(*eiter);

  deleteOutEdgeSet();
}

void
ConstraintGraphNode::deletePointsToSet()
{
  PointsToList *p = _pointsToList;
  PointsToList *np;
  while (p) {
    np = p->next();
    CXX_DELETE(p, cg()->memPool());
    p = np;
  }
  _pointsToList = NULL;
}

void
ConstraintGraphNode::deleteRevPointsToSet()
{
  PointsToList *p = _revPointsToList;
  PointsToList *np;
  while (p) {
    np = p->next();
    CXX_DELETE(p, cg()->memPool());
    p = np;
  }
  _revPointsToList = NULL;
}

void
ConstraintGraphNode::deleteInEdgeSet()
{
  CGEdgeList *e = _inEdges;
  CGEdgeList *ne;
  while (e) {
    ne = e->next();
    FmtAssert(e->cgEdgeSet()->empty(), ("edge set not empty"));
    CXX_DELETE(e, cg()->memPool());
    e = ne;
  }
  _inEdges = NULL;
}

void
ConstraintGraphNode::deleteOutEdgeSet()
{
  CGEdgeList *e = _outEdges;
  CGEdgeList *ne;
  while (e) {
    ne = e->next();
    FmtAssert(e->cgEdgeSet()->empty(), ("edge set not empty"));
    CXX_DELETE(e, cg()->memPool());
    e = ne;
  }
  _outEdges = NULL;
}

void
ConstraintGraphNode::deleteEdgesAndPtsSetList()
{
  // Delete the points-to set
  deletePointsToSet();

  // Delete the reverse points-to set
  deleteRevPointsToSet();

  // Delete the incoming/outgoing edge sets
  deleteInEdgeSet();

  deleteOutEdgeSet();
}

void
dbgPrintCGNode(CGNodeId nodeId)
{
  ConstraintGraphNode *node = ConstraintGraph::cgNode(nodeId);
  if (node)
    node->dbgPrint();
  else
    fprintf(stderr,"Invalid CGNodeId %d\n",nodeId);
}

void
dbgPrintPointsTo(PointsTo &pts)
{
  pts.print(stderr);
}

void
ConstraintGraphNode::dbgPrint()
{
  print(stderr);
}

char *
ConstraintGraphNode::stName() const
{
  static char buf[128];
  if (!cg()->inIPA() ||
      ST_IDX_level(SYM_ST_IDX(_cg_st_idx)) == GLOBAL_SYMTAB)
    return ST_name(St_Table[SYM_ST_IDX(_cg_st_idx)]);
  else
    sprintf(buf, "<file:%d pu:%d st_idx:%d>",
            FILE_NUM_ST_IDX(_cg_st_idx),
            PU_NUM_ST_IDX(_cg_st_idx),
            SYM_ST_IDX(_cg_st_idx));
  return buf;
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
  fprintf(file, " ty_idx: %d\n",ty_idx());
  fprintf(file, " GBL: "); pointsTo(CQ_GBL).print(file);
  fprintf(file, " HZ: ");  pointsTo(CQ_HZ).print(file);
  fprintf(file, " DN: ");  pointsTo(CQ_DN).print(file);
  fprintf(file, "\n");
  fprintf(file, " R-GBL: "); myRevPointsTo(CQ_GBL).print(file);
  fprintf(file, " R-HZ: ");  myRevPointsTo(CQ_HZ).print(file);
  fprintf(file, " R-DN: ");  myRevPointsTo(CQ_DN).print(file);
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
  if (checkFlags(CG_NODE_FLAGS_MERGED))
    fprintf(file, " MERGED");
  if (checkFlags(CG_NODE_FLAGS_PTSMOD))
    fprintf(file, " PTSMOD");
  if (checkFlags(CG_NODE_FLAGS_ADDR_TAKEN))
    fprintf(file, " ADDRTAKEN");
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_MODELED))
    fprintf(file, " AMODELED");
  if (checkFlags(CG_NODE_FLAGS_ARRAY))
    fprintf(file, " ARRAY");
  if (checkFlags(CG_NODE_FLAGS_COLLAPSED))
    fprintf(file, " COLLAPSED");
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
  ostr << " ty_idx: " << ty_idx() << endl;
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
  if (checkFlags(CG_NODE_FLAGS_MERGED))
    ostr << " MERGED";
  if (checkFlags(CG_NODE_FLAGS_PTSMOD))
    ostr << " PTSMOD";
  if (checkFlags(CG_NODE_FLAGS_ADDR_TAKEN))
    ostr << " ADDRTAKEN";
  if (checkFlags(CG_NODE_FLAGS_ACTUAL_MODELED))
    ostr << " AMODELED";
  if (checkFlags(CG_NODE_FLAGS_ARRAY))
    ostr << " ARRAY";
  if (checkFlags(CG_NODE_FLAGS_COLLAPSED))
    ostr << " COLLAPSED";
  ostr << " ]" << endl;
}

void
StInfo::dbgPrint()
{
  print(stderr,true);
}

static void
printType(TY_IDX ty_idx, FILE *file)
{
  TY &ty = Ty_Table[ty_idx];

  const char *name_str = TY_name_idx(ty) == 0 ? NULL : TY_name(ty);

  fputs(name_str ? name_str : "(anon)", file);

  const TY *pty = &ty;
  INT pcount = 0;
  while (TY_kind(*pty) == KIND_POINTER) {
    pty = &Ty_Table[TY_pointed(*pty)];
    ++pcount;
  }

  if (TY_kind(ty) == KIND_SCALAR && TY_mtype(ty) != MTYPE_UNKNOWN)
    name_str = MTYPE_name(TY_mtype(ty));
  else
    name_str = Kind_Name(TY_kind(ty));

  fprintf(file, " (#%d, %s", TY_IDX_index(ty_idx), name_str);
  while (pcount-- > 0)
    fputc('*', file);
  fputc(')', file);
}

static void
printType(TY_IDX ty_idx, ostream &str)
{
  TY &ty = Ty_Table[ty_idx];

  const char *name_str = TY_name_idx(ty) == 0 ? NULL : TY_name(ty);

  if (name_str)
   str << name_str;
  else
   str << "(anon)";

  const TY *pty = &ty;
  INT pcount = 0;
  while (TY_kind(*pty) == KIND_POINTER) {
    pty = &Ty_Table[TY_pointed(*pty)];
    ++pcount;
  }

  if (TY_kind(ty) == KIND_SCALAR && TY_mtype(ty) != MTYPE_UNKNOWN)
    name_str = MTYPE_name(TY_mtype(ty));
  else
    name_str = Kind_Name(TY_kind(ty));

  str << " (#" << TY_IDX_index(ty_idx) << " " << name_str;
  while (pcount-- > 0)
    str << "*";
  str << ")";
}

void
StInfo::print(FILE *file,bool emitOffsetChain)
{
  fprintf(file, "  varSize: %lld", _varSize);
  fprintf(file, " ST flags: [");
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    fprintf(file, " GLOBAL");
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
  if (checkFlags(CG_ST_FLAGS_ESCLOCAL))
    fprintf(file, " ESCLCL");
  fprintf(file, " ]");
  if (!emitOffsetChain)
    if (_firstOffset)
      fprintf(file, " firstCGNodeId: %d", _firstOffset->id());
    else
      fprintf(file, " firstCGNodeId: null");
  fprintf(file, " numOffsets: %d ", numOffsets());
  if (!checkFlags(CG_ST_FLAGS_MODRANGE))
    fprintf(file," modulus: %d\n",_u._modulus);
  else {
    fprintf(file,"\n  modulus ranges:\n");
    _u._modRange->print(file,4);
  }
  fprintf(file, "  type: "); 
  printType(_ty_idx, file);
  fprintf(file, "\n");
  if (emitOffsetChain) {
    ConstraintGraphNode *node = _firstOffset;
    fprintf(file,"  Offset list:\n");
    while (node) {
      fprintf(file,"   Id: %d, offset %d, parent %d\n",
              node->id(),node->offset(),
              node->repParent()?node->repParent()->id():node->id());
      node = node->nextOffset();
    }
  }
}

void StInfo::print(ostream& str)
{
  str << "  varSize: " << _varSize;
  str << " ST flags: [";
  if (checkFlags(CG_ST_FLAGS_GLOBAL))
    str << " GLOBAL";
  if (checkFlags(CG_ST_FLAGS_TEMP))
    str << " TEMP";
  if (checkFlags(CG_ST_FLAGS_HEAP))
    str << " HEAP";
  if (checkFlags(CG_ST_FLAGS_STACK))
    str << " STACK";
  if (checkFlags(CG_ST_FLAGS_NOCNTXT))
    str << " CI";
  if (checkFlags(CG_ST_FLAGS_ESCLOCAL))
    str << " ESCLCL";
  str << " ]";
  if (_firstOffset)
    str << " firstCGNodeId: " << _firstOffset->id();
  else
    str << " firstCGNodeId: null";
  str << " numOffsets: " << numOffsets();
  if (!checkFlags(CG_ST_FLAGS_MODRANGE))
     str << " modulus: " << _u._modulus << endl;
   else {
     str << endl << "  modulus ranges:" << endl;
     _u._modRange->print(str,2);
   }
  str << "  type: ";
  printType(_ty_idx, str);
  str << endl;
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
ConstraintGraph::updateCloneStIdxMap(ST_IDX old_clone_idx,
                                     ST_IDX new_clone_idx)
{
  for (hash_map<ST_IDX, ST_IDX>::iterator iter = origToCloneStIdxMap.begin();
       iter != origToCloneStIdxMap.end(); iter++)
  {
    ST_IDX orig_st_idx  = iter->first;
    ST_IDX clone_st_idx = iter->second;
    if (clone_st_idx == old_clone_idx) {
      origToCloneStIdxMap[orig_st_idx] = new_clone_idx;
      return;
    }
  }
}

void
ConstraintGraph::updateOrigToCloneStIdxMap(ST_IDX orig_st_idx,
                                           ST_IDX clone_st_idx)
{
  origToCloneStIdxMap[orig_st_idx] = clone_st_idx;
}

void
ConstraintGraph::cloneWNtoCallSiteCGNodeIdMap(WN *orig_wn,
                                              WN *clone_wn,
                                              IPO_CLONE *ipoClone)
{
  UINT32 id = IPA_WN_MAP32_Get(ipoClone->Get_Orig_maptab(),
                               WN_MAP_ALIAS_CGNODE, orig_wn);
  if (id != 0)
    IPA_WN_MAP32_Set(ipoClone->Get_Cloned_maptab(),
                     WN_MAP_ALIAS_CGNODE, clone_wn, id);
}

void
ConstraintGraphNode::copy(ConstraintGraphNode *node)
{
  _id            = node->_id;
  _flags         = node->_flags;
  _inKCycle      = node->_inKCycle;
  _pointsToList  = node->_pointsToList;
  _repParent     = node->_repParent;
  _collapsedParent = node->_collapsedParent;
  _nextOffset    = node->_nextOffset;
  _maxAccessSize = node->_maxAccessSize;
}

// Create a new ConstraintGraphNode with new_cg_st_idx, but the old node's id
// and offset. The new node is added to this CG using the new_cg_st_idx.
ConstraintGraphNode *
ConstraintGraph::cloneCGNode(ConstraintGraphNode *node, CG_ST_IDX new_cg_st_idx)
{
  ConstraintGraphNode *newCGNode = 
    CXX_NEW(ConstraintGraphNode(new_cg_st_idx, node->offset(), this), _memPool);
  newCGNode->copy(node);
  FmtAssert(_cgNodeToIdMap.find(newCGNode) == _cgNodeToIdMap.end(),
            ("Node already mapped"));
  _cgNodeToIdMap[newCGNode] = node->id();
  char buf1[128];
  char buf2[128];
  if (Get_Trace(TP_ALIAS, NYSTROM_CG_BE_MAP_FLAG))
    fprintf(stderr, "  cloneCGNode: node id:%d idx:%s off:%d cg:%s "
            "to node idx:%s off:%d cg:%s\n", node->id(),
            printCGStIdx(node->cg_st_idx(), buf1, 128), node->offset(),
            node->cg()->name(), printCGStIdx(newCGNode->cg_st_idx(), buf2, 128),
            newCGNode->offset(), name());
  return newCGNode;
}

// Remap node to this CG using new cg_st_idx
void
ConstraintGraph::remapCGNode(ConstraintGraphNode *node, CG_ST_IDX new_cg_st_idx)
{
  char buf1[128];
  char buf2[128];
  if (Get_Trace(TP_ALIAS, NYSTROM_CG_BE_MAP_FLAG))
    fprintf(stderr, "  remapCGNode: node id:%d: old idx: %s to new idx:%s "
            "in cg: %s\n", node->id(),
             printCGStIdx(node->cg_st_idx(), buf1, 128),
             printCGStIdx(new_cg_st_idx, buf2, 128),
             name());
  // Set the new cg_st_idx
  node->cg_st_idx(new_cg_st_idx);
  FmtAssert(_cgNodeToIdMap.find(node) == _cgNodeToIdMap.end(),
            ("Node already mapped"));
  // Add back to the map
  _cgNodeToIdMap[node] = node->id();
}

// Add node to this CG using node's cg_st_idx, offset
void
ConstraintGraph::mapCGNode(ConstraintGraphNode *node)
{
  FmtAssert(_cgNodeToIdMap.find(node) == _cgNodeToIdMap.end(),
            ("Node already mapped"));
  _cgNodeToIdMap[node] = node->id();
  char buf1[128];
  if (Get_Trace(TP_ALIAS, NYSTROM_CG_BE_MAP_FLAG))
    fprintf(stderr, "  mapCGNode: node id:%d: idx:%s off:%d cg:%s to cg:%s\n",
            node->id(), printCGStIdx(node->cg_st_idx(), buf1, 128), 
            node->offset(), node->cg()->name(), name());
}

// Add StInfo to this CG indexed using new_cg_st_idx
void
ConstraintGraph::mapStInfo(StInfo *stInfo,
                           CG_ST_IDX cg_st_idx,
                           CG_ST_IDX new_cg_st_idx)
{
  FmtAssert(_cgStInfoMap.find(new_cg_st_idx) == _cgStInfoMap.end(),
            ("StInfo already mapped"));
  _cgStInfoMap[new_cg_st_idx] = stInfo;
  char buf1[128];
  char buf2[128];
  if (Get_Trace(TP_ALIAS, NYSTROM_CG_BE_MAP_FLAG))
    fprintf(stderr, " mapStInfo: old idx:%s new idx:%s to cg:%s\n",
            printCGStIdx(cg_st_idx, buf1, 128),
            printCGStIdx(new_cg_st_idx, buf2, 128), name());
}

void 
ConstraintGraph::promoteCallSiteToDirect(CallSiteId csid, ST_IDX st_idx)
{
  CallSite *cs = callSite(csid);
  if (cs) {
    FmtAssert(cs->isIndirect(), ("Expect callsite to be indirect"));
    FmtAssert(!cs->isIntrinsic(), ("Expect callsite to be not an intrinsic"));
    fprintf(stderr, "Promoting call site: %d to direct call of %s\n",
            csid, ST_name(St_Table[st_idx]));
    cs->clearFlags(CS_FLAGS_INDIRECT);
    cs->st_idx(st_idx);
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
  if (checkFlags(CS_FLAGS_PRINTF_NOPRECN))
    fprintf(file, " %s", "NOPRECN");
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
  ss << "StInfo:" << endl;
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
