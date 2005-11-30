/*
 * Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
 */

/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


/* ====================================================================
 * ====================================================================
 *
 * Module: cgtarget.cxx
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/x8664/cgtarget.cxx,v $
 *
 * Description:
 *
 * Support routines for target-specific code generator functionality.
 *
 * ====================================================================
 * ====================================================================
 */

#include <ctype.h>

#include "defs.h"
#include "util.h"
#include "config.h"
#include "config_TARG.h"
#include "erglob.h"
#include "tracing.h"
#include "data_layout.h"
#include "const.h"
#include "wn.h"
#include "import.h"
#include "opt_alias_interface.h"
#include "opt_alias_mgr.h"
#include "cgir.h"
#include "cg.h"
#include "void_list.h"
#include "cg_dep_graph.h"
#include "cg_spill.h"
#include "cg_vector.h"
#include "whirl2ops.h"
#include "ti_errors.h"
#include "ti_latency.h"
#include "w2op.h"
#include "cgexp.h"
#include "cg_loop_recur.h"
#include "targ_proc_properties.h"
#include "ti_bundle.h"
#include "hb_sched.h"
#include "hb_hazards.h"
#include "bb.h"
#include "op.h"
#include "op_list.h"
#include "cg_grouping.h"
#include "calls.h"
#include "cgtarget.h"
#include "calls.h"
#include "cg_loop.h"

UINT32 CGTARG_branch_taken_penalty;
BOOL CGTARG_branch_taken_penalty_overridden = FALSE;

TOP CGTARG_Invert_Table[TOP_count+1];
TOP CGTARG_Immed_To_Reg_Table[TOP_count+1];

OPCODE CGTARG_Assoc_Base_Opr_Table[TOP_count];
mTOP CGTARG_Assoc_Base_Top_Table[TOP_count];
mTOP CGTARG_Assoc_Base_Fnc_Table[TOP_count];

mTOP CGTARG_Inter_RegClass_Copy_Table[ISA_REGISTER_CLASS_MAX+1][ISA_REGISTER_CLASS_MAX+1][2];

/* Trace flags: */
BOOL Trace_TD = FALSE;	/* Target-dependent prep trace */
BOOL Trace_Eager = FALSE; /* gcm used to set this... */
extern BOOL Trace_Call_Exp;	/* Trace call expansion, from cgexp */


UINT32 CGTARG_Mem_Ref_Bytes(const OP *memop)
/* -----------------------------------------------------------------------
 * Requires: OP_load(memop) || OP_store(memop)
 * See interface description.
 * -----------------------------------------------------------------------
 */
{
  const TOP topcode = OP_code(memop);

  if (TOP_is_vector_op(topcode))
    return 16;

  if( OP_store( memop ) ){
    const int opnd = OP_find_opnd_use( memop, OU_storeval );
    return OP_opnd_size( (OP*)memop, opnd ) / 8;
  }

  switch (topcode){ 
  case TOP_xor8:
  case TOP_xorx8:
  case TOP_xorxx8:
  case TOP_xorxxx8:
  case TOP_and8:
  case TOP_andx8:
  case TOP_andxx8:
  case TOP_andxxx8:
  case TOP_cmp8:
  case TOP_cmpx8:
  case TOP_cmpxx8:
  case TOP_cmpxxx8:
  case TOP_cmpxi8:
  case TOP_cmpxxi8:
  case TOP_cmpxxxi8:
  case TOP_or8:
  case TOP_orx8:
  case TOP_orxx8:
  case TOP_orxxx8:
  case TOP_ld8_32_n32:
  case TOP_ldu8_32_n32:
  case TOP_ld8_32:
  case TOP_ldx8_32:
  case TOP_ldxx8_32:
  case TOP_ldu8_32:
  case TOP_ldxu8_32:
  case TOP_ldxxu8_32:
  case TOP_ld8_64:
  case TOP_ldx8_64:
  case TOP_ldxx8_64:
  case TOP_ldu8_64:
  case TOP_ldxu8_64:
  case TOP_ldxxu8_64:
  case TOP_ld8_m:
    return 1;
      
  case TOP_xor16:
  case TOP_xorx16:
  case TOP_xorxx16:
  case TOP_xorxxx16:
  case TOP_and16:
  case TOP_andx16:
  case TOP_andxx16:
  case TOP_andxxx16:
  case TOP_cmp16:
  case TOP_cmpx16:
  case TOP_cmpxx16:
  case TOP_cmpxxx16:
  case TOP_cmpxi16:
  case TOP_cmpxxi16:
  case TOP_cmpxxxi16:
  case TOP_or16:
  case TOP_orx16:
  case TOP_orxx16:
  case TOP_orxxx16:
  case TOP_ld16_32_n32:
  case TOP_ldu16_32_n32:
  case TOP_ld16_32:
  case TOP_ldx16_32:
  case TOP_ldxx16_32:
  case TOP_ldu16_32:
  case TOP_ldxu16_32:
  case TOP_ldxxu16_32:
  case TOP_ld16_64:
  case TOP_ldx16_64:
  case TOP_ldxx16_64:
  case TOP_ldu16_64:
  case TOP_ldxu16_64:
  case TOP_ldxxu16_64:
  case TOP_fldcw:
  case TOP_filds:
  case TOP_ld16_m:
    return 2;

  case TOP_xorx32:
  case TOP_xorxx32:
  case TOP_xorxxx32:
  case TOP_orx32:
  case TOP_orxx32:
  case TOP_orxxx32:
  case TOP_andx32:
  case TOP_andxx32:
  case TOP_andxxx32:
  case TOP_cmpx32:
  case TOP_cmpxx32:
  case TOP_cmpxxx32:
  case TOP_cmpxi32:
  case TOP_cmpxxi32:
  case TOP_cmpxxxi32:
  case TOP_testx32:
  case TOP_testxx32:
  case TOP_testxxx32:
  case TOP_ld32_n32:
  case TOP_ld32:
  case TOP_ldx32:
  case TOP_ldxx32:
  case TOP_ld32_64:
  case TOP_ldx32_64:
  case TOP_ldxx32_64:
  case TOP_ldss:
  case TOP_ldss_n32:
  case TOP_ldssx:
  case TOP_ldssxx:
  case TOP_addx32:
  case TOP_subx32:
  case TOP_addxx32:
  case TOP_subxx32:
  case TOP_addxxx32:
  case TOP_subxxx32:
  case TOP_addxss:
  case TOP_subxss:
  case TOP_addxxss:
  case TOP_subxxss:
  case TOP_addxxxss:
  case TOP_subxxxss:
  case TOP_mulxss:
  case TOP_mulxxss:
  case TOP_mulxxxss:
  case TOP_divxss:
  case TOP_divxxss:
  case TOP_divxxxss:
  case TOP_comixss:
  case TOP_comixxss:
  case TOP_comixxxss:
  case TOP_fildl:
  case TOP_flds:
  case TOP_flds_n32:
  case TOP_ld32_m:
  case TOP_cvtsi2sd_x:
  case TOP_cvtsi2sd_xx:
  case TOP_cvtsi2sd_xxx:
  case TOP_cvtsi2ss_x:
  case TOP_cvtsi2ss_xx:
  case TOP_cvtsi2ss_xxx:
    return 4;
      
  case TOP_xorx64:
  case TOP_xorxx64:
  case TOP_xorxxx64:
  case TOP_orx64:
  case TOP_orxx64:
  case TOP_orxxx64:
  case TOP_andx64:
  case TOP_andxx64:
  case TOP_andxxx64:
  case TOP_cmpx64:
  case TOP_cmpxx64:
  case TOP_cmpxxx64:
  case TOP_cmpxi64:
  case TOP_cmpxxi64:
  case TOP_cmpxxxi64:
  case TOP_testx64:
  case TOP_testxx64:
  case TOP_testxxx64:
  case TOP_ld64:
  case TOP_ldx64:
  case TOP_ldxx64:
  case TOP_ldsd_n32:
  case TOP_ldsd:
  case TOP_ldsdx:
  case TOP_ldsdxx:
  case TOP_addx64:
  case TOP_subx64:
  case TOP_addxx64:
  case TOP_subxx64:
  case TOP_addxxx64:
  case TOP_subxxx64:
  case TOP_addxsd:
  case TOP_subxsd:
  case TOP_addxxsd:
  case TOP_subxxsd:
  case TOP_addxxxsd:
  case TOP_subxxxsd:
  case TOP_mulxsd:
  case TOP_mulxxsd:
  case TOP_mulxxxsd:
  case TOP_divxsd:
  case TOP_divxxsd:
  case TOP_divxxxsd:
  case TOP_comixsd:
  case TOP_comixxsd:
  case TOP_comixxxsd:
  case TOP_ijmpx:
  case TOP_ijmpxx:
  case TOP_ijmpxxx:
  case TOP_icallx:
  case TOP_icallxx:
  case TOP_icallxxx:
  case TOP_fildll:
  case TOP_fldl:
  case TOP_fldl_n32:
  case TOP_ld64_m:
  case TOP_cvtsd2ss_x:
  case TOP_cvtsd2ss_xx:
  case TOP_cvtsd2ss_xxx:
  case TOP_cvtsi2sdq_x:
  case TOP_cvtsi2sdq_xx:
  case TOP_cvtsi2sdq_xxx:
  case TOP_cvtsi2ssq_x:
  case TOP_cvtsi2ssq_xx:
  case TOP_cvtsi2ssq_xxx:
    return 8;

  case TOP_fldt:
  case TOP_fldt_n32:
    return 16;
  }

  FmtAssert( false, ("Unknown mem ref bytes: %s", TOP_Name(topcode)) );
  return 0;
}

/* ====================================================================
 *
 * CGTARG_Is_OP_Speculative
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Is_OP_Speculative(OP *op)
{
  if (!OP_load(op)) return FALSE;

  // speculative and advanced loads are safe to speculate.
  if (CGTARG_Is_OP_Advanced_Load(op) || CGTARG_Is_OP_Speculative_Load(op))
    return TRUE;

  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Perform_THR_Code_Generation
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Perform_THR_Code_Generation (OP *load_op, OP *chk_load,
					 THR_TYPE type)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * CGTARG_ARC_Sched_Latency
 *
 * See interface description
 *
 * ====================================================================
 */
INT CGTARG_ARC_Sched_Latency(
  ARC *arc
)
{
  if ( ARC_kind(arc) == CG_DEP_PREBR && 
		  PROC_has_same_cycle_branch_shadow() )
    return 0;
  else
    return ARC_latency(arc);
}


