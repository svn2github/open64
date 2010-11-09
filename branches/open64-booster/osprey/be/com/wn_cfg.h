#ifndef wn_cfg_INCLUDED
#define wn_cfg_INCLUDED

#include "cfg_base.h"
#include "wn.h"
#include "region_util.h"
#include <ext/hash_map>
#include <vector>
using __gnu_cxx::hash_map;
using std::vector;

namespace CFG_UTIL {

//===================================================================
// class WN_STMT_ITERATOR
//  iterator to traverse the statements in the stmt container
//  template parameters:
//    _Tcontainer: type of stmt container
//    _Tnode: type of the node
//===================================================================
template<typename _Tcontainer, typename _Tnode>
class WN_STMT_ITERATOR {

public:
  typedef _Tnode* _Tnodeptr;
  typedef _Tnode& _Tnoderef;

private:
  _Tnodeptr _cur_stmt;
  _Tcontainer* _container;

public:
  WN_STMT_ITERATOR()
    : _cur_stmt(NULL), _container(NULL) { }
  WN_STMT_ITERATOR(_Tnodeptr cur, _Tcontainer* container)
    : _cur_stmt(cur), _container(container) { }
  WN_STMT_ITERATOR(const WN_STMT_ITERATOR<_Tcontainer, _Tnode>& rhs)
    : _cur_stmt(rhs._cur_stmt), _container(rhs._container) { }

public:
  _Tnodeptr operator->() {
    Is_True(_cur_stmt != NULL, ("current stmt is NULL"));
    return _cur_stmt;
  }
  _Tnoderef operator*() {
    Is_True(_cur_stmt != NULL, ("current stmt is NULL"));
    return *_cur_stmt;
  }

  WN_STMT_ITERATOR<_Tcontainer, _Tnode>& operator++() {
    Is_True(_cur_stmt != NULL, ("current stmt is NULL"));
    _cur_stmt = _container->Next_stmt(_cur_stmt);
    return *this;
  }

  WN_STMT_ITERATOR<_Tcontainer, _Tnode>& operator--() {
    Is_True(_cur_stmt != NULL, ("current stmt is NULL"));
    _cur_stmt = _container->Prev_stmt(_cur_stmt);
    return *this;
  }

  bool operator==(const WN_STMT_ITERATOR<_Tcontainer, _Tnode>& rit) {
    return (_cur_stmt == rit._cur_stmt) &&
           (_container == rit._container);
  }
  bool operator!=(const WN_STMT_ITERATOR<_Tcontainer, _Tnode>& rit) {
    return !(operator==(rit));
  }
  WN_STMT_ITERATOR<_Tcontainer, _Tnode>& operator=(const WN_STMT_ITERATOR<_Tcontainer, _Tnode>& rit) {
    _cur_stmt = rit._cur_stmt;
    _container = rit._container;
  }
};


//===================================================================
// class WN_STMT_CONTAINER
//  container to maintain the WN within the bb node
//===================================================================
class WN_STMT_CONTAINER {

public:
  typedef WN* STMT;
  typedef WN_STMT_ITERATOR<WN_STMT_CONTAINER, WN> iterator;
  typedef WN_STMT_ITERATOR<const WN_STMT_CONTAINER, const WN> const_iterator;

private:
  WN* _first_stmt;
  WN* _last_stmt;
  WN* _extra_stmt;  // Only used for DO_LOOP(increment), DO_WHILE(condition)

public:
  WN_STMT_CONTAINER()
    : _first_stmt(NULL), _last_stmt(NULL), _extra_stmt(NULL) { }

public:
  // statement methods
  void Add_stmt(WN* stmt);
  WN* First_stmt() const;
  WN* Next_stmt(WN* stmt) const;
  WN* Prev_stmt(WN* stmt) const;
  WN* Last_stmt() const;
  BOOL Is_empty() const;

