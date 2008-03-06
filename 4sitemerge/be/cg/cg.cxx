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
 * Module: cg.cxx
 * $Revision: 1.51 $
 * $Date: 05/12/05 08:59:03-08:00 $
 * $Author: bos@eng-24.pathscale.com $
 * $Source: /scratch/mee/2.4-65/kpro64-pending/be/cg/SCCS/s.cg.cxx $
 *
 * Description:
 *
 * This	file contains the main driver and initialization,termination
 * routines for	the code generator.
 *
 * ====================================================================
 * ====================================================================
 */

#include "defs.h"
#include "wn.h"
#include "cg.h"
#include "cg_internal.h"
#include "cg_flags.h"
#include "config.h"
#include "config_list.h"
#include "tracing.h"
#include "timing.h"
#include "strtab.h"
#include "cgir.h"
#include "erglob.h"
#include "ercg.h"
#include "data_layout.h"
#include "whirl2ops.h"
#include "calls.h"
#include "bitset.h"
#include "tn_set.h"
#include "gtn_universe.h"
#include "bb_set.h"
#include "register.h"
#include "gra.h"
#include "freq.h"
#include "fb_whirl.h"
#include "lra.h"
#include "cgemit.h"
#include "cg_loop.h"
#include "glob.h"
#include "cgexp.h"
#include "igls.h"
#include "tn_map.h"
#include "cg_region.h"
#include "wn_util.h"
#include "cg_spill.h"
#include "localize.h"
#include "gra_live.h"
#include "opt_alias_interface.h"
#include "ir_reader.h"
#include "cflow.h"
#include "dwarf_DST_mem.h"
#include "region_util.h"
#include "eh_region.h"
#include "reg_live.h"
#include "findloops.h"
#include "cgdriver.h"
#include "label_util.h"
#include "cgtarget.h"
#include "ebo.h"
#include "hb.h"
#include "pqs_cg.h"
#include "tag.h"
#ifdef KEY
#include "cg_gcov.h"
#endif
#if defined(TARG_IA64) || defined(TARG_SL)
#include "region.h"
#include "region_update.h"
#include "scheduler.h"
#endif
#if defined(TARG_SL)
#include "disp_instr.h"
#endif

MEM_POOL MEM_local_region_pool;	/* allocations local to processing a region */
MEM_POOL MEM_local_region_nz_pool;

BOOL Trace_REGION_Interface = FALSE;

BOOL PU_Has_Calls;
BOOL PU_References_GP;
#ifdef KEY
BOOL PU_Has_Exc_Handler;
#endif

#ifdef TARG_X8664
BOOL PU_References_GOT;  // for -m32 -fpic
#endif

BOOL CG_PU_Has_Feedback;

RID *Current_Rid;

TN_MAP TN_To_PREG_Map;
#ifdef TARG_X8664
BB_MAP BBs_Map = NULL;
#endif

#ifdef TARG_X8664
extern BOOL cg_load_execute_overridden;
#endif

/* WOPT alias manager */
struct ALIAS_MANAGER *Alias_Manager;

static BOOL Orig_Enable_SWP;
#if defined(TARG_IA64) || defined(TARG_SL)
BOOL RGN_Formed;
#endif

/* Stuff that needs to be done at the start of each PU in cg. */
void
CG_PU_Initialize (WN *wn_pu)
{
  static INT pu_num;

  MEM_POOL_Push ( &MEM_phase_pool );
  MEM_POOL_Push ( &MEM_local_pool );
  MEM_POOL_Push ( &MEM_phase_nz_pool );
  MEM_POOL_Push ( &MEM_local_nz_pool );

  PU_Has_Calls = FALSE;
  PU_References_GP = FALSE;
#ifdef TARG_X8664
  PU_Has_Exc_Handler = FALSE;
  if (! cg_load_execute_overridden &&
      ! Is_Target_32bit() &&
      (PU_src_lang(Get_Current_PU()) == PU_F77_LANG ||
       PU_src_lang(Get_Current_PU()) == PU_F90_LANG))
    CG_load_execute = 2;
  else if (! cg_load_execute_overridden ) 
    CG_load_execute = 1;

  PU_References_GOT = FALSE;

  if (CG_localize_x87_tns && Is_Target_SSE2()) {
    fprintf(stderr,
	    "Ignoring CG_localize_x87_tns since it has no effect under SSE2\n");
    CG_localize_x87_tns = FALSE;
  }
  if (CG_x87_store && Is_Target_SSE2()) {
    fprintf(stderr,
	    "Ignoring CG_x87_store since it has no effect under SSE2\n");
    CG_x87_store = FALSE;
  }
#endif

  Regcopies_Translated = FALSE;

  /* HD - Check whether the PU should be skipped for optimization
   *      We need to consider the intersection parts
   */
  bool skip = false;

  if( CG_skip_before > 0 ) {
    if( CG_skip_after < INT32_MAX ) {
      if( pu_num > CG_skip_after && pu_num < CG_skip_before )
        skip = true;
    } else if ( pu_num < CG_skip_before ){
      skip = true;
    }
  } else {
    if( CG_skip_after >= 0 ) 
      if( pu_num > CG_skip_after )
        skip = true;
  }

  if( CG_skip_equal >= 0 ) {
    if( pu_num == CG_skip_equal )
      skip = true;
  }

  CG_Configure_Opt_Level( skip ? 0 : Opt_Level);
  pu_num++;

  if (PU_has_syscall_linkage(Get_Current_PU())) {
	// turn off swp so stacked registers are preserved
	Orig_Enable_SWP = Enable_SWP;
	Enable_SWP = FALSE;
  }

  Reuse_Temp_TNs = (CG_opt_level == 0);
  if (Get_Trace (TP_CGEXP, 1024)) Reuse_Temp_TNs = FALSE;

  CGTARG_Initialize();
  BB_PU_Initialize ();
  Init_TNs_For_PU ();
  LOOP_DESCR_Init_For_PU();
  TN_MAP_Init();
  BB_MAP_Init();
#if defined(TARG_IA64) || defined(TARG_SL)
  REGION_MAP_Init ();  
#endif
  OP_MAP_Init();
  CGSPILL_Initialize_For_PU ();
  CFLOW_Initialize();
  CG_LOOP_Init();
  HB_Init();
  if (Enable_CG_Peephole) EBO_Init();
  Init_Label_Info();

#ifdef EMULATE_LONGLONG
  extern void Init_TN_Pair();
  Init_TN_Pair ();
#endif

  /* initialize register package for current pu */
  REGISTER_Pu_Begin();

  Init_Entry_Exit_Code (wn_pu);
  REGISTER_Reset_FP();	// in case $fp is used, must be after entry_exit init

  /* Initialize global tn universe */
  GTN_UNIVERSE_Pu_Begin();

  Trace_REGION_Interface = Get_Trace( TP_REGION, TT_REGION_CG_DEBUG ) ||
    Get_Trace(TP_REGION, TT_REGION_BOUND_DEBUG );

  Init_gen_quad_preg(); // init statics to hold quad preg STs

  /* data layout and lowering now happens earlier, in bedriver. */
  /* don't finalize stack frame until just before emit, after all spills. */

  if (Get_Trace (TKIND_ALLOC, TP_CG)) {
    // start tracing at beginning of cg.
    MEM_Tracing_Enable();
  }

}