/* ====================================================================
 *
 * CGTARG_Bundle_Slot_Available
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL 
CGTARG_Bundle_Slot_Available(TI_BUNDLE              *bundle,
			     OP                     *op,
			     INT                     slot,
			     ISA_EXEC_UNIT_PROPERTY *prop, 
			     BOOL                    stop_bit_reqd,
			     const CG_GROUPING      *grouping)
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Bundle_Stop_Bit_Available
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL 
CGTARG_Bundle_Stop_Bit_Available(TI_BUNDLE *bundle, INT slot)
{
  // Return TRUE the stop-bit is already set.
  if (TI_BUNDLE_stop_bit(bundle, slot)) return TRUE;

  return TI_BUNDLE_Stop_Bit_Available(bundle, slot);
}

/* ====================================================================
 *
 * CGTARG_Handle_Bundle_Hazard
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Handle_Bundle_Hazard (OP                          *op, 
			     TI_BUNDLE                   *bundle, 
			     VECTOR                      *bundle_vector,
			     BOOL                        can_fill, 
			     INT                         slot_pos, 
			     INT                         max_pos,
			     BOOL                        stop_bit_reqd,
			     ISA_EXEC_UNIT_PROPERTY      prop) 
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * CGTARG_Handle_Errata_Hazard
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Handle_Errata_Hazard (OP *op, INT erratnum, INT ops_to_check)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * Reduce_Fraction
 *
 * Half hearted attempt to reduce a fraction. If we don't succeed
 * the only problem will be that we might round incorrectly on a
 * instruction rate.
 *
 * The algorithm is to first try the denominator as a factor and
 * then a few small primes.
 *
 * ====================================================================
 */
static void
Reduce_Fraction(INT frac[2])
{
  INT i;
  static const INT primes[] = {2, 3, 5, 7, 11, 13};
  INT n = frac[0];
  INT d = frac[1];
  INT p = d;

  if (d < -1 || d > 1) {
    for (i = sizeof(primes) / sizeof(primes[0]); ; p = primes[--i]) {
      while (n % p == 0 && d % p == 0) {
	n = n / p;
	d = d / p;
      }
      if (i == 0) break;
    }
  }

  frac[0] = n;
  frac[1] = d;
}


/* ====================================================================
 *
 * Harmonic_Mean
 *
 * Compute the harmonic weighted mean of two rates as follows:
 *
 *	  1        a                    b
 *	---- = ( ----- * a_rate ) + ( ----- * b_rate )
 *	mean     a + b                a + b
 *
 * Where:
 *
 *	"a" is the number of operations of class "a"
 *	"b" is the number of operations of class "b"
 *
 * ====================================================================
 */
static void
Harmonic_Mean(
  INT mean[2],
  INT a,
  const INT a_rate[2],
  INT b,
  const INT b_rate[2]
) {
  if (a == 0) {
    mean[0] = b_rate[0];
    mean[1] = b_rate[1];
  } else if (b == 0) {
    mean[0] = a_rate[0];
    mean[1] = a_rate[1];
  } else {
    mean[1] =   (a * a_rate[1] * b_rate[0]) 
	      + (b * b_rate[1] * a_rate[0]);
    mean[0] = (a + b) * a_rate[0] * b_rate[0];
    Reduce_Fraction(mean);
  }
}


/* ====================================================================
 *
 * CGTARG_Peak_Rate
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Peak_Rate( PEAK_RATE_CLASS prc, PRC_INFO *info, INT ratio[2] )
{
  ratio[0] = 1;
  ratio[1] = 1;
  
  switch (prc) {
  case PRC_INST:
    ratio[0] = 4;
    break;
  case PRC_MADD:
  case PRC_MEMREF:
    ratio[0] = 2;
    break;
  case PRC_FLOP:
  case PRC_FADD:
  case PRC_FMUL:
    ratio[0] = 2;
    break;
  case PRC_IOP:
    ratio[0] = 2;
    break;
  default:
    ratio[0] = 2;
    break;
  }
}

/* =======================================================================
 *
 *  Plural
 *
 *  Return "s" if i != 1, "" otherwise.  Used to get the number of nouns
 *  right when printing.
 *
 * =======================================================================
 */
#define Plural(i) ((i) != 1 ? "s" : "")


/* =======================================================================
 *
 *  Percent_Of_Peak
 *
 *  Compute the percentage of peak instructions executed. Both the
 *  actual number of instructions executed and the peak attainable
 *  are expressed as a fraction of insts/cycle.
 *
 * =======================================================================
 */
static INT
Percent_Of_Peak(INT numer, INT denom, INT peak[2])
{
  if (numer == 0) return 0;
  return (numer * peak[1] * 100) / ((denom * peak[0]) + peak[1] - 1);
}


/* =======================================================================
 *
 *  CGTARG_Print_PRC_INFO
 *
 *  Print statistics for the PRC_INFO to a 'file'.
 *
 * =======================================================================
 */
void
CGTARG_Print_PRC_INFO(
  FILE       *file,
  PRC_INFO   *info,
  INT32      ii,
  const char *prefix,
  const char *suffix
)
{
  char *s;
  INT madds_per_cycle[2];
  INT memrefs_per_cycle[2];
  INT flops_per_cycle[2];
  INT fadds_per_cycle[2];
  INT fmuls_per_cycle[2];
  INT iops_per_cycle[2];
  INT insts_per_cycle[2];
  INT insts = info->refs[PRC_INST];
  INT memrefs = info->refs[PRC_MEMREF];
  INT flops = info->refs[PRC_FLOP];
  INT madds = info->refs[PRC_MADD];
  INT fadds = info->refs[PRC_FADD];
  INT fmuls = info->refs[PRC_FMUL];
  INT iops = info->refs[PRC_IOP];

  CGTARG_Peak_Rate(PRC_INST, info, insts_per_cycle);
  CGTARG_Peak_Rate(PRC_MEMREF, info, memrefs_per_cycle);
  CGTARG_Peak_Rate(PRC_FLOP, info, flops_per_cycle);
  CGTARG_Peak_Rate(PRC_MADD, info, madds_per_cycle);
  CGTARG_Peak_Rate(PRC_FADD, info, fadds_per_cycle);
  CGTARG_Peak_Rate(PRC_FMUL, info, fmuls_per_cycle);
  CGTARG_Peak_Rate(PRC_IOP, info, iops_per_cycle);

  FmtAssert( madds == 0, ("madds != 0 ") );

  if (flops != 0) {
    BOOL unbalanced_fpu = FALSE;

    if ( madds_per_cycle[0] != 0 ) {
      fprintf(file,"%s%5d flop%1s        (%3d%% of peak)%s",
		 prefix,
		 flops,
		 Plural(flops),
		 Percent_Of_Peak(flops, ii, flops_per_cycle),
		 suffix);
    }
    else {
      fprintf(file,"%s%5d flop%1s        (%3d%% of peak)%s",
		 prefix,
		 flops,
		 Plural(flops),
		 Percent_Of_Peak(flops, ii, flops_per_cycle),
		 suffix);
    }

    if ( unbalanced_fpu ) {
      INT fmuls2_per_cycle[2]; /* combined fmul/madd peak rate */
      INT fadds2_per_cycle[2]; /* combined fadd/madd peak rate */
      INT fadds2 = fadds + madds;
      INT fmuls2 = fmuls + madds;

      Harmonic_Mean(fmuls2_per_cycle,
		    fmuls, fmuls_per_cycle,
		    madds, madds_per_cycle);
      Harmonic_Mean(fadds2_per_cycle,
		    fadds, fadds_per_cycle,
		    madds, madds_per_cycle);

      fprintf(file,"%s%5d fmul%1s        (%3d%% of peak)%s%s",
		 prefix,
		 fmuls2,
		 Plural(fmuls2),
		 Percent_Of_Peak(fmuls2, ii, fmuls2_per_cycle),
		 madds_per_cycle[0] ? " (madds count as 1)" : "",
		 suffix);
      fprintf(file,"%s%5d fadd%1s        (%3d%% of peak)%s%s",
		 prefix,
		 fadds2,
		 Plural(fadds2),
		 Percent_Of_Peak(fadds2, ii, fadds2_per_cycle),
		 madds_per_cycle[0] ? " (madds count as 1)" : "",
		 suffix);
    }
  }

  s = "";
  if (FALSE) {
    iops += memrefs;
    s = " (mem refs included)";
  }

  fprintf(file,"%s%5d mem ref%1s     (%3d%% of peak)%s"
               "%s%5d integer op%1s  (%3d%% of peak)%s%s"
               "%s%5d instruction%1s (%3d%% of peak)%s",
               prefix,
               memrefs,
               Plural(memrefs),
               Percent_Of_Peak(memrefs, ii, memrefs_per_cycle),
	       suffix,
               prefix,
               iops,
               Plural(iops),
               Percent_Of_Peak(iops, ii, iops_per_cycle),
	       s,
	       suffix,
               prefix,
               insts,
               Plural(insts),
               Percent_Of_Peak(insts, ii, insts_per_cycle),
	       suffix);
}



/* =======================================================================
 *
 *  CGTARG_Compute_PRC_INFO
 *
 *  Compute some basic information about the given 'bb'. 
 *
 * =======================================================================
 */
void
CGTARG_Compute_PRC_INFO(
  BB *bb,
  PRC_INFO *info
)
{
  OP *op;

  bzero (info, sizeof (PRC_INFO));

  for ( op = BB_first_op(bb); op != NULL; op = OP_next(op) ) {
    INT num_insts = OP_Real_Ops (op);

    if (num_insts == 0) continue;

    info->refs[PRC_INST] += num_insts;

    if( OP_memory(op) || OP_load_exe(op) ){
      ++info->refs[PRC_MEMREF];
    }

    if( OP_memory(op) && !OP_load_exe(op) ){
      ;
    }
    else if ( OP_flop(op) ) {
      BOOL is_single = (OP_result_size(op,0) == 32);

      ++info->refs[PRC_FLOP];
      info->refs[PRC_FLOP_S] += is_single;
      if (OP_madd(op)) {
        ++info->refs[PRC_MADD];
	info->refs[PRC_MADD_S] += is_single;
      }
      else if (OP_fadd(op) || OP_fsub(op)) {
	++info->refs[PRC_FADD];
	info->refs[PRC_FADD_S] += is_single;
      }
      else if (OP_fmul(op)) {
	++info->refs[PRC_FMUL];
	info->refs[PRC_FMUL_S] += is_single;
      }
    }
    else {
      INT k;

      /* Conditional moves and m[tf]c1 are not tagged as flops.
       * We certainly don't want to call them integer ops, so assume
       * anything that uses FP regs isn't an integer instruction.
       */
      if (OP_has_result(op) && TN_is_float(OP_result(op,0))) goto not_iop;

      for (k = 0; k < OP_opnds(op); k++) {
	if (TN_is_float(OP_opnd(op,k))) goto not_iop;
      }

      info->refs[PRC_IOP] += num_insts;

    not_iop:
      ;
    }
  }
}


