#ifndef WSSA_VERIFIER_INCLUDED 
#define WSSA_VERIFIER_INCLUDED
// following fields should be used in verifier 
//  1) wn_tree
//  2) cfg 
//  3) dominator tree 

#include "wn.h"
#include "wssa_mgr.h"
#include "wssa_opt_common.h" 
#include "opt_cfg.h" 

using namespace WSSA;

class WSSA_VERIFIER { 
  const CFG* _cfg; 	
  const WN* _wn_tree; 
  WHIRL_SSA_MANAGER* _wssa_mgr; 
  const ALIAS_MANAGER* _alias_mgr; 
public:  
  const CFG* Cfg() const { return _cfg; } 
  WHIRL_SSA_MANAGER* 
  	    WSSA_Mgr() const { return _wssa_mgr; } 
  const WN* WN_Tree() const { return _wn_tree; } 
  void Verify_Expr_Node(const WN*); 
  void Verify_Stmt_Node(const WN*); 
  void Verify_Phi(const WN*); 
  void Verify_Mu(const WN*); 
  void Verify_Chi(const WN*) ; 
  void Verify_Version(const WN*); 	
  void Verify_Whirl_Tree(); 
  void Minimize(void); 
  WSSA_VERIFIER(const WN*, WHIRL_SSA_MANAGER*, ALIAS_MANAGER* alias_mgr); 
}; 

#endif //WSSA_VERIFIER_INCLUDED

