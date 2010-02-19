#ifndef constraint_graph_INCLUDED
#define constraint_graph_INCLUDED

#include <list>
#include <iostream>
#include <ext/hash_map>
#include <ext/hash_set>
#include "wn.h"
#include "wn_map.h"
#include "symtab.h"
#include "mempool.h"
#include "sparse_bitset.h"
#include "vcg.h"

// Constraint graph edge flags
#define CG_EDGE_FLAGS_ARRAY  0x0001
#define CG_EDGE_IN_WORKLIST  0x0002
#define CG_EDGE_PARENT_COPY  0x0004 // Special copy edge from parent
                                    // to ensure proper processing of
                                    // dest node, but no points-to
                                    // propagation is performed.

#define CG_NODE_ALL_OFFSETS (-1)
#define CG_PREG_SCALE       (Pointer_Size)

// Symbol specific flags
#define CG_ST_FLAGS_HEAP      0x00000002 // heap var
#define CG_ST_FLAGS_GLOBAL    0x00000004 // global var
#define CG_ST_FLAGS_FUNC      0x00000020 // func var (potential callee)
#define CG_ST_FLAGS_TEMP      0x00000040 // unnamed temp var for graph
#define CG_ST_FLAGS_ESCLOCAL  0x00000080 // local with escaping addr
#define CG_ST_FLAGS_SUMMARY   0x00000100 // node came from summary
#define CG_ST_FLAGS_ELLIPSE   0x00000400 // VARARGS ellipse marker
#define CG_ST_FLAGS_STACK     0x00000800 // alloca dynamic stack

#define CG_ST_FLAGS_NOFIELD   0x00001000 // Do not specialize fields
#define CG_ST_FLAGS_NOCNTXT   0x00002000 // Do not specialize contexts
#define CG_ST_FLAGS_NOLOCAL   0x00004000 // Can escape through a return

// Constraint graph node flags
#define CG_NODE_FLAGS_UNKNOWN       0x0001 // Points-to set is unknown
#define CG_NODE_FLAGS_FORMAL_RETURN 0x0002 // Returns value to caller
#define CG_NODE_FLAGS_ACTUAL_RETURN 0x0004 // Returns value to caller
#define CG_NODE_FLAGS_FORMAL_PARAM  0x0008 // formal param
#define CG_NODE_FLAGS_ACTUAL_PARAM  0x0010 // formal param
#define CG_NODE_FLAGS_ICALL         0x0020 // determines indirect-calls

#define CG_NODE_FLAGS_VISITED       0x0100  // Used by cycle detection
#define CG_NODE_FLAGS_SCCMEMBER     0x0200  // Used by cycle detection
#define CG_NODE_FLAGS_INKVALMAP     0x0400  // Used by cycle detection
#define CG_NODE_FLAGS_ADDRTAKEN     0x0800
#define CG_NODE_FLAGS_COMPLETE      0x1000  // Points-to solution is complete
#define CG_NODE_FLAGS_ADDR_TAKEN    0x2000  // Has the node been placed in a pts?
#define CG_NODE_FLAGS_SET_INKCYCLE  0x4000  // Used by the CG builder to set
                                            // the in-cycle on nodes based
                                            // on access size

// Call site flags
#define CS_FLAGS_UNKNOWN     0x01
#define CS_FLAGS_INDIRECT    0x02
#define CS_FLAGS_HAS_MOD_REF 0x03

// Map the WNs to CGNodeIds
#define WN_MAP_CGNodeId_Set(wn,thing) \
 IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn), (INT32)(thing))
#define WN_MAP_CGNodeId_Get(wn) \
 (CGNodeId)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn))

// Map CALLs to CallSiteIds. We use the WN_MAP_ALIAS_CGNODE_ID
// to do the same
#define WN_MAP_CallSiteId_Set(wn,thing) \
 IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn), (INT32)(thing))
#define WN_MAP_CallSiteId_Get(wn) \
 (CallSiteId)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn))

using namespace std;
using namespace __gnu_cxx;

typedef UINT32 CGNodeId;
typedef UINT32 CallSiteId;
typedef SparseBitSet<CGNodeId> PointsTo;