void
CG_PU_Finalize(void)
{
  TAG_Finish();
  GTN_UNIVERSE_Pu_End ();
  OP_MAP_Finish();
  CGSPILL_Finalize_For_PU();
  if (Enable_CG_Peephole) EBO_Finalize();

  if (PU_has_syscall_linkage(Get_Current_PU())) {
	Enable_SWP = Orig_Enable_SWP;
  }

  /* TN_To_PREG_Map is allocated from MEM_pu_pool and so can't be popped
     but it can be put on the free list and cleared at the end of the PU */
  TN_MAP_Delete(TN_To_PREG_Map);
  TN_To_PREG_Map = NULL;

#ifdef TARG_X8664
  BB_MAP_Delete( BBs_Map );
  BBs_Map = NULL;

  Expand_Finish();
#endif

  Free_BB_Memory();		    /* Free non-BB_Alloc space. */
  MEM_POOL_Pop ( &MEM_local_pool );
  MEM_POOL_Pop ( &MEM_local_nz_pool );
  MEM_POOL_Pop ( &MEM_phase_pool );
  MEM_POOL_Pop ( &MEM_phase_nz_pool );
}

/* Stuff that needs to be done at the start of each REGION in cg. */
static void
CG_Region_Initialize (WN *rwn, struct ALIAS_MANAGER *alias_mgr)
{
  MEM_POOL_Push (&MEM_local_region_pool);
  MEM_POOL_Push (&MEM_local_region_nz_pool);
  Init_CG_Expand ();
  FREQ_Region_Initialize ();
  BB_REGION_Initialize ();
  LRA_Init();
  GRA_Initialize();
  Init_TNs_For_REGION ();
  /*
   * Create Array to map PREGs into TNs
   * Must be done after Init_Entry_Exit_Code, since
   * Init_Entry_Exit_Code creates special PREGs to represent
   * save locations in WHIRL
   */
  PREG_NUM last_preg_num;
  last_preg_num = Get_Preg_Num (PREG_Table_Size(CURRENT_SYMTAB))+1;
  PREG_To_TN_Array = (TN **) Pu_Alloc (sizeof (TN *) * last_preg_num);
  PREG_To_TN_Mtype = (TYPE_ID *) Pu_Alloc (sizeof (TYPE_ID) * last_preg_num);

  PREG_To_TN_Clear();	/* this enforces different preg maps between regions */
  if (TN_To_PREG_Map == NULL)
    TN_To_PREG_Map = TN_MAP_Create();

#ifdef TARG_X8664
  if( BBs_Map == NULL ){
    BBs_Map = BB_MAP_Create();
  }
#endif

  TN_CORRESPOND_Free(); /* remove correspondence between tns (ex. divrem) */

  GTN_UNIVERSE_REGION_Begin();

  Whirl2ops_Initialize(alias_mgr);

  Current_Rid = REGION_get_rid( rwn );

#ifdef TARG_X8664
  Expand_Start();
#endif

#if defined(TARG_IA64) || defined(TARG_SL)
  RGN_Formed = FALSE;
#endif
}

/*
 * Stuff that needs to be done at the end of each REGION in cg.
 * This includes making glue code to map TNs in CG'd code
 * from/to PREGs in WHIRL
 */
static void
CG_Region_Finalize (WN *result_before, WN *result_after,
		    WN *rwn, struct ALIAS_MANAGER *am, BOOL generate_glue_code)
{
  RID *rid;
  CGRIN *cgrin;
  WN *entry_fixup, *exit_fixup;
  INT32 i, num_exits;

  Is_True(REGION_consistency_check(rwn),("CG_Region_Finalize"));
  rid = REGION_get_rid( rwn );
  cgrin = RID_cginfo( rid );
  FmtAssert(rid != NULL && cgrin != NULL,
	    ("CG_Region_Finalize, inconsistent region"));

  REGION_set_level(rid, RL_CGSCHED);

  if (generate_glue_code) {
    /* region entry glue code */
    entry_fixup = CGRIN_entry_glue( cgrin );
    REGION_Entry_PREG_Whirl( rid, entry_fixup, CGRIN_tns_in( cgrin ), am );
    if ( Trace_REGION_Interface ) {
      fprintf( TFile, "<region> Entry glue code for RGN %d\n", RID_id(rid) );
      fdump_tree( TFile, entry_fixup );
    }
    WN_INSERT_BlockFirst( result_before, entry_fixup );

    num_exits = RID_num_exits( rid );
    for (i=0; i<num_exits; i++) {
      exit_fixup = CGRIN_exit_glue_i( cgrin, i );
      REGION_Exit_PREG_Whirl( rid, i, exit_fixup,
			     CGRIN_tns_out_i( cgrin, i ), am );
      if ( Trace_REGION_Interface ) {
	fprintf( TFile, "<region> Exit glue code for exit %d RGN %d\n",
		i, RID_id(rid) );
	fdump_tree( TFile, exit_fixup );
      }
      WN_INSERT_BlockLast( result_after, exit_fixup );
    }
  }

  Whirl2ops_Finalize();

  MEM_POOL_Pop (&MEM_local_region_pool);
  MEM_POOL_Pop (&MEM_local_region_nz_pool);
}


