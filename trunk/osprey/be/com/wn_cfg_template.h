/*

  Copyright (C) 2010, Hewlett-Packard Development Company, L.P. All Rights Reserved.

  Open64 is free software; you can redistribute it and/or
  modify it under the terms of the GNU General Public License
  as published by the Free Software Foundation; either version 2
  of the License, or (at your option) any later version.

  Open64 is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program; if not, write to the Free Software
  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
  MA  02110-1301, USA.

*/

//====================================================================
//
// Module: wn_cfg_template.h
//
// Revision history:
//  Jan-16-2011 - Original Version
//
// Description:
//  Template method for traversal of WN_TREE to build PARENTMAP 
//  or CFG
//
// Exported classes:
//  CFG_UTIL::WN_CFG
//
// SEE ALSO:
//  be/com/wn_cfg.h   (WN_CFG)
//  be/com/cfg_base.h (BB_NODE_BASE, CFG_BASE)
//
//====================================================================

#ifndef wn_cfg_template_INCLUDED
#define wn_cfg_template_INCLUDED

#include "cfg_base.h"
#include "wn.h"
#include "region_util.h"
#include <ext/hash_map>
#include <ext/hash_set>
#include <vector>
using __gnu_cxx::hash_map;
using __gnu_cxx::hash_set;
using std::vector;

namespace CFG_UTIL {

//===================================================================
// class PARENTMAP_BUILDER
//  class to build the parent map
//===================================================================
template<typename _Tcfg>
class PARENTIZE_ACTION {
private:
  _Tcfg& _cfg;

public:
  PARENTIZE_ACTION(_Tcfg& cfg) : _cfg(cfg) {
  }

public:
  void Process(WN* parent, WN* kid) {
    _cfg.Set_parent(parent, kid);
  }
};

//===================================================================
// class PARENTMAP_VERIFIER
//  class to verfy the parent map
//===================================================================
template<typename _Tcfg>
class PARENTIZE_VERIFIER {
private:
  _Tcfg& _cfg;

public:
  PARENTIZE_VERIFIER(_Tcfg& cfg) : _cfg(cfg) {
  }

public:
  void Process(WN* parent, WN* kid) const {
    Is_True(_cfg.Get_parent(kid) == parent, 
            ("PARENTIZE_VERIFIER: parent mismatch"));
  }
};

//===================================================================
// class WN_TREE_TRAVERSE
//  template class to traverse the WN TREE
//===================================================================
template<typename _Ttraverser>
class WN_TREE_TRAVERSE {
private:
  _Ttraverser& _traverser;

public:
  WN_TREE_TRAVERSE(_Ttraverser& traverser) : _traverser(traverser) {
  }

public:
  void Traverse(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) != OPERATOR_UNKNOWN,
            ("invalid WHIRL node"));

    if (WN_operator(wn) == OPR_BLOCK) {
      for (WN* item = WN_first(wn); item != NULL; item = WN_next(item)) {
        _traverser.Process(wn, item);
        Traverse(item);
      }
    }
    else {
      for (INT i = 0; i < WN_kid_count(wn); ++i) {
        _traverser.Process(wn, WN_kid(wn, i));
        Traverse(WN_kid(wn, i));
      }
    }
  }
};

//===================================================================
// class WN_CFG_ACTION_BASE
//  base class to build or verify the WHIRL CFG
//===================================================================
template<typename _Tcfg>
class WN_CFG_ACTION_BASE {
public:
  typedef typename _Tcfg::BB_NODE BB_NODE;

protected:
  _Tcfg& _cfg;

public:
  WN_CFG_ACTION_BASE(_Tcfg& cfg) : _cfg(cfg) {
  }

public:
  REGION_LEVEL Get_rgn_level() {
    return _cfg.Get_rgn_level();
  }
 
  BB_NODE* Get_dummy_entry() {
    return _cfg.Get_dummy_entry();
  }

  BB_NODE* Get_dummy_exit() {
    return _cfg.Get_dummy_exit();
  }
};

