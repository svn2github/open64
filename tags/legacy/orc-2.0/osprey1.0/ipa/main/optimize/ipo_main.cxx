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


/* -*-Mode: c++;-*- (Tell emacs to use c++ mode) */
// ====================================================================
// ====================================================================
//
// Module: ipo_main.cxx
//
// Revision history:
//  08-Nov-94 - Original Version
//
// Description:  Interprocedural Optimization Driver
//
// This phase reads in the IR files and perform tranformations
// on it based on the results of the analysis phase. 
// The first set of optimizations will be inlining and 
// constant propagation
//
// ====================================================================
// ====================================================================

// The main clause of the #ifdef contains a stub version of this file:
// just enough so that we can build and run ipa.  The else clause contains
// the full (old symtab) version of the file.


#include <stdio.h>
#include <unistd.h>
#include <elf.h>
#include <sys/types.h>
#include <signal.h>
#include <alloca.h>
#include <cmplrs/rcodes.h>		// for RC_SYSTEM_ERROR

#include <hash_set.h>			// temp. header for hash_set

#include "defs.h"
#include "erglob.h"
#include "cxx_memory.h"
#include "glob.h"			// for Ipa_File_Name
#include "wn.h"
#include "symtab.h"
#include "pu_info.h"			// For struct pu_info
#include "ipc_file.h"			// IP_FILE_HDR
#include "ipc_compile.h"		// for ipacom_*
#include "ipc_bread.h"			// Binary read.
#include "ipc_bwrite.h"			// Binary write.
#include "ipo_defs.h"
#include <cmplrs/host.h>		// for typedef string
#include "ld_ipa_option.h"		// for "keep" macro
#include "ipa_option.h"			// std. ipa options
#include "ipo_tlog_utils.h"		// for Set_tlog_phase
#include "ipa_main.h"			// for analysis phase driver
#include "ipa_cg.h"			// call graph related stuff
#include "ipo_const.h"			// for cprop routines
#include "ipc_symtab_merge.h"		// for AUX_ST
#include "ipo_main.h"
#include "ipc_weak.h"
#include "ipo_pad.h"
#include "ipo_split.h"
#include "ipo_dce.h"			// for dead call elimination
#include "ipo_inline.h"			// for inlining
#include "ipo_alias.h"			// for Mark_readonly_param
#include "ipa_lno_write.h"
#include "cgb.h"                        // CG_BROWSER, CGB_Initialize
#include "cgb_ipa.h"                    // CGB_IPA_{Initialize|Terminate}
#include "ipc_pic.h"
#include "ipo_alias_class.h"
#include "ir_bread.h"			// For second-pass WHIRL file
#include "ir_bwrite.h"			// I/O for alias class
#include "be_symtab.h" 
#include "inline_script_parser.h"

#include "ipc_option.h"
#include "ipa_reorder.h" //IPO_Modify_WN_for_field_reorder ()

extern "C" void add_to_tmp_file_list (char*);
#pragma weak add_to_tmp_file_list

extern MEM_POOL Ipo_mem_pool;
extern WN_MAP Parent_Map;

extern char * preopt_path;       // declared in ld/option.c
extern int preopt_opened;        // declared in ld/option.c

INT IPO_Total_Inlined = 0;

BOOL one_got;

static MEM_POOL Recycle_mem_pool;
MEM_POOL IPA_LNO_mem_pool; 
static IPA_LNO_WRITE_SUMMARY* IPA_LNO_Summary = NULL; 

//----------------------------------------------------------------------
// Aux. info for keeping track of the transformation process:
//----------------------------------------------------------------------
typedef AUX_IPA_NODE<UINT32> NUM_CALLS_PROCESSED;
static NUM_CALLS_PROCESSED* Num_In_Calls_Processed;
static NUM_CALLS_PROCESSED* Num_Out_Calls_Processed;

// FILE *inlining_result ;

static inline BOOL
All_Calls_Processed (const IPA_NODE* node, const IPA_CALL_GRAPH* cg)
{

    return ((cg->Num_In_Edges (node) == (*Num_In_Calls_Processed)[node]) &&
	    (cg->Num_Out_Edges (node) == (*Num_Out_Calls_Processed)[node]));
} // All_Callers_Processed


static void
Init_Num_Calls_Processed (const IPA_CALL_GRAPH* cg, MEM_POOL* pool)
{
    Num_In_Calls_Processed = CXX_NEW (NUM_CALLS_PROCESSED (cg, pool), pool);
    Num_Out_Calls_Processed = CXX_NEW (NUM_CALLS_PROCESSED (cg, pool), pool);

    // For the top-level nodes, there is a edge from the dummy root node
    // that we will never processed.  So we increment the Calls_Processed
    // count first so that All_Calls_Processed() will return the correct
    // result. 
    IPA_GRAPH* graph = cg->Graph ();
    NODE_ITER viter (graph, cg->Root ());
    for (NODE_INDEX child = viter.First_Succ ();
	 child != -1;
	 child = viter.Next_Succ ())
	++(*Num_In_Calls_Processed)[graph->Node_User (child)];

} // Init_Num_Calls_Processed

// check if a PU has been deleted
static BOOL
PU_Deleted (const IPA_GRAPH* cg, NODE_INDEX idx, const IP_FILE_HDR* fhdr)
{
    const IPA_NODE* node = cg->Node_User (idx);

    if (node == NULL)
	return TRUE;

    const IP_PROC_INFO* proc_info = IP_FILE_HDR_proc_info (*fhdr);

    return IP_PROC_INFO_state (proc_info[node->Proc_Info_Index ()]) ==
	IPA_DELETED;
} // PU_Deleted
    

