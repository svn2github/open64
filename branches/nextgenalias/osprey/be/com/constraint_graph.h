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
#define CG_ST_FLAGS_PREG      0x00000001 // preg
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

// Symbol flags used during escape analysis
#define CG_ST_FLAGS_CACHE        0x04000000
#define CG_ST_FLAGS_LCONT_ESC    0x08000000 // Local contains escape object
#define CG_ST_FLAGS_LCONT_ESCLCL 0x10000000 // Local contains escape local object
#define CG_ST_FLAGS_LFULL_ESC    0x20000000 // Local fully escaped
#define CG_ST_FLAGS_LPROP_ESC    0x40000000 // Local propagates escape
#define CG_ST_FLAGS_RETPROP_ESC  0x80000000 // Return propagates escape
#define CG_ST_FLAGS_ESCALL       0xf8000000

#define CG_ST_FLAGS_HOLDING        CG_ST_FLAGS_LCONT_ESC
#define CG_ST_FLAGS_HOLDING_ESC    CG_ST_FLAGS_LCONT_ESCLCL
#define CG_ST_FLAGS_OPAQUE         CG_ST_FLAGS_LFULL_ESC
#define CG_ST_FLAGS_PROPAGATES     CG_ST_FLAGS_LPROP_ESC
#define CG_ST_FLAGS_PROPAGATES_RET CG_ST_FLAGS_RETPROP_ESC

// Constraint graph node flags
#define CG_NODE_FLAGS_UNKNOWN       0x0001 // Points-to set is unknown
#define CG_NODE_FLAGS_FORMAL_RETURN 0x0002 // Returns value to caller
#define CG_NODE_FLAGS_ACTUAL_RETURN 0x0004 // Returns value to caller
#define CG_NODE_FLAGS_FORMAL_PARAM  0x0008 // formal param
#define CG_NODE_FLAGS_ACTUAL_PARAM  0x0010 // formal param
#define CG_NODE_FLAGS_ICALL         0x0020 // determines indirect-calls
#define CG_NODE_FLAGS_NOT_POINTER   0x0040 // Used by CG builder to represent
                                           // CGNodes that will not be a ptr
#define CG_NODE_FLAGS_IN_WORKLIST   0x0080
#define CG_NODE_FLAGS_VISITED       0x0100  // Used by cycle detection
#define CG_NODE_FLAGS_SCCMEMBER     0x0200  // Used by cycle detection
#define CG_NODE_FLAGS_INKVALMAP     0x0400  // Used by cycle detection
#define CG_NODE_FLAGS_ADDRTAKEN     0x0800
#define CG_NODE_FLAGS_PTSMOD        0x1000  // Points-to set updated, implies
                                            // rev points-to relation to be updated
#define CG_NODE_FLAGS_ADDR_TAKEN    0x2000  // Has the node been placed in a pts?


// Call site flags
#define CS_FLAGS_UNKNOWN     0x01
#define CS_FLAGS_INDIRECT    0x02
#define CS_FLAGS_INTRN       0x04
#define CS_FLAGS_HAS_MOD_REF 0x08
#define CS_FLAGS_HAS_VARARGS 0x10

typedef UINT32 CGNodeId;
typedef UINT64 CG_ST_IDX;
typedef UINT32 CallSiteId;
typedef SparseBitSet<CGNodeId> PointsTo;

// Map the WNs to CGNodeIds
#define WN_MAP_CGNodeId_Set(wn,thing) \
 IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_CGNODE, (wn), (INT32)(thing))
#define WN_MAP_CGNodeId_Get(wn) \
 (CGNodeId)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_CGNODE, (wn))

// Map CALLs to CallSiteIds. We use the WN_MAP_ALIAS_CGNODE
// to do the same
#define WN_MAP_CallSiteId_Set(wn,thing) \
 IPA_WN_MAP32_Set(Current_Map_Tab, WN_MAP_ALIAS_CGNODE, (wn), (INT32)(thing))
#define WN_MAP_CallSiteId_Get(wn) \
 (CallSiteId)IPA_WN_MAP32_Get(Current_Map_Tab, WN_MAP_ALIAS_CGNODE, (wn))

// CG_ST_IDX is a 64-bit number, where the lower 32-bit is the symbol's
// ST_IDX, the next 16-bit is the pu number and the most significant 16-bits
// is the file number
#define SYM_ST_IDX(cg_st_idx)      ((UINT32)((cg_st_idx) & 0xffffffff))
#define PU_NUM_ST_IDX(cg_st_idx)   ((UINT16)(((cg_st_idx) >> 32) & 0xffff))
#define FILE_NUM_ST_IDX(cg_st_idx) ((UINT16)(((cg_st_idx) >> 48) & 0xffff))

