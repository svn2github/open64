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
gen_load_gprel (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	gen_rtx_REG (DImode,
	1),
	operand1));
}

rtx
gen_gprel64_offset (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MINUS (DImode,
	operand1,
	gen_rtx_REG (DImode,
	1)));
}

rtx
gen_extendqidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1));
}

rtx
gen_extendhidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTEND (DImode,
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
gen_zero_extendqidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1));
}

rtx
gen_zero_extendhidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1));
}

rtx
gen_zero_extendsidi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTEND (DImode,
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
gen_truncxfsf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT_TRUNCATE (SFmode,
	operand1));
}

rtx
gen_truncxfdf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT_TRUNCATE (DFmode,
	operand1));
}

rtx
gen_floatdixf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT (XFmode,
	operand1));
}

rtx
gen_fix_truncsfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (DImode,
	operand1));
}

rtx
gen_fix_truncdfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FIX (DImode,
	operand1));
}

rtx
gen_floatunsdisf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FLOAT (SFmode,
	operand1));
}

rtx
gen_floatunsdidf2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FLOAT (DFmode,
	operand1));
}

rtx
gen_fixuns_truncsfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (DImode,
	operand1));
}

rtx
gen_fixuns_truncdfdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSIGNED_FIX (DImode,
	operand1));
}

rtx
gen_extv (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SIGN_EXTRACT (DImode,
	operand1,
	operand2,
	operand3));
}

rtx
gen_extzv (operand0, operand1, operand2, operand3)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand1,
	operand2,
	operand3));
}

rtx
gen_shift_mix4left (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand0,
	GEN_INT (32),
	const0_rtx),
	operand1),
		gen_rtx_CLOBBER (VOIDmode,
	operand2)));
}

rtx
gen_mix4right (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand0,
	GEN_INT (32),
	GEN_INT (32)),
	operand1);
}

rtx
gen_adddi3 (operand0, operand1, operand2)
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
gen_subdi3 (operand0, operand1, operand2)
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
gen_muldi3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (DImode,
	operand1,
	operand2));
}

rtx
gen_smuldi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (DImode,
	gen_rtx_LSHIFTRT (TImode,
	gen_rtx_MULT (TImode,
	gen_rtx_SIGN_EXTEND (TImode,
	operand1),
	gen_rtx_SIGN_EXTEND (TImode,
	operand2)),
	GEN_INT (64))));
}

rtx
gen_umuldi3_highpart (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_TRUNCATE (DImode,
	gen_rtx_LSHIFTRT (TImode,
	gen_rtx_MULT (TImode,
	gen_rtx_ZERO_EXTEND (TImode,
	operand1),
	gen_rtx_ZERO_EXTEND (TImode,
	operand2)),
	GEN_INT (64))));
}

rtx
gen_negdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand1));
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
gen_mulsf3 (operand0, operand1, operand2)
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
gen_minsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SMIN (SFmode,
	operand1,
	operand2));
}

rtx
gen_maxsf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SMAX (SFmode,
	operand1,
	operand2));
}

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
gen_muldf3 (operand0, operand1, operand2)
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
gen_mindf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SMIN (DFmode,
	operand1,
	operand2));
}

rtx
gen_maxdf3 (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_SMAX (DFmode,
	operand1,
	operand2));
}

rtx
gen_ashldi3 (operand0, operand1, operand2)
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
gen_ashrdi3 (operand0, operand1, operand2)
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
gen_lshrdi3 (operand0, operand1, operand2)
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
gen_anddi3 (operand0, operand1, operand2)
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
gen_call_internal (operand0, operand1, operand2)
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
gen_call_value_internal (operand0, operand1, operand2, operand3)
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
gen_return_internal (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_RETURN (VOIDmode),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_return ()
{
  return gen_rtx_RETURN (VOIDmode);
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
gen_indirect_jump (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	pc_rtx,
	operand0);
}

rtx
gen_tablejump_internal (operand0, operand1)
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
gen_prologue_allocate_stack (operand0, operand1, operand2, operand3)
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
		gen_rtx_SET (VOIDmode,
	operand3,
	operand3)));
}

rtx
gen_epilogue_deallocate_stack (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_SET (VOIDmode,
	operand1,
	operand1)));
}

rtx
gen_alloc (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (5,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC_VOLATILE (DImode,
	gen_rtvec (1,
		const0_rtx),
	0)),
		gen_rtx_USE (VOIDmode,
	operand1),
		gen_rtx_USE (VOIDmode,
	operand2),
		gen_rtx_USE (VOIDmode,
	operand3),
		gen_rtx_USE (VOIDmode,
	operand4)));
}

rtx
gen_gr_spill (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		operand1),
	1));
}

rtx
gen_gr_restore (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		operand1),
	2));
}

rtx
gen_fr_spill (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (XFmode,
	gen_rtvec (1,
		operand1),
	3));
}

