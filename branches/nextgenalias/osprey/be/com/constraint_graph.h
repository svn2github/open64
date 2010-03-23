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

class EdgeDelta;

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
#define CG_ST_FLAGS_VARARGS   0x00000400 // VARARGS dummy node
#define CG_ST_FLAGS_STACK     0x00000800 // alloca dynamic stack

#define CG_ST_FLAGS_NOFIELD   0x00001000 // Do not specialize fields
#define CG_ST_FLAGS_NOCNTXT   0x00002000 // Do not specialize contexts
#define CG_ST_FLAGS_NOLOCAL   0x00004000 // Can escape through a return
#define CG_ST_FLAGS_MODRANGE  0x00008000 // Modulus ranges employed for
                                         // symbol stride tracking

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
#define CG_NODE_FLAGS_MERGED        0x0080 // CGNodes that have been merged

#define CG_NODE_FLAGS_VISITED       0x0100  // Used by cycle detection
#define CG_NODE_FLAGS_SCCMEMBER     0x0200  // Used by cycle detection
#define CG_NODE_FLAGS_INKVALMAP     0x0400  // Used by cycle detection
#define CG_NODE_FLAGS_ADDRTAKEN     0x0800
#define CG_NODE_FLAGS_PTSMOD        0x1000  // Points-to set updated, implies
                                            // rev points-to relation to be updated
#define CG_NODE_FLAGS_IN_WORKLIST   0x2000

#define CG_NODE_FLAGS_ADDR_TAKEN    0x4000  // Has the node been placed in a pts?

#define CG_NODE_FLAGS_ADJUST_K_CYCLE 0x0100  // Reuse VISITED during IPA CG construction


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
  ETYPE_COPY  = 0x1,
  ETYPE_SKEW  = 0x2,
  ETYPE_STORE = 0x4,
  ETYPE_LOAD  = 0x8,
  ETYPE_COPYSKEW  = ETYPE_SKEW|ETYPE_COPY,
  ETYPE_LOADSTORE = ETYPE_LOAD|ETYPE_STORE,
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
      _etype(etype),
      _qual(qual), 
      _flags(0), 
      _sizeOrSkew(sizeOrSkew)
  {}

  CGEdgeType edgeType() const { return _etype; }

  CGEdgeQual edgeQual() const { return _qual; }

  ConstraintGraphNode *srcNode() const { return _srcCGNode; }
  ConstraintGraphNode *destNode() const { return _destCGNode; }

  UINT32 size() const
  {
    FmtAssert(edgeType() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    return _sizeOrSkew;
  }

  UINT32 skew() const
  {
    FmtAssert(edgeType() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    return _sizeOrSkew;
  }

  void size(UINT32 s)
  {
    FmtAssert(edgeType() != ETYPE_SKEW, ("Not valid for SKEW edge"));
    _sizeOrSkew = s;
  }

  void skew(UINT32 s)
  {
    FmtAssert(edgeType() == ETYPE_SKEW, ("Expecting a SKEW edge"));
    _sizeOrSkew = s;
  }

  UINT16 flags(void) const { return _flags; }
  bool checkFlags(UINT16 flag) const { return _flags & flag; }
  void addFlags(UINT16 flag) { _flags |= flag; }
  void clearFlags(UINT16 flag) { _flags &= ~flag; }

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
      return ((k->_etype << 28 ^ k->_sizeOrSkew << 16) ^ 
              (size_t)k->_srcCGNode ^ (size_t)k->_destCGNode);
    }
  } hashCGEdge;

  typedef struct
  {
    bool operator()(const ConstraintGraphEdge *k1,
                    const ConstraintGraphEdge *k2) const
    {
      return ((k1->_etype == k2->_etype && 
               k1->_sizeOrSkew == k2->_sizeOrSkew) &&
              k1->_srcCGNode == k2->_srcCGNode &&
              k1->_destCGNode == k2->_destCGNode);
    }
  } equalCGEdge;

private:

  void srcNode(ConstraintGraphNode *n)  { _srcCGNode = n; }
  void destNode(ConstraintGraphNode *n) { _destCGNode = n; }

  ConstraintGraphNode *_srcCGNode;
  ConstraintGraphNode *_destCGNode;
  CGEdgeType _etype;
  CGEdgeQual _qual;
  UINT16     _flags;
  INT32      _sizeOrSkew;  // size for a copy/load/store edge, skew otherwise
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