// this is basically a post-order iteration of the call graph, with the
// exception that any nested procedure is always processed before its
// parent, even when the parent does not directly call it (and thus not
// represented in the call graph).
typedef vector<IPA_NODE*> IPA_NODE_VECTOR;

static void
Trans_Order_Walk (IPA_NODE_VECTOR& vect, mBOOL* visited, IPA_GRAPH* cg,
		  NODE_INDEX root) 
{
    visited[root] = TRUE;
    NODE_ITER vitr (cg, root);
    NODE_INDEX child;

    for (child = vitr.First_Succ (); 
         child != -1;
	 child = vitr.Next_Succ ())
	if (!visited[child])
	    Trans_Order_Walk (vect, visited, cg, child);

    IPA_NODE* node = cg->Node_User (root);

    if (node == NULL)
	return;

    if (node->Summary_Proc ()->Is_alt_entry ()) {
	IPA_SUCC_ITER succ_iter (node);
	for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {
	    IPA_EDGE *edge = succ_iter.Current_Edge ();
	    if (!edge->Is_Processed ()) {
		IPA_NODE* callee = IPA_Call_Graph->Callee (edge);
		++(*Num_In_Calls_Processed)[callee];
		++(*Num_Out_Calls_Processed)[node];
		edge->Set_Processed ();
	    }
	}
    } else if (PU_uplevel (node->Get_PU ())) {
	// if this pu contains nested children, make sure if they have all
	// been processed
	const PU_Info* pu = node->PU_Info ();
	for (pu = PU_Info_child (pu); pu; pu = PU_Info_next (pu)) {
	    const AUX_PU& aux_pu =
		Aux_Pu_Table [ST_pu (St_Table [PU_Info_proc_sym (pu)])];
	    child = AUX_PU_node (aux_pu);
	    if (!visited[child] &&
		!PU_Deleted (cg, child, AUX_PU_file_hdr (aux_pu)))
		Trans_Order_Walk (vect, visited, cg, child);
	}
    }

    vect.push_back (node);
} // Trans_Order_Walk 

static inline void
Build_Transformation_Order (IPA_NODE_VECTOR& vect, IPA_GRAPH* cg,
			    NODE_INDEX root)
{
    mBOOL *visited = (mBOOL *) alloca (GRAPH_vmax (cg) * sizeof(mBOOL));
    bzero (visited, GRAPH_vmax (cg) * sizeof(mBOOL));
    vect.reserve (GRAPH_vcnt (cg));
    Trans_Order_Walk (vect, visited, cg, root);

} // Build_Transformation_Order



/* rename the callsite to point to the cloned procedure */
void
Rename_Call_To_Cloned_PU (IPA_NODE *caller, 
                          IPA_NODE *callee,
			  IPA_EDGE *e, 
                          IPA_CALL_GRAPH *cg)
{
  IPA_NODE_CONTEXT context (caller);	// switch to the caller context

  cg->Map_Callsites (caller);           // map callsites to WN nodes

  WN* call = e->Whirl_Node();

  WN_st_idx (call) = ST_st_idx (callee->Func_ST()); 

} // Rename_Call_To_Cloned_PU