typedef enum {
  ETYPE_COPY,
  ETYPE_STORE,
  ETYPE_LOAD,
  ETYPE_SKEW
} CGEdgeType;

typedef enum {
  CQ_HZ,
  CQ_DN,
  CQ_UP,
  CQ_GBL,
  CQ_NONE, /* Used in qualifier mapping (future) */
} CGEdgeQual;

class ConstraintGraphNode;

class ConstraintGraphEdge 
{
public:
  ConstraintGraphEdge(ConstraintGraphNode *src, ConstraintGraphNode *dest, 
                      CGEdgeType etype, CGEdgeQual qual, INT32 sizeOrSkew)
    : _srcCGNode(src),
      _destCGNode(dest),
      _edgeInfo(etype,qual,0,sizeOrSkew)
  {}

  CGEdgeType edgeType() const { return edgeInfo().etype(); }

  CGEdgeQual edgeQual() const { return edgeInfo().qual(); }

  ConstraintGraphNode *srcNode() const { return _srcCGNode; }
  ConstraintGraphNode *destNode() const { return _destCGNode; }

  UINT32 size() const
  {
    FmtAssert(edgeInfo().etype() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    return edgeInfo().sizeOrSkew();
  }

  UINT32 skew() const
  {
    FmtAssert(edgeInfo().etype() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    return edgeInfo().sizeOrSkew();
  }

  void size(UINT32 s)
  {
    FmtAssert(edgeInfo().etype() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    _edgeInfo.sizeOrSkew(s);
  }

  void skew(UINT32 s)
  {
    FmtAssert(edgeInfo().etype() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    _edgeInfo.sizeOrSkew(s);
  }

  UINT16 flags() const { return _edgeInfo.flags(); }
  bool checkFlags(UINT16 flag) const { return _edgeInfo.checkFlags(flag); }
  void addFlags(UINT16 flag) { _edgeInfo.addFlags(flag); }
  void clearFlags(UINT16 flag) { _edgeInfo.clearFlags(flag); }

  // Move the edge to the new source/destination nodes.  Either new
  // source/destination nodes may be identical to the current source/
  // destination nodes respectively.
  bool move(ConstraintGraphNode *newSrc, ConstraintGraphNode *newDest);
  bool moveDest(ConstraintGraphNode *newDest) { return move(srcNode(),newDest); }
  bool moveSrc(ConstraintGraphNode *newSrc)   { return move(newSrc,destNode()); }

  void print(FILE *file) const;

  typedef struct
  {
    size_t operator()(const ConstraintGraphEdge *k) const
    {
      return (k->edgeInfo().hash() ^ (size_t)k->_srcCGNode ^ 
              (size_t)k->_destCGNode);
    }
  } hashCGEdge;

  typedef struct
  {
    bool operator()(const ConstraintGraphEdge *k1,
                    const ConstraintGraphEdge *k2) const
    {
      return (k1->edgeInfo() == k2->edgeInfo() &&
              k1->_srcCGNode == k2->_srcCGNode &&
              k1->_destCGNode == k2->_destCGNode);
    }
  } equalCGEdge;

private:

  void srcNode(ConstraintGraphNode *n)  { _srcCGNode = n; }
  void destNode(ConstraintGraphNode *n) { _destCGNode = n; }

  // The information in EdgeInfo is what gets passed from 
  // IPL to IPA and then back to BE for each ConstraintGraphEdge
  class EdgeInfo {
  public:
    EdgeInfo(CGEdgeType t, CGEdgeQual q, UINT16 f, UINT32 s)
      : _etype(t), _qual(q), _flags(f), _sizeOrSkew(s) {}

    CGEdgeType etype(void) const { return _etype; }
    CGEdgeQual qual(void) const { return _qual; }
    UINT16 flags(void) const { return _flags; }
    bool checkFlags(UINT16 flag) const { return _flags & flag; }
    void addFlags(UINT16 flag) { _flags |= flag; }
    void clearFlags(UINT16 flag) { _flags &= ~flag; }
    INT32 sizeOrSkew(void) const { return _sizeOrSkew; }
    void sizeOrSkew(INT32 s) { _sizeOrSkew = s; }

    bool operator==(const EdgeInfo &that) const
    {
       return (etype() == that.etype() && sizeOrSkew() == that.sizeOrSkew());
    }
   
    size_t hash(void) const 
    {
      return (etype() << 28 ^ sizeOrSkew() << 16);
    }

    void print(FILE *file) const;

  private:
    CGEdgeType _etype;
    CGEdgeQual _qual;
    UINT16     _flags;
    INT32      _sizeOrSkew;  // size for a copy/load/store edge, skew otherwise
  };

  const EdgeInfo &edgeInfo(void) const { return _edgeInfo; }

  ConstraintGraphNode *_srcCGNode;
  ConstraintGraphNode *_destCGNode;
  EdgeInfo _edgeInfo;
};

class ConstraintGraph;

typedef hash_set<ConstraintGraphEdge *,
                 ConstraintGraphEdge::hashCGEdge,
                 ConstraintGraphEdge::equalCGEdge> CGEdgeSet;

typedef CGEdgeSet::const_iterator CGEdgeSetIterator;

class ConstraintGraphNode 
{
public:
  ConstraintGraphNode(ST_IDX st_idx, INT32 offset, MEM_POOL *memPool) :
    _nodeInfo(st_idx, offset, memPool),
    _id(0),
    _inKCycle(0),
    _version(0),
    _maxAccessSize(0),
    _inCopySkewCGEdges(32),
    _outCopySkewCGEdges(32),
    _inLoadStoreCGEdges(32),
    _outLoadStoreCGEdges(32),
    _nextOffset(NULL),
    _repParent(NULL),
    _repChild(NULL),
    _parentCG(NULL)
  {}

  CGNodeId id() const { return _id; }
  void setId(CGNodeId id) { _id = id; }

  UINT32 inKCycle(void) const { return _inKCycle; }
  void inKCycle(UINT32 val) { _inKCycle = val; }

  UINT8 maxAccessSize(void) const { return _maxAccessSize; }

  ST_IDX st_idx() const { return nodeInfo().st_idx(); }

  INT32 offset() const { return nodeInfo().offset(); }

  ConstraintGraphNode *nextOffset() const { return _nextOffset; }

  void nextOffset(ConstraintGraphNode *nextOffset)
  {
    _nextOffset = nextOffset;
  }

  UINT16 flags() const { return _nodeInfo.flags(); }
  bool checkFlags(UINT16 flag) const { return  _nodeInfo.checkFlags(flag); }
  void addFlags(UINT16 flag) { _nodeInfo.addFlags(flag); }

  ConstraintGraphNode *repParent(void) const { return _repParent; }
  void repParent(ConstraintGraphNode *p) { _repParent = p; }

  void clearFlags(UINT8 flag) { _nodeInfo.clearFlags(flag); }

  ConstraintGraphNode *findRep(void)
  {
    ConstraintGraphNode *cur = this;
    ConstraintGraphNode *parent = repParent();
    while (parent && parent != cur) {
      cur = parent;
      parent = parent->repParent();
    }
    if (repParent() && repParent() != cur)
      repParent(cur);
    return cur;
  }

  // Merge two constraint graph nodes.  The 'src' is merged
  // into the current node.
  void merge(ConstraintGraphNode *src);

  void addPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  { 
    node->addFlags(CG_NODE_FLAGS_ADDR_TAKEN);
    findRep()->_nodeInfo.addPointsTo(node->id(),qual);
  }

  bool unionPointsTo(PointsTo &ptsToSet, CGEdgeQual qual) 
  { 
    return pointsTo(qual).setUnion(ptsToSet);
  }

  PointsTo &pointsTo(CGEdgeQual qual)
  {
    findRep()->_nodeInfo.pointsTo(qual);
  }

  // Try adding edge to the in edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addInEdge(ConstraintGraphEdge *edge) 
  {
    CGEdgeSet &inEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                            edge->edgeType() == ETYPE_SKEW) ?
                            _inCopySkewCGEdges : _inLoadStoreCGEdges;
    pair<CGEdgeSet::iterator, bool> p;
    p = inEdgeSet.insert(edge);
    return *(p.first);
  }

  void removeInEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet &inEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                            edge->edgeType() == ETYPE_SKEW) ?
                            _inCopySkewCGEdges : _inLoadStoreCGEdges;
    CGEdgeSetIterator iter = inEdgeSet.find(edge);
    if (iter != inEdgeSet.end())
      inEdgeSet.erase(iter);
  }

  // Try adding edge to the out edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addOutEdge(ConstraintGraphEdge *edge) 
  {
    CGEdgeSet &outEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                             edge->edgeType() == ETYPE_SKEW) ?
                             _outCopySkewCGEdges : _outLoadStoreCGEdges;
    pair<CGEdgeSet::iterator, bool> p;
    p = outEdgeSet.insert(edge);
    ConstraintGraphEdge *newEdge = *(p.first);
    if (newEdge == edge &&
        edge->edgeType() != ETYPE_SKEW &&
        edge->size() > _maxAccessSize)
      _maxAccessSize = edge->size();
    return newEdge;
  }