rtx
gen_fr_restore (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (XFmode,
	gen_rtvec (1,
		operand1),
	4));
}

rtx
gen_pr_spill (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		const0_rtx),
	5));
}

rtx
gen_pr_restore (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	6),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_pfs_restore (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	4),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_unat_spill (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		const0_rtx),
	9));
}

rtx
gen_unat_restore (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	10),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_bsp_value (operand0)
     rtx operand0;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		const0_rtx),
	20));
}

rtx
gen_set_bsp (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	5),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_flushrs ()
{
  return gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	21);
}

rtx
gen_nop ()
{
  return const0_rtx;
}

rtx
gen_blockage ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	1);
}

rtx
gen_insn_group_barrier ()
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	2);
}

rtx
gen_flush_cache (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		operand0),
	3);
}

rtx
gen_ccv_restore_si (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	11),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_ccv_restore_di (operand0)
     rtx operand0;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	11),
		gen_rtx_USE (VOIDmode,
	operand0)));
}

rtx
gen_mf (operand0)
     rtx operand0;
{
  return gen_rtx_UNSPEC (VOIDmode,
	gen_rtvec (1,
		operand0),
	12);
}

rtx
gen_fetchadd_acq_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	19));
}

rtx
gen_fetchadd_acq_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	19));
}

rtx
gen_cmpxchg_acq_si (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	13));
}

rtx
gen_cmpxchg_acq_di (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	13));
}

rtx
gen_xchgsi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_SET (VOIDmode,
	operand1,
	operand2)));
}

rtx
gen_xchgdi (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  return gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand0,
	operand1),
		gen_rtx_SET (VOIDmode,
	operand1,
	operand2)));
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (QImode, operands[1]);
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (HImode, operands[1]);
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (SImode, operands[1]);
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
  /* ??? Should generalize this, so that we can also support 32 bit
     pointers.  */
  if (! TARGET_NO_PIC && symbolic_operand (operands[1], DImode))
    {
      rtx temp;

      /* Operand[0] could be a MEM, which isn't a valid destination for the
	 PIC load address patterns.  */
      if (! register_operand (operands[0], DImode))
	temp = gen_reg_rtx (DImode);
      else
	temp = operands[0];

      if (TARGET_AUTO_PIC)
	emit_insn (gen_load_gprel64 (temp, operands[1]));
      else if (GET_CODE (operands[1]) == SYMBOL_REF
	       && SYMBOL_REF_FLAG (operands[1]))
	emit_insn (gen_load_fptr (temp, operands[1]));
      else if (sdata_symbolic_operand (operands[1], DImode))
	emit_insn (gen_load_gprel (temp, operands[1]));
      else
	emit_insn (gen_load_symptr (temp, operands[1]));

      if (temp == operands[0])
	DONE;

      operands[1] = temp;
    }

  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (DImode, operands[1]);
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
gen_load_fptr (operand0, operand1)
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
  if (reload_in_progress)
    operands[2] = operands[0];
  else
    operands[2] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_PLUS (DImode,
	gen_rtx_REG (DImode,
	1),
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (DImode,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_load_gprel64 (operand0, operand1)
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
  if (reload_in_progress)
    operands[2] = operands[0];
  else
    operands[2] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_MINUS (DImode,
	operand1,
	gen_rtx_REG (DImode,
	1))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	gen_rtx_REG (DImode,
	1),
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_load_symptr (operand0, operand1)
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
  if (reload_in_progress)
    operands[2] = operands[0];
  else
    operands[2] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_PLUS (DImode,
	gen_rtx_REG (DImode,
	1),
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MEM (DImode,
	operand2)));
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (SFmode, operands[1]);
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (DFmode, operands[1]);
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
gen_movxf (operand0, operand1)
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
  if (! reload_in_progress && ! reload_completed
      && GET_CODE (operands[0]) == MEM
      && GET_CODE (operands[1]) == MEM)
    operands[1] = copy_to_mode_reg (XFmode, operands[1]);
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

extern rtx gen_split_158 PARAMS ((rtx *));
rtx
gen_split_158 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();
if (true_regnum (operands[0]) == true_regnum (operands[1])) DONE;
  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_FLOAT_EXTEND (DFmode,
	operand1)));
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
  int width = INTVAL (operands[1]);
  int shift = INTVAL (operands[2]);

  /* If operand[3] is a constant, and isn't 0 or -1, then load it into a
     pseudo.  */
  if (! register_operand (operands[3], DImode)
      && operands[3] != const0_rtx && operands[3] != constm1_rtx)
    operands[3] = force_reg (DImode, operands[3]);

  /* If this is a single dep instruction, we have nothing to do.  */
  if (! ((register_operand (operands[3], DImode) && width <= 16)
	 || operands[3] == const0_rtx || operands[3] == constm1_rtx))
    {
      /* Check for cases that can be implemented with a mix instruction.  */
      if (width == 32 && shift == 0)
	{
	  /* Directly generating the mix4left instruction confuses
	     optimize_bit_field in function.c.  Since this is performing
	     a useful optimization, we defer generation of the complicated
	     mix4left RTL to the first splitting phase.  */
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_shift_mix4left (operands[0], operands[3], tmp));
	  DONE;
	}
      else if (width == 32 && shift == 32)
	{
	  emit_insn (gen_mix4right (operands[0], operands[3]));
	  DONE;
	}

      /* We could handle remaining cases by emitting multiple dep
	 instructions.

	 If we need more than two dep instructions then we lose.  A 6
	 insn sequence mov mask1,mov mask2,shl;;and,and;;or is better than
	 mov;;dep,shr;;dep,shr;;dep.  The former can be executed in 3 cycles,
	 the latter is 6 cycles on an Itanium (TM) processor, because there is
	 only one function unit that can execute dep and shr immed.

	 If we only need two dep instruction, then we still lose.
	 mov;;dep,shr;;dep is still 4 cycles.  Even if we optimize away
	 the unnecessary mov, this is still undesirable because it will be
	 hard to optimize, and it creates unnecessary pressure on the I0
	 function unit.  */

      FAIL;