class CGEdgeList {
public:
  CGEdgeList(CGEdgeType et)
  : _type(et), _cgEdgeSet(8), _next(NULL) {}

  CGEdgeType type(void) const { return _type; }
  CGEdgeSet *cgEdgeSet(void)  { return &_cgEdgeSet; }

  CGEdgeList *next(void) const { return _next; }
  void next(CGEdgeList *n)     { _next = n; }
private:
  CGEdgeType  _type;
  CGEdgeSet   _cgEdgeSet;
  CGEdgeList *_next;
};

class StInfo;

class ConstraintGraphNode 
{
public:
  ConstraintGraphNode(CG_ST_IDX cg_st_idx, INT32 offset, 
                      ConstraintGraph *parentCG) :
    _cg_st_idx(cg_st_idx),
    _offset(offset),
    _flags(0),
    _inKCycle(0),
    _pointsToList(NULL),
    _revPointsToList(NULL),
    _repParent(NULL),
    _nextOffset(NULL),
    _parentCG(parentCG),
    _id(0),
    _version(0),
    _maxAccessSize(0),
    _inEdges(NULL),
    _outEdges(NULL)
  {}

  // For IPA
  ConstraintGraphNode(CG_ST_IDX cg_st_idx, INT32 offset, UINT16 flags,
                      UINT32 inKCycle, CGNodeId id, ConstraintGraph *parentCG) :
    _cg_st_idx(cg_st_idx),
    _offset(offset),
    _flags(flags),
    _inKCycle(inKCycle),
    _pointsToList(NULL),
    _revPointsToList(NULL),
    _repParent(NULL),
    _nextOffset(NULL),
    _parentCG(parentCG),
    _id(id),
    _version(0),
    _maxAccessSize(0),
    _inEdges(NULL),
    _outEdges(NULL)
  {}

  ~ConstraintGraphNode();
    
  CGNodeId id() const { return _id; }
  void setId(CGNodeId id) { _id = id; }

  UINT32 inKCycle(void) const { return _inKCycle; }
  void inKCycle(UINT32 val)   { _inKCycle = val; }

  UINT8 maxAccessSize(void) const { return _maxAccessSize; }

  CG_ST_IDX cg_st_idx() const { return _cg_st_idx; }

  StInfo *stInfo();

  bool isOnlyOffset();

  bool canBeDeleted();

  INT32 offset() const { return _offset; }

  ConstraintGraphNode *nextOffset() const { return _nextOffset; }

  void nextOffset(ConstraintGraphNode *nextOffset)
  {
    _nextOffset = nextOffset;
  }

  UINT16 flags() const { return _flags; }
  bool checkFlags(UINT16 flag) const { return _flags & flag; }
  void addFlags(UINT16 flag) { _flags |= flag; }
  void clearFlags(UINT8 flag) { _flags &= ~flag; }

  ConstraintGraphNode *repParent() const { return _repParent; }
  void repParent(ConstraintGraphNode *p) { _repParent = p; }

  // Merge two constraint graph nodes.  The 'src' is merged
  // into the current node.
  void merge(ConstraintGraphNode *src);

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

  // PointsTo accessor functions

  bool addPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  {
    node->addFlags(CG_NODE_FLAGS_ADDR_TAKEN);
    bool change = findRep()->_addPointsTo(node->id(),qual);
    if (change)
      addFlags(CG_NODE_FLAGS_PTSMOD);
    return change;
  }

  bool checkPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  {
    return findRep()->_checkPointsTo(node->id(),qual);
  }

  bool unionPointsTo(const PointsTo &ptsToSet, CGEdgeQual qual)
  {
    bool change = findRep()->_getPointsTo(qual).setUnion(ptsToSet);
    if (change)
      addFlags(CG_NODE_FLAGS_PTSMOD);
    return change;
  }

  const PointsTo &pointsTo(CGEdgeQual qual)
  {
    return findRep()->_pointsTo(qual);
  }

