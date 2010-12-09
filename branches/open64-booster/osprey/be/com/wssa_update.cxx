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
// Module: wssa_update.cxx
//
// Revision history:
//  Dec-6 - Original Version
//
// Description:
//  Implementation for WHIRL SSA UPDATER
//
// Exported classes:
//  WSSA::WSSA_UPDATER
//
// SEE ALSO:
//  be/com/wssa_update.h  (WHIRL_SSA_MANAGER)
//
//====================================================================

#include "wssa_update.h"
#include "wn_util.h"
#include <vector>
#include <stack>

namespace WSSA {

//===================================================================
// Adjust_phi_opnds
//   adjust the phi operands order according to the order 
//   of preds on CFG.
//   they will be inconsistent if they are built separately
//===================================================================
void
WSSA_UPDATER::Adjust_phi_opnds() {
  if (_trace) {
    fprintf(TFile, "%s", DBar);
    fprintf(TFile, "WSSA_UPDATER::Adjust_phi_opnds:\n");
    fprintf(TFile, "%s", DBar);
  }

  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  for (PHI_TABLE::iterator it = _ssa->PHI_table().begin();
       it != _ssa->PHI_table().end();
       ++it) {
    if ((*it)->Opnd_count() == 1)
      continue;
    VER_IDX res = (*it)->Res();
    const WST_Version_Entry& def_ver = _ssa->Get_ver(res);
    WN* def_wn = const_cast<WN*>(def_ver.Get_def_wn());
    // only works for L WHIRL
    Is_True(def_wn != NULL && WN_operator(def_wn) == OPR_LABEL,
            ("invalid def wn for phi"));
    BB_NODE* phi_node = _cfg->Get_stmt_node(def_wn);
    Is_True(phi_node != NULL, ("can not find node for phi"));
    Is_True(phi_node->Get_preds_count() == (*it)->Opnd_count(),
            ("number of phi operands does not equal to number of BB preds"));
    if (_trace) {
      fprintf(TFile, "phi in BB%d: ", phi_node->Get_id());
      (*it)->Print(TFile, 0);
    }   
    std::vector<BB_NODE*> opnd_defs;
    std::vector<VER_IDX> opnd_vers;
    opnd_defs.resize((*it)->Opnd_count());
    opnd_vers.resize((*it)->Opnd_count());
    for (INT i = 0; i < (*it)->Opnd_count(); ++i) {
      VER_IDX opnd = (*it)->Opnd(i);
      const WST_Version_Entry& opnd_ver = _ssa->Get_ver(opnd);
      WN* opnd_def = const_cast<WN*>(opnd_ver.Get_def_wn());
      WSSA_NODE_KIND def_type = opnd_ver.Get_def_type();
      if (opnd_def != NULL) {
        Is_True((def_type == WSSA_OCC && WN_def_ver(opnd_def)) ||
                (def_type == WSSA_PHI && WN_has_phi(opnd_def)) ||
                (def_type == WSSA_CHI && WN_has_chi(opnd_def)),
                ("invalid def wn for opnd"));
        BB_NODE* opnd_node = _cfg->Get_stmt_node(opnd_def);
        opnd_defs[i] = opnd_node;
        opnd_vers[i] = opnd;
        if (_trace) {
          fprintf(TFile, " opnd%d: %sv%d in BB%d\n",
                         i, _ssa->WST_name(opnd_ver.Get_wst()), 
                         opnd_ver.Get_ver(), opnd_node->Get_id());
        }
      }
      else {
        Is_True(def_type == WSSA_UNKNOWN, ("invalid def type"));
        Is_True(opnd_ver.Get_ver() == 0 || opnd_ver.Is_zero(),
                ("Only version 0 do not need a def"));
        opnd_defs[i] = _cfg->Get_dummy_entry(); // assume it's defined in entry
        opnd_vers[i] = opnd;
      }
    }
    int opnd_index = 0;
    for (BB_NODE::const_bb_iterator pred_it = phi_node->Pred_begin();
         pred_it != phi_node->Pred_end();
         ++pred_it) {
      BB_NODE* pred_node = *pred_it;
      while (pred_node != NULL) {
        INT i;
        for (i = 0; i < opnd_defs.size(); ++i) {
          if (opnd_defs[i] == pred_node) {
            (*it)->Set_opnd(opnd_index, opnd_vers[i]);
            break;
          }
        }
        if (i < opnd_defs.size())
          break;
        else
          pred_node = pred_node->Get_idom();
      }
      Is_True(pred_node != NULL, ("can not find def in pred bb"));
      ++opnd_index;
    }
    if (_trace) {
      fprintf(TFile, "after adjust: ");
      (*it)->Print(TFile, 0);
    }
  }
}

//===================================================================
// wn_change_cfg
//   check if OPR changes control flow
// wn_change_ssa
//   check if OPR changes ssa
//===================================================================
BOOL
WSSA_UPDATER::wn_change_cfg(WN* stmt) {
  Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN,
          ("invalid stmt"));
  OPERATOR opr = WN_operator(stmt);
  if (opr == OPR_RETURN ||
      opr == OPR_RETURN_VAL ||
      opr == OPR_GOTO ||
      opr == OPR_TRUEBR ||
      opr == OPR_FALSEBR) {
    return TRUE;
  }
  else {
    return FALSE;
  }
}