// Given a ST * return the CG_ST_IDX, which is just the ST_st_idx of the ST *
// with the upper 32 bits set to zero. This should be called only during ipl/be
// where we assume the file and pu num is zero and the ST_IDX will be able
// to uniquely identify the ST
#define CG_ST_st_idx(s) (ST_st_idx((s)) & 0x00000000ffffffffLL)
  
using namespace std;
using namespace __gnu_cxx;
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

typedef struct {
  size_t operator()(const CG_ST_IDX k) const
  {
    return k;
  }
} hashCGstidx;

typedef struct
{
  bool operator()(const CG_ST_IDX k1,
                  const CG_ST_IDX k2) const
  {
    return k1 == k2;
  }
} equalCGstidx;

class ConstraintGraphNode;
class ConstraintGraphEdge;

template <class T, UINT32 flag>
class WorkList {
public:
  WorkList() {}
  ~WorkList() {}

  bool push(T *t) {
    if (!t->checkFlags(flag)) {
      t->addFlags(flag);
      _list.push_back(t);
      return true;
    }
    else
      return false;
  }
  T *pop(void) {
    T *t = _list.front();
    _list.pop_front();
    t->clearFlags(flag);
    return t;
  }
  T *front(void) const   { return _list.front(); }
  bool empty(void) const { return _list.empty(); }

private:
  list<T *> _list;
};

typedef WorkList<ConstraintGraphEdge,CG_EDGE_IN_WORKLIST> EdgeWorkList;
typedef WorkList<ConstraintGraphNode,CG_NODE_FLAGS_IN_WORKLIST> NodeWorkList;


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

class PointsToList {
 public:
   PointsToList(CGEdgeQual eq, MEM_POOL *mp)
   : _qual(eq), _pointsTo(mp), _next(NULL) {}

   CGEdgeQual qual(void) const { return _qual; }
   PointsTo *pointsTo(void)    { return &_pointsTo; }

   PointsToList *next(void) const { return _next; }
   void next(PointsToList *n) { _next = n; }
 private:
   CGEdgeQual   _qual;
   PointsTo      _pointsTo;
   PointsToList *_next;
 };


class ConstraintGraph;

typedef hash_set<ConstraintGraphEdge *,
                 ConstraintGraphEdge::hashCGEdge,
                 ConstraintGraphEdge::equalCGEdge> CGEdgeSet;

typedef CGEdgeSet::const_iterator CGEdgeSetIterator;

class ConstraintGraphNode 
{
public:
  ConstraintGraphNode(CG_ST_IDX cg_st_idx, INT32 offset, MEM_POOL *memPool) :
    _nodeInfo(cg_st_idx, offset, memPool),
    _id(0),
    _version(0),
    _maxAccessSize(0),
    _inCopySkewCGEdges(32),
    _outCopySkewCGEdges(32),
    _inLoadStoreCGEdges(32),
    _outLoadStoreCGEdges(32),
    _parentCG(NULL)
  {}

  CGNodeId id() const { return _id; }
  void setId(CGNodeId id) { _id = id; }

  UINT32 inKCycle(void) const { return _nodeInfo.inKCycle(); }
  void inKCycle(UINT32 val) { _nodeInfo.inKCycle(val); }

  UINT8 maxAccessSize(void) const { return _maxAccessSize; }

  CG_ST_IDX cg_st_idx() const { return nodeInfo().cg_st_idx(); }

  INT32 offset() const { return nodeInfo().offset(); }

  ConstraintGraphNode *nextOffset() const { return _nodeInfo.nextOffset(); }

  void nextOffset(ConstraintGraphNode *nextOffset)
  {
    _nodeInfo.nextOffset(nextOffset);
  }

  UINT16 flags() const { return _nodeInfo.flags(); }
  bool checkFlags(UINT16 flag) const { return  _nodeInfo.checkFlags(flag); }
  void addFlags(UINT16 flag) { _nodeInfo.addFlags(flag); }

  ConstraintGraphNode *repParent(void) const { return _nodeInfo.repParent(); }
  void repParent(ConstraintGraphNode *p) { _nodeInfo.repParent(p); }

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

  bool addPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  { 
    node->addFlags(CG_NODE_FLAGS_ADDR_TAKEN);
    bool change = findRep()->_nodeInfo.addPointsTo(node->id(),qual);
    if (change)
      addFlags(CG_NODE_FLAGS_PTSMOD);
    return change;
  }