  bool addRevPointsTo(ConstraintGraphNode *node, CGEdgeQual qual)
  {
    return findRep()->_addRevPointsTo(node->id(),qual);
  }

  const PointsTo &revPointsTo(CGEdgeQual qual)
  {
    return findRep()->_revPointsTo(qual);
  }

  PointsToList *pointsToList(void)    { return _pointsToList; }
  PointsToList *revPointsToList(void) { return _revPointsToList; }

  // Try adding edge to the in edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addInEdge(ConstraintGraphEdge *edge);

  void removeInEdge(ConstraintGraphEdge *edge);

  // Try adding edge to the out edge set. If the edge already exists
  // return the existing edge, else insert the new edge and return it
  ConstraintGraphEdge *addOutEdge(ConstraintGraphEdge *edge);

  void removeOutEdge(ConstraintGraphEdge *edge);

  // Checks if 'edge' is in the 'in' copy-skew/load-store edge set
  // Returns the existing edge if yes, else NULL
  ConstraintGraphEdge *inEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet *inEdgeSet = _findCGEdgeSet(edge->edgeType(),_inEdges);
    if (inEdgeSet) {
      CGEdgeSetIterator iter = inEdgeSet->find(edge);
      if (iter != inEdgeSet->end())
        return *iter;
    }
    return NULL;
  }

  // Checks if 'edge' is in the 'out' copy-skew/load-store edge set
  // Returns the existing edge if yes, else NULL
  ConstraintGraphEdge *outEdge(ConstraintGraphEdge *edge)
  {
    CGEdgeSet *outEdgeSet = _findCGEdgeSet(edge->edgeType(),_outEdges);
    if (outEdgeSet) {
      CGEdgeSetIterator iter = outEdgeSet->find(edge);
      if (iter != outEdgeSet->end())
        return *iter;
    }
    return NULL;
  }

  const CGEdgeSet &inCopySkewEdges(void)
  {
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_COPYSKEW,_inEdges);
    return es ? *es : emptyCGEdgeSet;
  }
  const CGEdgeSet &inLoadStoreEdges(void)
  {
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_LOADSTORE,_inEdges);
    return es ? *es : emptyCGEdgeSet;
  }
  const CGEdgeSet &outCopySkewEdges(void)
  {
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_COPYSKEW,_outEdges);
    return es ? *es : emptyCGEdgeSet;
  }
  const CGEdgeSet &outLoadStoreEdges(void)
  {
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_LOADSTORE,_outEdges);
    return es ? *es : emptyCGEdgeSet;
  }

  CGEdgeList *inEdges(void)  { return _inEdges; }
  CGEdgeList *outEdges(void) { return _outEdges; }

  bool root(void) const
  {
    bool isRoot = true;
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_COPYSKEW,_inEdges);
    if (es && !es->empty())
      isRoot = false;
    es = _findCGEdgeSet(ETYPE_LOADSTORE,_inEdges);
    if (es && !es->empty())
      isRoot = false;
    return isRoot;
  }

  bool leaf(void) const
  {
    bool isLeaf = true;
    CGEdgeSet *es = _findCGEdgeSet(ETYPE_COPYSKEW,_outEdges);
    if (es && !es->empty())
      isLeaf = false;
    es = _findCGEdgeSet(ETYPE_LOADSTORE,_outEdges);
    if (es && !es->empty())
      isLeaf = false;
    return isLeaf;
  }

  ConstraintGraphNode *parent() { return findRep(); }

  ConstraintGraph *cg() const { return _parentCG; }
  void cg(ConstraintGraph *p) { _parentCG = p; }

  void print(FILE *file);
  void print(ostream &str);

  typedef struct
  {
    size_t operator()(const ConstraintGraphNode *k) const
    {
      return size_t(k->_cg_st_idx << 16 ^ k->_offset); 
    }
  } hashCGNode;

  typedef struct
  {
    bool operator()(const ConstraintGraphNode *k1,
                    const ConstraintGraphNode *k2) const
    {
      return (k1->_cg_st_idx == k2->_cg_st_idx && k1->_offset == k2->_offset); 
    }
  } equalCGNode;

