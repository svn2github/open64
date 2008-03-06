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
 * $Revision: 1.1 $
 * $Date: 2005/07/27 02:13:42 $
 * $Author: kevinlo $
 * $Source: /depot/CVSROOT/javi/src/sw/cmplr/be/cg/pr1/cgtarget.cxx,v $
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
  FmtAssert(OP_load(memop) || OP_store(memop), ("not a load or store"));

  TOP topcode = OP_code(memop);

  Is_True(topcode < TOP_count, ("unexpected topcode %d\n", topcode));

  if (topcode < TOP_count)
  {
    switch (topcode) {
  case TOP_ldb:
  case TOP_ldbi:
  case TOP_ldbsp2:
  case TOP_ldbsp3:
  case TOP_stb:
  case TOP_stbi:
  case TOP_stbsp2:
  case TOP_stbsp3:
    return 1;
  case TOP_ldh:
  case TOP_ldhi:
  case TOP_ldhsp2:
  case TOP_ldhsp3:
  case TOP_sth:
  case TOP_sthi:
  case TOP_sthsp2:
  case TOP_sthsp3:
    return 2;
  case TOP_ldw:
  case TOP_ldwi:
  case TOP_ldwsp2:
  case TOP_ldwgp2:
  case TOP_ldwsp3:
  case TOP_ldwgp3:
  case TOP_stw:
  case TOP_stwi:
  case TOP_stwsp2:
  case TOP_stwgp2:
  case TOP_stwsp3:
  case TOP_stwgp3:
    return 4;

  default:
    FmtAssert(FALSE, ("unrecognized op (%s) in CGTARG_Mem_Ref_Bytes",
		      TOP_Name(OP_code(memop))));
    }
  }
  
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

  if (flops != 0) {
    BOOL unbalanced_fpu = FALSE;

    if ( madds_per_cycle[0] != 0 ) {
      fprintf(file,"%s%5d flop%1s        (%3d%% of peak) (madds count as 2)%s"
                   "%s%5d flop%1s        (%3d%% of peak) (madds count as 1)%s"
                   "%s%5d madd%1s        (%3d%% of peak)%s",
		 prefix,
		 flops + madds,
		 Plural(flops + madds),
		 Percent_Of_Peak(flops + madds, ii * 2, madds_per_cycle),
		 suffix,
		 prefix,
		 flops,
		 Plural(flops),
		 Percent_Of_Peak(flops, ii, flops_per_cycle),
		 suffix,
		 prefix,
		 madds,
		 Plural(madds),
		 Percent_Of_Peak(madds, ii, madds_per_cycle),
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

    if ( OP_flop(op) ) {
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
    else if (OP_memory(op))
      ++info->refs[PRC_MEMREF];
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

  if (!Preg_Offset_Is_Int(preg) &&
      !Preg_Offset_Is_Float(preg) &&
      !Preg_Offset_Is_Fcc(preg))
    return FALSE;

  /* Get the target register number and class associated with the
   *    * preg, if there is one that is.
   */
  if (Preg_Offset_Is_Int(preg)) {
    regnum = preg - (Int_Preg_Min_Offset - 1);
    rclass = ISA_REGISTER_CLASS_integer;
  }
  else if (Preg_Offset_Is_Float(preg)) {
#ifdef TARG_PR
    Is_True(0,("This processor has no float reg"));
#else
    regnum = preg - Float_Preg_Min_Offset;
    rclass = ISA_REGISTER_CLASS_float;
#endif
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

  if (Is_Target_Sb1() || Is_Target_R10K())
  {
    *mispredict= 8; *fixed= 1; *brtaken= 1; *factor = 1.0;
  }
  else if (Is_Target_PR()) {

     *mispredict= 8; *fixed= 1; *brtaken= 1; *factor = 1.0;
  }
  else {
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
BOOL CGTARG_Is_Long_Latency(TOP op)
{
  return (TI_LATENCY_Result_Available_Cycle(op, 0) -
	  TI_LATENCY_Operand_Access_Cycle(op, 0)) > 2;
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
  INT variant;

  /* Branch operands are usually number 0 and 1. Where something
     different is used, we override below. */

  *tn1 = OP_opnd(br, 0);
  *tn2 = OP_opnd(br, 1);

  switch (OP_code(br)) {
  case TOP_b:
  case TOP_bcall:
  case TOP_bcall10:
  case TOP_bret:
    variant = V_BR_ALWAYS;
    break;
  case TOP_bloop:
    variant = V_BR_CLOOP;
    break;
  case TOP_beq:
  case TOP_beqi:
    variant = V_BR_I4EQ;
    break;
  case TOP_bgti:
  case TOP_bgt:
    variant = V_BR_I4GT;
    break;
  case TOP_bge:
  case TOP_bgei:
    variant = V_BR_I4GE;
    break;
  case TOP_bne:
  case TOP_bnei:
    variant = V_BR_I4NE;
    break;
  default:
    variant = V_BR_NONE;
    *tn1 = NULL;
    *tn2 = NULL;
    Is_True( !OP_cond( br ), ("unexpected conditional branch %d\n", OP_code(br) ) );
    break;
  }

  return variant;
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
  TN *cond_tn1;
  TN *cond_tn2;
  DEF_KIND kind;

  /* Classify the condition based on the branch instruction.  */

  INT variant = CGTARG_Analyze_Branch(br, &cond_tn1, &cond_tn2);

  /* If the branch was predicated, the value being tested
   * was probably the result of a cmp*, in which case we
   * we can refine the actual condition.
   */
  if (variant == V_BR_P_TRUE) {
    OP *def_op;

    /* Attempt to find the defining OP for the tested value.
     */
    def_op = TN_Reaching_Value_At_Op(cond_tn1, br, &kind, TRUE);

    // TODO: <kind != VAL_KNOWN> may be too conservative. Analyze_Compare
    // need to work with compare defs which could be predicated themselves.
    if (!def_op || kind != VAL_KNOWN) goto no_cmp;

    /* Verify the defining OP is a cmp* and determine the actual
     * condition being tested.
     */
    switch (OP_code(def_op)) {
    case TOP_teq2:
    case TOP_teq3:
    case TOP_teqi2:
    case TOP_teqi3:
      variant = V_BR_I4EQ;
      break;
    case TOP_tlt3:
    case TOP_tltm3:
    case TOP_tlti3:
    case TOP_tltmi3:
      variant = V_BR_I4LT;
      break;
    case TOP_tgt2:
    case TOP_tgtm2:
    case TOP_tgt3:
    case TOP_tgtm3:
    case TOP_tgti2:
    case TOP_tgtmi2:
    case TOP_tgti3:
    case TOP_tgtmi3:
      variant = V_BR_I4GT;
      break;
    case TOP_tle3:
    case TOP_tlem3:
    case TOP_tlei3:
    case TOP_tlemi3:
      variant = V_BR_I4LE;
      break;
    case TOP_tge2:
    case TOP_tgei2:
    case TOP_tgem2:
    case TOP_tgemi2:
    case TOP_tge3:
    case TOP_tgem3:
    case TOP_tgei3:
    case TOP_tgemi3:
      variant = V_BR_I4GE;
      break;
    case TOP_tne2:
    case TOP_tnem2:
    case TOP_tnei2:
    case TOP_tne3:
    case TOP_tnem3:
    case TOP_tnei3:
    case TOP_tnemi3:
      variant = V_BR_I4NE;
      break;
      default:
      // unc?
      // parallel form?
      goto no_cmp;
    }


    /* If the branch is predicated by the false result of the cmp,
     * then the comparison needs to be negated.
     */
    if (OP_result(def_op, 1) == cond_tn1) {
      variant = Negate_BR_Variant(variant);
    }

    /* The arguments being compared are the args of the cmp,
     * and the comparison OP is the cmp.
     */
    if (OP_icmp(def_op)) {
      cond_tn1 = OP_opnd(def_op, 1);
      cond_tn2 = OP_opnd(def_op, 2);
    } else {
      cond_tn1 = OP_opnd(def_op, 2);
      cond_tn2 = OP_opnd(def_op, 3);
    }
    *compare_op = def_op;
  } else {

    /* No cmp: 
     */
  no_cmp:
    *compare_op = NULL;
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
  CGTARG_Invert_Table[TOP_add2]     = TOP_sub2;
  CGTARG_Invert_Table[TOP_addi2]     = TOP_subi2;
  CGTARG_Invert_Table[TOP_addiu2]     = TOP_subiu2;
  CGTARG_Invert_Table[TOP_addu2]     = TOP_subu2;
  CGTARG_Invert_Table[TOP_add3]     = TOP_sub3;
  CGTARG_Invert_Table[TOP_addi3]     = TOP_subi3;
  CGTARG_Invert_Table[TOP_addiu3]     = TOP_subiu3;
  CGTARG_Invert_Table[TOP_addu3]     = TOP_subu3;
  CGTARG_Invert_Table[TOP_sub2]     = TOP_add2;
  CGTARG_Invert_Table[TOP_subi2]     = TOP_addi2;
  CGTARG_Invert_Table[TOP_subiu2]     = TOP_addiu2;
  CGTARG_Invert_Table[TOP_subu2]     = TOP_addu2;
  CGTARG_Invert_Table[TOP_sub3]     = TOP_add3;
  CGTARG_Invert_Table[TOP_subi3]     = TOP_addi3;
  CGTARG_Invert_Table[TOP_subiu3]     = TOP_addiu3;
  CGTARG_Invert_Table[TOP_subu3]     = TOP_addu3;


  /* Init table for CGTARG_Immed_To_Reg:
   */
  CGTARG_Immed_To_Reg_Table[TOP_addi2]    = TOP_add2;
  CGTARG_Immed_To_Reg_Table[TOP_addi3]    = TOP_add3;
  CGTARG_Immed_To_Reg_Table[TOP_subi2]    = TOP_sub2;
  CGTARG_Immed_To_Reg_Table[TOP_subi3]    = TOP_sub3;
  CGTARG_Immed_To_Reg_Table[TOP_divi2]    = TOP_div2;
  CGTARG_Immed_To_Reg_Table[TOP_divi3]    = TOP_div3;
  CGTARG_Immed_To_Reg_Table[TOP_andi2]    = TOP_and2;
  CGTARG_Immed_To_Reg_Table[TOP_andi3]    = TOP_and3;
  CGTARG_Immed_To_Reg_Table[TOP_muli2]    = TOP_mul2;
  CGTARG_Immed_To_Reg_Table[TOP_muli3]    = TOP_mul3;
  CGTARG_Immed_To_Reg_Table[TOP_noti2]    = TOP_not2;
  CGTARG_Immed_To_Reg_Table[TOP_ori2]    = TOP_or2;
  CGTARG_Immed_To_Reg_Table[TOP_ori3]    = TOP_or3;
  CGTARG_Immed_To_Reg_Table[TOP_shli2]    = TOP_shl2;
  CGTARG_Immed_To_Reg_Table[TOP_shli3]    = TOP_shl3;
  CGTARG_Immed_To_Reg_Table[TOP_shri2]    = TOP_shr2;
  CGTARG_Immed_To_Reg_Table[TOP_shri3]    = TOP_shr3;
  CGTARG_Immed_To_Reg_Table[TOP_teqi2]    = TOP_teq2;
  CGTARG_Immed_To_Reg_Table[TOP_teqi3]    = TOP_teq3;
  CGTARG_Immed_To_Reg_Table[TOP_tlei3]    = TOP_tle3;
  CGTARG_Immed_To_Reg_Table[TOP_tgei3]    = TOP_tge3;
  CGTARG_Immed_To_Reg_Table[TOP_tgei2]    = TOP_tge2;
  CGTARG_Immed_To_Reg_Table[TOP_tlti3]    = TOP_tlt3;
  CGTARG_Immed_To_Reg_Table[TOP_tgti2]    = TOP_tgt2;
  CGTARG_Immed_To_Reg_Table[TOP_tgti3]    = TOP_tgt3;
  CGTARG_Immed_To_Reg_Table[TOP_tnei2]    = TOP_tne2;
  CGTARG_Immed_To_Reg_Table[TOP_tnei3]    = TOP_tne3;
  CGTARG_Immed_To_Reg_Table[TOP_teqi2]    = TOP_teq2;
  CGTARG_Immed_To_Reg_Table[TOP_teqi3]    = TOP_teq3;
  CGTARG_Immed_To_Reg_Table[TOP_tlei3]    = TOP_tle3;
  CGTARG_Immed_To_Reg_Table[TOP_xori2]    = TOP_xor2;
  CGTARG_Immed_To_Reg_Table[TOP_tgemi2]    = TOP_tgem2;
  CGTARG_Immed_To_Reg_Table[TOP_tgtmi2]    = TOP_tgtm2;
  //  CGTARG_Immed_To_Reg_Table[TOP_tnemi2]    = TOP_tnem2;
  CGTARG_Immed_To_Reg_Table[TOP_tgemi3]    = TOP_tgem3;
  CGTARG_Immed_To_Reg_Table[TOP_tlemi3]    = TOP_tlem3;
  CGTARG_Immed_To_Reg_Table[TOP_tltmi3]    = TOP_tltm3;
  CGTARG_Immed_To_Reg_Table[TOP_tgtmi3]    = TOP_tgtm3;
  CGTARG_Immed_To_Reg_Table[TOP_tnemi3]    = TOP_tnem3;

  /* Init table for CGTARG_Inter_RegClass_Copy_Table:
   */
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
  INT i;
  OPCODE * const oprs = CGTARG_Assoc_Base_Opr_Table;
  mTOP * const fncs = CGTARG_Assoc_Base_Fnc_Table;
  mTOP * const tops = CGTARG_Assoc_Base_Top_Table;

  for(i = 0; i < TOP_count; i++) {
    oprs[i] = (OPCODE)0;
    fncs[i] = ASSOC_BASE_null;
    tops[i] = TOP_UNDEFINED;
  }
  oprs[TOP_add2]   = OPC_I4ADD;		tops[TOP_add2]    = TOP_add2;
  oprs[TOP_add3]   = OPC_I4ADD;		tops[TOP_add3]    = TOP_add3;
  oprs[TOP_sub2]   = OPC_I4SUB;		tops[TOP_sub2]    = TOP_sub2;
  oprs[TOP_sub3]   = OPC_I4SUB;		tops[TOP_sub3]    = TOP_sub3;
  oprs[TOP_addu2]  = OPC_U4ADD;		tops[TOP_addu2]   = TOP_addu2;
  oprs[TOP_addu3]  = OPC_U4ADD;		tops[TOP_addu3]   = TOP_addu3;
  oprs[TOP_subu2]  = OPC_U4SUB;		tops[TOP_subu2]   = TOP_subu2;
  oprs[TOP_subu3]  = OPC_U4SUB;		tops[TOP_subu3]   = TOP_subu3;
  oprs[TOP_addiu2] = OPC_U4ADD;		tops[TOP_addiu2]  = TOP_addiu2;
  oprs[TOP_addiu3] = OPC_U4ADD;		tops[TOP_addiu3]  = TOP_addiu3;
  oprs[TOP_addi2]  = OPC_I4ADD;		tops[TOP_addi2]   = TOP_addi2;
  oprs[TOP_addi3]  = OPC_I4ADD;		tops[TOP_addi3]   = TOP_addi3;
  oprs[TOP_or2]    = OPC_U4BIOR;	tops[TOP_or2]     = TOP_or2;
  oprs[TOP_or3]    = OPC_U4BIOR;	tops[TOP_or3]     = TOP_or3;
  oprs[TOP_ori2]   = OPC_U4BIOR;	tops[TOP_ori2]    = TOP_ori2;
  oprs[TOP_ori3]   = OPC_U4BIOR;	tops[TOP_ori3]    = TOP_ori3;
  oprs[TOP_and2]   = OPC_U4BAND;	tops[TOP_and2]    = TOP_and2;
  oprs[TOP_and3]   = OPC_U4BAND;	tops[TOP_and3]    = TOP_and3;
  oprs[TOP_andi2]  = OPC_U4BAND;	tops[TOP_andi2]   = TOP_andi2;
  oprs[TOP_andi3]  = OPC_U4BAND;	tops[TOP_andi3]   = TOP_andi3;
  oprs[TOP_xor2]   = OPC_U4BXOR;	tops[TOP_xor2]    = TOP_xor2;
  oprs[TOP_xor3]   = OPC_U4BXOR;	tops[TOP_xor3]    = TOP_xor3;
  oprs[TOP_xori2]  = OPC_U4BXOR;	tops[TOP_xori2]   = TOP_xori2;
  oprs[TOP_xori3]  = OPC_U4BXOR;	tops[TOP_xori3]   = TOP_xori3;
					fncs[TOP_xori3]   = ASSOC_BASE_inverse;

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
  TOP opr = OP_code(op);
  switch (opr)
  {
#ifndef TARG_PR
  case TOP_addi:
  case TOP_addiu:
  case TOP_daddi:
  case TOP_daddiu:
  case TOP_sll:
  case TOP_srl:
  case TOP_sra:
  case TOP_dsll:
  case TOP_dsrl:
  case TOP_dsra:
    if (TN_has_value(OP_opnd(op,1)) && TN_value(OP_opnd(op,1)) == 0)
      return 0;
    break;

  case TOP_andi:
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

  case TOP_ori:
  case TOP_xori:
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

  case TOP_or:
  case TOP_xor:
  case TOP_addu:
  case TOP_daddu:
    if (OP_opnd( op, 1) == Zero_TN)
      return 0;
    else if (OP_opnd( op, 0) == Zero_TN)
      return 1;
    break;
  }

  if (OP_copy(op)) {
    if (opr == TOP_add || opr == TOP_dadd ||
        opr == TOP_addu || opr == TOP_daddu ||
        opr == TOP_or || 
        opr == TOP_mov_s || opr== TOP_mov_d)
      return 0;
  }
#else
  case TOP_mov2gp:
  case TOP_mov2lc:
  case TOP_mov2sp:
  case TOP_mov2ra:
  case TOP_movgp:
  case TOP_movlc:
  case TOP_movsp:
  case TOP_movra:
    return 1;

  case TOP_andi3:
    if (TN_has_value(OP_opnd(op,1)) && TN_value(OP_opnd(op,1)) == -1) {
      return 0;
    }
    if (TN_has_value(OP_opnd(op,0)) && TN_value(OP_opnd(op,0)) == -1) {
      Is_True(0, ("operand reversed"));;
    }
    break;
  case TOP_ori3:
  case TOP_xori3:
  case TOP_addi3:
  case TOP_addiu3:
  case TOP_subi3:
  case TOP_subiu3:
    printf("0:  TN_v, %d  val\n ", OP_opnd(op,0) == Zero_TN);
    if (TN_has_value(OP_opnd(op,1)) && TN_value(OP_opnd(op,1)) == 0) {
      return 0;
    }
    if (TN_has_value(OP_opnd(op,0)) && TN_value(OP_opnd(op,0)) == 0) {
      Is_True(0,("operand reversed"));
    }
    break;
 case TOP_shli2:
 case TOP_shri2:
    if (TN_has_value(OP_opnd(op,1)) && TN_value(OP_opnd(op,1)) == 0) 
     return 0;
   break;
  case TOP_extr:
    if (   TN_has_value(OP_opnd(op,2)) && TN_value(OP_opnd(op,2)) == 0
	&& TN_has_value(OP_opnd(op,3)) && TN_value(OP_opnd(op,3)) == 32)
      return 1;
    break;

  case TOP_dep:
    if (   TN_has_value(OP_opnd(op,2)) && TN_value(OP_opnd(op,2)) == 32
	&& TN_has_value(OP_opnd(op,3)) && TN_value(OP_opnd(op,3)) == 0)
      return 1;
    break;
  }
#endif
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
BOOL
CGTARG_Can_Fit_Immediate_In_Add_Instruction (INT64 immed)
{
DevWarn("Can_Fit_Immediate_In_Add_Instruction needs beefing up");
  return ISA_LC_Value_In_Class (immed, LC_pr_i15);
}


/* ====================================================================
 *
 * CGTARG_Can_Load_Immediate_In_Single_Instruction
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Can_Load_Immediate_In_Single_Instruction (INT64 immed)
{
  DevWarn("Can_Fit_Immediate_In_Add_Instruction needs beefing up");
  return ISA_LC_Value_In_Class (immed, LC_pr_i15);
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

/* ====================================================================
 *
 * CGTARG_Dependence_Required
 *
 * See interface description
 *
 * ====================================================================
 */
BOOL
CGTARG_Dependence_Required(OP *pred_op, OP *succ_op)
{
  DevWarn("CGTARG_Dependence_Required: NYI");
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


BOOL
Is_MMX_Dependency (OP* pred_op, OP* succ_op, CG_DEP_KIND kind) {
    DevWarn("Is_MMX_Dependency not coded");
    return FALSE;
}


INT32
MMX_Dep_Latency (void) { 
    return 4;
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
  return (OP_code(op) == TOP_bloop);
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
  LC_Used_In_PU = TRUE;
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

  // if 'm' is one of the choices, always prefer that one
  // TODO: we decide this in the front end, but it's not optimal
  if (*constraint != 'm')
  {
    const char* m = constraint;
    while (*++m)
    {
      if (*m == 'm')
      {
        constraint = m;
        break;
      }
    }
  }
  
  // prefer register/memory over immediates; this isn't optimal, 
  // but we may not always be able to generate an immediate
  static const char* immediates = "in";
  while (strchr(immediates, *constraint) && *(constraint+1))
  {
    constraint++;
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
  else if (strchr("m", *constraint))
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
#ifndef TARG_PR
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
#endif
      rtype = WN_rtype(load);
    } else {
      /* We can't figure out what type the operand is, probably because the
	 optimizer deleted the references to it, so return some default
	 type based on the constraint. */
      rtype = ((*constraint == 'b') ? MTYPE_B : MTYPE_I4);
    }
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(rtype));
  }
  else if (*constraint == 't')
  {
    FmtAssert(pref_tn && TN_is_dedicated(pref_tn) &&
	      TN_register_class(pref_tn)==ISA_REGISTER_CLASS_UNDEFINED,
		("ASM constraint 't' requires a state register"));
    ret_tn = pref_tn;
  }
  else if (*constraint == 'f')
  {
    if (load && (WN_desc(load) != MTYPE_F4 || WN_rtype(load) != MTYPE_F4)) {
      FmtAssert(FALSE, ("ASM operand does not satisfy its constraint"));
    }
    ret_tn = (pref_tn ? pref_tn : Build_TN_Of_Mtype(MTYPE_F4));
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
        char *name = NULL;
        if (TN_is_register(tn)) {
                ISA_REGISTER_CLASS rc = TN_register_class(tn);
                REGISTER reg = TN_register(tn);
                if (name == NULL) {
                        name = (char*) REGISTER_name(rc, reg);
                }
        }
        else {
                FmtAssert(FALSE, ("NYI:  non-register parameters in ASM"));
        }
        return name;
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
	if (*constraint == 'm') {
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

const char* 
CGTARG_Modified_Asm_Opnd_Name(char modifier, TN* tn, char *tn_name)
{
  if (modifier == 'r') {
    return tn_name;
  }
  else {
    FmtAssert(FALSE, ("Unknown ASM operand modifier '%c'", modifier));
  }
  /*NOTREACHED*/
}


/* ====================================================================
 *
 * CGTARG_Postprocess_Asm_String: currently no-op for IA-64
 *
 * ====================================================================
 */
void 
CGTARG_Postprocess_Asm_String (char* s)
{
	char *p;
	while (TRUE) {
		p = strstr(s, "%P");
		if (p == NULL) break;
		// insert blanks cause easier than removing spaces
		*p = ' ';	// %
		++p;
		*p = ' ';	// P
		++p;
		*p = ' ';	// <number>
	}
}

/* ====================================================================
 *
 * CGTARG_Unconditional_Compare
 *
 * See interface description
 *
 * ====================================================================
 */
static 
BOOL CGTARG_Unconditional_Compare_Helper(TOP top, TOP* uncond_ver)
{
  return FALSE;
}


BOOL CGTARG_Unconditional_Compare(OP *op, TOP* uncond_ver)
{
  return (CGTARG_Unconditional_Compare_Helper(OP_code(op),uncond_ver));
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
  TN* tn1;
  TN* tn2;
  OP* compare_op;
  OP* br_op = BB_branch_op(bb);

  if (!OP_has_predicate(br_op)) {
    return TOP_UNDEFINED;
  }
  TN* pred_tn = OP_opnd(br_op, OP_PREDICATE_OPND);
  if (TN_is_true_pred(pred_tn)) {
    return TOP_UNDEFINED;
  }
  CGTARG_Analyze_Compare(br_op, &tn1, &tn2, &compare_op);
  if (compare_op == br_op) {
    return TOP_UNDEFINED;
  }
  if (OP_result(compare_op, 0) == pred_tn) {
    Set_OP_opnd(br_op, OP_PREDICATE_OPND, OP_result(compare_op, 1));
  } else {
    Set_OP_opnd(br_op, OP_PREDICATE_OPND, OP_result(compare_op, 0));
  }
  return OP_code(br_op);
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
  TOP top = OP_code(op);
  switch (top) {
  case TOP_teq2:
  case TOP_teqi2:
  case TOP_tge2:
  case TOP_tgei2:
  case TOP_tgem2:
  case TOP_tgemi2:
  case TOP_tgt2:
  case TOP_tgti2:
  case TOP_tgtm2:
  case TOP_tgtmi2:
  case TOP_tne2:
  case TOP_tnei2:
  case TOP_tnem2:
  case TOP_teq3:
  case TOP_teqi3:
  case TOP_tle3:
  case TOP_tlem3:
  case TOP_tlei3:
  case TOP_tlemi3:
  case TOP_tlt3:
  case TOP_tlti3:
  case TOP_tltm3:
  case TOP_tltmi3:
  case TOP_tge3:
  case TOP_tgei3:
  case TOP_tgem3:
  case TOP_tgemi3:
  case TOP_tgt3:
  case TOP_tgti3:
  case TOP_tgtm3:
  case TOP_tgtmi3:
  case TOP_tne3:
  case TOP_tnei3:
  case TOP_tnem3:
  case TOP_tnemi3:
    Set_OP_cond_def_kind(op, OP_ALWAYS_UNC_DEF);
    break;
  default:
    if (OP_has_predicate(op))
      Set_OP_cond_def_kind(op, OP_PREDICATED_DEF);
    else
      Set_OP_cond_def_kind(op, OP_ALWAYS_UNC_DEF);
    break;
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
  OP *new_br;
  TOP new_top;
  OP* br_op = BB_branch_op(bb);

  if (!br_op) return;

  DevWarn("Make_Branch_Conditional NYI");
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
	OP_imul(op) 
	)
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
	OP_imul(op) 
	)
      return FALSE;
    else
      return TRUE;
  case EAGER_DIVIDE:
    if (OP_load(op) ||
	OP_store(op) ||
	OP_prefetch(op) ||
	OP_idiv(op) ||
	OP_imul(op)
	)
      return FALSE;
    else
      return TRUE;
  case EAGER_MEMORY:
  case EAGER_OTHER:
    if (OP_idiv(op) ||
	OP_imul(op) 
	)
      return FALSE;
    else
      return TRUE;
  default:
    FmtAssert(FALSE, ("Handle this case"));
    return FALSE;
  }
}

