
#include "wssa_emitter.h"
#include "opt_base.h"
#include "opt_htable.h"
#include "opt_mu_chi.h"
#include "wssa_sym_utils.h"
#include "timing.h"

WHIRL_SSA_EMITTER::WHIRL_SSA_EMITTER()
{
  _wssa_mgr = NULL;
  _opt_emitter = NULL;
  _opt_stab = NULL;
  _wssa_wn = NULL;
  _trace = FALSE;
  _trace_time = FALSE;
  _vsym_idx = 1;
}

WHIRL_SSA_EMITTER::WHIRL_SSA_EMITTER( WSSA::WHIRL_SSA_MANAGER* wssa_mgr,
         OPT_STAB* opt_stab, EMITTER* opt_emitter)
{
  _wssa_mgr = wssa_mgr;
  _opt_emitter = opt_emitter;
  _opt_stab = opt_stab;
  _wssa_wn = NULL;
  _trace = FALSE;
  _trace_time = FALSE;
  _vsym_idx = 1;

  /* Set _wssa_mgr internal status */
  _wssa_mgr->Set_stat(WSSA::STAT_EMIT);

  /* clear all original data in wssa_mgr */
  _wssa_mgr->Clear();
}

WHIRL_SSA_EMITTER::~WHIRL_SSA_EMITTER()
{
  // emitter finished, set the wssa_mgr state to OK
  _wssa_mgr->Set_stat(WSSA::STAT_OK);
}

struct clear_wssa_st
{
  inline void operator() (UINT32, ST* st) const {
    Set_ST_wssa_st_idx(ST_st_idx(st), WSSA::WSSA_ST_ZERO);
  }
};

/*
 * WSSA_Convert_OPT_Symbol
 * 	convert opt_stable symbol into WSSA_ST symbol, including vsym
 * 	record opt_symbol's max version in each WSSA_ST
 *  
 *  There may be multiple WSSA_ST share same WN ST, when WN ST has
 *  multiple coressponding opt_stable symbol.
 */