  bool checkPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  {
    return findRep()->_nodeInfo.checkPointsTo(node->id(),qual);
  }

  bool unionPointsTo(const PointsTo &ptsToSet, CGEdgeQual qual)
  { 
    bool change = findRep()->_nodeInfo.getPointsTo(qual).setUnion(ptsToSet);
    if (change)
      addFlags(CG_NODE_FLAGS_PTSMOD);
    return change;
  }

  const PointsTo &pointsTo(CGEdgeQual qual)
  {
    return findRep()->_nodeInfo.pointsTo(qual);
  }

  bool addRevPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  {
    return findRep()->_nodeInfo.addRevPointsTo(node->id(),qual);
  }

  const PointsTo &revPointsTo(CGEdgeQual qual)
  {
    return findRep()->_nodeInfo.revPointsTo(qual);
  }

  PointsToList *pointsToList(void)    { return _nodeInfo.pointsToList(); }
  PointsToList *revPointsToList(void) { return _nodeInfo.revPointsToList(); }

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
  
  static MEM_POOL *memPool;

private:

  // The information in NodeInfo is what gets passed from 
  // IPL to IPA and then back to BE for each ConstraintGraphNode
  class NodeInfo
  {
  public:
    NodeInfo(CG_ST_IDX cg_st_idx, INT32 offset, MEM_POOL *memPool) :
      _cg_st_idx(cg_st_idx),
      _offset(offset),
      _flags(0),
      _inKCycle(0),
      _pointsToList(NULL),
      _revPointsToList(NULL),
      _repParent(NULL),
      _nextOffset(NULL)
    {}

    CG_ST_IDX cg_st_idx() const { return _cg_st_idx; }

    INT32 offset() const { return _offset; }

    UINT16 flags() const { return _flags; }
    bool checkFlags(UINT16 flag) const { return _flags & flag; }
    void addFlags(UINT16 flag) { _flags |= flag; }
    void clearFlags(UINT8 flag) { _flags &= ~flag; }

    ConstraintGraphNode *repParent() const { return _repParent; }
    void repParent(ConstraintGraphNode *p) { _repParent = p; }

    ConstraintGraphNode *nextOffset() const { return _nextOffset; }

    void nextOffset(ConstraintGraphNode *nextOffset)
    {
      _nextOffset = nextOffset;
    }

    UINT32 inKCycle(void) const { return _inKCycle; }
    void inKCycle(UINT32 val) { _inKCycle = val; }

    bool addPointsTo(CGNodeId id, CGEdgeQual qual)
    {
      PointsTo &pts = getPointsTo(qual,&_pointsToList);
      return pts.setBit(id);
    }

    bool addRevPointsTo(CGNodeId id, CGEdgeQual qual)
    {
      PointsTo &pts = getPointsTo(qual,&_revPointsToList);
      return pts.setBit(id);
    }

    bool checkPointsTo(CGNodeId id, CGEdgeQual qual)
    {
      PointsTo *pts = findPointsTo(qual,_pointsToList);
      return pts ? pts->isSet(id) : false;
    }

    PointsTo &getPointsTo(CGEdgeQual qual)
    {
      return getPointsTo(qual,&_pointsToList);
    }

    const PointsTo &pointsTo(CGEdgeQual qual) const {
      PointsTo *pts = findPointsTo(qual,_pointsToList);
      return (pts) ? *pts : emptyPointsToSet;
    }

    const PointsTo &revPointsTo(CGEdgeQual qual) const {
       PointsTo *pts = findPointsTo(qual,_revPointsToList);
       return (pts) ? *pts : emptyPointsToSet;
    }

    PointsToList *pointsToList(void)    { return _pointsToList; }
    PointsToList *revPointsToList(void) {return _revPointsToList; }

    size_t hash() const 
    { 
      return size_t(_cg_st_idx << 16 ^ _offset); 
    }

    bool operator==(const NodeInfo& rhs) const 
    { 
      return (_cg_st_idx == rhs._cg_st_idx && _offset == rhs._offset); 
    }

    void print(ConstraintGraph *cg, FILE *file);
    void print(ConstraintGraph *cg, ostream& ostr);

    PointsTo *findPointsTo(CGEdgeQual qual, PointsToList *ptl) const
    {
      PointsToList *cur = ptl;
      while (cur && cur->qual() != qual)
        cur = cur->next();
      return cur?cur->pointsTo():NULL;
    }

