/*
 * nystrom_alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>
#include "nystrom_alias_analyzer.h"

NystromAliasAnalyzer::NystromAliasAnalyzer()
  : AliasAnalyzer()
{
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

bool
NystromAliasAnalyzer::pointsToSet(AliasTag, SparseBitSet<int> &)
{
  return false;
}