static BOOL
Inline_Call (IPA_NODE *caller, IPA_NODE *callee, IPA_EDGE *edge,
	     IPA_CALL_GRAPH *cg)
{
    Is_True (caller->Is_Processed () && callee->Is_Processed (),
	     ("Node info not read before performing inlining"));

    IPA_NODE_CONTEXT context (caller);
    cg->Map_Callsites (caller);

    if (!Can_Inline_Call (caller, callee, edge))
	return FALSE;


#if Is_True_On
    if ( Get_Trace ( TKIND_ALLOC, TP_IPA) ) {
	fprintf ( TFile, "\n%s%s\tMemory allocation information before inlining\n%s%s\n",
		  DBar, DBar, DBar, DBar );
	MEM_Trace ();
    }
#endif

    IPO_INLINE ip_inline (caller, callee, edge); 
    ip_inline.Process ();

#if Is_True_On
    if ( Get_Trace ( TKIND_ALLOC, TP_IPA) ) {
	fprintf ( TFile, "\n%s%s\tMemory allocation information after inlining\n%s%s\n",
		  DBar, DBar, DBar, DBar );
	MEM_Trace ();
    }
#endif

/* pengzhao
    if(Get_Trace(TP_IPA, IPA_TRACE_TUNING_NEW))
	{
			
		fprintf ( inlining_result,"%s inlined into ", DEMANGLE(callee->Name()));
		fprintf ( inlining_result, "%s (edge# %d)\n", DEMANGLE (caller->Name()), edge->Edge_Index () );

	}
*/

    if ( Trace_IPA || Trace_Perf ) {
	fprintf ( TFile, "%s inlined into ", DEMANGLE (callee->Name()) );
	fprintf ( TFile, "%s (edge# %d)", DEMANGLE (caller->Name()), edge->Edge_Index () );
	if ( IPA_Skip_Report ) {
	    fprintf ( TFile, " (%d)\n", caller->Node_Index() );
	} else {
	    fprintf ( TFile, "\n" );
	}
    }
    if ( INLINE_List_Actions ) {
	fprintf ( stderr, "%s inlined into ", DEMANGLE (callee->Name()) );
	fprintf ( stderr, "%s (edge# %d)\n", DEMANGLE (caller->Name()), edge->Edge_Index () );
	if ( IPA_Skip_Report ) {
	    fprintf ( stderr, " (%d)\n", caller->Node_Index() );
	} else {
	    fprintf ( stderr, "\n" );
	}

	// Generate an inlining action log for verifying purpose
	// The file open/close operation could be placed in higher level to reduce time cost	
#ifdef Enable_ISP_Verify
	FILE *inline_action = fopen(inline_action_log, "a+");
	char *caller_key, *callee_key;
    	
	// Retrieve call site source line number		
	WN* call_wn = edge->Whirl_Node();
	USRCPOS callsite_srcpos;
	USRCPOS_srcpos(callsite_srcpos) = WN_Get_Linenum (call_wn);
	char callsite_linestr[1024];
	sprintf(callsite_linestr, "%d", USRCPOS_linenum(callsite_srcpos));
	
	// Retrieve caller/callee function names and the definition file names
	char *caller_file = (char *) alloca(strlen(caller->File_Header().file_name)+1);
	strcpy(caller_file, caller->File_Header().file_name);
	char *callee_file = (char *) alloca(strlen(callee->File_Header().file_name)+1);
	strcpy(callee_file, callee->File_Header().file_name);
	char *caller_func = (char *) alloca(strlen(DEMANGLE (caller->Name()))+1);
	strcpy(caller_func, DEMANGLE (caller->Name()));
	char *callee_func = (char *) alloca(strlen(DEMANGLE (callee->Name()))+1);
	strcpy(callee_func, DEMANGLE (callee->Name()));	
	
	// Filter out surffix in file/function names	
	ISP_Fix_Filename(caller_file);
	ISP_Fix_Filename(callee_file);
	ISP_Fix_Filename(caller_func);
	ISP_Fix_Filename(callee_func);
	
	// Assemble the caller key for inquiry into inlining record
	caller_key = (char *) alloca(strlen(caller_file)+strlen(caller_func)+2);
	strcpy(caller_key, "");
 	strcat(caller_key, caller_file);
  	strcat(caller_key, caller_func);	
  	
  	// Assemble the callee key for inquiry into inlining record
  	callee_key = (char *) alloca(strlen(callsite_linestr)+strlen(callee_file)+strlen(callee_func)+3);
   	strcpy(callee_key, "");
   	strcat(callee_key, callsite_linestr);
   	strcat(callee_key, callee_file);
	strcat(callee_key, callee_func);	
	
	fprintf(inline_action, "[%s] inlined into [%s]\n", callee_key, caller_key);
	fclose(inline_action);
#endif
    }

    return TRUE;

} // Inline_Call


static IPA_NODE *
IPO_Process_node (IPA_NODE* node, IPA_CALL_GRAPH* cg)
{
  if (Is_Skip_Equal(node->Name())) {
    if ( Trace_IPA || Trace_Perf ) 
	fprintf ( TFile, "%s is skipped \n", DEMANGLE (node->Name()) );
    return node;
  }

  if (node->Summary_Proc()->Is_alt_entry ()) {
    return node;
  }
  
  IP_READ_pu_infos (node->File_Header());

  IPA_NODE_CONTEXT context (node);	// switch to this node's context

  if (IPA_Enable_Padding) {
    IPO_Pad_Whirl (node);
  }

  if (IPA_Enable_Common_Const && node->Has_Propagated_Const()) {
    IPO_propagate_globals(node);
  }

  if(IPA_Enable_Reorder && reorder_candidate.size)
    IPO_Modify_WN_for_field_reorder(node) ;
  else //just for debug  feld reorder
    Compare_whirl_tree(node);

  if (IPA_Enable_Cloning && node->Is_Clone_Candidate()) {

    IPA_NODE *cloned_node = cg->Create_Clone(node);
    cloned_node->Set_Propagated_Const ();

    if (Trace_IPA || Trace_Perf) {
      fprintf (TFile, "%s from file %s is cloned\n",
               DEMANGLE (node->Name()), node->Input_File_Name());
    }

    /* write out the original */
    node->Write_PU();

    node = cloned_node;
  }
    
  if (IPA_Enable_Cprop && node->Has_Propagated_Const()) {

      BOOL is_fortran = PU_f77_lang(node->Get_PU()) ||
	  PU_f90_lang(node->Get_PU());

      IPA_Propagate_Constants (node, (IPA_Enable_Cprop2 &&
				      !is_fortran &&
				      !node->Has_No_Aggr_Cprop()));
	
#if 0	/* sample code sequence for calling preopt */
	WN *pu_wn = node->Whirl_Tree();
	REGION_Initialize(pu_wn, FALSE);

	Current_PU = WN_st(pu_wn);

	MEM_POOL_Push(&MEM_local_pool);

	Set_Error_Phase ("Global Optimizer");
	IPO_Load_Preopt();
	DU_MANAGER* du_mgr = Create_Du_Manager(MEM_pu_nz_pool_ptr);
	ALIAS_MANAGER* alias_mgr = Create_Alias_Manager(MEM_pu_nz_pool_ptr);

	WN *opt_pu = Pre_Optimizer(PREOPT_IPA1_PHASE, pu_wn, du_mgr, alias_mgr);
	node->Set_Whirl_Tree(opt_pu);

	Delete_Du_Manager(du_mgr,MEM_pu_nz_pool_ptr);
	Delete_Alias_Manager(alias_mgr,MEM_pu_nz_pool_ptr);

	MEM_POOL_Pop(&MEM_local_pool);
#endif
  }

  return node;
} // IPO_Process_node