    PointsTo &getPointsTo(CGEdgeQual qual, PointsToList **ptl)
    {
      PointsTo *pts = findPointsTo(qual,*ptl);
      if (!pts) {
        MEM_POOL *memPool = ConstraintGraphNode::memPool;
        PointsToList *newPTL = CXX_NEW(PointsToList(qual,memPool),memPool);
        PointsToList *tmp = *ptl;
        *ptl = newPTL;
        newPTL->next(tmp);
        pts = newPTL->pointsTo();
      }
      return *pts;
    }

  private:
    CG_ST_IDX _cg_st_idx;
    INT32  _offset;
    UINT16 _flags;
    UINT32 _inKCycle;
    PointsToList *_pointsToList;
    PointsToList *_revPointsToList;
    // For nodes that are unified
    ConstraintGraphNode *_repParent;
    // Nodes with different offset off of same base maintained in sorted order
    ConstraintGraphNode *_nextOffset;
    static const PointsTo emptyPointsToSet;
  };

  const NodeInfo& nodeInfo() const { return _nodeInfo; }

  NodeInfo _nodeInfo;
  CGNodeId _id;
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
  
  // The ConstraintGraph to which this node belongs
  ConstraintGraph *_parentCG;
};

/* Iterator to abstract access to points-to sets */
class PointsToIterator {
public:
  PointsToIterator(ConstraintGraphNode *n, bool rev = false)
  : _cur(!rev ? n->pointsToList() : n->revPointsToList()) {}
  ~PointsToIterator() {}
  bool operator != (int val) { return _cur != NULL; }
  void operator ++(void) { _cur = _cur->next(); }
  PointsTo &operator *(void) { return *_cur->pointsTo(); }
  CGEdgeQual qual(void) { return _cur->qual(); }
private:
  PointsToList *_cur;
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

    if (ST_class(st) == CLASS_PREG)
      addFlags(CG_ST_FLAGS_PREG);

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

typedef hash_map<CG_ST_IDX, StInfo *, hashCGstidx, equalCGstidx> CGStInfoMap;

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
    _nextCGNodeId(1),
    _nextCallSiteId(1),
    _cgIdToNodeMap(minSize), 
    _cgNodeToIdMap(minSize),
    _varArgs(NULL),
//    _blackHoleId(0),
    _memPool(mpool)
  {
    if (maxTypeSize == 0)
      maxTypeSize = findMaxTypeSize();
    if (ConstraintGraphNode::memPool != mpool)
      ConstraintGraphNode::memPool = mpool;
    Is_True(WN_operator(entryWN) == OPR_FUNC_ENTRY, 
            ("Expecting FUNC_ENTRY when building ConstraintGraph"));
    _notAPointer = genTempCGNode();
    _notAPointer->addFlags(CG_NODE_FLAGS_NOT_POINTER);
    buildCG(entryWN);
  }

  UINT32 totalCGNodes() { return _nextCGNodeId; }

  StInfo *stInfo(CG_ST_IDX cg_st_idx) const 
  { 
    CGStInfoMapIterator stIter = _cgStInfoMap.find(cg_st_idx);
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

  CallSiteMap &callSiteMap(void) { return _callSiteMap; }

  CGStInfoMap &stInfoMap(void) { return _cgStInfoMap; }

  // Return CGNode mapped to (cg_st_idx, offset), if not create a new CGNode 
  ConstraintGraphNode *getCGNode(CG_ST_IDX cg_st_idx, INT64 offset);

  // Return CGNode mapped to (cg_st_idx, offset), if not return NULL
  ConstraintGraphNode *checkCGNode(CG_ST_IDX cg_st_idx, INT64 offset);
      
  void print(FILE *file);

  // Driver for solving the constraint graph when not in IPA
  // mode.  Returns true of the solution is complete, false otherwise
  bool nonIPASolver();

  void adjustPointsToForKCycle(ConstraintGraphNode *cgNode);
  void adjustPointsToForKCycle(UINT32 kCycle,const PointsTo &src,PointsTo &dst);

  ConstraintGraphEdge *addEdge(ConstraintGraphNode *src,
                                ConstraintGraphNode *dest,
                                CGEdgeType etype, CGEdgeQual qual,
                                UINT32 size,
                                bool &added);
  void removeEdge(ConstraintGraphEdge *edge);

  bool exprMayPoint(WN *const wn);

  CGNodeId blackHoleId(void)
  {
    return _blackHoleId!=0?_blackHoleId:createBlackHole();
  }
  void resetBlackHoleId(void)
  {
    _blackHoleId = 0;
  }

  list<CGNodeId> &parameters(void) { return _parameters; }
  list<CGNodeId> &returns(void) { return _returns; }

  static void inIPA(bool ipa) { _inIPA = ipa; }
  static bool inIPA() { return _inIPA; }

private:

  // Max size of all types
  static UINT32 maxTypeSize;

  // Are we in IPA?
  static bool _inIPA;

  // Constraint graph build methods

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

  CGNodeId createBlackHole(void);

  // Data Members

  // Generate unique CGNodeId per procedure
  CGNodeId _nextCGNodeId;

  // Generate unique CallSiteId per procedure
  CallSiteId _nextCallSiteId;

  // Node to denote a non-pointer
  ConstraintGraphNode *_notAPointer;

  // Node to denote varargs
  ConstraintGraphNode *_varArgs;

  // Set of ConstraintGraphNodes
  CGIdToNodeMap _cgIdToNodeMap;

  // Map a ConstraintGraphNode, represented uniquely using (CG_ST_IDX, offset)
  // to the node id
  CGNodeToIdMap _cgNodeToIdMap;

  // Provide additional per st info
  CGStInfoMap _cgStInfoMap;

  // Created by the solver.  The id() of the node used
  // to provide boundary conditions for incomplete programs
  static CGNodeId _blackHoleId;

  // The formal parameters and return CGNodes for this function
  list<CGNodeId> _parameters;
  list<CGNodeId> _returns;

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
    vcg.buildVCG();
  }
    
private:

