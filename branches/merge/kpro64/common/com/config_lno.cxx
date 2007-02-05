/*
 *  Copyright (C) 2006. QLogic Corporation. All Rights Reserved.
 */

/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
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
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/config_lno.cxx,v $
 *
 * Revision history:
 *  11-Nov-96 - Original Version.
 *
 * Description:
 *
 * Configure the -LNO option group (included in config.c).
 *
 * ====================================================================
 *
 * TODO:  at a convenient point:
 *
 * ====================================================================
 * ====================================================================
 */

#ifdef _KEEP_RCS_ID
/*REFERENCED*/
static char *config_lno_rcs_id = "$Source: common/com/SCCS/s.config_lno.cxx $ $Revision: 1.65 $";
#endif /* _KEEP_RCS_ID */

/* This file is included in config.c, so it doesn't need its own set of
 * standard includes -- only the following:
 */
#include "config_lno.h"
#include "config_cache.h"

/* ====================================================================
 *
 * -LNO: option group
 *
 * Define the defaults for -LNO option group flags.
 *
 * NOTE:  There are two copies of this defined -- one to copy when
 * initializing a new struct to the defaults, and one to serve as the
 * initial bottom of the Current_LNO stack.  Fix both of them when
 * adding/changing things.
 *
 * WARNING:  The current memory model can handle four levels.  In order
 * to change it, it is necessary to change the parameter in the file
 * ... as well as the initial value lists of the structs below, and the
 * _DUP option descriptor macros below.
 *
 * ====================================================================
 */

#define DEFAULT_UNROLL_PROD_MAX 16
#define DEFAULT_UNROLL_MAX 10