static int trace_count = 0;
static void Check_for_Dump_ALL(INT32 pass, BB *bb, char *s )
{
  trace_count++;
  char count_buf[20];
  int count = sprintf(count_buf, "%d: ", trace_count);
  char phase_buf[20+30]= "Tracing"; // Tracing%d
  strcat(phase_buf, count_buf);
  strcat(phase_buf, s);
  Set_Error_Phase(phase_buf);
  Check_for_Dump(pass, bb);
}

#if defined(TARG_SL2)
// check minor region is used to check if there is a call in minor region 
// if a call exist, give an assertion

void 
Check_Minor_Region() 
{
  for(BB* bb = REGION_First_BB; bb; bb = BB_next(bb))
  {
    if(BB_rid(bb) && RID_TYPE_minor(BB_rid(bb)) && BB_call(bb))
	Fail_FmtAssertion("An function call BB:%d in minor region", BB_id(bb)); 
  }
  return; 
}
#endif


#if defined(TARG_SL2)
void 
Collect_Simd_Register_Usage()
{
  if(!Get_Trace(TP_TEMP, 0x1))
    return; 

  vector < mTN_NUM > regs_read;
  vector < mTN_NUM > regs_write; 
  vector < mTN_NUM >::iterator iter; 
  vector < ST* > callee_in_pu;  
  vector < ST* >::iterator st_iter; 
  BB *bb; 
  OP *op; 
  for(bb = REGION_First_BB; bb; bb = BB_next(bb))
  {
// collect function call for this PU

    if(BB_call(bb)) 
    {
      ANNOTATION *callant = ANNOT_Get(BB_annotations(bb), ANNOT_CALLINFO);
      CALLINFO *callinfo = ANNOT_callinfo(callant);
      ST *st = CALLINFO_call_st(callinfo);
      callee_in_pu.push_back(st); 
    }
    FOR_ALL_BB_OPs(bb, op)
    {
      for(INT i = 0; i < OP_results(op); i++) {
        TN* tn = OP_result(op, i); 
        if(TN_is_register(tn) && (TN_register_class(tn) == ISA_REGISTER_CLASS_cop_vreg))
          regs_write.push_back((TN_register(tn) - 1)); 
      }
      for(INT i = 0; i < OP_opnds(op); i++) {
        TN* tn = OP_opnd(op, i); 
        if(TN_is_register(tn) && (TN_register_class(tn) == ISA_REGISTER_CLASS_cop_vreg))
          regs_read.push_back((TN_register(tn) - 1)); 
      }
    }
  }

  fprintf(TFile, "%sFunction %s : \n", DBar, ST_name(Get_Current_PU_ST())); 

  if(!regs_read.empty()) {
    sort(regs_read.begin(), regs_read.end()); 
    regs_read.erase(unique(regs_read.begin(), regs_read.end()), regs_read.end()); 
    fprintf(TFile, "read_simd_reg: "); 
    for(iter = regs_read.begin(); iter != regs_read.end(); iter++)
      fprintf(TFile, "%d  ", *iter); 
    fprintf(TFile, "\n"); 
  }

  if(!regs_write.empty()) {
    sort(regs_write.begin(), regs_write.end()); 
    regs_write.erase(unique(regs_write.begin(), regs_write.end()), regs_write.end()); 
    fprintf(TFile, "write_simd_reg: "); 
    for(iter = regs_write.begin(); iter != regs_write.end(); iter++) {
      fprintf(TFile, "%d  ", *iter); 
   }
    fprintf(TFile, "\n"); 
  }

  fprintf(TFile, "callee:\n"); 
  
  for(st_iter = callee_in_pu.begin(); st_iter != callee_in_pu.end(); st_iter++)
  {
       fprintf(TFile,  "                %s\n", ST_name(*st_iter)); 
  }
  return; 
}
#endif 