#if 0
      /* This code may be useful for other IA-64 processors, so we leave it in
	 for now.  */
      while (width > 16)
	{
	  rtx tmp;

	  emit_insn (gen_insv (operands[0], GEN_INT (16), GEN_INT (shift),
			       operands[3]));
	  shift += 16;
	  width -= 16;
	  tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_lshrdi3 (tmp, operands[3], GEN_INT (16)));
	  operands[3] = tmp;
	}
      operands[1] = GEN_INT (width);
      operands[2] = GEN_INT (shift);
#endif
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand0,
	operand1,
	operand2),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_160 PARAMS ((rtx *));
rtx
gen_split_160 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
operands[3] = operands[2];
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (DImode,
	operand1,
	GEN_INT (32))));
  emit_insn (gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	2));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand0,
	GEN_INT (32),
	const0_rtx),
	gen_rtx_LSHIFTRT (DImode,
	operand3,
	GEN_INT (32))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_161 PARAMS ((rtx *));
rtx
gen_split_161 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
operands[3] = operands[2];
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFT (DImode,
	operand1,
	GEN_INT (32))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_ZERO_EXTRACT (DImode,
	operand0,
	GEN_INT (32),
	const0_rtx),
	gen_rtx_LSHIFTRT (DImode,
	operand3,
	GEN_INT (32))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
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
  if (optimize)
    {
      rtx op1 = gen_lowpart (DImode, operands[1]);
      rtx op2 = gen_lowpart (DImode, operands[2]);

      if (! cse_not_expected)
	{
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_adddi3 (tmp, op1, op2));
	  emit_move_insn (operands[0], gen_lowpart (SImode, tmp));
	}
      else
	emit_insn (gen_adddi3 (gen_lowpart (DImode, operands[0]), op1, op2));
      DONE;
    }
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
  if (optimize)
    {
      rtx op1 = gen_lowpart (DImode, operands[1]);
      rtx op2 = gen_lowpart (DImode, operands[2]);

      if (! cse_not_expected)
	{
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_subdi3 (tmp, op1, op2));
	  emit_move_insn (operands[0], gen_lowpart (SImode, tmp));
	}
      else
	emit_insn (gen_subdi3 (gen_lowpart (DImode, operands[0]), op1, op2));
      DONE;
    }
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