BOOL Run_autopar = FALSE;
#ifdef KEY
BOOL Simd_Align = FALSE;
BOOL Simd_Reallocate_Objects = FALSE;
#endif
static LNO_FLAGS Default_LNO = {
  NULL,		/* next */
  NULL,		/* _mhd */

  TRUE,		/* Aequiv */
  FALSE,	/* Automatic Data Distribution */
  1,		/* Run_AP */
  FALSE,	/* Ill_xform_directives */
  TRUE,		/* Backward_substitution */
  FALSE,	/* Blind_loop_reversal */
  TRUE,		/* Blocking */
  0,		/* Blocking_Size */
  TRUE,		/* Cache_model_edge_effects */
#ifdef KEY
  0,            /* EffectiveCacheSizePct */
#endif
  TRUE,		/* Coupled_opts */
  TRUE,		/* Cse */
#ifdef KEY
  0,            /* Cse_Loop_Skip_Before */
  10000,        /* Cse_Loop_Skip_After */
  10000,        /* Cse_Loop_Skip_Equal */
  0,            /* Simd_Skip_Before */
  1000,         /* Simd_Skip_After */
  1000,         /* Simd_Skip_Equal */
  0,            /* Simd_Loop_Skip_Before */
  1000,         /* Simd_Loop_Skip_After */
  1000,         /* Simd_LOop_Skip_Equal */
  0,            /* HoistIf_Skip_Before */
  1000,         /* HoistIf_Skip_After */
  1000,         /* HoistIf_Skip_Equal */
  1,		/* HoistIf_Threshold */
  0,            /* SVR_Skip_Before */
  10000,        /* SVR_Skip_After */
  10000,        /* SVR_Skip_Equal */
  TRUE,		/* SVR_Phase1 */
  TRUE,         /* SVR */
  0,            /* Unswitch_Skip_Before */
  1000,         /* Unswitch_Skip_After */
  1000,         /* Unswitch_Skip_Equal */
  0,            /* Unswitch_Loop_Skip_Before */
  1000,         /* Unswitch_Loop_Skip_After */
  1000,         /* Unswitch_Loop_Skip_Equal */
  0,		/* Full_Unroll_Skip_Before */
  1000,		/* Full_Unroll_Skip_After */
  1000,		/* Full_Unroll_Skip_Equal */
  0,            /* Skip_Before */
  10000,        /* Skip_After */
  10000,        /* Skip_Equal */
  0,            /* Apo_Skip_Before */
  10000,        /* Apo_Skip_After */
  10000,        /* Apo_Skip_Equal */
  0,            /* Apo_Loop_Skip_Before */
  10000,        /* Apo_Loop_Skip_After */
  10000,        /* Apo_Loop_Skip_Equal */
  0,            /* Dummy_Skip_Before */
  10000,        /* Dummy_Skip_After */
  10000,        /* Dummy_Skip_Equal */
#endif /* KEY */
  FALSE,	/* Fancy_tile */
  FALSE,	/* Run_fiz_fuse */
#ifdef TARG_X8664
  0,		/* Fission */
#else
  1,		/* Fission */
#endif
  0,		/* Fission_inner_register_limit */
  TRUE,		/* Forward_substitution */
  1,		/* Fusion */
  5,		/* Fusion_peeling_limit */
  1,		/* Gather_Scatter */
  0xfffe,	/* Graph_capacity */
  TRUE,		/* Hoist_messy_bounds */
  FALSE,	/* Ignore_pragmas */
  TRUE,		/* Interchange */
  FALSE, FALSE,	/* Run_lego */
  TRUE,		/* Run_lego_localizer */
  TRUE,		/* Loop_finalization */
  8,		/* Max_do_loop_depth_strict */
  FALSE,	/* Mem_sim */
  TRUE,		/* Minvar */
  1,		/* Opt */
  2,		/* Cache_model */
  TRUE,		/* Run_outer */
#ifdef KEY
  30,		/* OLF_Upper_Bound */
  15,		/* OLF_Lower_Bound */
#endif
  0,		/* Outer_unroll */
  TRUE,		/* Outer_unroll_deep */
  6,		/* Outer_unroll_min_for_further_unroll */
  0,		/* Outer_unroll_max */
  FALSE,	/* Outer_unroll_model_only */
  0,		/* Outer_unroll_prod_max */
  TRUE,		/* Outer_unroll_unity */
  2,		/* ou_aggre */
  0,		/* Run_p3 */
  TRUE,		/* Pseudo_lower */
#ifndef KEY
  0, FALSE,	/* Run_prefetch */
#else
  NO_PREFETCH, FALSE,	/* Run_prefetch */
  FALSE, FALSE, /* Prefetch for store accesses - Prefetch_stores */
#endif
  2,		/* Prefetch_ahead */
  2,		/* Prefetch_iters_ahead */
  2,		/* Prefetch_cache_factor */
  FALSE,	/* Prefetch_indirect */
  FALSE, FALSE,	/* Run_prefetch_manual */
  TRUE,		/* Power_of_two_hack */
  TRUE,		/* Sclrze */
  0,		/* SE_tile_size */
  1,		/* Split_tiles */
  64,		/* Split_tiles_size */
  FALSE,	/* Run_test */
  FALSE,	/* Test_dump */
  TRUE,		/* Trapezoidal_outer_unroll */
  FALSE,	/* Use_malloc */
  TRUE,		/* Use_parm */
  FALSE,	/* Verbose */
  TRUE,		/* Version_mp_loops */
#ifndef KEY
  TRUE,		/* Run_vintr */
#else
  1,		/* Run_vintr */
  TRUE,         /* Run_vintr_set */
  FALSE,	/* Vintr_Verbose */
  1,            /* Run_simd */
  TRUE,         /* Run_simd_set */
  FALSE,	/* Simd_Verbose */
  TRUE,         /* Simd_Reduction */
  TRUE,         /* Simd_Avoid_Fusion */
  TRUE,         /* Run_hoistif */
  TRUE,		/* Ignore_Feedback */
  TRUE,         /* Run_unswitch */
  TRUE,         /* Run_unswitch_phase1 */
  TRUE,         /* Run_unswitch_phase2 */
  FALSE,	/* Unswitch_Verbose */
  FALSE,	/* Prefetch_Verbose */
  FALSE,        /* Build_Scalar_Reductions */
#endif /* KEY */
  TRUE,		/* Run_oinvar */
#ifdef TARG_IA64
  1,		/* Run_doacross */
#else
  0,		/* Run_doacross */
#endif
  0,		/* Preferred_doacross_tile_size */
#ifdef TARG_IA64
  2048,		/* Parallel_overhead */ 
#else
  4096,		/* Parallel_overhead */ 
#endif
  FALSE, 	/* Prompl */ 
  TRUE, 	/* IfMinMax */ 
  FALSE,	/* Run_call_info */
  TRUE, 	/* Shackle */ 
  FALSE, 	/* Cross_loop */ 
  FALSE,        /* IPA_Enabled */
#ifdef TARG_IA64
  100,          /* Num_Iters */
#else
  1000,          /* Num_Iters */
#endif
  1,		/* Pure_Level */ 
  5,            /* Small_trip_count */
#ifdef TARG_IA64
  1000, 	/* Assume_Unknown_Trip_Count */
#endif
  (UINT32)-1,	/* Local_pad_size */
#ifdef TARG_X8664
  5,            /* Full_unrolling */
#else
  8,            /* Full_unrolling */
#endif
#ifdef KEY
  2000,         /* Full_unrolling_loop_size_limit */
#ifdef TARG_IA64
  TRUE,		/* Full_Unroll_Outer */
#else
  FALSE,         /* Full_Unroll_Outer */
#endif
  0,		/* Processors */
  128,		/* Parallel_per_proc_overhead */ 
  FALSE,	/* Apo_use_feedback */
#endif
  { 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 }	/* buffer[16] */
};

