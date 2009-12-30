/*
 * Copyright (C) 2009 Advanced Micro Devices, Inc.  All Rights Reserved.
 */

/*
 * Copyright (C) 2007. QLogic Corporation. All Rights Reserved.
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



#include <stdint.h>
#if defined(BUILD_OS_DARWIN)
#include <darwin_elf.h>
#else /* defined(BUILD_OS_DARWIN) */
#include <elf.h>
#endif /* defined(BUILD_OS_DARWIN) */

#include "defs.h"
#include "errors.h"
#include "mempool.h"
#include "tlog.h"                       // Generate_Tlog

#include "cgb.h"                        // CG_BROWSER, CGB_Initialize
#include "cgb_ipa.h"                    // CGB_IPA_{Initialize|Terminate}
#include "ipaa.h"                       // mod/ref analysis
#include "ipa_cg.h"			// IPA_CALL_GRAPH
#include "ipa_cprop.h"			// constant propagation
#include "ipa_inline.h"			// for IPA_INLINE
#include "ipa_option.h"                 // trace options
#include "ipa_pad.h"                    // padding related code
#include "ipa_preopt.h"                 // IPA_Preopt_Finalize
#include "ipa_section_annot.h"          // SECTION_FILE_ANNOT
#include "ipa_section_prop.h"           // IPA_ARRAY_DF_FLOW
#include "ipa_nested_pu.h"              // Build_Nested_Pu_Relations
#include "ipo_tlog_utils.h"		// Ipa_tlog

#include "ipa_chg.h"                    // Class hierarchy graph
#include "ipa_devirtual.h"              // Devirtualization

#include "ipo_defs.h"

extern void (*Preprocess_struct_access_p)(void);
#define Preprocess_struct_access (*Preprocess_struct_access_p)
#include "ipa_reorder.h"

FILE* STDOUT = stdout; 

//-----------------------------------------------------------------------
// NAME: Print_Array_Sections
// FUNCTION: Dump the array sections to the file 'fp'.
//-----------------------------------------------------------------------

static void Print_Array_Sections(const char buffer[])
{
  CG_BROWSER cgb_print;
  CGB_Initialize(&cgb_print, IPA_Call_Graph);
  IPA_NODE_ITER cg_iter(cgb_print.Ipa_Cg(), PREORDER);
  if (Get_Trace(TP_IPA, IPA_TRACE_SECTION_CORRECTNESS)) {
    fprintf(stdout, "%s\n", buffer);
    fprintf(TFile, "%s\n", buffer);
  } 
  if (Get_Trace(TP_PTRACE1, TP_PTRACE1_IPALNO))
    Generate_Tlog("IPA", "Array_Section", (SRCPOS) 0, "", "", "", buffer);
  for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
    IPA_NODE* ipan = cg_iter.Current();
    if (ipan == NULL)
      continue;
    NODE_INDEX v = cgb_print.Find_Vertex(ipan);
    if (v == INVALID_NODE_INDEX)
       continue;
    if (Get_Trace(TP_IPA, IPA_TRACE_SECTION_CORRECTNESS)) { 
      fprintf(stdout, "%s\n", ipan->Name());
      fprintf(TFile, "%s\n", ipan->Name());
    } 
    cgb_print.Set_Cnode(ipan);
    cgb_print.Set_Cvertex(v);
    IPA_NODE_SECTION_INFO* ipas = ipan->Section_Annot();
    SECTION_FILE_ANNOT* ipaf = IP_FILE_HDR_section_annot(ipan->File_Header());
    if (ipas == NULL || ipaf == NULL)
      continue;
    if (Get_Trace(TP_IPA, IPA_TRACE_SECTION_CORRECTNESS)) {
      if (cgb_print.Cnode()->Summary_Proc() != NULL
          && cgb_print.Cnode()->Summary_Proc()->Has_incomplete_array_info())
        fprintf(stdout, "INCOMPLETE ARRAY INFO\n");
      cgb_print.Mod_Ref_Formals(stdout);
      cgb_print.Mod_Ref_Commons(stdout);
      cgb_print.Mod_Ref_Formals(TFile);
      cgb_print.Mod_Ref_Commons(TFile);
    }
    if (Get_Trace(TP_PTRACE1, TP_PTRACE1_IPALNO)) {
      cgb_print.Tlog_Mod_Ref_Formals();
      cgb_print.Tlog_Mod_Ref_Commons();
    }
  }
}