/* ====================================================================
 *
 * CG_TARG_Branch_Info
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Branch_Info ( const OP  *op,
                    INT *tfirst,  /* Which operand is the first target? */
                    INT *tcount ) /* How many target operands are there? */
{
  INT i;
  TN *tn;

  /* Initialize results: */
  *tfirst = -1;
  *tcount = 0;

  /* Find the first target: */
  for ( i = 0; ; i++ ) {
    if ( i >= OP_opnds(op) ) return;
    tn = OP_opnd(op,i);
    if ( tn != NULL && TN_is_label(tn) ) break;
  }
  *tfirst = i;

  /* Count the targets: */
  *tcount = 1;
  for ( i++; i < OP_opnds(op); i++ ) {
    tn = OP_opnd(op,i);
    if ( tn == NULL || ! TN_is_label(tn) ) return;
    (*tcount)++;
  }
  return;
}


/* ====================================================================
 *
 * CGTARG_Can_Be_Speculative
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Can_Be_Speculative( OP *op )
{
  WN *wn;

  /* not allowed to speculate anything. */
  if (Eager_Level == EAGER_NONE) return FALSE;

  /* don't speculate volatile memory references. */
  if (OP_volatile(op)) return FALSE;

  if (TOP_Can_Be_Speculative(OP_code(op))) return TRUE;

  if (!OP_load(op)) return FALSE;

  /* Try to identify simple scalar loads than can be safely speculated:
   *  a) read only loads (literals, GOT-loads, etc.)
   *  b) load of a fixed variable (directly referenced)
   *  c) load of a fixed variable (base address is constant or
   *     known to be in bounds)
   *  d) speculative, advanced and advanced-speculative loads are safe.
   */

  /*  a) read only loads (literals, GOT-loads, etc.)
   */
  if (OP_no_alias(op)) goto scalar_load;

  /*  b) load of a fixed variable (directly referenced); this
   *     includes spill-restores.
   *  b') exclude cases of direct loads of weak symbols (#622949).
   */
  if (TN_is_symbol(OP_opnd(op, 1)) &&
      !ST_is_weak_symbol(TN_var(OP_opnd(op, 1)))) goto scalar_load;

  /*  c) load of a fixed variable (base address is constant or
   *     known to be in bounds), comment out the rematerizable bit check 
   *     since it doesn;t guarantee safeness all the time.
   */
  if (/*   TN_is_rematerializable(OP_opnd(op, 0)) || */
      (   (wn = Get_WN_From_Memory_OP(op))
	  && Alias_Manager->Safe_to_speculate(wn))) goto scalar_load;

  /* d) speculative, advanced, speculative-advanced loads are safe to 
   *    speculate. 
   */
  if (CGTARG_Is_OP_Speculative(op)) goto scalar_load;

  /* If we got to here, we couldn't convince ourself that we have
   * a scalar load -- no speculation this time...
   */
  return FALSE;

  /* We now know we have a scalar load of some form. Determine if they
   * are allowed to be speculated.
   */
scalar_load:
  return TRUE; 
}

/* ====================================================================
 *
 * CGTARG_Is_OP_Speculative_Load
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Is_OP_Speculative_Load( OP *memop )
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Is_OP_Advanced_Load
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Is_OP_Advanced_Load( OP *memop )
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Is_OP_Check_Load
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Is_OP_Check_Load( OP *memop )
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_OP_Defs_TN
 * CGTARG_OP_Refs_TN
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_OP_Defs_TN( OP *op, TN *tn )
{
  return FALSE;
}

BOOL
CGTARG_OP_Refs_TN( OP *op, TN *tn )
{
  return FALSE;
}


/* ====================================================================
 *
 * CGTARG_Interference implementation starts here
 *
 * ====================================================================
 */

static MEM_POOL interference_pool;
static VOID_LIST** writing;     /* writing[i] is a list of live ranges being
                                   written into registers in cycle i */
static BOOL is_loop;            /* Are we working on a loop? */
static INT32 assumed_longest_latency = 40;
                                /* We need to allocate <writing> to be somewhat
                                   longer than the number of cycles in the
                                   schedule in order to accommodate writes
                                   initiated near the end of the schedule.
                                   We'll check and grow this number as
                                   necessary. */
static INT32 cycle_count;       /* Number of cycles in the schedule under
                                   consideration. */
static void (*make_interference)(void*,void*);
                                /* Client's interference call back. */

/* ====================================================================
 *
 * Increase_Assumed_Longest_Latency
 *
 * We need to increase our assumptions about the longest latency operation
 * in our target.  Also reallocate <writing>.
 *
 * ====================================================================
 */
static void
Increase_Assumed_Longest_Latency(INT32 new_longest_latency )
{
  DevWarn("Assumed longest latency should be at least %d",
          new_longest_latency);
  writing = TYPE_MEM_POOL_REALLOC_N(VOID_LIST*,&interference_pool,writing,
                                    cycle_count + assumed_longest_latency,
                                    cycle_count + new_longest_latency);
  assumed_longest_latency = new_longest_latency;
}

/* ====================================================================
 *
 * CGTARG_Interference_Required
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Interference_Required(void)
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Interference_Initialize
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Interference_Initialize( INT32 cycle_count_local, BOOL is_loop_local,
                                void (*make_interference_local)(void*,void*) )
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * CGTARG_Result_Live_Range
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Result_Live_Range( void* lrange, OP* op, INT32 offset )
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * CGTARG_Operand_Live_Range
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Operand_Live_Range( void* lrange, INT   opnd, OP*   op, INT32 offset )
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

/* ====================================================================
 *
 * CGTARG_Interference_Finalize
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Interference_Finalize(void)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}


/* ====================================================================
 *
 * CGTARG_Preg_Register_And_Class
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Preg_Register_And_Class(
  WN_OFFSET preg,
  ISA_REGISTER_CLASS *p_rclass,
  REGISTER *p_reg
)
{
  ISA_REGISTER_CLASS rclass;
  INT regnum;
  /* Get the target register number and class associated with the
   * preg, if there is one that is.
   */
  if (!Preg_Is_Dedicated(preg))
    return FALSE;

  if (!Preg_Offset_Is_Int(preg)   &&
      !Preg_Offset_Is_Float(preg) &&
      !Preg_Offset_Is_X87(preg))
    return FALSE;

  /* Get the target register number and class associated with the
   *    * preg, if there is one that is.
   */
  if (Preg_Offset_Is_Int(preg)) {
    regnum = preg - Int_Preg_Min_Offset;
    rclass = ISA_REGISTER_CLASS_integer;
  }
  else if (Preg_Offset_Is_Float(preg)) {
    regnum = preg - Float_Preg_Min_Offset;
    rclass = ISA_REGISTER_CLASS_float;
  }
  else if (Preg_Offset_Is_X87(preg)) {
    regnum = preg - X87_Preg_Min_Offset;
    rclass = ISA_REGISTER_CLASS_x87;
  }
  else if (preg == 0) {
    regnum = 0;
    rclass = ISA_REGISTER_CLASS_integer;
  } 
  else {
    return FALSE;
  }

  /* Find the CG register for the target register and class. */
  for ( REGISTER reg = REGISTER_MIN;
	reg <= REGISTER_CLASS_last_register(rclass);
	reg++ )
  {
    if ( REGISTER_machine_id(rclass,reg) == regnum )
    {
      *p_reg = reg;
      *p_rclass = rclass;
      return TRUE;
    }
  }

  FmtAssert(FALSE, ("failed to map preg %d", preg));
  /*NOTREACHED*/
}


/* ====================================================================
 *
 * CGTARG_Compute_Branch_Parameters
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Compute_Branch_Parameters(INT32 *mispredict, INT32 *fixed, INT32 *brtaken, double *factor)
{
  *mispredict = 0;
  *fixed = 0;
  *brtaken = 0;
  *factor = 0.0;

  if (Is_Target_x86_64() )
  {
    *mispredict= 7; *fixed= 1; *brtaken= 1; *factor = 1.0;
  }
  else
  {
    FmtAssert(FALSE, ("invalid target"));
  }

 /*
  * override for command line options
  *	-CG:mispredicted_branch=N
  *	-CG:mispredicted_factor=N
  */
  if (CG_branch_mispredict_penalty >= 0)
    *mispredict= CG_branch_mispredict_penalty ;

  if (CG_branch_mispredict_factor >= 0)
    *factor= CG_branch_mispredict_factor * (.01);
}


/* ====================================================================
 *
 * CGTARG_Can_Change_To_Brlikely
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_Can_Change_To_Brlikely(OP *xfer_op, TOP *new_opcode)
{
  return FALSE;
}


/* ====================================================================
 *
 * CGTARG_Is_Long_Latency
 *
 * See interface description
 *
 * ====================================================================
 */
INT32 CGTARG_Latency( TOP op )
{
  return ( TI_LATENCY_Result_Available_Cycle(op,0) -
	   TI_LATENCY_Operand_Access_Cycle(op,0) );
}

BOOL CGTARG_Is_Long_Latency(TOP op)
{
  return ( CGTARG_Latency(op) > 2 );
}

/* ====================================================================
 *
 * CGTARG_Analyze_Branch
 *
 * See interface description
 *
 * ====================================================================
 */