private:

  CGEdgeSet *_findCGEdgeSet(CGEdgeType t, CGEdgeList *el) const
  {
    CGEdgeList *cur = el;
    while (cur && !(cur->type() & t))
      cur = cur->next();
    return cur?cur->cgEdgeSet():NULL;
  }

  CGEdgeSet &_getCGEdgeSet(CGEdgeType t, CGEdgeList **el);

  bool _addPointsTo(CGNodeId id, CGEdgeQual qual)
  {
    FmtAssert(!checkFlags(CG_NODE_FLAGS_MERGED),
              ("Attempting addPointsTo on a merged node!"));
    PointsTo &pts = _getPointsTo(qual,&_pointsToList);
    return pts.setBit(id);
  }

  bool _addRevPointsTo(CGNodeId id, CGEdgeQual qual)
  {
    PointsTo &pts = _getPointsTo(qual,&_revPointsToList);
    return pts.setBit(id);
  }

  bool _checkPointsTo(CGNodeId id, CGEdgeQual qual)
  {
    PointsTo *pts = _findPointsTo(qual,_pointsToList);
    return pts ? pts->isSet(id) : false;
  }

  PointsTo &_getPointsTo(CGEdgeQual qual)
  {
    return _getPointsTo(qual,&_pointsToList);
  }

  const PointsTo &_pointsTo(CGEdgeQual qual) const {
    PointsTo *pts = _findPointsTo(qual,_pointsToList);
    return (pts) ? *pts : emptyPointsToSet;
  }

  const PointsTo &_revPointsTo(CGEdgeQual qual) const {
     PointsTo *pts = _findPointsTo(qual,_revPointsToList);
     return (pts) ? *pts : emptyPointsToSet;
  }

  PointsTo *_findPointsTo(CGEdgeQual qual, PointsToList *ptl) const
  {
    PointsToList *cur = ptl;
    while (cur && cur->qual() != qual)
      cur = cur->next();
    return cur?cur->pointsTo():NULL;
  }

  PointsTo &_getPointsTo(CGEdgeQual qual, PointsToList **ptl);

  // Sets the _maxAccessSize based on the maximum size of all
  // incoming and outgoing (non-SKEW) edges
  void updateMaxAccessSize(void);

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
  // The ConstraintGraph to which this node belongs
  ConstraintGraph *_parentCG;
  CGNodeId _id;
  UINT8    _version;
  // Max outgoing copy/load/store access size, used during
  // solving to determine accesses to overlapping fields.
  UINT8    _maxAccessSize;

  // Incoming and outgoing copy/skew/load/store edges
  CGEdgeList *_inEdges;
  CGEdgeList *_outEdges;

  static const PointsTo emptyPointsToSet;
  static const CGEdgeSet emptyCGEdgeSet;
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

/* Iterator to abstract access to edge sets */
class CGEdgeListIterator {
public:
  CGEdgeListIterator(ConstraintGraphNode *n, bool in = false)
  : _cur(in ? n->inEdges() : n->outEdges()) {}

  bool operator != (int val) { return _cur != NULL; }
  void operator ++(void) { _cur = _cur->next(); }
  CGEdgeSet &operator *(void) { return *_cur->cgEdgeSet(); }
  CGEdgeType type(void) { return _cur->type(); }
private:
  CGEdgeList *_cur;
};

class ModulusRange
{
public:
  ModulusRange(UINT32 start, UINT32 end, UINT32 mod, TY &ty):
    _startOffset(start),
    _endOffset(end),
    _modulus(mod),
    _child(NULL),
    _next(NULL),
    _ty(ty)
  {}

  UINT32 modulus(UINT32 offset) { return findRange(offset)->_modulus; }
  UINT32 modulus(UINT32 offset, UINT32 &startOffset, UINT32 &endOffset) {
    ModulusRange *r = findRange(offset);
    startOffset = r->_startOffset;
    endOffset = r->_endOffset;
    return r->_modulus;
  }

  UINT32 modulus(UINT32 offset, UINT32 mod,
                 UINT32 &startOffset, UINT32 &endOffset) {
    ModulusRange *modRange = findRange(offset);
    // Set the modulus of this range to 'mod' and cap
    // the modulus all children to this new value.
    if (mod < modRange->_modulus) {
      modRange->_modulus = mod;
      set(mod);
    }
    startOffset = modRange->_startOffset;
    endOffset = modRange->_endOffset;
  }