extern void IPA_struct_opt_legality (void);

extern void IPA_identify_no_return_procs(void);

//-------------------------------------------------------------------------
// the main analysis phase at work! 
//-------------------------------------------------------------------------
void
Perform_Interprocedural_Analysis ()
{
    BOOL has_nested_pu = FALSE;
    BOOL run_autopar = FALSE;

    MEM_POOL_Popper pool (MEM_phase_nz_pool_ptr);

    if(IPA_Enable_Reorder)
		Init_merge_access();//field reorder

    // read PU infos, update summaries, and process globals
    for (UINT i = 0; i < IP_File_header.size(); ++i) {
      IPA_Process_File (IP_File_header[i]);
      if (IP_FILE_HDR_has_nested_pu(IP_File_header[i]))
	  has_nested_pu = TRUE;
      if (IP_FILE_HDR_file_header(IP_File_header[i])->Run_AutoPar())
          run_autopar = TRUE;
    }

    if ( Get_Trace ( TP_IPA,IPA_TRACE_TUNING_NEW ) && IPA_Enable_Reorder ) {
      fprintf ( TFile,
	       "\n%s%s\tstruct_access info after merging\n%s%s\n",
	       DBar, DBar, DBar, DBar );
      print_merged_access ();
    }

    if (run_autopar) {
/*      // enable multi_cloning and preopt for parallelization analysis
      if (!IPA_Max_Node_Clones_Set) {
        IPA_Max_Node_Clones = 5; // default number of clones per PU
      }
      if (!IPA_Enable_Preopt_Set) {
        IPA_Enable_Preopt = TRUE;
      }
*/
    }
    else {
      // array section analysis is done only with -ipa -pfa
      IPA_Enable_Array_Sections = FALSE;
    }
    
    if (IPA_Enable_Padding || IPA_Enable_Split_Common) {
	Temporary_Error_Phase ephase ("IPA Padding Analysis");
	if (Verbose) {
	    fprintf (stderr, "Common blocks padding/split analysis ...");
	    fflush (stderr);
	}
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Padding/Split analysis begins>>>\n");
	Padding_Analysis (IP_File_header.size());
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Padding/Split analysis completed>>>\n");
    }

    // create and build a  call graph 
    {
	Temporary_Error_Phase ephase ("IPA Call Graph Construction");

	if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
	    fprintf ( TFile,
		      "\n%s%s\tMemory allocation information before Build_call_graph\n%s%s\n",
		      DBar, DBar, DBar, DBar );
	    MEM_Trace ();
	}
	
	if (Verbose) {
	    fprintf (stderr, "Building call graphs ...");
	    fflush (stderr);
	}
    
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Call Graph Construction begins>>>\n");
	
	Build_Call_Graph ();

	if(Get_Trace(TP_IPA, IPA_TRACE_TUNING)) // -tt19:0x40000
	{
  	  FILE *tmp_call_graph = fopen("cg_dump.log", "w");

	  if(tmp_call_graph != NULL)
	  {	  
	    fprintf(tmp_call_graph, "\t+++++++++++++++++++++++++++++++++++++++\n");
  	    IPA_Call_Graph->Print_vobose(tmp_call_graph);
	    fprintf(tmp_call_graph, "\t+++++++++++++++++++++++++++++++++++++++\n");
	  }
	  fclose(tmp_call_graph);
	}

        {
          IPA_NODE_ITER cg_iter(IPA_Call_Graph, POSTORDER);
	  // Traverse the call graph and mark C++ nodes as PU_Can_Throw
	  // appropriately.
          for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next())
	  {
	    if (!IPA_Enable_EH_Region_Removal && !IPA_Enable_Pure_Call_Opt)
	    	break;

	    IPA_NODE * node = cg_iter.Current();
	    if (!node)	continue;

	    if (node->PU_Can_Throw() ||
	        node->Summary_Proc()->Has_side_effect())
	    { // Mark its callers appropriately
	    	IPA_PRED_ITER preds (node->Node_Index());
		for (preds.First(); !preds.Is_Empty(); preds.Next())
		{
		    IPA_EDGE * edge = preds.Current_Edge();
		    if (edge)
		    {
			IPA_NODE * caller = IPA_Call_Graph->Caller (edge);

			PU caller_pu = Pu_Table[ST_pu((caller)->Func_ST())];
			if (IPA_Enable_EH_Region_Removal &&
			    node->PU_Can_Throw() &&
			    PU_src_lang (caller_pu) & PU_CXX_LANG)
		    	  caller->Set_PU_Can_Throw();

		        if (node->Summary_Proc()->Has_side_effect())
			  caller->Summary_Proc()->Set_has_side_effect();
		    }
		}
	    }
	  }

    	  if (IPA_Enable_Source_PU_Order || Opt_Options_Inconsistent)
	    for (UINT i = 0; i < IP_File_header.size(); ++i)
	    { // Store the file-id in each IPA_NODE
	      Mark_PUs_With_File_Id (IP_FILE_HDR_pu_list (IP_File_header[i]), i);
	    }
        }

	// INLINING TOOL
	if (INLINE_Enable_Script) {
	        fprintf (stdout, "inline script not implemented\n");
		exit (1);
	}
        // INLINING TOOL END
	
	if (has_nested_pu) {
	    Build_Nested_Pu_Relations();
	    if (Verbose) {
		fprintf (stderr, "Building Nested PU Relations...");
		fflush (stderr);
	    }
	}
    }
    