  void removeOutEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet &outEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                             edge->edgeType() == ETYPE_SKEW) ?
                             _outCopySkewCGEdges : _outLoadStoreCGEdges;
    CGEdgeSetIterator iter = outEdgeSet.find(edge);
    if (iter != outEdgeSet.end())
      outEdgeSet.erase(iter);

    if (edge->edgeType() != ETYPE_SKEW && edge->size() != _maxAccessSize) {
      FmtAssert(edge->size() < _maxAccessSize,
          ("ConstraintGraphNode::_maxAccessSize inconsistent"));
      UINT8 newMax = 0;
      for (CGEdgeSetIterator outIter1 = _outCopySkewCGEdges.begin();
          outIter1 != _outCopySkewCGEdges.end(); ++outIter1) {
        ConstraintGraphEdge *e = *outIter1;
        if (e->edgeType() != ETYPE_SKEW && e->size() > newMax)
          newMax = e->size();
      }
      for (CGEdgeSetIterator outIter2 = _outLoadStoreCGEdges.begin();
          outIter2 != _outLoadStoreCGEdges.end(); ++outIter2) {
        ConstraintGraphEdge *e = *outIter2;
        if (e->size() > newMax)
          newMax = e->size();
      }
      _maxAccessSize = newMax;
    }
  }

  // Checks if 'edge' is in the 'in' copy-skew/load-store edge set
  // Returns the existing edge if yes, else NULL
  ConstraintGraphEdge *inEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet &inEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                            edge->edgeType() == ETYPE_SKEW) ?
                            _inCopySkewCGEdges : _inLoadStoreCGEdges;
    CGEdgeSetIterator iter = inEdgeSet.find(edge);
    if (iter != inEdgeSet.end())
      return *iter;
    return NULL;
  }

  // Checks if 'edge' is in the 'out' copy-skew/load-store edge set
  // Returns the existing edge if yes, else NULL
  ConstraintGraphEdge *outEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet &outEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                             edge->edgeType() == ETYPE_SKEW) ?
                            _outCopySkewCGEdges : _outLoadStoreCGEdges;
    CGEdgeSetIterator iter = outEdgeSet.find(edge);
    if (iter != outEdgeSet.end())
      return *iter;
    return NULL;
  }

  CGEdgeSet &inCopySkewEdges(void)     { return _inCopySkewCGEdges; }
  CGEdgeSet &inLoadStoreEdges(void)  { return _inLoadStoreCGEdges; }
  CGEdgeSet &outCopySkewEdges(void)    { return _outCopySkewCGEdges; }
  CGEdgeSet &outLoadStoreEdges(void) { return _outLoadStoreCGEdges; }

  ConstraintGraphNode *parent() { return findRep(); }

  ConstraintGraph *constraintGraph() const { return _parentCG; }
  void constraintGraph(ConstraintGraph *cg) { _parentCG = cg; }
  
  void print(FILE *file);
  void print(ostream &str);

  typedef struct
  {
    size_t operator()(const ConstraintGraphNode *k) const
    {
      return k->nodeInfo().hash();
    }
  } hashCGNode;

  typedef struct
  {
    bool operator()(const ConstraintGraphNode *k1,
                    const ConstraintGraphNode *k2) const
    {
      return k1->nodeInfo() == k2->nodeInfo();
    }
  } equalCGNode;
  