/* Can be called two ways:
   1) on a region (pu_dst is NULL, returns code)
   2) on a PU (pu_dst is no NULL, returns NULL)
*/
WN *
CG_Generate_Code( 
    WN *rwn, 
    struct ALIAS_MANAGER *alias_mgr, 
    DST_IDX pu_dst, 
    BOOL region )
{
/*later:  BOOL region = DST_IS_NULL(pu_dst); */
  BOOL orig_reuse_temp_tns = Reuse_Temp_TNs;

  Alias_Manager = alias_mgr;

  Set_Error_Phase( "Code Generation" );
  Start_Timer( T_CodeGen_CU );

#ifdef TARG_X8664
// Cannot enable emit_unwind_info if Force_Frame_Pointer is not set
// Need this flag set for C++ exceptions and for -g
  if (!CG_emit_unwind_info_Set)
  	CG_emit_unwind_info = Force_Frame_Pointer;

  // Don't eliminate prologue OPs in main because they guide cgemit.cxx on
  // where to insert OPs to set up the control registers.  Bug 8141.
  {
    static BOOL min_stack_size = CG_min_stack_size;
    CG_min_stack_size = min_stack_size;
    if (!strcmp(Cur_PU_Name, "MAIN__") ||
	!strcmp(Cur_PU_Name, "main"))
      CG_min_stack_size = FALSE;
  }
#endif

  // Use of feedback information can be disabled in CG using the 
  // -CG:enable_feedback=off flag. The flag CG_PU_Has_Feedback is used
  // all over CG instead of Cur_PU_Feedback for this reason.
  CG_PU_Has_Feedback = ((Cur_PU_Feedback != NULL) && CG_enable_feedback);
  BOOL frequency_verify = Get_Trace( TP_FEEDBACK, TP_CG_FEEDBACK );

  CG_Region_Initialize ( rwn, alias_mgr );

  Set_Error_Phase ( "Code_Expansion" );
  Start_Timer ( T_Expand_CU );

  // If this PU is simply a wrapper for assembly code to be placed
  // into the .s file, take care of that job and move on.
  if (WN_operator(rwn) == OPR_FUNC_ENTRY &&
      ST_asm_function_st(*WN_st(rwn))) {
    FmtAssert(Assembly && !Object_Code,
	      ("Cannot produce non-assembly output with file-scope asm"));
    fprintf(Asm_File, "\n%s\n", ST_name(WN_st(rwn)));
    return rwn;
  }

#if defined (TARG_SL)
  if(CG_stack_layout)
    Pre_Allocate_Objects( rwn );
#endif

  Convert_WHIRL_To_OPs ( rwn );

#if defined(TARG_SL2)
   Check_Minor_Region(); 
#endif
  
#ifdef TARG_X8664
  if (CG_x87_store) {
    extern void Add_Float_Stores();
    Add_Float_Stores();
  }
#endif
#if defined(TARG_SL)
 Check_for_Dump ( TP_CGEXP, NULL );
#endif
#if defined(KEY) && !defined(TARG_SL)
  extern BOOL profile_arcs;
  if (flag_test_coverage || profile_arcs)
//    CG_Compute_Checksum();
//  if (flag_test_coverage)
    CG_Gcov_Generation();
  if (profile_arcs)
    CG_Instrument_Arcs();
#endif // KEY && !SL

  // split large bb's to minimize compile speed and register pressure
  Split_BBs();
  
  if ( ! CG_localize_tns ) {
    // Localize dedicated tns involved in calls that cross bb's,
    // and replace dedicated TNs involved in REGION interface with the
    // corresponding allocated TNs from previously compiled REGIONs.
    Localize_or_Replace_Dedicated_TNs();
  }

  // If using feedback, incorporate into the CFG as early as possible.
  // This phase also fills in any missing feedback using heuristics.
  if (CG_PU_Has_Feedback) {
    Set_Error_Phase ("FREQ");
    Start_Timer (T_Freq_CU);
    FREQ_Incorporate_Feedback( rwn );
    Stop_Timer (T_Freq_CU);
    Set_Error_Phase ( "Code_Expansion" );
    if (frequency_verify)
      FREQ_Verify("Feedback Incorporation");
  }

  EH_Prune_Range_List();
  
  Optimize_Tail_Calls( Get_Current_PU_ST() );

  Init_Callee_Saved_Regs_for_REGION( Get_Current_PU_ST(), region );
  Generate_Entry_Exit_Code ( Get_Current_PU_ST(), region );
  Stop_Timer ( T_Expand_CU );
  Check_for_Dump ( TP_CGEXP, NULL );

  if (CG_localize_tns
#ifdef TARG_X8664
      || CG_localize_x87_tns
#endif
     ) {
    /* turn all global TNs into local TNs */
    Set_Error_Phase ( "Localize" );
    Start_Timer ( T_Localize_CU );
#ifdef KEY // gra_live is called even if localize is on
    GRA_LIVE_Init(region ? REGION_get_rid( rwn ) : NULL);
#endif
    Localize_Any_Global_TNs(region ? REGION_get_rid( rwn ) : NULL);
    Stop_Timer ( T_Localize_CU );
    Check_for_Dump ( TP_LOCALIZE, NULL );
    Check_for_Dump ( TP_CGEXP, NULL );
  } else {
    /* Initialize liveness info for new parts of the REGION */
    /* also compute global liveness for the REGION */
    Set_Error_Phase( "Global Live Range Analysis");
    Start_Timer( T_GLRA_CU );
    GRA_LIVE_Init(region ? REGION_get_rid( rwn ) : NULL);
    Stop_Timer ( T_GLRA_CU );
    Check_for_Dump ( TP_FIND_GLOB, NULL );
    Check_for_Dump ( TP_CGEXP, NULL );
  }

  if (Enable_CG_Peephole) {
    Set_Error_Phase("Extended Block Optimizer");
    Start_Timer(T_EBO_CU);
    EBO_Pre_Process_Region (region ? REGION_get_rid(rwn) : NULL);
    Stop_Timer ( T_EBO_CU );
    Check_for_Dump ( TP_EBO, NULL );
    Check_for_Dump ( TP_CGEXP, NULL );
  }

  // Optimize control flow (first pass)
  if (CG_opt_level > 0 && CFLOW_opt_before_cgprep) {
    // Perform all the optimizations that make things more simple.
    // Reordering doesn't have that property.
#if defined (TARG_SL)
    CFLOW_Optimize(  (CFLOW_ALL_OPTS|CFLOW_IN_CGPREP)
                   & ~(CFLOW_COLD_REGION|CFLOW_HOT_REGION)
                   & ~(CFLOW_FREQ_ORDER | CFLOW_REORDER),
		   "CFLOW (first pass)");
#else
    CFLOW_Optimize(  (CFLOW_ALL_OPTS|CFLOW_IN_CGPREP)
		   & ~(CFLOW_FREQ_ORDER | CFLOW_REORDER),
		   "CFLOW (first pass)");
#endif

    if (frequency_verify && CG_PU_Has_Feedback)
      FREQ_Verify("CFLOW (first pass)");
  }

  // Invoke global optimizations before register allocation at -O2 and above.
  if (CG_opt_level > 1) {

    // Compute frequencies using heuristics when not using feedback.
    // It is important to do this after the code has been given a
    // cleanup by cflow so that it more closely resembles what it will
    // to the later phases of cg.
    if (!CG_PU_Has_Feedback) {
      Set_Error_Phase("FREQ");
      Start_Timer (T_Freq_CU);
      FREQ_Compute_BB_Frequencies();
      Stop_Timer (T_Freq_CU);
      if (frequency_verify)
	FREQ_Verify("Heuristic Frequency Computation");
    }

#if defined(TARG_IA64) || defined(TARG_SL)
    if (CG_Enable_REGION_formation) {
        REGION_Form_Region_Tree ();  
    }
    else 
#endif
    // Perform hyperblock formation (if-conversion).  Only works for
    // IA-64 at the moment. 
    //
#ifdef KEY
    // At Key, we form Hyperblocks although MIPS is not predicated architecture
    if (1) {
#else     
    if (CGTARG_Can_Predicate()) {
#endif
      // Initialize the predicate query system in the hyperblock formation phase
      HB_Form_Hyperblocks(region ? REGION_get_rid(rwn) : NULL, NULL);
#ifdef KEY
      // We do not have a slot in the BB structure to store predicate TNs.
      // Instead, we remember the last seen block and the associated 
      // predicate TNs. So, we need to reinitialize the TNs and the basic block
      // once we finish the current hyper-block.
      HB_Reinit_Pred();	
      // CG_LOOP does not use the same mechanism for hammocks.
      hammock_region = FALSE;
#endif
      if (!PQSCG_pqs_valid()) {
	PQSCG_reinit(REGION_First_BB);
      }
      if (frequency_verify)
	FREQ_Verify("Hyberblock Formation");
    }
    
    if (CG_enable_loop_optimizations) {
#ifdef KEY
      /* bug#1443
	 Earlier phase, like cflow, does not maintain GTN info if -CG:localize is on,
	 we have to call GRA_LIVE_Init again to rebuild the consistency.
       */
      if (CG_localize_tns
#ifdef TARG_X8664
	  || CG_localize_x87_tns
#endif
         ){
	Set_Error_Phase( "Global Live Range Analysis" );
	GRA_LIVE_Init(region ? REGION_get_rid( rwn ) : NULL);
      }
#endif
      Set_Error_Phase("CGLOOP");
      Start_Timer(T_Loop_CU);
#if defined(TARG_IA64) || defined(TARG_SL)
      if(CG_Enable_REGION_formation) {
      	 REGION_LOOP_UPDATE *rgn_loop_update;
      	 rgn_loop_update = CXX_NEW( \
      	                REGION_LOOP_UPDATE( \
      	                      REGION_Get_Region_Tree(), \
      	                      REGION_First_BB), \
      	                &MEM_pu_pool);
      	 Perform_Loop_Optimizations(rgn_loop_update);
      	 CXX_DELETE(rgn_loop_update, &MEM_pu_pool);
#ifdef Is_True_On
        Verify_Region_Tree(REGION_Get_Region_Tree(), REGION_First_BB);
#endif
      } else 
#endif // IA64         	                      
      // Optimize loops (mostly innermost)
      Perform_Loop_Optimizations();
      // detect GTN
      GRA_LIVE_Recalc_Liveness(region ? REGION_get_rid( rwn) : NULL);	
      GRA_LIVE_Rename_TNs();  // rename TNs -- required by LRA
#ifdef KEY
      /* bug#1442
	 Loop optimization will introduce new GTNs. If -CG:localize is on,
	 we should localize all the new created GTNs.
       */
      if (CG_localize_tns
#ifdef TARG_X8664
	  || CG_localize_x87_tns
#endif
         ){
	Set_Error_Phase ( "Localize" );
#ifdef KEY
        GRA_LIVE_Init(region ? REGION_get_rid(rwn) : NULL); 
#endif         
	Localize_Any_Global_TNs(region ? REGION_get_rid( rwn ) : NULL);
	Check_for_Dump ( TP_LOCALIZE, NULL );
	Check_for_Dump ( TP_CGEXP, NULL );
      }
#endif
      Stop_Timer(T_Loop_CU);
      Check_for_Dump(TP_CGLOOP, NULL);
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "Localize" );
      if (frequency_verify)
	FREQ_Verify("CGLOOP");
    }

    /* Optimize control flow (second pass) */
    if (CFLOW_opt_after_cgprep) {
#if defined (TARG_SL)
    CFLOW_Optimize(  (CFLOW_ALL_OPTS|CFLOW_IN_CGPREP)
                   & ~(CFLOW_COLD_REGION|CFLOW_HOT_REGION)
                   & ~(CFLOW_FREQ_ORDER),
		   "CFLOW (second pass)");
#else
      CFLOW_Optimize(CFLOW_ALL_OPTS, "CFLOW (second pass)");
#endif
      if (frequency_verify)
	FREQ_Verify("CFLOW (second pass)");
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "CFLOW 2" );
    }

    if (Enable_CG_Peephole) {
      Set_Error_Phase( "Extended Block Optimizer");
      Start_Timer( T_EBO_CU );
      EBO_Process_Region (region ? REGION_get_rid(rwn) : NULL);
      PQSCG_reinit(REGION_First_BB);
      Stop_Timer ( T_EBO_CU );
      Check_for_Dump ( TP_EBO, NULL );
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "EBO 1" );
    }
  }

  if (!Get_Trace (TP_CGEXP, 1024))
	Reuse_Temp_TNs = TRUE;	/* for spills */

  if (CGSPILL_Enable_Force_Rematerialization)
    CGSPILL_Force_Rematerialization();

  if (!region) {
    /* in case cgprep introduced a gp reference */
    Adjust_GP_Setup_Code( Get_Current_PU_ST(), FALSE /* allocate registers */ );
    /* in case cgprep introduced a lc reference */
    Adjust_LC_Setup_Code();

    // TODO:  when generate control speculation (ld.s) and st8.spill
    // of NaT bits, then need to save and restore ar.unat. 
  }

  /* Global register allocation, Scheduling:
   *
   * The overall algorithm is as follows:
   *   - Global code motion before register allocation
   *   - Local scheduling before register allocation
   *   - Global register allocation
   *   - Local register allocation
   *   - Global code motion phase (GCM) 
   *   - Local scheduling after register allocation
   */

