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
 * Module: config_wopt.c
 * $Revision: 1.1.1.1 $
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/common/com/config_wopt.cxx,v $
 *
 * Revision history:
 *  08-Sep-94 - Original Version (wodriver.c)
 *  05-May-96 - config_wopt.c extracted from wodriver.c
 *
 * Description:
 *
 * Configure the -WOPT group (included in config.c).
 * Used from ipl, inline, ipa (ld), and be.
 *
 * ====================================================================
 * ====================================================================
 */

// This file is included in config.cxx, so it doesn't need its own set of
// standard includes -- only the following:
#include "config_wopt.h"


/* ====================================================================
 *
 * Global flag variables which reflect the -WOPT group options.
 *
 * ====================================================================
 */

/* List of global variables to turn on and off various optimizations */
UINT32 WOPT_Ip_Alias_Class_Limit = UINT32_MAX;	// no limit
UINT32 WOPT_Alias_Class_Limit = UINT32_MAX;	// no limit
BOOL  WOPT_Ldx_Ratio_RegIns = 1;
BOOL  WOPT_Enable_Add_Do_Loop_Info = TRUE;
BOOL  WOPT_Enable_Add_Label_Loop_Info = TRUE;
BOOL  WOPT_Enable_Aggressive_Code_Motion = TRUE;
INT32 WOPT_Enable_Aggressive_CM_Limit = INT32_MAX;
INT32 WOPT_Enable_Aggressive_CM_Threshold = 70;
BOOL  WOPT_Enable_Aggressive_dce = TRUE;
BOOL  WOPT_Enable_Aggressive_Doloop_Promotion = FALSE;
BOOL  WOPT_Enable_Aggressive_IVR = TRUE;
BOOL  WOPT_Enable_Aggressive_Lftr = TRUE;
BOOL  WOPT_Enable_Aggressive_Phi_Simp = TRUE;
BOOL  WOPT_Enable_Aggstr_Reduction = TRUE;
BOOL  WOPT_Enable_Alias_ANSI = TRUE;
BOOL  WOPT_Enable_Alias_Classification = TRUE;
BOOL  WOPT_Enable_Alias_Class_Fortran_Rule = TRUE;
BOOL  WOPT_Enable_Alias_Qualifer = TRUE;
BOOL  WOPT_Enable_Alias_Ragnarok_Unnamed = TRUE;
BOOL  WOPT_Enable_Avoid_Rehash = FALSE; /* SSAPRE to minimize rehashing */
BOOL  WOPT_Enable_Bitwise_DCE = TRUE;
BOOL  WOPT_Enable_CSE_FP_comparison = TRUE;
BOOL  WOPT_Enable_Call_Flag = TRUE;
BOOL  WOPT_Enable_Calls_Break_BB = FALSE;
BOOL  WOPT_Enable_Calls_Break_BB_Set = FALSE;
BOOL  WOPT_Enable_Canon_Expr = TRUE;
BOOL  WOPT_Enable_Combine_Operations = TRUE;
BOOL  WOPT_Enable_Compare_Simp = TRUE;  /* simplify comparisons */
BOOL  WOPT_Enable_Const_PRE = TRUE;
INT32 WOPT_Enable_Const_PRE_Limit = 0;
BOOL  WOPT_Enable_Copy_Propagate = TRUE;
BOOL  WOPT_Enable_Copy_Prop_Bad_Ops = FALSE;  /* copy prop ops that strength-reduction can't handle */
static BOOL WOPT_Enable_Copy_Prop_Bad_Ops_Set = FALSE;
BOOL  WOPT_Enable_Copy_Prop_LNO_Ops = FALSE;  /* copy prop ops that LNO can't handle */
/* copy prop certain ops into ARRAY subscripts (enabled for mainopt) */
BOOL  WOPT_Enable_Copy_Prop_Ops_Into_Array = FALSE;
BOOL  WOPT_Enable_Copy_Prop_Ops_Into_Array_Set = FALSE;
BOOL  WOPT_Enable_CG_Alias = TRUE;
BOOL  WOPT_Enable_DIVREM = TRUE; /* allow divrem opcode */
BOOL  WOPT_Enable_CRSIMP = TRUE;
BOOL  WOPT_Enable_DCE = TRUE;
BOOL  WOPT_Enable_DCE_Alias = FALSE;
BOOL  WOPT_Enable_DCE_Branch = TRUE;
INT32 WOPT_Enable_DCE_Branch_Pred_Limit = 5;
BOOL  WOPT_Enable_DCE_Global = TRUE;
BOOL  WOPT_Enable_DCE_Label = TRUE;
BOOL  WOPT_Enable_DU_Full = FALSE;
BOOL  WOPT_Enable_DU_Union = TRUE;
BOOL  WOPT_Enable_Dead_CR_Fix = TRUE;
BOOL  WOPT_Enable_Debug_Inconsistent_Ip_Class = FALSE;
BOOL  WOPT_Enable_Estr_FB_Injury = FALSE;
static BOOL  WOPT_Enable_Estr_FB_Injury_Set = FALSE;
BOOL  WOPT_Enable_Exp_PRE = TRUE;
INT32 WOPT_Enable_Exp_PRE_Limit = -1;
BOOL  WOPT_Enable_Fast_Simp = TRUE;
BOOL  WOPT_Enable_Fold2const = TRUE;
BOOL  WOPT_Enable_Fold_Lda_Iload_Istore = TRUE;
BOOL  WOPT_Enable_LNO_Copy_Propagate = TRUE;
BOOL  WOPT_Enable_FSA = TRUE;
INT32 WOPT_Enable_Generate_Trip_Count = 1;
BOOL  WOPT_Enable_Generate_DU = TRUE;
BOOL  WOPT_Enable_Goto = TRUE;
BOOL  WOPT_Enable_Hoisting = TRUE;
BOOL  WOPT_Enable_Ivar_Hoisting = TRUE;
BOOL  WOPT_Enable_I8_Primary_IV = FALSE;
BOOL  WOPT_Enable_Improved_Addr_Taken = TRUE;
BOOL  WOPT_Enable_Input_Prop = TRUE;
BOOL  WOPT_Enable_Itself_Prop = TRUE;
BOOL  WOPT_Enable_IPAA = FALSE;
BOOL  WOPT_Enable_Ivar_Common = TRUE;
BOOL  WOPT_Enable_Ivar_PRE = TRUE;
BOOL  WOPT_Enable_Ivincr_Cand = FALSE;
BOOL  WOPT_Enable_IVE = TRUE;
BOOL  WOPT_Enable_IVE_Old = FALSE;
BOOL  WOPT_Enable_IVR = TRUE;
INT32 WOPT_Enable_IVR_Expand_Limit = 1000;  /* expand 1000 statements */
BOOL  WOPT_Enable_IVR_Outermost_Loop_Parallel_Region = FALSE;
BOOL  WOPT_Enable_Ldx = FALSE;
BOOL  WOPT_Enable_Lego_Opt = FALSE;
BOOL  WOPT_Enable_LFTR = TRUE;
BOOL  WOPT_Enable_LFTR_Ivar = FALSE;
#ifdef TARG_MIPS
BOOL  WOPT_Enable_LFTR2 = TRUE;
#else
BOOL  WOPT_Enable_LFTR2 = FALSE;
#endif
INT32 WOPT_Enable_LFTR2_Limit = -1;
BOOL  WOPT_Enable_Load_PRE = TRUE;
INT32 WOPT_Enable_Load_PRE_Limit = -1;
BOOL  WOPT_Enable_Loopinvarexp_Str_Reduction = TRUE;
BOOL  WOPT_Enable_Lower_Short_Circuit = FALSE;
BOOL  WOPT_Enable_Lower_Short_Circuit_Set = FALSE;
BOOL  WOPT_Enable_MINMAX = TRUE; /* allow minmax opcode */
BOOL  WOPT_Enable_Min_Type = TRUE; 
BOOL  WOPT_Enable_Move_Intrinsicop = TRUE;
BOOL  WOPT_Enable_MP_varref = TRUE;
const BOOL  WOPT_Enable_MP_Const_Prop = TRUE;
BOOL  WOPT_Enable_New_SR = TRUE;
BOOL  WOPT_Enable_New_SR_Limit = 0;
BOOL  WOPT_Enable_Output_Copy = TRUE;
BOOL  WOPT_Enable_Ocopy_Lookupstmt = 2;
BOOL  WOPT_Enable_Parm = TRUE;
char *WOPT_Enable_Process = NULL;
BOOL  WOPT_Enable_Phi_Simp = TRUE;
BOOL  WOPT_Enable_Prop_Ivar = TRUE;
BOOL  WOPT_Enable_Prop_CSE = FALSE;     /* propagate CSE expressions */
INT32 WOPT_Enable_Prop_Limit = 14;	/* this is a guess, PV 468862 */
BOOL  WOPT_Enable_Prune = TRUE;		/* temporary, PV 370066 */
BOOL  WOPT_Enable_Replace_Second_IV = TRUE;
BOOL  WOPT_Enable_Replace_While_Loop_Second_IV = TRUE;
BOOL  WOPT_Enable_Restricted_Map = TRUE;
INT32 WOPT_Enable_Rsv_Bits = 16;	/* reserve bit count in itable */
BOOL  WOPT_Enable_RVI = TRUE;		/* perform both rvi1 and rvi2 */
BOOL  WOPT_Enable_RVI1 = TRUE;		/* phase 1 of rvi */
BOOL  WOPT_Enable_RVI2 = TRUE;		/* phase 2 of rvi */
BOOL  WOPT_Enable_Rviistore = TRUE;	/* agg. chi-handling on istore*/
char *WOPT_Enable_Rviskip = NULL;	/* skip this var during RVI */
BOOL  WOPT_Enable_Rvisplit = FALSE;	/* split bbs at every stmt   */
BOOL  WOPT_Enable_Rvivsym = TRUE;	/* ignore vsym in chi lists */
BOOL  WOPT_Enable_Second_Alias_Class = TRUE;
BOOL  WOPT_Enable_Second_Order = TRUE;
char *WOPT_Enable_Skip = NULL;		/* Name of function to skip */
OPTION_LIST *WOPT_Skip = NULL;		/* Skip option list */
SKIPLIST *WOPT_Skip_List = NULL;	/* Processed skiplist */
BOOL  WOPT_Enable_SLT = TRUE;
BOOL  WOPT_Enable_Small_Br_Target = FALSE; /* propagation into branch BBs */
BOOL  WOPT_Enable_Simple_If_Conv = TRUE;   /* simple if-conversion at CFG build time */
BOOL  WOPT_Enable_Speculation_Defeats_LFTR = TRUE;
BOOL  WOPT_Enable_SSA_Minimization = TRUE; /* SSA minimization in SSAPRE */
BOOL  WOPT_Enable_SSA_PRE = TRUE;
BOOL  WOPT_Enable_Store_PRE = TRUE;
INT32 WOPT_Enable_Store_PRE_Limit = -1;
INT32 WOPT_Enable_Local_Rvi_Limit = -1;
BOOL  WOPT_Enable_Strength_Reduction = TRUE;
BOOL  WOPT_Enable_Update_Vsym = TRUE;
BOOL  WOPT_Enable_Unique_Pt_Vsym = TRUE;
INT32 WOPT_Enable_Value_Numbering = 1; /* 0=OFF, 1=after_pre, 2=befr_n_aftr */
INT32 WOPT_Enable_Vn_Ivc = 1;    /* 0=OFF, see be/opt/opt_vn_ivc.h */
UINT32 WOPT_Enable_Vnfre_After = 0;    /* Disable vnfre after given valnum */
UINT32 WOPT_Enable_Vnfre_Before = UINT32_MAX; /* Disable before given valnum */
BOOL  WOPT_Enable_Verbose = FALSE;
INT32 WOPT_Enable_Verify = 1;
BOOL  WOPT_Enable_Vsym_Unique = FALSE;
BOOL  WOPT_Enable_While_Loop = TRUE;
BOOL  WOPT_Enable_Worklist_Pruning = TRUE;
BOOL  WOPT_Enable_Zero_Version = TRUE;
BOOL  WOPT_Enable_Call_Zero_Version = TRUE;
BOOL  WOPT_Enable_Dse_Aggressive = TRUE;
BOOL  WOPT_Enable_Prop_Aggressive = TRUE;
BOOL  WOPT_Enable_Iload_Prop = TRUE;
BOOL  WOPT_Enable_VN_Full = TRUE;	/* full value number (for ivars) */
BOOL  WOPT_Enable_Simp_Iload = TRUE;   /* simplifier folding iload */
BOOL  WOPT_Enable_Canon_Uplevel=FALSE; /* canonicalize the up level ref */
BOOL  WOPT_Enable_Tail_Recur = FALSE;	/* tail recursion */
BOOL  WOPT_Enable_Edge_Placement = TRUE;/* insert BB on critical edge */
BOOL  WOPT_Enable_Backedge_Placement = FALSE; /* insert BB on critical backedge */
BOOL  WOPT_Enable_Source_Order = FALSE;     /* Dump CFG in source order */
BOOL  WOPT_Enable_Cvt_Folding = TRUE; /* enable cvt folding in emitter */
BOOL  WOPT_Enable_Local_Rvi = TRUE;  /* enable fast rvi of locals */
BOOL  WOPT_Enable_Strong_Barrier = FALSE;
BOOL  WOPT_Enable_Aggr_Invariant = TRUE;
BOOL  WOPT_Enable_Shrink = TRUE;
INT32 WOPT_Enable_Extra_Rename_Pass = 5;
BOOL  WOPT_Enable_Extra_Rename_Pass_Set = FALSE;
UINT32 WOPT_Enable_Extra_Preopt_Pass = 0;
BOOL  WOPT_Enable_Bool_Simp = TRUE;
BOOL  WOPT_Enable_Feedback_LPRE = FALSE;
BOOL  WOPT_Enable_Feedback_EPRE = FALSE;
BOOL  WOPT_Enable_CFG_Display = FALSE;     
BOOL  WOPT_Enable_CFG_Merge_Multi_Zone = TRUE;
BOOL  WOPT_Enable_CFG_Merge_Multi_Zone_Set = FALSE;
BOOL  WOPT_Enable_CFG_Opt = TRUE;         /* control flow optimization main switch */
BOOL  WOPT_Enable_CFG_Opt1 = TRUE;
BOOL  WOPT_Enable_CFG_Opt2 = TRUE;
INT32 WOPT_Enable_CFG_Opt2_Limit = 80;    /* Loop butterfly should produce a min of 80% coverage */
BOOL  WOPT_Enable_CFG_Opt3 = FALSE;
BOOL  WOPT_Enable_CFG_Opt4 = FALSE;
BOOL  WOPT_Enable_CFG_Opt_Limit = 10;
char *WOPT_Set_Unique_Pt = NULL;
BOOL  WOPT_Enable_Bits_Load_Store = TRUE; // accept LDBITS, STBITS, etc.
BOOL  WOPT_Enable_Epre_Before_Ivr = FALSE; // For running epre early
BOOL  WOPT_Enable_Lpre_Before_Ivr = FALSE; // For running lpre early
BOOL  WOPT_Enable_Spre_Before_Ivr = FALSE; // For running spre early
BOOL  WOPT_Enable_Bdce_Before_Ivr = FALSE; // For running bdce early
BOOL  WOPT_Enable_New_Phase_Ordering = TRUE; // Enables some phases before ivr