  // The modulus of the current range is larger than the
  // modulus of each child.  We return the deepest range
  // containing the requested offset, hence providing the
  // smallest modulus.
  ModulusRange *findRange(UINT32 offset) {
    if (_startOffset <= offset && offset <= _endOffset) {
      if (_child) {
        ModulusRange *r = _child->findRange(offset);
        return r ? r : this;
      }
      else
        return this;
    }
    else if (_next && offset > _next->_startOffset)
      return _next->findRange(offset);
    else
      return NULL;
  }

  // Set the modulus of the current range to the provided
  // value.  If the provided value is < current modulus,
  // cap the children.  We also cap siblings under the
  // assumption that modulus of the parent has been set
  // to the provided value.
  void set(UINT32 mod) {
    if (mod < _modulus) {
      _modulus = mod;
      if (_child) _child->set(mod);
    }
    if (_next) _next->set(mod);
  }

  // Used during StInfo construction to build the hierarchical
  // modulus range structure for a structure containing
  // aggregate fields.
  static ModulusRange *build(TY &ty, UINT32 offset);

  // Used during StInfo construction to determine if a struct
  // is flat, and therefore does not require use of modulus ranges
  static bool flat(TY &ty);

  void print(FILE *file, UINT32 indent=0);
  void print(ostream &str, UINT32 indent=0);

private:
  UINT32        _startOffset;
  UINT32        _endOffset;
  UINT32        _modulus;
  ModulusRange *_child;
  ModulusRange *_next;
  TY           &_ty;          // For debug
};

// Class to represent symbol specific info that is common to all
// CGNodes with the same symbol but different offsets
class StInfo
{
public:
  // Set the varSize from ST_IDX
  StInfo(ST_IDX st_idx);
  // For IPA
  StInfo(UINT32 flags, INT64 varSize, UINT32 modulus) :
    _flags(flags),
    _varSize(varSize),
    //_modulus(modulus),
   _firstOffset(NULL)
  {}

  UINT32 flags() const { return _flags; }
  bool checkFlags(UINT32 flag) const { return _flags & flag; }
  void addFlags(UINT32 flag) { _flags |= flag; }

  INT64 varSize() const { return _varSize; }
  void varSize(INT64 size) { _varSize = size; }
  UINT32 modulus(UINT32 offset) const
  {
    if (!checkFlags(CG_ST_FLAGS_MODRANGE))
      return _u._modulus;
    else
      return _u._modRange->modulus(offset);
  }
  void modulus(UINT32 mod, UINT32 offset);

  // Called after constraint graph is constructed to apply the final
  // modulus ranges to all existing offsets.
  void applyModulus(void);

  // The maximum number of offsets off this ST that we will allow
  // before going field insensitive.  We will be able to configure
  // this on a per-symbol basis.  This upper bound is used to ensure
  // our solution converges in a timely manner in the presence of
  // inter-procedural skew cycles that we are not removing from the
  // constraint graph
  UINT16 maxOffsets(void) const { return _maxOffsets; }
  UINT16 numOffsets(void) const { return _numOffsets; }
  void incrNumOffsets(void)     { _numOffsets += 1; }

  ConstraintGraphNode *firstOffset() const { return _firstOffset; }
  void firstOffset(ConstraintGraphNode *n) { _firstOffset = n; }

  void print(FILE *file);
  void print(ostream& ostr);

private:
  UINT32 _flags;
  union  {
    UINT32        _modulus;
    ModulusRange *_modRange;
  }      _u;
  INT64  _varSize;
  UINT16 _maxOffsets;
  UINT16 _numOffsets;
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

class IPA_NODE;
class SUMMARY_CONSTRAINT_GRAPH_NODE;
class SUMMARY_CONSTRAINT_GRAPH_STINFO;

class ConstraintGraph 
{
public:
  static ConstraintGraphNode *notAPointer(void)
  { 
    return notAPointerCGNode; 
  }

