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
// Module: wssa_emitter.cxx
//
// Revision history:
//  Nov-10 - Original Version
//
// Description:
//  Emit WHIRL SSA from HSSA
//
// SEE ALSO:
//  be/opt/wssa_emitter.h
//
//====================================================================

#include "wssa_emitter.h"
#include "opt_base.h"
#include "opt_htable.h"
#include "opt_mu_chi.h"
#include "wssa_wn.h"
#include "timing.h"

WHIRL_SSA_EMITTER::WHIRL_SSA_EMITTER(WSSA::WHIRL_SSA_MANAGER* wssa_mgr,
         OPT_STAB* opt_stab, WN_MAP map)
  : _wssa_mgr(wssa_mgr), _wn_cr_map(map), _opt_stab(opt_stab),
    _wssa_wn(NULL), _trace(FALSE), _trace_time(FALSE), _vsym_idx(1) {
  // Set _wssa_mgr internal status
  _wssa_mgr->Set_stat(WSSA::STAT_EMIT);
  // clear all original data in wssa_mgr
  _wssa_mgr->Clear();
}

WHIRL_SSA_EMITTER::~WHIRL_SSA_EMITTER() {
  // emitter finished, set the wssa_mgr state to OK
  _wssa_mgr->Set_stat(WSSA::STAT_OK);
}

INT32
WHIRL_SSA_EMITTER::Alloca_Idx(hash_map<INT32, INT32> &st_field_idx_map, INT32 wn_st_idx) {
  hash_map<INT32, INT32>::const_iterator it = st_field_idx_map.find(wn_st_idx);
  INT new_idx;
  if (it == st_field_idx_map.end()) {
    new_idx = 0;
  }
  else {
    new_idx = it->second + 1;
  }
  st_field_idx_map[wn_st_idx] = new_idx;
}

