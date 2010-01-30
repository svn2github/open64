#ifndef constraint_graph_INCLUDED
#define constraint_graph_INCLUDED

#include <ext/hash_map>
#include <ext/hash_set>
#include "wn.h"
#include "symtab.h"
#include "mempool.h"
#include "sparse_bitset.h"

// Constraint graph edge flags
#define CG_EDGE_FLAGS_ARRAY  0x0001

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

using namespace __gnu_cxx;

typedef UINT32 CGNodeId;

typedef enum {
  ETYPE_ASSIGN,
  ETYPE_DEREF_ASSIGN,
  ETYPE_ASSIGN_DEREF,
  ETYPE_SKEW
} CGEdgeType;

typedef enum {
  CQ_HZ,
  CQ_DN,
  CQ_UP,
  CQ_GBL
} CGEdgeQual;

class ConstraintGraphEdge 
{
public:
  ConstraintGraphEdge(CGNodeId srcId, CGNodeId destId, CGEdgeType etype,
                      CGEdgeQual qual, UINT32 sizeOrSkew)
    : _srcId(srcId),
      _destId(destId),
      _edgeInfo(etype,qual,0,sizeOrSkew)
  {}

  CGEdgeType edgeType() const { return edgeInfo().etype(); }

  CGEdgeQual edgeQual() const { return edgeInfo().qual(); }

  CGNodeId srcId() const { return _srcId; }

  CGNodeId destId() const { return _destId; }

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

  void print(FILE *file)
  {
    fprintf(file, "(src: %d dest: %d ", _srcId, _destId);
    _edgeInfo.print(file);
    fprintf(file, ")");
  }

  typedef struct
  {
    size_t operator()(const ConstraintGraphEdge *k) const
    {
      return (size_t(k->edgeInfo().hash() ^ k->_srcId << 8 ^ k->_destId));
    }
  } hashCGEdge;

  typedef struct
  {
    bool operator()(const ConstraintGraphEdge *k1,
                    const ConstraintGraphEdge *k2) const
    {
      return (k1->edgeInfo() == k2->edgeInfo() &&
              k1->_srcId == k2->_srcId &&
              k1->_destId == k2->_destId);
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
    void addFlags(UINT16 flag) { _flags | flag; }
    UINT32 sizeOrSkew(void) const { return _sizeOrSkew; }
    void sizeOrSkew(UINT32 s) { _sizeOrSkew = s; }

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
        case ETYPE_ASSIGN:
          es = "ASSIGN";
          break;
        case ETYPE_SKEW:
          es = "SKEW";
          break;
        case ETYPE_DEREF_ASSIGN:
          es = "DEREF_ASSIGN";
          break;
        case ETYPE_ASSIGN_DEREF:
          es = "ASSIGN_DEREF";
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
    UINT32     _sizeOrSkew;  // size for a copy/load/store edge, skew otherwise
  };

  const EdgeInfo &edgeInfo(void) const { return _edgeInfo; }

  CGNodeId _srcId;
  CGNodeId _destId;
  EdgeInfo _edgeInfo;
};

class ConstraintGraph;
  
class ConstraintGraphNode 
{
public:
  ConstraintGraphNode(ST_IDX st_idx, INT32 offset, MEM_POOL *memPool) :
    _nodeInfo(st_idx, offset, memPool),
    _id(0),
    _inKCycle(0),
    _version(0),
    _inCGEdges(32),
    _outCGEdges(32),
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

  void addPointsToGBL(CGNodeId id) { _nodeInfo.addPointsTo(id, CQ_GBL); }
  void addPointsToHZ(CGNodeId id)  { _nodeInfo.addPointsTo(id, CQ_HZ); }
  void addPointsToDN(CGNodeId id)  { _nodeInfo.addPointsTo(id, CQ_DN); }

  // Try adding edge to the in edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addInEdge(ConstraintGraphEdge *edge) 
  {
    pair<CGEdgeSet::iterator, bool> p;
    p = _inCGEdges.insert(edge);
    return *(p.first);
  }

  // Try adding edge to the out edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addOutEdge(ConstraintGraphEdge *edge) 
  {
    pair<CGEdgeSet::iterator, bool> p;
    p = _outCGEdges.insert(edge);
    return *(p.first);
  }

