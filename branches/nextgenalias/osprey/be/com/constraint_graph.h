#ifndef constraint_graph_INCLUDED
#define constraint_graph_INCLUDED

#include <list>
#include <ext/hash_map>
#include <ext/hash_set>
#include "wn.h"
#include "wn_map.h"
#include "symtab.h"
#include "mempool.h"
#include "sparse_bitset.h"

// Constraint graph edge flags
#define CG_EDGE_FLAGS_ARRAY  0x0001
#define CG_EDGE_IN_WORKLIST  0x0002

#define CG_NODE_ALL_OFFSETS (-1)

// Symbol specific flags
#define CG_ST_FLAGS_CALLEE    0x00000001 // determines indirect-callees
#define CG_ST_FLAGS_HEAP      0x00000002 // heap var
#define CG_ST_FLAGS_GLOBAL    0x00000004 // global var
#define CG_ST_FLAGS_PARAM     0x00000008 // formal param
#define CG_ST_FLAGS_RETURN    0x00000010 // "formal" return
#define CG_ST_FLAGS_FUNC      0x00000020 // func var (potential callee)
#define CG_ST_FLAGS_TEMP      0x00000040 // unnamed temp var for graph
#define CG_ST_FLAGS_ESCLOCAL  0x00000080 // local with escaping addr
#define CG_ST_FLAGS_SUMMARY   0x00000100 // node came from summary
#define CG_ST_FLAGS_REALPARAM 0x00000200 // The real formal param
#define CG_ST_FLAGS_ELLIPSE   0x00000400 // VARARGS ellipse marker
#define CG_ST_FLAGS_STACK     0x00000800 // alloca dynamic stack

#define CG_ST_FLAGS_NOFIELD   0x00001000 // Do not specialize fields
#define CG_ST_FLAGS_NOCNTXT   0x00002000 // Do not specialize contexts
#define CG_ST_FLAGS_NOLOCAL   0x00004000 // Can escape through a return

// Constraint graph node flags
#define CG_NODE_FLAGS_UNKNOWN 0x01

// Map the WNs to CGNodeIds
#define WN_MAP_CGNodeId_Set(wn,thing) \
 IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn), (INT32)(thing))
#define WN_MAP_CGNodeId_Get(wn) \
 (CGNodeId)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_CGNODE_ID, (wn))

using namespace std;
using namespace __gnu_cxx;

typedef UINT32 CGNodeId;
typedef SparseBitSet<CGNodeId> PointsTo;