static void
IPO_Process_edge (IPA_NODE* caller, IPA_NODE* callee, IPA_EDGE* edge,
		  IPA_CALL_GRAPH* cg)
{
    if (caller->Summary_Proc()->Is_alt_entry ()) {
	return;
    }

    /* In the analysis phase, we've already marked those edges not being
       inlined or dce'd as "processed", and incremented the succ_count and
       pred_count accordingly. */ 
	    
    BOOL action_taken = FALSE;

#ifdef TODO
    if (IPA_Enable_Array_Sections) {
	if (callee->Has_use_kill()) {
	    Mark_use_kill_param(caller, callee, edge);
	}
    }
#endif // TODO

    if (IPA_Enable_Addressing && IPA_Enable_Simple_Alias &&
	IPA_Enable_Readonly_Ref) {
	// must be called before constant parameters are removed, otherwise
	// the parameter positions might be wrong.
	if (edge->Has_Readonly_Param() || edge->Has_Pass_Not_Saved_Param())
	    Mark_readonly_param (caller, edge, cg);
    }

    if (edge->Has_Propagated_Const() && callee->Has_Propagated_Const()) {
      if (IPA_Enable_Cloning && callee->Is_Clone()) {
        Rename_Call_To_Cloned_PU (caller, callee, edge, cg);
      }
      if (IPA_Enable_Cprop2 && !callee->Has_No_Aggr_Cprop())
        Reset_param_list (caller, callee, edge, cg);
    }

    if (IPA_Enable_DCE && edge->Is_Deletable ())
	action_taken = Delete_Call (caller, callee, edge, cg);
    else if (IPA_Enable_Inline && edge->Has_Inline_Attrib () &&
		!callee->Has_Noinline_Attrib()) {
	MEM_POOL_Popper ipo_pool (&Ipo_mem_pool);
	action_taken = Inline_Call (caller, callee, edge, cg);
	if (action_taken) 
	    IPO_Total_Inlined++;
    }
    
    if (!action_taken) {
	/* when the type checking for dce and inlining is
	   moved to the analysis phase, we can optimize the
	   following to be done only if no dce and
	   inlining is done. */
	callee->Set_Undeletable();

//#ifdef TODO
	if (IPA_Enable_Cord) {
	    fprintf (Call_graph_file, "%s\t%s\t%f\t%f\t%f\n", caller->Name (),
		     callee->Name (), edge->Has_frequency () ?
		     (edge->Get_frequency())._value : 0,
		     (caller->Get_frequency())._value,
		     (callee->Get_frequency())._value);
	}
//#endif
    }
    

    ++(*Num_In_Calls_Processed)[callee];
    ++(*Num_Out_Calls_Processed)[caller];
#ifdef _DEBUG_CALL_GRAPH
    printf("Processed %s   -->   %s\n", caller->Name(), callee->Name());
#endif // _DEBUG_CALL_GRAPH
    edge->Set_Processed ();
    
} // IPO_Process_edge


static inline void
Delete_Proc (const IPA_NODE *node)
{
    Set_ST_is_not_used (node->Func_ST ());
    Delete_Function_In_File (node->File_Header(), node->Proc_Info_Index ());

} // Delete_Proc

