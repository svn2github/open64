#ifndef _IPA_NYSTROM_ALIAS_ANALYZER_INCLUDED
#define _IPA_NYSTROM_ALIAS_ANALYZER_INCLUDED

#include <ext/hash_map>
#include "config_opt.h"
#include "constraint_graph.h"
#include "ipa_cg.h"

using namespace std;
using namespace __gnu_cxx;

class EdgeDelta;

typedef hash_map<NODE_INDEX, ConstraintGraph *> IPACGMap;
typedef IPACGMap::const_iterator IPACGMapIterator;

extern BOOL Write_ALIAS_CGNODE_Map;

class IPANodeSCCInfo {
public:
  IPANodeSCCInfo() : _visited(false), _inSCC(false), _rep(NULL) {}

  bool visited(void) const { return _visited; }
  void visited(bool v)     { _visited = v;    }
  bool inSCC(void)   const { return _inSCC;   }
  void inSCC(bool v)       { _inSCC = v;      }
  IPA_NODE *rep(void)const { return _rep;     }
  void rep(IPA_NODE *n)    { _rep = n;     }

private:
  bool     _visited;
  bool     _inSCC;
  IPA_NODE *_rep;
};

typedef AUX_IPA_NODE<IPANodeSCCInfo> IPANodeSCCAuxInfo;

class IPA_NystromAliasAnalyzer {

public:
  static IPA_NystromAliasAnalyzer *create() 
  {
    if (1/*Alias_Nystrom_Analyzer -OPT processing is not done in ipa_link?*/)
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
    : _ipaNodeSCCAuxInfo(NULL)
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
  void solver(IPA_CALL_GRAPH *);

  ConstraintGraph *cg(NODE_INDEX idx) const
  {
    hash_map<NODE_INDEX,ConstraintGraph*>::const_iterator iter=
        _ipaConstraintGraphs.find(idx);
    if (iter != _ipaConstraintGraphs.end())
      return iter->second;
    else
      return NULL;
  }

  // For IPA call graph SCC detection
  void allocSCCInfo(IPA_CALL_GRAPH *icg)
  {
    if (!_ipaNodeSCCAuxInfo)
      _ipaNodeSCCAuxInfo = CXX_NEW(IPANodeSCCAuxInfo(icg,&_memPool),&_memPool);
  }
  bool visited(const IPA_NODE *n)  { return (*_ipaNodeSCCAuxInfo)[n].visited(); }
  bool inSCC(const IPA_NODE *n)    { return (*_ipaNodeSCCAuxInfo)[n].inSCC(); }
  IPA_NODE *rep(const IPA_NODE *n) { return (*_ipaNodeSCCAuxInfo)[n].rep(); }

  void setVisited(const IPA_NODE *n,bool v) {(*_ipaNodeSCCAuxInfo)[n].visited(v); }
  void setInSCC(const IPA_NODE *n,bool v)   {(*_ipaNodeSCCAuxInfo)[n].inSCC(v); }
  void rep(const IPA_NODE *n, IPA_NODE *r)  {(*_ipaNodeSCCAuxInfo)[n].rep(r); }

private:

  void callGraphPrep(IPA_CALL_GRAPH *ipaCG, list<IPA_EDGE *> &workList,
                     EdgeDelta &delta, list<IPA_NODE *>&revTopOrder,
                     UINT32 round);

  void updateCallGraph(IPA_CALL_GRAPH *ipaCG,
                       list<pair<IPA_NODE *,SUMMARY_CALLSITE *> > &indCallList,
                       EdgeDelta &delta);

  static IPA_NystromAliasAnalyzer *_ipa_naa;
  IPACGMap _ipaConstraintGraphs;
  MEM_POOL _memPool;
  IPANodeSCCAuxInfo * _ipaNodeSCCAuxInfo;
};

#endif