BOOL
WSSA_UPDATER::wn_change_ssa(WN* stmt) {
  Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN,
          ("invalid stmt"));
  OPERATOR opr = WN_operator(stmt);
  if (opr == OPR_RETURN ||
      opr == OPR_RETURN_VAL) {
    return FALSE;
  }
  else if (opr == OPR_TRUEBR ||
           opr == OPR_FALSEBR) {
    LABEL_IDX lab_num = WN_label_number(stmt);
    BB_NODE* succ = _cfg->Get_label_node(lab_num);
    Is_True(succ != NULL, ("can not find node for label(%d)", lab_num));
    return succ->Get_preds_count() == 1 ? TRUE : FALSE;
  }
  else if (opr == OPR_GOTO) {
    return TRUE;
  }
  else {
    return TRUE;
  }
}

//===================================================================
// update_def_map
//   update the def map by replacing old_ver with new_ver
// get_last_def
//   return the latest def for given wst_idx
// get_prev_def
//   return the previous def for given wst_idx. this is only for
//   validation
//===================================================================
void
WSSA_UPDATER::update_def_map(WST_DEF_MAP& def, VER_IDX new_ver) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(new_ver != VER_INVALID, ("new ver must be invalid"));
  WST_IDX wst_idx = _ssa->Get_ver_wst(new_ver);
  VER_IDX old_ver = VER_INVALID;
  if (def.find(wst_idx) != def.end()) {
    old_ver = def[wst_idx].second;
  }
  Is_True(old_ver == VER_INVALID || _ssa->Get_ver_wst(old_ver) == wst_idx,
          ("wst idx for old ver and new ver mismatch"));
  def[wst_idx].first = old_ver;
  def[wst_idx].second = new_ver;
}

VER_IDX
WSSA_UPDATER::get_last_def(WST_DEF_MAP& def, WST_IDX wst_idx) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  if (def.find(wst_idx) != def.end()) {
    VER_IDX new_ver = def[wst_idx].second;
    Is_True(new_ver != VER_INVALID && _ssa->Get_ver_wst(new_ver) == wst_idx,
            ("wst idx mismatch"));
    return new_ver;
  }
  else {
    return VER_INVALID;
  }
}

VER_IDX
WSSA_UPDATER::get_prev_def(WST_DEF_MAP& def, WST_IDX wst_idx) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  if (def.find(wst_idx) != def.end()) {
    VER_IDX old_ver = def[wst_idx].first;
    Is_True(old_ver == VER_INVALID || _ssa->Get_ver_wst(old_ver) == wst_idx,
            ("wst idx mismatch"));
    return old_ver;
  }
  else {
    return VER_INVALID;
  }
}