static void
Perform_Transformation (IPA_NODE* caller, IPA_CALL_GRAPH* cg)
{

    Is_True (caller != NULL, ("Invalid IPA_NODE"));
	
#ifdef TODO
    // Only process those nodes that has the same partition group
    // as "partition_num" if files need to be unmapped DUE to
    // space problem.  This is assuming if IPA encounters the
    // space problem, it would have partitioned the call-graph
    // so that all functions in the SAME file have the SAME 
    // partition group.

    if (IPA_Space_Access_Mode == SAVE_SPACE_MODE &&
	caller->Get_partition_group () != partition_num)
	return;

    if ( IPA_Enable_Recycle ) {
	MEM_POOL_Push (&Recycle_mem_pool);
    }
#endif

    Init_inline(); // opcode related and dst initialization
	
    if (!caller->Is_Processed ()) {
	caller = IPO_Process_node (caller, cg);
	caller->Set_Processed ();
    }

    IPA_SUCC_ITER succ_iter (caller);
    for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) { 

	IPA_EDGE *edge = succ_iter.Current_Edge ();
	IPA_NODE *callee = cg->Callee (edge);
	    

#ifdef _DEBUG_CALL_GRAPH
        printf("%s   ---->    %s\n", caller->Name(), callee->Name());
#endif // _DEBUG_CALL_GRAPH

	// turn off cloning for recursive edges	
	if (cg->Graph()->Is_Recursive_Edge(edge->Edge_Index()))
	    callee->Clear_Clone_Candidate();

#ifdef TODO
	if (!callee->Is_Processed () && // (!IPA_Enable_SP_Partition ||
	    ((IPA_Space_Access_Mode != SAVE_SPACE_MODE) || 
	     (callee->Get_partition_group () == COMMON_PARTITION) || 
	     (callee->Get_partition_group () == partition_num))) {
	    callee = IPO_Process_node (callee, cg);
	    callee->Set_Processed ();
	}
#else
	if (!callee->Is_Processed ()) {
	    callee = IPO_Process_node (callee, cg);
	    callee->Set_Processed ();
	}
#endif // TODO
	    
#if 0
	if (cg->Graph()->Is_Recursive_Edge(edge->Edge_Index())) {
	    caller->Set_Undeletable();
	    callee->Set_Undeletable();
	}
#endif
	    
	if (!edge->Is_Processed ())
	    IPO_Process_edge (caller, callee, edge, cg);

	if (caller == callee)
	    continue;
	    
#ifdef TODO
	if (IPA_Space_Access_Mode == SAVE_SPACE_MODE &&
	    callee->Get_partition_group() != partition_num &&
	    /* Below is for STATIC functions with user-specified
	     * partitioning
	     */
	    ((IP_FILE_HDR_sp_partition_group(shd_callee) !=
	      partition_num) || (partition_num == COMMON_PARTITION)))
	    continue;
#endif
	    
	if (! caller->Summary_Proc ()->Is_alt_entry () &&
	    All_Calls_Processed (callee, cg)) {
	    if (callee->Is_Deletable ()) {
		Delete_Proc (callee);
	    } else {
		if (IPA_Enable_Array_Sections)
		    IPA_LNO_Map_Node(callee, IPA_LNO_Summary);
		callee->Write_PU ();
#ifdef _DEBUG_CALL_GRAPH
	    	printf("Writing   %s \n", callee->Name());
#endif // _DEBUG_CALL_GRAPH
	    }
	}

    }

    // When we inline multiple times of the same callee to this caller
    // we optimized it in IPO_CLONE to same the SYMTAB info for the
    // caller/callee pair.  Now we have to clear the SYMTAB info for
    // the callee so that info has to be redone for a different caller.
    IPA_SUCC_ITER succ_iter2 (caller);
    for (succ_iter2.First(); !succ_iter2.Is_Empty(); succ_iter2.Next()) { 
        IPA_EDGE* edge = succ_iter2.Current_Edge();
        IPA_NODE* callee = IPA_Call_Graph->Callee(edge);

        callee->Clear_Cloned_Symtab();
    }

    if (All_Calls_Processed (caller, cg)) {
	if (caller->Is_Deletable ())
	    Delete_Proc (caller);
	else {
	    if (IPA_Enable_Array_Sections)
		IPA_LNO_Map_Node(caller, IPA_LNO_Summary);
	    caller->Write_PU ();
#ifdef _DEBUG_CALL_GRAPH
   	    printf("Writing   %s \n", caller->Name());
#endif // _DEBUG_CALL_GRAPH

	}
    }

#ifdef TODO
    if (IPA_Enable_Recycle) {
	caller->Cleanup_State(cg);
	MEM_POOL_Pop(&Recycle_mem_pool);   
    }
#endif

} // Perform_Transformation

static void
Preorder_annotate_PU_and_kids(const char *const input_file_name,
			      PU_Info    *      current_pu)
{
  MEM_POOL_Push(MEM_pu_nz_pool_ptr);

  Cur_PU_Feedback = NULL;		// don't bother creating the
					// FEEDBACK structure, for we'll
					// just copy the feedback info
					// directly to the output file.
  // save the size of the feedback section, for this will be trashed by
  // Read_Local_Info which replaces it with PU_Info_subsect_ptr
  Elf64_Word feedback_size = PU_Info_subsect_size (current_pu, WT_FEEDBACK);
  
  // Read the analyzed PU from the input file
  Read_Local_Info(MEM_pu_nz_pool_ptr, current_pu);

#if 0
  if (PU_Info_state(current_pu, WT_AC_INTERNAL) != Subsect_InMem) {
    ErrMsg(EC_IR_Scn_Read, "alias class internal map", input_file_name);
  }
#endif

  Ip_alias_class->Finalize_memops(PU_Info_tree_ptr(current_pu));

  // Get rid of the WHIRL subsection corresponding to the
  // AC_INTERNAL map.
  Set_PU_Info_state(current_pu, WT_AC_INTERNAL, Subsect_Missing);

  // Write the annotated PU to the output file
  // restore the feedback size
  PU_Info_subsect_offset (current_pu, WT_FEEDBACK) = feedback_size;
  Write_PU_Info(current_pu);

  // Annotate and write the kids of this PU
  for (current_pu = PU_Info_child(current_pu);
       current_pu != NULL;
       current_pu = PU_Info_next(current_pu)) {
    Preorder_annotate_PU_and_kids(input_file_name, current_pu);
  }

  // clean up
  MEM_POOL_Pop(MEM_pu_nz_pool_ptr);
}

#define AC_FILE_EXT ".acl"