LNO_FLAGS Initial_LNO = {
  NULL,		/* next */
  &Mhd_Options,	/* _mhd */

  TRUE,		/* Aequiv */
  FALSE,	/* Automatic data distribution */
  1,		/* Run_AP */
  FALSE,	/* Ill_xform_directives */
  TRUE,		/* Backward_substitution */
  FALSE,	/* Blind_loop_reversal */
  TRUE,		/* Blocking */
  0,		/* Blocking_Size */
  TRUE,		/* Cache_model_edge_effects */
#ifdef KEY
  0,            /* EffectiveCacheSizePct */
#endif
  TRUE,		/* Coupled_opts */
  TRUE,		/* Cse */
#ifdef KEY
  0,            /* Cse_Loop_Skip_Before */
  10000,        /* Cse_Loop_Skip_After */
  10000,        /* Cse_Loop_Skip_Equal */
  0,            /* Simd_Skip_Before */
  1000,         /* Simd_Skip_After */
  1000,         /* Simd_Skip_Equal */
  0,            /* Simd_Loop_Skip_Before */
  1000,         /* Simd_Loop_Skip_After */
  1000,         /* Simd_LOop_Skip_Equal */
  0,            /* HoistIf_Skip_Before */
  1000,         /* HoistIf_Skip_After */
  1000,         /* HoistIf_Skip_Equal */
  1,		/* HoistIf_Threshold */
  0,            /* SVR_Skip_Before */
  10000,        /* SVR_Skip_After */
  10000,        /* SVR_Skip_Equal */
  TRUE,		/* SVR_Phase1 */
  TRUE,         /* SVR */
  0,            /* Unswitch_Skip_Before */
  1000,         /* Unswitch_Skip_After */
  1000,         /* Unswitch_Skip_Equal */
  0,            /* Unswitch_Loop_Skip_Before */
  1000,         /* Unswitch_Loop_Skip_After */
  1000,         /* Unswitch_Loop_Skip_Equal */
  0,		/* Full_Unroll_Skip_Before */
  1000,		/* Full_Unroll_Skip_After */
  1000,		/* Full_Unroll_Skip_Equal */
  0,            /* Skip_Before */
  10000,        /* Skip_After */
  10000,        /* Skip_Equal */
  0,            /* Apo_Skip_Before */
  10000,        /* Apo_Skip_After */
  10000,        /* Apo_Skip_Equal */
  0,            /* Apo_Loop_Skip_Before */
  10000,        /* Apo_Loop_Skip_After */
  10000,        /* Apo_Loop_Skip_Equal */
  0,            /* Dummy_Skip_Before */
  10000,        /* Dummy_Skip_After */
  10000,        /* Dummy_Skip_Equal */
#endif /* KEY */
  FALSE,	/* Fancy_tile */
  FALSE,	/* Run_fiz_fuse */
#ifdef TARG_X8664
  0,		/* Fission */
#else
  1,		/* Fission */
#endif
  0,		/* Fission_inner_register_limit */
  TRUE,		/* Forward_substitution */
  1,		/* Fusion */
  5,		/* Fusion_peeling_limit */
  1,		/* Gather_Scatter */
  0xfffe,	/* Graph_capacity */
  TRUE,		/* Hoist_messy_bounds */
  FALSE,	/* Ignore_pragmas */
  TRUE,		/* Interchange */
  FALSE, FALSE,	/* Run_lego */
  TRUE,		/* Run_lego_localizer */
  TRUE,		/* Loop_finalization */
  8,		/* Max_do_loop_depth_strict */
  FALSE,	/* Mem_sim */
  TRUE,		/* Minvar */
  1,		/* Opt */
  2,		/* Cache_model */
  TRUE,		/* Run_outer */
#ifdef KEY
  30,		/* OLF_Upper_Bound */
  15,		/* OLF_Lower_Bound */
#endif
  0,		/* Outer_unroll */
  TRUE,		/* Outer_unroll_deep */
  6,		/* Outer_unroll_min_for_further_unroll */
  0,		/* Outer_unroll_max */
  FALSE,	/* Outer_unroll_model_only */
  0,		/* Outer_unroll_prod_max */
  TRUE,		/* Outer_unroll_unity */
  2,		/* ou_aggre */
  0,		/* Run_p3 */
  TRUE,		/* Pseudo_lower */
#ifndef KEY
  0, FALSE,	/* Run_prefetch */
#else
  NO_PREFETCH, FALSE,	/* Run_prefetch */
  FALSE, FALSE, /* Prefetch for store accesses - Prefetch_stores */
#endif
  2,		/* Prefetch_ahead */
  2,		/* Prefetch_iters_ahead */
  2,		/* Prefetch_cache_factor */
  FALSE,	/* Prefetch_indirect */
  FALSE, FALSE,	/* Run_prefetch_manual */
  TRUE,		/* Power_of_two_hack */
  TRUE,		/* Sclrze */
  0,		/* SE_tile_size */
  1,		/* Split_tiles */
  64,		/* Split_tiles_size */
  FALSE,	/* Run_test */
  FALSE,	/* Test_dump */
  TRUE,		/* Trapezoidal_outer_unroll */
  FALSE,	/* Use_malloc */
  TRUE,		/* Use_parm */
  FALSE,	/* Verbose */
  TRUE,		/* Version_mp_loops */
#ifndef KEY
  TRUE,		/* Run_vintr */
#else
  1,		/* Run_vintr */
  TRUE,         /* Run_vintr_set */
  FALSE,	/* Vintr_Verbose */
  1, 		/* Run_simd */
  TRUE,         /* Run_simd_set */
  FALSE,	/* Simd_Verbose */
  TRUE,         /* Simd_Reduction */
  TRUE,         /* Simd_Avoid_Fusion */
  TRUE,         /* Run_hoistif */
  TRUE,	 	/* Ignore_Feedback */
  TRUE,         /* Run_unswitch */
  TRUE,         /* Run_unswitch_phase1 */
  TRUE,         /* Run_unswitch_phase2 */
  FALSE,	/* Unswitch_Verbose */
  FALSE,	/* Prefetch_Verbose */
  FALSE,        /* Build_Scalar_Reductions */
#endif /* KEY */
  TRUE,		/* Run_oinvar */
#ifdef TARG_IA64
  1,		/* Run_doacross */
#else
  0,		/* Run_doacross */
#endif
  0,		/* Preferred_doacross_tile_size */
#ifdef TARG_IA64
  2048,		/* Parallel_overhead */ 
#else
  4096,         /* Parallel_overhead */ 
#endif
  FALSE, 	/* Prompl */ 
  TRUE, 	/* IfMinMax */ 
  FALSE, 	/* Run_call_info */ 
  TRUE, 	/* Shackle */ 
  FALSE, 	/* Cross_loop */ 
  FALSE,        /* IPA array section information available */
#ifdef TARG_IA64
  100,          /* Num_Iters */
#else
  1000,          /* Num_Iters */
#endif
  1,		/* Pure_Level */ 
  5,            /* Small_trip_count */
#ifdef TARG_IA64
  1000, 	/* Assume_Unknown_Trip_Count */
#endif
  (UINT32)-1,	/* Local_pad_size */
#ifdef TARG_X8664
  5,            /* Full_unrolling */
#else
  8,            /* Full_unrolling */
#endif
#ifdef KEY
  2000,         /* Full_unrolling_loop_size_limit */
#ifdef TARG_IA64
  TRUE,		/* Full_Unroll_Outer */
#else
  TRUE,         /* Full_Unroll_Outer */
#endif
  0,		/* Processors */
  128,		/* Parallel_per_proc_overhead */ 
  FALSE,	/* Apo_use_feedback */
#endif
  { 0,0,0,0, 0,0,0,0, 0,0,0,0, 0,0,0,0 }	/* buffer[16] */
};