/* ====================================================================
 *
 * Descriptor for the -WOPT option group.
 *
 * ====================================================================
 */

/* scalar optimizer options: 
   see common/util/flags.h, typedef struct option_desc for documentation */
static OPTION_DESC Options_WOPT[] = {
  { OVK_UINT32, OV_INTERNAL,    TRUE, "ac_limit",               "",
    UINT32_MAX, 0, UINT32_MAX, &WOPT_Alias_Class_Limit, NULL },
  { OVK_UINT32, OV_INTERNAL,    TRUE, "ip_ac_limit",            "",
    UINT32_MAX, 0, UINT32_MAX, &WOPT_Ip_Alias_Class_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "add_do_loop_info",	"add_do",
    0, 0, 0,	&WOPT_Enable_Add_Do_Loop_Info, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "add_label_loop_info",	"add_label",
    0, 0, 0,	&WOPT_Enable_Add_Label_Loop_Info, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "aggcm",		"aggcm",
    0, 0, 0,	&WOPT_Enable_Aggressive_Code_Motion, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "aggcm_limit",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Aggressive_CM_Limit, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "aggcm_threshold",	"aggcm_thres",
    0, 0, 101,	&WOPT_Enable_Aggressive_CM_Threshold, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "agglftr",		"agglftr",
    0, 0, 0,	&WOPT_Enable_Aggressive_Lftr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "aggphi_simp",		"aggphi",
    0, 0, 0,	&WOPT_Enable_Aggressive_Phi_Simp, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "aggdo",		"aggdo",
    0, 0, 0,	&WOPT_Enable_Aggressive_Doloop_Promotion, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "agg_ivr",	"agg_ivr",
    0, 0, 0,	&WOPT_Enable_Aggressive_IVR, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "aggstr_reduction",	"aggstr",
    0, 0, 0,	&WOPT_Enable_Aggstr_Reduction, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "alias_classification", "alias_class",
    0, 0, 0,    &WOPT_Enable_Alias_Classification, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "ac_fortran", "",
    0, 0, 0,    &WOPT_Enable_Alias_Class_Fortran_Rule, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "avoid_rehash",		"",
    0, 0, 0,	&WOPT_Enable_Avoid_Rehash, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "bdce",		"",
    0, 0, 0,	&WOPT_Enable_Bitwise_DCE, NULL },
  { OVK_BOOL, OV_INTERNAL,    TRUE, "cse_fcmp",    "",
    0, 0, 0,  &WOPT_Enable_CSE_FP_comparison, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "canon_uplevel",	"canon",
    0, 0, 0,	&WOPT_Enable_Canon_Uplevel, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "call_flag",		"call_flag",
    0, 0, 0,	&WOPT_Enable_Call_Flag, NULL },
  { OVK_BOOL,	OV_INTERNAL,	FALSE, "calls_break_bb",		"",
    0, 0, 0,	&WOPT_Enable_Calls_Break_BB, &WOPT_Enable_Calls_Break_BB_Set },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "canon_expr",		"canon_expr",
    0, 0, 0,	&WOPT_Enable_Canon_Expr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "cg_alias",		"cg_alias",
    0, 0, 0,	&WOPT_Enable_CG_Alias, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "class2", "class2",
    0, 0, 0,    &WOPT_Enable_Second_Alias_Class, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "combine_operations",	"combine",
    0, 0, 0,	&WOPT_Enable_Combine_Operations, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "compare_simp",		"compare",
    0, 0, 0,	&WOPT_Enable_Compare_Simp, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "const_pre",		"const_pre",
    0, 0, 0,	&WOPT_Enable_Const_PRE, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "const_pre_limit",	"const_pre_limit",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Const_PRE_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "divrem",		"divrem",
    0, 0, 0,	&WOPT_Enable_DIVREM, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "copy_propagate",	"copy",
    0, 0, 0,	&WOPT_Enable_Copy_Propagate, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "copy_ops",		"copy_ops",
    0, 0, 0,	&WOPT_Enable_Copy_Prop_Bad_Ops, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "copy_lno_ops",		"copy_lno",
    0, 0, 0,	&WOPT_Enable_Copy_Prop_LNO_Ops, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "copy_into_array",	"",
    0, 0, 0,	&WOPT_Enable_Copy_Prop_Ops_Into_Array,
                &WOPT_Enable_Copy_Prop_Ops_Into_Array_Set },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lno_copy_propagation",	"lno_copy",
    0, 0, 0,	&WOPT_Enable_LNO_Copy_Propagate, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "cr_simp",		"cr",
    0, 0, 0,	&WOPT_Enable_CRSIMP, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "fastsimp",		"",
    0, 0, 0,	&WOPT_Enable_Fast_Simp, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "fold2const",		"fold",
    0, 0, 0,	&WOPT_Enable_Fold2const, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "fold_lda_iload_istore",	"fold_lda_iload",
    0, 0, 0,	&WOPT_Enable_Fold_Lda_Iload_Istore, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dead_code_elim",	"dead",
    0, 0, 0,	&WOPT_Enable_DCE, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dce_aggressive",	"dce",
    0, 0, 0,	&WOPT_Enable_Aggressive_dce, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dce_alias",		"",
    0, 0, 0,	&WOPT_Enable_DCE_Alias, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dce_branch",		"",
    0, 0, 0,	&WOPT_Enable_DCE_Branch, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "dce_branch_pred_limit",	"",
    5, 0, INT32_MAX,	&WOPT_Enable_DCE_Branch_Pred_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dce_global",		"",
    0, 0, 0,	&WOPT_Enable_DCE_Global, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dce_label",		"",
    0, 0, 0,	&WOPT_Enable_DCE_Label, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "du_full",		"",
    0, 0, 0,	&WOPT_Enable_DU_Full, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "du_union",		"",
    0, 0, 0,	&WOPT_Enable_DU_Union, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dead_cr",		"",
    0, 0, 0,	&WOPT_Enable_Dead_CR_Fix, NULL },
  { OVK_BOOL,   OV_INTERNAL,    TRUE, "debug_class",            "",
    0, 0, 0,    &WOPT_Enable_Debug_Inconsistent_Ip_Class, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "epre",			"epre",
    0, 0, 0,	&WOPT_Enable_Exp_PRE, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "epre_limit",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Exp_PRE_Limit, NULL },
  { OVK_BOOL,   OV_INTERNAL,    TRUE, "estr_fb_injury",       "",
    0, 0, 0,    &WOPT_Enable_Estr_FB_Injury, &WOPT_Enable_Estr_FB_Injury_Set },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "goto_conversion",	"goto",
    0, 0, 0,	&WOPT_Enable_Goto, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "hoisting",		"hoist",
    0, 0, 0,	&WOPT_Enable_Hoisting, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "hoist_ivar",		"hoist_ivar",
    0, 0, 0,	&WOPT_Enable_Ivar_Hoisting, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "i8_iv",		"i8_iv",
    0, 0, 0,	&WOPT_Enable_I8_Primary_IV, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "addr",			"addr",
    0, 0, 0,	&WOPT_Enable_Improved_Addr_Taken, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "icopy_propagate",	"icopy",
    0, 0, 0,	&WOPT_Enable_Input_Prop, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "itself_prop",		"itself",
    0, 0, 0,	&WOPT_Enable_Itself_Prop, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ipaa",			"ipaa",
    0, 0, 0,	&WOPT_Enable_IPAA, NULL },
  { OVK_NAME,	OV_INTERNAL,	TRUE, "ipaa_file",		"ipaa_f",
    0, 0, 0,	&Ipa_File_Name, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "iv_elimination",	"iv_elim",
    0, 0, 0,	&WOPT_Enable_IVE, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ive_old",		"ive_old",
    0, 0, 0,	&WOPT_Enable_IVE_Old, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "iv_recognition",	"iv_recog",
    0, 0, 0,	&WOPT_Enable_IVR, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "ivr_expand_limit",	"",
    1000, 0, INT32_MAX,	&WOPT_Enable_IVR_Expand_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "iv_outer_parallel",	"",
    0, 0, 0,	&WOPT_Enable_IVR_Outermost_Loop_Parallel_Region, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ivar_common", 		"ivar",
    0, 0, 0,	&WOPT_Enable_Ivar_Common, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ivar_pre",		"ivar_pre",
    0, 0, 0,	&WOPT_Enable_Ivar_PRE, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ivincr_cand",		"ivincr",
    0, 0, 0,	&WOPT_Enable_Ivincr_Cand, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "ldx_ratio_regins",	"ldx_ratio",
    0, 0, 4096,	&WOPT_Ldx_Ratio_RegIns, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ldx",			"ldx",
    0, 0, 0,	&WOPT_Enable_Ldx, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lego_opt",		"lego",
    0, 0, 0,	&WOPT_Enable_Lego_Opt, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lftr",			"lftr",
    0, 0, 0,	&WOPT_Enable_LFTR, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lftr_ivar",		"lftr_ivar",
    0, 0, 0,	&WOPT_Enable_LFTR_Ivar, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lftr2",		"lftr2",
    0, 0, 0,	&WOPT_Enable_LFTR2, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "lftr2_limit",		"lftr2_limit",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_LFTR2_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lpre",			"lpre",
    0, 0, 0,	&WOPT_Enable_Load_PRE, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "lpre_limit",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Load_PRE_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "loop_invarexp",	"loop_invar",
    0, 0, 0,	&WOPT_Enable_Loopinvarexp_Str_Reduction, NULL },
  { OVK_BOOL,	OV_INTERNAL,	FALSE, "lower_short_circuit",		"",
    0, 0, 0,	&WOPT_Enable_Lower_Short_Circuit, &WOPT_Enable_Lower_Short_Circuit_Set },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "minmax",		"minmax",
    0, 0, 0,	&WOPT_Enable_MINMAX, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "min_type",		"min_type",
    0, 0, 0,	&WOPT_Enable_Min_Type, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "intrinsic",		"intrinsic",
    0, 0, 0,	&WOPT_Enable_Move_Intrinsicop, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "mp_varref",		"mp_varref",
    0, 0, 0,	&WOPT_Enable_MP_varref, NULL },
