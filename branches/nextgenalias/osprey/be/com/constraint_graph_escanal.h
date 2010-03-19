/*
 * constraint_graph_escanal.h
 *
 *  Created on: Feb 25, 2010
 *      Author: hank
 */

#ifndef CONSTRAINT_GRAPH_ESCANAL_H_
#define CONSTRAINT_GRAPH_ESCANAL_H_

#include "constraint_graph.h"

class EscapeAnalysis {

public:
  EscapeAnalysis(ConstraintGraph *graph, bool summary, MEM_POOL *memPool)
  : _summaryMode(summary),
    _ipaMode(false),
    _wholeProgramMode(false),
    _observedCnt(0),
    _localEscapeCnt(0),
    _globalEscapeCnt(0),
    _graph(graph),
    _ipaCGMap(NULL),
    _memPool(memPool)
  {}

  EscapeAnalysis(void *map, bool wholeProgram,MEM_POOL *memPool)
   : _summaryMode(false),
     _ipaMode(true),
     _wholeProgramMode(wholeProgram),
     _observedCnt(0),
     _localEscapeCnt(0),
     _globalEscapeCnt(0),
     _graph(NULL),
     _ipaCGMap(map),
     _memPool(memPool)
  {}

  ~EscapeAnalysis();

  void perform(void);
  void markEscaped(void);

  UINT32 escapeStFlags(ConstraintGraphNode *node) const;

private:
  typedef pair<CG_ST_IDX,UINT32> StTableKey;
  typedef struct {
    size_t operator() (const StTableKey &k) const
    {
      return ((k.first << 16) ^ k.second);
    }
  } hashStTableData;
  typedef struct {
    bool operator() (const StTableKey &k1, const StTableKey &k2) const
    {
      return (k1.first == k2.first && k1.second == k2.second);
    }
  } equalStTableData;
  typedef hash_map<StTableKey,UINT32,hashStTableData,equalStTableData> StTable;

  void init(ConstraintGraph *graph);
  void ipaInit(void);
  bool observed(ConstraintGraphNode *node);
  void newContEscapeNode(ConstraintGraphNode *node, UINT32 flags);
  void newPropEscapeNode(ConstraintGraphNode *node, UINT32 flags);
  void newFullEscapeNode(ConstraintGraphNode *node, UINT32 flags);
  void processContEscapeNode(ConstraintGraphNode *node);
  void processPropEscapeNode(ConstraintGraphNode *node);
  void processFullEscapeNode(ConstraintGraphNode *node);

  void examineCallSites(ConstraintGraph *graph);

  void printStFlags(UINT32 flags) const;
  UINT32 stOffset(const ConstraintGraphNode *node) const;
  UINT32 findStFlags(ConstraintGraphNode *node);
  void   addStFlags(ConstraintGraphNode *node, UINT32 flags);
  void   addStToWorkList(ConstraintGraphNode *node);

  void      computeReversePointsTo(void);
  void      globalComputeReversePointsTo(void);

  bool      exposed(CG_ST_IDX idx);

  bool             _summaryMode;
  bool             _ipaMode;
  bool             _wholeProgramMode;
  UINT32           _observedCnt;
  UINT32           _localEscapeCnt;
  UINT32           _globalEscapeCnt;
  ConstraintGraph *_graph;
  NodeWorkList     _workList;
  StTable          _stTable;
  void            *_ipaCGMap;
  MEM_POOL        *_memPool;
};

#endif /* CONSTRAINT_GRAPH_ESCANAL_H_ */