//===================================================================
// ssa_rename_rhs
//   rename the rhs using the version in def_map
// ssa_rename_stmt
//   rename stmt
//   rename the RHS according def_map
//   update def_map by LHS
//===================================================================
void
WSSA_UPDATER::ssa_rename_rhs(WN* rhs, WST_DEF_MAP& def) {
  Is_True(rhs != NULL && OPERATOR_is_expression(WN_operator(rhs)),
          ("TODO: support %s", OPCODE_name(WN_opcode(rhs))));
  if (WN_has_ver(rhs)) {
    WST_IDX idx = WST_INVALID;
    if (_ssa->WN_has_ver(rhs)) {
      idx = _ssa->Get_wn_ver_wst(rhs);
    }
    else {
      idx = _ssa->Create_wst_for_wn(rhs);
      Is_True(def.find(idx) != def.end(), ("Can not find def for new wst"));
    }
    Is_True(idx != WST_INVALID, ("invalid wst idx for rhs"));
    WST_DEF_MAP::iterator it = def.find(idx);
    if (it != def.end()) {
      _ssa->Set_wn_ver(rhs, def[idx].second);
    }
  }
  if (WN_has_mu(rhs)) {
    for (WHIRL_SSA_MANAGER::mu_iterator mit = _ssa->WN_mu_begin(rhs);
         mit != _ssa->WN_mu_end(rhs);
         ++mit) {
      WST_IDX idx = _ssa->Get_ver_wst(mit->Opnd());
      WST_DEF_MAP::iterator it = def.find(idx);
      if (it != def.end()) {
        mit->Set_opnd(def[idx].second);
        break;
      }
    }
  }
  for (int i = 0; i < WN_kid_count(rhs); ++i) {
    ssa_rename_rhs(WN_kid(rhs, i), def);
  }
}

void
WSSA_UPDATER::ssa_rename_stmt(WN* stmt, WST_DEF_MAP& def) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("opr is not statement"));
  switch (opr) {
    case OPR_ISTORE: {
      Is_True(_ssa->WN_has_chi(stmt),
              ("TODO: no chi for %s", OPCODE_name(WN_opcode(stmt))));
#ifdef Is_True_On
      for (WHIRL_SSA_MANAGER::chi_iterator it = _ssa->WN_chi_begin(stmt);
           it != _ssa->WN_chi_end(stmt);
           ++it) {
        VER_IDX chk_res_ver = it->Res();
        WST_IDX chk_wst_idx = _ssa->Get_ver_wst(chk_res_ver);
        FmtAssert(def.find(chk_wst_idx) == def.end(), ("TODO: chi is renamed"));
      }
#endif
      ssa_rename_rhs(WN_kid0(stmt), def);
      ssa_rename_rhs(WN_kid1(stmt), def);
      break;
    }
    case OPR_STID:
    case OPR_STBITS: {
      ssa_rename_rhs(WN_kid0(stmt), def);
      VER_IDX old_ver = VER_INVALID;
      if (_ssa->WN_has_ver(stmt)) {
        old_ver = _ssa->Get_wn_ver(stmt);
      }
#ifdef Is_True_On
      for (WHIRL_SSA_MANAGER::mu_iterator it = _ssa->WN_mu_begin(stmt);
           it != _ssa->WN_mu_end(stmt);
           ++it) {
        VER_IDX chk_res_ver = it->Opnd();
        WST_IDX chk_wst_idx = _ssa->Get_ver_wst(chk_res_ver);
        FmtAssert(def.find(chk_wst_idx) == def.end(), ("TODO: mu is renamed"));
      }
#endif
      _ssa->Enter_stmt(stmt);
      VER_IDX ver_idx = _ssa->Get_wn_ver(stmt);
      WST_IDX wst_idx = _ssa->Get_wn_ver_wst(stmt);
      def[(INT32)wst_idx] = make_pair(old_ver, ver_idx);
      break;
    }
    case OPR_TRUEBR:
    case OPR_FALSEBR:
      ssa_rename_rhs(WN_kid0(stmt), def);
      break;
    case OPR_PRAGMA:
    case OPR_XPRAGMA:
    case OPR_RETURN:
      break;
    default:
      FmtAssert(FALSE, ("TODO: handle %s", OPCODE_name(WN_opcode(stmt))));
  }
}

