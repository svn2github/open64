#ifndef WSSA_EMITTER_INCLUDED
#define WSSA_EMITTER_INCLUDED

#include "wssa_defs.h"
#include "wssa_core.h"
#include "wssa_mgr.h"
#include "wssa_utils.h"
#include "wn.h"
#include "symtab.h"
#include "opt_bb.h"
#include "opt_ssa.h"
#include "opt_emit.h"

extern BOOL OPT_Enable_WHIRL_SSA;
class CHI_NODE;
class MU_NODE;

class WHIRL_SSA_EMITTER {
private:
  WSSA::WHIRL_SSA_MANAGER* _wssa_mgr;      
  EMITTER*                 _opt_emitter;
  OPT_STAB*                _opt_stab;
  WN*                      _wssa_wn;
  BOOL                     _trace;
  BOOL                     _trace_time;
  INT32                    _vsym_idx;   // count vsym index in opt_stab,
                                        // used as vsym WSSA_ST suffix
  
  /*copy a MU/CHI/PHI_NODE to WN */
  void WSSA_Copy_MU_Node(MU_NODE*, WN*);
  void WSSA_Copy_CHI_Node(CHI_NODE*, WN*);
  void WSSA_Copy_PHI_Node(PHI_NODE*, WN*);

  void WSSA_Build_MU_CHI_Version_Expr(WN*);
  void WSSA_Build_MU_CHI_Version_Stmt(WN*);
protected:
  
public:
  
  WHIRL_SSA_EMITTER();
  WHIRL_SSA_EMITTER(WSSA::WHIRL_SSA_MANAGER*, OPT_STAB*, EMITTER*);
  ~WHIRL_SSA_EMITTER();

  void Set_trace(BOOL trace)         { _trace = trace;      }
  BOOL Get_trace()                   { return _trace;       }
  void Set_trace_time(BOOL trace)    { _trace_time = trace; }
  BOOL Get_trace_time()              { return _trace_time;  }

  /* update symbol table for WSSA */
  void WSSA_Convert_OPT_Symbol();
  
  /* Map MU/CHI/Version onto WN */
  void WSSA_Build_MU_CHI_Version(WN*);

  /* Copy Phi node from BB to WN node */
  void WSSA_Copy_PHI(BB_NODE*, WN*);
};


#endif  /* WSSA_EMITER_INCLUDED */