  static CGNodeId blackHoleId(void)           { return blackHoleCGNode->id(); }
  static ConstraintGraphNode *blackHole(void) { return blackHoleCGNode; }

  static void inIPA(bool ipa) { isIPA = ipa; }
  static bool inIPA() { return isIPA; }

  static void reset()
  {
    notAPointerCGNode = NULL;
    blackHoleCGNode = NULL;
    nextCGNodeId = 1;
    cgIdToNodeMap.clear();
  }

  static ConstraintGraphNode *cgNode(CGNodeId cgNodeId)
  {
    CGIdToNodeMapIterator iter = cgIdToNodeMap.find(cgNodeId);
    if (iter != cgIdToNodeMap.end())
      return iter->second;
    return NULL;
  }

  // To facilitate traversal of the constraint graph
  static CGIdToNodeMapIterator gBegin() { return cgIdToNodeMap.begin(); }
  static CGIdToNodeMapIterator gEnd()   { return cgIdToNodeMap.end(); }

  static ConstraintGraphEdge *addEdge(ConstraintGraphNode *src,
                                      ConstraintGraphNode *dest,
                                      CGEdgeType etype, CGEdgeQual qual,
                                      INT32 sizeOrSkew, bool &added,
                                      UINT16 flags = 0);

  static void removeEdge(ConstraintGraphEdge *edge);

  static void adjustPointsToForKCycle(ConstraintGraphNode *cgNode);
  static void adjustPointsToForKCycle(UINT32 kCycle,const PointsTo &src,
                                      PointsTo &dst);

  static bool addCGNodeInSortedOrder(StInfo *stInfo, 
                                     ConstraintGraphNode *cgNode);

  static ConstraintGraph *globalCG()        { return globalConstraintGraph; }
  static void globalCG(ConstraintGraph *cg) { globalConstraintGraph = cg; }

  static CG_ST_IDX adjustCGstIdx(IPA_NODE *ipaNode, CG_ST_IDX cg_st_idx);

  // To build ConstraintGraphs at IPL/BE
  ConstraintGraph(WN *entryWN, MEM_POOL *mPool, UINT32 minSize = 1024):
    _name(0),
    _buildComplete(false),
    _nextCallSiteId(1),
    _varArgs(NULL),
    _cgNodeToIdMap(minSize),
    _cgStInfoMap(minSize),
    _ipaNode(NULL),
    _memPool(mPool)
  {
    if (notAPointerCGNode == NULL) {
      ST *notAPtrSt =
          Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgNotAPtr",
                                CLASS_VAR, SCLASS_AUTO);
      notAPointerCGNode = getCGNode(CG_ST_st_idx(notAPtrSt), 0);
      notAPointerCGNode->addFlags(CG_NODE_FLAGS_NOT_POINTER);
    }
    if (blackHoleCGNode == NULL) {
      ST *bhST =
          Gen_Temp_Named_Symbol(MTYPE_To_TY(Pointer_type), "_cgBlackHole",
                                CLASS_VAR, SCLASS_AUTO);
      blackHoleCGNode = getCGNode(CG_ST_st_idx(bhST),0);
    }
    if (maxTypeSize == 0)
      maxTypeSize = findMaxTypeSize();

    edgeMemPool = mPool;

    Is_True(WN_operator(entryWN) == OPR_FUNC_ENTRY,
            ("Expecting FUNC_ENTRY when building ConstraintGraph"));
    buildCG(entryWN);

    _buildComplete = true;
    // Here we are going to re-apply the final modulus, post
    // build to perform any necessary aliasing of nodes having
    // offsets larger than the new modulus.
    for (CGStInfoMap::iterator iter = _cgStInfoMap.begin();
        iter != _cgStInfoMap.end(); ++iter)  {
      StInfo *stInfo = iter->second;
      stInfo->applyModulus();
    }
}