void
WHIRL_SSA_EMITTER::WSSA_Convert_OPT_Symbol()
{
  if(_trace) {
    fprintf(TFile, "Converting opt symbol table into WSSA symbol table\n");
  }
  if(_trace_time) {
    Start_Timer(T_WSSA_EMIT_CU);
  }
  
  // first step is clear all global variable ST's wssa_st index
  // otherwise, it may still contian value produced when emitting last PU.
  For_all (St_Table, GLOBAL_SYMTAB, clear_wssa_st ());
  
  mUINT32 aux_id;
  AUX_STAB_ITER aux_stab_iter(_opt_stab);
  FOR_ALL_NODE(aux_id, aux_stab_iter, Init()) {
    AUX_STAB_ENTRY *aux = _opt_stab->Aux_stab_entry(aux_id);
    // generate a WSSA_Symbol_Entry for each aux stab entry
    // mark wssa_st index in aux stab entry
    // 1. determin WSSA_SYM_TYPE for aux stab entry
    //    WST_WHIRL,           others
    //    WST_FIELD,           for aux stab entry,
    //                         whose size is smaller than its base st
    //    WST_VIRTUAL,         for virtual aux stab

    WSSA::WSSA_ST_IDX wssa_idx;
    if(aux->Is_virtual()) {
      WSSA::WSSA_VSYM_TYPE vsym_type = Vsym_type_from_aux(aux->Stype());
      WSSA::WST_Vsym_Info vsym_info(vsym_type);
      
      switch(aux->Stype()) {
        case VT_LDA_SCALAR:
        case VT_LDA_VSYM:
          vsym_info.Set_st_idx(ST_st_idx(aux->Base()));
          break;
        case VT_UNIQUE_VSYM:
        case VT_SPECIAL_VSYM:
        {
          if(aux_id == _opt_stab->Default_vsym()) {
            vsym_info.Set_name_idx(Save_Str("_v_def_"));
          } 
          else if(aux_id == _opt_stab->Return_vsym()) {
            vsym_info.Set_name_idx(Save_Str("_v_ret_"));
          }
          else {
            // get the name from point_to's AUX ID.
            // _vsym_(_vsym_idx)_(point to AUX_ID)_
            char name[20];
            sprintf(name, "_v_%d_", _vsym_idx);
            if(aux->Aux_id_list() != NULL
               && !aux->Aux_id_list()->Is_Empty()) {
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
      wssa_idx = _wssa_mgr->New_WST(vsym_info);
      _vsym_idx++;
    }
    else {
      ST* wn_st = aux->St();
      INT32 wn_st_idx = ST_st_idx(wn_st);
      UINT8 bit_size = aux->Bit_size();
      UINT8 bit_ofset = aux->Bit_ofst();
      mINT64 byte_size = aux->Byte_size();
      mINT64 st_ofst = aux->St_ofst();
      UINT field_id = aux->Field_id();
      // if opt_stable symbol is a subset of original
      // WN symbol, record it as a FILED_TYPE WSSA entry.
      if(bit_ofset != 0 || st_ofst !=0 ||
         byte_size != ST_size(wn_st)) {
        WSSA::WST_Field_Info field_info(wn_st_idx, field_id,
            byte_size, st_ofst, bit_size, bit_ofset);
        wssa_idx = _wssa_mgr->New_WST(field_info);
      }
      else {
        wssa_idx = _wssa_mgr->New_WST(wn_st_idx);
      }
    }
    if(aux_id == _opt_stab->Default_vsym()) {
      _wssa_mgr->Set_default_vsym(wssa_idx);
    }
    else if(aux_id == _opt_stab->Return_vsym()) {
      _wssa_mgr->Set_return_vsym(wssa_idx);
    }
    aux->Set_wssa_st_idx(wssa_idx);
    _wssa_mgr->Set_max_ver(wssa_idx, aux->Version());
    if(_trace) {
      fprintf(TFile, "Opt Stable[%d] is converted into WSSA Stable[%d]\n",
        aux_id, wssa_idx);
      _opt_stab->Print_aux_entry(aux_id, TFile);
      // WSSA_Symbol_Entry->Print
    }
  }
  if(_trace_time) {
    Stop_Timer(T_WSSA_EMIT_CU);
  }
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Expr
 *   recursivly copy mu/version onto WN node expression
 */
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Expr(WN* wn)
{
  CODEREP* cr = (CODEREP*)WN_MAP_Get( *_opt_emitter->Wn_to_cr_map(), wn );

  if(WN_has_ver(wn)) {
    WSSA::VER_NUM version = cr->Version();
    if ( WOPT_Enable_Zero_Version && cr->Is_flag_set(CF_IS_ZERO_VERSION) )
      version = 0;
    _wssa_mgr->Set_WN_ver(wn, version);
  }

  if( cr && (cr->Kind() == CK_IVAR) && (cr->Ivar_mu_node() != NULL) ) {
    MU_NODE *mnode = cr->Ivar_mu_node();
    if( mnode->Is_Valid() ) {
      WSSA_Copy_MU_Node(mnode, wn);
    }
  }

  for (INT kidno=0; kidno<WN_kid_count(wn); kidno++){
    WN* kid = WN_kid(wn,kidno);
    WSSA_Build_MU_CHI_Version_Expr(kid);
  }
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Stmt
 *   recursivly copy mu/version onto WN node statment
 */
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version_Stmt(WN* wn)
{
  STMTREP *sr = (STMTREP *)WN_MAP_Get( *_opt_emitter->Wn_to_cr_map(), wn );
  if(sr && WN_has_ver(wn)) {
    WSSA::VER_NUM version = sr->Lhs()->Version();
    if ( WOPT_Enable_Zero_Version && sr->Lhs()->Is_flag_set(CF_IS_ZERO_VERSION) )
      version = 0;
    _wssa_mgr->Set_WN_ver(wn, version);
  }

  if( sr && sr->Has_mu() ) {
    MU_NODE *mnode;
    MU_LIST_ITER mu_iter;
    FOR_ALL_NODE( mnode, mu_iter, Init(sr->Mu_list()) ) {
      if( mnode->Is_Valid() ) {
        WSSA_Copy_MU_Node(mnode, wn);
      }
    }
  }

  if( sr && sr->Has_chi() ) {
    CHI_NODE *cnode;
    CHI_LIST_ITER chi_iter;
    FOR_ALL_NODE( cnode, chi_iter, Init(sr->Chi_list()) ) {
      if( cnode->Live() ) {
        WSSA_Copy_CHI_Node(cnode, wn);
      }
    }
  }

  if(WN_opcode(wn) == OPC_BLOCK) {
     WN* kid = WN_first (wn);
     while(kid){
       WSSA_Build_MU_CHI_Version(kid);
       kid = WN_next(kid);
     }
  }
  else {
    for (INT kidno=0; kidno<WN_kid_count(wn); kidno++){
      WN* kid = WN_kid(wn,kidno);
      WSSA_Build_MU_CHI_Version(kid);
    }
  }
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version
 *   copy mu/version onto WN node
 */
void
WHIRL_SSA_EMITTER::WSSA_Build_MU_CHI_Version(WN* wn)
{
  if(_trace_time) {
    Start_Timer(T_WSSA_EMIT_CU);
  }

  if ( OPCODE_is_expression( WN_opcode(wn) ) ) {
    WSSA_Build_MU_CHI_Version_Expr(wn);
  }
  else {
    WSSA_Build_MU_CHI_Version_Stmt(wn);
  }

  if(_trace_time) {
    Stop_Timer(T_WSSA_EMIT_CU);
  }
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Copy_CHI_Node
 *   copy chi node, map opt_stable st to WSSA_ST.
 *                  copy versions
 */
void
WHIRL_SSA_EMITTER::WSSA_Copy_CHI_Node(CHI_NODE* chi_node, WN* wn)
{
  if( !chi_node->Live() )
    return;

  WSSA::CHI_NODE wssa_chi;
  mUINT32 aux_id = chi_node->Aux_id();
  WSSA::WSSA_ST_IDX wssa_st_idx =
              _opt_stab->Aux_stab_entry(aux_id)->Get_wssa_st_idx();
  wssa_chi.Set_WST_idx( wssa_st_idx );
  WSSA::VER_NUM res_ver = chi_node->RESULT()->Version();
  if ( WOPT_Enable_Zero_Version && chi_node->RESULT()->Is_flag_set(CF_IS_ZERO_VERSION) )
    res_ver = 0;
  wssa_chi.Set_res( res_ver );
  WSSA::VER_NUM opnd_ver = chi_node->OPND()->Version();
  if ( WOPT_Enable_Zero_Version && chi_node->OPND()->Is_flag_set(CF_IS_ZERO_VERSION) )
    opnd_ver = 0;
  wssa_chi.Set_opnd( opnd_ver );

  _wssa_mgr->Add_CHI(wn, wssa_chi);
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Copy_MU_Node
 *   copy mu node, map opt_stable st to WSSA_ST.
 *                 copy versions
 */
void
WHIRL_SSA_EMITTER::WSSA_Copy_MU_Node(MU_NODE* mu_node, WN* wn)
{
  if( !mu_node->Is_Valid() )
    return;

  WSSA::MU_NODE wssa_mu;
  mUINT32 aux_id = mu_node->Aux_id();
  WSSA::WSSA_ST_IDX wssa_st_idx =
              _opt_stab->Aux_stab_entry(aux_id)->Get_wssa_st_idx();
  wssa_mu.Set_WST_idx( wssa_st_idx );
  WSSA::VER_NUM opnd_ver = mu_node->OPND()->Version();
  if ( WOPT_Enable_Zero_Version && mu_node->OPND()->Is_flag_set(CF_IS_ZERO_VERSION) )
    opnd_ver = 0;
  wssa_mu.Set_opnd( opnd_ver );

  _wssa_mgr->Add_MU(wn, wssa_mu);
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Copy_PHI_Node
 *   expract phi_node and invke SSA_mgr interface to record on wn
 */
void
WHIRL_SSA_EMITTER::WSSA_Copy_PHI_Node(PHI_NODE* phi_node, WN* wn)
{
  if(!phi_node->Live())
    return;
  
  WSSA::PHI_NODE wssa_phi;
  // get result phi's info
  CODEREP* rhs_cr = phi_node->RESULT();
  mUINT32 rhs_version = rhs_cr->Version();
  mUINT32 aux_id = rhs_cr->Aux_id();

  // set wn st and wssa st 
  WSSA::WSSA_ST_IDX wssa_st_idx = 
             _opt_stab->Aux_stab_entry(aux_id)->Get_wssa_st_idx();
  wssa_phi.Set_WST_idx(wssa_st_idx);
  if ( WOPT_Enable_Zero_Version && rhs_cr->Is_flag_set(CF_IS_ZERO_VERSION) )
    rhs_version = 0;
  wssa_phi.Set_res(rhs_version);

  // iterate phi_node's in versions and add into wssa_phi
  for (INT32 i = 0; i < phi_node->Size(); i++) {
    CODEREP* opnd_cr = phi_node->OPND(i);
    WSSA::VER_NUM opnd_ver = opnd_cr->Version();
    if ( WOPT_Enable_Zero_Version && opnd_cr->Is_flag_set(CF_IS_ZERO_VERSION) )
      opnd_ver = 0;
    wssa_phi.Add_opnd( opnd_ver );
  }
  if(_trace){
    
  }
  _wssa_mgr->Add_PHI(wn, wssa_phi);
}

/*
 * WHIRL_SSA_EMITTER::WSSA_Copy_PHI
 *   copy a BB's phi node onto WN.
 */
void
WHIRL_SSA_EMITTER::WSSA_Copy_PHI(BB_NODE* bb, WN* wn)
{
  PHI_LIST    *opt_phi_list = bb->Phi_list();
  PHI_LIST_ITER phi_iter;
  PHI_NODE *pnode;

  FOR_ALL_NODE(pnode, phi_iter, Init(opt_phi_list)){
    WSSA_Copy_PHI_Node(pnode, wn);
  }
}


