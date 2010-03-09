/*
 * alias_analysis.cxx
 *
 *  Created on: Jan 25, 2010
 *      Author: hank
 */

#include <stdio.h>

#include "alias_analyzer.h"
#include "be_util.h"
#include "config_opt.h"
#include "ir_reader.h"  /* fdump_tree */
#include "nystrom_alias_analyzer.h"
#include "opt_defs.h"  /* Trace flags */
#include "tracing.h"

extern BOOL Read_ALIAS_CGNODE_Map;

// There will be one instance of an AliasAnalyzer object, the
// results of the alias analysis are either provided via summary
// from ipa_link or computed locally during a non-ipa compile
AliasAnalyzer *AliasAnalyzer::_alias_analyzer = NULL;

AliasAnalyzer *
AliasAnalyzer::Create_Alias_Analyzer(ALIAS_CONTEXT &ac, WN *tree)
{
  if (_alias_analyzer != NULL)
    return _alias_analyzer;

  // What alias analyzer are we going to use?
  if ( Alias_Nystrom_Analyzer ) {
    if (Read_ALIAS_CGNODE_Map)
      _alias_analyzer = new NystromAliasAnalyzer(ac);
    else
      _alias_analyzer = new NystromAliasAnalyzer(ac,tree);
    if (Get_Trace(TP_ALIAS,NYSTROM_CG_POST_FLAG))
      fdump_tree(stderr, tree);
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
  : _aliasQueryCount(0),
    _queryFileMap(NULL)
{
  MEM_POOL_Initialize(&_memPool, "AliasAnalyzer_pool", FALSE);
  _aliasTagMap = IPA_WN_MAP32_Create(Current_Map_Tab, &_memPool);

  if (Alias_Query_File) {
    loadQueryFile(Alias_Query_File);
  }
}

AliasAnalyzer::~AliasAnalyzer() 
{
  if (_queryFileMap)
    delete _queryFileMap;
  MEM_POOL_Delete(&_memPool);
  IPA_WN_MAP_Delete(Current_Map_Tab, _aliasTagMap);
}

ALIAS_RESULT
AliasAnalyzer::aliased(AliasTag, AliasTag)
{
  incrAliasQueryCount();
  return POSSIBLY_ALIASED;
}

AliasTag
AliasAnalyzer::genAliasTag(ST *, INT64, INT64, bool)
{
  return InvalidAliasTag;
}

void
AliasAnalyzer::aliasedWithCall(ST *, AliasTag, BOOL &mod, BOOL &ref)
{
  mod = ref = TRUE;
}

AliasTag
AliasAnalyzer::meet(AliasTag, AliasTag)
{
  return InvalidAliasTag;
}

bool
AliasAnalyzer::checkQueryFile(UINT32 pu, AliasTag tag1, AliasTag tag2,
                              bool &result)
{
  if (_queryFileMap) {
    QueryFileKey key(pu,tag1,tag2);
    QueryFileMap::const_iterator iter = _queryFileMap->find(key);
    if (iter != _queryFileMap->end()) {
      result = iter->second;
      return true;
    }
  }
  return false;
}

void
AliasAnalyzer::loadQueryFile(char *filename)
{
  FILE *qf = fopen(filename,"r");
  if (qf) {
    _queryFileMap = new QueryFileMap();
    UINT32 pu, qId;
    AliasTag tag1, tag2;
    char result[8];
    char result2[8];
    while ( fscanf(qf,"Query %d,%d: aliased memop %d %d: %3c Alias (ac %3c)\n",
                   &pu,&qId,(UINT32*)&tag1,(UINT32*)&tag2,result,result2) == 6 ) {
      if (pu == Current_PU_Count()) {
        QueryFileKey key(pu,tag1,tag2);
        bool alias = (result[0] == 'N') ? false : true;
        (*_queryFileMap)[key] = alias;

        fprintf(stderr,"QueryMap <%d,%d,%d>: %s\n",
                pu,tag1,tag2,alias ? "May" : "No");
      }
    }
    fclose(qf);
  }
}