  // To build ConstraintGraphs during IPA
  ConstraintGraph(MEM_POOL *mPool, IPA_NODE *ipaNode = NULL, 
                  UINT32 minSize = 1024):
    _name(0),
    _nextCallSiteId(1),
    _cgNodeToIdMap(minSize),
    _cgStInfoMap(minSize),
    _ipaNode(ipaNode),
    _memPool(mPool)
  {
    if (notAPointerCGNode == NULL) {
      ST *notAPtrSt = New_ST(GLOBAL_SYMTAB);
      ST_Init(notAPtrSt, Save_Str("_globalCGNotAPTR"), CLASS_VAR,
              SCLASS_UGLOBAL, EXPORT_INTERNAL, MTYPE_To_TY(Pointer_type));
      notAPointerCGNode = getCGNode(CG_ST_st_idx(notAPtrSt), 0);
      notAPointerCGNode->addFlags(CG_NODE_FLAGS_NOT_POINTER);
    }
    if (blackHoleCGNode == NULL) {
      ST *bhST = New_ST(GLOBAL_SYMTAB);
      ST_Init(bhST, Save_Str("_globalCGBlackHole"), CLASS_VAR, SCLASS_UGLOBAL,
              EXPORT_INTERNAL, MTYPE_To_TY(Pointer_type));
      blackHoleCGNode = getCGNode(CG_ST_st_idx(bhST), 0);
    }

    if (edgeMemPool == NULL)
      edgeMemPool = mPool;

    if (ipaNode)
      buildCGipa(ipaNode);
    else
      _name = "__Global_Graph__";
  }

  void deleteNode(ConstraintGraphNode *node)
  {
    FmtAssert(node != notAPointerCGNode, ("Deleting not a pointer node"));
    FmtAssert(node != blackHoleCGNode, ("Deleting blackHole node"));
    // The ConstraintGraphNode destructor additionally checks if the node
    // is not a formal/actual/param/return
    _cgNodeToIdMap.erase(node);
    cgIdToNodeMap.erase(node->id());  
    CXX_DELETE(node, _memPool);
  }

  UINT32 totalCGNodes() const { return nextCGNodeId; }

  bool buildComplete(void) const { return _buildComplete; }

  StInfo *stInfo(CG_ST_IDX cg_st_idx) const 
  { 
    CGStInfoMapIterator stIter = _cgStInfoMap.find(cg_st_idx);
    if (stIter != _cgStInfoMap.end())
      return stIter->second;
    return NULL;
  }

  CallSite *callSite(CallSiteId callSiteId)
  {
    CallSiteIterator iter = _callSiteMap.find(callSiteId);
    if (iter != _callSiteMap.end())
      return iter->second;
    return NULL;
  }

  ConstraintGraphNode *varargs(void) { return _varArgs; }

  // To iterate all nodes local to this constraint graph
  CGNodeToIdMapIterator lBegin() { return _cgNodeToIdMap.begin(); }
  CGNodeToIdMapIterator lEnd()   { return _cgNodeToIdMap.end(); }

  CallSiteMap &callSiteMap(void) { return _callSiteMap; }

  CGStInfoMap &stInfoMap(void) { return _cgStInfoMap; }

  // Return CGNode mapped to (cg_st_idx, offset), if not create a new CGNode 
  ConstraintGraphNode *getCGNode(CG_ST_IDX cg_st_idx, INT64 offset);

  // Return CGNode mapped to (cg_st_idx, offset), if not return NULL
  ConstraintGraphNode *checkCGNode(CG_ST_IDX cg_st_idx, INT64 offset);

  void print(FILE *file);

  // Driver for solving the constraint graph when not in IPA
  // mode.  Returns true of the solution is complete, false otherwise
  bool nonIPASolver(bool doEscAnal);

  void simpleOptimizer();

  bool exprMayPoint(WN *const wn);

  list<CGNodeId> &parameters(void) { return _parameters; }
  list<CGNodeId> &returns(void) { return _returns; }

  IPA_NODE *ipaNode() const { return _ipaNode; }

  MEM_POOL *memPool() { return _memPool; }

  void connect(CallSiteId id, ConstraintGraph *callee,
               ST *calleeST, EdgeDelta &delta);

  void applyCalleeSummaries(EdgeDelta &delta);

  void remapDeletedNode(WN *wn);

  void deleteOptimizedNodes();

  void vcg(const char *prefix);

  char *name(void) { return _name; }

private:

  // Max size of all types
  static UINT32 maxTypeSize;

  // Are we in IPA?
  static bool isIPA;