VARIANT CGTARG_Analyze_Branch(
  OP *br,
  TN **tn1,
  TN **tn2)
{
  OP* cmp_op = NULL;

  /* Find out the cmp op first. */
  for( OP* op = OP_prev(br); op != NULL; op = OP_prev(op) ){
    if( TOP_is_change_rflags( OP_code(op) ) ){
      cmp_op = op;
      break;
    }
  }

  FmtAssert( cmp_op != NULL, ("compare op is missing") );

  if( OP_icmp( cmp_op ) ){
    /* Branch operands are usually number 0 and 1. Where something
       different is used, we override below. */
    *tn1 = OP_opnd( cmp_op, 0 );
    *tn2 = OP_opnd( cmp_op, 1 );

    if( OP_code(cmp_op) == TOP_test32  ||
	OP_code(cmp_op) == TOP_test64  ||
	OP_code(cmp_op) == TOP_testi32 ||
	OP_code(cmp_op) == TOP_testi64 ){
      if( *tn1 == *tn2 )
	*tn2 = Gen_Literal_TN( 0, 4 );
    }
  } else {
    /* The test operation has been removed by ebo. */
    *tn1 = OP_result( cmp_op, 0 );
    *tn2 = Gen_Literal_TN( 0, 4 );
  }

  /* bug#1407
     Don't miss the 64-bit comparisions.
   */
  const bool is_64bit = OP_result_size(cmp_op,0) == 64;

  switch( OP_code(br) ){
  case TOP_jge:
    return OP_flop(cmp_op) ? V_BR_DGE : ( is_64bit ? V_BR_I8GE : V_BR_I4GE );

  case TOP_jae:
    return OP_flop(cmp_op) ? V_BR_DGE : ( is_64bit ? V_BR_U8GE : V_BR_U4GE );

  case TOP_jg:
    return OP_flop(cmp_op) ? V_BR_DGT : ( is_64bit ? V_BR_I8GT : V_BR_I4GT );

  case TOP_ja:
    return OP_flop(cmp_op) ? V_BR_DGT : ( is_64bit ? V_BR_U8GT : V_BR_U4GT );

  case TOP_jle:
    return OP_flop(cmp_op) ? V_BR_DLE : ( is_64bit ? V_BR_I8LE : V_BR_I4LE );

  case TOP_jbe:
    return OP_flop(cmp_op) ? V_BR_DLE : ( is_64bit ? V_BR_U8LE : V_BR_U4LE );

  case TOP_jl:
    return OP_flop(cmp_op) ? V_BR_DLT : ( is_64bit ? V_BR_I8LT : V_BR_I4LT );

  case TOP_jb:
    return OP_flop(cmp_op) ? V_BR_DLT : ( is_64bit ? V_BR_U8LT : V_BR_U4LT );

  case TOP_je:
    return OP_flop(cmp_op) ? V_BR_DEQ : ( is_64bit ? V_BR_U8EQ : V_BR_U4EQ );

  case TOP_jne:
    return OP_flop(cmp_op) ? V_BR_DNE : ( is_64bit ? V_BR_U8NE : V_BR_U4NE );

  case TOP_jp:
    // TOP_jp is used to force IEEE comparisons for TOP_jne and TOP_je.
    // So we cannot decide here.
    return V_BR_NONE;
    
  default:
    FmtAssert( false, ("unexpected conditional branch %s\n", TOP_Name(OP_code(br))) );
    break;
  }

  return V_BR_NONE;
}


/* ====================================================================
 *
 * CGTARG_Analyze_Compare
 *
 * See interface description
 *
 * ====================================================================
 */
VARIANT CGTARG_Analyze_Compare(
  OP *br,
  TN **tn1,
  TN **tn2,
  OP **compare_op)
{
  TN* cond_tn1 = NULL;
  TN* cond_tn2 = NULL;

  /* Classify the condition based on the branch instruction.  */

  VARIANT variant = CGTARG_Analyze_Branch(br, &cond_tn1, &cond_tn2);

  /* Once we have varients for 'bf' and 'bt' (and possibly some
     others), we can attempt to find the comparison. For now, none of
     the branches have associated comparisons. */

  for( OP* op = OP_prev(br); op != NULL; op = OP_prev(op) ){
    if( TOP_is_change_rflags( OP_code(op) ) ){
      if( OP_icmp( op ) )
	*compare_op = op;
      break;
    }
  }

  *tn1 = cond_tn1;
  *tn2 = cond_tn2;

  return variant;
}


/* ====================================================================
 *
 * CGTARG_Equivalent_Nonindex_Memory_Op
 *
 * See interface description
 *
 * ====================================================================
 */
TOP
CGTARG_Equiv_Nonindex_Memory_Op ( OP *op )
{
  return TOP_UNDEFINED;
}

/* ====================================================================
 *
 * CGTARG_Which_OP_Select
 *
 * See interface description
 *
 * ====================================================================
 */
TOP
CGTARG_Which_OP_Select ( UINT16 bit_size, BOOL is_float, BOOL is_fcc )
{
  FmtAssert( FALSE, ( "CGTARG_Which_OP_Select: Unsupported Target") );
  return TOP_UNDEFINED;
}

/* ====================================================================
 *
 * Is_OP_fp_op1
 *
 * FP_OP1 = {sfmac, sfmisc, xma, xmpy, fmac, cvt.fx, fmisc}
 *
 * ====================================================================
 */
static BOOL
Is_OP_fp_op1(OP *op)
{
  return FALSE;
}

/* ====================================================================
 *
 * Insert_Stop_Bits
 *
 * ====================================================================
 */
void
Insert_Stop_Bits(BB *bb)
{
}

/* ====================================================================
 *
 * CGTARG_Special_Min_II
 *
 * See interface description
 *
 * ====================================================================
 */
INT32 CGTARG_Special_Min_II(BB* loop_body, BOOL trace)
{
  return 0;
}

/* ====================================================================
 *
 * Hardware_Workarounds
 *
 * Placeholder for all Hardware workarounds. 
 *
 * ====================================================================
 */
void
Hardware_Workarounds(void)
{
}

/* ====================================================================
 *
 * CGTARG_Initialize
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Initialize(void)
{
#define Set_Inv_Table(a,b)        \
   do {                           \
     CGTARG_Invert_Table[a] = b;  \
     CGTARG_Invert_Table[b] = a;  \
   } while( 0 )

#define Set_Immed_To_Reg_Table(a,b)    \
   do {                                \
     CGTARG_Immed_To_Reg_Table[a] = b; \
     CGTARG_Immed_To_Reg_Table[b] = a; \
   } while( 0 )

  INT32 i;

  /* Init all table entries to TOP_UNDEFINED.
   */
  for(i = 0; i <= TOP_count; ++i) {
    CGTARG_Invert_Table[i] = TOP_UNDEFINED;
    CGTARG_Immed_To_Reg_Table[i] = TOP_UNDEFINED;
  }

  for (i = 0; i <= ISA_REGISTER_CLASS_MAX; ++i) {
    INT j;
    for (j = 0; j <= ISA_REGISTER_CLASS_MAX; ++j) {
      CGTARG_Inter_RegClass_Copy_Table[i][j][FALSE] = TOP_UNDEFINED;
      CGTARG_Inter_RegClass_Copy_Table[i][j][TRUE] = TOP_UNDEFINED;
    }
  }

  /* Init table for CGTARG_Invert:
   */
  Set_Inv_Table( TOP_addss, TOP_subss );
  Set_Inv_Table( TOP_addsd, TOP_subsd );
  Set_Inv_Table( TOP_add32, TOP_sub32 );
  Set_Inv_Table( TOP_add64, TOP_sub64 );

  Set_Inv_Table( TOP_cmovb,  TOP_cmovae );
  Set_Inv_Table( TOP_cmove,  TOP_cmovne );
  Set_Inv_Table( TOP_cmovbe, TOP_cmova );
  Set_Inv_Table( TOP_cmovl,  TOP_cmovge );
  Set_Inv_Table( TOP_cmovle, TOP_cmovg );

  Set_Inv_Table( TOP_jb,  TOP_jae );
  Set_Inv_Table( TOP_je,  TOP_jne );
  Set_Inv_Table( TOP_jbe, TOP_ja );
  Set_Inv_Table( TOP_jge, TOP_jl );
  Set_Inv_Table( TOP_jle, TOP_jg );

  Set_Inv_Table( TOP_setb,  TOP_setae );
  Set_Inv_Table( TOP_sete,  TOP_setne );
  Set_Inv_Table( TOP_setbe, TOP_seta );
  Set_Inv_Table( TOP_setge, TOP_setl );
  Set_Inv_Table( TOP_setle, TOP_setg );

  /* Init table for CGTARG_Immed_To_Reg:
   */
  Set_Immed_To_Reg_Table( TOP_addi32, TOP_add32 );
  Set_Immed_To_Reg_Table( TOP_addi64, TOP_add64 );
  Set_Immed_To_Reg_Table( TOP_andi32, TOP_and32 );
  Set_Immed_To_Reg_Table( TOP_andi64, TOP_and64 );
  Set_Immed_To_Reg_Table( TOP_ori32,  TOP_or32  );
  Set_Immed_To_Reg_Table( TOP_ori64,  TOP_or64  );
  Set_Immed_To_Reg_Table( TOP_xori32, TOP_xor32 );
  Set_Immed_To_Reg_Table( TOP_xori64, TOP_xor64 );
  Set_Immed_To_Reg_Table( TOP_cmpi32, TOP_cmp32 );
  Set_Immed_To_Reg_Table( TOP_cmpi64, TOP_cmp64 );
  Set_Immed_To_Reg_Table( TOP_imuli32,TOP_imul32 );
  Set_Immed_To_Reg_Table( TOP_imuli64,TOP_imul64 );


  /* Init table for CGTARG_Inter_RegClass_Copy_Table:
   */
  CGTARG_Inter_RegClass_Copy_Table[ISA_REGISTER_CLASS_float]
				  [ISA_REGISTER_CLASS_integer]
				  [FALSE] = TOP_UNDEFINED;
  CGTARG_Inter_RegClass_Copy_Table[ISA_REGISTER_CLASS_float]
				  [ISA_REGISTER_CLASS_integer]
				  [TRUE]  = TOP_UNDEFINED;

  CGTARG_Inter_RegClass_Copy_Table[ISA_REGISTER_CLASS_integer]
				  [ISA_REGISTER_CLASS_float]
				  [FALSE] = TOP_UNDEFINED;
  CGTARG_Inter_RegClass_Copy_Table[ISA_REGISTER_CLASS_integer]
				  [ISA_REGISTER_CLASS_float]
				  [TRUE]  = TOP_UNDEFINED;

#undef Set_Inv_Table
#undef Set_Immed_To_Reg_Table

  return;
}