#if defined(Is_True_On)
    CGB_IPA_Initialize(IPA_Call_Graph);
#endif

    Ipa_tlog( "Must Inline", 0, "Count %d", Total_Must_Inlined);
    Ipa_tlog( "Must Not-Inline", 0, "Count %d", Total_Must_Not_Inlined);

    if (Trace_IPA || Trace_Perf)
	fprintf (TFile, "\t<<<Call Graph Construction completed>>>\n");

#if defined(TODO)
    if (IPA_Enable_daVinci) {
	cg_display = (daVinci *)
	    CXX_NEW (daVinci (IPA_Call_Graph->Graph (), Malloc_Mem_Pool),
		     Malloc_Mem_Pool); 

	cg_display->Translate_Call_Graph ();
    }
#endif // TODO
    
    if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
      fprintf ( TFile,
	       "\n%s%s\tMemory allocation information after "
	       "Build_call_graph\n%s%s\n",
	       DBar, DBar, DBar, DBar );
      MEM_Trace ();
    }

    // This is where we do the partitioning and looping through the
    // different partition to do the analysis

    if ((IPA_Enable_SP_Partition && (IPA_Space_Access_Mode == SAVE_SPACE_MODE))
	|| IPA_Enable_GP_Partition) {
        // This is where we do the partitioning and build the partitioning
	// data structure if necessary
	// In the partitioning algorithm, it should for each IPA_NODE
	// 1) tag with a partition group, using Set_partition_group()
	// 2) whether it is INTERNAL to the partition using Set_partition_internal()
	// then for each DEFINED external DATA symbol,
	// 1) tag whether it is INTERNAL
	// 2) whether it is gp-relative
	//
	// to that partition.  The partitioning algorithm should take
	// into account whether it is doing partitioning for
	// solving 1) space problem(IPA_Enable_SP_Partition)
	//  or 2) multigot problem(IPA_Enable_GP_Partition)
	// 
	// Also, something new:
	// pobj->ipa_info.gp_status & pobj->ipa_info.partition_grp needs
	// to be set here for each object being looked at also
    }

    // need by ipa_inline
    Total_Prog_Size = Orig_Prog_Weight;

    MEM_POOL_Push (MEM_local_nz_pool_ptr);

    if (IPA_Enable_DVE || IPA_Enable_CGI) {
	Temporary_Error_Phase ephase ("IPA Global Variable Optimization");
	if (Verbose) {
	    fprintf (stderr, "Global Variable Optimization ...");
	    fflush (stderr);
	}
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Global Variable Optimization begins>>>\n");
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
                setup_IPA_feedback_phase();
	    fprintf(IPA_Feedback_dve_fd,
                        "\nDEAD VARIABLES (defined but not used)\n\n");
        }
#endif
	extern void Optimize_Global_Variables ();
	Optimize_Global_Variables ();                                              
	
	if (Trace_IPA || Trace_Perf)
	    fprintf  (TFile,
		      "\t<<<Global Variable Optimization completed>>>\n");
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
                cleanup_IPA_feedback_phase ();
                fflush(IPA_Feedback_dve_fd);
        }
