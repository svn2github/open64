/*
 * alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>

#include "alias_analyzer.h"
#include "config_opt.h"
#include "nystrom_alias_analyzer.h"

// There will be one instance of an AliasAnalyzer object, the
// results of the alias analysis are either provided via summary
// from ipa_link or computed locally during a non-ipa compile
AliasAnalyzer *AliasAnalyzer::_alias_analyzer = NULL;

AliasAnalyzer *
AliasAnalyzer::Create_Alias_Analyzer(ALIAS_CONTEXT &ac, WN *tree)
{
  fprintf(stderr,"Create Alias Analyzer...\n");
  if (_alias_analyzer != NULL)
    return _alias_analyzer;

  // What alias analyzer are we going to use?
  if ( Alias_Nystrom_Analyzer ) {
    _alias_analyzer = new NystromAliasAnalyzer(ac,tree);
    return _alias_analyzer;
  }
  else
    return NULL;
}

void
AliasAnalyzer::Delete_Alias_Analyzer()
{
  if (_alias_analyzer) {
    delete _alias_analyzer;
    _alias_analyzer = NULL;
  }
}
  
AliasAnalyzer::AliasAnalyzer() 
{
  MEM_POOL_Initialize(&_memPool, "AliasAnalyzer_pool", FALSE);
  _aliasTagMap = IPA_WN_MAP32_Create(Current_Map_Tab, &_memPool);
}

AliasAnalyzer::~AliasAnalyzer() 
{
  MEM_POOL_Delete(&_memPool);
  IPA_WN_MAP_Delete(Current_Map_Tab, _aliasTagMap);
}

ALIAS_RESULT
AliasAnalyzer::aliased(AliasTag, AliasTag)
{
  return POSSIBLY_ALIASED;
}

AliasTag
AliasAnalyzer::genAliasTag(ST *, INT64, INT64)
{
  return InvalidAliasTag;
}

void
AliasAnalyzer::aliasedWithCall(ST *, AliasTag, BOOL &mod, BOOL &ref)
{
}

AliasTag
AliasAnalyzer::meet(AliasTag, AliasTag)
{
  return InvalidAliasTag;
}
