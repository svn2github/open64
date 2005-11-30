/* Generated automatically by the program `genemit'
from the machine description file `md'.  */

#include "config.h"
#include "system.h"
#include "rtl.h"
#include "tm_p.h"
#include "function.h"
#include "expr.h"
#include "real.h"
#include "flags.h"
#include "output.h"
#include "insn-config.h"
#include "insn-flags.h"
#include "insn-codes.h"
#include "hard-reg-set.h"
#include "recog.h"
#include "resource.h"
#include "reload.h"
#include "ggc.h"

#define FAIL return (end_sequence (), _val)
#define DONE return (_val = gen_sequence (), end_sequence (), _val)
rtx
gen_adddf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DFmode,
	operand1,
	operand2));
}

rtx
gen_addsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SFmode,
	operand1,
	operand2));
}

rtx
gen_addsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand1,
	operand2));
}

rtx
gen_adddi3_internal_1 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_adddi3_internal_2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_adddi3_internal_3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand1,
	operand2));
}

rtx
gen_addsi3_internal_2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	gen_rtx_PLUS (SImode,
	operand1,
	operand2)));
}

rtx
gen_subdf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DFmode,
	operand1,
	operand2));
}

rtx
gen_subsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SFmode,
	operand1,
	operand2));
}

rtx
gen_subsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand1,
	operand2));
}

rtx
gen_subdi3_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_subdi3_internal_2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_subdi3_internal_3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	operand2));
}

rtx
gen_subsi3_internal_2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	gen_rtx_MINUS (SImode,
	operand1,
	operand2)));
}

rtx
gen_muldf3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DFmode,
	operand1,
	operand2));
}

rtx
gen_muldf3_r4300 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DFmode,
	operand1,
	operand2));
}

rtx
gen_mulsf3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SFmode,
	operand1,
	operand2));
}

rtx
gen_mulsf3_r4300 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SFmode,
	operand1,
	operand2));
}

rtx
gen_mulsi3_mult3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (4,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_mulsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_mulsi3_r4000 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (4,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_muldi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_muldi3_internal2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (4,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_mulsidi3_internal (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	gen_rtx (GET_CODE (operand3), DImode,
		operand1),
	gen_rtx (GET_CODE (operand4), DImode,
		operand2))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_mulsidi3_64bit (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	gen_rtx (GET_CODE (operand3), DImode,
		operand1),
	gen_rtx (GET_CODE (operand4), DImode,
		operand2))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_xmulsi3_highpart_internal (operand0, operand1, operand2, operand3, operand4, operand5)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
     rtx operand5;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (SImode,
	gen_rtx (GET_CODE (operand5), DImode,
		gen_rtx_MULT (DImode,
	gen_rtx (GET_CODE (operand3), DImode,
		operand1),
	gen_rtx (GET_CODE (operand4), DImode,
		operand2)),
		GEN_INT (32)))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_smuldi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (DImode,
	gen_rtx_LSHIFTRT (TImode,
	gen_rtx_MULT (TImode,
	gen_rtx_SIGN_EXTEND (TImode,
	operand1),
	gen_rtx_SIGN_EXTEND (TImode,
	operand2)),
	GEN_INT (64)))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_umuldi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (DImode,
	gen_rtx_LSHIFTRT (TImode,
	gen_rtx_MULT (TImode,
	gen_rtx_ZERO_EXTEND (TImode,
	operand1),
	gen_rtx_ZERO_EXTEND (TImode,
	operand2)),
	GEN_INT (64)))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_madsi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	gen_rtx_MULT (SImode,
	operand1,
	operand2),
	operand0)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_divdf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (DFmode,
	operand1,
	operand2));
}

rtx
gen_divsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (SFmode,
	operand1,
	operand2));
}

rtx
gen_divmodsi4_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (SImode,
	operand1,
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_MOD (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_divmoddi4_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (DImode,
	operand1,
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_MOD (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_udivmodsi4_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (SImode,
	operand1,
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_UMOD (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_udivmoddi4_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (DImode,
	operand1,
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_UMOD (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_div_trap_normal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_TRAP_IF (VOIDmode,
	gen_rtx_EQ (VOIDmode,
	operand0,
	operand1),
	operand2);
}

rtx
gen_div_trap_mips16 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_TRAP_IF (VOIDmode,
	gen_rtx_EQ (VOIDmode,
	operand0,
	operand1),
	operand2),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	24))));
}

rtx
gen_divsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_divdi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_modsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MOD (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_moddi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MOD (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_udivsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_udivdi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_umodsi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UMOD (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_umoddi3_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UMOD (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_sqrtdf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SQRT (DFmode,
	operand1));
}

rtx
gen_sqrtsf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SQRT (SFmode,
	operand1));
}

rtx
gen_abssi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ABS (SImode,
	operand1));
}

rtx
gen_absdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ABS (DImode,
	operand1));
}

rtx
gen_absdf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ABS (DFmode,
	operand1));
}

rtx
gen_abssf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ABS (SFmode,
	operand1));
}

rtx
gen_ffssi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FFS (SImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode))));
}

rtx
gen_ffsdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FFS (DImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode))));
}

rtx
gen_negsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand1));
}

rtx
gen_negdi2_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_negdi2_internal_2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand1));
}

rtx
gen_negdf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DFmode,
	operand1));
}

rtx
gen_negsf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SFmode,
	operand1));
}

rtx
gen_one_cmplsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NOT (SImode,
	operand1));
}

rtx
gen_one_cmpldi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NOT (DImode,
	operand1));
}

rtx
gen_anddi3_internal1 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_AND (DImode,
	operand1,
	operand2));
}

rtx
gen_xordi3_immed (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand1,
	operand2));
}

rtx
gen_truncdfsf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT_TRUNCATE (SFmode,
	operand1));
}

rtx
gen_truncdisi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (SImode,
	operand1));
}

rtx
gen_truncdihi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (HImode,
	operand1));
}

rtx
gen_truncdiqi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (QImode,
	operand1));
}

rtx
gen_zero_extendsidi2_internal (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1));
}

rtx
gen_extendsidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1));
}

rtx
gen_extendhidi2_internal (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1));
}

rtx
gen_extendhisi2_internal (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (SImode,
	operand1));
}

rtx
gen_extendqihi2_internal (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (HImode,
	operand1));
}

rtx
gen_extendqisi2_insn (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (SImode,
	operand1));
}

rtx
gen_extendqidi2_insn (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1));
}

rtx
gen_extendsfdf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT_EXTEND (DFmode,
	operand1));
}

rtx
gen_fix_truncdfsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (SImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DFmode))));
}

rtx
gen_fix_truncsfsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (SImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SFmode))));
}

rtx
gen_fix_truncdfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (DImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DFmode))));
}

rtx
gen_fix_truncsfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (DImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DFmode))));
}

rtx
gen_floatsidf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT (DFmode,
	operand1));
}

rtx
gen_floatdidf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT (DFmode,
	operand1));
}

rtx
gen_floatsisf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT (SFmode,
	operand1));
}

rtx
gen_floatdisf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT (SFmode,
	operand1));
}

rtx
gen_movsi_ulw (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (1,
		operand1),
	0));
}

rtx
gen_movsi_usw (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (BLKmode,
	gen_rtvec (1,
		operand1),
	1));
}

rtx
gen_movdi_uld (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		operand1),
	0));
}

rtx
gen_movdi_usd (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (BLKmode,
	gen_rtvec (1,
		operand1),
	1));
}

rtx
gen_high (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_HIGH (SImode,
	operand1));
}

rtx
gen_low (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LO_SUM (SImode,
	operand1,
	operand2));
}

rtx
gen_movdi_internal (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movdi_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movsi_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movsi_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movcc (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movhi_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movhi_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movqi_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movqi_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movsf_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movsf_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movdf_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movdf_internal1a (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_movdf_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_loadgp (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	28),
	gen_rtx_UNSPEC_VOLATILE (DImode,
	gen_rtvec (2,
		operand0,
		operand1),
	2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	1))));
}

rtx
gen_movstrsi_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (8,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	const0_rtx)));
}

rtx
gen_movstrsi_internal2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (8,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	const1_rtx)));
}

rtx
gen_movstrsi_internal3 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (8,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	GEN_INT (2))));
}

rtx
gen_ashlsi3_internal1 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand1,
	operand2));
}

rtx
gen_ashlsi3_internal2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand1,
	operand2));
}

rtx
gen_ashldi3_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashldi3_internal2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashldi3_internal3 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashldi3_internal4 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	operand2));
}

rtx
gen_ashrsi3_internal1 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	operand2));
}

rtx
gen_ashrsi3_internal2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	operand2));
}

rtx
gen_ashrdi3_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashrdi3_internal2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashrdi3_internal3 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_ashrdi3_internal4 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	operand2));
}

rtx
gen_lshrsi3_internal1 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	operand2));
}

rtx
gen_lshrsi3_internal2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	operand2));
}

rtx
gen_lshrdi3_internal (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_lshrdi3_internal2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_lshrdi3_internal3 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_lshrdi3_internal4 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	operand2));
}

rtx
gen_branch_fp (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), CCmode,
		operand2,
		const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1),
	pc_rtx));
}

rtx
gen_branch_fp_inverted (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), CCmode,
		operand2,
		const0_rtx),
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
}

rtx
gen_branch_zero (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), SImode,
		operand2,
		const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1),
	pc_rtx));
}

rtx
gen_branch_zero_inverted (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), SImode,
		operand2,
		const0_rtx),
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
}

rtx
gen_branch_zero_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), DImode,
		operand2,
		const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1),
	pc_rtx));
}

rtx
gen_branch_zero_di_inverted (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), DImode,
		operand2,
		const0_rtx),
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
}

rtx
gen_branch_equality (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), SImode,
		operand2,
		operand3),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1),
	pc_rtx));
}

rtx
gen_branch_equality_di (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), DImode,
		operand2,
		operand3),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1),
	pc_rtx));
}

rtx
gen_branch_equality_inverted (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), SImode,
		operand2,
		operand3),
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
}

rtx
gen_branch_equality_di_inverted (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx (GET_CODE (operand0), DImode,
		operand2,
		operand3),
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
}

rtx
gen_seq_si_zero (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (SImode,
	operand1,
	const0_rtx));
}

rtx
gen_seq_di_zero (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (DImode,
	operand1,
	const0_rtx));
}

rtx
gen_seq_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (SImode,
	operand1,
	operand2));
}

rtx
gen_seq_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (DImode,
	operand1,
	operand2));
}

rtx
gen_sne_si_zero (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (SImode,
	operand1,
	const0_rtx));
}

rtx
gen_sne_di_zero (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx));
}

rtx
gen_sne_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (SImode,
	operand1,
	operand2));
}

rtx
gen_sne_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	operand2));
}

rtx
gen_sgt_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GT (SImode,
	operand1,
	operand2));
}

rtx
gen_sgt_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GT (DImode,
	operand1,
	operand2));
}

rtx
gen_sge_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GE (SImode,
	operand1,
	operand2));
}

rtx
gen_sge_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GE (DImode,
	operand1,
	operand2));
}

rtx
gen_slt_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (SImode,
	operand1,
	operand2));
}

rtx
gen_slt_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (DImode,
	operand1,
	operand2));
}

rtx
gen_sle_si_const (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (SImode,
	operand1,
	operand2));
}

rtx
gen_sle_di_const (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (DImode,
	operand1,
	operand2));
}

rtx
gen_sle_si_reg (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (SImode,
	operand1,
	operand2));
}

rtx
gen_sle_di_reg (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (DImode,
	operand1,
	operand2));
}