  // Generate unique CGNodeId per procedure
  static CGNodeId nextCGNodeId;

  // Set of ConstraintGraphNodes
  static CGIdToNodeMap cgIdToNodeMap;

  // Node to denote a non-pointer
  static ConstraintGraphNode *notAPointerCGNode;

  // Created by the solver.  The id() of the node used
  // to provide boundary conditions for incomplete programs
  static ConstraintGraphNode *blackHoleCGNode;

  // The global constraint graph for IPA
  static ConstraintGraph *globalConstraintGraph;

  // Pool to hold all edges, since edges span multiple ConstraintGraphs
  static MEM_POOL *edgeMemPool;

  // Constraint graph build methods

  void buildCG(WN *entryWN);

  WN *processWN(WN *wn);

  WN *handleAssignment(WN *wn);
  
  WN *handleCall(WN *wn);

  ConstraintGraphNode *processParam(WN *wn);

  ConstraintGraphNode *processLHSofStore(WN *stmt, INT32 &size);

  ConstraintGraphNode *processExpr(WN *expr);

  ConstraintGraphNode *getCGNode(WN *wn);

  ConstraintGraphNode *genTempCGNode();

  UINT32 findMaxTypeSize();

  // Member functions for ConstraintGraph construction during IPA
  void buildCGipa(IPA_NODE *ipaNode);

  ConstraintGraphNode *buildCGNode(SUMMARY_CONSTRAINT_GRAPH_NODE *summ,
                                   IPA_NODE *ipaNode);

  StInfo * buildStInfo(SUMMARY_CONSTRAINT_GRAPH_STINFO *summ,
                       IPA_NODE *ipaNode);

  ConstraintGraphNode *findUniqueNode(CGNodeId id);

  void merge(ConstraintGraph *rhs);

  // Data Members
  bool _buildComplete;

  // Used for debugging during IPA.
  char *_name;

  // Generate unique CallSiteId per procedure
  CallSiteId _nextCallSiteId;

  // Node to denote varargs
  ConstraintGraphNode *_varArgs;

  // Map a ConstraintGraphNode, represented uniquely using (CG_ST_IDX, offset)
  // to the node id
  CGNodeToIdMap _cgNodeToIdMap;

  // Provide additional per st info
  CGStInfoMap _cgStInfoMap;

  // Map callsites in this function
  CallSiteMap _callSiteMap;

  // The formal parameters and return CGNodes for this function
  list<CGNodeId> _parameters;
  list<CGNodeId> _returns;

  hash_set<CGNodeId> _toBeDeletedNodes;

  // For ConstraintGraph construction during IPA
  CGIdToNodeMap _uniqueCGNodeIdMap;
  CGStInfoMap   _ipaCGStIdxToStInfoMap;

  // IPA call graph node corresponding to this CG
  IPA_NODE *_ipaNode;

  MEM_POOL *_memPool;
};

class ConstraintGraphVCG 
{
public:
  static void dumpVCG(const char *fileNamePrefix);

  typedef struct {
      size_t operator()(const ConstraintGraph *k) const {return size_t (k);}
  } hashCG;
  typedef struct {
      bool operator()(const ConstraintGraph *k1,
                      const ConstraintGraph *k2) const  {return k1 == k2; }
  } equalCG;

private:

  ConstraintGraphVCG(const char *fileNamePrefix)
  {
    MEM_POOL_Initialize(&_memPool, "AliasAnalyzer_pool", FALSE);
    _fileNamePrefix = fileNamePrefix;
  }

  char *getNodeLabel(ConstraintGraphNode *cgNode);
  char *getEdgeLabel(ConstraintGraphEdge *cgEdge);
  char *getNodeTitle(ConstraintGraphNode *cgNode);
  char *getNodeInfo(ConstraintGraphNode *cgNode);
  VCGNode *buildVCGNode(ConstraintGraphNode *cgNode);

  void buildVCG();

  const char *_fileNamePrefix;
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

  // For IPA
  CallSite(CallSiteId id, UINT8 flags, MEM_POOL *memPool) :
    _id(id),
   _flags(flags),
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

template <typename T>
inline T gcd(T source, T target)
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

#endif // constraint_graph_INCLUDED
