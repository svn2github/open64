#include "wssa_verifier.h"

void WSSA_VERIFIER::Verify_Mu(const WN* wn_node) { 
  //Todo: 
  Is_True(WN_has_mu(wn_node, Cfg()->Rgn_level()), ("Invalid Node in Verify_Mu")); 
  UINT kids_count = WN_kid_count(wn_node); 
  MU_LIST_ITER mu_begin = WSSA_Mgr()->WN_MU_Begin(wn_node); 
  MU_LIST_ITER mu_end = WSSA_Mgr()->WN_MU_Begin(wn_node); 
  MU_LIST_ITER iter; 
  for (iter = mu_begin; iter != mu_end; iter++) { 
      ST_IDX idx = iter->ST_idx(); 
      
  } 
} 

void WSSA_VERIFIER::Verify_Chi(const WN*wn_node) { 
  Is_True(WN_has_chi(wn_node, Cfg()->Rgn_level()), ("Invalid Node in Verify_Chi")); 
  CHI_LIST_ITER chi_begin = WSSA_Mgr()->WN_CHI_Begin(wn_node); 
  CHI_LIST_ITER chi_end = WSSA_Mgr()->WN_CHI_Begin(wn_node); 
  CHI_LIST_ITER iter; 
  for (iter = chi_begin; iter != chi_end; iter++) { 
      ST_IDX idx = iter->ST_idx(); 
      
  } 
}

void WSSA_VERIFIER::Verify_Phi(const WN* wn_node) { 
  Is_True(OPCODE_is_scf(WN_opcode(wn_node)), ("Invalid Node in Verify_Chi")); 

}

void 
WSSA_VERIFIER::Verify_Expr_Node(const WN* expr) { 
  OPCODE opc = WN_opcode(expr);
  OPERATOR opr = OPCODE_operator(opc); 
  Is_True(OPCODE_is_expression(opc), ("invalid expression node ")); 

  UINT kids_count = WN_kid_count(expr); 
  for (int i = 0; i < kids_count; i++) { 
     Verify_Expr_Node(WN_kid(expr, i)); 
  } 
  if (OPCODE_has_mu(opc)) 
    Verify_Mu(expr); 
}

void 
WSSA_VERIFIER::Verify_Stmt_Node(const WN* stmt) { 
  OPCODE opc = WN_opcode(stmt); 
  Is_True(OPCODE_is_stmt(opc), ("invalid statment Node")); 

  if (OPCODE_has_chi(opc))
    Verify_Chi(stmt); 
  
  switch (opc) { 
    case OPC_BLOCK: 
      break;         
    case OPC_IF:
    case OPC_WHILE_DO:
    case OPC_DO_WHILE:
    case OPC_DO_LOOP:         
      Verify_Phi(stmt); 
      break; 
    default: 
       Fail_FmtAssertion("statement %s verify NYI", OPCODE_name(opc)); 
  } 
} 

void 
WSSA_VERIFIER::Verify_Whirl_Tree() { 
     if (OPCODE_is_stmt(WN_opcode(WN_Tree()))) {
        Verify_Stmt_Node(_wn_tree); 
     }
     else if(OPCODE_is_expression(WN_opcode(WN_Tree()))) { 
        Verify_Expr_Node(_wn_tree); 
     }
} 

WSSA_VERIFIER::WSSA_VERIFIER(const WN* wn_tree, WHIRL_SSA_MANAGER* ssa_mgr,
                             ALIAS_MANAGER* alias_mgr) { 
   _wn_tree = wn_tree; 
   _wssa_mgr = ssa_mgr; 
   _alias_mgr = alias_mgr; 
} 

void  Verify_WHIRL_SSA (const WN* wn_tree, WHIRL_SSA_MANAGER* mgr,
                        ALIAS_MANAGER* alias_mgr) { 
  WSSA_VERIFIER verifier(wn_tree, mgr, alias_mgr);  
  // make sure the wn_tree contains only HIGH level wn node; 
   
  //Todo:
  // verifier.Construct_Cfg(); 
  // verifier.Cfg()->Build_Dominator(TRUE); // dominator tree 
  verifier.Minimize(); 
  verifier.Verify_Whirl_Tree(); 
}