private:

  // The information in NodeInfo is what gets passed from 
  // IPL to IPA and then back to BE for each ConstraintGraphNode
  class NodeInfo
  {
  public:
    NodeInfo(ST_IDX st_idx, INT32 offset, MEM_POOL *memPool) :
      _st_idx(st_idx),
      _offset(offset),
      _flags(0),
      _pointsToGBL(memPool),
      _pointsToHZ(memPool),
      _pointsToDN(memPool)
    {}

    ST_IDX st_idx() const { return _st_idx; }

    INT32 offset() const { return _offset; }

    UINT16 flags() const { return _flags; }
    bool checkFlags(UINT16 flag) const { return _flags & flag; }
    void addFlags(UINT16 flag) { _flags |= flag; }
    void clearFlags(UINT8 flag) { _flags &= ~flag; }

    void addPointsTo(CGNodeId id, CGEdgeQual qual) 
    {
      switch (qual) {
        case CQ_GBL:
          _pointsToGBL.setBit(id);
          break;
        case CQ_HZ:
          _pointsToHZ.setBit(id);
          break;
        case CQ_DN:
          _pointsToDN.setBit(id);
          break;
        default:
          FmtAssert(FALSE, ("Unknown qual: %d Qualifiers for points-to set "
                    "can be one of GBL/HZ/DN", qual));
      }
    }

    PointsTo &pointsTo(CGEdgeQual qual) {
      switch (qual) {
      case CQ_GBL: return _pointsToGBL;
      case CQ_DN:  return _pointsToDN;
      case CQ_HZ:  return _pointsToHZ;
      default:
        FmtAssert(false,("Unexpected edge qualifier"));
      }
    }

    size_t hash() const 
    { 
      return size_t(_st_idx << 16 ^ _offset); 
    }

    bool operator==(const NodeInfo& rhs) const 
    { 
      return (_st_idx == rhs._st_idx && _offset == rhs._offset); 
    }

    void print(FILE *file);
    void print(ostream& ostr);

  private:
    ST_IDX _st_idx;
    INT32  _offset;
    UINT16 _flags;
    SparseBitSet<CGNodeId> _pointsToGBL;
    SparseBitSet<CGNodeId> _pointsToHZ;
    SparseBitSet<CGNodeId> _pointsToDN;
  };

  const NodeInfo& nodeInfo() const { return _nodeInfo; }

  NodeInfo _nodeInfo;
  CGNodeId _id;
  UINT32   _inKCycle;
  UINT8    _version;
  // Max outgoing copy/load/store access size, used during
  // solving to determine accesses to overlapping fields.
  UINT8    _maxAccessSize;

  // In/out copy/skew edges
  CGEdgeSet _inCopySkewCGEdges;
  CGEdgeSet _outCopySkewCGEdges;

  // In/out load/store edges
  CGEdgeSet _inLoadStoreCGEdges;
  CGEdgeSet _outLoadStoreCGEdges;
  
  // Nodes with different offset off of same base maintained in sorted order
  ConstraintGraphNode *_nextOffset;

  // For nodes that are unified
  ConstraintGraphNode *_repParent;
  ConstraintGraphNode *_repChild;

  // The ConstraintGraph to which this node belongs
  ConstraintGraph *_parentCG;
};