static void
Perform_Alias_Class_Annotation(void)
{
  Write_ALIAS_CLASS_Map = TRUE;
  Write_AC_INTERNAL_Map = FALSE;

  // For each file we wrote previously,
  for (vector<char *>::iterator name = Ip_alias_class_files.begin();
       name != Ip_alias_class_files.end();
       ++name) {
    // open the file
    void *input_file = Open_Local_Input(*name);

    // open the corresponding new output file
    char *output_file_name = (char *) malloc(strlen(*name) + strlen(AC_FILE_EXT) + 1);
    output_file_name = strcpy(output_file_name, *name);
    output_file_name = strcat(output_file_name, AC_FILE_EXT);
    Output_File *output_file = Open_Output_Info(output_file_name);
    add_to_tmp_file_list(output_file_name);

    // Read the DST from the input file. We can't write it to the
    // output file yet because of some stupid global state maintained
    // somewhere. We apparently have to write it after the PU's are
    // written.
    if (WN_get_dst(input_file) == -1) {
      ErrMsg(EC_IR_Scn_Read, "dst", name);
    }

    // Note that no Read_Global_Info is needed because the global
    // information is already in memory.
    // Get the PU_Info structure for the PU's in the file.
    PU_Info *pu_info_tree = WN_get_PU_Infos(input_file, NULL);
    for (PU_Info *current_pu = pu_info_tree;
	 current_pu != NULL;
	 current_pu = PU_Info_next(current_pu)) {
      Preorder_annotate_PU_and_kids(*name, current_pu);
    }

    // Write the PU_Info's and DST to the output file.
    WN_write_PU_Infos(pu_info_tree, output_file);
    WN_write_dst(Current_DST, output_file);

    // close the two files
    Close_Output_Info();
    Free_Local_Input();

    if (!IPA_Debug_AC_Temp_Files) {
      if (keep) {
	const char *const save_file_ext = ".save";
	char *save_file_name = (char *) malloc(strlen(*name) +
					       strlen(save_file_ext) + 1);
	save_file_name = strcpy(save_file_name, *name);
	save_file_name = strcat(save_file_name, save_file_ext);

	if (rename(*name, save_file_name) != 0) {
	  ErrMsg(EC_Ipa_Rename, *name, save_file_name);
	}
	free(save_file_name);
      }
      if (rename(output_file_name, *name) != 0) {
	ErrMsg(EC_Ipa_Rename, output_file_name, *name);
      }
    }
    // Free memory
    free(output_file_name);
  }
  if (IPA_Debug_AC_Temp_Files) {
    for (vector<char *>::iterator name = Ip_alias_class_files.begin();
	 name != Ip_alias_class_files.end();
	 ++name) {
      if (keep) {
	const char *const save_file_ext = ".save";
	char *save_file_name = (char *) malloc(strlen(*name) +
					       strlen(save_file_ext) + 1);
	save_file_name = strcpy(save_file_name, *name);
	save_file_name = strcat(save_file_name, save_file_ext);

	if (rename(*name, save_file_name) != 0) {
	  ErrMsg(EC_Ipa_Rename, *name, save_file_name);
	}
      }
      char *output_file_name = (char *) malloc(strlen(*name) +
					       strlen(AC_FILE_EXT) + 1);
      output_file_name = strcpy(output_file_name, *name);
      output_file_name = strcat(output_file_name, AC_FILE_EXT);
      if (rename(output_file_name, *name) != 0) {
	ErrMsg(EC_Ipa_Rename, output_file_name, *name);
      }
    }
  }
}

static void
IPO_main (IPA_CALL_GRAPH* cg)
{
    MEM_POOL_Constructor ipo_pool (&Ipo_mem_pool, "Inline mem pool", FALSE); 
    MEM_POOL_Constructor recycle_pool (&Recycle_mem_pool,
				       "Recycle_mem_pool", FALSE); 
    MEM_POOL_Constructor array_pool (&IPA_LNO_mem_pool, "IPA_LNO_mem_pool",
				     FALSE); 
    
    Set_Error_Phase ("IPA Transformation");

    // inlining_result = fopen("inlining.log", "w");

    if (IPA_Enable_Array_Sections) {
	IPA_LNO_Summary = CXX_NEW(IPA_LNO_WRITE_SUMMARY(array_pool.Pool ()),
				  array_pool.Pool ());
    }
    
    if (IPA_Enable_Padding)
	IPO_Pad_Symtab (IPA_Common_Table);

    if (IPA_Enable_Split_Common)
	IPO_Split_Common ();

    // reorder :(the follwoing two lines)
    if(IPA_Enable_Reorder && reorder_candidate.size){
       IPO_get_new_ordering();
       IPO_reorder_Fld_Tab(); 
    }

    Init_Num_Calls_Processed (cg, ipo_pool.Pool ());

    IPA_NODE_VECTOR walk_order;

    Build_Transformation_Order (walk_order, cg->Graph(), cg->Root());

    for (IPA_NODE_VECTOR::iterator first = walk_order.begin ();
	 first != walk_order.end ();
	 ++first) {

      // IP alias class analysis takes place in IP_WRITE_pu, which is
      // a call-graph descendant of Perform_Transformation. When the
      // following call returns, alias class analysis has been done
      // for the current PU.

      Perform_Transformation (*first, cg);

    }

    if(IPA_Enable_Reorder)
       IPO_Finish_reorder(); //MEM_POOL_Pop (&reorder_local_pool);pop reorder_candidate

    IP_flush_output ();			// Finish writing the PUs

    if (IPA_Enable_Array_Sections)
	IPA_LNO_Write_Summary (IPA_LNO_Summary);

    Clear_Common_Block_Element_Map ();

    if ( Trace_IPA || Trace_Perf ) {
	fprintf ( TFile, "Total number of edges = %d\n", IPA_Call_Graph->Edge_Size() );
    }

    if ( INLINE_List_Actions ) {
        fprintf ( stderr, "Total number of edges = %d\n", IPA_Call_Graph->Edge_Size() );
    }

    // fclose (inlining_result);

} // IPO_main