LNO_FLAGS *Current_LNO = &Initial_LNO;
MHD *Current_MHD = &Mhd_Options;

/* ====================================================================
 * Descriptor for the -LNO option group.
 * ====================================================================
 */

/* Macros for defining primary -LNO group options: */
#define IL	Initial_LNO
#define LNOPT_U32(name,abbr,def,lb,ub,var)	\
    { OVK_UINT32, OV_VISIBLE, TRUE, name, abbr, def, lb, ub, &IL.var, NULL }
#define LNOPT_U32_SET(name,abbr,def,lb,ub,var,var_set)	\
    { OVK_UINT32, OV_VISIBLE, TRUE, name, abbr, def, lb, ub, &IL.var, &IL.var_set }
#define LNOPT_BOOL(name,abbr,var)	\
    { OVK_BOOL, OV_VISIBLE, TRUE, name, abbr, 1, 0, 1, &IL.var, NULL }
#define LNOPT_BOOL_SET(name,abbr,var,var_set)	\
    { OVK_BOOL, OV_VISIBLE, TRUE, name, abbr, 1, 0, 1, &IL.var, &IL.var_set }

/* Macros for defining memory hierarchy -LNO group options: */
#define MHO	Mhd_Options
#define MHOPT_I32(name,abbr,def,lb,ub,var)	\
    { OVK_INT32, OV_VISIBLE, TRUE, name, abbr, def, lb, ub, &MHO.var, NULL }