/* Iterator to abstract access to points-to sets */
class PointsToIterator {
public:
  PointsToIterator(ConstraintGraphNode *n) : _index(0), _node(n) {}
  ~PointsToIterator() {}
  bool operator != (int val) { return _index != 3; }
  void operator ++(void) { _index += 1; }
  PointsTo &operator *(void) {
    switch (_index) {
    case 0: return _node->pointsTo(CQ_GBL);
    case 1: return _node->pointsTo(CQ_HZ);
    case 2: return _node->pointsTo(CQ_DN);
    }
  }
  CGEdgeQual qual(void) {
    switch (_index) {
    case 0: return CQ_GBL;
    case 1: return CQ_HZ;
    case 2: return CQ_DN;
    }
  }
private:
  UINT32 _index;
  ConstraintGraphNode *_node;
};

// Class to represent symbol specific info that is common to all
// CGNodes with the same symbol but different offsets
class StInfo
{
public:
  // Set the varSize from ST_IDX
  StInfo(ST_IDX st_idx)
  {
    ST *st = &St_Table[st_idx];
    TY& ty = Ty_Table[ST_type(st)];
    // For arrays set size to element size
    if (TY_kind(ty) == KIND_ARRAY) {
      TY &etype = Ty_Table[TY_etype(ty)];
      _varSize = TY_size(etype);
    } else
      _varSize = ST_size(st);
    // As a fallback we resort to setting the size to the
    // current pointer size to ensure a valid modulus for
    // this type.
    if (_varSize == 0)
      _varSize = Pointer_Size;

    _modulus = _varSize;
    // Set the flags
    _flags = 0;
    ST_SCLASS storage_class = ST_sclass(st);
    if (storage_class == SCLASS_PSTATIC ||
        storage_class == SCLASS_FSTATIC ||
        storage_class == SCLASS_COMMON ||
        storage_class == SCLASS_UGLOBAL ||
        storage_class == SCLASS_DGLOBAL ||
        storage_class == SCLASS_UNKNOWN ||
        storage_class == SCLASS_EXTERN)
      addFlags(CG_ST_FLAGS_GLOBAL);

    if (ST_class(st) == CLASS_FUNC)
      addFlags(CG_ST_FLAGS_FUNC);

    _firstOffset = NULL;

    // Globals are treated context-insensitive
    if (checkFlags(CG_ST_FLAGS_GLOBAL))
      addFlags(CG_ST_FLAGS_NOCNTXT);

    // Treat every symbol as context-insensitive
    addFlags(CG_ST_FLAGS_NOCNTXT);
  }