static BOOL BE_symtab_initialized = FALSE; 

//-----------------------------------------------------------------------
// Initialize the back-end symbol table (lifted from be/be/driver.cxx)
//-----------------------------------------------------------------------
static void 
BE_Symtab_Initialize()
{
  if (!BE_symtab_initialized) {
    BE_symtab_initialize_be_scopes();
    BE_symtab_alloc_scope_level (GLOBAL_SYMTAB);
    for (SYMTAB_IDX scope_level = 0;
	 scope_level <= GLOBAL_SYMTAB;
	 ++scope_level) {
      // No need to deal with levels that don't have st_tab's. Currently
      // this should be only zero.
      if (Scope_tab[scope_level].st_tab != NULL) {
	Scope_tab[scope_level].st_tab->
	  Register(*Be_scope_tab[scope_level].be_st_tab);
      }
      else {
	Is_True(scope_level == 0,
		("Nonexistent st_tab for level %d", scope_level));
      }
    }
    BE_symtab_initialized = TRUE; 
  } 
} 

//-----------------------------------------------------------------------
// Free back-end symbol table resources (lifted from be/be/driver.cxx)
//-----------------------------------------------------------------------
static void 
BE_Symtab_Finalize()
{
  if (BE_symtab_initialized) { 
    for (SYMTAB_IDX idx = GLOBAL_SYMTAB + 1; idx > 0; --idx) {
      // No need to deal with levels that don't have st_tab's. Currently
      // this should be only zero.
      SYMTAB_IDX scope_level = idx - 1;
      if (Scope_tab[scope_level].st_tab != NULL) {
        Scope_tab[scope_level].st_tab->
          Un_register(*Be_scope_tab[scope_level].be_st_tab);
        Be_scope_tab[scope_level].be_st_tab->Clear();
      }
      else {
        Is_True(scope_level == 0,
                ("Nonexistent st_tab for level %d", scope_level));
      }
    }

    BE_symtab_free_be_scopes();
    BE_symtab_initialized = FALSE; 
  } 
}


void
Perform_Interprocedural_Optimization (void)
{
  if (IP_File_header.size() == 0) {
    if (IPA_Enable_ipacom) {
      ipa_compile_init ();
      ipacom_doit (NULL);
      exit (RC_SYSTEM_ERROR); // should never reach here
    } else
      Signal_Cleanup (0);
  }

  Set_tlog_phase(PHASE_IPA);

  if (IPA_Enable_ipacom) {
    ipa_compile_init ();
  }

#ifdef TODO
  // should move to analysis phase
  if( IPA_Enable_Feedback ) {
    setup_IPA_feedback();
  }
#endif

  BE_Symtab_Initialize();

  Perform_Interprocedural_Analysis ();
                                // Must be called before any of the output
                                // files are written, since symtab must be
                                // compiled first.
#ifdef Is_True_On
  CGB_IPA_Initialize(IPA_Call_Graph);
#endif

  if (IPA_Enable_AutoGnum)
  	Autognum_Driver ();
  
  if (IPA_Enable_ipacom)
    ipacom_process_symtab (IP_global_symtab_name());

  CXX_MEM_POOL ip_alias_class_mem_pool ("Alias class pool", FALSE);

  // Declare the alias classification object on the stack, but make
  // it globally accessible through the Ip_alias_class global
  // pointer. Declaration of the object as an automatic variable is
  // just so we don't have to worry about constructing the object at
  // program startup time. In the current implementation, this is
  // because we need to have the ip_alias_class_mem_pool initialized
  // when we construct the ip_alias_class object. There are other
  // ways to accomplish it, of course...
  IP_ALIAS_CLASSIFICATION ip_alias_class_instance(ip_alias_class_mem_pool());
  Ip_alias_class = &ip_alias_class_instance;
  if (IPA_Enable_Alias_Class) {
    Ip_alias_class->Init_maps();
  }

#if Is_True_On
  if ( Get_Trace ( TKIND_ALLOC, TP_IPA) ) {
    fprintf ( TFile,
	      "\n%s%s\tMemory allocation information before IPO_main\n%s%s\n",
	      DBar, DBar, DBar, DBar );
    MEM_Trace ();
  }
#endif


//pengzhao
// this chunk of code print the inlining decision like the ecc style
if(Get_Trace(TP_IPA, IPA_TRACE_TUNING))
{
  FILE *orc_script = fopen ("orc_script.log", "w");
		  INT32 callsite_linenum;
		  INT32 callsite_colnum;
		  USRCPOS callsite_srcpos;
    	  char  *caller_filename, *callee_filename;
    	  char  *caller_funcname, *callee_funcname;

  IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
  fprintf(orc_script, "\n#BEGIN_INLINE\n\n");
  
  for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) 
  {

    IPA_NODE* node = cg_iter.Current();
	
    if (node) 
	{

			// Important for the getting WN from edge
	  IPA_NODE_CONTEXT context (node);
	  IPA_Call_Graph->Map_Callsites (node);

	  // get the node-caller's filename
      IP_FILE_HDR& caller_hdr = node->File_Header ();
	  caller_filename = (char *) alloca(strlen(caller_hdr.file_name)+1);
	  strcpy(caller_filename, caller_hdr.file_name);
			
	  fprintf(orc_script, "COMPILE (\"%s\",%s,NOREG) {\n", DEMANGLE(caller_filename), DEMANGLE(IPA_Node_Name(node)));
      BOOL seen_callee = FALSE;

      IPA_SUCC_ITER succ_iter(node);
      for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) 
	  {
		IPA_EDGE* tmp_edge = succ_iter.Current_Edge();
		if(tmp_edge)
		{
		  EDGE_INDEX   tmp_idx = tmp_edge->Edge_Index();
		  WN* call_wn = tmp_edge->Whirl_Node();
		  IPA_NODE* callee =IPA_Call_Graph->Callee( tmp_idx ); 
    	  IP_FILE_HDR& callee_hdr = callee->File_Header ();

    	  if (call_wn == NULL) 
		  {
       			fprintf (orc_script, "Warning: no source line number found for call-edge [%s --> %s]\n", node->Name(), callee->Name());
       	  		callsite_linenum = 0;
				callsite_colnum = -1;

    	  } else 
		  {
      			USRCPOS_srcpos(callsite_srcpos) = WN_Get_Linenum (call_wn);
      			callsite_linenum = USRCPOS_linenum(callsite_srcpos);
				callsite_colnum  = USRCPOS_column(callsite_srcpos);
		  }

  		  callee_filename = (char *) alloca(strlen(callee_hdr.file_name)+1);
		  strcpy(callee_filename, callee_hdr.file_name);
		  
//          if (IPA_NODE* callee =IPA_Call_Graph->Callee( tmp_idx )) 
		  {
			if(IPA_Enable_Inline && tmp_edge->Has_Inline_Attrib () && !callee->Has_Noinline_Attrib())
		    {
              fprintf(orc_script, "  INLINE (%d,%d,\"%s\",%s,NOREG) {\n  }\n",callsite_linenum,callsite_colnum, callee_filename, DEMANGLE(IPA_Node_Name(callee)) );
              seen_callee = TRUE;
            }else // should inline the callee
		    {
//              fprintf(orc_script, "  CALL (%s)\n",IPA_Node_Name(callee) );
              fprintf(orc_script, "  CALL (%d,%d,\"%s\",%s,NOREG)\n",callsite_linenum,callsite_colnum, callee_filename, DEMANGLE(IPA_Node_Name(callee)) );
		  
		    }
//          fprintf(fp, "    %s(%f)->%s (edge_freq = %f, callee_freq = %f)\n", IPA_Node_Name(node),(node->Get_frequency())._value ,IPA_Node_Name(callee), (tmp_edge->Get_frequency())._value, (callee->Get_frequency())._value);
         }
		}// if(tmp_edge)
      }//for all edges

      fprintf(orc_script, "}\n");
    }// if(node)
  }// for all node
  fprintf(orc_script, "\n#END_INLINE\n\n");
  fclose (orc_script);
}
	if(Get_Trace(TP_IPA, IPA_TRACE_TUNING_NEW)) // -tt19:0x80000
	{
	    fprintf(TFile, "\t+++++++++++++++++++++++++++++++++++++++\n");
  	    IPA_Call_Graph->Print_vobose(TFile);
	    fprintf(TFile, "\t+++++++++++++++++++++++++++++++++++++++\n");
	}

  IPO_main (IPA_Call_Graph);