/* ====================================================================
 *
 * CGTARG_Load_From_Memory
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Load_From_Memory(TN *tn, ST *mem_loc, OPS *ops)
{
  TYPE_ID mtype = TY_mtype(ST_type(mem_loc));
  Exp_Load(mtype, mtype, tn, mem_loc, 0, ops, 0);
}


/* ====================================================================
 *
 * CGTARG_Store_To_Memory
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Store_To_Memory(TN *tn, ST *mem_loc, OPS *ops)
{
  TYPE_ID mtype = TY_mtype(ST_type(mem_loc));
  Exp_Store(mtype, tn, mem_loc, 0, ops, 0);
}


/* ====================================================================
 *
 * CGTARG_Init_Assoc_Base
 *
 * See interface description
 *
 * ====================================================================
 */
void CGTARG_Init_Assoc_Base(void)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}


/* ====================================================================
 *
 * CGTARG_Copy_Operand
 *
 * See interface description
 *
 * ====================================================================
 */
INT CGTARG_Copy_Operand(OP *op)
{
  const TOP opr = OP_code(op);

  switch( opr ){
  case TOP_addi32:
  case TOP_addi64:
  case TOP_subi32:
  case TOP_subi64:
  case TOP_sari32:
  case TOP_sari64:
  case TOP_shli32:
  case TOP_shli64:
  case TOP_shri32:
  case TOP_shri64:
  case TOP_lea32:
  case TOP_lea64:
    if (TN_has_value(OP_opnd(op,1)) && TN_value(OP_opnd(op,1)) == 0)
      return 0;
    break;

  case TOP_andi32:
  case TOP_andi64:
    {
      TN *src1 = OP_opnd( op, 1 );
      if (TN_is_constant(src1)) {
	INT64 val;
	if (TN_has_value(src1))
	  val = TN_value(src1);
	else FmtAssert(FALSE,("unexpected constant in CGTARG_Copy_Operand"));
	if (val == -1)
	  return 0;
      }
      break;
    }

  case TOP_movabsq:
  case TOP_ldc32:
  case TOP_ldc64:
    {
      TN* opnd = OP_opnd( op, 0 );
      if( TN_has_value( opnd ) ){
	return 0;
      }
    }
    break;

  case TOP_mov64:
  case TOP_movsd:
  case TOP_movss:
  case TOP_movdq:
  case TOP_movapd:
  case TOP_movaps:
  case TOP_fmov:
    return 0;

  case TOP_mov32:
    if( TN_size(OP_result(op,0)) == TN_size(OP_opnd(op,0)) )
      return 0;
    break;

  case TOP_ori32:
  case TOP_ori64:
  case TOP_xori32:
  case TOP_xori64:
    {
      TN *src1 = OP_opnd( op, 1 );
      if (TN_is_constant(src1)) {
	INT64 val;
	if (TN_has_value(src1))
	  val = TN_value(src1);
	else FmtAssert(FALSE,("unexpected constant in CGTARG_Copy_Operand"));
	if (val == 0)
	  return 0;
      }
      break;
    }
  }

  if (OP_copy(op)) {
    if (opr == TOP_add32 || opr == TOP_add64 ||
        opr == TOP_or32  || opr == TOP_or64  ||
        opr == TOP_mov32 || opr== TOP_mov64  ||
	opr == TOP_movsd || opr == TOP_movss ||
	opr == TOP_fmov )
      return 0;
  }

  return -1;
}


/* ====================================================================
 *
 * CGTARG_Can_Fit_Immediate_In_Add_Instruction
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_Can_Fit_Immediate_In_Add_Instruction (INT64 immed)
{
  return ISA_LC_Value_In_Class (immed, LC_simm32);
}


/* ====================================================================
 *
 * CGTARG_Can_Load_Immediate_In_Single_Instruction
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_Can_Load_Immediate_In_Single_Instruction (INT64 immed)
{
  return ISA_LC_Value_In_Class (immed, LC_simm32);
}



/* ====================================================================
 *
 * CGTARG_Predicate_OP
 *
 * See interface description
 *
 * ====================================================================
 */
/*ARGSUSED*/
void
CGTARG_Predicate_OP(BB* bb, OP* op, TN* pred_tn)
{
  if (OP_has_predicate(op)) {
    FmtAssert( FALSE, ( "CGTARG_Which_OP_Select: Unsupported Target") );
  }
}

/* ====================================================================
 *
 * CGTARG_Branches_On_True
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Branches_On_True(OP* br_op, OP* cmp_op)
{
  return FALSE;
}



/* ====================================================================
 *
 * CGTARG_Parallel_Compare
 *
 * See interface description
 *
 * ====================================================================
 */
TOP
CGTARG_Parallel_Compare(OP* cmp_op, COMPARE_TYPE ctype)
{
  return TOP_UNDEFINED;
}


static BOOL OP_Reads_Dedicated_TN( OP* op, TN* ded_tn )
{
  for( int i = 0; i < OP_opnds(op); i++ ){
    TN* tmp_tn = CGTARG_Gen_Dedicated_Subclass_TN( op, i, FALSE );
    if( tmp_tn != NULL &&
	TNs_Are_Equivalent( tmp_tn, ded_tn ) )
      return TRUE;
  }

  return FALSE;
}


static BOOL OP_Writes_Dedicated_TN( OP* op, TN* ded_tn )
{
  for( int i = 0; i < OP_results(op); i++ ){
    TN* tmp_tn = CGTARG_Gen_Dedicated_Subclass_TN( op, i, TRUE );
    if( tmp_tn != NULL &&
	TNs_Are_Equivalent( tmp_tn, ded_tn ) )
      return TRUE;
  }

  return FALSE;  
}


static BOOL OP_is_lea( OP* op )
{
  const TOP top = OP_code(op);

  return ( top == TOP_lea32 || top == TOP_lea64 ||
	   top == TOP_leax32 || top == TOP_leax64 ||
	   top == TOP_leaxx32 || top == TOP_leaxx64 );
}

/* ====================================================================
 *
 * CGTARG_Dependence_Required
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_Dependence_Required( OP* pred_op, OP* succ_op )
{
  FmtAssert( OP_bb(pred_op) == OP_bb(succ_op), ("NYI") );

  /* Do not change the relative order for operations that store callee-saved
     registers for exception handling code. Refer to bug#1928 for detail.
     (bug#2205)
  */

  if( PU_Has_Exc_Handler ){
    /* Don't bother to scan thru <Saved_Callee_Saved_Regs> one-by-one to save
       us some compilation time.
    */
    if( BB_entry( OP_bb(pred_op) ) &&
	OP_store( pred_op )        &&
	OP_store( succ_op )        &&
	TN_is_save_reg( OP_opnd(pred_op,0) ) )
      return TRUE;
  }

  /* If exists a dependence between <pred_op> and <succ_op>, then we can return
     to avoid generating superfluous MISC arcs.
  */
  {
    for( ARC_LIST* arcs = OP_succs(pred_op);
	 arcs != NULL;
	 arcs = ARC_LIST_rest(arcs) ){
      ARC *arc = ARC_LIST_first(arcs);
      if( ARC_succ(arc) == succ_op )
	return FALSE;
    }
  }

  /* A sp adjustment operation should always be scheduled before a store operation,
     which could access the stack potentially.
  */
  {
    if( OP_results(pred_op) > 0              && 
	TN_is_sp_reg( OP_result(pred_op,0) ) &&
	OP_store( succ_op ) )
      return TRUE;
  }

  /* Do not schedule a load/store/mfence operation across an mfence operation.
   */
  {
    if( TOP_is_unknown_memdata( OP_code(pred_op) ) ){
      if( OP_memory( succ_op )   ||
	  OP_load_exe( succ_op ) ||
	  TOP_is_unknown_memdata( OP_code(succ_op) ) )
	return TRUE;
    }

    if( TOP_is_unknown_memdata( OP_code(succ_op) ) ){
      if( OP_memory( pred_op )   ||
	  OP_load_exe( pred_op ) ||
	  TOP_is_unknown_memdata( OP_code(pred_op) ) )
	return TRUE;
    }
  }

  /* Bug #336
     Don't schedule an op before/after the entry/exit stack
     adjustment code; otherwise will cause spilling error if
     this op is spilled later (before the stack is formed).
   */
  {
    BB* bb = OP_bb( pred_op );
    if( BB_entry(bb) && !BB_handler(bb) ){
      if( pred_op == BB_entry_sp_adj_op(bb) )
	return TRUE;
    }

    if( BB_exit(bb) ){
      if( succ_op == BB_exit_sp_adj_op(bb) )
	return TRUE;
    }
  }

  /* Return TRUE if <pred_op> and <succ_op> are connected with x87 control-word.
   */
  {
    if( TOP_is_change_x87_cw( OP_code(pred_op) ) &&
	TOP_is_read_x87_cw( OP_code(succ_op) ) )
      return TRUE;

    if( TOP_is_read_x87_cw( OP_code(pred_op) ) &&
	TOP_is_change_x87_cw( OP_code(succ_op) ) )
      return TRUE;
  }

  /* Return TRUE if <pred_op> can change rflags, and <succ_op> is a
     comparison op. */

  /* So far TOP_lea and TOP_leax are considered as the ones can change
     rflags, since these two ops might be converted to add later. */
  {
    const BOOL pred_is_lea = OP_is_lea( pred_op );
    const BOOL succ_is_lea = OP_is_lea( succ_op );    

    if( TOP_is_change_rflags( OP_code(pred_op) ) || pred_is_lea ){
      if( OP_icmp( succ_op ) || OP_reads_rflags( succ_op ) )
	return TRUE;

      /* A <neg> op will set the %rflags implicitly...
	 To Do: this routine should be re-written!!! */
      if( OP_code(succ_op) == TOP_neg32 || OP_code(succ_op) == TOP_neg64 ){
	for( ARC_LIST* arcs = OP_succs(succ_op); arcs != NULL; arcs = ARC_LIST_rest(arcs) ){
	  ARC* arc = ARC_LIST_first(arcs);
	  OP* op = ARC_succ(arc);
	  const TOP top = OP_code( op );

	  if( ( TOP_is_cond_set(top) || TOP_is_cond_move(top) ) &&
	      TNs_Are_Equivalent( OP_result(op,0), OP_result(succ_op,0) ) )
	    return TRUE;
	}
      }
    }

    /* Return TRUE if <succ_op> can change rflags, and <pred_op> will take
       rflags as one of the opnds.
    */
    if( TOP_is_change_rflags( OP_code(succ_op) ) || succ_is_lea ){
      if( OP_reads_rflags( pred_op ) )
	return TRUE;
    }
  }

  /* Return TRUE for case where <succ_op>, like div, will over-write
     some registers implicitly, and these registers are used by <pred_op> also.
     However, there other way around will be the wrong code sequence introduced
     by some other optimizations, like ebo.
  */
  {
    for( int i = 0; i < OP_opnds(succ_op); i++ ){
      TN* tmp_tn = CGTARG_Gen_Dedicated_Subclass_TN( succ_op, i, FALSE );
      if( tmp_tn != NULL ){
	// for RAW
	if( OP_Writes_Dedicated_TN( pred_op, tmp_tn ) )
	  return TRUE;

	/* Bug#352
	   For an operation like shift, its opnd will be re-defined at
	   function Preallocate_Single_Register_Subclasses().
	   Thus, an implicit WAR is imposed here.
	*/
	if( !TN_is_dedicated( OP_opnd(succ_op,i) ) &&
	    OP_Reads_Dedicated_TN( pred_op, tmp_tn ) )
	  return TRUE;
      }
    }

    for( int i = 0; i < OP_results(succ_op); i++ ){
      TN* tmp_tn = CGTARG_Gen_Dedicated_Subclass_TN( succ_op, i, TRUE );
      if( tmp_tn != NULL ){
	// for WAW or WAR
	if( OP_Writes_Dedicated_TN( pred_op, tmp_tn ) ||
	    OP_Reads_Dedicated_TN( pred_op, tmp_tn ) ){
	  return TRUE;
	}
      }
    }
  }

  /* Misc. requirements.
   */
  {
    if (OP_code(succ_op) == TOP_savexmms)
      return TRUE;

    if (OP_code(succ_op) == TOP_leave)
      return TRUE;

    /* Under -fpic -m32, do not re-schedule operations that compute GOT.
     */
    if( OP_computes_got( pred_op ) ||
	OP_computes_got( succ_op ) )
      return TRUE;
  }

  /* Since a test operation will be removed, one more checking is required.
   */
  {
    if( TOP_is_change_rflags( OP_code(pred_op) ) &&
	TOP_is_change_rflags( OP_code(succ_op) ) ){
      for( OP* next = OP_next(succ_op); next != NULL; next = OP_next(next) ){
	if( OP_reads_rflags(next) )
	  return TRUE;
	if( TOP_is_change_rflags( OP_code(next) ) )
	  break;
      }
    }   
  }

  return FALSE;
}