  // iterators to traverse the statements
  iterator begin() { return iterator(First_stmt(), this); }
  iterator end()   { return iterator(NULL, this);        }
  const_iterator begin() const { return const_iterator(First_stmt(), this); }
  const_iterator end() const   { return const_iterator(NULL, this);        }
  iterator rbegin() { return iterator(Last_stmt(), this); }
  iterator rend()   { return iterator(NULL, this);        }
  const_iterator rbegin() const { return const_iterator(Last_stmt(), this); }
  const_iterator rend() const   { return const_iterator(NULL, this);        }

public:
  // print and VCG dump methods
  void Print(FILE* fp, INT32 dump_flag) const;
  VCGNode* VCG_dump(MEM_POOL* mpool, VCGGraph& vcg, INT32 dump_flag) const;
};


//===================================================================
// class WN_STMT_MAPPER
//  mapper to maintain the mapping between WN and bb node
//===================================================================
class WN_STMT_MAPPER {

public:
  typedef WN* STMT;
  typedef BB_NODE_BASE<WN_STMT_CONTAINER> BB_NODE;

private:
  typedef hash_map<INTPTR, BB_NODE*> STMT_MAP;
  STMT_MAP _stmt_map;

public:
  void Connect_stmt_node(STMT stmt, BB_NODE* node);
  void Disconnect_stmt_node(STMT stmt, BB_NODE* node);
  void Disconnect_all_stmt_in_node(BB_NODE* node);
  BB_NODE* Get_stmt_node(STMT stmt) const;
};


//===================================================================
// class WN_CFG
//   class for WHIRL CFG
//   derived from CFG_BASE using WN_STMT_CONTAINER as stmt container,
//     WN_STMT_MAPPER as stmt mapper and BASIC_NODE_CONTAINER as
//     node container
//   the WN hierarchy is also maintained
//===================================================================
class WN_CFG : public CFG_BASE <WN_STMT_CONTAINER,
                           WN_STMT_MAPPER,
                           BASIC_NODE_CONTAINER<BB_NODE_BASE<WN_STMT_CONTAINER> > > {

public:
  typedef CFG_BASE<WN_STMT_CONTAINER, WN_STMT_MAPPER, 
              BASIC_NODE_CONTAINER<BB_NODE_BASE<WN_STMT_CONTAINER> > > CFG;
  typedef hash_map<INTPTR, WN*> PARENT_MAP;
  typedef hash_map<INT32, BB_NODE*> LABEL_MAP;

private:
  REGION_LEVEL _rgn_level;  // current region level
  WN* _root;
  PARENT_MAP _parent_map;
  LABEL_MAP  _label_map;

private:
  friend class WN_CFG_BUILDER;
  // only accessable for WN_CFG_BUILDER
  void Set_parent(WN* parent, WN* kid);
  void Set_label(INT32 label_num, BB_NODE* node);

public:
  WN_CFG(MEM_POOL* mpool)
    : CFG(mpool), _rgn_level(RL_UNKNOWN), _root(NULL) { }

public:
  void Set_rgn_level(REGION_LEVEL level) { _rgn_level = level; }
  REGION_LEVEL Get_rgn_level() const     { return _rgn_level;  }

  void Set_wn_root(WN* root) { _root = root; }
  WN* Get_wn_root() const    { return _root; }

  // return the parent of kid
  WN* Get_parent(WN* kid) const;
  // return the statement ancester
  // wn must be an expression
  WN* Get_parent_stmt(WN* wn) const;
  // return the BLOCK ancester
  WN* Get_parent_block(WN* wn) const;
  // return the SCF ancester if there is one
  WN* Get_parent_scf(WN* wn) const;
  // return the REGION ancester if there is one
  WN* Get_parent_region(WN* wn) const;
  // return the bb node contains the wn
  // wn can not be BLOCK or FUNC_REGION
  BB_NODE* Get_wn_node(WN* wn) const;

  // get BB_NODE from the label number
  BB_NODE* Get_label_node(INT32 label_num) const;

  // get the branch WN for BB has more than one successors
  WN* Get_branch_stmt(BB_NODE* node) const;
};

//===================================================================
// class WN_CFG_BUILDER
//   Build CFG and hierarchy map for WHIRL tree
//   interface:
//     void Build_CFG();
//===================================================================
class WN_CFG_BUILDER {

private:
  typedef WN_CFG::BB_NODE BB_NODE;
  typedef hash_map<INT32, BB_NODE*> LABEL_MAP;
  typedef hash_map<INT32, vector<BB_NODE*> > GOTO_MAP;

public:
  LABEL_MAP  _label_map;  // map form label_num to WN* for LABEL
  GOTO_MAP   _goto_map;   // map from label_num to WN* for GOTO
  BB_NODE* _current_bb;
  WN* _root;
  WN_CFG& _cfg;

public:
  WN_CFG_BUILDER(WN_CFG& cfg, WN* root) 
    : _current_bb(NULL), _root(root), _cfg(cfg) { }

public:
  void Build_CFG();

private:
  // build WHIRL hierarchy map
  void Build_parent_map_stmt(WN_CFG& cfg, WN* wn);
  void Build_parent_map_block(WN_CFG& cfg, WN* wn);
  // Connect labels with gotos
  void Connect_agotos();
  void Connect_goto_to_label(WN_CFG& cfg, BB_NODE* bb, WN* wn);

private:
  // handle different kinds of WHIRL node
  void Add_entry(WN_CFG& cfg, WN* wn);
  void Add_altentry(WN_CFG& cfg, WN* wn);
  void Add_if(WN_CFG& cfg, WN* wn);
  void Add_do_loop(WN_CFG& cfg, WN* wn);
  void Add_do_while(WN_CFG& cfg, WN* wn);
  void Add_while_do(WN_CFG& cfg, WN* wn);
  void Add_compgoto(WN_CFG& cfg, WN* wn);
  void Add_switch(WN_CFG& cfg, WN* wn);
  void Add_label(WN_CFG& cfg, WN* wn);
  void Add_goto(WN_CFG& cfg, WN* wn);
  void Add_xgoto(WN_CFG& cfg, WN* wn);
  void Add_agoto(WN_CFG& cfg, WN* wn);
  void Add_condgoto(WN_CFG& cfg, WN* wn);
  void Add_block(WN_CFG& cfg, WN* wn);
  void Add_region(WN_CFG& cfg, WN* wn);
  void Add_region_exit(WN_CFG& cfg, WN* wn);
  void Add_stmt(WN_CFG& cfg, BB_NODE* bb, WN* wn);
};

} /* namespace CFG_UTIL */

#ifdef Is_True_On
void Test_CFG(WN* wn);
#endif

#endif /* wn_cfg_INCLUDED */