#define MHOPT_I32_SET(name,abbr,def,lb,ub,var,var_set)	\
    { OVK_INT32, OV_VISIBLE, TRUE, name, abbr, def, lb, ub, &MHO.var, &MHO.var_set }
#define MHOPT_I32_DUP(name,def,lb,ub,var)	\
    MHOPT_I32 ( name "1", NULL, def, lb, ub, L[0].var ),	\
    MHOPT_I32 ( name "2", NULL, def, lb, ub, L[1].var ),	\
    MHOPT_I32 ( name "3", NULL, def, lb, ub, L[2].var ),	\
    MHOPT_I32 ( name "4", NULL, def, lb, ub, L[3].var )
#define MHOPT_I32_SET_DUP(name,def,lb,ub,var,vset)	\
    MHOPT_I32_SET ( name "1", NULL, def, lb, ub, L[0].var, L[0].vset ),	\
    MHOPT_I32_SET ( name "2", NULL, def, lb, ub, L[1].var, L[1].vset ),	\
    MHOPT_I32_SET ( name "3", NULL, def, lb, ub, L[2].var, L[2].vset ),	\
    MHOPT_I32_SET ( name "4", NULL, def, lb, ub, L[3].var, L[3].vset )
#define MHOPT_NAME(name,abbr,var)	\
    { OVK_NAME, OV_VISIBLE, TRUE, name, abbr, 0, 0, 0, &MHO.var, NULL }
#define MHOPT_NAME_DUP(name,var)	\
    MHOPT_NAME ( name "1", NULL, L[0].var ),	\
    MHOPT_NAME ( name "2", NULL, L[1].var ),	\
    MHOPT_NAME ( name "3", NULL, L[2].var ),	\
    MHOPT_NAME ( name "4", NULL, L[3].var )
#define MHOPT_BOOL(name,abbr,var)	\
    { OVK_BOOL, OV_VISIBLE, TRUE, name, abbr, 0, 0, 1, &MHO.var, NULL }
#define MHOPT_BOOL_SET(name,abbr,var,var_set)	\
    { OVK_BOOL, OV_VISIBLE, TRUE, name, abbr, 0, 0, 1, &MHO.var, &MHO.var_set }
#define MHOPT_BOOL_DUP(name,var)	\
    MHOPT_BOOL ( name "1", NULL, L[0].var ),	\
    MHOPT_BOOL ( name "2", NULL, L[1].var ),	\
    MHOPT_BOOL ( name "3", NULL, L[2].var ),	\
    MHOPT_BOOL ( name "4", NULL, L[3].var )
#define MHOPT_BOOL_SET_DUP(name,var,vset)	\
    MHOPT_BOOL_SET ( name "1", NULL, L[0].var, L[0].vset ),	\
    MHOPT_BOOL_SET ( name "2", NULL, L[1].var, L[1].vset ),	\
    MHOPT_BOOL_SET ( name "3", NULL, L[2].var, L[2].vset ),	\
    MHOPT_BOOL_SET ( name "4", NULL, L[3].var, L[3].vset )

