#ifndef constraint_graph_INCLUDED
#define constraint_graph_INCLUDED

#include <ext/hash_map>
#include <ext/hash_set>
#include "symtab.h"
#include "mempool.h"
#include "sparse_bitset.h"

using namespace __gnu_cxx;

typedef UINT32 CGNodeId;

typedef enum {
  ASSIGN,
  DEREF_ASSIGN,
  ASSIGN_DEREF,
  SKEW
} EdgeType;

class ConstraintGraphEdge 
{
public:
  ConstraintGraphEdge(CGNodeId srcId, CGNodeId destId,
                      EdgeType etype, UINT32 sizeOrSkew)
    : _srcId(srcId),
      _destId(destId),
      _edgeInfo(etype,0,sizeOrSkew)
  {}


  EdgeType edgeType() const
  {
    return edgeInfo().etype();
  }

  UINT32 size() const
  {
    // TODO: assert type is != SKEW
    return edgeInfo().sizeOrSkew();
  }

  UINT32 skew() const
  {
    // TODO: assert type == SKEW
    return edgeInfo().sizeOrSkew();
  }

  typedef struct
  {
    size_t operator()(const ConstraintGraphEdge *k) const
    {
      return (size_t(k->edgeInfo().hash() ^
                     k->_srcId << 8 ^ k->_destId));
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
    EdgeInfo(EdgeType t, UINT16 f, UINT32 s)
      : _etype(t), _flags(f), _sizeOrSkew(s) {}

    EdgeType etype(void) const { return _etype; }
    UINT16 flags(void) const { return _flags; }
    UINT32 sizeOrSkew(void) const { return _sizeOrSkew; }

    bool operator ==(const EdgeInfo &that) const
    {
       return (etype() == that.etype() &&
           sizeOrSkew() == that.sizeOrSkew());
    }

    size_t hash(void) const {
      return (etype() << 28 ^ sizeOrSkew() << 16);
    }

  private:
    EdgeType _etype;
    UINT16   _flags;
    UINT32   _sizeOrSkew;  // size for a copy/load/store edge, skew otherwise
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
  ConstraintGraphNode(ST_IDX symIdx, UINT32 offset)
  {
    _nodeInfo._symIdx = symIdx;
    _nodeInfo._offset = offset;
  }

  typedef struct
  {
    size_t operator()(const ConstraintGraphNode *k) const
    {
      return (size_t(k->_nodeInfo._symIdx << 16 ^ k->_nodeInfo._offset));
   }
  } hashCGNode;

  typedef struct
  {
    bool operator()(const ConstraintGraphNode *k1,
                    const ConstraintGraphNode *k2) const
    {
      return (k1->_nodeInfo._symIdx == k2->_nodeInfo._symIdx &&
              k1->_nodeInfo._offset == k2->_nodeInfo._offset);
    }
  } equalCGNode;
  
private:

  enum {
    CQ_GBL,
    CQ_HZ,
    CQ_DN,
    CQ_NUM
  };

  // The information in NodeInfo is what gets passed from 
  // IPL to IPA and then back to BE for each ConstraintGraphNode
  typedef struct {
    UINT32 _flags;
    ST_IDX _symIdx;
    UINT32 _offset;
    UINT32 _varSize;
    UINT32 _modulus;
    SparseBitSet<CGNodeId> _pointsTo[CQ_NUM];
  } NodeInfo;

  NodeInfo _nodeInfo;
  CGNodeId _id;
  UINT32   _inKCycle;
  UINT8    _version;

  // In/out copy/skew edges are maintained on the node itself
  // The load/store edges are in the ConstraintGraph
  hash_set<ConstraintGraphEdge *,
           ConstraintGraphEdge::hashCGEdge, 
           ConstraintGraphEdge::equalCGEdge> _inCGEdges;

  hash_set<ConstraintGraphEdge *, 
           ConstraintGraphEdge::hashCGEdge, 
           ConstraintGraphEdge::equalCGEdge> _outCGEdges;
  
  // Nodes with different offset off of same base maintained in sorted order
  ConstraintGraphNode *_nextOffset;

  // For nodes that are unified
  ConstraintGraphNode *_repParent;
  ConstraintGraphNode *_repChild;

  // The ConstraintGraph to which this node belongs
  ConstraintGraph *_parentCG;
};

class ConstraintGraph 
{
public:
  ConstraintGraph(UINT32 minSize = 1024, MEM_POOL *mpool = Malloc_Mem_Pool) :
    _cgIdToNodeMap(minSize), 
    _cgNodetoIdMap(minSize),
    _memPool(mpool)
  {} 

  void dump();

private:
  // Set of ConstraintGraphNodes
  hash_map<CGNodeId, ConstraintGraphNode *> _cgIdToNodeMap;

  // Map a ConstraintGraphNode, represented uniquely using (ST_IDX, offset)
  // to the node id
  hash_map<ConstraintGraphNode *, CGNodeId,
           ConstraintGraphNode::hashCGNode, 
           ConstraintGraphNode::equalCGNode> _cgNodetoIdMap;

  // Set of load/store constraint edges. These will be walked in some order
  // during the solution.  The map provides quick lookup for existence check.
  hash_set<ConstraintGraphEdge *,
           ConstraintGraphEdge::hashCGEdge, 
           ConstraintGraphEdge::equalCGEdge> _cgEdges;

  MEM_POOL *_memPool;
};

#endif // constraint_graph_INCLUDED