#endif
    }

    if(IPA_Enable_Reorder && !merged_access->empty())
		IPA_reorder_legality_process(); 	

    if (IPA_Enable_Struct_Opt)
        IPA_struct_opt_legality();

    //  mark all unreachable nodes that are either EXPORT_LOCAL (file
    //  static) or EXPORT_INTERNAL *AND* do not have address taken as
    // "deletable".  Functions that are completely inlined to their
    //  callers are taken care of later.
    if (IPA_Enable_DFE) {
	Temporary_Error_Phase ephase ("IPA Dead Functions Elimination");
	if (Verbose) {
	    fprintf (stderr, "Dead functions elimination ...");
	    fflush (stderr);
	}
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
            //
            // Functions completely inlined to their callers are handled in
            // routine Perform_inlining (ipa_inline.cxx) and are not marked
            // deletable until then. Thus the dfe info presented here does
            // represent truly dead source.
            //
            setup_IPA_feedback_phase();
	    fprintf(IPA_Feedback_dfe_fd,
                        "\nDEAD FUNCTIONS (but not due to inlining)\n\n");
        }
#endif
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Dead Functions Elimination begins>>>\n");
	Total_Dead_Function_Weight = Eliminate_Dead_Func ();
	Total_Prog_Size = Orig_Prog_Weight - Total_Dead_Function_Weight;
	if (Trace_IPA || Trace_Perf)
	     fprintf (TFile, "\t<<<Dead Functions Elimination completed>>>\n");
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
                cleanup_IPA_feedback_phase ();
                fflush(IPA_Feedback_dfe_fd);
        }
#endif
    }

/*
on virtual function optimization pass:
The virtual function optimization pass is invoked here 
in ipa_main.cxx Perform_Interprocedural_Analysis function after
Build_Call_Graph.
this is the psuedo code that describes where the optimization must be 
placed.
Perform_Interprocedural_Analysis() { // ipa/main/analyze/ipa_main.cxx
    ... // Need to have built the call graph prior to my pass
    Build_Call_Graph ();
    ...
        // Note 1: We need a call graph prior to making this function call
        // Note 2: Uncommenting the following function: IPA_fast_static_analysis_VF
        // may lead to unknown behavior.
        // if you want to disable virtual function optimization,
        // use the BOOL variable in config/config_ipa.cxx,
        // IPA_Enable_fast_static_analysis_VF. Set it to FALSE to disable 
        // the pass.
    IPA_fast_static_analysis_VF () ; //  ipa/main/analyze/ipa_devirtual.cxx 

    ...
}
*/

#if !defined(_STANDALONE_INLINER) && !defined(_LIGHTWEIGHT_INLINER)
    if (IPA_Enable_Fast_Static_Analysis_VF == TRUE) {
        IPA_Fast_Static_Analysis_VF ();
    }
