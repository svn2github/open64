/*
 * nystrom_alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>
#include "cxx_memory.h"
#include "opt_wn.h"
#include "wn_util.h"
#include "nystrom_alias_analyzer.h"

NystromAliasAnalyzer::NystromAliasAnalyzer(ALIAS_CONTEXT &ac,
                                           WN *entryWN,
                                           MEM_POOL *memPool)
  : AliasAnalyzer(memPool)
{
  // Activate the use of the Nystrom points-to analysis by the
  // ALIAS_RULE harness and disable alias classification rules.
  ac |= ALIAS_ANALYZER_RULE;
  ac &= ~(CLAS_RULE|IP_CLAS_RULE);

  _memPool = memPool;

  _constraintGraph = CXX_NEW(ConstraintGraph(entryWN, memPool), memPool);
  _constraintGraph->print(stderr);

  _constraintGraph->solveConstraints();

  fprintf(stderr,"Nystrom analysis...complete\n");
  _constraintGraph->print(stderr);

  // Map WNs to AliasTags
  createAliasTags(entryWN);
}

NystromAliasAnalyzer::~NystromAliasAnalyzer() {}

ALIAS_RESULT
NystromAliasAnalyzer::aliased(AliasTag, AliasTag)
{
  return POSSIBLY_ALIASED;
}

AliasTag
NystromAliasAnalyzer::genAliasTag(ST *, INT64, INT64)
{
  return InvalidAliasTag;
}

void
NystromAliasAnalyzer::aliasedWithCall(ST *call, AliasTag symTag,
                                      BOOL &mod, BOOL &ref)
{
}

BOOL
NystromAliasAnalyzer::pointsToSet(AliasTag, SparseBitSet<CGNodeId> &)
{
  return FALSE;
}

AliasTag
NystromAliasAnalyzer::meet(AliasTag dstTag, AliasTag srcTag)
{
  if (dstTag == InvalidAliasTag || srcTag == InvalidAliasTag)
    return InvalidAliasTag;

  AliasTag retTag = dstTag;
  if (dstTag == EmptyAliasTag)
    retTag = newAliasTag();
  mergePointsTo(retTag,srcTag);
  return retTag;
}

// Map the WNs to an AliasTag. Each AliasTag in turn is mapped to
// an AliasTagInfo which stores the points-to set (CGNodeIds) of the
// locations accessed by the WN
void
NystromAliasAnalyzer::createAliasTags(WN *entryWN)
{
  UINT32 aliasTag = (UINT32)InitialAliasTag;

  for (WN_ITER *wni = WN_WALK_TreeIter(entryWN);
         wni; wni = WN_WALK_TreeNext(wni))
  {
    WN *wn = WN_ITER_wn(wni);
    CGNodeId id = WN_MAP_CGNodeId_Get(wn);
    // WN not mapped to any CGNodes
    if (id == 0)
      continue;

    const OPCODE   opc = WN_opcode(wn);
    const OPERATOR opr = OPCODE_operator(opc);

    // TODO: Do I need to check for cgNode's parent here?
    ConstraintGraphNode *cgNode = _constraintGraph->cgNode(id);
    FmtAssert(cgNode != NULL, ("CGNodeId : %d not mapped to a "
              "ConstraintGraphNode\n", id));

    AliasTagInfo *aliasTagInfo = CXX_NEW(AliasTagInfo(_memPool), _memPool);
    if (OPERATOR_is_scalar_iload(opr))
    {
      // For ILOADS, the points-to set is associated with the address
      // of the iload. So get the CGNode corresponding to the address WN.
      // If the ILOAD has a non-zero offset, get the CGNode corresponding
      // to address+offset
      CGNodeId addrCGNodeId = WN_MAP_CGNodeId_Get(WN_kid0(wn));
      if (addrCGNodeId == 0)
        continue;
      ConstraintGraphNode *addrCGNode = _constraintGraph->cgNode(addrCGNodeId);
      FmtAssert(addrCGNode != NULL, ("CGNodeId : %d not mapped to a "
                "ConstraintGraphNode\n", addrCGNodeId));
      if (WN_offset(wn) != 0) {
        // Check if the node exists
        if (!addrCGNode)
        addrCGNode = 
          _constraintGraph->checkCGNode(addrCGNode->st_idx(), 
                                        addrCGNode->offset() + WN_offset(wn));
          continue;
      }
      cgNode = addrCGNode;
    }

    // Union all the points-to set
    if (OPERATOR_is_scalar_istore(opr) || OPERATOR_is_scalar_iload(opr))
    {
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_GBL));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_DN));
      aliasTagInfo->pointsTo().setUnion(cgNode->pointsTo(CQ_HZ));
    } 
    // For scalars, the points-to set contains the scalar itself
    else if (OPERATOR_is_scalar_load(opr) || OPERATOR_is_scalar_store(opr) ||
             opr == OPR_LDA) 
    {
      aliasTagInfo->pointsTo().setBit(cgNode->id());
    }
    else
      continue;

    // Map the WN to the new aliasTag
    setAliasTag(wn, (AliasTag)aliasTag);

    // Associate the AliasTagInfo with the aliasTag
    _aliasTagInfo[aliasTag] = aliasTagInfo;

    fprintf(stderr, "mapping aliasTag %d to aliasTagInfo: ", (UINT32)aliasTag);
    aliasTagInfo->print(stderr);
    fprintf(stderr, "\n");
    aliasTag++;
  }
}