#ifdef KEY
  // Earlier phases (esp. CFLOW) might have introduced local definitions and
  // uses for global TNs. Rename them to local TNs so that LRA can accurately
  // compute register requests (called from scheduling).
  // 
  // (Also, earlier phase, like cflow, does not maintain GTN info if
  // -CG:localize is on.  Rebuild the consistency for GCM.  Bug 7219.)
#ifdef TARG_SL //fork_joint
  //only optimization level greater than 1, we recaluculate liveness informatino
  //otherwise it will reset GTN flag in glue code when doing compilation base on
  // region. This will cause assertion. 
  if(CG_opt_level > 1) {
    GRA_LIVE_Recalc_Liveness(region ? REGION_get_rid( rwn) : NULL);	
    GRA_LIVE_Rename_TNs();
  }
#endif 
#endif

  BOOL should_do_gcm;
  should_do_gcm = GCM_Enable_Scheduling & RGN_Enable_All_Scheduling;

  if(should_do_gcm && CG_opt_level > 1) {
    IGLS_Schedule_Region( TRUE );
  } 
  Check_for_Dump_ALL ( TP_CGEXP, NULL, "GCM" );

  if( RGN_Enable_All_Scheduling && 
      CG_Enable_Regional_Local_Sched && 
      LOCS_PRE_Enable_Scheduling &&
      CG_opt_level > 1 ){
    Local_Insn_Sched( TRUE );
  }
  Check_for_Dump_ALL ( TP_CGEXP, NULL, "Pre LIS" );

  /* for now we don't turn on ebo, it causes that there are lots of 
   * jump to jump not converted to direct jump implemented in 
   * CFLOW_Optimize in EBO_Post_Process_Region so we call 
   * CFLOW_Optimize once immediately before Local scheduling as 
   * walkaround.  After ebo turn on, we need back to use original 
   * function call in ebo.
   */
  if( CG_Enable_Regional_Global_Sched && 
      CG_Enable_REGION_formation &&
      CG_opt_level > 1) {
     CFLOW_Optimize( CFLOW_BRANCH | CFLOW_UNREACHABLE | CFLOW_MERGE | 
                      CFLOW_REORDER, "CFLOW (third pass)");
  }

  Check_for_Dump_ALL ( TP_CGEXP, NULL, "after Sched" );

  if (!CG_localize_tns)
  {
    // Earlier phases (esp. GCM) might have introduced local definitions
    // and uses for global TNs. Rename them to local TNs so that GRA 
    // does not have to deal with them.

    if (GRA_recalc_liveness) {
      Start_Timer( T_GLRA_CU);
      GRA_LIVE_Recalc_Liveness(region ? REGION_get_rid( rwn) : NULL);
      Stop_Timer ( T_GLRA_CU );
      Check_for_Dump (TP_FIND_GLOB, NULL);
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "Recal-live" );
    } else {
      GRA_LIVE_Rename_TNs ();
    }

    if (GRA_redo_liveness
#ifdef KEY	// Inaccurate liveness info will break GRA's boundary BB code.
		// But don't always redo liveness, bug 4781.
	|| GRA_optimize_boundary
#endif
       )
    {
      Start_Timer( T_GLRA_CU );
      GRA_LIVE_Init(region ? REGION_get_rid( rwn ) : NULL);
      Stop_Timer ( T_GLRA_CU );
      Check_for_Dump ( TP_FIND_GLOB, NULL );
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "GLRA" );
    }
    GRA_Allocate_Global_Registers( region );
  }

    Set_Error_Phase ( "lra before" );
  Check_for_Dump(TP_CGEXP, NULL);
  LRA_Allocate_Registers (!region);

  Check_for_Dump_ALL ( TP_CGEXP, NULL, "LRA" );

  if (!CG_localize_tns ) {
    Set_Error_Phase ( "GRA_Finish" );
    /* Done with all grant information */
    GRA_Finalize_Grants();
  }
 
  if (!region) {
    /* Check that we didn't introduce a new gp reference */
    Adjust_GP_Setup_Code( Get_Current_PU_ST(), TRUE /* allocate registers */ );

    /* The stack frame is final at this point, no more spilling after this.
     * We can set the Frame_Len now.
     * Then we can go through all the entry/exit blocks and fix the SP 
     * adjustment OP or delete it if the frame length is zero.
     */
    Set_Frame_Len (Finalize_Stack_Frame());
    Set_Error_Phase ( "Final SP adjustment" );
    Adjust_Entry_Exit_Code ( Get_Current_PU_ST() );
  }

    Check_for_Dump_ALL ( TP_CGEXP, NULL, "Adj Ent/exit" );
  if (Enable_CG_Peephole) {
    Set_Error_Phase("Extended Block Optimizer");
    Start_Timer(T_EBO_CU);
    EBO_Post_Process_Region (region ? REGION_get_rid(rwn) : NULL);
    Stop_Timer ( T_EBO_CU );
    Check_for_Dump ( TP_EBO, NULL );
    Check_for_Dump_ALL ( TP_CGEXP, NULL, "EBO aft Ent/exit" );
  }

