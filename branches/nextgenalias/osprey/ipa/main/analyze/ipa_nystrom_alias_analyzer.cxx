#include <elf.h>
#include "defs.h"
#include "ipl_summary.h"
#include "ipa_summary.h"
#include "ipa_nystrom_alias_analyzer.h"

IPA_NystromAliasAnalyzer *IPA_NystromAliasAnalyzer::_ipa_naa = NULL;

static CG_ST_IDX 
adjustCGstIdx(IPA_NODE *ipaNode, CG_ST_IDX cg_st_idx)
{
  UINT16 fileIdx = (UINT16)(ipaNode->File_Index());
  UINT16 puIdx   = (UINT16)(ipaNode->Proc_Info_Index());
  UINT32 filePUIdx = (fileIdx << 16) | puIdx;
  cg_st_idx = (((UINT64)filePUIdx) << 32) | cg_st_idx;
  return cg_st_idx;
}

ConstraintGraph * 
IPA_NystromAliasAnalyzer::buildIPAConstraintGraph(IPA_NODE *ipaNode)
{
  INT32 size;
  SUMMARY_PROCEDURE *proc = ipaNode->Summary_Proc();

  fprintf(stderr, "\nBuilding ConstraintGraph for proc: %s "
          "file: %d pu: %d\n", ipaNode->Name(), ipaNode->File_Index(),
          ipaNode->Proc_Info_Index());

  // Clear old entries
  _uniqueCGNodeIdMap.clear();

  // Since not a ptr and black holes are created once and are ignored during
  // during summary to constraint graph construction, map them to their 
  // globally unique ids so that lookups don't fail
  _uniqueCGNodeIdMap[ConstraintGraph::notAPointer()->id()] = 
                     ConstraintGraph::notAPointer()->id();
  _uniqueCGNodeIdMap[ConstraintGraph::blackHole()->id()] = 
                     ConstraintGraph::blackHole()->id();

  // Initialize ConstraintGraph
  ConstraintGraph *cg = CXX_NEW(ConstraintGraph(&_memPool), &_memPool);

  // Add the ConstraintGraphNodes
  UINT32 nodeIdx = proc->Get_constraint_graph_nodes_idx();
  SUMMARY_CONSTRAINT_GRAPH_NODE *summNodes = 
          IPA_get_constraint_graph_nodes_array(ipaNode->File_Header(), size);
  for (UINT32 i = 0; i < size; i++) {
    SUMMARY_CONSTRAINT_GRAPH_NODE &summNode = summNodes[i];
    ConstraintGraphNode *cgNode = buildCGNode(&summNode, ipaNode, cg);
  }

  // Add the StInfos.
  UINT32 stInfoIdx = proc->Get_constraint_graph_stinfos_idx();
  SUMMARY_CONSTRAINT_GRAPH_STINFO *summStInfos = 
          IPA_get_constraint_graph_stinfos_array(ipaNode->File_Header(), size);
  CGStInfoMap &stInfoMap = cg->stInfoMap();
  for (UINT32 i = 0; i < size; i++) {
    SUMMARY_CONSTRAINT_GRAPH_STINFO &summStInfo = summStInfos[i];
    StInfo *stInfo = buildStInfo(&summStInfo, ipaNode, cg);
  }

  _ipaConstraintGraphs[ipaNode->Node_Index()] = cg;

  cg->print(stderr);

  return cg;
}

ConstraintGraphNode *
IPA_NystromAliasAnalyzer::buildCGNode(SUMMARY_CONSTRAINT_GRAPH_NODE *summ,
                                      IPA_NODE *ipaNode,
                                      ConstraintGraph *parentCG)
{
  // Ignore notAPointer and blackHole CGNodes; they have been already
  // created in the globalConstraintGraph
  if (summ->cgNodeId() == ConstraintGraph::notAPointer()->id() || 
      summ->cgNodeId() == ConstraintGraph::blackHole()->id())
    return NULL;

  // Adjust cg_st_idx with the current pu and file index
  CG_ST_IDX cg_st_idx = summ->cg_st_idx();
  cg_st_idx = adjustCGstIdx(ipaNode, cg_st_idx);
 
  // Remap the CGNodeId to a unique id
  CGNodeId oldCGNodeId = summ->cgNodeId(); 
  CGNodeId newCGNodeId = parentCG->getNextCGNodeId();
  _uniqueCGNodeIdMap[oldCGNodeId] = newCGNodeId;
  ConstraintGraphNode *cgNode = 
    CXX_NEW(ConstraintGraphNode(cg_st_idx, summ->offset(), summ->flags(),
                                summ->inKCycle(), newCGNodeId, parentCG),
            &_memPool);

  // Add to maps in the current ConstraintGraph
  CGIdToNodeMap &cgIdToNodeMap = ConstraintGraph::getCGIdToNodeMap();
  cgIdToNodeMap[newCGNodeId] = cgNode;
  CGNodeToIdMap &cgNodeToIdMap = parentCG->cgNodeToIdMap();
  cgNodeToIdMap[cgNode] = newCGNodeId;

  return cgNode;
}

StInfo *
IPA_NystromAliasAnalyzer::buildStInfo(SUMMARY_CONSTRAINT_GRAPH_STINFO *summ,
                                      IPA_NODE *ipaNode,
                                      ConstraintGraph *parentCG)
{
  // Ignore notAPointer and blackHole CGNodes; they have been already
  // created in the globalConstraintGraph
  if (summ->firstOffset() == ConstraintGraph::notAPointer()->id() ||
      summ->firstOffset() == ConstraintGraph::blackHole()->id())
    return NULL;
     
  UINT32 flags = summ->flags(); 
  INT64 varSize = summ->varSize(); 
  UINT32 modulus = summ->modulus();
  StInfo *stInfo = CXX_NEW(StInfo(flags, varSize, modulus), &_memPool);
  // Adjust cg_st_idx with the current pu and file index
  CG_ST_IDX cg_st_idx = adjustCGstIdx(ipaNode, summ->cg_st_idx());
  CGStInfoMap &stInfoMap = parentCG->stInfoMap();
  stInfoMap[cg_st_idx] = stInfo;
  return stInfo;
}