static OPTION_DESC Options_LNO[] = {

  
  LNOPT_U32  ( "pure", 			NULL,   1,0,2,Pure_Level),
  LNOPT_U32  ( "small_trip_count", 	NULL,   5,0,10,Small_trip_count),
#ifdef TARG_IA64
  LNOPT_U32  ( "assume_unknown_trip_count", NULL,   
  	       1000,0,1000,Assume_Unknown_Trip_Count),
#endif
  LNOPT_U32  ( "local_pad_size", 	NULL,   0,0,1000,Local_pad_size),
  LNOPT_U32  ( "full_unroll", 	        "fu",   0,0,100,Full_unrolling),
#ifdef KEY
  LNOPT_U32  ( "full_unroll_size", 	NULL,   
	       2000,0,10000,Full_unrolling_loop_size_limit),
  LNOPT_BOOL ( "full_unroll_outer",	NULL,	Full_Unroll_Outer ),
  LNOPT_U32  ( "processors", 	NULL,   
	       0,0,10000,Num_Processors),
  LNOPT_U32  ( "parallel_pp_overhead", 	NULL,   
	       128,0,0x7fffffff, Parallel_per_proc_overhead),
  LNOPT_BOOL ( "apo_use_feedback",	NULL,	Apo_use_feedback ),
#endif

  { OVK_COUNT }		    /* List terminator -- must be last */
};

#undef IL

/* ====================================================================
 *
 * LNO_Init_Config
 *
 * Initialize the current top of stack to defaults, by copying the
 * Default_LNO struct to it.  Be careful not to lose the next
 * pointer.
 *
 * WARNING:  We are always picking up the default Mhd_Options struct
 * here.
 *
 * ====================================================================
 */

void
LNO_Init_Config ( void )
{
  LNO_FLAGS *next = LNO_FLAGS_next(Current_LNO);

  *Current_LNO = Default_LNO;
  LNO_FLAGS_next(Current_LNO) = next;
  LNO_FLAGS_mhd (Current_LNO) = &Mhd_Options;
}

/* ====================================================================
 *
 * LNO_Push_Config
 *
 * Push a new struct on top of stack, either a copy of the current
 * TOS, or the defaults.
 *
 * TODO:  To make the option group printing functionality work once the
 * configuration structs start changing, this function must also update
 * the addresses in the group descriptor to point to the current
 * top-of-stack structure.
 *
 * ====================================================================
 */

void
LNO_Push_Config ( BOOL use_default )
{
  LNO_FLAGS *new_flags =
	(LNO_FLAGS *) malloc ( sizeof(LNO_FLAGS) );

  if ( new_flags == NULL ) {
    ErrMsg ( EC_No_Mem, "LNO_Push" );
  }

  *new_flags = use_default ? Default_LNO : *Current_LNO;
  LNO_FLAGS_next(new_flags) = Current_LNO;
  LNO_FLAGS_mhd (new_flags) = &Mhd_Options;
  Current_LNO = new_flags;
}



/* ====================================================================
 *
 * LNO_Pop_Config
 *
 * Pop a struct from top of stack and return TRUE if the old TOS was
 * not the original TOS, or do nothing and return FALSE.
 *
 * TODO:  To make the option group printing functionality work once the
 * configuration structs start changing, this function must also update
 * the addresses in the group descriptor to point to the current
 * top-of-stack structure.
 *
 * ====================================================================
 */

BOOL
LNO_Pop_Config ( void )
{
  if ( Current_LNO->next == NULL ) {
    /* This is the bottom of the stack: */
    return FALSE;
  } else {
    /* Deallocate the top element and pop it: */
    LNO_FLAGS *new_flags = LNO_FLAGS_next(Current_LNO);
    free ( Current_LNO );
    Current_LNO = new_flags;
    return TRUE;
  }
}

/* ====================================================================
 *
 * LNO_Configure
 *
 * Configure the current top of stack struct.
 *
 * ====================================================================
 */