#if defined (TARG_SL)
    if (!region) {
      CFLOW_Optimize(  CFLOW_FREQ_ORDER, "CFLOW (forth pass)");
      CFLOW_Optimize(  CFLOW_BRANCH | CFLOW_UNREACHABLE | CFLOW_COLD_REGION | CFLOW_HOT_REGION, "CFLOW (fifth pass)");  
    }
    /*16-bit instr replaced*/
    if(!region && CG_Gen_16bit ){
      Replace_Size16_Instr();
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "gen16bit op" );
    }
#endif	    	

#ifdef TARG_SL
  if(RGN_Enable_All_Scheduling) {
     if( CG_Enable_Regional_Local_Sched && 
         LOCS_POST_Enable_Scheduling &&
         CG_opt_level > 1) {
      Local_Insn_Sched(FALSE);
      Check_for_Dump_ALL ( TP_CGEXP, NULL, "Post LIS" );
    }
  }
#else 
  IGLS_Schedule_Region (FALSE /* after register allocation */);
#endif

#if defined(TARG_SL)
   
  if(!region && CG_Gen_16bit)
     Guarantee_Paired_instr16();
  if (CG_check_quadword == 1) {
    Check_Br16(0);	
    Check_QuadWord_Boundary_Absolute();
    Check_Br16(1);	
  }
 else  if (CG_check_quadword == 2) {
    Check_Br16(0);	
 }

