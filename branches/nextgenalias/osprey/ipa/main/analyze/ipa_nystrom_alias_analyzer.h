#ifndef _IPA_NYSTROM_ALIAS_ANALYZER_INCLUDED
#define _IPA_NYSTROM_ALIAS_ANALYZER_INCLUDED

#include <ext/hash_map>
#include "constraint_graph.h"
#include "ipa_cg.h"

using namespace std;
using namespace __gnu_cxx;

typedef hash_map<NODE_INDEX, ConstraintGraph *> IPACGMap;
typedef IPACGMap::const_iterator IPACGMapIterator;

extern BOOL Write_ALIAS_CGNODE_Map;

class IPA_NystromAliasAnalyzer {

public:
  static IPA_NystromAliasAnalyzer *create() 
  {
    if (_ipa_naa == NULL)
      _ipa_naa = new IPA_NystromAliasAnalyzer();
    return _ipa_naa;
  }

  static void clean()
  {
    if (_ipa_naa)
      delete _ipa_naa;
  }

  static IPA_NystromAliasAnalyzer *aliasAnalyzer() { return _ipa_naa; }
 
  IPA_NystromAliasAnalyzer()  
  {
    MEM_POOL_Initialize(&_memPool, "IPA_NystromAliasAnalyzer_pool", FALSE);
    ConstraintGraph::inIPA(true);
    ConstraintGraph::globalCG(CXX_NEW(ConstraintGraph(&_memPool), &_memPool));
    // Set flag to dump the WN to CGNodeId map during Write_PU_Info
    Write_ALIAS_CGNODE_Map = TRUE;
  }

  ~IPA_NystromAliasAnalyzer() 
  {
    MEM_POOL_Delete(&_memPool);
  }

  void deleteConstraintGraph(IPA_NODE *node)
  {
    // For now just delete the entry from the map
    _ipaConstraintGraphs.erase(node->Node_Index());
  } 

  void buildIPAConstraintGraph(IPA_NODE *ipa_node);
  void print(FILE *file);

  // Perform a global context-[in]sensitive points-to solution
  void solver(void);

private:

  static IPA_NystromAliasAnalyzer *_ipa_naa;
  IPACGMap _ipaConstraintGraphs;
  MEM_POOL _memPool;
};

#endif
