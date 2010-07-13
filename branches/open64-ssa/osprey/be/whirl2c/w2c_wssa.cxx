#include <iostream>
#include <sstream>
#include "whirl2c_common.h"
#include "wssa_mgr.h"
#include "wssa_wn.h"
#include "pu_info.h"
#include "w2c_wssa.h"

extern void WN2C_Stmt_Newline(TOKEN_BUFFER tokens, SRCPOS srcpos);
namespace WSSA
{

static PARENT_MAP parent_map;
static LABEL_MAP label_map;

static void set_parent(const WN* wn, const WN* parent)
{
  parent_map[wn] = parent;
}


const WN* get_parent(const WN* wn)
{
  return parent_map[wn];
}

static void parentize_rec(const WN* wn)
{
  if (!OPCODE_is_leaf(WN_opcode(wn))) { 
    if (WN_opcode(wn) == OPC_BLOCK) {
      WN *kid = WN_first(wn);
      while (kid) {
        set_parent(kid, wn);
        parentize_rec(kid);
        kid = WN_next(kid);
      }
    } else {
      INT kidno;
      for (kidno = 0; kidno < WN_kid_count(wn); kidno++) {
        WN *kid = WN_kid(wn, kidno);
        if (kid) { 
          set_parent(kid, wn);
          parentize_rec(kid);
        }
      }
    }
  }
}

void parentize(const WN* wn)
{
  parent_map.clear();
  parentize_rec(wn);
}

static void setup_label_map_rec(const WN* wn)
{
  switch (WN_operator(wn))
  {
  case OPR_GOTO:
  case OPR_CASEGOTO:
  case OPR_REGION_EXIT:
  case OPR_FALSEBR:
  case OPR_TRUEBR:
    label_map[WN_label_number(wn)].sources.push_back(wn);
    break;
  case OPR_SWITCH:
  case OPR_COMPGOTO:
    label_map[WN_last_label(wn)].sources.push_back(wn);
    break;
  case OPR_LABEL:
    label_map[WN_label_number(wn)].sources.push_back(wn); // fall throught
    label_map[WN_label_number(wn)].target = wn;
    break;
  case OPR_AGOTO:
  case OPR_XGOTO:
  case OPR_GOTO_OUTER_BLOCK:
    FmtAssert(FALSE, ("setup_label_map: NYI"));
    break;
  }
  if (!OPCODE_is_leaf(WN_opcode(wn))) { 
    if (WN_opcode(wn) == OPC_BLOCK) {
      WN *kid = WN_first(wn);
      while (kid) {
	setup_label_map_rec(kid);
        kid = WN_next(kid);
      }
    } else {
      INT kidno;
      for (kidno = 0; kidno < WN_kid_count(wn); kidno++) {
        WN *kid = WN_kid(wn, kidno);
        if (kid) { 
          setup_label_map_rec(kid);
        }
      }
    }
  }
}

void setup_label_map(const WN* wn)
{
  //clear the label_map first
  label_map.clear();
  setup_label_map_rec(wn);
}

const WN* get_target(const INT32 label)
{
  FmtAssert( label_map.find(label) != label_map.end(), ("get_target: can not get target"));
  return label_map[label].target;
}

const WN* get_target(const WN* wn)
{
  switch (WN_operator(wn))
  {
  case OPR_GOTO:
  case OPR_CASEGOTO:
  case OPR_REGION_EXIT:
  case OPR_FALSEBR:
  case OPR_TRUEBR:
  case OPR_LABEL:
    return get_target(WN_label_number(wn));
  case OPR_SWITCH:
  case OPR_COMPGOTO:
    return get_target(WN_last_label(wn));
  default:
    FmtAssert(FALSE, ("get_target: can not get the label target"));
    break;
  }
}

INT32 get_jmp_order(const WN* wn)
{
  INT32 label;
  switch (WN_operator(wn))
  {
  case OPR_GOTO:
  case OPR_FALSEBR:
  case OPR_TRUEBR:
  case OPR_CASEGOTO:
  case OPR_LABEL:
    label = WN_label_number(wn);
    break;
  case OPR_SWITCH:
  case OPR_COMPGOTO:
    label = WN_last_label(wn);
    break;
  default:
    FmtAssert(FALSE, ("get_target: can not get the label target"));
    break;
  }
  
  FmtAssert( label_map.find(label) != label_map.end(), ("get_jmp_order: can not get target"));
//  FmtAssert( label_map[label].sources.size(), ("get_jmp_order: the jump sources is empty!") );

  for (int i = 0; i < label_map[label].sources.size(); i++)
  {
    if ( label_map[label].sources[i] == wn )
      return i;
  }
  FmtAssert(FALSE, ("get_jmp_order: can not find this whirl node in map"));
  return -1;
}


void emit_chi_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  /* Emit the chi info in a comment */
  
  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  if ( wsm->WN_has_CHI_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "/*");
    const WSSA::WN_CHI_LIST& list = wsm->WN_CHI_list(wn);
    for ( WSSA::WN_CHI_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Res() <<" = chi(" 
	   << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd() << ")" ;
      else
	ss << wsm->WST_name(iter->WST_idx()) << "v" << iter->Res() <<" = chi(" 
	   << wsm->WST_name(iter->WST_idx()) << "v" << iter->Opnd() << ")" ;

      Append_Token_String(tokens, ss.str().c_str());
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "*/");
  }
}