#endif

#ifdef TARG_X8664
  {
    /* Convert all the x87 regs to stack-like regs. */
    extern void Convert_x87_Regs( MEM_POOL* );
    Convert_x87_Regs( &MEM_local_region_pool );

    /* When a function returns a structure under -m32, the value of SP will be
       increased by 4 bytes.
    */
    if( Is_Target_32bit() ){
      for( BB* bb = REGION_First_BB; bb != NULL; bb = BB_next(bb) ){
	if( BB_call(bb) )
	  Adjust_SP_After_Call( bb );
      }
    }
  }
#endif

  Reuse_Temp_TNs = orig_reuse_temp_tns;		/* restore */

  if (region) {
    /*--------------------------------------------------------------------*/
    /* old region: rwn, rid_orig					  */
    /* new region: rwn_new, rid_new (encloses old region)		  */
    /*--------------------------------------------------------------------*/
    WN	*inner_body, *outer_body, *exitBlock, *comment;
    WN  *rwn_new, *result_block_before, *result_block_after;
    RID *rid_orig;
    char str[100];

    Is_True(REGION_consistency_check(rwn),("CG_Generate_Code"));
    rid_orig = REGION_get_rid(rwn);

    /* don't delete rwn, it contains the stub that helps find the MOPS
       that the region has been lowered to */

    outer_body = WN_CreateBlock();
    /* put inner region inside outer containment block */
    WN_INSERT_BlockFirst(outer_body, rwn);
    /* we assembled the new exit block earlier in Build_CFG()		*/
    exitBlock = CGRIN_nested_exit(RID_cginfo(rid_orig));
    WN_region_exits(rwn) = exitBlock; /* PPP ??? */

    rwn_new = outer_body;

    /* put a note in the inner body that the code isn't there anymore */
    inner_body = WN_CreateBlock();
    WN_region_body(rwn) = inner_body; /* overwrite old body, now in MOPs */
    sprintf(str,"RGN %d has been lowered to MOPs, level=%s",
	    RID_id(rid_orig), RID_level_str(rid_orig));
    comment = WN_CreateComment(str);
    WN_INSERT_BlockFirst(inner_body, comment);

    /* Need to split result block for glue code into two parts: before and
       after the region body. The reason we can't just insert the glue code
       directly before or after the region directly is that we need to keep
       it separate for updating the alias info.
       If CG_LOOP has made some WHIRL glue, it is inserted in result_block. */
    result_block_before = WN_CreateBlock();
    result_block_after = WN_CreateBlock();

    /* fill-in blocks with glue code */
    Set_Error_Phase("Region Finalize");
    Start_Timer(T_Region_Finalize_CU);
    CG_Region_Finalize( result_block_before, result_block_after,
		       rwn, alias_mgr, TRUE /* generate_glue_code */ );
    Stop_Timer(T_Region_Finalize_CU);

    /* generate alias information for glue code */
    REGION_update_alias_info(result_block_before, alias_mgr);
    REGION_update_alias_info(result_block_after, alias_mgr);

    /* insert glue code before and after */
    WN_INSERT_BlockFirst( rwn_new, result_block_before );
    WN_INSERT_BlockLast( rwn_new, result_block_after );

    GRA_LIVE_Finish_REGION();
    PQSCG_term();

    Stop_Timer ( T_CodeGen_CU );
    Set_Error_Phase ( "Codegen Driver" );

    return rwn_new;
  } /* if (region */

  else { /* PU */
    /* Write the EH range table. */
    if (PU_has_exc_scopes(Get_Current_PU())) {
      EH_Write_Range_Table(rwn);
    }

#if defined(TARG_SL)
    if(List_Profile) {
      fprintf(Lst_File, "profile.%s\n", ST_name(Get_Current_PU_ST()));
      INT bb_count=0;
      for (BB* bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) 
	  bb_count++;
	  
      fprintf(Lst_File, "%d\n", bb_count);
      for (BB* bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
        RID *rid = BB_rid(bb);
        if(rid != NULL && RID_TYPE_cold(rid)) {
          fprintf(Lst_File, "C,%d,%f\n", 
                    BB_length(bb), BB_freq(bb));
        }
        else if(rid!=NULL && RID_TYPE_hot(rid)) {
          fprintf(Lst_File, "H,%d,%f\n", 
                    BB_length(bb), BB_freq(bb));
        }
        else {
          fprintf(Lst_File, "G,%d,%f\n", 
                    BB_length(bb), BB_freq(bb));
        }
      }
    }
#endif


#if defined(TARG_SL2)
     Collect_Simd_Register_Usage();
#endif 

    /* Emit the code for the PU. This may involve writing out the code to
     * an object file or to an assembly file or both. Additional tasks
     * performed by this module are:
     *
     *   - convert long branches into a chain of short branches.
     *   - add nada's to quad-align branch targets for TFP.
     */
    Set_Error_Phase ( "Assembly" );
    Start_Timer (	T_Emit_CU );
    EMT_Emit_PU (Get_Current_PU_ST(), pu_dst, rwn);
    Check_for_Dump (TP_EMIT, NULL);
    Stop_Timer ( T_Emit_CU );

    Set_Error_Phase("Region Finalize");
    Start_Timer(T_Region_Finalize_CU);
    CG_Region_Finalize( NULL, NULL, rwn, alias_mgr,
		       FALSE /* generate_glue_code */ );
    Stop_Timer(T_Region_Finalize_CU);

    GRA_LIVE_Finish_PU();
    PQSCG_term();

    /* List local symbols if desired: */
    if ( List_Symbols )
	Print_symtab (Lst_File, CURRENT_SYMTAB);

    Stop_Timer ( T_CodeGen_CU );
    Set_Error_Phase ( "Codegen Driver" );

    return rwn;
  }
}