#endif // !(_STANDALONE_INLINER) && !(_LIGHTWEIGHT_INLINER)
    // Devirtualization using IPA_Enable_Devirtualization enabled path is not used from open64 4.2.2-1. Please use IPA_Enable_Fast_Static_Analysis_VF enabled path for understanding devirtualization.

    if (IPA_Enable_Devirtualization) { 
        Temporary_Error_Phase ephase ("IPA Devirtualization"); 
        IPA_Class_Hierarchy = Build_Class_Hierarchy(); 
        IPA_devirtualization(); 
    } 

    if ( IPA_Enable_Simple_Alias ) {
      Temporary_Error_Phase ephase ("Interprocedural Alias Analysis");
      if (Verbose) {
	  fprintf (stderr, "Alias analysis ...");
	  fflush (stderr);
      }

      IPAA ipaa(NULL);
      ipaa.Do_Simple_IPAA ( *IPA_Call_Graph );

      if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
	fprintf ( TFile,
		 "\n%s%s\tMemory allocation information after IPAA\n%s%s\n",
		 DBar, DBar, DBar, DBar );
	MEM_Trace ();
      }
    }
    else {
      // Common block constants and aggresive node cloning
      // can only be done when alias information is available
      IPA_Enable_Cprop = FALSE;
      IPA_Enable_Common_Const = FALSE;
      IPA_Max_Node_Clones = 0;
    }

    // Propagate information about formal parameters used as 
    // symbolic terms in array section summaries.
    // This information will later be used to trigger cloning.
    if (IPA_Enable_Array_Sections &&
        IPA_Max_Node_Clones > 0   && 
        IPA_Max_Clone_Bloat > 0) {

      Temporary_Error_Phase ephase ("IPA Cloning Analysis");
      if (Verbose) {
        fprintf (stderr, "Cloning Analysis ...");
        fflush (stderr);
      }
      if (Trace_IPA || Trace_Perf) {
	fprintf (TFile, "\t<<<Analysis of formals for cloning begins>>>\n");
      }

      IPA_FORMALS_IN_ARRAY_SECTION_DF clone_df(IPA_Call_Graph, 
                                               BACKWARD,
                                               MEM_local_nz_pool_ptr);
      clone_df.Init();
      clone_df.Solve();

      if (Get_Trace(TP_IPA, IPA_TRACE_CPROP_CLONING)) {
        clone_df.Print(TFile);
      }
      if (Trace_IPA || Trace_Perf) {
	fprintf (TFile, "\t<<<Analysis of formals for cloning ends>>>\n");
      }
    }


    // solve interprocedural constant propagation     
    if (IPA_Enable_Cprop) {
      Temporary_Error_Phase ephase ("IPA Constant Propagation");

      if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
	fprintf ( TFile,
		 "\n%s%s\tMemory allocation information before IP constant propagation\n%s%s\n",
		 DBar, DBar, DBar, DBar );
	MEM_Trace ();
      }

      if (Verbose) {
	fprintf (stderr, "Constant propagation ...");
	fflush (stderr);
      }
      if (Trace_IPA || Trace_Perf)
	fprintf (TFile, "\t<<<Constant Propagation begins>>>\n");

      MEM_POOL_Initialize (&Ipa_cprop_pool, "cprop pool", 0);

      // Set the upper limit for the total number of clone nodes 
      IPA_Max_Total_Clones = 
	(GRAPH_vcnt(IPA_Call_Graph->Graph()) * IPA_Max_Clone_Bloat) / 100;

      if (IPA_Enable_Common_Const) {
        static BOOL global_cprop_pool_inited = FALSE;
        if (!global_cprop_pool_inited) {
          MEM_POOL_Initialize(&Global_mem_pool, "global_cprop_mem_pool", 0);
          MEM_POOL_Push (&Global_mem_pool);
          global_cprop_pool_inited = TRUE;
        }
	MEM_POOL_Initialize(&local_cprop_pool, "local_cprop_mem_pool", 0);
	MEM_POOL_Push(&local_cprop_pool);
      }

      IPA_CPROP_DF_FLOW df (FORWARD, MEM_local_nz_pool_ptr);

      df.Init();   // initialize the annotations
      df.Solve();  // solve the data flow problem


      // Convert quasi clones into real ones
      IPA_NODE_ITER cg_iter(IPA_Call_Graph, POSTORDER);
      for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
        IPA_NODE* node = cg_iter.Current();
        if (node && node->Is_Quasi_Clone()) {
          IPA_Call_Graph->Quasi_To_Real_Clone(node);
        }
      }
      if (Get_Trace(TP_IPA, IPA_TRACE_CPROP_CLONING)) {
        IPA_Call_Graph->Print(TFile);
      }
    
    
      if (IPA_Enable_Common_Const) {
        MEM_POOL_Pop(&local_cprop_pool);
        MEM_POOL_Delete(&local_cprop_pool);
      }
	
      // in the process perform cloning
      if (Trace_IPA || Trace_Perf) {
        df.Print(TFile);
        fprintf(TFile, "Constant Count = %d \n", IPA_Constant_Count);
        fprintf (TFile,"\t<<<Constant Propagation ends>>>\n");
      }
      Ipa_tlog( "Cprop", 0, "Count %d", IPA_Constant_Count);

#if defined(TODO)
      // check for IPA:feedback=ON - get constant info if so
      if( IPA_Enable_Feedback ) {
        fprintf(IPA_Feedback_con_fd,"\nCONSTANTS FOUND\n\n");
        df.Print(IPA_Feedback_con_fd);
        fflush(IPA_Feedback_con_fd);
      }