void emit_chi_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  /* Emit the chi as an assignment */
  
  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  if ( wsm->WN_has_CHI_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    const WSSA::WN_CHI_LIST& list = wsm->WN_CHI_list(wn);
    for ( WSSA::WN_CHI_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      if ( wsm->Get_sym_type(iter->WST_idx()) != WSSA::WST_WHIRL )
	continue; 
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx()));
      else
	ss << wsm->Get_sym_type(iter->WST_idx());
      if ( iter->Res() )
	ss << "v" << iter->Res();
      if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	ss <<" = " << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx()));
      else
	ss <<" = " << wsm->Get_sym_type(iter->WST_idx());
      if ( iter->Opnd() )
	ss << "v" << iter->Opnd() ;
      ss << ";" ;
      Append_Token_String(tokens, ss.str().c_str());
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
  }
}

void emit_phi_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  /* Emit the phi info in a comment */
  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  if ( wsm->WN_has_PHI_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "/*");
    const WSSA::WN_PHI_LIST& list = wsm->WN_PHI_list(wn);
    for ( WSSA::WN_PHI_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Res() << " = phi(";
      else
	ss << wsm->WST_name(iter->WST_idx()) << "v" << iter->Res() << " = phi(";
      int i;
      for ( i = 0; i < iter->Opnd_count() - 1; i ++)
      {
	if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	  ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd(i) << ", ";
	else
	  ss << wsm->WST_name(iter->WST_idx()) << "v" << iter->Opnd(i) << ", ";
      }
      if ( i < iter->Opnd_count() )
	if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	  ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd(i);
	else
	  ss << wsm->WST_name(iter->WST_idx()) << "v" << iter->Opnd(i);
      ss << ")";
      Append_Token_String(tokens, ss.str().c_str());	
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "*/");
  }
}

void emit_mu_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  /* Emit the mu , assign the zero version */

  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  if ( wsm->WN_has_MU_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    const WSSA::WN_MU_LIST& list = wsm->WN_MU_list(wn);
    for ( WSSA::WN_MU_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      if ( wsm->Get_sym_type(iter->WST_idx()) != WSSA::WST_WHIRL )
	continue; 
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      if ( iter->Opnd() )
	ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << " = "
	   << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd() << ";";
      Append_Token_String(tokens, ss.str().c_str());
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
  }
}

void emit_mu_info(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  /* Emit the mu info in a comment */

  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  if ( wsm->WN_has_MU_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "/*");
    const WSSA::WN_MU_LIST& list = wsm->WN_MU_list(wn);
    for ( WSSA::WN_MU_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      if ( wsm->Get_sym_type(iter->WST_idx()) == WSSA::WST_WHIRL )
	ss << "mu(" << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd() << ")";
      else
	ss << "mu(" << wsm->WST_name(iter->WST_idx()) << "v" << iter->Opnd() << ")";
      Append_Token_String(tokens, ss.str().c_str());
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "*/");
  }
}
void emit_phi_assignment(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context, 
			      INT32 phi_vn, const char separator)
{
  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;
  
  if ( phi_vn != -1 &&  
       wsm->WN_has_PHI_list(wn) )
  {
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
    Append_Token_String(tokens, "/* phi assignment */");
    const WSSA::WN_PHI_LIST& list = wsm->WN_PHI_list(wn);
    for ( WSSA::WN_PHI_LIST::const_iterator iter = list.begin();
	  iter != list.end(); iter++)
    {
      if ( wsm->Get_sym_type(iter->WST_idx()) != WSSA::WST_WHIRL )
	continue; 
      WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
      ss << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Res() << " = "
	 << W2CF_Symtab_Nameof_St(wsm->Get_WHIRL_ST(iter->WST_idx())) << "v" << iter->Opnd(phi_vn) 
	 <<  separator ;
      Append_Token_String(tokens, ss.str().c_str());
      ss.str("");
    }
    WN2C_Stmt_Newline(tokens, CONTEXT_srcpos(context));
  }
}

void emit_phi_assignment_block(TOKEN_BUFFER tokens, const WN *wn, CONTEXT context)
{
  WSSA::WHIRL_SSA_MANAGER * wsm;
  wsm = PU_Info_ssa_ptr(Current_PU_Info);
  if (!wsm) 
    return;
  std::stringstream ss;

  /* for phi assignment in the end of the previous block of joined block*/
  int phi_vn = -1;
  char separator = ';';
  const WN *parent = get_parent(wn);
  if ( parent != NULL )
  {
    switch ( WN_operator(parent) )
    {
    case OPR_IF:
      if ( WN_then(parent) == wn )
	phi_vn = 0;
      else if ( WN_else(parent) == wn )
	phi_vn = 1;
      break;
    case OPR_DO_WHILE:
    case OPR_WHILE_DO:
      phi_vn = 1;
      break;
    case OPR_DO_LOOP:
      if ( WN_start(parent) == wn )
	phi_vn = 0;
      else if ( WN_step(wn) == wn )
	phi_vn = 1;
      separator = ',';
      break;
    }
    emit_phi_assignment(tokens, parent, context, phi_vn, separator);
  }
}

} // end namespace WSSA