void
LNO_Configure ( void )
{
  INT i;

#ifdef COMPILER_LICENSING
  /* check licensing for automatic parallelization */
  if (Run_autopar) {
     get_license("auto_pp", FALSE, TRUE);  /* soft licensing == FALSE; tier licensing == TRUE */
  }
#endif

  /* This option is actually a trace flag: */
  LNO_Verbose = Get_Trace ( TP_LNOPT, 0x0004 );

  /* Unrolling: of LNO_Outer_Unroll, LNO_Outer_Unroll_Max, and
   * LNO_Outer_Unroll_Prod_Max, only the first OR either or both of the
   * last two may be non-zero (i.e. meaningful).
   */
  if ( LNO_Outer_Unroll != 0 && LNO_Outer_Unroll_Max != 0 ) {
    ErrMsg ( EC_Opt_Conflict, "-LNO:outer_unroll",
	     "-LNO:outer_unroll_max", "-LNO:outer_unroll" );
    LNO_Outer_Unroll_Max = 0;
  }
  if ( LNO_Outer_Unroll != 0 && LNO_Outer_Unroll_Prod_Max != 0 ) {
    ErrMsg ( EC_Opt_Conflict, "-LNO:outer_unroll",
	     "-LNO:outer_unroll_prod_max", "-LNO:outer_unroll" );
    LNO_Outer_Unroll_Prod_Max = 0;
  }
  if ( LNO_Outer_Unroll == 0
    && LNO_Outer_Unroll_Max == 0
    && LNO_Outer_Unroll_Prod_Max == 0 )
  {
    LNO_Outer_Unroll_Prod_Max = DEFAULT_UNROLL_PROD_MAX;
  }
  if ( LNO_Outer_Unroll == 0 && LNO_Outer_Unroll_Max == 0 ) {
    LNO_Outer_Unroll_Max = DEFAULT_UNROLL_MAX;
  }

  /* Cache parameters */

  for ( i = 0; i < 4; i++ ) {
    if ( Mhd_Options.L[i].CS_string != NULL
      && ! Atoi_KMG ( Mhd_Options.L[i].CS_string,
		      &Mhd_Options.L[i].Size, TRUE ) )
    {
      char buffer[256];

      sprintf ( buffer, "-LNO:cache_size%d=%s",
		i, Mhd_Options.L[i].CS_string );
      ErrMsg ( EC_Inv_Opt_Val, buffer );
      Mhd_Options.L[i].Size = 0;
    }

    if ( Mhd_Options.L[i].Is_Mem_Level == 1)
      Mhd_Options.L[i].Type = MHD_TYPE_MEM;
    else if ( Mhd_Options.L[i].Is_Mem_Level == 0 )
      Mhd_Options.L[i].Type = MHD_TYPE_CACHE;

    if ( Mhd_Options.L[i].Miss_Penalty_Set ) {
      if ( Mhd_Options.L[i].CMP_Set ) {
	ErrMsg ( EC_Opt_Conflict, "-LNO:miss_penalty",
		 "-LNO:clean_miss_penalty", "-LNO:miss_penalty" );
      }
      if ( Mhd_Options.L[i].DMP_Set ) {
	ErrMsg ( EC_Opt_Conflict, "-LNO:miss_penalty",
		 "-LNO:dirty_miss_penalty", "-LNO:miss_penalty" );
      }
      Mhd_Options.L[i].Clean_Miss_Penalty = Mhd_Options.L[i].Miss_Penalty;
      Mhd_Options.L[i].Dirty_Miss_Penalty = Mhd_Options.L[i].Miss_Penalty;
    }
    if (Mhd_Options.L[i].TLB_Miss_Penalty != -1) {
      if ( Mhd_Options.L[i].TLB_CMP_Set ) {
	ErrMsg ( EC_Opt_Conflict, "-LNO:tlb_miss_penalty",
		 "-LNO:tlb_clean_miss_penalty", "-LNO:tlb_miss_penalty" );
      }
      if ( Mhd_Options.L[i].TLB_DMP_Set ) {
	ErrMsg ( EC_Opt_Conflict, "-LNO:tlb_miss_penalty",
		 "-LNO:tlb_dirty_miss_penalty", "-LNO:tlb_miss_penalty" );
      }
      Mhd_Options.L[i].TLB_Clean_Miss_Penalty =
			Mhd_Options.L[i].TLB_Miss_Penalty;
      Mhd_Options.L[i].TLB_Dirty_Miss_Penalty =
			Mhd_Options.L[i].TLB_Miss_Penalty;
    }
  }
}

