/* generate symtab references for compiler-generated runtime calls */

#include "defs.h"
#include "errors.h"
#include "symtab.h"
#include "strtab.h"

ST_IDX Throw_Runtime_st_idx()
{
  static ST_IDX result = ST_IDX_ZERO;

  if (result != ST_IDX_ZERO)
    return result;

  TY_IDX func_ty_idx = Make_Function_Type(MTYPE_To_TY(MTYPE_V));
  PU_IDX pu_idx;
  PU&    pu = New_PU(pu_idx);
  PU_Init(pu, func_ty_idx, GLOBAL_SYMTAB + 1);
  Set_PU_cxx_lang(pu);
  ST * st = New_ST(GLOBAL_SYMTAB);
  ST_Init(st, Save_Str("__throw"), CLASS_FUNC, SCLASS_EXTERN,
		       EXPORT_PREEMPTIBLE, TY_IDX(pu_idx));
  return ST_st_idx(st);
}
  

  
  


