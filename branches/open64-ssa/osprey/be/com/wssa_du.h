#ifndef WSSA_DU_INCLUDED
#define WSSA_DU_INCLUDED

#include <stdio.h>
#include <vector>
#include <list>
#include <iterator>
#include <ext/hash_map>
using __gnu_cxx::hash_map;

#include "wssa_defs.h"
#include "wssa_core.h"

namespace WSSA {

class WHIRL_SSA_MANAGER;    // forward decl of WHIRL_SSA_MANAGER
class WSSA_DU_MANAGER;      // forward decl of WSSA_DU_MANAGER

enum DEF_KIND {
  DEF_BY_NONE = 0,
  DEF_BY_WN,
  DEF_BY_PHI,
  DEF_BY_CHI,
  DEF_BY_ANY, /* def by WN, PHI or CHI */
};

enum USE_KIND {
  USE_BY_NONE = 0,
  USE_BY_WN,
  USE_BY_PHI,
  USE_BY_MU,
  USE_BY_ANY, /* use by WN, PHI or MU */
};

template<class _KT>
extern const char* Get_node_desc(_KT type);

template <typename _KT>
class DU_GENERIC_NODE {
public:
  typedef _KT KIND_TYPE;

private:
  /* properties */
  KIND_TYPE   _node_kind;
  WN*         _wn;

public:
  DU_GENERIC_NODE(KIND_TYPE kt, WN* wn)
    : _node_kind(kt), _wn(wn) {
  }
  DU_GENERIC_NODE()
    : _wn(NULL) {
  }

  /* methods */
  KIND_TYPE Node_kind() const      { return _node_kind; }
  void Set_node_kind(KIND_TYPE kt) { _node_kind = kt;   }
  WN* Get_WN() const               { return _wn; }
  void Set_WN(WN* def)             { _wn = def;  }

public:
  /* dump methods */  
  void Print(FILE* fp, int indent) const {
    Put_indent(fp, indent);
    fprintf(fp, "%s %p\n", Get_node_desc(_node_kind), _wn);
  }
  void Print(FILE* fp = stdout) const { 
    Print(fp, 0);      
  }
  void Verify() const {
    // TODO
  }
};

template <typename _NT>
class DU_GENERIC_LIST {
public:
  typedef _NT NODE_TYPE;
  typedef std::vector<NODE_TYPE> LIST_TYPE;
  typedef typename LIST_TYPE::const_iterator const_iterator;

private:
  WSSA_ST_IDX _st_idx;
  VER_NUM     _st_ver;
  LIST_TYPE   _list;

public:
  DU_GENERIC_LIST(WSSA_ST_IDX st_idx, VER_NUM ver)
    : _st_idx(st_idx), _st_ver(ver) {
  }

  DU_GENERIC_LIST() : _st_idx(INVALID_IDX), _st_ver(INVALID_VER) {
  }

  WSSA_ST_IDX WST_idx() const       { return _st_idx; }
  void Set_WST_idx(WSSA_ST_IDX idx) { _st_idx = idx;  }

  VER_NUM WST_ver() const           { return _st_ver; }
  void Set_WST_ver(VER_NUM ver)     { _st_ver = ver;  }

  /* insertion */
  void push_back(const NODE_TYPE& item) {
    _list.push_back(item);
  }

  /* iterator */
  const_iterator begin() const {
    return _list.begin();
  }
  const_iterator end() const {
    return _list.end();
  }

public:
  /* dump methods */  
  void Print(FILE* fp, int indent) const {
    Put_indent(fp, indent);
    fprintf(fp, "[%d]%sv%d\n", _st_idx, Get_WST_name(_st_idx), _st_ver);
    for(const_iterator it = begin(); it != end(); it++)
      it->Print( fp, indent+1 );
  }
  void Print(FILE* fp = stdout) const  { 
    Print(fp, 0);      
  }
  void Verify() const {
    // TODO
  }
};


template<typename _KT>
class DU_TYPE_TRAITS {
public:
  typedef _KT NODE_KIND;
  typedef DU_GENERIC_NODE<NODE_KIND> NODE_TYPE;
  typedef DU_GENERIC_LIST<NODE_TYPE> LIST_TYPE;
  typedef std::vector<LIST_TYPE>     TABLE_TYPE;
  typedef INT32                      INDEX_TYPE;  /* index to TABLE_TYPE */
  typedef hash_map<WST_UNIQ_IDX, INDEX_TYPE, WST_UNIQ_HASHER> MAP_TYPE;
};

typedef DU_TYPE_TRAITS<DEF_KIND>   DEF_TYPE_TRAITS;
typedef DU_TYPE_TRAITS<USE_KIND>   USE_TYPE_TRAITS;
typedef DEF_TYPE_TRAITS::LIST_TYPE DEF_LIST;
typedef USE_TYPE_TRAITS::LIST_TYPE USE_LIST;

class WSSA_DU_MANAGER {
private:
  /* du/ud tables */
  DEF_TYPE_TRAITS::TABLE_TYPE _def_table;
  USE_TYPE_TRAITS::TABLE_TYPE _use_table;

  /* du/ud maps */
  DEF_TYPE_TRAITS::MAP_TYPE   _def_map;
  DEF_TYPE_TRAITS::MAP_TYPE   _use_map;

  /* SSA manager */
  const WHIRL_SSA_MANAGER*    _wssa_mgr;

  /* Outer-most WN */
  WN* _root;

protected:
  template<typename NODE_KIND>
  typename DU_TYPE_TRAITS<NODE_KIND>::TABLE_TYPE& Get_table(NODE_KIND kt);

  template<typename NODE_KIND>
  const typename DU_TYPE_TRAITS<NODE_KIND>::TABLE_TYPE& Get_table(NODE_KIND kt) const;

  template<typename NODE_KIND>
  typename DU_TYPE_TRAITS<NODE_KIND>::MAP_TYPE& Get_map(NODE_KIND kt);

  template<typename NODE_KIND>
  const typename DU_TYPE_TRAITS<NODE_KIND>::MAP_TYPE& Get_map(NODE_KIND kt) const;

  template<typename NODE_KIND>
  typename DU_TYPE_TRAITS<NODE_KIND>::INDEX_TYPE
  Get_list_idx(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND kt) const;

  template<typename NODE_KIND>
  const typename DU_TYPE_TRAITS<NODE_KIND>::LIST_TYPE&
  Get_list(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND kt) const;

  template<typename NODE_KIND>
  void Add_node(WSSA_ST_IDX st_idx, VER_NUM ver, NODE_KIND dt, WN* wn);

protected:
  void Build(BOOL ud, BOOL du, WN* wn);
  void Clean(BOOL ud, BOOL du);

public:
  WSSA_DU_MANAGER(WHIRL_SSA_MANAGER* mgr);
  WSSA_DU_MANAGER(WN* tree);

  const WHIRL_SSA_MANAGER* SSA_Manager() const;

  /* build du/ud */
  void Build(BOOL ud, BOOL du);
  void Build(WN* wn, BOOL ud, BOOL du);

  /* get direct def node/use list of given symble/version */
  const DEF_LIST& Get_def(WSSA_ST_IDX st_idx, VER_NUM ver) const;
  const DEF_LIST& Get_def(const WN* wn) const;
  const USE_LIST& Get_use(WSSA_ST_IDX st_idx, VER_NUM ver) const;
  const USE_LIST& Get_use(const WN* wn) const;

  /* dump methods */
  void Print(FILE* fp = stdout) const;
  void Verify() const;
};

}; /* namespace WSSA */


#endif  /* WSSA_DU_INCLUDED */