rtx
gen_sgtu_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GTU (SImode,
	operand1,
	operand2));
}

rtx
gen_sgtu_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GTU (DImode,
	operand1,
	operand2));
}

rtx
gen_sgeu_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GEU (SImode,
	operand1,
	operand2));
}

rtx
gen_sgeu_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GEU (DImode,
	operand1,
	operand2));
}

rtx
gen_sltu_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (SImode,
	operand1,
	operand2));
}

rtx
gen_sltu_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (DImode,
	operand1,
	operand2));
}

rtx
gen_sleu_si_const (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LEU (SImode,
	operand1,
	operand2));
}

rtx
gen_sleu_di_const (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LEU (DImode,
	operand1,
	operand2));
}

rtx
gen_sleu_si_reg (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LEU (SImode,
	operand1,
	operand2));
}

rtx
gen_sleu_di_reg (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LEU (DImode,
	operand1,
	operand2));
}

rtx
gen_seq_df (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (CCmode,
	operand1,
	operand2));
}

rtx
gen_slt_df (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (CCmode,
	operand1,
	operand2));
}

rtx
gen_sle_df (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (CCmode,
	operand1,
	operand2));
}

rtx
gen_sgt_df (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GT (CCmode,
	operand1,
	operand2));
}

rtx
gen_sge_df (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GE (CCmode,
	operand1,
	operand2));
}

rtx
gen_seq_sf (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (CCmode,
	operand1,
	operand2));
}

rtx
gen_slt_sf (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (CCmode,
	operand1,
	operand2));
}

rtx
gen_sle_sf (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (CCmode,
	operand1,
	operand2));
}

rtx
gen_sgt_sf (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GT (CCmode,
	operand1,
	operand2));
}

rtx
gen_sge_sf (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GE (CCmode,
	operand1,
	operand2));
}

rtx
gen_jump (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_LABEL_REF (VOIDmode,
	operand0));
}

rtx
gen_indirect_jump_internal1 (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0);
}

rtx
gen_indirect_jump_internal2 (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0);
}

rtx
gen_tablejump_internal1 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0),
		gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1))));
}

rtx
gen_tablejump_internal2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0),
		gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1))));
}

rtx
gen_casesi_internal (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_MEM (SImode,
	gen_rtx_PLUS (SImode,
	gen_rtx_MULT (SImode,
	operand0,
	GEN_INT (4)),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)))),
		gen_rtx_CLOBBER (VOIDmode,
	operand2),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31))));
}

rtx
gen_casesi_internal_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_MEM (DImode,
	gen_rtx_PLUS (DImode,
	gen_rtx_SIGN_EXTEND (DImode,
	gen_rtx_MULT (SImode,
	operand0,
	GEN_INT (4))),
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)))),
		gen_rtx_CLOBBER (VOIDmode,
	operand2),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	31))));
}

rtx
gen_blockage ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	0);
}

rtx
gen_return ()
{
  return gen_rtx_RETURN (VOIDmode);
}

rtx
gen_return_internal (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_USE (VOIDmode,
	operand0),
		gen_rtx_RETURN (VOIDmode)));
}

rtx
gen_get_fnaddr (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		operand1),
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31))));
}

rtx
gen_call_internal1 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal2 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal3a (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal3b (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal3c (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal4a (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_internal4b (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand0),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_value_internal1 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal2 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal3a (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal3b (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal3c (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal4a (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (SImode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_internal4b (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_multiple_internal1 (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4)));
}

rtx
gen_call_value_multiple_internal2 (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (VOIDmode,
	operand1),
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4)));
}

rtx
gen_nop ()
{
  return const0_rtx;
}

rtx
gen_consttable_qi (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	10);
}

rtx
gen_consttable_hi (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	11);
}

rtx
gen_consttable_si (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	12);
}

rtx
gen_consttable_di (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	13);
}

rtx
gen_consttable_sf (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	14);
}

rtx
gen_consttable_df (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	15);
}

rtx
gen_align_2 ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	16);
}

rtx
gen_align_4 ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	17);
}

rtx
gen_align_8 ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	18);
}

rtx
gen_leasi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_leadi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	operand1);
}