//===================================================================
// ssa_rename_tree
//   rename WN tree to replace all uses with new_ver
//   old_ver is only used for reference
//   return TRUE if wst is re-defined by the WN tree
//===================================================================
BOOL
WSSA_UPDATER::ssa_rename_tree(WN* wn, VER_IDX old_ver, VER_IDX new_ver) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(wn != NULL && WN_operator(wn) != OPR_BLOCK, ("expr is BLOCK"));
  Is_True(!WSSA::WN_has_phi(wn), ("tree can not have phi"));
  Is_True(new_ver != VER_INVALID, ("new version is invalid"));

  BOOL wst_redefined = FALSE;
  WST_IDX wst_idx = _ssa->Get_ver_wst(new_ver);
  Is_True(old_ver == VER_INVALID ||
          wst_idx == _ssa->Get_ver_wst(old_ver), ("wst mismatch"));

  // rename kids at first
  for (int i = 0; i < WN_kid_count(wn); i++) {
    BOOL redef = ssa_rename_tree(WN_kid(wn, i), old_ver, new_ver);
    if (wst_redefined == FALSE && redef == TRUE)
      wst_redefined = TRUE;
  }
  // rename the mu
  if (_ssa->WN_has_mu(wn)) {
    MU_NODE* mu = _ssa->WN_mu_node(wn, wst_idx);
    if (mu != NULL) {
      VER_IDX mu_ver = mu->Opnd();
      Is_True(old_ver == VER_INVALID ||
              mu->Opnd() == old_ver, ("mu opnd ver mismatch"));
      mu->Set_opnd(new_ver);
    }
  }
  // rename the version
  if (WN_use_ver(wn)) {
    if (_ssa->Get_wn_ver_wst(wn) == wst_idx) {
      Is_True(old_ver == VER_INVALID ||
              _ssa->Get_wn_ver(wn) == old_ver, ("wn ver mismatch"));
      _ssa->Set_wn_ver(wn, new_ver);
    }
  }
  // rename the chi
  if (_ssa->WN_has_chi(wn)) {
    CHI_NODE* chi = _ssa->WN_chi_node(wn, wst_idx);
    if (chi != NULL) {
      Is_True(old_ver == VER_INVALID ||
              chi->Opnd() == old_ver, ("chi opnd ver mismatch"));
      Is_True(chi->Res() != old_ver, ("dup def of old ver"));
      chi->Set_opnd(new_ver);
      if (wst_redefined == FALSE)
        wst_redefined = TRUE;
    }
  }
  // check if there is a def
  if (WN_def_ver(wn)) {
    Is_True(_ssa->Get_wn_ver(wn) != old_ver, ("dup def of old ver"));
    WST_IDX def_wst = _ssa->Get_wn_ver_wst(wn);
    if (wst_redefined == FALSE && def_wst == wst_idx)
      wst_redefined = TRUE;
  }
  return wst_redefined;
}


//===================================================================
// ssa_rename_dom_bb
//   rename in BB and dominated BBs to replace all uses with new_ver
//   old_ver is used only for reference
//===================================================================
void
WSSA_UPDATER::ssa_rename_dom_bb(BB_NODE* bb, VER_IDX old_ver, VER_IDX new_ver) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(bb != NULL, ("cfg bb is null"));
  Is_True(new_ver != VER_INVALID, ("new version is invalid"));

  WST_IDX wst_idx = _ssa->Get_ver_wst(new_ver);
  Is_True(old_ver == VER_INVALID ||
          wst_idx == _ssa->Get_ver_wst(old_ver), ("wst mismatch"));

  for (BB_NODE::stmt_iterator it = bb->Stmt_begin();
       it != bb->Stmt_end();
       ++it) {
    OPERATOR opr = WN_operator(&(*it));
    Is_True(opr != OPR_BLOCK, ("stmt is block"));
    Is_True(OPERATOR_is_stmt(opr), ("wn is not statement"));
    BOOL redef = ssa_rename_tree(&(*it), old_ver, new_ver);
    if (redef == TRUE) {
      // version has been redefined, just return
      return;
    }
  } 
  for (BB_NODE::const_dom_iterator dom_it = bb->Dom_begin();
       dom_it != bb->Dom_end();
       ++dom_it) {
    BB_NODE* dom_bb = _cfg->Get_node(*dom_it);
    Is_True(dom_bb != NULL && bb->Dominate(dom_bb), ("dom bb is wrong"));
    if (dom_bb->Get_idom() == bb) {
      ssa_rename_dom_bb(dom_bb, old_ver, new_ver);
    }
  }
}