/* ====================================================================
 *
 * CGTARG_Adjust_Latency
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Adjust_Latency(OP *pred_op, OP *succ_op, CG_DEP_KIND kind, UINT8 opnd, INT *latency)
{
}

/* ====================================================================
 *
 * CGTARG_Generate_Remainder_Branch
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Generate_Remainder_Branch(TN *trip_count, TN *label_tn,
				 OPS *prolog_ops, OPS *body_ops)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}


/* ====================================================================
 *
 * CGTARG_OP_is_counted_loop
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_OP_is_counted_loop(OP *op) 
{
  return FALSE;
}


/* ======================================================================
 *
 * Loop_Countsdown_Xformed
 *
 * Return TRUE if either of the following conditions is TRUE and FALSE
 * otherwise.
 * (1) If the loop is not amenable to counts down loop tranformation
 *     (the branching condition is not a jne (upperbound)
 * (2) If the loop has already been thru this tranformation (as a result
 *     of which one may find a dec type instruction preceding the branch.
 *
 * ======================================================================
 */
static BOOL
Loop_Countsdown_Xformed ( BB* bb )
{
  OP* op;

  if ( OP_code( BB_branch_op( bb ) ) != TOP_jne )
    return TRUE;

  // Look back at the last op that sets the rflags for this conditional 
  // branch. 
  for ( op = BB_branch_op( bb ); op != NULL; op = op->prev )
    if ( TOP_is_change_rflags( OP_code( op ) ) )
      break;
  if ( op == NULL /* the paranoid case */ || 
       ( OP_code( op ) == TOP_dec32 && 
	 OP_code( op ) == TOP_dec64 ) /* already processed */ )
    return TRUE;

  return FALSE;
}

extern BOOL TN_live_out_of( TN*, BB* );

static BOOL CGTARG_live_out_of ( TN* tn, BB* tail, LOOP_DESCR *loop )
{
  BB* bb;
  OP* op;
  INT opnd, result;

  if ( TN_live_out_of( tn, tail ) ) {
    if ( TN_live_out_of( tn, BB_next( tail ) ) )
      return TRUE;

    FOR_ALL_BB_SET_members( LOOP_DESCR_bbset(loop), bb ) {
      if (bb == tail)
	break;
      FOR_ALL_BB_OPs ( bb, op ) {
	for ( opnd = 0; opnd < OP_opnds( op ); opnd ++ )
	  if ( OP_opnd( op, opnd ) == tn )
	    return TRUE;
	for ( result = 0; result < OP_results( op ); result ++ )
	  if ( OP_result( op, result ) == tn )
	    return TRUE;
      }
    }
  }
      
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Generate_Countdown_Loop
 *
 * Tranform a loop that looks like:
 *    do i = 0, N, i ++
 *      body
 *    enddo
 * to:
 *    do i = N, 0, i --
 *	body
 *    enddo
 * The advantage of this tranformation is two-fold:
 *    (1) we can make use of the dec instruction in x86 and get rid of 
 *        extra moves/loop control variable update.
 *    (2) free a register used as a temporary to hold the loop
 *        control variable (instead we count down the upper bound).
 *
 * - inspired by bug 1254.
 *
 * ====================================================================
 */
void
CGTARG_Generate_Countdown_Loop ( TN *trip_count_tn,
				 BB *tail, 
				 OPS *prolog_ops,
				 OPS *body_ops, 
				 BOOL single_bb, 
				 LOOP_DESCR *loop )
{ 
  OP *cmp, *incr, *op, *branch;
  BOOL cmp_found = FALSE, incr_found = FALSE;
  INT opnd, result;

  if (!CG_cloop)
    return;

  if (Loop_Countsdown_Xformed(tail))
    return;
  
  branch = BB_branch_op(tail);
  incr = cmp = NULL;

  // Find the compare operation that sets the rflags preceding the 
  // branch instruction. Also, find the loop increment instruction.
  for ( op = branch->prev; op != NULL; op = op->prev ) {
    if ( !cmp_found && 
	( OP_code( op ) == TOP_cmp32 ||  OP_code( op ) == TOP_cmp64 ) ) {
      cmp_found = TRUE;
      cmp = op;
    }

    if ( !incr_found && cmp_found &&
	 ( OP_code( op ) == TOP_addi32 ||
	   OP_code( op ) == TOP_addi64 ) && 
	 OP_opnd( op, 0 ) == OP_result( op, 0 ) /* defopnd */ && 
	 ( OP_result( op, 0 ) == OP_opnd( cmp, 0 ) ||
	   OP_result( op, 0 ) == OP_opnd( cmp, 1 ) ) &&
	 !CGTARG_live_out_of( OP_result( op, 0 ), tail, loop ) &&
	 TN_is_constant( OP_opnd( op, 1 ) ) &&
	 TN_value( OP_opnd ( op, 1 ) ) == 1 ) {
      incr_found = TRUE;
      incr = op;

    } else if ( /* SAFETY CHECK */
	       cmp_found && 
	       ( OP_result( op, 0 ) == OP_opnd( cmp, 0 ) ||
		 OP_result( op, 0 ) == OP_opnd( cmp, 1 ) ) ) {
      incr_found = FALSE;
      cmp_found = FALSE;
      break;

    } else if ( /* SAFETY CHECK */
	       cmp_found &&
	       TOP_is_store( OP_code( op ) ) && 
	       ( OP_opnd( op, 0 ) == OP_opnd( cmp, 0 ) ||
		 OP_opnd( op, 0 ) == OP_opnd( cmp, 1 ) ) ) {
      // Make sure the operands to the cmp op is not one of those registers
      // written out to memory every iteration of the loop.
      incr_found = FALSE;
      cmp_found = FALSE;
      break;
      
    } else if ( /* SAFETY CHECK */
	       incr_found ) {
      TN* incr_result = OP_result ( incr, 0 );
      for ( opnd = 0; opnd < OP_opnds( op ); opnd ++)
	if ( OP_opnd ( op, opnd ) == incr_result ) {
	  incr_found = FALSE;
	  cmp_found = FALSE;
	  break;
	}
      for ( result = 0; result < OP_results( op ); result ++)
	if ( OP_result ( op, result ) == incr_result ) {
	  incr_found = FALSE;
	  cmp_found = FALSE;
	  break;
	}
      if ( !incr_found && !cmp_found )
	break;
    }
  }
  if ( !incr_found || !cmp_found )
    return;

  // At this point, we know all we need to know to transform the
  // loop into a countdown loop.   

  // Borrowed from IA64
  INT32 trip_size = TN_size(trip_count_tn);
  TN *lc_tn_tmp;
  TN* lc_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer,
			       trip_size);

  if (TN_is_constant(trip_count_tn)) {
    lc_tn_tmp = Gen_Literal_TN(TN_value(trip_count_tn),
			       trip_size);
  } else {
    lc_tn_tmp = trip_count_tn;
  } 

  // workaround a Exp_COPY bug?
  if (TN_is_constant(lc_tn_tmp)) {
    TN *tmp_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer,
				  trip_size);
    Exp_COPY(tmp_tn, lc_tn_tmp, prolog_ops);
    lc_tn_tmp = tmp_tn;
  }

  Exp_COPY(lc_tn, lc_tn_tmp, prolog_ops);

  // New ops to be added to the tail BB.
  Build_OP( OP_code( cmp ) == TOP_cmp32 ? TOP_dec32 : TOP_dec64, 
	    lc_tn, lc_tn, body_ops );
  if ( single_bb ) {
    CG_LOOP_Init_Op( OPS_last( body_ops ) );
    Set_OP_omega( OPS_last( body_ops ), 0, 1 );
  }
  Build_OP ( OP_code( branch ), OP_opnd( branch, 0 ), 
	     OP_opnd( branch, 1 ), body_ops );
  if ( single_bb ) {
    CG_LOOP_Init_Op( OPS_last( body_ops ) );
    Set_OP_omega( OPS_last( body_ops ), 0, OP_omega( branch, 0));
    Set_OP_omega( OPS_last( body_ops ), 1, OP_omega( branch, 1));
  }

  // Old ops to be removed from the tail BB.
  BB_Remove_Op( tail, incr );
  BB_Remove_Op( tail, cmp );
  BB_Remove_Op( tail, branch );

  return;  
}