typedef enum {
  ETYPE_COPY,
  ETYPE_ASSIGN = ETYPE_COPY,
  ETYPE_STORE,
  ETYPE_DEREF_ASSIGN = ETYPE_STORE,
  ETYPE_LOAD,
  ETYPE_ASSIGN_DEREF = ETYPE_LOAD,
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

  INT32 size() const
  {
    FmtAssert(edgeInfo().etype() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    return edgeInfo().sizeOrSkew();
  }

  INT32 skew() const
  {
    FmtAssert(edgeInfo().etype() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    return edgeInfo().sizeOrSkew();
  }

  void size(INT32 s)
  {
    FmtAssert(edgeInfo().etype() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    _edgeInfo.sizeOrSkew(s);
  }

  void skew(INT32 s)
  {
    FmtAssert(edgeInfo().etype() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    _edgeInfo.sizeOrSkew(s);
  }

  UINT16 flags() const { return _edgeInfo.flags(); }
  bool checkFlags(UINT16 flag) const { return _edgeInfo.checkFlags(flag); }
  void addFlags(UINT16 flag) { _edgeInfo.addFlags(flag); }
  void clearFlags(UINT16 flag) { _edgeInfo.clearFlags(flag); }

  void print(FILE *file);

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

    void print(FILE *file)
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
      fprintf(file, "%s %s %d", es, qs, _sizeOrSkew);
    }

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

  ST_IDX st_idx() const { return nodeInfo().st_idx(); }

  INT32 offset() const { return nodeInfo().offset(); }

  ConstraintGraphNode *nextOffset() const { return _nextOffset; }

  void nextOffset(ConstraintGraphNode *nextOffset)
  {
    _nextOffset = nextOffset;
  }

  UINT8 flags() const { return _nodeInfo.flags(); }
  bool checkFlags(UINT8 flag) const { return  _nodeInfo.flags(); }
  void addFlags(UINT8 flag) { _nodeInfo.addFlags(flag); }

  void addPointsTo(CGNodeId id, CGEdgeQual qual) 
  { 
    _nodeInfo.addPointsTo(id, qual); 
  }

  bool unionPointsTo(PointsTo &ptsToSet, CGEdgeQual qual) 
  { 
    return pointsTo(qual).setUnion(ptsToSet);
  }

  PointsTo &pointsTo(CGEdgeQual qual) {
    switch (qual) {
    case CQ_GBL: return _nodeInfo.pointsToGBL();
    case CQ_DN:  return _nodeInfo.pointsToDN();
    case CQ_HZ:  return _nodeInfo.pointsToHZ();
    default:
      FmtAssert(false,("Unexpected edge qualifier"));
    }
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

  // Try adding edge to the out edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addOutEdge(ConstraintGraphEdge *edge) 
  {
    CGEdgeSet &outEdgeSet = (edge->edgeType() == ETYPE_COPY ||
                             edge->edgeType() == ETYPE_SKEW) ?
                             _outCopySkewCGEdges : _outLoadStoreCGEdges;
    pair<CGEdgeSet::iterator, bool> p;
    p = outEdgeSet.insert(edge);
    return *(p.first);
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

  ConstraintGraphNode *parent() const { return _repParent; }

  ConstraintGraph *constraintGraph() const { return _parentCG; }
  void constraintGraph(ConstraintGraph *cg) { _parentCG = cg; }
  
  void print(FILE *file) 
  {
    fprintf(file, "*CGNodeId: %d*\n ", _id);
    _nodeInfo.print(file);
    if (_nextOffset)
      fprintf(file, " next: %d", _nextOffset->_id);
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
    if (checkFlags(CG_NODE_FLAGS_UNKNOWN))
      fprintf(file, " UNKNOWN");
  }

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

    UINT8 flags() const { return _flags; }
    bool checkFlags(UINT8 flag) const { return _flags & flag; }
    void addFlags(UINT8 flag) { _flags |= flag; }

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

    PointsTo &pointsToGBL(void) { return _pointsToGBL; }
    PointsTo &pointsToHZ(void)  { return _pointsToHZ;  }
    PointsTo &pointsToDN(void)  { return _pointsToDN;  }

    size_t hash() const 
    { 
      return size_t(_st_idx << 16 ^ _offset); 
    }

    bool operator==(const NodeInfo& rhs) const 
    { 
      return (_st_idx == rhs._st_idx && _offset == rhs._offset); 
    }

    void print(FILE *file) 
    {
      fprintf(file, "sym:"); 
      (&St_Table[_st_idx])->Print(stderr);
      fprintf(file, " offset: %d\n", _offset); 
      fprintf(file, " GBL: "); _pointsToGBL.print(file);
      fprintf(file, " HZ: "); _pointsToHZ.print(file);
      fprintf(file, " DN: "); _pointsToDN.print(file);
    }

  private:
    ST_IDX _st_idx;
    INT32  _offset;
    UINT8  _flags;
    SparseBitSet<CGNodeId> _pointsToGBL;
    SparseBitSet<CGNodeId> _pointsToHZ;
    SparseBitSet<CGNodeId> _pointsToDN;
  };

  const NodeInfo& nodeInfo() const { return _nodeInfo; }

  NodeInfo _nodeInfo;
  CGNodeId _id;
  UINT32   _inKCycle;
  UINT8    _version;

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
    _modulus = _varSize;
    // Set the flags
    _flags = 0;
    ST_SCLASS storage_class = ST_sclass(st);
    if (storage_class == SCLASS_FORMAL || storage_class == SCLASS_FORMAL_REF)
      _flags |= CG_ST_FLAGS_PARAM;
    else if (storage_class == SCLASS_PSTATIC ||
             storage_class == SCLASS_FSTATIC ||
             storage_class == SCLASS_COMMON ||
             storage_class == SCLASS_UGLOBAL ||
             storage_class == SCLASS_DGLOBAL ||
             storage_class == SCLASS_UNKNOWN ||
             storage_class == SCLASS_EXTERN)
      _flags |= CG_ST_FLAGS_GLOBAL;

    _firstOffset = NULL;
  }

  UINT32 flags() const { return _flags; }
  bool checkFlags(UINT32 flag) const { return _flags & flag; }
  void addFlags(UINT32 flag) { _flags |= flag; }

  INT64 varSize() const { return _varSize; }
  UINT32 modulus() const { return _modulus; }

  ConstraintGraphNode *firstOffset() const { return _firstOffset; }
  void firstOffset(ConstraintGraphNode *n) { _firstOffset = n; }

  void print(FILE *file)
  {
    fprintf(file, "varSize: %lld modulus: %d", _varSize, _modulus);
    fprintf(file, " [");
    if (checkFlags(CG_ST_FLAGS_GLOBAL))
      fprintf(file, "GLOBAL");
    if (checkFlags(CG_ST_FLAGS_PARAM))
      fprintf(file, ",PARAM");
    if (checkFlags(CG_ST_FLAGS_NOCNTXT))
      fprintf(file, ",CI");
    fprintf(file, "]");
    fprintf(file, " first: %d\n", _firstOffset->id());
  }

private:
  UINT32 _flags;
  INT64  _varSize;
  UINT32 _modulus;
  ConstraintGraphNode *_firstOffset; // Pointer to CGNode with smallest offset
};

class ConstraintGraph 
{
public:
  ConstraintGraph(WN *entryWN, MEM_POOL *mpool = Malloc_Mem_Pool,
                  UINT32 minSize = 1024):
    _cgIdToNodeMap(minSize), 
    _cgNodeToIdMap(minSize),
    _memPool(mpool)
  {
    buildCG(entryWN);
  }

  StInfo *stInfo(ST_IDX st_idx) const 
  { 
    CGStInfoMapIterator stIter = _cgStInfoMap.find(st_idx);
    if (stIter != _cgStInfoMap.end())
      return stIter->second;
    return NULL;
  }

  ConstraintGraphNode *cgNode(CGNodeId cgNodeId)
  {
    CGIdToNodeMapIterator iter = _cgIdToNodeMap.find(cgNodeId);
    if (iter != _cgIdToNodeMap.end())
      return iter->second;
    return NULL;
  }

  // Return CGNode mapped to (st_idx, offset), if not create a new CGNode 
  ConstraintGraphNode *getCGNode(ST_IDX st_idx, INT64 offset);

  // Return CGNode mapped to (st_idx, offset), if not return NULL
  ConstraintGraphNode *checkCGNode(ST_IDX st_idx, INT64 offset);
      
  void print(FILE *file)
  {
    for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
         iter != _cgNodeToIdMap.end(); iter++) {
      iter->first->print(file);
      fprintf(stderr, " stInfo: ");
      stInfo(iter->first->st_idx())->print(file);
      fprintf(stderr, "\n ");
    }
  }

  void solveConstraints();

private:

  // Constraint graph build methods

  typedef enum {
    ADDR,
    COPY,
  } ProcessExprResult;

  static UINT32 nextCGNodeId;

  void buildCG(WN *entryWN);

  WN *processWN(WN *wn);

  WN *handleAssignment(WN *wn);
  
  WN *handleCall(WN *wn);

  ConstraintGraphNode *processLHSofStore(WN *stmt);

  ConstraintGraphNode *processExpr(WN *expr);
  ConstraintGraphNode *processExpr(WN *expr, ProcessExprResult& res);

  ConstraintGraphNode *getCGNode(WN *wn);

  ConstraintGraphEdge *addEdge(ConstraintGraphNode *src,
                               ConstraintGraphNode *dest,
                               CGEdgeType etype, CGEdgeQual qual,
                               UINT32 size,
                               bool &added);

  // Constraint graph solver
  class WorkList {
  public:
    WorkList() {}
    ~WorkList() {}

    void push(ConstraintGraphEdge *e);
    ConstraintGraphEdge *pop(void);
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
  void processAssign(const ConstraintGraphEdge *);
  void processSkew(const ConstraintGraphEdge *);
  void processAssignDeref(const ConstraintGraphEdge *);
  void processDerefAssign(const ConstraintGraphEdge *);
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
    if (et == ETYPE_ASSIGN)
      return (eq == CQ_DN ? CQ_DN : CQ_GBL);
    else
      return CQ_GBL;
  }

  typedef hash_map<CGNodeId, ConstraintGraphNode *> CGIdToNodeMap;

  typedef hash_map<ConstraintGraphNode *, CGNodeId, 
                   ConstraintGraphNode::hashCGNode,
                   ConstraintGraphNode::equalCGNode> CGNodeToIdMap;

  typedef hash_map<ST_IDX, StInfo *> CGStInfoMap;

  typedef CGIdToNodeMap::const_iterator CGIdToNodeMapIterator;
  typedef CGNodeToIdMap::const_iterator CGNodeToIdMapIterator;

  typedef CGStInfoMap::const_iterator CGStInfoMapIterator;

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

  MEM_POOL *_memPool;
};

#endif // constraint_graph_INCLUDED