//===================================================================
// ssa_rename_cur_bb
//   rename in current BB to replace all uses after 'start' with new_ver
//   old_ver is used only for reference
//===================================================================
BOOL
WSSA_UPDATER::ssa_rename_cur_bb(BB_NODE* bb, WN* start, VER_IDX old_ver, VER_IDX new_ver) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(bb != NULL && start != NULL, ("bb or after is NULL"));
  Is_True(_cfg->Get_stmt_node(start) == bb, ("wn is not in the BB"));
  Is_True(new_ver != VER_INVALID, ("new version is invalid"));

  WST_IDX wst_idx = _ssa->Get_ver_wst(new_ver);
  Is_True(old_ver == VER_INVALID ||
          wst_idx == _ssa->Get_ver_wst(old_ver), ("wst mismatch"));

  BB_NODE::stmt_iterator it = bb->Stmt_begin();
  while (it != bb->Stmt_end() && &(*it) != start) {
    ++it;  // skip statements before start
  }
  while (it != bb->Stmt_end()) {
    BOOL redef = ssa_rename_tree(&(*it), old_ver, new_ver);
    if (redef == TRUE) {
      // version has been redefined, just return
      return TRUE;
    }
    ++it;
  }
  return FALSE;
}

//===================================================================
// ssa_rename_wst
//   rename WST within the scope dominated by bb 
//   to replace all uses of old_ver with new_ver
//===================================================================
void
WSSA_UPDATER::ssa_rename_wst(BB_NODE* bb, WN* start, VER_IDX old_ver, VER_IDX new_ver) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(bb != NULL, ("cfg start bb is null"));
  Is_True(_cfg->Get_stmt_node(start) == bb, ("wn is not in the BB"));
  Is_True(new_ver != VER_INVALID, ("new version is invalid"));

  WST_IDX wst_idx = _ssa->Get_ver_wst(old_ver);
  Is_True(old_ver == VER_INVALID ||
          wst_idx == _ssa->Get_ver_wst(old_ver), ("wst mismatch"));

  BOOL redef = ssa_rename_cur_bb(bb, start, old_ver, new_ver);
  if (redef == TRUE) {
    return;
  }

  // step 1: update all phis on the DF list
  for (BB_NODE::const_bb_iterator it = bb->Df_begin();
       it != bb->Df_end();
       ++it) {
    // only works for L WHIRL
    WN* label = (*it)->First_stmt();
    Is_True(label != NULL && WN_operator(label) == OPR_LABEL,
            ("first statement is not label"));
    PHI_NODE* phi = _ssa->WN_phi_node(label, wst_idx);
    if (phi != NULL) {
      // update the operands of phi if it uses the old version
      for (int i = 0; i < phi->Opnd_count(); ++i) {
        if (phi->Opnd(i) == old_ver) {
          if (_trace) {
            fprintf(TFile, "rename phi(%d->%d) ", old_ver, new_ver);
            phi->Print(TFile, 0);
          }
          phi->Set_opnd(i, new_ver);
        }
      }
    }
  }
  // step 2: update all BBs dominated by bb
  for (BB_NODE::const_dom_iterator dom_it = bb->Dom_begin();
       dom_it != bb->Dom_end();
       ++dom_it) {
    BB_NODE* dom_bb = _cfg->Get_node(*dom_it);
    Is_True(dom_bb != NULL && bb->Dominate(dom_bb), ("dom bb is wrong"));
    if (dom_bb->Get_idom() == bb) {
      ssa_rename_dom_bb(dom_bb, old_ver, new_ver);
    }
  }
}