//===================================================================
// class WN_CFG_BUILD_ACTION
//  class to build the WHIRL CFG
//===================================================================
template<typename _Tcfg>
class WN_CFG_BUILD_ACTION : public WN_CFG_ACTION_BASE<_Tcfg> {
public:
  typedef typename _Tcfg::BB_NODE BB_NODE;
  typedef WN_CFG_ACTION_BASE<_Tcfg> ACTION_BASE;

private:
  typedef hash_map<INT32, vector<BB_NODE*> > GOTO_MAP;
  typedef hash_map<INT32, BB_NODE*> LABEL_MAP;
  GOTO_MAP   _goto_map;   // map from label_num to WN* for GOTO
  LABEL_MAP  _label_map; 

public:
  WN_CFG_BUILD_ACTION(_Tcfg& cfg) : WN_CFG_ACTION_BASE<_Tcfg> (cfg) {
  }

public:
  void Process_root(WN* root) {
    ACTION_BASE::_cfg.Set_wn_root(root);
  }

  void Process_rgn_level(REGION_LEVEL level) {
    ACTION_BASE::_cfg.Set_rgn_level(level);
  }

  void Process_stmt(BB_NODE* node, WN* stmt) {
    Is_True(node != NULL, ("invalid WCFG node"));
    Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN,
            ("invalid WHIRL"));
    node->Add_stmt(stmt);
    ACTION_BASE::_cfg.Connect_stmt_node(stmt, node);
  }

  void Process_predsucc(BB_NODE* pred, BB_NODE* succ) {
    Is_True(pred != NULL && succ != NULL,
            ("invalid pred or succ node"));
    ACTION_BASE::_cfg.Connect_predsucc(pred, succ);
  }

  void Process_entry_node(BB_NODE* entry) {
    Is_True(entry != NULL, ("invalid node"));
    ACTION_BASE::_cfg.Add_entry_node(entry);
  }

  void Process_exit_node(BB_NODE* exit) {
    Is_True(exit != NULL, ("invalid node"));
    ACTION_BASE::_cfg.Add_exit_node(exit);
  }

  void Process_goto(BB_NODE* node, WN* stmt) {
    Is_True(stmt != NULL &&
            (WN_operator(stmt) == OPR_GOTO ||
             WN_operator(stmt) == OPR_CASEGOTO ||
             WN_operator(stmt) == OPR_TRUEBR ||
             WN_operator(stmt) == OPR_FALSEBR ||
             WN_operator(stmt) == OPR_REGION_EXIT),
            ("WN is not goto or casegoto"));
    Is_True(node != NULL, ("node is NULL"));
  
    typename LABEL_MAP::iterator lit = _label_map.find(WN_label_number(stmt));
    if (lit != _label_map.end()) {
      ACTION_BASE::_cfg.Connect_predsucc(node, lit->second);
    }
    else {
      vector<BB_NODE*>& gotos = _goto_map[WN_label_number(stmt)];
      gotos.push_back(node);
    }
  }

  void Process_label(BB_NODE* node, WN* stmt) {
    Is_True(node != NULL, ("node is NULL"));
    Is_True(stmt != NULL && WN_operator(stmt) == OPR_LABEL,
            ("stmt is not LABEL"));

    FmtAssert(_label_map.find(WN_label_number(stmt)) == _label_map.end(),
              ("found duplicated labels"));
    _label_map[WN_label_number(stmt)] = node;
    ACTION_BASE::_cfg.Set_label(WN_label_number(stmt), node);

    typename GOTO_MAP::iterator vit = _goto_map.find(WN_label_number(stmt));
    if (vit != _goto_map.end()) {
      vector<BB_NODE*>& gotos = vit->second;
      for (typename vector<BB_NODE*>::iterator nit = gotos.begin();
           nit != gotos.end();
           ++nit) {
        ACTION_BASE::_cfg.Connect_predsucc(*nit, node);
      }
      _goto_map.erase(vit);
    }
  }

  BB_NODE* Create_node(WN* stmt) {
    return ACTION_BASE::_cfg.Create_node();
  }
};