/* ================================================================= */
/* routines for dumping/tracing the program */

void
Trace_IR(
  INT phase,		/* Phase after which we're printing */
  const char *pname,	/* Print name for phase	*/
  BB *cur_bb)		/* BB to limit traces to */
{
  INT cur_bb_id = cur_bb ? BB_id(cur_bb) : 0;
  if (   Get_Trace(TKIND_IR, phase)
      && (cur_bb_id == 0 || Get_BB_Trace(cur_bb_id)))
  {
    fprintf(TFile, "\n%s%s\tIR after %s\n%s%s\n",
	    DBar, DBar, pname, DBar, DBar);
    if (cur_bb != NULL) {
      Print_BB(cur_bb);
    } else {
      BB *bb;
      for (bb = REGION_First_BB; bb; bb = BB_next(bb))	{
	if (Get_BB_Trace(BB_id(bb)) && Get_Trace(TKIND_IR, phase)) {
	  Print_BB(bb);
	}
      }
    }
    fprintf(TFile, "%s%s\n", DBar, DBar);
  }
}

static void
Trace_TN (
  INT phase,		/* Phase after which we're printing */
  const char *pname )	/* Print name for phase	*/
{
  if ( Get_Trace ( TKIND_TN, phase ) ) {
    fprintf ( TFile, "\n%s%s\tTNs after %s\n%s%s\n",
	      DBar, DBar, pname, DBar, DBar );
    Print_TNs ();
  }
}

static void
Trace_ST (
  INT phase,		/* Phase after which we're printing */
  const char *pname )	/* Print name for phase	*/
{
  if ( Get_Trace ( TKIND_SYMTAB, phase ) ) {
  	fprintf ( TFile, "\n%s%s\tSymbol table after %s\n%s%s\n",
              DBar, DBar, pname, DBar, DBar );
  	SYMTAB_IDX level = CURRENT_SYMTAB;
	while (level >= GLOBAL_SYMTAB) {
	  	Print_symtab (TFile, level);
		--level;
	}
  }
}

/* ====================================================================
 *
 * Check_for_Dump
 *
 * Check whether symbol table, TN, or IR dumps have been requested for
 * the given pass; if so, generate them to the trace file.  If a BB is
 * given, limit the dumps to that BB.
 *
 * ====================================================================
 */
void
Check_for_Dump ( INT32 pass, BB *bb )
{
  if (bb == NULL || Get_BB_Trace(BB_id(bb))) {
    const char *s = Get_Error_Phase();

    /* Check to see if we should dump the STAB.
     */
    Trace_ST ( pass, s );

    /* Check to see if we should dump the TNs.
     */
    Trace_TN ( pass, s );

    /* Check to see if we should dump the IR.  If yes, check each BB.
     */
    Trace_IR ( pass, s, bb );

    /* Check to see if we should give a memory allocation trace.
     */
    Trace_Memory_Allocation ( pass, s );
  }
}

BOOL 
Get_Trace ( INT func, INT arg, BB *bb )
{
  BOOL result = Get_Trace(func, arg);

  /* Check the BB if necessary: */
  if ( result && bb ) {
    result = Get_BB_Trace ( BB_id(bb) );
  }

  return result;
}

void
CG_Dump_Region(FILE *fd, WN *wn)
{
  RID	*rid = REGION_get_rid(wn);
  Is_True(rid != NULL, ("CG_Dump_Region, NULL RID"));
  if (rid && RID_level(rid) >= RL_CGSCHED) {
    CGRIN  *cgrin = RID_cginfo(rid);
    if (cgrin && CGRIN_entry(cgrin)) {
      BB *bb;
      for (bb=CGRIN_entry(cgrin); bb; bb=BB_next(bb))
	Print_BB( bb );
    }
  }
}

void 
CG_Dump_Cur_Region()
{
  BB *bb;
  for( bb=REGION_First_BB; bb; bb=BB_next(bb) ){
    Print_BB( bb );
  }
} 


/* just an externally-visible wrapper to cgemit function */
extern void
CG_Change_Elf_Symbol_To_Undefined (ST *st)
{
	EMT_Change_Symbol_To_Undefined(st);
}