  ConstraintGraphVCG(ConstraintGraph *cg, const char *fileNamePrefix)
  {
     MEM_POOL_Initialize(&_memPool, "AliasAnalyzer_pool", FALSE);
     _fileNamePrefix = fileNamePrefix;
     _cg = cg;
  }

  char *getNodeLabel(ConstraintGraphNode *cgNode);
  char *getEdgeLabel(ConstraintGraphEdge *cgEdge);
  char *getNodeTitle(ConstraintGraphNode *cgNode);
  char *getNodeInfo(ConstraintGraphNode *cgNode);
  VCGNode *buildVCGNode(ConstraintGraphNode *cgNode);

  void buildVCG();

  const char *_fileNamePrefix;
  ConstraintGraph *_cg;
  MEM_POOL _memPool;
};

// Class to map calls in the function
class CallSite
{
public:
  CallSite(bool isIndirect, CallSiteId id, MEM_POOL *memPool) :
    _id(id),
    _flags(isIndirect ? CS_FLAGS_INDIRECT : 0),
    _return(0),
    _mod(memPool),
    _ref(memPool)
  {}

  CallSiteId id() const { return _id; }

  void addParm(CGNodeId cgNodeId) { _parms.push_back(cgNodeId); }

  CGNodeId returnId(void) const { return _return; }
  void returnId(CGNodeId cgNodeId) { _return = cgNodeId; }

  bool isDirect() const 
  { 
    return !checkFlags(CS_FLAGS_UNKNOWN) && !checkFlags(CS_FLAGS_INDIRECT); 
  }
  bool isIndirect()  const { return checkFlags(CS_FLAGS_INDIRECT); }
  bool isIntrinsic() const { return checkFlags(CS_FLAGS_INTRN); }

  ST_IDX st_idx() const
  { 
    FmtAssert(isDirect() && !isIntrinsic(), ("Only direct calls have st_idx"));
    return _callInfo.st_idx; 
  }

  CGNodeId cgNodeId() const 
  {
    FmtAssert(isIndirect(), ("Only indirect calls have cgNodeId"));
    return _callInfo.cgNodeId;
  }

  INTRINSIC intrinsic() const
  {
    FmtAssert(isIntrinsic(), ("Expecting an intrinsic"));
    return _callInfo.intrinsic;
  }

  void st_idx(ST_IDX st_idx)
  {
    FmtAssert(isDirect() && !isIntrinsic(), ("Only direct calls have st_idx"));
    _callInfo.st_idx = st_idx;
  }

  void cgNodeId(CGNodeId cgNodeId)
  {
    FmtAssert(isIndirect(), ("Only indirect calls have cgNodeId"));
    _callInfo.cgNodeId = cgNodeId;
  }

  void intrinsic(INTRINSIC ins)
  {
    FmtAssert(isIntrinsic(), ("Expecting intrinsic call"));
    _callInfo.intrinsic = ins;
  }

  list<CGNodeId> &parms(void) { return _parms; }

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
    INTRINSIC intrinsic; // For builtin intrinsics
  } _callInfo;          
  list<CGNodeId> _parms;
  CGNodeId _return;
  PointsTo _mod;
  PointsTo _ref;
};

#endif // constraint_graph_INCLUDED