//===================================================================
// class WN_CFG_VERIFY_ACTION
//  class to verify the WHIRL CFG
//===================================================================
template<typename _Tcfg>
class WN_CFG_VERIFY_ACTION : public  WN_CFG_ACTION_BASE<_Tcfg> {
public:
  typedef typename _Tcfg::BB_NODE BB_NODE;

private:
  _Tcfg& _cfg;

public:
  WN_CFG_VERIFY_ACTION(_Tcfg& cfg) : WN_CFG_ACTION_BASE<_Tcfg> (cfg) {
  }

public:
  void Process_root(WN* root) {
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_rgn_level(REGION_LEVEL level) {
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_stmt(BB_NODE* node, WN* stmt) {
    Is_True(node != NULL, ("invalid WCFG node"));
    Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN,
            ("invalid WHIRL node"));
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_predsucc(BB_NODE* pred, BB_NODE* succ) {
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_entry_node(BB_NODE* entry) {
    Is_True(entry != NULL, ("invalid entry node"));
    Is_True(entry->Get_preds_count() == 1,
            ("entry should only have 1 predecessor"));
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_exit_node(BB_NODE* exit) {
    Is_True(exit != NULL, ("invalid node"));
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_goto(BB_NODE* node, WN* stmt) {
    FmtAssert(FALSE, ("TODO"));
  }

  void Process_label(BB_NODE* node, WN* stmt) {
    FmtAssert(FALSE, ("TODO"));
  }

  BB_NODE* Create_node(WN* wn) {
    FmtAssert(FALSE, ("TODO"));
  }
};

//===================================================================
// class WN_CFG_TRAVERSE
//  helper class to traverse the WHIRL to build/verify CFG
//===================================================================
template<typename _Taction>
class WN_CFG_TRAVERSE {
public:
  typedef typename _Taction::BB_NODE BB_NODE;

private:
  _Taction& _action;
  BB_NODE* _current_bb; 

public:
  WN_CFG_TRAVERSE(_Taction& action)
    : _action(action), _current_bb(NULL) {
  }

  void Traverse(WN* tree) {
    Is_True(tree != NULL, ("tree is NULL"));
    if (WN_operator(tree) == OPR_REGION) {
      FmtAssert(FALSE, ("TODO: build CFG for region"));
    }
    Is_True(WN_operator(tree) == OPR_FUNC_ENTRY, ("tree is not FUNC_ENTRY"));

    _action.Process_root(tree);
    RID *rid = REGION_get_rid(tree);
    _action.Process_rgn_level((REGION_LEVEL)(RID_level(rid) + 1));

    Is_True(_current_bb == NULL, ("invalud current node"));
    Process_entry(tree);
  }

public:
  //===================================================================
  // Process_entry: handle FUNC_ENTRY
  //   FUNC_ENTRY --> ignore
  //     [kid0..n-3] IDNAME --> ignore
  //     [kidn-3] PRAGMA --> ignore
  //     [kidn-2] PRAGMA --> ignore
  //     [kidn-1] BODY --> BB0
  //===================================================================
  void Process_entry(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_FUNC_ENTRY,
            ("WN is not FUNC_ENTRY"));
    Is_True(_current_bb == NULL,
            ("current BB is not NULL"));
    WN* func_body = WN_func_body(wn);
    Is_True(func_body != NULL && WN_operator(func_body) == OPR_BLOCK,
            ("invalid BLOCK of function body"));
    _current_bb = _action.Create_node(WN_first(func_body));
    _action.Process_entry_node(_current_bb);
    Process_stmt(_action.Get_dummy_entry(), wn);
    Process_block(func_body);
  }

  //===================================================================
  // Process_altentry: handle ALTENTRY
  //   STMT0 --> BB0 (must be GOTO/RETURN)
  //   ALTENTRY --> BB1 (BB1 don't have other preds than dummy_entry
  //     [kid0..n-1] IDNAME --> ignore
  //===================================================================
  void Process_altentry(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_ALTENTRY,
            ("WN is not ALTENTRY"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
    Is_True(_current_bb->Get_preds_count() == 0, ("Current BB has predecessors"));

    _current_bb = _action.Create_node(wn);
    _action.Process_entry_node(_current_bb);
    Process_stmt(_current_bb, wn);
  }

  //===================================================================
  // Process_if: handle IF
  //   STMT0 --> BB0
  //   OPR_IF --> BB0
  //     [kid0] COND --> BB0
  //     [kid1] THEN --> BB1
  //     [kid2] ELSE --> BB2
  //   STMT1 --> BB3
  //===================================================================
  void Process_if(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_IF,
            ("WN is not IF"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));

    // put OPR_IF into BB0
    BB_NODE* if_bb = _current_bb;
    Process_stmt(if_bb, wn);

    // put THEN block into BB1
    WN* then_block = WN_then(wn);
    Is_True(then_block != NULL && WN_operator(then_block) == OPR_BLOCK,
            ("invalid BLOCK of IF then"));
    BB_NODE* then_bb = _action.Create_node(WN_first(then_block));
    _action.Process_predsucc(if_bb, then_bb);
    Process_block(then_block);

    // put ELSE block into BB2
    WN* else_block = WN_else(wn);
    Is_True(else_block != NULL && WN_operator(else_block) == OPR_BLOCK,
            ("invalid BLOCK of IF else"));
    BB_NODE* else_bb = _action.Create_node(WN_first(else_block));
    _action.Process_predsucc(if_bb, else_bb);
    Process_block(else_block);

    // connect THEN/ELSE block with BB3
    _current_bb = _action.Create_node(WN_next(wn));
    if (then_bb != NULL)
      _action.Process_predsucc(then_bb, _current_bb);
    if (else_bb != NULL)
      _action.Process_predsucc(else_bb, _current_bb);
  }

  //===================================================================
  // Process_do_loop: handle DO_LOOP
  //   STMT0 --> BB0
  //   OPR_DO_LOOP --> BB0 <include INIT>
  //     [kid0] IDNAME --> ignore
  //     [kid1] INIT --> BB0
  //     [kid2] COMP --> BB1
  //     [kid3] INCR --> BB2* (put into _extra field)
  //     [kid4] BODY --> BB2
  //     [kid5] LOOP_INFO --> ignore
  //   STMT1 --> BB3
  //===================================================================
  void Process_do_loop(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_DO_LOOP, 
            ("WN is not DO_LOOP"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put INIT into BB0
    BB_NODE* init_bb = _current_bb;
    Process_stmt(init_bb, wn);
  
    // put COMP into BB1
    BB_NODE* cmp_bb = _action.Create_node(WN_end(wn));
    _action.Process_predsucc(init_bb, cmp_bb);
    Process_stmt(cmp_bb, WN_end(wn));
  
    // put BODY/INCR into BB2
    WN* body_block = WN_do_body(wn);
    Is_True(body_block != NULL && WN_operator(body_block) == OPR_BLOCK,
            ("invalid BLOCK for DO_LOOP body"));
    BB_NODE* body_bb = _action.Create_node(WN_first(body_block));
    _action.Process_predsucc(cmp_bb, body_bb);
    _current_bb = body_bb;
    Process_block(body_block);
    Process_stmt(_current_bb, WN_step(wn));
    _action.Process_predsucc(_current_bb, cmp_bb);
  
    // connect with BB3
    _current_bb = _action.Create_node(WN_next(wn));
    _action.Process_predsucc(cmp_bb, _current_bb);
  }

  //===================================================================
  // Process_do_while: handle DO_WHILE
  //   STMT0 --> BB0
  //   DO_WHILE
  //     [kid0] COMP --> BB1* (put into _extra field)
  //     [kid1] BODY --> BB1
  //   STMT1 --> BB2
  //===================================================================
  void Process_do_while(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_DO_WHILE, 
            ("WN is not DO_WHILE"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    WN* body_block = WN_while_body(wn);
    Is_True(body_block != NULL && WN_operator(body_block) == OPR_BLOCK,
            ("invalid BLOCK for DO_WHILE body"));
    // put BODY into BB1
    if (!_current_bb->Is_empty()) {
      // create new BB if current BB isn't empty
      BB_NODE* last_bb = _current_bb;
      _current_bb = _action.Create_node(WN_first(body_block));
      _action.Process_predsucc(last_bb, _current_bb);
    }
    BB_NODE* body_entry = _current_bb;
    Process_block(body_block);
    BB_NODE* body_exit = _current_bb;
  
    if (_current_bb == NULL) {
      // there is a GOTO at the end of body
      _current_bb = _action.Create_node(wn);
    }
    else if (_current_bb->Get_succs_count() > 0) {
      // can not put the COMP to BB1 in this case
      _current_bb = _action.Create_node(wn);
      _action.Process_predsucc(body_exit, _current_bb);
    }
    Process_stmt(_current_bb, wn);
    _action.Process_predsucc(_current_bb, body_entry);
  
    // connect BB2 and BB3
    if (WN_next(wn) != NULL) {
      BB_NODE* cmp_bb = _current_bb;
      _current_bb = _action.Create_node(WN_next(wn));
      _action.Process_predsucc(cmp_bb, _current_bb);
    }
  }

  //===================================================================
  // Process_while_do: handle WHILE_DO
  //   STMT0 --> BB0
  //   WHILE_DO --> BB1
  //     [kid0] COMP --> BB1
  //     [kid1] BODY --> BB2
  //   STMT1 --> BB3
  //===================================================================
  void Process_while_do(WN* wn) {
  Is_True(wn != NULL && WN_operator(wn) == OPR_WHILE_DO, 
          ("WN is not WHILE_DO"));
  Is_True(_current_bb != NULL, ("Current BB is NULL"));

  // put COMP into BB1
  if (!_current_bb->Is_empty()) {
    // create new BB if current BB isn't empty
    BB_NODE* last_bb = _current_bb;
    _current_bb = _action.Create_node(wn);
    _action.Process_predsucc(last_bb, _current_bb);
  }
  BB_NODE* cmp_bb = _current_bb;
  Process_stmt(cmp_bb, wn);

  // put BODY into BB2
  WN* body_block = WN_while_body(wn);
  Is_True(body_block != NULL && WN_operator(body_block) == OPR_BLOCK,
          ("invalid BLOCK for WHILE_DO body"));
  _current_bb = _action.Create_node(WN_first(body_block));
  _action.Process_predsucc(cmp_bb, _current_bb);
  Process_block(body_block);
  if (_current_bb != NULL) {
    // there is a goto at the end of body
    _action.Process_predsucc(_current_bb, cmp_bb);
  }

  // connect BB1 and BB3
  _current_bb = _action.Create_node(WN_next(wn));
  _action.Process_predsucc(cmp_bb, _current_bb);
}

  //===================================================================
  // Process_compgoto: handle COMP_GOTO
  //   STMT0 --> BB0
  //   COMPGOTO --> BB0
  //     [kid0] LDID --> BB0
  //     [kid1] JUMPs --> BB0
  //     [kid2] GOTO --> BB0
  //   STMT1 --> BB1
  //===================================================================
  void Process_compgoto(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_COMPGOTO, 
            ("Wn is not COMPGOTO"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put all kids into BB0
    Process_stmt(_current_bb, wn);
    WN* goto_wn = WN_first(WN_switch_table(wn));
    hash_set<INT32> label_set;
    while (goto_wn != NULL) {
      if (label_set.find(WN_label_number(goto_wn)) == label_set.end()) {
        label_set.insert(WN_label_number(goto_wn));
        _action.Process_goto(_current_bb, goto_wn);
      }
      goto_wn = WN_next(goto_wn);
    }
    goto_wn = WN_switch_default(wn);
    if (goto_wn != NULL &&
        label_set.find(WN_label_number(goto_wn)) == label_set.end())
      _action.Process_goto(_current_bb, goto_wn);
  
    // create BB1
    if (WN_next(wn) != NULL)
      _current_bb = _action.Create_node(WN_next(wn));
    else
      _current_bb = NULL;    // no fall-through for compgoto
  }

  //===================================================================
  // Process_switch: handle SWITCH
  //   STMT0 --> BB0
  //   SWITCH --> BB0
  //     [kid0] LDID --> BB0
  //     [kid1] CASEGOTOs --> BB0
  //     [kid2] GOTO --> BB0
  //   STMT1 --> BB1
  //===================================================================
  void Process_switch(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_SWITCH, 
            ("Wn is not SWITCH"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put all kids into BB0
    Process_stmt(_current_bb, wn);
    WN* casegoto_wn = WN_first(WN_switch_table(wn));
    hash_set<INT32> label_set;
    while (casegoto_wn != NULL) {
      if (label_set.find(WN_label_number(casegoto_wn)) == label_set.end()) {
        label_set.insert(WN_label_number(casegoto_wn));
        _action.Process_goto(_current_bb, casegoto_wn);
      }
      casegoto_wn = WN_next(casegoto_wn);
    }
    casegoto_wn = WN_switch_default(wn);
    if (casegoto_wn != NULL &&
        label_set.find(WN_label_number(casegoto_wn)) == label_set.end())
      _action.Process_goto(_current_bb, WN_switch_default(wn));
  
    // create BB1
    if (WN_next(wn) != NULL)
      _current_bb = _action.Create_node(WN_next(wn));
    else
      _current_bb = NULL;    // no fall-through for switch
  }
  
  //===================================================================
  // Process_label: handle LABEL
  //   STMT0 --> BB0
  //   LABEL --> BB1
  //   STMT1 --> BB1
  //===================================================================
  void Process_label(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_LABEL, 
            ("WN is not LABEL"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    BB_NODE* last_bb = _current_bb;
    if (! last_bb->Is_empty()) {
      // create new bb if current BB isn't empty
      _current_bb = _action.Create_node(wn);
    }
  
    Process_stmt(_current_bb, wn);
    _action.Process_label(_current_bb, wn);
  
    // connect last_bb with current_bb
    if (WN_Label_Is_Handler_Begin(wn) ||
        LABEL_target_of_goto_outer_block(WN_label_number(wn))) {
      _action.Process_predsucc(_action.Get_dummy_entry(), _current_bb);
    }
    if (last_bb != _current_bb)
      _action.Process_predsucc(last_bb, _current_bb);
  }
  
  //===================================================================
  // Process_goto: handle GOTO
  //   STMT0 --> BB0
  //   GOTO  --> BB0
  //   STMT1 --> BB1
  //===================================================================
  void Process_goto(WN* wn) {
    Is_True(WN_operator(wn) == OPR_GOTO, ("WN is not goto"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put GOTO into BB0
    Process_stmt(_current_bb, wn);
    _action.Process_goto(_current_bb, wn);
  
    // create BB1
    if (WN_next(wn) != NULL)
      _current_bb = _action.Create_node(WN_next(wn));
    else
      _current_bb = NULL;    // no fall-through for goto
  }
  
  //===================================================================
  // Process_goto: handle XGOTO
  //===================================================================
  void Process_xgoto(WN* wn) {
    FmtAssert(FALSE, ("TODO: handle XGOTO"));
  }

  //===================================================================
  // Process_goto: handle AGOTO
  //===================================================================
  void Process_agoto(WN* wn) {
    FmtAssert(FALSE, ("TODO: handle AGOTO"));
  }

  //===================================================================
  // Process_condgoto: handle conditional goto, TRUEBR, FALSEBR
  //   STMT0 --> BB0
  //   CONDGOTO  --> BB0
  //   STMT1 --> BB1
  //===================================================================
  void Process_condgoto(WN* wn) {
    Is_True(wn != NULL &&
            (WN_operator(wn) == OPR_TRUEBR || WN_operator(wn) == OPR_FALSEBR),
            ("WN is not TRUEBR or FALSEBR"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put CONDGOTO into BB0
    BB_NODE* condgoto_bb = _current_bb;
    Process_stmt(condgoto_bb, wn);
    _action.Process_goto(condgoto_bb, wn);
  
    // create and connect BB1
    _current_bb = _action.Create_node(WN_next(wn));
    _action.Process_predsucc(condgoto_bb, _current_bb);
  }
  
  //===================================================================
  // Process_block: handle the BLOCK
  //   traverse the block and take actions for different WHIRL node
  //   STMT1 --> handle stmt1 based on stmt1's operator
  //   STMT2 --> handle stmt2 based on stmt2's operator
  //   STMT3 --> handle stmt3 based on stmt3's operator
  //===================================================================
  void Process_block(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_BLOCK, 
            ("wn is not BLOCK"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    for (WN* stmt = WN_first(wn); stmt != NULL; stmt = WN_next(stmt)) {
      OPERATOR opr = WN_operator(stmt);
      switch (opr) {
      case OPR_IF:
        Process_if(stmt); break;
      case OPR_DO_LOOP:
        Process_do_loop(stmt); break;
      case OPR_DO_WHILE:
        Process_do_while(stmt); break;
      case OPR_WHILE_DO:
        Process_while_do(stmt); break;
      case OPR_COMPGOTO:
        Process_compgoto(stmt); break;
      case OPR_SWITCH:
        Process_switch(stmt); break;
      case OPR_ALTENTRY:
        Process_altentry(stmt); break;
      case OPR_LABEL:
        Process_label(stmt); break;
      case OPR_GOTO:
        Process_goto(stmt); break;
      case OPR_XGOTO:
        Process_xgoto(stmt); break;
      case OPR_AGOTO:
        Process_agoto(stmt); break;
      case OPR_TRUEBR:
      case OPR_FALSEBR:
        Process_condgoto(stmt); break;
      case OPR_PRAGMA:
      case OPR_XPRAGMA:
        Process_stmt(_current_bb, stmt); break;
      case OPR_INTRINSIC_CALL:
        Process_intrinsic_call(stmt); break;
      case OPR_REGION:
        Process_region(stmt); break;
      case OPR_REGION_EXIT:
        Process_region_exit(stmt); break;
      case OPR_BLOCK:
        Process_block(stmt); break;
      default:
        if (OPERATOR_is_stmt(opr)) {
          Process_stmt(_current_bb, stmt);
        }
        else {
          FmtAssert(FALSE, ("TODO: handle me: %s", OPCODE_name(WN_opcode(stmt))));
        }
      }
    }
  }
  
  //===================================================================
  // Process_region: handle REGION
  //   STMT0 --> BB0
  //   REGION --> BB1
  //     [kid0] REGION_EXITS --> ignore when it's not black box
  //                             otherwise, connect exits with labels
  //     [kid1] PRAGMAs --> ignore
  //     [kid2] BODY --> BB1
  //   STMT1 --> BB2
  //===================================================================
  void Process_region(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_REGION, 
            ("wn is not REGION"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    RID *rid = REGION_get_rid(wn);
    if (rid != NULL && RID_level(rid) >= _action.Get_rgn_level()) {
      FmtAssert(FALSE, ("TODO: handle black-box REGION"));
    }
 
    WN* region_body = WN_region_body(wn);
    Is_True(region_body != NULL && WN_operator(region_body) == OPR_BLOCK,
            ("invalid BLOCK for REGION body")); 
    if (!_current_bb->Is_empty()) {
      // Force new block if current BB isn't empty
      BB_NODE* last_bb = _current_bb;
      _current_bb = _action.Create_node(WN_first(region_body));
      _action.Process_predsucc(last_bb, _current_bb);
    }
    Process_block(region_body);
    BB_NODE* rgn_body = _current_bb;
  
    // create BB2
    if (WN_next(wn) != NULL) {
      _current_bb = _action.Create_node(WN_next(wn));
      if (rgn_body != NULL) {
        _action.Process_predsucc(rgn_body, _current_bb);
      }
    }
  }
  
  //===================================================================
  // Process_region_exit: handle REGION_EXIT
  // STMT0 --> BB0
  // REGION_EXIT  --> BB0
  // STMT1 --> BB1
  //===================================================================
  void Process_region_exit(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_REGION_EXIT, 
            ("WN is not region_exit"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // put GOTO into BB0
    Process_stmt(_current_bb, wn);
    _action.Process_goto(_current_bb, wn);
  
    // create BB1
    if (WN_next(wn) != NULL)
      _current_bb = _action.Create_node(WN_next(wn));
    else
      _current_bb = NULL;    // no fall-through for region_exit
  }
  
  //===================================================================
  // Process_intrinsic_call: handle INTRINSIC_CALL
  // INTRINSIC_CALL --> BB0
  //   if call never returns, end current bb and connect to exit
  //===================================================================
  void Process_intrinsic_call(WN* wn) {
    Is_True(wn != NULL && WN_operator(wn) == OPR_INTRINSIC_CALL,
            ("WN is not call"));
    Is_True(_current_bb != NULL, ("Current BB is NULL"));
  
    // add call to current bb
    Process_stmt(_current_bb, wn);
    if (WN_Call_Never_Return(wn)) {
      _action.Process_predsucc(_current_bb, _action.Get_dummy_exit());
      // create BB1
      if (WN_next(wn) != NULL)
        _current_bb = _action.Create_node(WN_next(wn));
      else
        _current_bb = NULL;    // no fall-through for the intrinsic
    }
  }
  
  //===================================================================
  // Process_stmt
  //   Add stmt to bb
  //===================================================================
  void Process_stmt(BB_NODE* bb, WN* stmt) {
    Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN, 
            ("wn is NULL"));
  
    OPERATOR opr = WN_operator(stmt);
    if (opr == OPR_FUNC_ENTRY) {
      Is_True(bb == _action.Get_dummy_entry(), 
              ("FUNC_ENTRY can only be in dummy entry"));
    }
    if (opr == OPR_ALTENTRY) {
      Is_True(bb->Get_preds_count() == 1 &&
              *(bb->Pred_begin()) == _action.Get_dummy_entry(), 
              ("ALTENTRY can only have the dummy entry as it pred."));
    }
  
    _action.Process_stmt(bb, stmt);
  
    if (opr == OPR_RETURN || opr == OPR_RETURN_VAL) {
      _action.Process_exit_node(bb);
      // RETURN will end current bb
      if (WN_next(stmt) != NULL)
        _current_bb = _action.Create_node(WN_next(stmt));
      else
        _current_bb = NULL;    // no fall-through for return
    }
  }

};

} /* namespace CFG_UTIL */

#endif /* wn_cfg_template_INCLUDED */