rtx
gen_mulsi3 (operand0, operand1, operand2)
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
  if (optimize)
    {
      rtx op1 = gen_lowpart (DImode, operands[1]);
      rtx op2 = gen_lowpart (DImode, operands[2]);

      if (! cse_not_expected)
	{
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_muldi3 (tmp, op1, op2));
	  emit_move_insn (operands[0], gen_lowpart (SImode, tmp));
	}
      else
	emit_insn (gen_muldi3 (gen_lowpart (DImode, operands[0]), op1, op2));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_MULT (SImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_negsi2 (operand0, operand1)
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
  if (optimize)
    {
      rtx op1 = gen_lowpart (DImode, operands[1]);

      if (! cse_not_expected)
	{
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_negdi2 (tmp, op1));
	  emit_move_insn (operands[0], gen_lowpart (SImode, tmp));
	}
      else
	emit_insn (gen_negdi2 (gen_lowpart (DImode, operands[0]), op1));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_abssi2 (operand0, operand1)
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
  operands[2] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_GE (CCmode,
	operand1,
	const0_rtx)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	gen_rtx_EQ (CCmode,
	operand2,
	const0_rtx),
	gen_rtx_NEG (SImode,
	operand1),
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sminsi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GE (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand2,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_smaxsi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GE (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_uminsi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GEU (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand2,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umaxsi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GEU (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (SImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_171 PARAMS ((rtx *));
rtx
gen_split_171 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  emit (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (2,
		gen_rtx_SET (VOIDmode,
	operand5,
	gen_rtx_PLUS (DImode,
	gen_rtx_MULT (DImode,
	operand1,
	operand2),
	operand3)),
		gen_rtx_CLOBBER (VOIDmode,
	operand0))));
  emit_insn (gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	2));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand5));
  emit_insn (gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	2));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand4)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_absdi2 (operand0, operand1)
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
  operands[2] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_GE (CCmode,
	operand1,
	const0_rtx)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_EQ (CCmode,
	operand2,
	const0_rtx),
	gen_rtx_NEG (DImode,
	operand1),
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_smindi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GE (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand2,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_smaxdi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GE (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umindi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GEU (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand2,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_umaxdi3 (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (CCmode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_GEU (CCmode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand3,
	const0_rtx),
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_ffsdi2 (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx operand6;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[7];
    operands[0] = operand0;
    operands[1] = operand1;

{
  operands[2] = gen_reg_rtx (DImode);
  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_reg_rtx (DImode);
  operands[5] = gen_reg_rtx (DImode);
  operands[6] = gen_reg_rtx (CCmode);
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
	operand6,
	gen_rtx_EQ (CCmode,
	operand1,
	const0_rtx)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_PLUS (DImode,
	operand1,
	constm1_rtx)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand5,
	const0_rtx));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_XOR (DImode,
	operand1,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (1,
		operand3),
	8)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand6,
	const0_rtx),
	operand5,
	operand4)));
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
  if (! shift_32bit_count_operand (operands[2], SImode))
    FAIL;
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

rtx
gen_ashrsi3 (operand0, operand1, operand2)
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
  if (! shift_32bit_count_operand (operands[2], SImode))
    FAIL;

  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_lowpart (SImode, operands[3]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_ASHIFTRT (DImode,
	gen_rtx_SIGN_EXTEND (DImode,
	operand1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand4));
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
  if (! shift_32bit_count_operand (operands[2], SImode))
    FAIL;

  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_lowpart (SImode, operands[3]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LSHIFTRT (DImode,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1),
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand4));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_rotrsi3 (operand0, operand1, operand2)
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
  if (! shift_32bit_count_operand (operands[2], SImode))
    FAIL;

  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_lowpart (SImode, operands[3]);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_IOR (DImode,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1),
	gen_rtx_ASHIFT (DImode,
	gen_rtx_ZERO_EXTEND (DImode,
	operand1),
	GEN_INT (32)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_LSHIFTRT (DImode,
	operand3,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	operand4));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_182 PARAMS ((rtx *));
rtx
gen_split_182 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	gen_rtx_MULT (DImode,
	operand1,
	operand2),
	operand3)));
  emit_insn (gen_rtx_UNSPEC_VOLATILE (VOIDmode,
	gen_rtvec (1,
		const0_rtx),
	2));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_PLUS (DImode,
	operand0,
	operand4)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_rotrdi3 (operand0, operand1, operand2)
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
  if (! shift_count_operand (operands[2], DImode))
    FAIL;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_ROTATERT (DImode,
	operand1,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_one_cmplsi2 (operand0, operand1)
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
  if (optimize)
    {
      rtx op1 = gen_lowpart (DImode, operands[1]);

      if (! cse_not_expected)
	{
	  rtx tmp = gen_reg_rtx (DImode);
	  emit_insn (gen_one_cmpldi2 (tmp, op1));
	  emit_move_insn (operands[0], gen_lowpart (SImode, tmp));
	}
      else
	emit_insn (gen_one_cmpldi2 (gen_lowpart (DImode, operands[0]), op1));
      DONE;
    }
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NOT (SImode,
	operand1)));
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
  ia64_compare_op0 = operands[0];
  ia64_compare_op1 = operands[1];
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (VOIDmode,
	operand0,
	operand1)));
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
  ia64_compare_op0 = operands[0];
  ia64_compare_op1 = operands[1];
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (VOIDmode,
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
  ia64_compare_op0 = operands[0];
  ia64_compare_op1 = operands[1];
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (VOIDmode,
	operand0,
	operand1)));
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
  ia64_compare_op0 = operands[0];
  ia64_compare_op1 = operands[1];
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (VOIDmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_cmpxf (operand0, operand1)
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
  ia64_compare_op0 = operands[0];
  ia64_compare_op1 = operands[1];
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	cc0_rtx,
	gen_rtx_COMPARE (VOIDmode,
	operand0,
	operand1)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_movcc (operand0, operand1)
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
  if (! reload_in_progress && ! reload_completed)
    FAIL;
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

extern rtx gen_split_191 PARAMS ((rtx *));
rtx
gen_split_191 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx _val = 0;
  start_sequence ();
operands[2] = gen_rtx_SUBREG (DImode, operands[0], 0);
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand1,
	const0_rtx),
	const1_rtx,
	operand2)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand1,
	const0_rtx),
	operand2,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_beq (operand0)
     rtx operand0;
{
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_EQ (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_NE (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LT (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LE (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GT (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GE (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LTU (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LEU (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GTU (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GEU (CCmode,
	operand2,
	operand3)));
  emit_jump_insn (gen_rtx_SET (VOIDmode,
	pc_rtx,
	gen_rtx_IF_THEN_ELSE (VOIDmode,
	gen_rtx_NE (CCmode,
	operand1,
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_EQ (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_NE (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LT (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LE (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GT (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GE (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LTU (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_LEU (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GTU (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
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
  rtx operand3;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[4];
    operands[0] = operand0;

{
  operands[1] = gen_reg_rtx (CCmode);
  operands[2] = ia64_compare_op0;
  operands[3] = ia64_compare_op1;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand1,
	gen_rtx_GEU (CCmode,
	operand2,
	operand3)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NE (DImode,
	operand1,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_212 PARAMS ((rtx *));
rtx
gen_split_212 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand1,
	const0_rtx),
	const1_rtx,
	operand0)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_NE (CCmode,
	operand1,
	const0_rtx),
	operand0,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_213 PARAMS ((rtx *));
rtx
gen_split_213 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_EQ (CCmode,
	operand1,
	const0_rtx),
	const1_rtx,
	operand0)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_IF_THEN_ELSE (DImode,
	gen_rtx_EQ (CCmode,
	operand1,
	const0_rtx),
	operand0,
	const0_rtx)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_214 PARAMS ((rtx *));
rtx
gen_split_214 (operands)
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
  if (rtx_equal_p (operands[0], operands[2]))
    {
      operands[2] = operands[3];
      operands[4] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				    CCmode, operands[1], const0_rtx);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_215 PARAMS ((rtx *));
rtx
gen_split_215 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();

{
  operands[5] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				CCmode, operands[1], const0_rtx);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand2)));
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand5,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_216 PARAMS ((rtx *));
rtx
gen_split_216 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_217 PARAMS ((rtx *));
rtx
gen_split_217 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();

{
  operands[5] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				CCmode, operands[1], const0_rtx);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (DImode,
	operand2))));
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand5,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_218 PARAMS ((rtx *));
rtx
gen_split_218 (operands)
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
  if (rtx_equal_p (operands[0], operands[2]))
    {
      operands[2] = operands[3];
      operands[4] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				    CCmode, operands[1], const0_rtx);
    }
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand2)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_219 PARAMS ((rtx *));
rtx
gen_split_219 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();

{
  operands[5] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				CCmode, operands[1], const0_rtx);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand2)));
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand5,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand3)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_220 PARAMS ((rtx *));
rtx
gen_split_220 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();

  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand2))));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

extern rtx gen_split_221 PARAMS ((rtx *));
rtx
gen_split_221 (operands)
     rtx *operands;
{
  rtx operand0;
  rtx operand1;
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();

{
  operands[5] = gen_rtx_fmt_ee (GET_CODE (operands[4]) == NE ? EQ : NE,
				CCmode, operands[1], const0_rtx);
}
  operand0 = operands[0];
  operand1 = operands[1];
  operand2 = operands[2];
  operand3 = operands[3];
  operand4 = operands[4];
  operand5 = operands[5];
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand4,
	gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_NEG (SImode,
	operand2))));
  emit_insn (gen_rtx_COND_EXEC (VOIDmode,
	operand5,
	gen_rtx_SET (VOIDmode,
	operand0,
	operand3)));
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
  /* ??? Stripping off the MEM isn't correct.  Will lose alias info.  */
  rtx addr = XEXP (operands[0], 0);
  enum machine_mode mode = GET_MODE (addr);

  if (TARGET_NO_PIC || TARGET_AUTO_PIC)
    emit_call_insn (gen_call_internal (addr, operands[1],
				       gen_rtx_REG (DImode, R_BR (0))));

  /* If this is an indirect call, then we have the address of a descriptor.  */
  else if (! symbolic_operand (addr, mode))
    emit_insn (gen_indirect_call_pic (addr, operands[1]));
  else if (TARGET_CONST_GP)
    emit_call_insn (gen_call_internal (addr, operands[1],
				       gen_rtx_REG (DImode, R_BR (0))));
  /* ??? This is an unsatisfying solution.  Should rethink.  */
  else if (setjmp_operand (addr, mode))
    emit_insn (gen_setjmp_call_pic (addr, operands[1]));
  else
    emit_insn (gen_call_pic (addr, operands[1]));

  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand2));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_indirect_call_pic (operand0, operand1)
     rtx operand0;
     rtx operand1;
{
  rtx operand2;
  rtx operand3;
  rtx operand4;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;

{
  operands[2] = gen_reg_rtx (DImode);
  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_REG (DImode,
	1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_MEM (DImode,
	operand0)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	gen_rtx_PLUS (DImode,
	operand0,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	gen_rtx_MEM (DImode,
	operand4)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand3),
	operand1),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_setjmp_call_pic (operand0, operand1)
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
  operands[2] = gen_rtx_REG (DImode, GR_REG (4));
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_REG (DImode,
	1)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand0),
	operand1),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_pic (operand0, operand1)
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
  operands[2] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand2,
	gen_rtx_REG (DImode,
	1)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand0),
	operand1),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_value (operand0, operand1, operand2, operand3, operand4)
     rtx operand0;
     rtx operand1;
     rtx operand2;
     rtx operand3;
     rtx operand4;
{
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[5];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;
    operands[3] = operand3;
    operands[4] = operand4;

{
  /* ??? Stripping off the MEM isn't correct.  Will lose alias info.  */
  rtx addr = XEXP (operands[1], 0);
  enum machine_mode mode = GET_MODE (addr);

  if (TARGET_NO_PIC || TARGET_AUTO_PIC)
    emit_call_insn (gen_call_value_internal (operands[0], addr, operands[2],
					     gen_rtx_REG (DImode, R_BR (0))));

  /* If this is an indirect call, then we have the address of a descriptor.  */
  else if (! symbolic_operand (addr, mode))
    {
      /* This is for HFA returns.  */
      if (GET_CODE (operands[0]) == PARALLEL)
	emit_insn (gen_indirect_call_multiple_values_pic (operands[0], addr,
							  operands[2]));
      else
	emit_insn (gen_indirect_call_value_pic (operands[0], addr,
						operands[2]));
    }
  else if (TARGET_CONST_GP)
    emit_call_insn (gen_call_value_internal (operands[0], addr, operands[2],
					     gen_rtx_REG (DImode, R_BR (0))));
  /* ??? This is an unsatisfying solution.  Should rethink.  */
  else if (setjmp_operand (addr, mode))
    emit_insn (gen_setjmp_call_value_pic (operands[0], addr, operands[2]));
  /* This is for HFA returns.  */
  else if (GET_CODE (operands[0]) == PARALLEL)
    emit_insn (gen_call_multiple_values_pic (operands[0], addr, operands[2]));
  else
    emit_insn (gen_call_value_pic (operands[0], addr, operands[2]));

  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand2));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand3));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand4));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_indirect_call_value_pic (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
  rtx operand4;
  rtx operand5;
  rtx _val = 0;
  start_sequence ();
  {
    rtx operands[6];
    operands[0] = operand0;
    operands[1] = operand1;
    operands[2] = operand2;

{
  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_reg_rtx (DImode);
  operands[5] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
    operand5 = operands[5];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_REG (DImode,
	1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	gen_rtx_MEM (DImode,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand5,
	gen_rtx_PLUS (DImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	gen_rtx_MEM (DImode,
	operand5)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand4),
	operand2)),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_indirect_call_multiple_values_pic (operand0, operand1, operand2)
     rtx operand0;
     rtx operand1;
     rtx operand2;
{
  rtx operand3;
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

{
  int count;
  int i;
  rtx call;

  operands[3] = gen_reg_rtx (DImode);
  operands[4] = gen_reg_rtx (DImode);
  operands[5] = gen_reg_rtx (DImode);

  /* This code is the same as the code in call_multiple_values_pic, except
     that op3 was replaced with op6 and op1 was replaced with op4.  */
  call = gen_rtx_CALL (VOIDmode, gen_rtx_MEM (DImode, operands[4]),
		       operands[2]);

  count = XVECLEN (operands[0], 0);
  operands[6] = gen_rtx_PARALLEL (VOIDmode, rtvec_alloc (count + 2));
  
  XVECEXP (operands[6], 0, 0)
    = gen_rtx_SET (VOIDmode, XEXP (XVECEXP (operands[0], 0, 0), 0), call);

  XVECEXP (operands[6], 0, 1)
    = gen_rtx_USE (DImode, gen_rtx_REG (DImode, GR_REG (1)));
  XVECEXP (operands[6], 0, 2)
    = gen_rtx_CLOBBER (DImode, gen_rtx_REG (DImode, BR_REG (0)));

  for (i = 1; i < count; i++)
    XVECEXP (operands[6], 0, i + 2)
      = gen_rtx_SET (VOIDmode, XEXP (XVECEXP (operands[0], 0, i), 0), call);

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
	operand3,
	gen_rtx_REG (DImode,
	1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	gen_rtx_MEM (DImode,
	operand1)));
  emit_insn (gen_rtx_SET (VOIDmode,
	operand5,
	gen_rtx_PLUS (DImode,
	operand1,
	GEN_INT (8))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	gen_rtx_MEM (DImode,
	operand5)));
  emit (operand6);
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_setjmp_call_value_pic (operand0, operand1, operand2)
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
  operands[3] = gen_rtx_REG (DImode, GR_REG (4));
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_REG (DImode,
	1)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand1),
	operand2)),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_value_pic (operand0, operand1, operand2)
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
  operands[3] = gen_reg_rtx (DImode);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand3,
	gen_rtx_REG (DImode,
	1)));
  emit_call_insn (gen_rtx_PARALLEL (VOIDmode,
	gen_rtvec (3,
		gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_CALL (VOIDmode,
	gen_rtx_MEM (DImode,
	operand1),
	operand2)),
		gen_rtx_USE (VOIDmode,
	gen_rtx_REG (DImode,
	1)),
		gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_REG (DImode,
	320)))));
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_call_multiple_values_pic (operand0, operand1, operand2)
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
  int count;
  int i;
  rtx call;

  operands[4] = gen_reg_rtx (DImode);

  call = gen_rtx_CALL (VOIDmode, gen_rtx_MEM (DImode, operands[1]),
		       operands[2]);

  count = XVECLEN (operands[0], 0);
  operands[3] = gen_rtx_PARALLEL (VOIDmode, rtvec_alloc (count + 2));
  
  XVECEXP (operands[3], 0, 0)
    = gen_rtx_SET (VOIDmode, XEXP (XVECEXP (operands[0], 0, 0), 0), call);

  XVECEXP (operands[3], 0, 1)
    = gen_rtx_USE (DImode, gen_rtx_REG (DImode, GR_REG (1)));
  XVECEXP (operands[3], 0, 2)
    = gen_rtx_CLOBBER (DImode, gen_rtx_REG (DImode, BR_REG (0)));

  for (i = 1; i < count; i++)
    XVECEXP (operands[3], 0, i + 2)
      = gen_rtx_SET (VOIDmode, XEXP (XVECEXP (operands[0], 0, i), 0), call);
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
    operand4 = operands[4];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand4,
	gen_rtx_REG (DImode,
	1)));
  emit (operand3);
  emit_insn (gen_rtx_SET (VOIDmode,
	gen_rtx_REG (DImode,
	1),
	operand4));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
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
  int i;

  emit_call_insn (gen_call (operands[0], const0_rtx, NULL, const0_rtx));

  for (i = 0; i < XVECLEN (operands[2], 0); i++)
    {
      rtx set = XVECEXP (operands[2], 0, i);
      emit_move_insn (SET_DEST (set), SET_SRC (set));
    }

  /* The optimizer does not know that the call sets the function value
     registers we stored in the result block.  We avoid problems by
     claiming that all hard registers are used and clobbered at this
     point.  */
  emit_insn (gen_blockage ());

  DONE;
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
  rtx tmp1 = gen_reg_rtx (DImode);
  rtx tmp2 = gen_reg_rtx (DImode);

  emit_move_insn (tmp1, gen_rtx_LABEL_REF (Pmode, operands[1]));
  emit_insn (gen_adddi3 (tmp2, operands[0], tmp1));
  emit_jump_insn (gen_tablejump_internal (tmp2, operands[1]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit (operand0);
  emit (operand1);
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
  ia64_expand_prologue ();
  DONE;
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
  ia64_expand_epilogue ();
  DONE;
}
  }
  emit_insn (GEN_INT (2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_save_stack_nonlocal (operand0, operand1)
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
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode,
					 "__ia64_save_stack_nonlocal"),
		     0, VOIDmode, 2, XEXP (operands[0], 0), Pmode,
		     operands[1], Pmode);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_nonlocal_goto (operand0, operand1, operand2, operand3)
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
  if (GET_CODE (operands[0]) != REG)
    operands[0] = force_reg (Pmode, operands[0]);
  emit_move_insn (virtual_stack_vars_rtx, operands[0]);
  emit_insn (gen_rtx_USE (VOIDmode, frame_pointer_rtx));
  emit_insn (gen_rtx_USE (VOIDmode, stack_pointer_rtx));
  emit_insn (gen_rtx_USE (VOIDmode, static_chain_rtx));
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode, "__ia64_nonlocal_goto"),
		     0, VOIDmode, 4,
		     operands[0], Pmode, operands[1], Pmode,
		     copy_to_reg (XEXP (operands[2], 0)), Pmode,
		     operands[3], Pmode);
  emit_barrier ();
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand2));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand3));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_nonlocal_goto_receiver ()
{
  rtx _val = 0;
  start_sequence ();
  {

{
  emit_move_insn (frame_pointer_rtx, gen_rtx_REG (DImode, GR_REG (7)));
  DONE;
}
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	const0_rtx));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_eh_epilogue (operand0, operand1, operand2)
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
  rtx bsp = gen_rtx_REG (Pmode, 10);
  rtx sp = gen_rtx_REG (Pmode, 9);

  if (GET_CODE (operands[0]) != REG || REGNO (operands[0]) != 10)
    {
      emit_move_insn (bsp, operands[0]);
      operands[0] = bsp;
    }
  if (GET_CODE (operands[2]) != REG || REGNO (operands[2]) != 9)
    {
      emit_move_insn (sp, operands[2]);
      operands[2] = sp;
    }
  emit_insn (gen_rtx_USE (VOIDmode, sp));
  emit_insn (gen_rtx_USE (VOIDmode, bsp));

  cfun->machine->ia64_eh_epilogue_sp = sp;
  cfun->machine->ia64_eh_epilogue_bsp = bsp;

}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand2));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_restore_stack_nonlocal (operand0, operand1)
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
  emit_library_call (gen_rtx_SYMBOL_REF (Pmode,
					 "__ia64_restore_stack_nonlocal"),
		     0, VOIDmode, 1,
		     copy_to_reg (XEXP (operands[1], 0)), Pmode);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
  }
  emit_insn (gen_rtx_USE (VOIDmode,
	operand0));
  emit_insn (gen_rtx_USE (VOIDmode,
	operand1));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_val_compare_and_swap_si (operand0, operand1, operand2, operand3)
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
  rtx tmp_reg = gen_rtx_REG (DImode, GR_REG(0));
  rtx target = gen_rtx_MEM (BLKmode, tmp_reg);
  RTX_UNCHANGING_P (target) = 1;
  emit_insn (gen_ccv_restore_si (operands[2]));
  emit_insn (gen_mf (target));
  emit_insn (gen_cmpxchg_acq_si (operands[0], operands[1], operands[3]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (3,
		operand1,
		operand2,
		operand3),
	14)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_val_compare_and_swap_di (operand0, operand1, operand2, operand3)
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
  rtx tmp_reg = gen_rtx_REG (DImode, GR_REG(0));
  rtx target = gen_rtx_MEM (BLKmode, tmp_reg);
  RTX_UNCHANGING_P (target) = 1;
  emit_insn (gen_ccv_restore_di (operands[2]));
  emit_insn (gen_mf (target));
  emit_insn (gen_cmpxchg_acq_di (operands[0], operands[1], operands[3]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
    operand3 = operands[3];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (3,
		operand1,
		operand2,
		operand3),
	14)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_lock_test_and_set_si (operand0, operand1, operand2)
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
  emit_insn (gen_xchgsi (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	16)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_lock_test_and_set_di (operand0, operand1, operand2)
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
  emit_insn (gen_xchgdi (operands[0], operands[1], operands[2]));
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	16)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_add_si (operand0, operand1, operand2)
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
  int x;

  if (GET_CODE (operands[2]) == CONST_INT)
    {
      x = INTVAL(operands[2]);
      if (x == -16 || x == -8 || x == -4 || x == -1 ||
          x ==  16 || x ==  8 || x ==  4 || x ==  1)
        {
          emit_insn (gen_fetchadd_acq_si (operands[0], operands[1], operands[2]));
          DONE;
        }
    }

  ia64_expand_fetch_and_op (IA64_ADD_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_sub_si (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_SUB_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_or_si (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_OR_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_and_si (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_AND_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_xor_si (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_XOR_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_nand_si (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_NAND_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_add_di (operand0, operand1, operand2)
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
  int x;

  if (GET_CODE (operands[2]) == CONST_INT)
    {
      x = INTVAL(operands[2]);
      if (x == -16 || x == -8 || x == -4 || x == -1 ||
          x ==  16 || x ==  8 || x ==  4 || x ==  1)
        {
          emit_insn (gen_fetchadd_acq_di (operands[0], operands[1], operands[2]));
          DONE;
        }
    }

  ia64_expand_fetch_and_op (IA64_ADD_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_sub_di (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_SUB_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_or_di (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_OR_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_and_di (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_AND_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_xor_di (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_XOR_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_fetch_and_nand_di (operand0, operand1, operand2)
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
  ia64_expand_fetch_and_op (IA64_NAND_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	18)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_add_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_ADD_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sub_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_SUB_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_or_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_OR_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_and_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_AND_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_xor_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_XOR_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_nand_and_fetch_di (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_NAND_OP, DImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (DImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_add_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_ADD_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_sub_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_SUB_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_or_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_OR_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_and_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_AND_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_xor_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_XOR_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
  _val = gen_sequence ();
  end_sequence ();
  return _val;
}

rtx
gen_nand_and_fetch_si (operand0, operand1, operand2)
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
  ia64_expand_op_and_fetch (IA64_NAND_OP, SImode, operands);
  DONE;
}
    operand0 = operands[0];
    operand1 = operands[1];
    operand2 = operands[2];
  }
  emit_insn (gen_rtx_SET (VOIDmode,
	operand0,
	gen_rtx_UNSPEC (SImode,
	gen_rtvec (2,
		operand1,
		operand2),
	17)));
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
    case 47:
    case 46:
      XVECEXP (pattern, 0, 1) = gen_rtx_CLOBBER (VOIDmode,
	gen_rtx_SCRATCH (DImode));
      break;

    default:
      abort ();
    }
}