rtx
gen_addsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* The mips16 assembler handles -32768 correctly, and so does gas,
     but some other MIPS assemblers think that -32768 needs to be
     loaded into a register before it can be added in.  */
  if (! TARGET_MIPS16
      && ! TARGET_GAS
      && GET_CODE (operands[2]) == CONST_INT
      && INTVAL (operands[2]) == -32768)
    operands[2] = force_reg (SImode, operands[2]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_329 PARAMS ((rtx *));
rtx
gen_split_329 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val >= 0)
    {
      operands[1] = GEN_INT (0x7f);
      operands[2] = GEN_INT (val - 0x7f);
    }
  else
    {
      operands[1] = GEN_INT (- 0x80);
      operands[2] = GEN_INT (val + 0x80);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_330 PARAMS ((rtx *));
rtx
gen_split_330 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[2]);

  if (val >= 0)
    {
      operands[2] = GEN_INT (0x7);
      operands[3] = GEN_INT (val - 0x7);
    }
  else
    {
      operands[2] = GEN_INT (- 0x8);
      operands[3] = GEN_INT (val + 0x8);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_adddi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* The mips16 assembler handles -32768 correctly, and so does gas,
     but some other MIPS assemblers think that -32768 needs to be
     loaded into a register before it can be added in.  */
  if (! TARGET_MIPS16
      && ! TARGET_GAS
      && GET_CODE (operands[2]) == CONST_INT
      && INTVAL (operands[2]) == -32768)
    operands[2] = force_reg (DImode, operands[2]);

  if (TARGET_64BIT)
    {
      emit_insn (gen_adddi3_internal_3 (operands[0], operands[1],
					operands[2]));
      DONE;
    }

  operands[3] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_332 PARAMS ((rtx *));
rtx
gen_split_332 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_333 PARAMS ((rtx *));
rtx
gen_split_333 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_334 PARAMS ((rtx *));
rtx
gen_split_334 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_335 PARAMS ((rtx *));
rtx
gen_split_335 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_PLUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_336 PARAMS ((rtx *));
rtx
gen_split_336 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val >= 0)
    {
      operands[1] = GEN_INT (0xf);
      operands[2] = GEN_INT (val - 0xf);
    }
  else
    {
      operands[1] = GEN_INT (- 0x10);
      operands[2] = GEN_INT (val + 0x10);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_337 PARAMS ((rtx *));
rtx
gen_split_337 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[2]);

  if (val >= 0)
    {
      operands[2] = GEN_INT (0x7);
      operands[3] = GEN_INT (val - 0x7);
    }
  else
    {
      operands[2] = GEN_INT (- 0x8);
      operands[3] = GEN_INT (val + 0x8);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_subsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (GET_CODE (operands[2]) == CONST_INT
      && (INTVAL (operands[2]) == -32768
	  || (TARGET_MIPS16
	      && INTVAL (operands[2]) == -0x4000)))
    operands[2] = force_reg (SImode, operands[2]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_339 PARAMS ((rtx *));
rtx
gen_split_339 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val >= 0)
    {
      operands[1] = GEN_INT (0x80);
      operands[2] = GEN_INT (val - 0x80);
    }
  else
    {
      operands[1] = GEN_INT (- 0x7f);
      operands[2] = GEN_INT (val + 0x7f);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_340 PARAMS ((rtx *));
rtx
gen_split_340 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[2]);

  if (val >= 0)
    {
      operands[2] = GEN_INT (0x8);
      operands[3] = GEN_INT (val - 0x8);
    }
  else
    {
      operands[2] = GEN_INT (- 0x7);
      operands[3] = GEN_INT (val + 0x7);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_subdi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_64BIT)
    {
      emit_insn (gen_subdi3_internal_3 (operands[0], operands[1],
					operands[2]));
      DONE;
    }

  operands[3] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_342 PARAMS ((rtx *));
rtx
gen_split_342 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_343 PARAMS ((rtx *));
rtx
gen_split_343 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_344 PARAMS ((rtx *));
rtx
gen_split_344 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_345 PARAMS ((rtx *));
rtx
gen_split_345 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LTU (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_MINUS (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_346 PARAMS ((rtx *));
rtx
gen_split_346 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val >= 0)
    {
      operands[1] = GEN_INT (0xf);
      operands[2] = GEN_INT (val - 0xf);
    }
  else
    {
      operands[1] = GEN_INT (- 0x10);
      operands[2] = GEN_INT (val + 0x10);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_347 PARAMS ((rtx *));
rtx
gen_split_347 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[2]);

  if (val >= 0)
    {
      operands[2] = GEN_INT (0x8);
      operands[3] = GEN_INT (val - 0x8);
    }
  else
    {
      operands[2] = GEN_INT (- 0x7);
      operands[3] = GEN_INT (val + 0x7);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_muldf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (mips_cpu != PROCESSOR_R4300)
    emit_insn (gen_muldf3_internal (operands[0], operands[1], operands[2]));
  else
    emit_insn (gen_muldf3_r4300 (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DFmode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_mulsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (mips_cpu != PROCESSOR_R4300)
    emit_insn( gen_mulsf3_internal (operands[0], operands[1], operands[2]));
  else
    emit_insn( gen_mulsf3_r4300 (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SFmode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_mulsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (HAVE_mulsi3_mult3)
    emit_insn (gen_mulsi3_mult3 (operands[0], operands[1], operands[2]));
  else if (mips_cpu != PROCESSOR_R4000 || TARGET_MIPS16)
    emit_insn (gen_mulsi3_internal (operands[0], operands[1], operands[2]));
  else
    emit_insn (gen_mulsi3_r4000 (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_351 PARAMS ((rtx *));
rtx
gen_split_351 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx operand7;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  operand6 = operands[6];
  operand7 = operands[7];
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (4,
		gen_rtx_SET (VOIDmode,
	operand7,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4),
		gen_rtx_CLOBBER (VOIDmode,
	operand5),
		gen_rtx_CLOBBER (VOIDmode,
	operand6))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand7,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_352 PARAMS ((rtx *));
rtx
gen_split_352 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx operand7;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  operand6 = operands[6];
  operand7 = operands[7];
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (4,
		gen_rtx_SET (VOIDmode,
	operand7,
	gen_rtx_MULT (SImode,
	operand2,
	operand3)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4),
		gen_rtx_CLOBBER (VOIDmode,
	operand5),
		gen_rtx_CLOBBER (VOIDmode,
	operand6))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (SImode,
	operand1,
	operand7)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_muldi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (GENERATE_MULT3 || mips_cpu == PROCESSOR_R4000 || TARGET_MIPS16)
    emit_insn (gen_muldi3_internal2 (operands[0], operands[1], operands[2]));
  else
    emit_insn (gen_muldi3_internal (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_mulsidi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx dummy = gen_rtx (SIGN_EXTEND, DImode, const0_rtx);
  if (TARGET_64BIT)
    emit_insn (gen_mulsidi3_64bit (operands[0], operands[1], operands[2],
				   dummy, dummy));
  else
    emit_insn (gen_mulsidi3_internal (operands[0], operands[1], operands[2],
				      dummy, dummy));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1),
	gen_rtx_SIGN_EXTEND (DImode,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umulsidi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx dummy = gen_rtx (ZERO_EXTEND, DImode, const0_rtx);
  if (TARGET_64BIT)
    emit_insn (gen_mulsidi3_64bit (operands[0], operands[1], operands[2],
				   dummy, dummy));
  else
    emit_insn (gen_mulsidi3_internal (operands[0], operands[1], operands[2],
				      dummy, dummy));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1),
	gen_rtx_ZERO_EXTEND (DImode,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_smulsi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx dummy = gen_rtx (SIGN_EXTEND, DImode, const0_rtx);
  rtx dummy2 = gen_rtx_LSHIFTRT (DImode, const0_rtx, const0_rtx);
#ifndef NO_MD_PROTOTYPES
  rtx (*genfn) PARAMS ((rtx, rtx, rtx, rtx, rtx, rtx));
#else
  rtx (*genfn) ();
#endif
  genfn = gen_xmulsi3_highpart_internal;
  emit_insn ((*genfn) (operands[0], operands[1], operands[2], dummy,
		       dummy, dummy2));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (SImode,
	gen_rtx_LSHIFTRT (DImode,
	gen_rtx_MULT (DImode,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1),
	gen_rtx_SIGN_EXTEND (DImode,
	operand2)),
	GEN_INT (32)))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umulsi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx dummy = gen_rtx (ZERO_EXTEND, DImode, const0_rtx);
  rtx dummy2 = gen_rtx_LSHIFTRT (DImode, const0_rtx, const0_rtx);
#ifndef NO_MD_PROTOTYPES
  rtx (*genfn) PARAMS ((rtx, rtx, rtx, rtx, rtx, rtx));
#else
  rtx (*genfn) ();
#endif
  genfn = gen_xmulsi3_highpart_internal;
  emit_insn ((*genfn) (operands[0], operands[1], operands[2], dummy,
		       dummy, dummy2));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (SImode,
	gen_rtx_LSHIFTRT (DImode,
	gen_rtx_MULT (DImode,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1),
	gen_rtx_ZERO_EXTEND (DImode,
	operand2)),
	GEN_INT (32)))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_divmodsi4 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  emit_insn (gen_divmodsi4_internal (operands[0], operands[1], operands[2],
	     operands[3]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
    operand6 = operands[6];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_MOD (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_divmoddi4 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  emit_insn (gen_divmoddi4_internal (operands[0], operands[1], operands[2],
             operands[3]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
    operand6 = operands[6];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_MOD (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_udivmodsi4 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  emit_insn (gen_udivmodsi4_internal (operands[0], operands[1], operands[2],
                                      operands[3]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
    operand6 = operands[6];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_UMOD (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_udivmoddi4 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  emit_insn (gen_udivmoddi4_internal (operands[0], operands[1], operands[2],
                                      operands[3]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
    operand6 = operands[6];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_UMOD (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_div_trap (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_MIPS16)
    emit_insn (gen_div_trap_mips16 (operands[0],operands[1],operands[2]));
  else
    emit_insn (gen_div_trap_normal (operands[0],operands[1],operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_TRAP_IF (VOIDmode,
	gen_rtx_EQ (VOIDmode,
	operand0,
	operand1),
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_divsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_divsi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_divdi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_divdi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_DIV (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_modsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_modsi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (SImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MOD (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_moddi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_moddi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  if (TARGET_CHECK_RANGE_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (-1)),
			       GEN_INT (0x6)));
      emit_insn (gen_div_trap (operands[2],
			       copy_to_mode_reg (DImode, GEN_INT (0x80000000)),
			       GEN_INT (0x6)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MOD (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_udivsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_udivsi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_udivdi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_udivdi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UDIV (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umodsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_umodsi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UMOD (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umoddi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  emit_insn (gen_umoddi3_internal (operands[0], operands[1], operands[2]));
  if (!TARGET_NO_CHECK_ZERO_DIV)
    {
      emit_insn (gen_div_trap (operands[2],
			       GEN_INT (0),
			       GEN_INT (0x7)));
    }
  
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UMOD (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_negdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_64BIT)
    {
      emit_insn (gen_negdi2_internal_2 (operands[0], operands[1]));
      DONE;
    }

  operands[2] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_372 PARAMS ((rtx *));
rtx
gen_split_372 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_andsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_MIPS16)
    operands[2] = force_reg (SImode, operands[2]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_AND (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_anddi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_MIPS16)
    operands[2] = force_reg (DImode, operands[2]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_AND (DImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_375 PARAMS ((rtx *));
rtx
gen_split_375 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_AND (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_AND (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_iorsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_MIPS16)
    operands[2] = force_reg (SImode, operands[2]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IOR (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_iordi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IOR (DImode,
	operand1,
	operand2));
}

extern rtx gen_split_378 PARAMS ((rtx *));
rtx
gen_split_378 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_xorsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand1,
	operand2));
}

rtx
gen_xordi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand1,
	operand2));
}

extern rtx gen_split_381 PARAMS ((rtx *));
rtx
gen_split_381 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_XOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	gen_rtx_SUBREG (SImode,
	operand2,
	0))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_XOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	gen_rtx_SUBREG (SImode,
	operand2,
	1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_382 PARAMS ((rtx *));
rtx
gen_split_382 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_AND (SImode,
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0)),
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand2,
	0)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_AND (SImode,
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1)),
	gen_rtx_NOT (SImode,
	gen_rtx_SUBREG (SImode,
	operand2,
	1)))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendsidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if ((optimize || TARGET_MIPS16) && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op1   = gen_lowpart (DImode, operands[1]);
      rtx temp  = gen_reg_rtx (DImode);
      rtx shift = GEN_INT (32);

      emit_insn (gen_ashldi3 (temp, op1, shift));
      emit_insn (gen_lshrdi3 (operands[0], temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendhisi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_MIPS16 && GET_CODE (operands[1]) != MEM)
    {
      rtx op = gen_lowpart (SImode, operands[1]);
      rtx temp = force_reg (SImode, GEN_INT (0xffff));

      emit_insn (gen_andsi3 (operands[0], op, temp));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendhidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_MIPS16 && GET_CODE (operands[1]) != MEM)
    {
      rtx op = gen_lowpart (DImode, operands[1]);
      rtx temp = force_reg (DImode, GEN_INT (0xffff));

      emit_insn (gen_anddi3 (operands[0], op, temp));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendqihi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_MIPS16 && GET_CODE (operands[1]) != MEM)
    {
      rtx op0 = gen_lowpart (SImode, operands[0]);
      rtx op1 = gen_lowpart (SImode, operands[1]);
      rtx temp = force_reg (SImode, GEN_INT (0xff));

      emit_insn (gen_andsi3 (op0, op1, temp));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (HImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendqisi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_MIPS16 && GET_CODE (operands[1]) != MEM)
    {
      rtx op = gen_lowpart (SImode, operands[1]);
      rtx temp = force_reg (SImode, GEN_INT (0xff));

      emit_insn (gen_andsi3 (operands[0], op, temp));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_zero_extendqidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (TARGET_MIPS16 && GET_CODE (operands[1]) != MEM)
    {
      rtx op = gen_lowpart (DImode, operands[1]);
      rtx temp = force_reg (DImode, GEN_INT (0xff));

      emit_insn (gen_anddi3 (operands[0], op, temp));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extendhidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (optimize && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op1   = gen_lowpart (DImode, operands[1]);
      rtx temp  = gen_reg_rtx (DImode);
      rtx shift = GEN_INT (48);

      emit_insn (gen_ashldi3 (temp, op1, shift));
      emit_insn (gen_ashrdi3 (operands[0], temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extendhisi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (optimize && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op1   = gen_lowpart (SImode, operands[1]);
      rtx temp  = gen_reg_rtx (SImode);
      rtx shift = GEN_INT (16);

      emit_insn (gen_ashlsi3 (temp, op1, shift));
      emit_insn (gen_ashrsi3 (operands[0], temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extendqihi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (optimize && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op0   = gen_lowpart (SImode, operands[0]);
      rtx op1   = gen_lowpart (SImode, operands[1]);
      rtx temp  = gen_reg_rtx (SImode);
      rtx shift = GEN_INT (24);

      emit_insn (gen_ashlsi3 (temp, op1, shift));
      emit_insn (gen_ashrsi3 (op0, temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (HImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extendqisi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (optimize && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op1   = gen_lowpart (SImode, operands[1]);
      rtx temp  = gen_reg_rtx (SImode);
      rtx shift = GEN_INT (24);

      emit_insn (gen_ashlsi3 (temp, op1, shift));
      emit_insn (gen_ashrsi3 (operands[0], temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extendqidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (optimize && GET_CODE (operands[1]) == MEM)
    operands[1] = force_not_mem (operands[1]);

  if (GET_CODE (operands[1]) != MEM)
    {
      rtx op1   = gen_lowpart (DImode, operands[1]);
      rtx temp  = gen_reg_rtx (DImode);
      rtx shift = GEN_INT (56);

      emit_insn (gen_ashldi3 (temp, op1, shift));
      emit_insn (gen_ashrdi3 (operands[0], temp, shift));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fixuns_truncdfsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  rtx reg1 = gen_reg_rtx (DFmode);
  rtx reg2 = gen_reg_rtx (DFmode);
  rtx reg3 = gen_reg_rtx (SImode);
  rtx label1 = gen_label_rtx ();
  rtx label2 = gen_label_rtx ();
  REAL_VALUE_TYPE offset = REAL_VALUE_LDEXP (1.0, 31);

  if (reg1)			/* turn off complaints about unreached code */
    {
      emit_move_insn (reg1, immed_real_const_1 (offset, DFmode));
      do_pending_stack_adjust ();

      emit_insn (gen_cmpdf (operands[1], reg1));
      emit_jump_insn (gen_bge (label1));

      emit_insn (gen_fix_truncdfsi2 (operands[0], operands[1]));
      emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx,
				   gen_rtx_LABEL_REF (VOIDmode, label2)));
      emit_barrier ();

      emit_label (label1);
      emit_move_insn (reg2, gen_rtx_MINUS (DFmode, operands[1], reg1));
      emit_move_insn (reg3, GEN_INT (0x80000000));

      emit_insn (gen_fix_truncdfsi2 (operands[0], reg2));
      emit_insn (gen_iorsi3 (operands[0], operands[0], reg3));

      emit_label (label2);

      /* allow REG_NOTES to be set on last insn (labels don't have enough
	 fields, and can't be used for REG_NOTES anyway).  */
      emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fixuns_truncdfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  rtx reg1 = gen_reg_rtx (DFmode);
  rtx reg2 = gen_reg_rtx (DFmode);
  rtx reg3 = gen_reg_rtx (DImode);
  rtx label1 = gen_label_rtx ();
  rtx label2 = gen_label_rtx ();
  REAL_VALUE_TYPE offset = REAL_VALUE_LDEXP (1.0, 63);

  if (reg1)			/* turn off complaints about unreached code */
    {
      emit_move_insn (reg1, immed_real_const_1 (offset, DFmode));
      do_pending_stack_adjust ();

      emit_insn (gen_cmpdf (operands[1], reg1));
      emit_jump_insn (gen_bge (label1));

      emit_insn (gen_fix_truncdfdi2 (operands[0], operands[1]));
      emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx,
				   gen_rtx_LABEL_REF (VOIDmode, label2)));
      emit_barrier ();

      emit_label (label1);
      emit_move_insn (reg2, gen_rtx_MINUS (DFmode, operands[1], reg1));
      emit_move_insn (reg3, GEN_INT (0x80000000));
      emit_insn (gen_ashldi3 (reg3, reg3, GEN_INT (32)));

      emit_insn (gen_fix_truncdfdi2 (operands[0], reg2));
      emit_insn (gen_iordi3 (operands[0], operands[0], reg3));

      emit_label (label2);

      /* allow REG_NOTES to be set on last insn (labels don't have enough
	 fields, and can't be used for REG_NOTES anyway).  */
      emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fixuns_truncsfsi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  rtx reg1 = gen_reg_rtx (SFmode);
  rtx reg2 = gen_reg_rtx (SFmode);
  rtx reg3 = gen_reg_rtx (SImode);
  rtx label1 = gen_label_rtx ();
  rtx label2 = gen_label_rtx ();
  REAL_VALUE_TYPE offset = REAL_VALUE_LDEXP (1.0, 31);

  if (reg1)			/* turn off complaints about unreached code */
    {
      emit_move_insn (reg1, immed_real_const_1 (offset, SFmode));
      do_pending_stack_adjust ();

      emit_insn (gen_cmpsf (operands[1], reg1));
      emit_jump_insn (gen_bge (label1));

      emit_insn (gen_fix_truncsfsi2 (operands[0], operands[1]));
      emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx,
				   gen_rtx_LABEL_REF (VOIDmode, label2)));
      emit_barrier ();

      emit_label (label1);
      emit_move_insn (reg2, gen_rtx_MINUS (SFmode, operands[1], reg1));
      emit_move_insn (reg3, GEN_INT (0x80000000));

      emit_insn (gen_fix_truncsfsi2 (operands[0], reg2));
      emit_insn (gen_iorsi3 (operands[0], operands[0], reg3));

      emit_label (label2);

      /* allow REG_NOTES to be set on last insn (labels don't have enough
	 fields, and can't be used for REG_NOTES anyway).  */
      emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fixuns_truncsfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  rtx reg1 = gen_reg_rtx (SFmode);
  rtx reg2 = gen_reg_rtx (SFmode);
  rtx reg3 = gen_reg_rtx (DImode);
  rtx label1 = gen_label_rtx ();
  rtx label2 = gen_label_rtx ();
  REAL_VALUE_TYPE offset = REAL_VALUE_LDEXP (1.0, 63);

  if (reg1)			/* turn off complaints about unreached code */
    {
      emit_move_insn (reg1, immed_real_const_1 (offset, SFmode));
      do_pending_stack_adjust ();

      emit_insn (gen_cmpsf (operands[1], reg1));
      emit_jump_insn (gen_bge (label1));

      emit_insn (gen_fix_truncsfdi2 (operands[0], operands[1]));
      emit_jump_insn (gen_rtx_SET (VOIDmode, pc_rtx,
				   gen_rtx_LABEL_REF (VOIDmode, label2)));
      emit_barrier ();

      emit_label (label1);
      emit_move_insn (reg2, gen_rtx_MINUS (SFmode, operands[1], reg1));
      emit_move_insn (reg3, GEN_INT (0x80000000));
      emit_insn (gen_ashldi3 (reg3, reg3, GEN_INT (32)));

      emit_insn (gen_fix_truncsfdi2 (operands[0], reg2));
      emit_insn (gen_iordi3 (operands[0], operands[0], reg3));

      emit_label (label2);

      /* allow REG_NOTES to be set on last insn (labels don't have enough
	 fields, and can't be used for REG_NOTES anyway).  */
      emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (DImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extv (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  /* If the field does not start on a byte boundary, then fail.  */
  if (INTVAL (operands[3]) % 8 != 0) 
    FAIL;

  /* MIPS I and MIPS II can only handle a 32bit field.  */
  if (!TARGET_64BIT && INTVAL (operands[2]) != 32)
    FAIL;

  /* MIPS III and MIPS IV can handle both 32bit and 64bit fields.  */
  if (TARGET_64BIT
      && INTVAL (operands[2]) != 64
      && INTVAL (operands[2]) != 32)
    FAIL;

  /* This can happen for a 64 bit target, when extracting a value from
     a 64 bit union member.  extract_bit_field doesn't verify that our
     source matches the predicate, so we force it to be a MEM here.  */
  if (GET_CODE (operands[1]) != MEM)
    FAIL;

  /* Change the mode to BLKmode for aliasing purposes.  */
  operands[1] = change_address (operands[1], BLKmode, XEXP (operands[1], 0));

  /* Otherwise, emit a l[wd]l/l[wd]r pair to load the value.  */
  if (INTVAL (operands[2]) == 64)
    emit_insn (gen_movdi_uld (operands[0], operands[1]));
  else
    {
      if (TARGET_64BIT)
	{
	  operands[0] = gen_lowpart (SImode, operands[0]);
	  if (operands[0] == NULL_RTX)
	    FAIL;
	}
      emit_insn (gen_movsi_ulw (operands[0], operands[1]));
    }
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTRACT (VOIDmode,
	operand1,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_extzv (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  /* If the field does not start on a byte boundary, then fail.  */
  if (INTVAL (operands[3]) % 8 != 0) 
    FAIL;

  /* MIPS I and MIPS II can only handle a 32bit field.  */
  if (!TARGET_64BIT && INTVAL (operands[2]) != 32)
    FAIL;

  /* MIPS III and MIPS IV can handle both 32bit and 64bit fields.  */
  if (TARGET_64BIT
      && INTVAL (operands[2]) != 64
      && INTVAL (operands[2]) != 32)
    FAIL;

  /* This can happen for a 64 bit target, when extracting a value from
     a 64 bit union member.  extract_bit_field doesn't verify that our
     source matches the predicate, so we force it to be a MEM here.  */
  if (GET_CODE (operands[1]) != MEM)
    FAIL;

  /* Change the mode to BLKmode for aliasing purposes.  */
  operands[1] = change_address (operands[1], BLKmode, XEXP (operands[1], 0));

  /* Otherwise, emit a lwl/lwr pair to load the value.  */
  if (INTVAL (operands[2]) == 64)
    emit_insn (gen_movdi_uld (operands[0], operands[1]));
  else
    {
      if (TARGET_64BIT)
	{
	  operands[0] = gen_lowpart (SImode, operands[0]);
	  if (operands[0] == NULL_RTX)
	    FAIL;
	}
      emit_insn (gen_movsi_ulw (operands[0], operands[1]));
    }
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTRACT (VOIDmode,
	operand1,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_insv (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  /* If the field does not start on a byte boundary, then fail.  */
  if (INTVAL (operands[2]) % 8 != 0) 
    FAIL;

  /* MIPS I and MIPS II can only handle a 32bit field.  */
  if (!TARGET_64BIT && INTVAL (operands[1]) != 32)
    FAIL;

  /* MIPS III and MIPS IV can handle both 32bit and 64bit fields.  */
  if (TARGET_64BIT
      && INTVAL (operands[1]) != 64
      && INTVAL (operands[1]) != 32)
    FAIL;

  /* This can happen for a 64 bit target, when storing into a 32 bit union
     member.  store_bit_field doesn't verify that our target matches the
     predicate, so we force it to be a MEM here.  */
  if (GET_CODE (operands[0]) != MEM)
    FAIL;

  /* Change the mode to BLKmode for aliasing purposes.  */
  operands[0] = change_address (operands[0], BLKmode, XEXP (operands[0], 0));

  /* Otherwise, emit a s[wd]l/s[wd]r pair to load the value.  */
  if (INTVAL (operands[1]) == 64)
    emit_insn (gen_movdi_usd (operands[0], operands[3]));
  else
    {
      if (TARGET_64BIT)
	{
	  operands[3] = gen_lowpart (SImode, operands[3]);
	  if (operands[3] == NULL_RTX)
	    FAIL;
	}
      emit_insn (gen_movsi_usw (operands[0], operands[3]));
    }
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (VOIDmode,
	operand0,
	operand1,
	operand2),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movdi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (mips_split_addresses && mips_check_split (operands[1], DImode))
    {
      enum machine_mode mode = GET_MODE (operands[0]);
      rtx tem = ((reload_in_progress | reload_completed)
		 ? operands[0] : gen_reg_rtx (mode));

      emit_insn (gen_rtx_SET (VOIDmode, tem,
			      gen_rtx_HIGH (mode, operands[1])));

      operands[1] = gen_rtx_LO_SUM (mode, tem, operands[1]);
    }

  /* If we are generating embedded PIC code, and we are referring to a
     symbol in the .text section, we must use an offset from the start
     of the function.  */
  if (TARGET_EMBEDDED_PIC
      && (GET_CODE (operands[1]) == LABEL_REF
	  || (GET_CODE (operands[1]) == SYMBOL_REF
	      && ! SYMBOL_REF_FLAG (operands[1]))))
    {
      rtx temp;

      temp = embedded_pic_offset (operands[1]);
      temp = gen_rtx_PLUS (Pmode, embedded_pic_fnaddr_rtx,
			   force_reg (DImode, temp));
      emit_move_insn (operands[0], force_reg (DImode, temp));
      DONE;
    }

  /* If operands[1] is a constant address illegal for pic, then we need to
     handle it just like LEGITIMIZE_ADDRESS does.  */
  if (flag_pic && pic_address_needs_scratch (operands[1]))
    {
      rtx temp = force_reg (DImode, XEXP (XEXP (operands[1], 0), 0));
      rtx temp2 = XEXP (XEXP (operands[1], 0), 1);

      if (! SMALL_INT (temp2))
	temp2 = force_reg (DImode, temp2);

      emit_move_insn (operands[0], gen_rtx_PLUS (DImode, temp, temp2));
      DONE;
    }

  /* On the mips16, we can handle a GP relative reference by adding in
     $gp.  We need to check the name to see whether this is a string
     constant.  */
  if (TARGET_MIPS16
      && register_operand (operands[0], DImode)
      && GET_CODE (operands[1]) == SYMBOL_REF
      && SYMBOL_REF_FLAG (operands[1]))
    {
      const char *name = XSTR (operands[1], 0);

      if (name[0] != '*'
	  || strncmp (name + 1, LOCAL_LABEL_PREFIX,
		      sizeof LOCAL_LABEL_PREFIX - 1) != 0)
	{
	  rtx base_reg;

	  if (reload_in_progress || reload_completed)
	    {
	      /* In movsi we use the constant table here.  However, in
                 this case, we're better off copying $28 into a
                 register and adding, because the constant table entry
                 would be 8 bytes.  */
	      base_reg = operands[0];
	      emit_move_insn (base_reg,
			      gen_rtx (CONST, DImode,
				       gen_rtx (REG, DImode,
						GP_REG_FIRST + 28)));
	    }
	  else
	    {
	      base_reg = gen_reg_rtx (Pmode);
	      emit_move_insn (base_reg, mips16_gp_pseudo_reg ());
	    }

	  emit_move_insn (operands[0],
			  gen_rtx (PLUS, Pmode, base_reg,
				   mips16_gp_offset (operands[1])));
	  DONE;
	}
    }

  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], DImode)
      && !register_operand (operands[1], DImode)
      && (TARGET_MIPS16
	  || ((GET_CODE (operands[1]) != CONST_INT || INTVAL (operands[1]) != 0)
	       && operands[1] != CONST0_RTX (DImode))))
    {
      rtx temp = force_reg (DImode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_402 PARAMS ((rtx *));
rtx
gen_split_402 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_SUBREG (SImode,
	operand1,
	0)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_SUBREG (SImode,
	operand1,
	1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_403 PARAMS ((rtx *));
rtx
gen_split_403 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val < 0)
    operands[2] = GEN_INT (0);
  else if (val >= 32 * 8)
    {
      int off = val & 7;

      operands[1] = GEN_INT (0x8 + off);
      operands[2] = GEN_INT (val - off - 0x8);
    }
  else
    {
      int off = val & 7;

      operands[1] = GEN_INT (off);
      operands[2] = GEN_INT (val - off);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (DImode,
	gen_rtx_PLUS (DImode,
	operand0,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_indi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx scratch = gen_rtx_REG (DImode,
			     (REGNO (operands[0]) == REGNO (operands[2]) 
			      ? REGNO (operands[2]) + 1
			      : REGNO (operands[2])));

  if (GET_CODE (operands[0]) == REG && REGNO (operands[0]) == HILO_REGNUM)
    {
      if (GET_CODE (operands[1]) == MEM)
	{
	  rtx memword, offword, hiword, loword;
	  rtx addr = find_replacement (&XEXP (operands[1], 0));
	  rtx op1 = change_address (operands[1], VOIDmode, addr);

	  scratch = gen_rtx_REG (SImode, REGNO (scratch));
	  memword = change_address (op1, SImode, NULL_RTX);
	  offword = change_address (adj_offsettable_operand (op1, 4),
				    SImode, NULL_RTX);
	  if (BYTES_BIG_ENDIAN)
	    {
	      hiword = memword;
	      loword = offword;
	    }
	  else
	    {
	      hiword = offword;
	      loword = memword;
	    }
	  emit_move_insn (scratch, hiword);
	  emit_move_insn (gen_rtx_REG (SImode, 64), scratch);
	  emit_move_insn (scratch, loword);
	  emit_move_insn (gen_rtx (REG, SImode, 65), scratch);
          emit_insn (gen_rtx_USE (VOIDmode, operands[0]));
	}
      else
	{
	  emit_insn (gen_ashrdi3 (scratch, operands[1], GEN_INT (32)));
	  emit_insn (gen_movdi (gen_rtx_REG (DImode, 64), scratch));
	  emit_insn (gen_ashldi3 (scratch, operands[1], GEN_INT (32)));
	  emit_insn (gen_ashrdi3 (scratch, scratch, GEN_INT (32)));
	  emit_insn (gen_movdi (gen_rtx (REG, DImode, 65), scratch));
          emit_insn (gen_rtx_USE (VOIDmode, operands[0]));
	}
      DONE;
    }
  if (GET_CODE (operands[1]) == REG && REGNO (operands[1]) == HILO_REGNUM)
    {
      emit_insn (gen_movdi (scratch, gen_rtx_REG (DImode, 65)));
      emit_insn (gen_ashldi3 (scratch, scratch, GEN_INT (32)));
      emit_insn (gen_lshrdi3 (scratch, scratch, GEN_INT (32)));
      emit_insn (gen_movdi (operands[0], gen_rtx_REG (DImode, 64)));
      emit_insn (gen_ashldi3 (operands[0], operands[0], GEN_INT (32)));
      emit_insn (gen_iordi3 (operands[0], operands[0], scratch));
      emit_insn (gen_rtx_USE (VOIDmode, operands[1]));
      DONE;
    }
  /* This handles moves between a float register and HI/LO.  */
  emit_move_insn (scratch, operands[1]);
  emit_move_insn (operands[0], scratch);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_outdi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx scratch = gen_rtx_REG (DImode, REGNO (operands[2]));

  if (GET_CODE (operands[0]) == REG && REGNO (operands[0]) == HILO_REGNUM)
    {
      emit_insn (gen_ashrdi3 (scratch, operands[1], GEN_INT (32)));
      emit_insn (gen_movdi (gen_rtx (REG, DImode, 64), scratch));
      emit_insn (gen_ashldi3 (scratch, operands[1], GEN_INT (32)));
      emit_insn (gen_ashrdi3 (scratch, scratch, GEN_INT (32)));
      emit_insn (gen_movdi (gen_rtx (REG, DImode, 65), scratch));
      emit_insn (gen_rtx_USE (VOIDmode, operands[0]));
      DONE;
    }
  if (GET_CODE (operands[1]) == REG && REGNO (operands[1]) == HILO_REGNUM)
    {
      if (GET_CODE (operands[0]) == MEM)
	{
	  rtx scratch, memword, offword, hiword, loword;
	  rtx addr = find_replacement (&XEXP (operands[0], 0));
	  rtx op0 = change_address (operands[0], VOIDmode, addr);

	  scratch = gen_rtx_REG (SImode, REGNO (operands[2]));
	  memword = change_address (op0, SImode, NULL_RTX);
	  offword = change_address (adj_offsettable_operand (op0, 4),
				    SImode, NULL_RTX);
	  if (BYTES_BIG_ENDIAN)
	    {
	      hiword = memword;
	      loword = offword;
	    }
	  else
	    {
	      hiword = offword;
	      loword = memword;
	    }
	  emit_move_insn (scratch, gen_rtx_REG (SImode, 64));
	  emit_move_insn (hiword, scratch);
	  emit_move_insn (scratch, gen_rtx_REG (SImode, 65));
	  emit_move_insn (loword, scratch);
	  emit_insn (gen_rtx_USE (VOIDmode, operands[1]));
	}
      else if (TARGET_MIPS16 && ! M16_REG_P (REGNO (operands[0])))
	{
	  /* Handle the case where operand[0] is not a 'd' register,
	     and hence we can not directly move from the HILO register
	     into it.  */
	  rtx scratch2 = gen_rtx_REG (DImode, REGNO (operands[2]) + 1);
	  emit_insn (gen_movdi (scratch, gen_rtx (REG, DImode, 65)));
	  emit_insn (gen_ashldi3 (scratch, scratch, GEN_INT (32)));
	  emit_insn (gen_lshrdi3 (scratch, scratch, GEN_INT (32)));
	  emit_insn (gen_movdi (scratch2, gen_rtx (REG, DImode, 64)));
	  emit_insn (gen_ashldi3 (scratch2, scratch2, GEN_INT (32)));
	  emit_insn (gen_iordi3 (scratch, scratch, scratch2));
	  emit_insn (gen_movdi (operands[0], scratch));
	  emit_insn (gen_rtx_USE (VOIDmode, operands[1]));
	}
      else
	{
	  emit_insn (gen_movdi (scratch, gen_rtx (REG, DImode, 65)));
	  emit_insn (gen_ashldi3 (scratch, scratch, GEN_INT (32)));
	  emit_insn (gen_lshrdi3 (scratch, scratch, GEN_INT (32)));
	  emit_insn (gen_movdi (operands[0], gen_rtx (REG, DImode, 64)));
	  emit_insn (gen_ashldi3 (operands[0], operands[0], GEN_INT (32)));
	  emit_insn (gen_iordi3 (operands[0], operands[0], scratch));
	  emit_insn (gen_rtx_USE (VOIDmode, operands[1]));
	}
      DONE;
    }
  /* This handles moves between a float register and HI/LO.  */
  emit_move_insn (scratch, operands[1]);
  emit_move_insn (operands[0], scratch);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_406 PARAMS ((rtx *));
rtx
gen_split_406 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[1]) & 0xffff0000);
  operands[3] = GEN_INT (INTVAL (operands[1]) & 0x0000ffff);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand2));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IOR (SImode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movsi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (mips_split_addresses && mips_check_split (operands[1], SImode))
    {
      enum machine_mode mode = GET_MODE (operands[0]);
      rtx tem = ((reload_in_progress | reload_completed)
		 ? operands[0] : gen_reg_rtx (mode));

      emit_insn (gen_rtx_SET (VOIDmode, tem,
			      gen_rtx_HIGH (mode, operands[1])));

      operands[1] = gen_rtx_LO_SUM (mode, tem, operands[1]);
    }

  /* If we are generating embedded PIC code, and we are referring to a
     symbol in the .text section, we must use an offset from the start
     of the function.  */
  if (TARGET_EMBEDDED_PIC
      && (GET_CODE (operands[1]) == LABEL_REF
	  || (GET_CODE (operands[1]) == SYMBOL_REF
	      && ! SYMBOL_REF_FLAG (operands[1]))))
    {
      rtx temp;

      temp = embedded_pic_offset (operands[1]);
      temp = gen_rtx_PLUS (Pmode, embedded_pic_fnaddr_rtx,
			   force_reg (SImode, temp));
      emit_move_insn (operands[0], force_reg (SImode, temp));
      DONE;
    }

  /* If operands[1] is a constant address invalid for pic, then we need to
     handle it just like LEGITIMIZE_ADDRESS does.  */
  if (flag_pic && pic_address_needs_scratch (operands[1]))
    {
      rtx temp = force_reg (SImode, XEXP (XEXP (operands[1], 0), 0));
      rtx temp2 = XEXP (XEXP (operands[1], 0), 1);

      if (! SMALL_INT (temp2))
	temp2 = force_reg (SImode, temp2);

      emit_move_insn (operands[0], gen_rtx_PLUS (SImode, temp, temp2));
      DONE;
    }

  /* On the mips16, we can handle a GP relative reference by adding in
     $gp.  We need to check the name to see whether this is a string
     constant.  */
  if (TARGET_MIPS16
      && register_operand (operands[0], SImode)
      && GET_CODE (operands[1]) == SYMBOL_REF
      && SYMBOL_REF_FLAG (operands[1]))
    {
      const char *name = XSTR (operands[1], 0);

      if (name[0] != '*'
	  || strncmp (name + 1, LOCAL_LABEL_PREFIX,
		      sizeof LOCAL_LABEL_PREFIX - 1) != 0)
	{
	  rtx base_reg;

	  if (reload_in_progress || reload_completed)
	    {
	      /* We need to reload this address.  In this case we
                 aren't going to have a chance to combine loading the
                 address with the load or store.  That means that we
                 can either generate a 2 byte move followed by a 4
                 byte addition, or a 2 byte load with a 4 byte entry
                 in the constant table.  Since the entry in the
                 constant table might be shared, we're better off, on
                 average, loading the address from the constant table.  */
	      emit_move_insn (operands[0],
			      force_const_mem (SImode, operands[1]));
	      DONE;
	    }

	  base_reg = gen_reg_rtx (Pmode);
	  emit_move_insn (base_reg, mips16_gp_pseudo_reg ());

	  emit_move_insn (operands[0],
			  gen_rtx (PLUS, Pmode, base_reg,
				   mips16_gp_offset (operands[1])));
	  DONE;
	}
    }

  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], SImode)
      && !register_operand (operands[1], SImode)
      && (TARGET_MIPS16
	  || GET_CODE (operands[1]) != CONST_INT
	  || INTVAL (operands[1]) != 0))
    {
      rtx temp = force_reg (SImode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_408 PARAMS ((rtx *));
rtx
gen_split_408 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val < 0)
    operands[2] = GEN_INT (0);
  else if (val >= 32 * 4)
    {
      int off = val & 3;

      operands[1] = GEN_INT (0x7c + off);
      operands[2] = GEN_INT (val - off - 0x7c);
    }
  else
    {
      int off = val & 3;

      operands[1] = GEN_INT (off);
      operands[2] = GEN_INT (val - off);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (SImode,
	gen_rtx_PLUS (SImode,
	operand0,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_409 PARAMS ((rtx *));
rtx
gen_split_409 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  int val = INTVAL (operands[1]);

  operands[1] = GEN_INT (0xff);
  operands[2] = GEN_INT (val - 0xff);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_410 PARAMS ((rtx *));
rtx
gen_split_410 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

{
  operands[1] = GEN_INT (- INTVAL (operands[1]));
}
  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand0)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_outsi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_64BIT
      && GET_CODE (operands[0]) == REG && REGNO (operands[0]) == HILO_REGNUM)
    {
      emit_insn (gen_movsi (gen_rtx_REG (SImode, 65), operands[1]));
      emit_insn (gen_ashrsi3 (operands[2], operands[1], GEN_INT (31)));
      emit_insn (gen_movsi (gen_rtx (REG, SImode, 64), operands[2]));
      emit_insn (gen_rtx_USE (VOIDmode, operands[0]));
      DONE;
    }
  /* Use a mult to reload LO on mips16.  ??? This is hideous.  */
  if (TARGET_MIPS16
      && GET_CODE (operands[0]) == REG && REGNO (operands[0]) == LO_REGNUM)
    {
      emit_insn (gen_movsi (operands[2], GEN_INT (1)));
      /* This is gen_mulsi3_internal, but we need to fill in the
	 scratch registers.  */
      emit_insn (gen_rtx (PARALLEL, VOIDmode,
			  gen_rtvec (3,
				     gen_rtx (SET, VOIDmode,
					      operands[0],
					      gen_rtx (MULT, SImode,
						       operands[1],
						       operands[2])),
				     gen_rtx (CLOBBER, VOIDmode,
					      gen_rtx (REG, SImode, 64)),
				     gen_rtx (CLOBBER, VOIDmode,
					      gen_rtx (REG, SImode, 66)))));
      DONE;
    }
  /* FIXME: I don't know how to get a value into the HI register.  */
  if (GET_CODE (operands[0]) == REG
      && (TARGET_MIPS16 ? M16_REG_P (REGNO (operands[0]))
	  : GP_REG_P (REGNO (operands[0]))))
    {
      emit_move_insn (operands[0], operands[1]);
      DONE;
    }
  /* This handles moves between a float register and HI/LO.  */
  emit_move_insn (operands[2], operands[1]);
  emit_move_insn (operands[0], operands[2]);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_insi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_MIPS16
      && GET_CODE (operands[0]) == REG && REGNO (operands[0]) == LO_REGNUM)
    {
      emit_insn (gen_movsi (operands[2], GEN_INT (1)));
      /* This is gen_mulsi3_internal, but we need to fill in the
	 scratch registers.  */
      emit_insn (gen_rtx (PARALLEL, VOIDmode,
			  gen_rtvec (3,
				     gen_rtx (SET, VOIDmode,
					      operands[0],
					      gen_rtx (MULT, SImode,
						       operands[1],
						       operands[2])),
				     gen_rtx (CLOBBER, VOIDmode,
					      gen_rtx (REG, SImode, 64)),
				     gen_rtx (CLOBBER, VOIDmode,
					      gen_rtx (REG, SImode, 66)))));
      DONE;
    }

  /* If this is a plus, then this must be an add of the stack pointer against
     either a hard register or a pseudo.  */
  if (TARGET_MIPS16 && GET_CODE (operands[1]) == PLUS)
    {
      rtx plus_op;

      if (XEXP (operands[1], 0) == stack_pointer_rtx)
	plus_op = XEXP (operands[1], 1);
      else if (XEXP (operands[1], 1) == stack_pointer_rtx)
	plus_op = XEXP (operands[1], 0);
      else
	abort ();

      /* We should have a register now.  */
      if (GET_CODE (plus_op) != REG)
	abort ();

      if (REGNO (plus_op) < FIRST_PSEUDO_REGISTER)
	{
	  /* We have to have at least one temporary register which is not
	     overlapping plus_op.  */
	  if (! rtx_equal_p (plus_op, operands[0]))
	    {
	      emit_move_insn (operands[0], stack_pointer_rtx);
	      emit_insn (gen_addsi3 (operands[0], operands[0], plus_op));
	    }
	  else if (! rtx_equal_p (plus_op, operands[2]))
	    {
	      emit_move_insn (operands[2], stack_pointer_rtx);
	      emit_insn (gen_addsi3 (operands[0], plus_op, operands[2]));
	    }
	  else
	    abort ();
	}
      else
	{
	  /* We need two registers in this case.  */
	  if (! rtx_equal_p (operands[0], operands[2]))
	    {
	      emit_move_insn (operands[0], stack_pointer_rtx);
	      emit_move_insn (operands[2], plus_op);
	      emit_insn (gen_addsi3 (operands[0], operands[0], operands[2]));
	    }
	  else
	    abort ();
	}
      DONE;
    }

  /* FIXME: I don't know how to get a value into the HI register.  */
  emit_move_insn (operands[0], operands[1]);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_incc (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  rtx source;
  rtx fp1, fp2;

  /* This is called when are copying some value into a condition code
     register.  Operand 0 is the condition code register.  Operand 1
     is the source.  Operand 2 is a scratch register; we use TFmode
     because we actually need two floating point registers.  */
  if (! ST_REG_P (true_regnum (operands[0]))
      || ! FP_REG_P (true_regnum (operands[2])))
    abort ();

  /* We need to get the source in SFmode so that the insn is
     recognized.  */
  if (GET_CODE (operands[1]) == MEM)
    source = change_address (operands[1], SFmode, NULL_RTX);
  else if (GET_CODE (operands[1]) == REG || GET_CODE (operands[1]) == SUBREG)
    source = gen_rtx_REG (SFmode, true_regnum (operands[1]));
  else
    source = operands[1];

  fp1 = gen_rtx_REG (SFmode, REGNO (operands[2]));
  fp2 = gen_rtx_REG (SFmode, REGNO (operands[2]) + 1);

  emit_insn (gen_move_insn (fp1, source));
  emit_insn (gen_move_insn (fp2, gen_rtx_REG (SFmode, 0)));
  emit_insn (gen_rtx_SET (VOIDmode, operands[0],
			  gen_rtx_LT (CCmode, fp2, fp1)));

  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_reload_outcc (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* This is called when we are copying a condition code register out
     to save it somewhere.  Operand 0 should be the location we are
     going to save it to.  Operand 1 should be the condition code
     register.  Operand 2 should be a scratch general purpose register
     created for us by reload.  The mips_secondary_reload_class
     function should have told reload that we don't need a scratch
     register if the destination is a general purpose register anyhow.  */
  if (ST_REG_P (true_regnum (operands[0]))
      || GP_REG_P (true_regnum (operands[0]))
      || ! ST_REG_P (true_regnum (operands[1]))
      || ! GP_REG_P (true_regnum (operands[2])))
    abort ();

  /* All we have to do is copy the value from the condition code to
     the data register, which movcc can handle, and then store the
     value into the real final destination.  */
  emit_insn (gen_move_insn (operands[2], operands[1]));
  emit_insn (gen_move_insn (operands[0], operands[2]));

  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_CLOBBER (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movhi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], HImode)
      && !register_operand (operands[1], HImode)
      && (TARGET_MIPS16
	  || (GET_CODE (operands[1]) != CONST_INT
	  || INTVAL (operands[1]) != 0)))
    {
      rtx temp = force_reg (HImode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_416 PARAMS ((rtx *));
rtx
gen_split_416 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val < 0)
    operands[2] = GEN_INT (0);
  else if (val >= 32 * 2)
    {
      int off = val & 1;

      operands[1] = GEN_INT (0x7e + off);
      operands[2] = GEN_INT (val - off - 0x7e);
    }
  else
    {
      int off = val & 1;

      operands[1] = GEN_INT (off);
      operands[2] = GEN_INT (val - off);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (HImode,
	gen_rtx_PLUS (SImode,
	operand0,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movqi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], QImode)
      && !register_operand (operands[1], QImode)
      && (TARGET_MIPS16
	  || (GET_CODE (operands[1]) != CONST_INT
	  || INTVAL (operands[1]) != 0)))
    {
      rtx temp = force_reg (QImode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_418 PARAMS ((rtx *));
rtx
gen_split_418 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  HOST_WIDE_INT val = INTVAL (operands[1]);

  if (val < 0)
    operands[2] = GEN_INT (0);
  else
    {
      operands[1] = GEN_INT (0x7f);
      operands[2] = GEN_INT (val - 0x7f);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (QImode,
	gen_rtx_PLUS (SImode,
	operand0,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movsf (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], SFmode)
      && !register_operand (operands[1], SFmode)
      && (TARGET_MIPS16
	  || ((GET_CODE (operands[1]) != CONST_INT || INTVAL (operands[1]) != 0)
	       && operands[1] != CONST0_RTX (SFmode))))
    {
      rtx temp = force_reg (SFmode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movdf (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if ((reload_in_progress | reload_completed) == 0
      && !register_operand (operands[0], DFmode)
      && !register_operand (operands[1], DFmode)
      && (TARGET_MIPS16
	  || ((GET_CODE (operands[1]) != CONST_INT || INTVAL (operands[1]) != 0)
	       && operands[1] != CONST0_RTX (DFmode))))
    {
      rtx temp = force_reg (DFmode, operands[1]);
      emit_move_insn (operands[0], temp);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_421 PARAMS ((rtx *));
rtx
gen_split_421 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_SUBREG (SImode,
	operand1,
	0)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_SUBREG (SImode,
	operand1,
	1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movstrsi (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  if (operands[0])		/* avoid unused code messages */
    {
      expand_block_move (operands);
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_423 PARAMS ((rtx *));
rtx
gen_split_423 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx operand7;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  operand6 = operands[6];
  operand7 = operands[7];
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (8,
		gen_rtx_SET (VOIDmode,
	gen_rtx_MEM (BLKmode,
	operand0),
	gen_rtx_MEM (BLKmode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4),
		gen_rtx_CLOBBER (VOIDmode,
	operand5),
		gen_rtx_CLOBBER (VOIDmode,
	operand6),
		gen_rtx_CLOBBER (VOIDmode,
	operand7),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	const1_rtx))));
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (8,
		gen_rtx_SET (VOIDmode,
	gen_rtx_MEM (BLKmode,
	operand0),
	gen_rtx_MEM (BLKmode,
	operand1)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4),
		gen_rtx_CLOBBER (VOIDmode,
	operand5),
		gen_rtx_CLOBBER (VOIDmode,
	operand6),
		gen_rtx_CLOBBER (VOIDmode,
	operand7),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	GEN_INT (2)))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ashlsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* On the mips16, a shift of more than 8 is a four byte instruction,
     so, for a shift between 8 and 16, it is just as fast to do two
     shifts of 8 or less.  If there is a lot of shifting going on, we
     may win in CSE.  Otherwise combine will put the shifts back
     together again.  This can be called by function_arg, so we must
     be careful not to allocate a new register if we've reached the
     reload pass.  */
  if (TARGET_MIPS16
      && optimize
      && GET_CODE (operands[2]) == CONST_INT
      && INTVAL (operands[2]) > 8
      && INTVAL (operands[2]) <= 16
      && ! reload_in_progress
      && ! reload_completed)
    {
      rtx temp = gen_reg_rtx (SImode);

      emit_insn (gen_ashlsi3_internal2 (temp, operands[1], GEN_INT (8)));
      emit_insn (gen_ashlsi3_internal2 (operands[0], temp,
					GEN_INT (INTVAL (operands[2]) - 8)));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_425 PARAMS ((rtx *));
rtx
gen_split_425 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ashldi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_64BIT)
    {
      /* On the mips16, a shift of more than 8 is a four byte
	 instruction, so, for a shift between 8 and 16, it is just as
	 fast to do two shifts of 8 or less.  If there is a lot of
	 shifting going on, we may win in CSE.  Otherwise combine will
	 put the shifts back together again.  This can be called by
	 function_arg, so we must be careful not to allocate a new
	 register if we've reached the reload pass.  */
      if (TARGET_MIPS16
	  && optimize
	  && GET_CODE (operands[2]) == CONST_INT
	  && INTVAL (operands[2]) > 8
	  && INTVAL (operands[2]) <= 16
	  && ! reload_in_progress
	  && ! reload_completed)
	{
	  rtx temp = gen_reg_rtx (DImode);

	  emit_insn (gen_ashldi3_internal4 (temp, operands[1], GEN_INT (8)));
	  emit_insn (gen_ashldi3_internal4 (operands[0], temp,
					    GEN_INT (INTVAL (operands[2]) - 8)));
	  DONE;
	}

      emit_insn (gen_ashldi3_internal4 (operands[0], operands[1],
					operands[2]));
      DONE;
    }

  operands[3] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_427 PARAMS ((rtx *));
rtx
gen_split_427 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	const0_rtx));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_428 PARAMS ((rtx *));
rtx
gen_split_428 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	const0_rtx));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_429 PARAMS ((rtx *));
rtx
gen_split_429 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_430 PARAMS ((rtx *));
rtx
gen_split_430 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_431 PARAMS ((rtx *));
rtx
gen_split_431 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFT (DImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ashrsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* On the mips16, a shift of more than 8 is a four byte instruction,
     so, for a shift between 8 and 16, it is just as fast to do two
     shifts of 8 or less.  If there is a lot of shifting going on, we
     may win in CSE.  Otherwise combine will put the shifts back
     together again.  */
  if (TARGET_MIPS16
      && optimize
      && GET_CODE (operands[2]) == CONST_INT
      && INTVAL (operands[2]) > 8
      && INTVAL (operands[2]) <= 16)
    {
      rtx temp = gen_reg_rtx (SImode);

      emit_insn (gen_ashrsi3_internal2 (temp, operands[1], GEN_INT (8)));
      emit_insn (gen_ashrsi3_internal2 (operands[0], temp,
					GEN_INT (INTVAL (operands[2]) - 8)));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_433 PARAMS ((rtx *));
rtx
gen_split_433 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ashrdi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_64BIT)
    {
      /* On the mips16, a shift of more than 8 is a four byte
	 instruction, so, for a shift between 8 and 16, it is just as
	 fast to do two shifts of 8 or less.  If there is a lot of
	 shifting going on, we may win in CSE.  Otherwise combine will
	 put the shifts back together again.  */
      if (TARGET_MIPS16
	  && optimize
	  && GET_CODE (operands[2]) == CONST_INT
	  && INTVAL (operands[2]) > 8
	  && INTVAL (operands[2]) <= 16)
	{
	  rtx temp = gen_reg_rtx (DImode);

	  emit_insn (gen_ashrdi3_internal4 (temp, operands[1], GEN_INT (8)));
	  emit_insn (gen_ashrdi3_internal4 (operands[0], temp,
					    GEN_INT (INTVAL (operands[2]) - 8)));
	  DONE;
	}

      emit_insn (gen_ashrdi3_internal4 (operands[0], operands[1],
					operands[2]));
      DONE;
    }

  operands[3] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_435 PARAMS ((rtx *));
rtx
gen_split_435 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	GEN_INT (31))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_436 PARAMS ((rtx *));
rtx
gen_split_436 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	GEN_INT (31))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_437 PARAMS ((rtx *));
rtx
gen_split_437 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_438 PARAMS ((rtx *));
rtx
gen_split_438 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_ASHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_439 PARAMS ((rtx *));
rtx
gen_split_439 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ASHIFTRT (DImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_lshrsi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  /* On the mips16, a shift of more than 8 is a four byte instruction,
     so, for a shift between 8 and 16, it is just as fast to do two
     shifts of 8 or less.  If there is a lot of shifting going on, we
     may win in CSE.  Otherwise combine will put the shifts back
     together again.  */
  if (TARGET_MIPS16
      && optimize
      && GET_CODE (operands[2]) == CONST_INT
      && INTVAL (operands[2]) > 8
      && INTVAL (operands[2]) <= 16)
    {
      rtx temp = gen_reg_rtx (SImode);

      emit_insn (gen_lshrsi3_internal2 (temp, operands[1], GEN_INT (8)));
      emit_insn (gen_lshrsi3_internal2 (operands[0], temp,
					GEN_INT (INTVAL (operands[2]) - 8)));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_441 PARAMS ((rtx *));
rtx
gen_split_441 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_442 PARAMS ((rtx *));
rtx
gen_split_442 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (SImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_lshrdi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (TARGET_64BIT)
    {
      /* On the mips16, a shift of more than 8 is a four byte
	 instruction, so, for a shift between 8 and 16, it is just as
	 fast to do two shifts of 8 or less.  If there is a lot of
	 shifting going on, we may win in CSE.  Otherwise combine will
	 put the shifts back together again.  */
      if (TARGET_MIPS16
	  && optimize
	  && GET_CODE (operands[2]) == CONST_INT
	  && INTVAL (operands[2]) > 8
	  && INTVAL (operands[2]) <= 16)
	{
	  rtx temp = gen_reg_rtx (DImode);

	  emit_insn (gen_lshrdi3_internal4 (temp, operands[1], GEN_INT (8)));
	  emit_insn (gen_lshrdi3_internal4 (operands[0], temp,
					    GEN_INT (INTVAL (operands[2]) - 8)));
	  DONE;
	}

      emit_insn (gen_lshrdi3_internal4 (operands[0], operands[1],
					operands[2]));
      DONE;
    }

  operands[3] = gen_reg_rtx (SImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_444 PARAMS ((rtx *));
rtx
gen_split_444 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	const0_rtx));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_445 PARAMS ((rtx *));
rtx
gen_split_445 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = GEN_INT (INTVAL (operands[2]) & 0x1f);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	const0_rtx));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_446 PARAMS ((rtx *));
rtx
gen_split_446 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_447 PARAMS ((rtx *));
rtx
gen_split_447 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

{
  int amount = INTVAL (operands[2]);
  operands[2] = GEN_INT (amount & 31);
  operands[4] = GEN_INT ((-amount) & 31);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand4)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	gen_rtx_IOR (SImode,
	gen_rtx_SUBREG (SImode,
	operand0,
	1),
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_SUBREG (SImode,
	operand0,
	0),
	gen_rtx_LSHIFTRT (SImode,
	gen_rtx_SUBREG (SImode,
	operand1,
	0),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_448 PARAMS ((rtx *));
rtx
gen_split_448 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

{
  operands[2] = GEN_INT (INTVAL (operands[2]) - 8);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LSHIFTRT (DImode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_cmpsi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = operands[1];
      branch_type = CMP_SI;
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (CCmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tstsi (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = const0_rtx;
      branch_type = CMP_SI;
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	operand0));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_cmpdi (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = operands[1];
      branch_type = CMP_DI;
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (CCmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tstdi (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = const0_rtx;
      branch_type = CMP_DI;
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	operand0));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_cmpdf (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = operands[1];
      branch_type = CMP_DF;
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (CCmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_cmpsf (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])		/* avoid unused code message */
    {
      branch_cmp[0] = operands[0];
      branch_cmp[1] = operands[1];
      branch_type = CMP_SF;
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (CCmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_beq (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, EQ);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_EQ (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bne (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, NE);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bgt (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, GT);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_GT (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bge (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, GE);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_GE (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_blt (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, LT);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_LT (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ble (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, LE);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_LE (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bgtu (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, GTU);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_GTU (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bgeu (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, GEU);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_GEU (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bltu (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, LTU);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_LTU (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_bleu (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (operands[0])		/* avoid unused code warning */
    {
      gen_conditional_branch (operands, LEU);
      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_LEU (CCmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand0),
	pc_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_seq (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (EQ, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_EQ (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_466 PARAMS ((rtx *));
rtx
gen_split_466 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (SImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_467 PARAMS ((rtx *));
rtx
gen_split_467 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (DImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sne (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE)
    {
      gen_int_relational (NE, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) < 0)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_469 PARAMS ((rtx *));
rtx
gen_split_469 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GTU (SImode,
	operand0,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_470 PARAMS ((rtx *));
rtx
gen_split_470 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GTU (DImode,
	operand0,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sgt (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (GT, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) != 0)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sge (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (GE, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GE (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_473 PARAMS ((rtx *));
rtx
gen_split_473 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_474 PARAMS ((rtx *));
rtx
gen_split_474 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_slt (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (LT, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sle (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (LE, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) >= 32767)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LE (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_477 PARAMS ((rtx *));
rtx
gen_split_477 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (SImode,
	operand2,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_478 PARAMS ((rtx *));
rtx
gen_split_478 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LT (DImode,
	operand2,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sgtu (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (GTU, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) != 0)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GTU (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sgeu (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (GEU, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_GEU (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_481 PARAMS ((rtx *));
rtx
gen_split_481 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (SImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_482 PARAMS ((rtx *));
rtx
gen_split_482 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sltu (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (LTU, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sleu (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;

{
  if (branch_type != CMP_SI && (!TARGET_64BIT || branch_type != CMP_DI))
    FAIL;

  /* set up operands from compare.  */
  operands[1] = branch_cmp[0];
  operands[2] = branch_cmp[1];

  if (TARGET_64BIT || !TARGET_DEBUG_C_MODE || TARGET_MIPS16)
    {
      gen_int_relational (LEU, operands[0], operands[1], operands[2], (int *)0);
      DONE;
    }

  if (GET_CODE (operands[2]) == CONST_INT && INTVAL (operands[2]) >= 32767)
    operands[2] = force_reg (SImode, operands[2]);

  /* fall through and generate default code */
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LEU (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_485 PARAMS ((rtx *));
rtx
gen_split_485 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (SImode,
	operand2,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (SImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_486 PARAMS ((rtx *));
rtx
gen_split_486 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_LTU (DImode,
	operand2,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_XOR (DImode,
	operand0,
	const1_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_indirect_jump (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  rtx dest;

  if (operands[0])		/* eliminate unused code warnings */
    {
      dest = operands[0];
      if (GET_CODE (dest) != REG || GET_MODE (dest) != Pmode)
	operands[0] = copy_to_mode_reg (Pmode, dest);

      if (!(Pmode == DImode))
	emit_jump_insn (gen_indirect_jump_internal1 (operands[0]));
      else
	emit_jump_insn (gen_indirect_jump_internal2 (operands[0]));

      DONE;
    }
}
    operand0 = operands[0];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tablejump (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])		/* eliminate unused code warnings */
    {
      if (TARGET_MIPS16)
	{
	  if (GET_MODE (operands[0]) != HImode)
	    abort ();
	  if (!(Pmode == DImode))
	    emit_insn (gen_tablejump_mips161 (operands[0], operands[1]));
	  else
	    emit_insn (gen_tablejump_mips162 (operands[0], operands[1]));
	  DONE;
	}

      if (GET_MODE (operands[0]) != Pmode)
	abort ();

      if (! flag_pic)
	{
	  if (!(Pmode == DImode))
	    emit_jump_insn (gen_tablejump_internal1 (operands[0], operands[1]));
	  else
	    emit_jump_insn (gen_tablejump_internal2 (operands[0], operands[1]));
	}
      else
	{
	  if (!(Pmode == DImode))
	    emit_jump_insn (gen_tablejump_internal3 (operands[0], operands[1]));
	  else
	    emit_jump_insn (gen_tablejump_internal4 (operands[0], operands[1]));
	}

      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (VOIDmode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tablejump_internal3 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_PLUS (SImode,
	operand0,
	gen_rtx_LABEL_REF (SImode,
	operand1))),
		gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (SImode,
	operand1))));
}

rtx
gen_tablejump_mips161 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])	/* eliminate unused code warnings.  */
    {
      rtx t1, t2, t3;

      t1 = gen_reg_rtx (SImode);
      t2 = gen_reg_rtx (SImode);
      t3 = gen_reg_rtx (SImode);
      emit_insn (gen_extendhisi2 (t1, operands[0]));
      emit_move_insn (t2, gen_rtx (LABEL_REF, SImode, operands[1]));
      emit_insn (gen_addsi3 (t3, t1, t2));
      emit_jump_insn (gen_tablejump_internal1 (t3, operands[1]));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_PLUS (SImode,
	gen_rtx_SIGN_EXTEND (SImode,
	operand0),
	gen_rtx_LABEL_REF (SImode,
	operand1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tablejump_mips162 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[2];
    operands[0] = operand0;
    operands[1] = operand1;

{
  if (operands[0])	/* eliminate unused code warnings.  */
    {
      rtx t1, t2, t3;

      t1 = gen_reg_rtx (DImode);
      t2 = gen_reg_rtx (DImode);
      t3 = gen_reg_rtx (DImode);
      emit_insn (gen_extendhidi2 (t1, operands[0]));
      emit_move_insn (t2, gen_rtx (LABEL_REF, DImode, operands[1]));
      emit_insn (gen_adddi3 (t3, t1, t2));
      emit_jump_insn (gen_tablejump_internal2 (t3, operands[1]));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_PLUS (DImode,
	gen_rtx_SIGN_EXTEND (DImode,
	operand0),
	gen_rtx_LABEL_REF (DImode,
	operand1))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_tablejump_internal4 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_PLUS (DImode,
	operand0,
	gen_rtx_LABEL_REF (DImode,
	operand1))),
		gen_rtx_USE (VOIDmode,
	gen_rtx_LABEL_REF (DImode,
	operand1))));
}

rtx
gen_casesi (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;
    operands[4] = operand4;

{
  if (operands[0])
    {
      rtx reg = gen_reg_rtx (SImode);

      /* If the index is too large, go to the default label.  */
      emit_insn (gen_subsi3 (reg, operands[0], operands[1]));
      emit_insn (gen_cmpsi (reg, operands[2]));
      emit_insn (gen_bgtu (operands[4]));

      /* Do the PIC jump.  */
      if (Pmode != DImode)
        emit_jump_insn (gen_casesi_internal (reg, operands[3], 
					     gen_reg_rtx (SImode)));
      else
        emit_jump_insn (gen_casesi_internal_di (reg, operands[3], 
						gen_reg_rtx (DImode)));

      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
    operand6 = operands[6];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand5,
	gen_rtx_MINUS (SImode,
	operand0,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (CCmode,
	operand5,
	operand2)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_GTU (VOIDmode,
	cc0_rtx,
	const0_rtx),
	gen_rtx_LABEL_REF (VOIDmode,
	operand4),
	pc_rtx)));
  emit_jump_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_MEM (SImode,
	gen_rtx_PLUS (SImode,
	gen_rtx_MULT (SImode,
	operand5,
	GEN_INT (4)),
	gen_rtx_LABEL_REF (VOIDmode,
	operand3)))),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31)))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_builtin_setjmp_setup (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  if (Pmode == DImode)
    emit_insn (gen_builtin_setjmp_setup_64 (operands[0]));
  else
    emit_insn (gen_builtin_setjmp_setup_32 (operands[0]));
  DONE;
}
    operand0 = operands[0];
  }
  emit_insn (gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		operand0),
	20));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_builtin_setjmp_setup_32 (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	gen_rtx_MEM (SImode,
	gen_rtx_PLUS (SImode,
	operand0,
	GEN_INT (12))),
	gen_rtx_REG (SImode,
	28));
}

rtx
gen_builtin_setjmp_setup_64 (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	gen_rtx_MEM (DImode,
	gen_rtx_PLUS (DImode,
	operand0,
	GEN_INT (24))),
	gen_rtx_REG (DImode,
	28));
}

rtx
gen_builtin_longjmp (operand0)
     rtx operand0;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[1];
    operands[0] = operand0;

{
  /* The elements of the buffer are, in order:  */
  int W = (Pmode == DImode ? 8 : 4);
  rtx fp = gen_rtx_MEM (Pmode, operands[0]);
  rtx lab = gen_rtx_MEM (Pmode, plus_constant (operands[0], 1*W));
  rtx stack = gen_rtx_MEM (Pmode, plus_constant (operands[0], 2*W));
  rtx gpv = gen_rtx_MEM (Pmode, plus_constant (operands[0], 3*W));
  rtx pv = gen_rtx_REG (Pmode, 25);
  rtx gp = gen_rtx_REG (Pmode, 28);

  /* This bit is the same as expand_builtin_longjmp.  */
  emit_move_insn (hard_frame_pointer_rtx, fp);
  emit_move_insn (pv, lab);
  emit_stack_restore (SAVE_NONLOCAL, stack, NULL_RTX);
  emit_move_insn (gp, gpv);
  emit_insn (gen_rtx_USE (VOIDmode, hard_frame_pointer_rtx));
  emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
  emit_insn (gen_rtx_USE (VOIDmode, gp));
  emit_indirect_jump (pv);
  DONE;
}
    operand0 = operands[0];
  }
  emit_insn (gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_prologue ()
{
  rtx _val = 0;
  start_sequence ();
  {

{
  if (mips_isa >= 0)		/* avoid unused code warnings */
    {
      mips_expand_prologue ();
      DONE;
    }
}
  }
  emit_insn (const1_rtx);
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_epilogue ()
{
  rtx _val = 0;
  start_sequence ();
  {

{
  if (mips_isa >= 0)            /* avoid unused code warnings */
    {
      mips_expand_epilogue ();
      DONE;
    }
}
  }
  emit_insn (GEN_INT (2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  rtx addr;

  if (operands[0])		/* eliminate unused code warnings */
    {
      addr = XEXP (operands[0], 0);
      if ((GET_CODE (addr) != REG && (!CONSTANT_ADDRESS_P (addr) || TARGET_LONG_CALLS))
	  || ! call_insn_operand (addr, VOIDmode))
	XEXP (operands[0], 0) = copy_to_mode_reg (Pmode, addr);

      /* In order to pass small structures by value in registers
	 compatibly with the MIPS compiler, we need to shift the value
	 into the high part of the register.  Function_arg has encoded
	 a PARALLEL rtx, holding a vector of adjustments to be made
	 as the next_arg_reg variable, so we split up the insns,
	 and emit them separately.  */

      if (operands[2] != (rtx)0 && GET_CODE (operands[2]) == PARALLEL)
	{
	  rtvec adjust = XVEC (operands[2], 0);
	  int num = GET_NUM_ELEM (adjust);
	  int i;

	  for (i = 0; i < num; i++)
	    emit_insn (RTVEC_ELT (adjust, i));
	}

      if (TARGET_MIPS16
	  && mips16_hard_float
	  && operands[2] != 0
	  && (int) GET_MODE (operands[2]) != 0)
	{
	  if (build_mips16_call_stub (NULL_RTX, operands[0], operands[1],
				      (int) GET_MODE (operands[2])))
	    DONE;
	}

      emit_call_insn (gen_call_internal0 (operands[0], operands[1],
					  gen_rtx_REG (SImode,
						       GP_REG_FIRST + 31)));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (4,
		gen_rtx_CALL (VOIDmode,
	operand0,
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31)),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_internal0 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_CALL (VOIDmode,
	operand0,
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_call_value (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  rtx addr;

  if (operands[0])		/* eliminate unused code warning */
    {
      addr = XEXP (operands[1], 0);
      if ((GET_CODE (addr) != REG && (!CONSTANT_ADDRESS_P (addr) || TARGET_LONG_CALLS))
	  || ! call_insn_operand (addr, VOIDmode))
	XEXP (operands[1], 0) = copy_to_mode_reg (Pmode, addr);

      /* In order to pass small structures by value in registers
	 compatibly with the MIPS compiler, we need to shift the value
	 into the high part of the register.  Function_arg has encoded
	 a PARALLEL rtx, holding a vector of adjustments to be made
	 as the next_arg_reg variable, so we split up the insns,
	 and emit them separately.  */

      if (operands[3] != (rtx)0 && GET_CODE (operands[3]) == PARALLEL)
	{
	  rtvec adjust = XVEC (operands[3], 0);
	  int num = GET_NUM_ELEM (adjust);
	  int i;

	  for (i = 0; i < num; i++)
	    emit_insn (RTVEC_ELT (adjust, i));
	}

      if (TARGET_MIPS16
	  && mips16_hard_float
	  && ((operands[3] != 0
	       && (int) GET_MODE (operands[3]) != 0)
	      || GET_MODE_CLASS (GET_MODE (operands[0])) == MODE_FLOAT))
	{
	  if (build_mips16_call_stub (operands[0], operands[1], operands[2],
				      (operands[3] == 0 ? 0
				       : (int) GET_MODE (operands[3]))))
	    DONE;
	}

      /* Handle Irix6 function calls that have multiple non-contiguous
	 results.  */
      if (GET_CODE (operands[0]) == PARALLEL && XVECLEN (operands[0], 0) > 1)
	{
	  emit_call_insn (gen_call_value_multiple_internal0
			  (XEXP (XVECEXP (operands[0], 0, 0), 0),
			   operands[1], operands[2],
			   XEXP (XVECEXP (operands[0], 0, 1), 0),
			   gen_rtx_REG (SImode, GP_REG_FIRST + 31)));
	  DONE;
	}

      /* We have a call returning a DImode structure in an FP reg.
	 Strip off the now unnecessary PARALLEL.  */
      if (GET_CODE (operands[0]) == PARALLEL)
	operands[0] = XEXP (XVECEXP (operands[0], 0, 0), 0);

      emit_call_insn (gen_call_value_internal0 (operands[0], operands[1], operands[2],
					        gen_rtx_REG (SImode,
							     GP_REG_FIRST + 31)));

      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31)),
		gen_rtx_USE (VOIDmode,
	operand3))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_value_internal0 (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand3)));
}

rtx
gen_call_value_multiple_internal0 (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	operand1,
	operand2)),
		gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_CALL (VOIDmode,
	operand1,
	operand2)),
		gen_rtx_CLOBBER (VOIDmode,
	operand4)));
}

rtx
gen_untyped_call (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[3];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  if (operands[0])		/* silence statement not reached warnings */
    {
      int i;

      emit_call_insn (gen_call (operands[0], const0_rtx, NULL, const0_rtx));

      for (i = 0; i < XVECLEN (operands[2], 0); i++)
	{
	  rtx set = XVECEXP (operands[2], 0, i);
	  emit_move_insn (SET_DEST (set), SET_SRC (set));
	}

      emit_insn (gen_blockage ());
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_CALL (VOIDmode,
	operand0,
	const0_rtx),
		operand1,
		operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movsicc (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[6];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  gen_conditional_move (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	operand5,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movdicc (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[6];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  gen_conditional_move (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	operand5,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movsfcc (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[6];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  gen_conditional_move (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SFmode,
	operand5,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movdfcc (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[6];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;

{
  gen_conditional_move (operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	operand1));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DFmode,
	operand5,
	operand2,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}



void
add_clobbers (pattern, insn_code_number)
     rtx pattern;
     int insn_code_number;
{
  switch (insn_code_number)
    {
    case 285:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31));
      break;

    case 281:
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	31));
      break;

    case 280:
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	31));
      break;

    case 180:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	1));
      break;

    case 138:
    case 137:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DFmode));
      break;

    case 136:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SFmode));
      break;

    case 135:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DFmode));
      break;

    case 63:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (SImode,
	24));
      break;

    case 61:
    case 59:
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      break;

    case 60:
    case 58:
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      break;

    case 44:
    case 38:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      break;

    case 37:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      XVECEXP (pattern, 0, 3) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      break;

    case 81:
    case 42:
    case 41:
    case 39:
    case 36:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      break;

    case 35:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 3) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 4) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      break;

    case 80:
    case 71:
    case 70:
    case 69:
    case 68:
    case 67:
    case 66:
    case 65:
    case 64:
    case 45:
    case 43:
    case 40:
    case 33:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      break;

    case 34:
    case 32:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 2) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      XVECEXP (pattern, 0, 3) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (SImode));
      break;

    default:
      abort ();
    }
}