#if Is_True_On
  if ( Get_Trace ( TKIND_ALLOC, TP_IPA) ) {
    fprintf ( TFile,
	      "\n%s%s\tMemory allocation information after IPO_main\n%s%s\n",
	      DBar, DBar, DBar, DBar );
    MEM_Trace ();
  }
#endif

  // Classify the global initialized data after classifying all the
  // code so we get the benefit of all the available function arity
  // information.
  if (IPA_Enable_Alias_Class) {
    Ip_alias_class->
      Classify_initialized_data(Scope_tab[GLOBAL_SYMTAB].inito_tab);
  }

  IP_write_global_symtab();

  if (IPA_Enable_Alias_Class) {
    Perform_Alias_Class_Annotation();
  }

#if Is_True_On
  if ( Get_Trace ( TKIND_ALLOC, TP_IPA) ) {
    fprintf ( TFile,
	      "\n%s%s\tMemory allocation information after alias class annotation\n%s%s\n",
	      DBar, DBar, DBar, DBar );
    MEM_Trace ();
  }
#endif

  Ip_alias_class->Release_resources();
  Ip_alias_class = NULL;

#if Is_True_On
  {
    for (IP_FILE_HDR_TABLE::iterator f = IP_File_header.begin();
         f != IP_File_header.end();
         ++f) {
      Is_True(IP_FILE_HDR_all_procs_processed(*f),
              ("At end of IPA, file header %d has %u PUs, %u processed PUs",
               IP_FILE_HDR_file_name(*f) ? IP_FILE_HDR_file_name(*f) : "***",
               IP_FILE_HDR_num_procs(*f),
               IP_FILE_HDR_num_procs_processed(*f)));
    }
  }
#endif

  BE_Symtab_Finalize();

  if (IPA_Enable_ipacom) {
#ifdef Is_True_On
      CGB_IPA_Terminate();
#endif
      ipacom_doit (IPA_Enable_Opt_Alias ? Ipa_File_Name : NULL);
      exit (RC_SYSTEM_ERROR);		// should never reach here
  } else {
#ifdef Is_True_On
      CGB_IPA_Terminate();
#endif
      kill (getpid (), SIGQUIT);
  } 

  // should never reach here

} // Perform_Interprocedural_Optimization