#endif // TODO

      if (WN_mem_pool_ptr == &Ipa_cprop_pool) 
	WN_mem_pool_ptr = NULL;
      MEM_POOL_Delete (&Ipa_cprop_pool);

      if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
        fprintf ( TFile,
                  "\n%s%s\tMemory allocation information after IP constant propagation\n%s%s\n",
                  DBar, DBar, DBar, DBar );
        MEM_Trace ();
      }
    }

    if (IPA_Enable_Preopt)
      Preprocess_struct_access();

    // Call preopt on each node if requested
    if (IPA_Enable_Preopt_Set && IPA_Enable_Preopt) {
      IPA_NODE_ITER cg_iter(IPA_Call_Graph, POSTORDER);
      for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
        if (IPA_NODE* node = cg_iter.Current()) {
          IPA_Preoptimize(node);
        }
      }
    }

    MEM_POOL_Pop (MEM_local_nz_pool_ptr);

    // solve interprocedural array section analysis
    if (IPA_Enable_Array_Sections) {

      Temporary_Error_Phase ephase ("IPA Array Section Analysis");
      if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
	fprintf ( TFile,
		 "\n%s%s\tMemory allocation information before IP array section propagation \n%s%s\n", DBar, DBar, DBar, DBar );
	MEM_Trace ();
      }
      if (Verbose) {
	fprintf (stderr, "Array Section analysis ...");
	fflush (stderr);
      }
      if (Trace_IPA || Trace_Perf) {
	fprintf (TFile, "\t<<<Array section propagation begins>>>\n");
      }
      
      MEM_POOL_Push (MEM_local_nz_pool_ptr);

      IPA_ARRAY_DF_FLOW array_df (IPA_Call_Graph, 
                                  BACKWARD, 
                                  MEM_local_nz_pool_ptr);

      array_df.Init();   // initialize the annotations
      Print_Array_Sections("BEFORE PROPAGATION:");

      array_df.Solve();  // solve the data flow problem
      Print_Array_Sections("AFTER PROPAGATION:");

      if (Trace_IPA || Trace_Perf) {
	fprintf (TFile,"\t<<<Array section propagation ends>>>\n");
      }

      MEM_POOL_Pop (MEM_local_nz_pool_ptr);

      if ( Get_Trace ( TKIND_ALLOC, TP_IPA ) ) {
	fprintf ( TFile,
               "\n%s%s\tMemory allocation information after IP array section propagation \n%s%s\n",
               DBar, DBar, DBar, DBar );
	MEM_Trace ();
      }
    }

    if (IPA_Enable_Preopt) {
      IPA_Preopt_Finalize();
    }
 
    // solve interprocedural inlining
    if (IPA_Enable_Inline || IPA_Enable_DCE) {

	MEM_POOL_Popper inline_pool (MEM_local_nz_pool_ptr);
	
        if (Verbose) {
            fprintf (stderr, "Inlining analysis ...");
            fflush (stderr);
        }

	Temporary_Error_Phase ephase ("IPA Inlining Analysis");
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "\t<<<Inlining analysis begins>>>\n");
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
            setup_IPA_feedback_phase();
            fprintf(IPA_Feedback_prg_fd,"\nINLINING FAILURE INFO\n\n");
        }
#endif
	Perform_Inline_Analysis (IPA_Call_Graph, inline_pool.Pool());

	if (Trace_IPA || Trace_Perf) {
	    fprintf (TFile, "\n\tTotal code expansion = %d%%, total prog WHIRL size = 0x%x \n",
		     Orig_Prog_Weight == 0 ? 0 : (Total_Prog_Size - (INT) Orig_Prog_Weight) * 100 / (INT) Orig_Prog_Weight,
		     Total_Prog_Size);
	    fprintf (TFile, "\t<<<Inlining analysis completed>>>\n");
	}
#if defined(TODO)
        if( IPA_Enable_Feedback ) {
                cleanup_IPA_feedback_phase ();
                fflush(IPA_Feedback_prg_fd);
        }
#endif // TODO

	Ipa_tlog( "Inline", 0, "Count %d", Total_Inlined);
	Ipa_tlog( "Not-Inline", 0, "Count %d", Total_Not_Inlined);
    }

    /* print the call graph */
#if defined(Is_True_On)
    CGB_IPA_Terminate();
#endif

   IPA_identify_no_return_procs();
}
