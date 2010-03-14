/*
 * constraint_graph_solve.h
 *
 *  Created on: Mar 3, 2010
 *      Author: hank
 */

#ifndef CONSTRAINT_GRAPH_SOLVE_H_
#define CONSTRAINT_GRAPH_SOLVE_H_

#include "constraint_graph.h"

class EdgeDelta {
public:
  EdgeDelta() {}
  ~EdgeDelta() {}

  void add(ConstraintGraphEdge *e);
  EdgeWorkList &copySkewList() { return _copySkew; }
  EdgeWorkList &loadStoreList() { return _loadStore; }

  bool empty() const { return _copySkew.empty() &&
                              _loadStore.empty(); }
private:
  EdgeWorkList _copySkew;
  EdgeWorkList _loadStore;
};

class ConstraintGraphSolve {
public:
  ConstraintGraphSolve(EdgeDelta &delta,
                       ConstraintGraph *cg,
                       MEM_POOL *memPool,
                       ConstraintGraph *gcg=NULL)
  : _cg(cg),
    _globalCG(gcg==NULL?cg:gcg),
    _memPool(memPool),
    _edgeDelta(delta)
    {}

  ~ConstraintGraphSolve() {}

  bool solveConstraints(UINT32 noMergeMask = 0);

  void cycleDetection(UINT32 noMergeMask = 0);

  static void postProcessPointsTo();

private:
  void updateOffsets(const ConstraintGraphNode *, PointsTo &, CGEdgeQual);
  void processAssign(const ConstraintGraphEdge *);
  void processSkew(const ConstraintGraphEdge *);
  void processLoad(const ConstraintGraphEdge *);
  bool processStore(const ConstraintGraphEdge *);
  void addEdgesToWorkList(ConstraintGraphNode *);
  void addCopiesForLoadStore(ConstraintGraphNode *src,
                             ConstraintGraphNode *dst,
                             CGEdgeType etype,
                             CGEdgeQual qual,
                             UINT32 size,
                             SparseBitSet<CGNodeId> &ptSet);

  EdgeDelta &edgeDelta() { return _edgeDelta; }

  // Edge qualifier matrix mapping
  CGEdgeQual qualMap(CGEdgeType et,CGEdgeQual aq,CGEdgeQual eq, bool cs);

  ConstraintGraph *_cg;
  ConstraintGraph *_globalCG;
  MEM_POOL        *_memPool;
  EdgeDelta       _edgeDelta;
};



#endif /* CONSTRAINT_GRAPH_SOLVE_H_ */