//===================================================================
// ssa_add_stmt
//   update ssa after stmt is added
// ssa_remove_stmt
//   update ssa after stmt is removed
//===================================================================
void
WSSA_UPDATER::ssa_add_stmt(WN* stmt) {
  Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
  Is_True(stmt != NULL && OPERATOR_is_stmt(WN_operator(stmt)), 
          ("wrong input stmt"));
  Is_True(WN_def_ver(stmt) || _ssa->WN_has_chi(stmt),
          ("input stmt does not contains SSA info"));
  // make sure the stmt has MAP_ID
  WN_MAP_Set_ID(Current_Map_Tab, stmt);

  BB_NODE* node = _cfg->Get_stmt_node(stmt);
  Is_True(node != NULL, ("can not find bb for stmt"));

  // generate new version for the result of stmt
  _ssa->Enter_stmt(stmt);

  // collect new versions defined by stmt
  WST_DEF_MAP new_defs;
  if (_ssa->WN_has_ver(stmt)) {
    VER_IDX ver_idx = _ssa->Get_wn_ver(stmt);
    update_def_map(new_defs, ver_idx); 
  }
  if (_ssa->WN_has_chi(stmt)) {
    for (WHIRL_SSA_MANAGER::chi_iterator cit = _ssa->WN_chi_begin(stmt);
         cit != _ssa->WN_chi_end(stmt);
         ++cit) {
      VER_IDX res_idx = cit->Res();
      update_def_map(new_defs, res_idx);
    }
  }
  if (_ssa->WN_has_phi(stmt)) {
    for (WHIRL_SSA_MANAGER::phi_iterator fit = _ssa->WN_phi_begin(stmt);
         fit != _ssa->WN_phi_end(stmt);
         ++fit) {
      VER_IDX res_idx = fit->Res();
      update_def_map(new_defs, res_idx);
    }
  }

  // update all uses of the wst in the new_defs map
  for (WST_DEF_MAP::iterator it = new_defs.begin();
       it != new_defs.end();
       ++it) {
    ssa_rename_wst(node, stmt, it->second.first, it->second.second);
  }
}

void
WSSA_UPDATER::ssa_remove_stmt(WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("only statement is allowed"));
  if (!wn_change_ssa(stmt)) {
    return;
  }
  _ssa->Remove_stmt(stmt);
}

//===================================================================
// du_add_stmt
//   update du after stmt is added
// du_remove_stmt
//   update du after stmt is removed
//===================================================================
void
WSSA_UPDATER::du_add_stmt(WN* stmt) {
  FmtAssert(FALSE, ("TODO: update DU"));
}

void
WSSA_UPDATER::du_remove_stmt(WN* stmt) {
  FmtAssert(FALSE, ("TODO: update DU"));
}

//===================================================================
// cfg_find_succ
//   return the succ BB for given WN statement
//   stmt must be goto/truebr and falsebr
//===================================================================
WSSA_UPDATER::BB_NODE*
WSSA_UPDATER::cfg_find_succ(WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  BB_NODE* succ = NULL;
  if (opr == OPR_RETURN || OPR_RETURN_VAL) {
    succ = _cfg->Get_dummy_exit();
  }
  else if (opr == OPR_GOTO || opr == OPR_TRUEBR ||
           opr == OPR_FALSEBR) {
    LABEL_IDX lab_num = WN_label_number(stmt);
    succ = _cfg->Get_label_node(lab_num);
    Is_True(succ != NULL, ("can not find node for label(%d)", lab_num));
  }
  return succ;
}

//===================================================================
// cfg_insert_before
//   insert stmt into CFG just before 'before'
//===================================================================
void
WSSA_UPDATER::cfg_insert_before(WN* before, WN* stmt) {
  Is_True(before != NULL && WN_operator(before) != OPERATOR_UNKNOWN, 
          ("insertion point is invalid"));
  Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN, 
          ("stmt is invalid"));
  Is_True(WN_operator(before) != OPR_LABEL,
          ("insert before LABEL"));
  Is_True(!wn_change_cfg(stmt), 
          ("TODO: %s", OPCODE_name(WN_opcode(stmt))));
  Is_True(_cfg->Get_stmt_node(before) != NULL, ("can not find stmt"));

  _cfg->Insert_before(before, stmt);
}

//===================================================================
// cfg_insert_after
//   insert stmt into CFG just after 'after'
//===================================================================
void
WSSA_UPDATER::cfg_insert_after(WN* after, WN* stmt) {
  Is_True(after != NULL && WN_operator(after) != OPERATOR_UNKNOWN, 
          ("insertion point is invalid"));
  Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN, 
          ("stmt is invalid"));
  Is_True(!wn_change_cfg(after), 
          ("insert after branch"));
  Is_True(_cfg->Get_stmt_node(after) != NULL, ("can not find stmt"));

  if (!wn_change_cfg(stmt)) {
    _cfg->Insert_after(after, stmt);
  }
  else {
    BB_NODE* node = _cfg->Get_stmt_node(after);
    BB_NODE* succ = cfg_find_succ(stmt);
    Is_True(succ != NULL, ("can not find succ for stmt"));
    _cfg->Connect_predsucc(node, succ);
  }
}