/* Convert temporal stores to non-temporal stores if the amount of data that
   <loop> will access is larger than the cache can provide.
 */
void CGTARG_LOOP_Optimize( LOOP_DESCR* loop )
{
  UINT32 trip_count = 0;
  TN* trip_count_tn = CG_LOOP_Trip_Count(loop);
  BB* body = LOOP_DESCR_loophead(loop);

  if( trip_count_tn != NULL &&
      TN_is_constant(trip_count_tn) ){
    trip_count = TN_value( trip_count_tn );

  } else {
    const ANNOTATION* annot = ANNOT_Get(BB_annotations(body), ANNOT_LOOPINFO);
    const LOOPINFO* info = ANNOT_loopinfo(annot);

    trip_count = WN_loop_trip_est(LOOPINFO_wn(info));
  }

  OP* op = NULL;
  INT64 size = 0;

  /* First, estimate the totol size (in bytes) that this loop will
     bring to the cache.
  */

  FOR_ALL_BB_OPs_FWD( body, op ){
    if( TOP_is_vector_op( OP_code(op) ) &&
	OP_store( op )                  &&
	!TOP_is_nt_store( OP_code(op) ) ){
      size += CGTARG_Mem_Ref_Bytes( op );
    }
  }

  size *= trip_count;

  const INT64 cache_size = CG_movnti * 1024;

  if( size < cache_size )
    return;

  FOR_ALL_BB_OPs_FWD( body, op ){
    if( OP_prefetch( op ) ){
      /* Get rid of any prefetchw operation, because it "loads the prefetched
	 line and sets the cache-line state to Modified, in anticipation
	 of subsequent data writes to the line." In our case here, we
	 do not anticipate the data will be used in the near future.
       */
      const ISA_ENUM_CLASS_VALUE pfhint = TN_enum( OP_opnd(op,0) );
      if( pfhint == ECV_pfhint_L1_store )
	OP_Change_To_Noop( op );
      continue;
    }

    /* Here we chang any store to a non-temporal store.
     */

    TOP new_top = TOP_UNDEFINED;

    switch( OP_code(op) ){
    case TOP_stapd:   new_top = TOP_stntpd;   break;
    case TOP_stapdx:  new_top = TOP_stntpdx;  break;
    case TOP_stapdxx: new_top = TOP_stntpdxx; break;
    case TOP_staps:   new_top = TOP_stntps;   break;
    case TOP_stapsx:  new_top = TOP_stntpsx;  break;
    case TOP_stapsxx: new_top = TOP_stntpsxx; break;
    case TOP_stdqa:   new_top = TOP_stntpd;   break;
    case TOP_stdqax:  new_top = TOP_stntpdx;  break;
    case TOP_stdqaxx: new_top = TOP_stntpdxx; break;

    case TOP_store32:   new_top = TOP_storenti32;   break;
    case TOP_storex32:  new_top = TOP_storentix32;  break;
    case TOP_storexx32: new_top = TOP_storentixx32; break;

    case TOP_store64:   new_top = TOP_storenti64;   break;
    case TOP_storex64:  new_top = TOP_storentix64;  break;
    case TOP_storexx64: new_top = TOP_storentixx64; break;
    }

    if( new_top != TOP_UNDEFINED ){
      OP_Change_Opcode( op, new_top );
    }
  }
}


/* ====================================================================
 *
 * CGTARG_Generate_Branch_Cloop
 *
 * See interface description
 *
 * ====================================================================
 */
void
CGTARG_Generate_Branch_Cloop(OP *br_op,
			     TN *unrolled_trip_count,
			     TN *trip_count_tn,
			     INT32 ntimes,
			     TN *label_tn,
			     OPS *prolog_ops,
			     OPS *body_ops)
{ 
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
}

static TN* asm_constraint_tn[10];
static ISA_REGISTER_SUBCLASS asm_constraint_sc[10];
static char asm_constraint_name[10][8];
static INT asm_constraint_index;

// must be called once per asm
void
CGTARG_Init_Asm_Constraints (void)
{
  // can use any type; it will be ignored
  Setup_Output_Parameter_Locations (MTYPE_To_TY(MTYPE_I8));
  for (INT i = 0; i < 10; ++i) {
    asm_constraint_tn[i] = NULL;
    asm_constraint_sc[i] = ISA_REGISTER_SUBCLASS_UNDEFINED;
    asm_constraint_name[i][0] = '\0';
  }
  asm_constraint_index = 0;
}


// -----------------------------------------------------------------------
// Given a constraint for an ASM parameter, and the load of the matching
// argument passed to ASM (possibly NULL), choose an appropriate TN for it
// -----------------------------------------------------------------------
extern TN* 
CGTARG_TN_For_Asm_Operand (const char* constraint, 
                           const WN* load,
                           TN* pref_tn,
                           ISA_REGISTER_SUBCLASS* subclass, 
			   TYPE_ID type)
{
  // skip constraint modifiers:
  // = input and output parameters are separated in the WHIRL for ASM
  // & early_clobber flag is set in Handle_ASM
  // % commutativity of operands is ignored for now
  static const char* modifiers = "=&%";
  while (strchr(modifiers, *constraint))
  {
    constraint++;
  }
  
  // TODO: we should really look at multiple specified constraints
  // and the load in order to select the best TN, but for now we
  // assume that when we get here we can safely pick a TN

  // if 'm' or 'g' is one of the choices, always prefer that one
  // TODO: we decide this in the front end, but it's not optimal
  if (*constraint != 'm' && *constraint != 'g')
  {
    const char* m = constraint;
    while (*++m)
    {
      if (*m == 'm' || *m == 'g')
      {
        constraint = m;
        break;
      }
    }
  }
  
  // prefer register/memory over immediates; this isn't optimal, 
  // but we may not always be able to generate an immediate
  static const char* immediates = "in";
  // Bug 950
  // The '#' in a constraint is inconsequential or it is just a typo
  static const char* hash = "#";
  if (!strstr(constraint, hash)) {
    while (strchr(immediates, *constraint) && *(constraint+1)) 
      {
	constraint++;
      }
  }

  TN* ret_tn;
  
  // TODO: check that the operand satisifies immediate range constraint
  if (strchr(immediates, *constraint))
  {
    if (load && WN_operator(load)==OPR_LDID && WN_class(load)==CLASS_PREG)
    {
      // immediate could have been put in preg by wopt
      load = Preg_Is_Rematerializable(WN_load_offset(load), NULL);
    }
    FmtAssert(load && WN_operator(load) == OPR_INTCONST, 
              ("Cannot find immediate operand for ASM"));
    ret_tn = Gen_Literal_TN(WN_const_val(load), 
                            MTYPE_bit_size(WN_rtype(load))/8);
  }
  // digit constraint means that we should reuse a previous operand
  else if (isdigit(*constraint))
  {
    INT prev_index = *constraint - '0';
    FmtAssert(asm_constraint_tn[prev_index], 
              ("numeric matching constraint refers to NULL value"));
    ret_tn = asm_constraint_tn[prev_index];
  }
  else if (strchr("m", *constraint) || strchr("g", *constraint))
  {
    TYPE_ID rtype = (load != NULL ? WN_rtype(load) : MTYPE_I4);
    FmtAssert(MTYPE_is_integral(rtype),
              ("ASM operand does not satisfy its constraint"));
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(rtype));
  }
  else if ((*constraint == 'r') || (*constraint == 'a') ||
	   (*constraint == 'b') || (*constraint == 'v') ||
	   (*constraint == 'h') || (*constraint == 'l') ||
	   (*constraint == 'd') || (*constraint == 'c') ||
	   (*constraint == 'S') || (*constraint == 'D') || 
	   (*constraint == 'A') || (*constraint == 'q') || 
	   (*constraint == 'e' && *(constraint+1) == 'r'))
  {
    TYPE_ID rtype;
    
    if (load != NULL) {
      // Bugs 482, 505, 626, 1045
      rtype = (WN_desc(load) == MTYPE_V) ? WN_rtype(load) : WN_desc(load);
      if (WN_operator(load) == OPR_CVTL) { // Bug 3223
	switch (WN_cvtl_bits(load)) { 
	// Don't care signed/unsigned but the width should be set right.
	case 32: rtype = MTYPE_U4; break;
	case 16: rtype = MTYPE_U2; break;
	case 8:  rtype = MTYPE_U1; break;
	default: FmtAssert(FALSE, ("NYI")); 
	}
      }
    } else {
      /* We can't figure out what type the operand is, probably because the
	 optimizer deleted the references to it, so return some default type */      
      rtype = type /* from PRAGMA preg type */;
    }
    if (pref_tn)
      ret_tn = pref_tn;
    else if ((*constraint == 'a') || (*constraint == 'b') ||
	     (*constraint == 'c') || (*constraint == 'd') ||
	     (*constraint == 'S') || (*constraint == 'D') || 
	     (*constraint == 'A')) {
      REGISTER reg;
      switch (*constraint) {
      case 'a': reg = RAX; break;
      case 'b': reg = RBX; break;
      case 'c': reg = RCX; break;
      case 'd': reg = RDX; break;
      case 'S': reg = RSI; break;
      case 'D': reg = RDI; break;
      // TODO: handle 'A' constraint as a register pair for x86
      case 'A': reg = RAX; break;       
      }
      ret_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, reg, 
      				  // Bug 1880 - now that we have dedicated 
				  // TNs of sizes < 4 bytes, use the appropriate
				  // size.
				  MTYPE_byte_size(rtype));
    } else     
      ret_tn = Build_TN_Of_Mtype(rtype);
  }
  else if (*constraint == 't' || *constraint == 'u')
  {
    // It is really the user's responsibility to do any type conversions between
    // long double and double/float. We will not handle any type conversions
    // as part of handling the inline asm. This is what Gcc does.
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(MTYPE_FQ));
  }
  else if (*constraint == 'f')
  {
    FmtAssert(FALSE, ("Asm constraint <f> requires x87 implementation"));
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(MTYPE_F4));
  }
  else if (*constraint == 'x')
  {
    TYPE_ID mtype = MTYPE_F4;    
    if (load)
      mtype = WN_rtype(load);
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(mtype));
  }
  else if (*constraint == 'Y')
  {
    TYPE_ID mtype = MTYPE_F8;    
    if (load)
      mtype = WN_rtype(load);
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(mtype));
  }
  else
  {
    FmtAssert(FALSE, ("ASM constraint <%s> not supported", constraint));
  }

  asm_constraint_tn[asm_constraint_index] = ret_tn;
  asm_constraint_index++;
  
  return ret_tn;
}