  UINT32 flags() const { return _flags; }
  bool checkFlags(UINT32 flag) const { return _flags & flag; }
  void addFlags(UINT32 flag) { _flags |= flag; }

  INT64 varSize() const { return _varSize; }
  void varSize(INT64 size) { _varSize = size; }
  UINT32 modulus() const { return _modulus; }
  void modulus(UINT32 mod) { _modulus = mod; }

  ConstraintGraphNode *firstOffset() const { return _firstOffset; }
  void firstOffset(ConstraintGraphNode *n) { _firstOffset = n; }

  void print(FILE *file);
  void print(ostream& ostr);

private:
  UINT32 _flags;
  INT64  _varSize;
  UINT32 _modulus;
  ConstraintGraphNode *_firstOffset; // Pointer to CGNode with smallest offset
};

typedef hash_map<CGNodeId, ConstraintGraphNode *> CGIdToNodeMap;

typedef hash_map<ConstraintGraphNode *, CGNodeId,
                 ConstraintGraphNode::hashCGNode,
                 ConstraintGraphNode::equalCGNode> CGNodeToIdMap;

typedef hash_map<ST_IDX, StInfo *> CGStInfoMap;

typedef CGIdToNodeMap::const_iterator CGIdToNodeMapIterator;
typedef CGNodeToIdMap::const_iterator CGNodeToIdMapIterator;

typedef CGStInfoMap::const_iterator CGStInfoMapIterator;

class CallSite;
typedef hash_map<CallSiteId, CallSite *> CallSiteMap;
typedef CallSiteMap::const_iterator CallSiteIterator;

class ConstraintGraph 
{
public:
  ConstraintGraph(WN *entryWN, MEM_POOL *mpool = Malloc_Mem_Pool,
                  UINT32 minSize = 1024):
    _cgIdToNodeMap(minSize), 
    _cgNodeToIdMap(minSize),
    _memPool(mpool)
  {
    nextCGNodeId = 1;
    nextCallSiteId = 1;
    if (maxTypeSize == 0)
      maxTypeSize = findMaxTypeSize();
    Is_True(WN_operator(entryWN) == OPR_FUNC_ENTRY, 
            ("Expecting FUNC_ENTRY when building ConstraintGraph"));
    _func_st_idx = WN_st_idx(entryWN);
    buildCG(entryWN);
  }

  static UINT32 totalCGNodes() { return nextCGNodeId; }

  static CallSiteId getNextCallSiteId() { return nextCallSiteId++; }