//===================================================================
// cfg_remove_stmt
//   remove stmt from CFG
//===================================================================
void
WSSA_UPDATER::cfg_remove_stmt(WN* stmt) {
  Is_True(stmt != NULL && WN_operator(stmt) != OPERATOR_UNKNOWN, 
          ("wn is invalid"));
  OPERATOR opr = WN_operator(stmt);
  BB_NODE* node = _cfg->Get_stmt_node(stmt);
  Is_True(_cfg->Get_stmt_node(stmt) != NULL, ("can not find stmt"));
  if (!wn_change_cfg(stmt)) {
    _cfg->Remove_stmt(stmt);
  }
  else {
    BB_NODE* succ = NULL;
    if (opr == OPR_RETURN || opr == OPR_RETURN_VAL) {
      succ = _cfg->Get_dummy_exit();
    }
    else if (opr == OPR_GOTO || opr == OPR_TRUEBR ||
             opr == OPR_FALSEBR) {
      LABEL_IDX lab_num = WN_label_number(stmt);
      succ = _cfg->Get_label_node(lab_num);
      Is_True(succ != NULL, ("can not find node for label(%d)", lab_num));
    }
    else if (opr == OPR_LABEL) {
      BOOL fall_through = FALSE;
      for (BB_NODE::const_bb_iterator it = node->Pred_begin();
           it != node->Pred_end();
           ++it) {
        WN* last_stmt = (*it)->Last_stmt();
        Is_True(last_stmt != NULL, ("last stmt is NULL"));
        OPERATOR last_opr = WN_operator(last_stmt);
        if (last_opr == OPR_GOTO || last_opr == OPR_TRUEBR ||
            last_opr == OPR_FALSEBR) {
          Is_True(WN_label_number(last_stmt) == WN_label_number(stmt),
                  ("label number mismatch"));
          FmtAssert(FALSE, ("can not remove LABEL with goto"));
        }
        if (fall_through == FALSE) {
          fall_through = TRUE;
        }
        else {
          FmtAssert(FALSE, ("node has more than one fall-through"));
        }
      }
      _cfg->Remove_stmt(stmt);
      _cfg->Remove_label(WN_label_number(stmt));
    }
    else {
      FmtAssert(FALSE, ("TODO: support %s", OPCODE_name(WN_opcode(stmt))));
    }
    _cfg->Disconnect_predsucc(node, succ);
  }
}

//===================================================================
// Copy_tree
//   if WHIRL SSA is available, WHIRL_SSA_MANAGER's Copy_tree method
//   will be invoked. Both WHIRL IR and SSA information will be copied
//   otherwise, WN_COPY_Tree will be invoked and only WHIRL IR is
//   copied
//===================================================================
WN*
WSSA_UPDATER::Copy_tree(WN* tree) {
  Is_True(tree != NULL, ("input tree is NULL"));
  WN* copy = WN_COPY_Tree(tree);
  if (_ssa != NULL)
    _ssa->Copy_tree_ssa(copy, tree);
  return copy;
}

//===================================================================
// Copy_tree_with_map
//    similar to Copy_tree. The WHIRL map is also copied
//===================================================================
WN*
WSSA_UPDATER::Copy_tree_with_map(WN* tree) {
  Is_True(tree != NULL, ("input tree is NULL"));
  WN* copy = WN_COPY_Tree_With_Map(tree);
  if (_ssa != NULL)
    _ssa->Copy_tree_ssa(copy, tree);
  return copy;
}

//===================================================================
// Insert_before
//   insert 'stmt' into 'block' before the 'before'
//   both 'stmt' and 'before' should be statement and block should be
//   BLOCK
//   if cfg, ssa and du are available, update them respectively
// Insert_after
//   similar to Insert_before
//   insert 'stmt' into 'block' after the 'before'
//===================================================================
void
WSSA_UPDATER::Insert_before(WN* block, WN* before, WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("only statement is allowed"));
  Is_True(opr != OPR_RETURN && opr != OPR_RETURN_VAL &&
          opr != OPR_GOTO && opr != OPR_TRUEBR && opr != OPR_FALSEBR,
          ("TODO: support me %s", OPCODE_name(WN_opcode(stmt))));
  // update WHIRL
  WN_INSERT_BlockBefore(block, before, stmt);
  // update CFG
  if (_cfg != NULL)
    cfg_insert_before(before, stmt);
  // update SSA
  if (_ssa != NULL) {
    Is_True(_cfg != NULL, ("cfg is NULL"));
    ssa_add_stmt(stmt);
  }
  // update DU
  if (_du != NULL) {
    Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
    du_add_stmt(stmt);
  }
}