static char *
Get_TN_Assembly_Name (TN *tn)
{
  return "moo";
}

void
CGTARG_TN_And_Name_For_Asm_Constraint (char *constraint, TYPE_ID mtype,
	TYPE_ID desc, TN **tn, char **name)
{
	INT i;
	if (*constraint == '=') {
		// ignore
		CGTARG_TN_And_Name_For_Asm_Constraint (constraint+1, 
			mtype, desc, tn, name);
		return;
	}
	if (mtype == MTYPE_V) {
		// unknown parameter, so pick mtype from constraint
		if (*constraint == 'f') mtype = MTYPE_F8;
		else mtype = MTYPE_I8;
	}
	switch (*constraint) {
	case 'r':
		FmtAssert(MTYPE_is_integral(mtype), 
			("ASM constraint is integer but parameter is not"));
		break;
	case 'f':
		FmtAssert(MTYPE_is_float(mtype), 
			("ASM constraint is float but parameter is not"));
		break;
	case 'm':
	case 'g':
		break;
	case '0':
	case '1':
	case '2':
	case '3':
	case '4':
	case '5':
	case '6':
	case '7':
	case '8':
	case '9':
		i = *constraint - '0';
		FmtAssert(asm_constraint_tn[i], 
		    ("numeric matching constraint refers to NULL value"));
		++asm_constraint_index;
		*tn = asm_constraint_tn[i];
		*name = asm_constraint_name[i];
		return;
	case 'i':
		// let caller figure out the name
		*tn = NULL;
		*name = NULL;
		return;
	default:
		FmtAssert(FALSE, ("ASM constraint <%s> not supported", constraint));
	}
	PLOC ploc = Get_Output_Parameter_Location (MTYPE_To_TY(mtype));
	*tn = PREG_To_TN (MTYPE_To_PREG(mtype), PLOC_reg(ploc));
	asm_constraint_tn[asm_constraint_index] = *tn;
	*name = Get_TN_Assembly_Name(*tn);
	if (*constraint == 'm' || *constraint == 'g') {
	    	sprintf(asm_constraint_name[asm_constraint_index], "[%s]", 
			*name);
	} else {
	    	sprintf(asm_constraint_name[asm_constraint_index], "%s", 
			*name);
	}
	*name = asm_constraint_name[asm_constraint_index];
	++asm_constraint_index;
}


/* ====================================================================
 * target specific modifiers for printing different versions
 * of register names when they appear as AM operands 
 * ====================================================================
 */
char CGTARG_Asm_Opnd_Modifiers[] = { 'r' };
INT  CGTARG_Num_Asm_Opnd_Modifiers = 1;

static const char* int_reg_names[3][16] = {
  /* BYTE_REG: low 8-bit */
  { "%al", "%bl", "%bpl", "%spl", "%dil", "%sil", "%dl", "%cl",
    "%r8b",  "%r9b",  "%r10b", "%r11b", "%r12b", "%r13b", "%r14b", "%r15b" },
  /* WORD_REG: 16-bit */
  { "%ax", "%bx", "%bp", "%sp", "%di", "%si", "%dx", "%cx",
    "%r8w",  "%r9w",  "%r10w", "%r11w", "%r12w", "%r13w", "%r14w", "%r15w" },
  /* DWORD_REG: 32-bit */
  { "%eax", "%ebx", "%ebp", "%esp", "%edi", "%esi", "%edx", "%ecx",
    "%r8d",  "%r9d",  "%r10d", "%r11d", "%r12d", "%r13d", "%r14d", "%r15d" },
};
      
const char* 
CGTARG_Modified_Asm_Opnd_Name(char modifier, TN* tn, char *tn_name)
{
  if (TN_register_class(tn) == ISA_REGISTER_CLASS_float ||
      TN_register_class(tn) == ISA_REGISTER_CLASS_x87)
    return tn_name;

  if (modifier == 'r') {
    if (TN_size(tn) == 8)
      return tn_name;
    else { 
      // Bugs 482, 505, 626
      INT sub_reg_class = 2; // DWORD_REG
      if (TN_size(tn) == 2)
	sub_reg_class = 1;   // WORD_REG
      else if (TN_size(tn) == 1)
	sub_reg_class = 0;   // BYTE_REG
      const ISA_REGISTER_CLASS rc = ISA_REGISTER_CLASS_integer;
      for( REGISTER reg = REGISTER_MIN; reg <= REGISTER_CLASS_last_register( rc ); reg++ ){
	const char* n = REGISTER_name( rc, reg );
	if( strcmp( n, tn_name ) == 0 ){
	  const char *regname;
	  regname = int_reg_names[sub_reg_class][reg-REGISTER_MIN];
	  return regname;
	}
      }      
    } 
  }
  else {
    FmtAssert(FALSE, ("Unknown ASM operand modifier '%c'", modifier));
  }
  /*NOTREACHED*/
}

/* For the "m" constraint, there is no need to introduce op like
           TN108 :- lea32 TN4(%rsp) (sym:size+0)
   otherwise, all the registers will be used up pretty soon.
   The fix here is to remove the op that computes the address,
   and put the offset tn into opnd[num_opnds]. According this
   offset tn, later phase in Modify_Asm_String will generate
   the right offset and base info.   (bug#3111)
*/
TN* CGTARG_Process_Asm_m_constraint( WN* load, OPS* ops )
{
  Is_True( load != NULL, ("Asm_m_constraint: load is NULL") );
  TN* asm_opnd = NULL;

  if( WN_operator(load) == OPR_LDA ){
    OP* lda_op = OPS_last( ops );
    asm_opnd = OP_iadd(lda_op) ? OP_opnd( lda_op, 1 ) : OP_opnd( lda_op, 0 );
    OPS_Remove_Op( ops, lda_op );

  } else {
    DevWarn( "Asm_m_constraint: Unsupported opcode (%s)",
	     OPCODE_name(WN_opcode(load)) );
    return NULL;
  }

  Is_True( TN_is_symbol(asm_opnd) && TN_is_constant(asm_opnd),
	   ("Asm_m_constraint: lda has no symbol") );

  return asm_opnd;
}

/* ====================================================================
 *
 * CGTARG_Postprocess_Asm_String: currently no-op for IA-64
 *
 * ====================================================================
 */
void 
CGTARG_Postprocess_Asm_String (char*)
{
}

/* ====================================================================
 *
 * CGTARG_Unconditional_Compare
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL CGTARG_Unconditional_Compare(OP *op, TOP* uncond_ver)
{
  return FALSE;
}

/* ====================================================================
 *
 * CGTARG_Invert_Branch
 *
 * See interface description
 *
 * ====================================================================
 */
TOP CGTARG_Invert_Branch(BB* bb)
{
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
  return TOP_UNDEFINED;
}


/* ====================================================================
 *
 * CGTARG_Init_OP_cond_def_kind
 *
 *  See interface description
 *
 * ====================================================================
 */
void CGTARG_Init_OP_cond_def_kind(OP *op)
{
  if( OP_has_predicate(op) ) {
    FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
  } else {
      {
	Set_OP_cond_def_kind(op, OP_ALWAYS_UNC_DEF);
      }
  }
}


/* ====================================================================
 *
 * CGTARG_Get_unc_Variant
 *
 *  Given a compare opcode, return the unconditional variant form. 
 *  Return the opcode if there is no such form.
 *
 * ====================================================================
 */
TOP CGTARG_Get_unc_Variant(TOP top)
{
  /* This doesn't seem to be used. */
  FmtAssert(FALSE,("NOT YET IMPLEMENTED"));
  return TOP_UNDEFINED;
}

////////////////////////////////////////////////////////////////
// If a BB ends in an unconditional branch, turn it into a conditional branch 
// With TRUE predicate, so we can predicate with something else later.
// If we can't find an unconditional branch, just give up and do nothing
//
void
Make_Branch_Conditional(BB *bb)
{
  return;
}

/* ====================================================================
 *
 * CGTARG_Check_OP_For_HB_Suitability
 *
 * Returns TRUE if OP is a suitable candidate for HBF. Otherwise, return
 * FALSE.
 *
 * ====================================================================
 */
BOOL 
CGTARG_Check_OP_For_HB_Suitability(OP *op)
{
  switch(Eager_Level) {
  case EAGER_NONE:
    return FALSE;
  case EAGER_SAFE:
    if (OP_fadd(op) || 
	OP_fdiv(op) || 
	OP_fsub(op) || 
	OP_fmul(op) || 
	OP_load(op) ||
	OP_store(op) ||
	OP_prefetch(op) || 
	// idiv, imul use hilo registers
	OP_idiv(op) ||
	OP_imul(op) )
      return FALSE;
    else
      return TRUE;      
  case EAGER_ARITH:
    if (OP_load(op) ||
	OP_store(op) ||
	OP_prefetch(op) ||
	// Divide by zero
	OP_fdiv(op) || 
	OP_idiv(op) ||
	OP_imul(op) )
      return FALSE;
    else
      return TRUE;
  case EAGER_DIVIDE:
    if (OP_load(op) ||
	OP_store(op) ||
	OP_prefetch(op) ||
	OP_idiv(op) ||
	OP_imul(op) )
      return FALSE;
    else
      return TRUE;
  case EAGER_MEMORY:
  case EAGER_OTHER:
    if (OP_idiv(op) ||
	OP_imul(op) )
      return FALSE;
    else
      return TRUE;
  default:
    FmtAssert(FALSE, ("Handle this case"));
    return FALSE;
  }
}


TN* CGTARG_Gen_Dedicated_Subclass_TN( OP* op, int idx, BOOL is_result )
{
  const ISA_REGISTER_SUBCLASS subclass = is_result ?
    OP_result_reg_subclass( op, idx ) : OP_opnd_reg_subclass( op, idx );
  const REGISTER_SET subclass_regs = REGISTER_SUBCLASS_members(subclass);

  if( REGISTER_SET_Size(subclass_regs) != 1 ){
    TN* tn = is_result ? OP_result( op, idx ) : OP_opnd( op, idx );
    return TN_is_dedicated(tn) ? tn : NULL;
  }

  const REGISTER reg = REGISTER_SET_Choose(subclass_regs);
  const ISA_REGISTER_CLASS rc = REGISTER_SUBCLASS_register_class(subclass);

  return Build_Dedicated_TN( rc, reg, 0 );
}