  StInfo *stInfo(ST_IDX st_idx) const 
  { 
    CGStInfoMapIterator stIter = _cgStInfoMap.find(st_idx);
    if (stIter != _cgStInfoMap.end())
      return stIter->second;
    return NULL;
  }

  // To facilitate traversal of the constraint graph
  CGIdToNodeMapIterator begin() { return _cgIdToNodeMap.begin(); }
  CGIdToNodeMapIterator end()   { return _cgIdToNodeMap.end(); }

  ConstraintGraphNode *cgNode(CGNodeId cgNodeId)
  {
    CGIdToNodeMapIterator iter = _cgIdToNodeMap.find(cgNodeId);
    if (iter != _cgIdToNodeMap.end())
      return iter->second;
    return NULL;
  }

  CallSite *callSite(CallSiteId callSiteId)
  {
    CallSiteIterator iter = _callSiteMap.find(callSiteId);
    if (iter != _callSiteMap.end())
      return iter->second;
    return NULL;
  }

  // Return CGNode mapped to (st_idx, offset), if not create a new CGNode 
  ConstraintGraphNode *getCGNode(ST_IDX st_idx, INT64 offset);

  // Return CGNode mapped to (st_idx, offset), if not return NULL
  ConstraintGraphNode *checkCGNode(ST_IDX st_idx, INT64 offset);
      
  void print(FILE *file);

  void solveConstraints();

  void postProcessPointsTo();

  void computeCompleteness();
  void adjustPointsToForKCycle(UINT32 kCycle,PointsTo &src,PointsTo &dst);

  ConstraintGraphEdge *addEdge(ConstraintGraphNode *src,
                                ConstraintGraphNode *dest,
                                CGEdgeType etype, CGEdgeQual qual,
                                UINT32 size,
                                bool &added);
  void removeEdge(ConstraintGraphEdge *edge);

private:

  // Constraint graph build methods

  // Generate unique CGNodeId per procedure
  static CGNodeId nextCGNodeId;

  // Generate unique CallSiteId per procedure
  static CallSiteId nextCallSiteId;

  // Max size of all types
  static UINT32 maxTypeSize;

  void buildCG(WN *entryWN);

  WN *processWN(WN *wn);

  WN *handleAssignment(WN *wn);
  
  WN *handleCall(WN *wn);

  ConstraintGraphNode *processParam(WN *wn);

  ConstraintGraphNode *processLHSofStore(WN *stmt);

  ConstraintGraphNode *processExpr(WN *expr);

  ConstraintGraphNode *getCGNode(WN *wn);

  ConstraintGraphNode *genTempCGNode();

  UINT32 findMaxTypeSize();

  // Constraint graph solver
  class WorkList {
  public:
    WorkList() {}
    ~WorkList() {}

    bool push(ConstraintGraphEdge *e);
    ConstraintGraphEdge *pop(void);
    ConstraintGraphEdge *front(void) { return _edgeList.front(); }
    bool empty(void) const { return _edgeList.empty(); }

  private:
    list<ConstraintGraphEdge *> _edgeList;
  };

  class EdgeDelta {
  public:
    EdgeDelta() {}
    ~EdgeDelta() {}

    void add(ConstraintGraphEdge *e);
    WorkList &copySkewList() { return _copySkew; }
    WorkList &loadStoreList() { return _loadStore; }

  private:
    WorkList _copySkew;
    WorkList _loadStore;
  };

  EdgeDelta &edgeDelta() { return _edgeDelta; }
  void updateOffsets(const ConstraintGraphNode *, PointsTo &, CGEdgeQual);
  void processAssign(const ConstraintGraphEdge *);
  void processSkew(const ConstraintGraphEdge *);
  void processLoad(const ConstraintGraphEdge *);
  void processStore(const ConstraintGraphEdge *);
  void addEdgesToWorkList(ConstraintGraphNode *);
  void addCopiesForLoadStore(ConstraintGraphNode *src,
                             ConstraintGraphNode *dst,
                             CGEdgeType etype,
                             CGEdgeQual qual,
                             UINT32 size,
                             SparseBitSet<CGNodeId> &ptSet);