#ifdef CHANGE_MIND_AGAIN
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "mp_const_prop",	"mp_const_prop",
    0, 0, 0,	&WOPT_Enable_MP_Const_Prop, NULL },
#endif
  { OVK_BOOL,   OV_INTERNAL,    TRUE, "spec_nix_lftr",  "",
    0, 0, 0,    &WOPT_Enable_Speculation_Defeats_LFTR, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ssapre",		"ssapre",
    0, 0, 0,	&WOPT_Enable_SSA_PRE, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "new_sr",		"",
    0, 0, 0,	&WOPT_Enable_New_SR, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "new_sr_limit",		"new_sr_limit",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_New_SR_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "ocopy",		"ocopy",
    0, 0, 0,	&WOPT_Enable_Output_Copy, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "ocopy_lookup_stmtcnt",	"ocopy_lookup",
    0, 0, 4096,	&WOPT_Enable_Ocopy_Lookupstmt, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "parm",			"parm",
    0, 0, 0,	&WOPT_Enable_Parm, NULL },
  { OVK_NAME,	OV_INTERNAL,	TRUE, "process",		"process", 
    0, 0, 0,	&WOPT_Enable_Process, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "phi_simp",		"phi",
    0, 0, 0,	&WOPT_Enable_Phi_Simp, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "prop_ivar",		"",
    0, 0, 0,	&WOPT_Enable_Prop_Ivar, NULL },
  { OVK_BOOL,	OV_INTERNAL,	FALSE, "prop_cse",		"",
    0, 0, 0,	&WOPT_Enable_Prop_CSE, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "prop_limit",		"",
    14, 0, INT32_MAX,	&WOPT_Enable_Prop_Limit, NULL }, /* PV 468862 */
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "prune",		"",
    0, 0, 0,	&WOPT_Enable_Prune, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "replace_second_iv",	"",
    0, 0, 0,	&WOPT_Enable_Replace_Second_IV, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "replace_while_loop_second_iv",	"",
    0, 0, 0,	&WOPT_Enable_Replace_While_Loop_Second_IV, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "restricted_map",	"",
    0, 0, 0,	&WOPT_Enable_Restricted_Map, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "rsv_bits",		"rsv",
    0, 0, 4096,	&WOPT_Enable_Rsv_Bits, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rvi_enable",		"rvi",
    0, 0, 0,	&WOPT_Enable_RVI, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rvi1",			"",
    0, 0, 0,	&WOPT_Enable_RVI1, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rvi2",			"",
    0, 0, 0,	&WOPT_Enable_RVI2, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rviistore",		"",
    0, 0, 0,	&WOPT_Enable_Rviistore, NULL },
  { OVK_NAME,	OV_INTERNAL,	TRUE, "rviskip",		"", 
    0, 0, 0,	&WOPT_Enable_Rviskip, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rvisplit",		"",
    0, 0, 0,	&WOPT_Enable_Rvisplit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "rvivsym",		"",
    0, 0, 0,	&WOPT_Enable_Rvivsym, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "second_order",		"second",
    0, 0, 0,	&WOPT_Enable_Second_Order, NULL },
  { OVK_NAME,	OV_INTERNAL,	TRUE, "skip",			"skip", 
    0, 0, 0,	&WOPT_Enable_Skip, NULL },
  { OVK_LIST,	OV_INTERNAL,	TRUE, "skip_after",		"skip_a", 
    0, 0, 0,	&WOPT_Skip,	NULL },
  { OVK_LIST,	OV_INTERNAL,	TRUE, "skip_before",		"skip_b", 
    0, 0, 0,	&WOPT_Skip,	NULL },
  { OVK_LIST,	OV_INTERNAL,	TRUE, "skip_equal",		"skip_e", 
    0, 0, 0,	&WOPT_Skip,	 NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "ssa_minimization",	"ssa_min",
    0, 0, 0,    &WOPT_Enable_SSA_Minimization, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "spre",			"spre",
    0, 0, 0,	&WOPT_Enable_Store_PRE, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "spre_limit",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Store_PRE_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "strength_reduction",	"str",
    0, 0, 0,	&WOPT_Enable_Strength_Reduction, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "slt",			"slt",
    0, 0, 0,	&WOPT_Enable_SLT, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "small_br_target",	"small_br",
    0, 0, 0,	&WOPT_Enable_Small_Br_Target, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "trip_count",		"trip",
    2, 0, 2,	&WOPT_Enable_Generate_Trip_Count, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "update_vsym",		"update_vsym",
    0, 0, 0,	&WOPT_Enable_Update_Vsym, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "unique_pt_vsym",	"",
    0, 0, 0,	&WOPT_Enable_Unique_Pt_Vsym, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "value_numbering",	"val",
    1, 0, 4, &WOPT_Enable_Value_Numbering, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "verbose",		"v",
    0, 0, 0,	&WOPT_Enable_Verbose, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "verify",		"verify",
    1, 0, 4,	&WOPT_Enable_Verify, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "while_loop",		"while",
    0, 0, 0,	&WOPT_Enable_While_Loop, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "worklist_prune",	"worklist_prune",
    0, 0, 0,    &WOPT_Enable_Worklist_Pruning, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "zero_version",		"zero",
    0, 0, 0,	&WOPT_Enable_Zero_Version, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "call_zero_version",	"call_zero",
    0, 0, 0,	&WOPT_Enable_Call_Zero_Version, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "vsym_unique",		"vsym",
    0, 0, 0,	&WOPT_Enable_Vsym_Unique, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "dse_aggressive",	"dse",
    0, 0, 0,	&WOPT_Enable_Dse_Aggressive, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "prop_aggressive",	"prop",
    0, 0, 0,	&WOPT_Enable_Prop_Aggressive, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "iload_prop",		"iload",
    0, 0, 0,	&WOPT_Enable_Iload_Prop, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "vn_full",		"vn",
    0, 0, 0,	&WOPT_Enable_VN_Full, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "simp_iload",		"",
    0, 0, 0,	&WOPT_Enable_Simp_Iload, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "if_conv",		"",
    0, 0, 0,	&WOPT_Enable_Simple_If_Conv, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "tail_recursion",	"tail",
    0, 0, 0,	&WOPT_Enable_Tail_Recur, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "edge_placement",	"edge",
    0, 0, 0,	&WOPT_Enable_Edge_Placement, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "backedge_placement",	"backedge_p",
    0, 0, 0,	&WOPT_Enable_Backedge_Placement, NULL },
  { OVK_BOOL,   OV_INTERNAL,	TRUE, "src_order",		"",
    0, 0, 0,	&WOPT_Enable_Source_Order, NULL },
  { OVK_NAME,	OV_INTERNAL,	TRUE, "set_unique_pt",	"",
    0, 0, 0,	&WOPT_Set_Unique_Pt, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "fold_cvt",		"",
    0, 0, 0,	&WOPT_Enable_Cvt_Folding, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "local_rvi",		"",
    0, 0, 0,	&WOPT_Enable_Local_Rvi, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "strong_barrier",		"",
    0, 0, 0,	&WOPT_Enable_Strong_Barrier, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "aggr_invariant",		"",
    0, 0, 0,	&WOPT_Enable_Aggr_Invariant, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "lrvi_limit",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Local_Rvi_Limit, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "shrink",		"",
    0, 0, 0,	&WOPT_Enable_Shrink, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "extra_rename",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_Extra_Rename_Pass, &WOPT_Enable_Extra_Rename_Pass_Set },
  { OVK_UINT32,	OV_INTERNAL,	TRUE, "extra_preopt",		"extra_p",
    0, 0, UINT32_MAX,	&WOPT_Enable_Extra_Preopt_Pass, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "bool_simp",		"",
    0, 0, 0,	&WOPT_Enable_Bool_Simp, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "fb_lpre",              "",
    0, 0, 0,    &WOPT_Enable_Feedback_LPRE, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "fb_epre",              "",
    0, 0, 0,    &WOPT_Enable_Feedback_EPRE, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo_display",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Display, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "merge_multi_zone",		"",
    0, 0, 0,	&WOPT_Enable_CFG_Merge_Multi_Zone, &WOPT_Enable_CFG_Merge_Multi_Zone_Set },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo_main",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Opt, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo1",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Opt1, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo2",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Opt2, NULL },
  { OVK_INT32,	OV_INTERNAL,	TRUE, "min_cfo2_coverage",		"",
    INT32_MAX, 0, INT32_MAX,	&WOPT_Enable_CFG_Opt2_Limit, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo3",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Opt3, NULL },
  { OVK_BOOL,   OV_INTERNAL,    FALSE, "cfo4",              "",
    0, 0, 0,    &WOPT_Enable_CFG_Opt4, NULL },
  { OVK_INT32,  OV_INTERNAL,    FALSE, "cfo_limit",              "",
    INT32_MAX, 0, INT32_MAX,    &WOPT_Enable_CFG_Opt_Limit, NULL },
  { OVK_INT32,  OV_INTERNAL,    TRUE,  "vn_ivc",	"",
    1, 0, 8,    &WOPT_Enable_Vn_Ivc, NULL },
  { OVK_UINT32,	OV_INTERNAL,	TRUE, "vnfre_after",		"vnfre_a",
    0, 0, UINT32_MAX,	&WOPT_Enable_Vnfre_After, NULL },
  { OVK_UINT32,	OV_INTERNAL,	TRUE, "vnfre_before",		"vnfre_b",
    UINT32_MAX, 0, UINT32_MAX,	&WOPT_Enable_Vnfre_Before, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "bit_field",	"",
    0, 0, 0,	&WOPT_Enable_Bits_Load_Store, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "epre4ivr",	"epre4ivr",
    0, 0, 0,	&WOPT_Enable_Epre_Before_Ivr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "lpre4ivr",	"lpre4ivr",
    0, 0, 0,	&WOPT_Enable_Lpre_Before_Ivr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "spre4ivr",	"spre4ivr",
    0, 0, 0,	&WOPT_Enable_Spre_Before_Ivr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "bdce4ivr",	"bdce4ivr",
    0, 0, 0,	&WOPT_Enable_Bdce_Before_Ivr, NULL },
  { OVK_BOOL,	OV_INTERNAL,	TRUE, "new_phase_order", "new_phase_order",
    TRUE, 0, 0,	&WOPT_Enable_New_Phase_Ordering, NULL },
  { OVK_COUNT }		/* List terminator -- must be last */
};