  void print(FILE *file) 
  {
    fprintf(file, "*CGNodeId: %d*\n ", _id);
    _nodeInfo.print(file);
    if (_nextOffset)
      fprintf(file, " next: %d", _nextOffset->_id);
    fprintf(file, "\n inEdges: ");
    for (CGEdgeSetIterator iter = _inCGEdges.begin(); iter != _inCGEdges.end();
         iter++) {
      (*iter)->print(file);
      fprintf(file, " ");
    } 
    fprintf(file, "\n");
    fprintf(file, " outEdges: ");
    for (CGEdgeSetIterator iter = _outCGEdges.begin(); 
         iter != _outCGEdges.end();
         iter++) {
      (*iter)->print(file);
      fprintf(file, " ");
    } 
    fprintf(file, "\n");
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

  typedef hash_set<ConstraintGraphEdge *,
                   ConstraintGraphEdge::hashCGEdge, 
                   ConstraintGraphEdge::equalCGEdge> CGEdgeSet;

  typedef CGEdgeSet::const_iterator CGEdgeSetIterator;

  // In/out copy/skew edges are maintained on the node itself
  // The load/store edges are in the ConstraintGraph
  CGEdgeSet _inCGEdges;
  CGEdgeSet _outCGEdges;
  
  // Nodes with different offset off of same base maintained in sorted order
  ConstraintGraphNode *_nextOffset;

  // For nodes that are unified
  ConstraintGraphNode *_repParent;
  ConstraintGraphNode *_repChild;

  // The ConstraintGraph to which this node belongs
  ConstraintGraph *_parentCG;
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

  ConstraintGraphNode *firstOffset() const { return _firstOffset; }
  void firstOffset(ConstraintGraphNode *n) { _firstOffset = n; }

  void print(FILE *file)
  {
    fprintf(file, "varSize: %d modulus: %d", _varSize, _modulus);
    fprintf(file, " [");
    if (_flags & CG_ST_FLAGS_GLOBAL)
      fprintf(file, "GLOBAL");
    if (_flags & CG_ST_FLAGS_PARAM)
      fprintf(file, ",PARAM");
    fprintf(file, "]");
    fprintf(file, " first: %d\n", _firstOffset->id());
  }

private:
  UINT32 _flags;
  UINT32 _varSize;
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

  ConstraintGraphNode *getCGNode(ST_IDX st_idx, INT64 offset)
  {
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

    // Check if we have seen this symbol before
    StInfo *si = stInfo(st_idx);
    if (si == NULL) {
      si = CXX_NEW(StInfo(st_idx), _memPool);
      _cgStInfoMap[st_idx] = si;
    }
    addCGNodeInSortedOrder(si, cgNode);
    return cgNode;
  }
      
  void print(FILE *file)
  {
    for (CGNodeToIdMapIterator iter = _cgNodeToIdMap.begin();
         iter != _cgNodeToIdMap.end(); iter++) {
      iter->first->print(file);
      stInfo(iter->first->st_idx())->print(file);
      fprintf(stderr, "\n ");
    }
  }

private:
  typedef enum {
    ADDR,
    ASSIGN,
    DEREF,
    UNKNOWN
  } ProcessExprResult;

  static UINT32 nextCGNodeId;

  void buildCG(WN *entryWN);

  WN *processWNandKids(WN *wn);

  WN *handleAssignment(WN *wn);
  
  WN *handleCall(WN *wn);

  ConstraintGraphNode *processLHSofStore(WN *stmt);

  ConstraintGraphNode *processExpr(WN *expr, ProcessExprResult& res);

  ConstraintGraphNode *getCGNode(WN *wn);

  typedef hash_map<CGNodeId, ConstraintGraphNode *> CGIdToNodeMap;

  typedef hash_map<ConstraintGraphNode *, CGNodeId, 
                   ConstraintGraphNode::hashCGNode,
                   ConstraintGraphNode::equalCGNode> CGNodeToIdMap;

  typedef hash_set<ConstraintGraphEdge *,
                   ConstraintGraphEdge::hashCGEdge, 
                   ConstraintGraphEdge::equalCGEdge> CGEdgeSet;

  typedef hash_map<ST_IDX, StInfo *> CGStInfoMap;

  typedef CGNodeToIdMap::const_iterator CGNodeToIdMapIterator;

  typedef CGStInfoMap::const_iterator CGStInfoMapIterator;

  // Set of ConstraintGraphNodes
  CGIdToNodeMap _cgIdToNodeMap;

  // Map a ConstraintGraphNode, represented uniquely using (ST_IDX, offset)
  // to the node id
  CGNodeToIdMap _cgNodeToIdMap;

  // Set of load/store constraint edges. These will be walked in some order
  // during the solution.  The map provides quick lookup for existence check.
  CGEdgeSet _cgEdges;

  // Provide additional per st info
  CGStInfoMap _cgStInfoMap;

  MEM_POOL *_memPool;

  void addEdge(ConstraintGraphNode *src, ConstraintGraphNode *dest,
               CGEdgeType etype, CGEdgeQual qual, UINT32 size)
  {
    ConstraintGraphEdge *edge =
      CXX_NEW(ConstraintGraphEdge(src->id(), dest->id(), ETYPE_ASSIGN, 
                                  CQ_HZ, size), _memPool);
    ConstraintGraphEdge *newEdge = src->addOutEdge(edge);
    if (newEdge == edge) {
      ConstraintGraphEdge *ne = dest->addInEdge(edge);
      FmtAssert(ne == edge, ("Edge exists in dest but not in src"));
    } else {
      ConstraintGraphEdge *ne = dest->addInEdge(edge);
      FmtAssert(ne != edge && ne == newEdge, 
                ("Edge exists in src but not in dest"));
      newEdge->addFlags(edge->flags());
      newEdge->size(MAX(size, edge->size()));
      CXX_DELETE(edge, _memPool);
    }
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
       FmtAssert(prevn->offset() != cgNode->offset(), 
                 ("Found node with same offset"));
       prevn->nextOffset(cgNode);
     }
  }
};

#endif // constraint_graph_INCLUDED