  /* Currently implements a context insensitive mapping */
  CGEdgeQual qualMap(CGEdgeType et,CGEdgeQual aq,CGEdgeQual eq)
  {
    if (et == ETYPE_COPY)
      return (eq == CQ_DN ? CQ_DN : CQ_GBL);
    else
      return CQ_GBL;
  }

  // Data Members

  // Set of ConstraintGraphNodes
  CGIdToNodeMap _cgIdToNodeMap;

  // Map a ConstraintGraphNode, represented uniquely using (ST_IDX, offset)
  // to the node id
  CGNodeToIdMap _cgNodeToIdMap;

  // Provide additional per st info
  CGStInfoMap _cgStInfoMap;

  // Used by the solver.  Contains the lists of edges that need to be
  // processed in order to achieve a solution to the current graph
  EdgeDelta _edgeDelta;

  // ST_IDX of the function corresponding to this ConstraintGraph
  ST_IDX _func_st_idx;

  // Map callsites in this function
  CallSiteMap _callSiteMap;

  MEM_POOL *_memPool;
};

class ConstraintGraphVCG 
{
public:
  static void dumpVCG(ConstraintGraph *cg, const char *fileNamePrefix)
  {
    ConstraintGraphVCG vcg(cg, fileNamePrefix);
    vcg.buildVCG(cg);
  }
    
private:

  ConstraintGraphVCG(ConstraintGraph *cg, const char *fileNamePrefix)
  {
     MEM_POOL_Initialize(&_memPool, "AliasAnalyzer_pool", FALSE);
     _fileNamePrefix = fileNamePrefix;
  }

  char *getNodeLabel(ConstraintGraphNode *cgNode);
  char *getEdgeLabel(ConstraintGraphEdge *cgEdge);
  char *getNodeTitle(ConstraintGraphNode *cgNode);
  char *getNodeInfo(ConstraintGraphNode *cgNode);
  VCGNode *buildVCGNode(ConstraintGraphNode *cgNode);

  void buildVCG(ConstraintGraph *cg);

  const char *_fileNamePrefix;
  MEM_POOL _memPool;
};

// Class to map calls in the function
class CallSite
{
public:
  CallSite(bool isIndirect, MEM_POOL *memPool) :
    _id(ConstraintGraph::getNextCallSiteId()),
    _flags(isIndirect ? CS_FLAGS_INDIRECT : 0),
    _return(0),
    _mod(memPool),
    _ref(memPool)
  {}

  CallSiteId id() const { return _id; }

  void addParm(CGNodeId cgNodeId) { _parms.push_back(cgNodeId); }

  void setReturn(CGNodeId cgNodeId) { _return = cgNodeId; }

  ST_IDX st_idx() const
  { 
    FmtAssert(!checkFlags(CS_FLAGS_INDIRECT), 
              ("Only direct calls have st_idx"));
    return _callInfo.st_idx; 
  }

  CGNodeId cgNodeId() const 
  {
    FmtAssert(checkFlags(CS_FLAGS_INDIRECT), 
              ("Only indirect calls have cgNodeId"));
    return _callInfo.cgNodeId;
  }

  void st_idx(ST_IDX st_idx)
  {
    FmtAssert(!checkFlags(CS_FLAGS_INDIRECT), 
              ("Only direct calls have st_idx"));
    _callInfo.st_idx = st_idx;
  }

  void cgNodeId(CGNodeId cgNodeId)
  {
    FmtAssert(checkFlags(CS_FLAGS_INDIRECT), 
              ("Only indirect calls have cgNodeId"));
    _callInfo.cgNodeId = cgNodeId;
  }

  UINT8 flags() const { return _flags; }
  bool checkFlags(UINT8 flag) const { return _flags & flag; }
  void addFlags(UINT8 flag) { _flags |= flag; }

  PointsTo &mod() { return _mod; }
  PointsTo &ref() { return _ref; }

  void print(FILE *f);

private:
  CallSiteId _id;
  UINT8 _flags;
  union {
    ST_IDX st_idx;       // Symbol of the direct call
    CGNodeId cgNodeId;   // For indirect calls, id of the node of the address
  } _callInfo;          
  list<CGNodeId> _parms;
  CGNodeId _return;
  PointsTo _mod;
  PointsTo _ref;
};

#endif // constraint_graph_INCLUDED