void
WSSA_UPDATER::Insert_after(WN* block, WN* after, WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("only statement is allowed"));
  Is_True(opr != OPR_RETURN && opr != OPR_RETURN_VAL &&
          opr != OPR_GOTO && opr != OPR_TRUEBR && opr != OPR_FALSEBR,
          ("TODO: support me %s", OPCODE_name(WN_opcode(stmt))));
  // update WHIRL
  WN_INSERT_BlockAfter(block, after, stmt);
  // update CFG
  if (_cfg != NULL)
    cfg_insert_after(after, stmt);
  // update SSA
  if (_ssa != NULL) {
    Is_True(_cfg != NULL, ("cfg is NULL"));
    ssa_add_stmt(stmt);
  }
  // update DU
  if (_du != NULL) {
    Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
    du_add_stmt(stmt);
  }
}

//===================================================================
// Extract_stmt
//   extract 'stmt' from 'block'
//   the 'stmt' is also removed from CFG, ssa and du info are kept
//   def info are removed
// Extract_list
//   extract stmts between 'first' and 'last' from 'block'
//   these stmts are also removed from CFG, ssa and du info are kept
//   def info are removed
//===================================================================
WN*
WSSA_UPDATER::Extract_stmt(WN* block, WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("only statement is allowed"));
  // update CFG
  if (_cfg != NULL)
    cfg_remove_stmt(stmt);
  if (_ssa != NULL) {
    Is_True(_cfg != NULL, ("cfg is NULL"));
    ssa_remove_stmt(stmt);
  }
  // update WHIRL
  WN* wn = WN_EXTRACT_FromBlock(block, stmt);
  return wn;
}

WN*
WSSA_UPDATER::Extract_list(WN* block, WN* first, WN* last) {
  FmtAssert(FALSE, ("TODO: WSSA_UPDATER::Extract_list"));
  return NULL;
}

//===================================================================
// Delete_stmt
//   delete 'stmt' from 'block'
//   update cfg, ssa and du if they are available
// Delete_list
//   delete stmts between 'first' and 'last' from 'block'
//   update cfg, ssa and du if they are available
//===================================================================
void
WSSA_UPDATER::Delete_stmt(WN* block, WN* stmt) {
  OPERATOR opr = WN_operator(stmt);
  Is_True(OPERATOR_is_stmt(opr), ("only statement is allowed"));
  // update CFG
  if (_cfg != NULL)
    cfg_remove_stmt(stmt);
  // update SSA
  if (_ssa != NULL) {
    Is_True(_cfg != NULL, ("cfg is NULL"));
    ssa_remove_stmt(stmt);
  }
  // update DU
  if (_du != NULL) {
    Is_True(_cfg != NULL && _ssa != NULL, ("cfg or ssa is NULL"));
    du_remove_stmt(stmt);
  }
  // update WHIRL
  WN_DELETE_FromBlock(block, stmt);
}

void
WSSA_UPDATER::Delete_list(WN* block, WN* first, WN* last) {
  FmtAssert(FALSE, ("TODO: WSSA_UPDATER::Delete_list"));
}

//===================================================================
// Rename_BB
//   rename the versions inside the BB
//   keep the versions of live out the same
//===================================================================
void
WSSA_UPDATER::Rename_BB(BB_NODE* bb) {
  Is_True(bb != NULL, ("bb is NULL"));
  Is_True(_cfg != NULL && _ssa != NULL, ("ssa or cfg is NULL"));
  WST_DEF_MAP last_def;
  // step 1: rename all statement in current bb
  for (BB_NODE::stmt_iterator it = bb->Stmt_begin();
       it != bb->Stmt_end();
       ++it) {
    ssa_rename_stmt(&(*it), last_def);
  }
  // step 2: rename the live out versions in all successors
  for (WST_DEF_MAP::iterator it = last_def.begin();
       it != last_def.end();
       ++it) {
    ssa_rename_wst(bb, bb->Last_stmt(), it->second.first, it->second.second);
  }
}

} /* namespace WSSA */