WSSA::WSSA_VSYM_TYPE
WHIRL_SSA_EMITTER::Vsym_type_from_aux(OPT_VAR_TYPE vt) {
  switch (vt) {
  case VT_LDA_SCALAR:
    return WSSA::WVT_LDA_SCALAR;
  case VT_LDA_VSYM:
    return WSSA::WVT_LDA_VSYM;
  case VT_UNIQUE_VSYM:
    return WSSA::WVT_UNIQUE_VSYM;
  case VT_SPECIAL_VSYM:
    return WSSA::WVT_SPECIAL_VSYM;
  default:
    FmtAssert(FALSE, ("bad vt"));
    return WSSA::WVT_UNKNOWN;
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::Get_cr_ver
//   look up the _cr_to_ver to get the version of the CODEREP
//   if no entry found, VER_INVALID will be returned
//
// WHIRL_SSA_EMITTER::New_def_ver
//   create new version for def CODEREP
//
// WHIRL_SSA_EMITTER::New_use_ver
//   create new version for use CODEREP
//
// WHIRL_SSA_EMITTER::Update_def_ver
//   update the existing version which is inputed by New_use_ver
//===================================================================
WSSA::VER_IDX
WHIRL_SSA_EMITTER::Get_cr_ver(CODEREP* cr) const {
  hash_map<INTPTR, WSSA::VER_IDX>::const_iterator it = _cr_to_ver.find((INTPTR)cr);
  if (it == _cr_to_ver.end())
    return WSSA::VER_INVALID;
  else
    return it->second;
}

WSSA::VER_IDX
WHIRL_SSA_EMITTER::New_def_ver(CODEREP* cr, WN* def_wn, WSSA::WSSA_NODE_KIND def_kind) {
  Is_True(Get_cr_ver(cr) == WSSA::VER_INVALID, ("cr already has a wst_ver"));

  WSSA::WST_IDX wst_idx = _opt_stab->Aux_stab_entry(cr->Aux_id())->Get_wst_idx();
  WSSA::WST_Version_Entry ver_info(wst_idx, cr->Version(), def_wn, def_kind);
  if (WOPT_Enable_Zero_Version && cr->Is_flag_set(CF_IS_ZERO_VERSION))
    ver_info.Set_zero();
  if (WSSA::WN_is_volatile(def_wn))
    ver_info.Set_volatile();
  WSSA::VER_IDX ver_idx = _wssa_mgr->New_ver(ver_info);
  _cr_to_ver[(INTPTR)cr] = ver_idx;
  return ver_idx;
}

WSSA::VER_IDX
WHIRL_SSA_EMITTER::New_use_ver(CODEREP* cr, WN* use_wn) {
  Is_True(Get_cr_ver(cr) == WSSA::VER_INVALID, ("cr already has a wst_ver"));

  WSSA::WST_IDX wst_idx = _opt_stab->Aux_stab_entry(cr->Aux_id())->Get_wst_idx();
  WSSA::WST_Version_Entry ver_info(wst_idx, cr->Version(), NULL, WSSA::WSSA_UNKNOWN);
  if (WOPT_Enable_Zero_Version && cr->Is_flag_set(CF_IS_ZERO_VERSION))
    ver_info.Set_zero();
  if (WSSA::WN_is_volatile(use_wn))
    ver_info.Set_volatile();
  WSSA::VER_IDX ver_idx = _wssa_mgr->New_ver(ver_info);
  _cr_to_ver[(INTPTR)cr] = ver_idx;
  return ver_idx;
}

void
WHIRL_SSA_EMITTER::Update_def_ver(WSSA::VER_IDX idx, WN* def_wn, WSSA::WSSA_NODE_KIND def_type) {
  _wssa_mgr->Update_ver(idx, def_wn, def_type);
}

//===================================================================
// Is_cr_def_live 
//   Check if the CR's def is live
//===================================================================
BOOL
WHIRL_SSA_EMITTER::Is_cr_def_live(const CODEREP* cr) const {
  Is_True(cr != NULL, ("invalid coderep"));
  if (cr->Kind() == CK_VAR) {
    if (cr->Is_flag_set(CF_DEF_BY_PHI)) {
      PHI_NODE* def_phi = cr->Defphi();
      if (def_phi != NULL && def_phi->Live())
        return TRUE;
    }
    else if (cr->Is_flag_set(CF_DEF_BY_CHI)) {
      CHI_NODE* def_chi = cr->Defchi();
      if (def_chi != NULL && def_chi->Live())
        return TRUE;
    }
    else {
      STMTREP* def_stmt = cr->Defstmt();
      if (def_stmt != NULL && def_stmt->Live_stmt())
        return TRUE;
    }
    return FALSE;
  }
  else {
    return TRUE;
  }
}

//===================================================================
// WSSA_Convert_OPT_Symbol
// 	convert opt_stable symbol into WSSA_ST symbol, including vsym
// 	record opt_symbol's max version in each WSSA_ST
//  
//  There may be multiple WSSA_ST share same WN ST, when WN ST has
//  multiple coressponding opt_stable symbol.
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Convert_OPT_Symbol() {
  if (_trace) {
    fprintf(TFile, "Converting opt symbol table into WSSA symbol table\n");
  }
  if (_trace_time) {
    Start_Timer(T_WSSA_EMIT_CU);
  }
  hash_map<INT32, INT32> st_field_idx_map;  
  
  mUINT32 aux_id;
  AUX_STAB_ITER aux_stab_iter(_opt_stab);
  FOR_ALL_NODE (aux_id, aux_stab_iter, Init()) {
    AUX_STAB_ENTRY *aux = _opt_stab->Aux_stab_entry(aux_id);
    // generate a WSSA_Symbol_Entry for each aux stab entry
    // mark wssa_st index in aux stab entry
    // 1. determin WSSA_SYM_TYPE for aux stab entry
    //    WST_WHIRL,           others
    //    WST_PREG,            PREG
    //    WST_FIELD,           for aux stab entry,
    //                         whose size is smaller than its base st
    //    WST_VIRTUAL,         for virtual aux stab

    WSSA::WST_IDX wst_idx;
    if (aux->Is_virtual()) {
      WSSA::WSSA_VSYM_TYPE vsym_type = Vsym_type_from_aux(aux->Stype());
      WSSA::WST_Vsym_Info vsym_info(vsym_type);
      ST* base_st = NULL; 
      switch (aux->Stype()) {
        case VT_LDA_SCALAR:
        case VT_LDA_VSYM: {
          vsym_info.Set_name_idx(Save_Str2("v_", ST_name(aux->Base())));
          base_st = aux->Base();
          break;
        }
        case VT_UNIQUE_VSYM:
        case VT_SPECIAL_VSYM: {
          if (aux_id == _opt_stab->Default_vsym()) {
            vsym_info.Set_name_idx(Save_Str("_v_def_"));
          } 
          else if (aux_id == _opt_stab->Return_vsym()) {
            vsym_info.Set_name_idx(Save_Str("_v_ret_"));
          }
          else {
            // get the name from point_to's AUX ID.
            // _vsym_(_vsym_idx)_(point to AUX_ID)_
            char name[20];
            sprintf(name, "_v_%d_", _vsym_idx);
            if (aux->Aux_id_list() != NULL &&
                ! aux->Aux_id_list()->Is_Empty()) {
              mUINT32 point_scalar_id = aux->Aux_id_list()->Head()->Aux_id();
              AUX_STAB_ENTRY *point_aux = 
                    _opt_stab->Aux_stab_entry(point_scalar_id);
              vsym_info.Set_name_idx(Save_Str2(name, ST_name(point_aux->St())));
            }
            else {
              vsym_info.Set_name_idx(Save_Str2(name, "any"));
            }
    	  }
          break;
        }
      }
      wst_idx = _wssa_mgr->New_wst(base_st, vsym_info);
      ++_vsym_idx;
    }
    else {
      ST* wn_st = aux->St();
      INT32 wn_st_idx = ST_st_idx(wn_st);
      UINT8 bit_size = aux->Bit_size();
      UINT8 bit_ofset = aux->Bit_ofst();
      mINT64 byte_size = aux->Byte_size();
      mINT64 st_ofst = aux->St_ofst();
      UINT field_id = aux->Field_id();
      if (ST_class(wn_st) == CLASS_PREG) {
        // PREG
        wst_idx = _wssa_mgr->New_wst(wn_st_idx, st_ofst);
      }
      else {
        // all opt stab entry mapped to a field type now.
        INT32 seq_idx = Alloca_Idx(st_field_idx_map, wn_st_idx);
        WSSA::WST_Field_Info field_info(wn_st_idx, field_id,
            byte_size, st_ofst, bit_size, bit_ofset, seq_idx);
        wst_idx = _wssa_mgr->New_wst(wn_st, field_info);
      }
    }
    if (aux_id == _opt_stab->Default_vsym()) {
      _wssa_mgr->Set_default_vsym(wst_idx);
    }
    else if (aux_id == _opt_stab->Return_vsym()) {
      _wssa_mgr->Set_return_vsym(wst_idx);
    }
    aux->Set_wst_idx(wst_idx);
    _wssa_mgr->Set_max_ver(wst_idx, aux->Version());
    if (_trace) {
      fprintf(TFile, "Opt Stable[%d] is converted into WSSA Stable[%d]\n",
        aux_id, wst_idx);
      _opt_stab->Print_aux_entry(aux_id, TFile);
      _wssa_mgr->Print_wst(wst_idx, TFile);
    }
  }
  if (_trace_time) {
    Stop_Timer(T_WSSA_EMIT_CU);
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Expr
//   recursivly copy mu/version onto WN node expression
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Expr(WN* wn) {
  CODEREP* cr = (CODEREP*)WN_MAP_Get( _wn_cr_map, wn );

  if (cr && WN_has_ver(wn)) {
    Is_True(!WSSA::WN_def_ver(wn) && WSSA::WN_use_ver(wn), ("expr can only use ver"));
    WSSA::VER_IDX ver_idx = Get_cr_ver(cr);
    if (ver_idx == WSSA::VER_INVALID) {
      ver_idx = New_use_ver(cr, wn);
    }
    _wssa_mgr->Set_wn_ver(wn, ver_idx);
    if (_trace) {
      fprintf(TFile, "record WST version\n");
      fdump_tree(TFile, wn);
      _wssa_mgr->Print_ver(ver_idx, TFile);
    }
  }

  if (cr && (cr->Kind() == CK_IVAR) && (cr->Ivar_mu_node() != NULL)) {
    MU_NODE *mnode = cr->Ivar_mu_node();
    WSSA_Copy_MU_Node(mnode, wn);
  }

  for (INT kidno=0; kidno<WN_kid_count(wn); ++kidno) {
    WN* kid = WN_kid(wn,kidno);
    WSSA_Build_MU_CHI_Version_Expr(kid);
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Stmt
//   recursivly copy mu/version onto WN node statment
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Stmt(WN* wn) {
  STMTREP *sr = (STMTREP *)WN_MAP_Get( _wn_cr_map, wn );
  if (sr && WN_has_ver(wn)) {
    if (sr->Lhs()) {
      Is_True(WSSA::WN_def_ver(wn) && !WSSA::WN_use_ver(wn), ("lhs of stmt can only def ver"));
      WSSA::VER_IDX ver_idx = Get_cr_ver(sr->Lhs());
      if (ver_idx == WSSA::VER_INVALID) {
        ver_idx = New_def_ver(sr->Lhs(), wn, WSSA::WSSA_OCC);
      }
      else {
        Update_def_ver(ver_idx, wn, WSSA::WSSA_OCC);
      }
      _wssa_mgr->Set_wn_ver(wn, ver_idx);
      if (_trace) {
        fprintf(TFile, "record WST version\n");
        fdump_tree(TFile, wn);
        _wssa_mgr->Print_ver(ver_idx, TFile);
      }
    }
    else {
      OPERATOR stmt_opr = sr->Opr();
      Is_True(stmt_opr == OPR_EVAL, ("unexpected opr\n"));
    }
  }

  if (sr && sr->Has_mu()) {
    MU_NODE *mnode;
    MU_LIST_ITER mu_iter;
    FOR_ALL_NODE (mnode, mu_iter, Init(sr->Mu_list())) {
      WSSA_Copy_MU_Node(mnode, wn);
    }
  }

  if (sr && sr->Has_chi()) {
    CHI_NODE *cnode;
    CHI_LIST_ITER chi_iter;
    if (_trace) {
      fprintf(TFile, "copy ssa chi into wn\n");
      fdump_wn(TFile, wn);
    }
    FOR_ALL_NODE (cnode, chi_iter, Init(sr->Chi_list())) {
      WSSA_Copy_CHI_Node(cnode, wn);
    }
  }

  if (WN_opcode(wn) == OPC_BLOCK) {
     WN* kid = WN_first (wn);
     while (kid) {
       WSSA_Build_MU_CHI_Version(kid);
       kid = WN_next(kid);
     }
  }
  else {
    for (INT kidno=0; kidno<WN_kid_count(wn); ++kidno) {
      WN* kid = WN_kid(wn,kidno);
      WSSA_Build_MU_CHI_Version(kid);
    }
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version
//   copy mu/version onto WN node
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version(WN* wn) {
  if (_trace_time) {
    Start_Timer(T_WSSA_EMIT_CU);
  }

  if (OPCODE_is_expression(WN_opcode(wn))) {
    WSSA_Build_MU_CHI_Version_Expr(wn);
  }
  else {
    WSSA_Build_MU_CHI_Version_Stmt(wn);
  }

  if (_trace_time) {
    Stop_Timer(T_WSSA_EMIT_CU);
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Copy_CHI_Node
//   copy chi node from HSSA to WSSA
//   generate or update versions
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Copy_CHI_Node(CHI_NODE* chi_node, WN* wn) {
  if (_trace) {
    chi_node->Print_Deref(TFile);
  }
  if (! chi_node->Live()) {
    if (_trace)
      fprintf(TFile, "skip copy for non-live chi node\n");
    return;
  }

  WSSA::CHI_NODE* wssa_chi = _wssa_mgr->Create_chi();
  WSSA::VER_IDX opnd_idx = Get_cr_ver(chi_node->OPND());
  if (opnd_idx == WSSA::VER_INVALID) {
    opnd_idx = New_use_ver(chi_node->OPND(), wn);
  }
  
  wssa_chi->Set_opnd(opnd_idx);
  WSSA::VER_IDX res_idx = Get_cr_ver(chi_node->RESULT());
  if (res_idx == WSSA::VER_INVALID) {
    res_idx = New_def_ver(chi_node->RESULT(), wn, WSSA::WSSA_CHI);
  }
  else {
    Update_def_ver(res_idx, wn, WSSA::WSSA_CHI);
  }

  if (res_idx == opnd_idx) {
    if (_trace)
      fprintf(TFile, "skip copy for result and opnd same chi node\n");
    return;
  }

  wssa_chi->Set_res(res_idx);
  _wssa_mgr->Add_chi(wn, wssa_chi);
  
  if (_trace) {
    wssa_chi->Print(TFile, 0);
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Copy_MU_Node
//   copy mu node from HSSA to WSSA
//   generate or update versions
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Copy_MU_Node(MU_NODE* mu_node, WN* wn) {
  if (_trace) {
    fprintf(TFile, "copy ssa mu into wn \n");
    fdump_wn(TFile, wn);
    mu_node->Print_Deref(TFile);
  }
  
  if (! mu_node->Is_Valid()) {
    if (_trace)
      fprintf(TFile, "skip copy for invalid mu node\n");
    return;
  }

  WSSA::MU_NODE* wssa_mu = _wssa_mgr->Create_mu();
  WSSA::VER_IDX opnd_idx = Get_cr_ver(mu_node->OPND());
  if (opnd_idx == WSSA::VER_INVALID) {
    opnd_idx = New_use_ver(mu_node->OPND(), wn);
  }
  wssa_mu->Set_opnd(opnd_idx);
  _wssa_mgr->Add_mu(wn, wssa_mu);

  if (_trace) {
    wssa_mu->Print(TFile, 0);
    fprintf(TFile, "\n");
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Copy_PHI_Node
//   copy phi node from HSSA to WSSA
//   generate or update the version in WSSA
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Copy_PHI_Node(PHI_NODE* phi_node, WN* wn) {
  if (_trace) {
    phi_node->Print(TFile);
  }
  
  if (! phi_node->Live()) {
    if (_trace)
      fprintf(TFile, "skip convert for non-live phi node\n");
    return;
  }

  Is_True(phi_node->Size() >= 1, ("phi node does not have operand"));
  BOOL opnd_cr_live = FALSE;
  for (INT32 i = 0; i < phi_node->Size(); ++i) {
    // find the first one opnd who is not result and version is not 0
    if (phi_node->OPND(i) != phi_node->RESULT() &&
        phi_node->OPND(i)->Version() != 0) {
      opnd_cr_live = Is_cr_def_live(phi_node->OPND(i));
      break;
    }
  }
#ifdef Is_True_On
  for (INT32 i = 0; i < phi_node->Size(); ++i) {
    CODEREP* opnd_cr = phi_node->OPND(i);
    FmtAssert(phi_node->OPND(i) == phi_node->RESULT() ||
              phi_node->OPND(i)->Version() == 0 ||
              Is_cr_def_live(opnd_cr) == opnd_cr_live,
              ("not all operands of phi are dead or live"));
  }
#endif

  if (opnd_cr_live == FALSE) {
    CODEREP* res_cr = phi_node->RESULT();
    Is_True(res_cr->Usecnt() == 0, ("res is used but all opnd is dead"));
    phi_node->Reset_live();
    return;
  }

  WSSA::VER_IDX* ver_list = (WSSA::VER_IDX* )alloca(sizeof(WSSA::VER_IDX)*phi_node->Size());
  INT32 opnd_count = 0;
  BOOL fake_phi = TRUE;

  WSSA::VER_IDX res_idx = Get_cr_ver(phi_node->RESULT());
  if (res_idx == WSSA::VER_INVALID) {
    res_idx = New_def_ver(phi_node->RESULT(), wn, WSSA::WSSA_PHI);
  }
  else {
    Update_def_ver(res_idx, wn, WSSA::WSSA_PHI);
  }
  
  // iterate phi_node's in versions and add into wssa_phi
  // if all version of opnds is same with result version.
  // skip add this phi node.
  for (INT32 i = 0; i < phi_node->Size(); ++i) {
    CODEREP* opnd_cr = phi_node->OPND(i);
    WSSA::VER_IDX opnd_idx = Get_cr_ver(opnd_cr);
    if (opnd_idx == WSSA::VER_INVALID) {
      opnd_idx = New_use_ver(opnd_cr, wn);
    }
    if (res_idx != opnd_idx) {
      fake_phi = FALSE;
    }
    ver_list[opnd_count] = opnd_idx;
    ++opnd_count;
  }

  if (fake_phi) {
    if (_trace)
      fprintf(TFile, "skip convert for fake phi node\n");
    Is_True(WOPT_Enable_Zero_Version && phi_node->RESULT()->Is_flag_set(CF_IS_ZERO_VERSION),
            ("Fix me: fake phi without zero versioning"));
    return;
  }
  
  WSSA::PHI_NODE* wssa_phi = _wssa_mgr->Create_phi(opnd_count);
  wssa_phi->Set_res(res_idx);
  Is_True(opnd_count > 0 && opnd_count == phi_node->Size(), ("count out of bound\n"));
  for (INT32 i = 0; i < opnd_count; ++i) {
    wssa_phi->Set_opnd(i, ver_list[i]);
  }
  _wssa_mgr->Add_phi(wn, wssa_phi);

  if (_trace) {
    wssa_phi->Print(TFile, 0);
    fprintf(TFile, "\n");
  }
}

//===================================================================
// WHIRL_SSA_EMITTER::WSSA_Copy_PHI
//   copy a BB's phi node onto WN.
//===================================================================
void
WHIRL_SSA_EMITTER::WSSA_Copy_PHI(BB_NODE* bb, WN* wn) {
  PHI_LIST *opt_phi_list = bb->Phi_list();
  PHI_LIST_ITER phi_iter;
  PHI_NODE *pnode;
  if (_trace) {
    fprintf(TFile, "copying phi nodes for BB %d\n", bb->Id());
  }
  FOR_ALL_NODE (pnode, phi_iter, Init(opt_phi_list)) {
    WSSA_Copy_PHI_Node(pnode, wn);
  }
}

void 
WHIRL_SSA_EMITTER::WSSA_Set_Ver(WN* wn, WSSA::VER_IDX ver_idx) {
  WN_MAP_Set_ID(Current_Map_Tab, wn);
  _wssa_mgr->Set_wn_ver(wn, ver_idx);
}

