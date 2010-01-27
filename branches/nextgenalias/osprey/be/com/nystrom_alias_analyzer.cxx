/*
 * nystrom_alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>
#include "nystrom_alias_analyzer.h"

NystromAliasAnalyzer::NystromAliasAnalyzer(ALIAS_CONTEXT &ac, WN *)
  : AliasAnalyzer()
{
  // Activate the use of the Nystrom points-to analysis by the
  // ALIAS_RULE harness and disable alias classification rules.
  ac |= ALIAS_ANALYZER_RULE;
  ac &= ~(CLAS_RULE|IP_CLAS_RULE);

  fprintf(stderr,"Nystrom analysis...complete\n");
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
