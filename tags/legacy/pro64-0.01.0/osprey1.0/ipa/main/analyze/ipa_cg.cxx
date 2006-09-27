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
// Module: ipa_cg.cxx
//
// Revision history:
//  19-Oct-94 - Original Version
//
// Description:
//
// Implementation of the callgraph used in IPA's analysis and
// optimization phases.  
//
// ====================================================================
// ====================================================================

#include <elf.h>
#include <sys/elf_whirl.h>
#include <alloca.h>
#include <hash_map.h>
#include <sys/types.h>

#include "defs.h"
#include "erglob.h"			// error message strings
#include "mempool.h"			// memory pools
#include "cxx_memory.h"			// CXX_NEW, etc.
#include "wn.h"				// whirl definitions
#include "wn_util.h"                    // WN_ITER
#include "dwarf_DST.h"			// for DST_IDX
#include "pu_info.h"			// PU_Info
#include "ir_bread.h"			// WN_get_section_base ()
#include "region_util.h"		// for WN_Fake_Call_EH_Region

#include "ipc_file.h"			// file header defs.
#include "ipc_symtab_merge.h"		// Aux_XX_Tables
#include "ipc_option.h"         	// -INLINE options
#include "ipc_bread.h"			// IP_READ_*
#include "ipa_cprop_annot.h"            // Edges_Have_Equiv_Cprop_Annots
#include "ipa_feedback.h"		// feedback related types
#include "ipa_option.h"			// option flags
#include "ipa_summary.h"		// IPA_get_*
#include "ipa_section.h"                // IVAR
#include "ipo_parent.h"			// WN_Parentize
#include "ipo_clone.h"                  // IPO_Clone
#include "ipo_defs.h"                   // IPA_NODE_CONTEXT
#include "ipaa.h"			// IPAA_NODE_INFO

#include "ipa_nested_pu.h"
#include "ipa_cg.h"


IPA_CALL_GRAPH* IPA_Call_Graph;     // "The" call graph of IPA
BOOL IPA_Call_Graph_Built = FALSE;

typedef hash_map<NODE_INDEX, NODE_INDEX> ALT_ENTRY_MAP;
ALT_ENTRY_MAP *alt_entry_map;		// map from alt entry to base entry

UINT32 Total_Dead_Function_Weight = 0;
UINT32 Orig_Prog_Weight = 0;

INT Total_Must_Inlined = 0;
INT Total_Must_Not_Inlined = 0;
FB_FREQ Total_call_freq(0);
FB_FREQ Total_cycle_count(0);

//-----------------------------------------------------------------------
// NAME: Main_Entry
// FUNCTION: Return the main entry point for the possible alternate entry
//   'ipan_alt'.  
//-----------------------------------------------------------------------

extern IPA_NODE* Main_Entry(IPA_NODE* ipan_alt)
{
  if (alt_entry_map == NULL)
    return ipan_alt; 
  NODE_INDEX alt_entry_index = INVALID_NODE_INDEX;
  if (ipan_alt->Summary_Proc()->Is_alt_entry()) {
    NODE_INDEX v = ipan_alt->Node_Index();
    ALT_ENTRY_MAP::iterator iter = alt_entry_map->find(v);
    if (iter != alt_entry_map->end())
      alt_entry_index = (*iter).second;
  } 
  if (alt_entry_index == INVALID_NODE_INDEX)
    return ipan_alt;
  return IPA_Call_Graph->Graph()->Node_User(alt_entry_index);  
} 


#ifndef _LIGHTWEIGHT_INLINER

// ---------------------------------------------------------------
// Update summary ST_IDX's so that they point to the merged symtab
// ---------------------------------------------------------------
void
IPA_update_summary_st_idx (const IP_FILE_HDR& hdr)
{
  const IPC_GLOBAL_IDX_MAP* idx_maps = IP_FILE_HDR_idx_maps(hdr);
  INT i;

  // process all global ST_IDXs found in SUMMARY_SYMBOLs
  INT32 num_symbols;
  SUMMARY_SYMBOL* symbols = IPA_get_symbol_file_array(hdr, num_symbols);
  for (i = 0; i < num_symbols; ++i) {
    // a summary symbol can have two ST_IDXs:
    // one for the symbol itself 
    ST_IDX old_st_idx = symbols[i].St_idx();
    if (ST_IDX_level(old_st_idx) == GLOBAL_SYMTAB) {
      symbols[i].Set_st_idx(idx_maps->st[old_st_idx]);
    }
    // and the other for the parent function
    ST_IDX old_func_st_idx = symbols[i].Get_st_idx_func();
    if (ST_IDX_level(old_func_st_idx) == GLOBAL_SYMTAB) {
      symbols[i].Set_st_idx_func(idx_maps->st[old_func_st_idx]);
    }
  }
  
  // process all global ST_IDXs found in SUMMARY_VALUEs
  INT32 num_values; 
  SUMMARY_VALUE* values = IPA_get_value_file_array(hdr, num_values);
  for (INT j = 0; j < num_values; ++j) {
    if (values[j].Is_const_st()) {
      ST_IDX old_const_st_idx = values[j].Get_const_st_idx();
      if (ST_IDX_level(old_const_st_idx) == GLOBAL_SYMTAB) {
        values[j].Set_const_st_idx(idx_maps->st[old_const_st_idx]);
        values[j].Set_merged_const_st_idx();
      }
    } else if (values[j].Is_global () &&
	       values[j].Get_global_index () == -1) {
      ST_IDX old_global_st_idx = values[j].Get_global_st_idx ();
      if (ST_IDX_index (old_global_st_idx) != 0) {
	values[j].Set_global_st_idx (idx_maps->st[old_global_st_idx]);
      }
    }
  }

  // process all TY_IDXs found in SUMMARY_FORMALs
  INT32 num_formals;
  SUMMARY_FORMAL* formals = IPA_get_formal_file_array(hdr, num_formals);
  for (i = 0; i < num_formals; ++i) {
    TY_IDX old_ty_idx = formals[i].Get_ty();
    if (old_ty_idx) {
      formals[i].Set_ty(idx_maps->ty[old_ty_idx]);
    }
  }
  
  // process all TY_IDXs found in SUMMARY_ACTUALs
  INT32 num_actuals;
  SUMMARY_ACTUAL* actuals = IPA_get_actual_file_array(hdr, num_actuals);
  for (i = 0; i < num_actuals; ++i) {
    TY_IDX old_ty_idx = actuals[i].Get_ty();
    if (old_ty_idx) {
      actuals[i].Set_ty(idx_maps->ty[old_ty_idx]);
    }
  }
  
  // process all ST_IDXs found in IVARs
  INT32 num_ivars;
  IVAR* ivars = IPA_get_ivar_file_array(hdr, num_ivars);
  for (i = 0; i < num_ivars; ++i) {
    if (!ivars[i].Is_Formal()) {
      Is_True(ST_IDX_level(ivars[i].St_Idx()) == GLOBAL_SYMTAB,
              ("Non-formal IVAR must have a global ST in IPA"));
      ivars[i].Set_St_Idx(idx_maps->st[ivars[i].St_Idx()]);
    }
  }
  
}
#endif // !_STANDALONE_INLINER

#if (defined(_STANDALONE_INLINER) || defined(_LIGHTWEIGHT_INLINER))
#include "inline.h"
#else // _STANDALONE_INLINER

//-------------------------------------------------------------------------
// process globals
//-------------------------------------------------------------------------
static void
IPA_process_globals (const IP_FILE_HDR& hdr)
{
    INT32 sym_size;
    SUMMARY_SYMBOL *Symbol_array = IPA_get_symbol_file_array (hdr, sym_size);
    INT32 glob_size;
    SUMMARY_GLOBAL *Globals_array = IPA_get_global_file_array(hdr, glob_size);

    if (glob_size == 0 || sym_size == 0)
	return;

    for (INT i = 0; i < glob_size; ++i) {
	SUMMARY_GLOBAL *gnode = &Globals_array[i];

	if (gnode->Get_refcount() || gnode->Get_modcount()) {
	    SUMMARY_SYMBOL *snode = &Symbol_array[gnode->Get_symbol_index()];
	    ST_IDX st_idx = snode->St_idx ();
	    Update_reference_count (&St_Table[st_idx],
				    gnode->Get_refcount (),
				    gnode->Get_modcount (),
				    snode->Is_cmod ());
	}
    }
} // IPA_process_globals

// ---------------------------------------------------------
// Mark STs of common blocks that are passed to I/O routines
// Since we don't analyze I/O items precisely, we cannot 
// propagate potential constants from thoe common blocks.
// ---------------------------------------------------------
static void
IPA_mark_commons_used_in_io (const IP_FILE_HDR& hdr)
{
  INT32 num_symbols;
  SUMMARY_SYMBOL* symbol = IPA_get_symbol_file_array(hdr, num_symbols);
  for (INT i = 0; i < num_symbols; ++i, ++symbol) {
    if (symbol->Is_common_block() && symbol->Common_read_no_cprop()) {
      Set_AUX_ST_flags (Aux_St_Table[symbol->St_idx()], COMMON_USED_IN_IO);
    }
  }
}

//-------------------------------------------------------------------------
// for each file record the file offset for the whirl section and the 
// symtab section and update the is_written flag when needed
//-------------------------------------------------------------------------
void
IPA_Process_File (IP_FILE_HDR& hdr)
{
  IP_READ_pu_infos (hdr);

  IPA_update_summary_st_idx (hdr);

  if (IPA_Enable_AutoGnum || IPA_Enable_CGI || IPA_Enable_DVE)
    IPA_process_globals (hdr);

  if (IPA_Enable_Common_Const)
    IPA_mark_commons_used_in_io (hdr);

} // IPA_process_file


#endif // !_STANDALONE_INLINER

static void
Mark_inline_overrides(IPA_NODE* ipa_node, ST* st)
{
    UINT info = User_Specified_Name_Info(ST_name(st));

    if (Is_User_Not_Specified(info)) {
	if ((ipa_node->Summary_Proc()->Get_lang() == LANG_F77) ||
            (ipa_node->Summary_Proc()->Get_lang() == LANG_F90)) {
	    // For FORTRAN
	    // look for the string name with without an underbar in it
 	    int lastchar = strlen(ST_name(st)) - 1;
	    if (ST_name(st)[lastchar] != '_')
		return;
	    char *newname = strdup(ST_name(st));
	    newname[lastchar] = '\0';
	    info = User_Specified_Name_Info(newname);
	    free(newname);
	    if (Is_User_Not_Specified(info))
		return;
	}
	else
	    return;
    }

    // Find the the item
    if (Is_User_Must_Inline(info)) {
	ipa_node->Set_Must_Inline_Attrib();
	Total_Must_Inlined++;
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "%s marked \"must inlined\"\n", DEMANGLE(ST_name(st)));
    }
    else if (Is_User_No_Inline(info)) {
	ipa_node->Set_Noinline_Attrib();
	Total_Must_Not_Inlined++;
 	if (Trace_IPA || Trace_Perf)
           fprintf (TFile, "%s marked \"no inlined\"\n", DEMANGLE (ST_name(st)));
    }
}


static void
Mark_inline_edge_overrides(IPA_EDGE* ipa_edge)
{
    IPA_NODE* caller = IPA_Call_Graph->Caller(ipa_edge->Edge_Index());
    IPA_NODE* callee = IPA_Call_Graph->Callee(ipa_edge->Edge_Index());

    if ((ipa_edge->Edge_Index() > INLINE_Skip_After) ||
		(ipa_edge->Edge_Index() < INLINE_Skip_Before)) {
	ipa_edge->Set_Noinline_Attrib();
	Total_Must_Not_Inlined++;
 	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "%s marked \"no inlined\" into %s\n", DEMANGLE(callee->Name()), DEMANGLE(caller->Name()));
    }

    UINT info = User_Specified_Edge_Info(ipa_edge->Edge_Index());

    if (Is_User_Not_Specified(info)) {
	return;
    }

    // Find the the item
    if (Is_User_Must_Inline(info)) {
	ipa_edge->Set_Must_Inline_Attrib();
	Total_Must_Inlined++;
	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "%s marked \"must inlined\" into %s\n", DEMANGLE(callee->Name()), DEMANGLE(caller->Name()));
    }
    else if (Is_User_No_Inline(info)) {
	ipa_edge->Set_Noinline_Attrib();
	Total_Must_Not_Inlined++;
 	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "%s marked \"no inlined\" into %s\n", DEMANGLE(callee->Name()), DEMANGLE(caller->Name()));
    }
}

IPA_NODE* 
Add_One_Node (IP_FILE_HDR& s, INT32 file_idx, INT i, NODE_INDEX& orig_entry_index)
{

    IPA_NODE *ipa_node = NULL;
    INT32 size;
    SUMMARY_PROCEDURE *Proc_array = IPA_get_procedure_file_array (s, size);
    UINT32 sindex = Proc_array[i].Get_symbol_index();

    INT32 sym_size;
    SUMMARY_SYMBOL* sym_array = IPA_get_symbol_file_array(s, sym_size);
    Is_True (sym_array != NULL, ("Missing SUMMARY_SYMBOL section"));
	
    SUMMARY_SYMBOL& sum_symbol = sym_array[sindex];

    ST_IDX st_idx = sum_symbol.St_idx ();

    FmtAssert (ST_IDX_level (st_idx) == GLOBAL_SYMTAB,
		("Invalid ST_IDX for procedure"));
	
    ST* st = &St_Table[st_idx];

#if (defined(_STANDALONE_INLINER) || defined(_LIGHTWEIGHT_INLINER))

    NODE_INDEX node_idx = AUX_PU_node(Aux_Pu_Table[ST_pu(st)]);
    if (node_idx != INVALID_NODE_INDEX) // Already has this node, 
					// node is multiply defined
	return ipa_node;

#endif // _STANDALONE_INLINER

#if (!defined(_STANDALONE_INLINER) && !defined(_LIGHTWEIGHT_INLINER))

    // symbol resolution should have set the NOT_USED bit of duplicated
    // PUs

    if (AUX_PU_file_hdr (Aux_Pu_Table[ST_pu (st)]) != &s) {
	Is_True (ST_export (st) != EXPORT_LOCAL &&
		     ST_export (st) != EXPORT_LOCAL_INTERNAL,
		     ("Multiply defined symbols should not be EXPORT_LOCAL"));
	    
	/* handle the case where there is multiply defined symbols and
	 * this is the definition that the linker has chosen to ignored
	 */

	if (Trace_IPA || Trace_Perf)
	    fprintf (TFile, "%s from %s deleted (multiply defined"
			 " procedure)\n",
			 DEMANGLE (ST_name (st)), IP_FILE_HDR_file_name(s));

	Delete_Function_In_File (s, i);

	if (Proc_array[i].Has_alt_entry()) {
	    while (i + 1 < size) {
		if (Proc_array[i+1].Is_alt_entry()) {
		    Delete_Function_In_File (s, i+1);
		    i++;
		} else
		    break;
	    }	
	}
	return ipa_node;
    }

#endif // _STANDALONE_INLINER 
		
    ipa_node = 
          IPA_Call_Graph->Add_New_Node (st, file_idx, i, i);

    NODE_INDEX cg_node = ipa_node->Node_Index ();
	
    Set_AUX_PU_node (Aux_Pu_Table[ST_pu (st)], cg_node);

#if (defined(_STANDALONE_INLINER) || defined(_LIGHTWEIGHT_INLINER))
    ipa_node->Set_Scope(Inliner_Aux_Pu_Table[ST_pu (st)]);
#endif // _STANDALONE_INLINER

#if (!defined(_STANDALONE_INLINER) && !defined(_LIGHTWEIGHT_INLINER))
    if (IPA_Enable_DFE || IPA_Enable_Picopt || IPA_Enable_Array_Sections
	    || IPA_Enable_Relocatable_Opt) {
        if (Proc_array[i].Has_alt_entry()) {
	    orig_entry_index = cg_node;
	} else if (Proc_array[i].Is_alt_entry()) {
	    if (alt_entry_map == NULL)
		alt_entry_map = CXX_NEW (ALT_ENTRY_MAP(), Malloc_Mem_Pool);
	    (*alt_entry_map)[cg_node] = orig_entry_index;
                // Set the EXPORT Class of this alternate entry point to
                // be the same as that of its corresponding main entry point
                ST* orig_st = IPA_Call_Graph->Graph()->Node_User(orig_entry_index)->Func_ST();
                if (ST_export(orig_st) > ST_export(st))
                    Set_ST_export(st, ST_export(orig_st));
	} else {
	    orig_entry_index = INVALID_NODE_INDEX;
	}
    }

    static BOOL reported = FALSE;
    if (!reported) {
	DevWarn ("TODO: support GP and call graph partitioning");
	reported = TRUE;
    }

#endif // _STANDALONE_INLINER

    Orig_Prog_Weight += ipa_node->Weight ();

    if ((ipa_node->Summary_Proc()->Get_lang() == LANG_F77) ||
	    (ipa_node->Summary_Proc()->Get_lang() == LANG_F90))
     	IPA_Has_Fortran = TRUE;


#ifdef TODO

#ifndef _STANDALONE_INLINER
	// for partitioning, setting the user-specified partitions
    if (IPA_Enable_GP_Partition || IPA_Enable_SP_Partition) {
	void *pext = linker->IP_get_mext(nme);
	if (pext) {
            ipa_node->Set_partition_group(linker->IP_get_mext_partition_grp(pext));
            if (linker->IP_is_mext_internal_to_partition(pext))
                ipa_node->Set_partition_internal();
	}
    }
#endif
#endif // TODO

    if (ipa_node->Has_frequency ()) {
	Total_cycle_count += ipa_node->Get_cycle_count ();
    }

    // Mark overrides for externally visible routines

    Mark_inline_overrides(ipa_node, st);

    return ipa_node;
	
}


//---------------------------------------------------------------------
// add all the nodes of a file to the call graph
//---------------------------------------------------------------------
static void
Add_nodes (IP_FILE_HDR& s, INT32 file_idx)
{

    INT32 size;
    SUMMARY_PROCEDURE *Proc_array = IPA_get_procedure_file_array (s, size);
    // index of last node with alt. entry
    NODE_INDEX index = INVALID_NODE_INDEX;

    if (size == 0)
	return;

    for (INT i = 0; i < size; ++i) {
 
	(void)Add_One_Node(s, file_idx, i, index );

    }

} // Add_nodes


static inline void
append_icall_list (IPA_ICALL_LIST& ilist, SUMMARY_CALLSITE *c)
{
    IPA_ICALL_NODE *cnode = CXX_NEW (IPA_ICALL_NODE (c), Malloc_Mem_Pool);
    ilist.push_back (cnode);
}

void
Add_Edges_For_Node (IP_FILE_HDR& s, INT i, SUMMARY_PROCEDURE* proc_array, SUMMARY_SYMBOL* symbol_array)
{
    if (proc_array == NULL) {
        INT32 size;
        proc_array = IPA_get_procedure_file_array(s, size);
    }

    if (symbol_array == NULL) {
	INT32 symbol_size;
        symbol_array = IPA_get_symbol_file_array (s, symbol_size);
    }

    UINT32 sindex = proc_array[i].Get_symbol_index();
    ST_IDX temp_st_idx = symbol_array[sindex].St_idx ();
    const ST* caller_st = &St_Table[temp_st_idx];

    NODE_INDEX caller_idx = AUX_PU_node (Aux_Pu_Table[ST_pu(caller_st)]);
    IPA_NODE* caller = IPA_Call_Graph->Graph()->Node_User (caller_idx);
    SUMMARY_CALLSITE *callsite_array = IPA_get_callsite_array (caller);
    
    INT callsite_count = proc_array[i].Get_callsite_count();
    INT callsite_index = proc_array[i].Get_callsite_index();
	
    for (INT j = 0; j < callsite_count; ++j, ++callsite_index) {

      // for indirect call sites
      if ( callsite_array[callsite_index].Is_func_ptr() ) {
#ifdef _LIGHTWEIGHT_INLINER
          if (!INLINE_Inlined_Pu_Call_Graph)
#endif // _LIGHTWEIGHT_INLINER
              append_icall_list (caller->Icall_List(), 
                           &callsite_array[callsite_index]);

      } 
      // for direct calls
      else if (!callsite_array[callsite_index].Is_intrinsic()) {

        sindex = callsite_array[callsite_index].Get_symbol_index();
        temp_st_idx = symbol_array[sindex].St_idx ();
        ST* callee_st = &St_Table[temp_st_idx];

#ifdef TODO
        // if static function, then force same partition
        if (Symbol_array[sindex].Is_local()) {
          // local functions should have the same partition number
          // as its caller when IPA_Enable_SP_Partition is on
          if (IPA_Enable_SP_Partition)
            callee->Set_partition_group(caller->Get_partition_group());
        }
#endif
		
#if (!defined(_STANDALONE_INLINER) && !defined(_LIGHTWEIGHT_INLINER))
        // check to see if it is a weak symbol 
        // can't do this for inliner because the weak may be preempted
        while (ST_is_weak_symbol (callee_st) &&
               ST_st_idx (callee_st) != ST_strong_idx (*callee_st))
          /* find the corresponding strong */
          callee_st = ST_strong (callee_st);
#endif // _STANDALONE_INLINER

        Clear_ST_is_not_used (callee_st);

        NODE_INDEX callee_idx = AUX_PU_node (Aux_Pu_Table[ST_pu (callee_st)]);

        // If the callee is not in a WHIRL IR file, its index will 
        // be invalid. In that case we do not add the edge, but we
        // add the callsite to a special list of opaque calls.
        if (callee_idx != INVALID_NODE_INDEX) {
          IPA_EDGE* ipa_edge = 
            IPA_Call_Graph->Add_New_Edge (&callsite_array[callsite_index],
                                          caller_idx, 
                                          callee_idx);
          if (ipa_edge->Has_frequency ()) {
            Total_call_freq += ipa_edge->Get_frequency ();
          }
	  Mark_inline_edge_overrides(ipa_edge);
        } 
        else {
#ifdef _LIGHTWEIGHT_INLINER
            if (INLINE_Inlined_Pu_Call_Graph)
	        continue;
	    else 
#endif // _LIGHTWEIGHT_INLINER
                append_icall_list (caller->Ocall_List(), 
                             &callsite_array[callsite_index]);
        }
      }
    }
    return;
}

//---------------------------------------------------------------------
// add all the edges to the graph
//---------------------------------------------------------------------
static void
Add_edges (IP_FILE_HDR& s)
{
  INT32 size;
  SUMMARY_PROCEDURE *proc_array = IPA_get_procedure_file_array(s, size);
  if (size == 0)
    return;
    
  INT32 symbol_size;
  SUMMARY_SYMBOL* symbol_array = IPA_get_symbol_file_array (s, symbol_size);

  for (INT i = 0; i < size; ++i) {
	
    if (IP_PROC_INFO_state (IP_FILE_HDR_proc_info(s)[i]) == IPA_DELETED)
      return;

    (void)Add_Edges_For_Node(s, i, proc_array, symbol_array);

  }

} // Add_edges


static UINT32
Mark_reachable (NODE_INDEX root, mBOOL* visited)
{
  UINT32 count = 0;

  if (!visited[root]) {
    visited[root] = TRUE;
    ++count;
  }

  NODE_ITER viter(IPA_Call_Graph->Graph(), root);

  for (NODE_INDEX vi = viter.First_Succ(); vi != -1; vi = viter.Next_Succ()) {
    if (!visited[vi])
      count += Mark_reachable(vi, visited);
  }

  return count;
} // Mark_reachable


static inline UINT32 
connect_to_root (NODE_INDEX node, mBOOL* visited)
{
  EDGE_INDEX cg_edge = 
    IPA_Call_Graph->Graph()->Add_Edge (IPA_Call_Graph->Root(), node, NULL);
  return Mark_reachable (node, visited);
}

//------------------------------------------------------------------------
// connect the graph                                                      
// I'm doing this since with DSO's, even if one of the connected          
// components is not part of main, it is possible that it will be invoked 
//------------------------------------------------------------------------
static void
Connect_call_graph()
{
    UINT num_nodes = GRAPH_vcnt (IPA_Call_Graph->Graph());
    mBOOL *visited = (mBOOL *) alloca ((GRAPH_vmax(IPA_Call_Graph->Graph())+1) * sizeof(mBOOL)); // Adding one to prepare for the dummy ROOT
    bzero (visited, (GRAPH_vmax(IPA_Call_Graph->Graph())+1) * sizeof(mBOOL));

    UINT32 visited_count = 0;

    if (IPA_Call_Graph->Root() == INVALID_NODE_INDEX) {
	// create a dummy root node
        NODE_INDEX root = IPA_Call_Graph->Graph()->Add_Node (NULL);
	++num_nodes;
	visited[root] = TRUE;
	visited_count = 1;
	IPA_Call_Graph->Set_Root (root);
    } else
        visited_count += Mark_reachable (IPA_Call_Graph->Root(), visited);

    
    // 2 walks through the graph
    // first connect all nodes that have no predecessors
    // mark all the reachable nodes
    // next walk the graph looking for unreachable nodes, connect them
    // and mark all the reachable nodes
    NODE_INDEX v;
    for (v = 0; v < GRAPH_vmax(IPA_Call_Graph->Graph()); ++v) {
	if (NODE_fcnt(&GRAPH_v_i(IPA_Call_Graph->Graph(), v)) != -1 &&
	    IPA_Call_Graph->Graph()->Num_Preds (v) == 0 &&
	    v != IPA_Call_Graph->Root())
	    visited_count += connect_to_root (v, visited);
    }
	     
    if (visited_count == num_nodes)	// no more disconnected components
	return;

    // handle the case where there is a strongly connected subcomponent
    // that is not reachable from the rest of the graph (e.g. a self
    // recursive node that is never called.

    for (v = 0;
	 visited_count != num_nodes && v < GRAPH_vmax(IPA_Call_Graph->Graph());
	 ++v) {
	if (NODE_fcnt(&GRAPH_v_i(IPA_Call_Graph->Graph(), v)) != -1 && !visited[v]) {
	    visited_count += connect_to_root (v, visited);
	}
    }
} // Connect_call_graph


//----------------------------------------------------------------------
// Build the call graph
//----------------------------------------------------------------------
struct add_nodes
{
    void operator() (UINT32 idx, IP_FILE_HDR* hdr) const {
	Add_nodes (*hdr, idx);
    }
}; // add_nodes

struct add_edges
{
    void operator() (UINT32, IP_FILE_HDR* hdr) const {
	Add_edges (*hdr);
    }
}; // add_edges


void
Build_Call_Graph ()
{
  IPA_Call_Graph = CXX_NEW(IPA_CALL_GRAPH(Malloc_Mem_Pool), Malloc_Mem_Pool);

  For_all_entries (IP_File_header, add_nodes ());

  For_all_entries (IP_File_header, add_edges ());

  Connect_call_graph();

  IPA_Call_Graph_Built = TRUE;

} // Build_Call_Graph



// ======================================================================
// Dead function elimination
// ======================================================================

enum DFE_STATE
{
    NOT_VISITED = 0,
    VISITED_BUT_UNDECIDED,
    VISITED_AND_KEEP,
    VISITED_AND_DELETE
};


enum DFE_ACTION
{
    MARK_USED,			// mark function and its descendants as used
    SEARCH_FOR_USED,		// search for externally callable
				// functions among unreachable functions
    MARK_DELETED		// definitely mark as deletable
};
 
//-------------------------------------------------------------------------
// Walk the graph pre-order, set the "deletable" bit if walk_only is false
//-------------------------------------------------------------------------
static void
Mark_Deletable_Funcs (NODE_INDEX v, DFE_ACTION action, mUINT8 *visited)
{
    IPA_NODE* node = IPA_Call_Graph->Graph()->Node_User(v);

    NODE_INDEX alt_entry_index = INVALID_NODE_INDEX;

    if (node->Summary_Proc()->Is_alt_entry()) {
	ALT_ENTRY_MAP::iterator iter = alt_entry_map->find (v);
	if (iter != alt_entry_map->end())
	    alt_entry_index = (*iter).second;
    }

    switch (action) {

    case MARK_USED:
	node->Clear_Deletable ();
	if (node->Is_Externally_Callable() || node->Is_Undeletable()) {
	    node->Set_Undeletable();
	}
	visited[v] = VISITED_AND_KEEP;
	break;

    case SEARCH_FOR_USED:
	if (node->Is_Externally_Callable() || node->Is_Undeletable()) {
	    node->Clear_Deletable ();
	    node->Set_Undeletable();
	    action = MARK_USED;
	    visited[v] = VISITED_AND_KEEP;
	} else if (visited[v] == 0)
	    visited[v] = VISITED_BUT_UNDECIDED;
	break;

    case MARK_DELETED:
	if (node->Is_Externally_Callable () || node->Is_Undeletable() ||
	    PU_has_global_pragmas (node->Get_PU ())
#ifdef TODO
	    || node->Should_Be_Skipped()
#endif
	    ) {

	    node->Clear_Deletable ();
	    node->Set_Undeletable();
	    action = MARK_USED;
	    visited[v] = VISITED_AND_KEEP;
	} else {
	    node->Set_Deletable ();
	    IP_FILE_HDR& s = node->File_Header ();
	    s.proc_info[node->Proc_Info_Index()].state = IPA_UNUSED;
	    visited[v] = VISITED_AND_DELETE;
	}
	break;
    }

    if (alt_entry_index != INVALID_NODE_INDEX && action == MARK_USED &&
	visited[alt_entry_index] != VISITED_AND_KEEP) {
	IPA_NODE *n = IPA_Call_Graph->Graph()->Node_User(alt_entry_index);
	n->Clear_Deletable ();
	IP_FILE_HDR& s = n->File_Header();
	if (s.proc_info[node->Proc_Info_Index()].state == IPA_UNUSED)
	    s.proc_info[node->Proc_Info_Index()].state = IPA_ORIG;
	if (n->Is_Externally_Callable() || n->Is_Undeletable()) {
	    n->Set_Undeletable();
	}
	visited[alt_entry_index] = VISITED_AND_KEEP;
    }

#ifdef TODO
    if (IPA_Enable_daVinci) {
	switch (action) {
	case MARK_USED:
	    cg_display->Mark_Used (v);
	    break;
	case MARK_DELETED:
	    cg_display->Mark_Deleted (v);
	    break;
	}
    }
#endif
    
    NODE_ITER vitr(IPA_Call_Graph->Graph(), v);
    for (NODE_INDEX vi = vitr.First_Succ(); vi != -1; vi = vitr.Next_Succ()) {
	if (visited[vi] == 0 || (action != SEARCH_FOR_USED &&
				 visited[vi] == VISITED_BUT_UNDECIDED))
	    Mark_Deletable_Funcs (vi, action, visited);
    }
    
} // Mark_Deletable_Funcs


#ifndef _LIGHTWEIGHT_INLINER
/* reset the mod/ref count corresponding to the deleted functions */
static void
Reset_modref_count (IPA_NODE *node)
{

    IP_FILE_HDR& hdr = node->File_Header ();
    SUMMARY_SYMBOL* sym_table = IPA_get_symbol_array (node);
    SUMMARY_GLOBAL* gnode = IPA_get_global_array (node);

    if (gnode == NULL || sym_table == NULL)
	return;

    SUMMARY_PROCEDURE *pnode = node->Summary_Proc();
    INT32 max_size = pnode->Get_global_index () + pnode->Get_global_count ();

    gnode += pnode->Get_global_index ();
    for (INT i = pnode->Get_global_index (); i < max_size; i++, gnode++)
	if (gnode->Get_refcount () || gnode->Get_modcount ()) {
	    SUMMARY_SYMBOL *snode = sym_table + gnode->Get_symbol_index ();
	    ST_IDX st_idx = snode->St_idx ();
	    Update_reference_count (&St_Table[st_idx],
				    - gnode->Get_refcount (),
				    - gnode->Get_modcount (),
				    snode->Is_cmod ());
	}
} // Reset_modref_count
#endif // _LIGHTWEIGHT_INLINER


static UINT32
Delete_Function (NODE_INDEX node, BOOL update_modref_count, mUINT8 *visited)
{
    IPA_PRED_ITER pred_iter (node);

    for (pred_iter.First (); !pred_iter.Is_Empty (); pred_iter.Next ()) {
	IPA_EDGE *edge = pred_iter.Current_Edge ();
	if (edge) {
	    pred_iter.Set_Current_Edge(0);
	}
    }

    IPA_SUCC_ITER succ_iter (node);
    
    for (succ_iter.First (); !succ_iter.Is_Empty (); succ_iter.Next ()) {
	IPA_EDGE *edge = succ_iter.Current_Edge ();
	if (edge) {
	    succ_iter.Set_Current_Edge(0);
	}
    }

    IPA_NODE* ipa_node = (IPA_NODE*) IPA_Call_Graph->Graph()->Delete_Node (node);

    if (Trace_IPA || Trace_Perf)
	fprintf (TFile, "%s deleted (unused)\n",
		 ipa_node->Name ());

#ifndef _LIGHTWEIGHT_INLINER

    if (update_modref_count) 
        Reset_modref_count (ipa_node);

#endif // _LIGHTWEIGHT_INLINER

    Set_ST_is_not_used (ipa_node->Func_ST ());

    Delete_Function_In_File (ipa_node->File_Header (),
			     ipa_node->Proc_Info_Index ());

    const PU_Info* pu = ipa_node->PU_Info ();
    UINT32 size = 0;
    if (pu != NULL) {
        for (pu = PU_Info_child (pu); pu; pu = PU_Info_next (pu)) {
	    // If there are nested functions, all need to be deleted

            const AUX_PU& aux_pu =
                Aux_Pu_Table [ST_pu (St_Table [PU_Info_proc_sym (pu)])];
            const IPA_NODE* child = IPA_Call_Graph->Graph()->Node_User (AUX_PU_node (aux_pu));
            if (child) {
		NODE_INDEX c_vi = child->Node_Index();
		visited[c_vi] = VISITED_AND_KEEP;
	        size += Delete_Function (c_vi, update_modref_count, visited);
	    }
	}
    }

    return ipa_node->Weight () + size;
} // Delete_Function 


//-------------------------------------------------------------------------
// Walk the call graph and search for unreachable nodes, mark them as
// deletable.  Unreachable nodes are those that are not externally
// callable *AND* not reachable from any node that is externally
// callable.  See IPA_NODE::Is_Externally_Callable().
//
// return the total size of the nodes deleted
//-------------------------------------------------------------------------
UINT32
Eliminate_Dead_Func (BOOL update_modref_count)
{
    mUINT8 *visited = (mUINT8 *)
	alloca (GRAPH_vmax (IPA_Call_Graph->Graph()) * sizeof(mUINT8));
    bzero (visited, sizeof(mUINT8) * GRAPH_vmax(IPA_Call_Graph->Graph()));

    NODE_INDEX vi;

    // First, mark all reachable nodes
    NODE_ITER vitr(IPA_Call_Graph->Graph(), IPA_Call_Graph->Root());
    for (vi = vitr.First_Succ(); vi != -1; vi = vitr.Next_Succ())
	Mark_Deletable_Funcs (vi, SEARCH_FOR_USED, visited);

    // Reinitiallize the iterator
    new (&vitr) NODE_ITER (IPA_Call_Graph->Graph(), IPA_Call_Graph->Root());

    // Now, work on all unreachable nodes
    for (vi = vitr.First_Succ(); vi != -1; vi = vitr.Next_Succ()) 
	if (visited[vi] == 0 || visited[vi] == VISITED_BUT_UNDECIDED)
	    Mark_Deletable_Funcs (vi, MARK_DELETED, visited);

    UINT32 size = 0;
    for (vi = 0; vi < GRAPH_vmax(IPA_Call_Graph->Graph()); vi++)
	if (visited[vi] == VISITED_AND_DELETE)
	    size += Delete_Function (vi, update_modref_count, visited);

    DevWarn ("TODO: implement *skip* option");

    /* reconnect dangling nodes, if any.  This is possible if all
       predecessors of a node are deleted, but the node itself is not */
    Connect_call_graph();

    return size;
} // Eliminate_Dead_Func 



//----------------------------------------------------------------
// Read the PU from the input file
// as a side effect, create parent pointers              
//----------------------------------------------------------------
void
IPA_NODE::Read_PU (BOOL readtree)
{
    if (!Is_Mempool_Initialized()) {
	Set_Mempool_Initialized();
	MEM_POOL_Initialize(Mem_Pool(),Name(),1); /* the name of the MEMPOOL is null */
	MEM_POOL_Push(Mem_Pool());              /* just to save time and energy */
    }

    if (readtree)
        IP_READ_pu (this, File_Header(), Proc_Info_Index(), Mem_Pool() );

    if (Cur_PU_Feedback)
	Set_Feedback ();

    if (!Parent_Map()) {
        ::PU_Info *pu = PU_Info();
        Current_Map_Tab = PU_Info_maptab(pu);
        Set_Parent_Map(WN_MAP_Create(Mem_Pool()));
        WN_Parentize(PU_Info_tree_ptr(pu), Parent_Map(), Current_Map_Tab);
    }
}

static void
read_pu_including_parents(IPA_NODE* node)
{

    IPA_NODE* parent = Get_Parent_Of_Nested_PU(node);
    if (parent != NULL) {
	read_pu_including_parents(parent);
    }

    if (node->Scope_Table() == NULL) {
        node->Read_PU(TRUE);
        node->Set_Scope(Scope_tab);
    }
    else { 
	// To set up Scope_tab correctly, copy the node's Scope_table info
 	// to Scope_tab
        node->Read_PU(FALSE);
        SYMTAB_IDX lexical_level = node->Lexical_Level();
	Scope_tab[lexical_level] = node->Scope_Table()[lexical_level];
    }
	
}


SCOPE *
IPA_NODE::Scope() 
{
    SCOPE* old_scope = Scope_tab;

    if (_scope_tab != NULL) {
	Scope_tab = _scope_tab;
        read_pu_including_parents(this); // Tree somehow has been read already,
					 // as in the case of the standalone inliner
	Scope_tab = old_scope;
	return _scope_tab;
    }

    // set up a scope table that is large enough for this lexical level
    INT size = (Lexical_Level()+1) * sizeof(SCOPE);
    SCOPE *new_scope_tab = (SCOPE *)
        MEM_POOL_Alloc (Malloc_Mem_Pool, size);
    bzero(new_scope_tab, size);

    // Copy only the Global SYMTAB info
    memcpy(new_scope_tab, Scope_tab, sizeof(SCOPE)*2);
#if 0
    SYMTAB_IDX i;
    for (i = 0; i < Lexical_Level(); ++i) {
	new_scope_tab[i] = Scope_tab[i];
    }
#endif

    Scope_tab = new_scope_tab;

    // Read in itself and all its parents
    read_pu_including_parents(this);

    Scope_tab = old_scope;
    return new_scope_tab;
}

//----------------------------------------------------------------
// given a procedure node, return the whirl node
//----------------------------------------------------------------
WN*
IPA_NODE::Whirl_Tree (BOOL readtree)
{
    ::PU_Info *pu = PU_Info();
    if (PU_Info_state(pu, WT_TREE) != Subsect_InMem) {
        if (!readtree) return NULL;
        Read_PU(TRUE);
    }
    return PU_Info_tree_ptr(pu);
}

//----------------------------------------------------------------
// set the whirl node
//----------------------------------------------------------------
void
IPA_NODE::Set_Whirl_Tree (WN *wn)
{
    ::PU_Info *pu = this->PU_Info();
    Set_PU_Info_tree_ptr(pu, wn);
    Set_PU_Info_state(pu, WT_TREE, Subsect_InMem);
}

// --------------------
// Write PU out to file
// --------------------
void 
IPA_NODE::Write_PU ()
{ 
  IP_FILE_HDR& file_hdr = File_Header();
  IP_PROC_INFO& proc_info = IP_FILE_HDR_proc_info (file_hdr)[Proc_Info_Index()];
  
  if (Summary_Proc()->Is_alt_entry()) {
    Set_IP_PROC_INFO_state (proc_info, IPA_DELETED);
    Inc_IP_FILE_HDR_num_procs_processed (file_hdr);
  } else {
    IPA_NODE_CONTEXT context(this);
#ifdef Is_True
    WN* w = Whirl_Tree(FALSE);
    if (w && !Is_Nested_PU()) {
      WN_verifier(w);
    }
#endif
    if ((IP_PROC_INFO_state (proc_info) != IPA_WRITTEN) || !Has_Recursive_In_Edge())
        IP_WRITE_pu(&file_hdr, Proc_Info_Index()); 
  }
}

//----------------------------------------------------------------
//  conservatively determine if the function can potentially be called
//  from outside.  Any function whose address is taken and is neither
//  EXPORT_INTERNAL nor EXPORT_LOCAL is considered callable.
//----------------------------------------------------------------
BOOL
IPA_NODE::Is_Externally_Callable ()
{
    // note, if the node has been cloned then it is can
    // no longer be called from the outside

    const ST* func_st = Func_ST ();

    if (ST_addr_saved(func_st) || ST_addr_passed (func_st)) 
	return TRUE;

    if (ST_export (func_st) == EXPORT_LOCAL_INTERNAL ||
        ST_export (func_st) == EXPORT_LOCAL)
	return FALSE;

#ifndef _LIGHTWEIGHT_INLINER
    const AUX_ST& aux_st = Aux_St_Table[ST_st_idx (func_st)];

    if (AUX_ST_flags (aux_st, USED_IN_OBJ|USED_IN_DSO|ADDR_TAKEN_IN_OBJ))
	return TRUE;
#endif // _LIGHTWEIGHT_INLINER

    if (ST_export (func_st) == EXPORT_INTERNAL ||
	ST_export (func_st) == EXPORT_HIDDEN )
	return FALSE;

    return TRUE;

} // IPA_NODE::Is_Externally_Callable

//------------------------------------------------------------------
// Clear out the cloned callee symtab for other inlining pairs
//-------------------------------------------------------------------
void
IPA_NODE::Clear_Cloned_Symtab ()
{
    if (Cloned_Symtab()) {
        CXX_DELETE (Cloned_Symtab(), Malloc_Mem_Pool);
	Set_Cloned_Symtab(NULL);
    }
} // IPA_NODE::Clear_cloned_symtab


// ====================================================================
//
// IPA_EDGE::Print / IPA_EDGE::Trace
//
// Print the information associated with a callgraph edge.  The invert
// parameter to these routines means to invert the sense of caller and
// callee in printing the callee.  This is useful in cases where the
// callgraph has been inverted so that the caller appears to be the
// callee.  It is defaulted to FALSE in the header.
//
// ====================================================================
void
IPA_EDGE::Print ( const FILE* fp,		// File to which to print
                  const IPA_CALL_GRAPH* cg,	// Underlying callgraph
                  BOOL invert ) const		// Invert edge?
{
  IPA_NODE* caller = cg->Caller(Edge_Index());
  IPA_NODE* callee = cg->Callee(Edge_Index());

  fprintf ( (FILE*) fp,
	    "name = %-20s (ix:%d, f:%02x:%02x, @%lx)\n",
	    invert ? caller->Name() : callee->Name(), 
            Edge_Index(), 
            _flags,
	    EDGE_etype(&GRAPH_e_i(cg->Graph(), Edge_Index())), 
            this );
}

// ====================================================================
void
IPA_EDGE::Trace ( const IPA_CALL_GRAPH *cg, BOOL invert ) const
{
  Print ( TFile, cg, invert );
}

// Given a pu, get its corresponding call graph node.
IPA_NODE* Get_Node_From_PU(PU_Info* pu) 
{
  Is_True(pu != 0, ("Get_Node_From_PU: pu must not be null"));
  Is_True(IPA_Call_Graph->Graph() != 0, ("Get_Node_From_PU: Call graph not initialized"));

  // Get the ST index from the pu.
  ST_IDX idx = PU_Info_proc_sym(pu);
  Is_True(ST_IDX_level(idx) == GLOBAL_SYMTAB,
          ("Get_Node_From_PU: bad st index level %d, should be %d",
           ST_IDX_level(idx), GLOBAL_SYMTAB));

  // Get the PU index from the ST index.
  PU_IDX pu_idx = ST_pu(St_Table[idx]);
  Is_True(pu_idx > PU_IDX_ZERO && pu_idx < PU_Table_Size(),
          ("Get_Node_From_PU: bad pu index %d, not in range 0 <= idx < %d",
           pu_idx, PU_Table_Size()));

  // Using auxiliary table, get the call graph node index.
  NODE_INDEX node_idx = AUX_PU_node(Aux_Pu_Table[pu_idx]);
  IPA_NODE* result = IPA_Call_Graph->Graph()->Node_User(node_idx);

  // Verify that the node is sane.
  Is_True(result != 0, ("Get_Node_From_PU: null call graph node"));
  Is_True(result->PU_Info() != 0, ("Get_Node_From_PU: node has null pu"));
  Is_True(PU_Info_proc_sym(result->PU_Info()) == idx,
          ("Get_Node_From_PU: pu has st idx %ld, node has st_idx %ld",
           PU_Info_proc_sym(result->PU_Info()), idx));

  return result;
}


// ======================
// IPA_CALL_GRAPH methods
// ======================
 
//-------------------------------------------------------------------
// get the number of call edges from caller to callee
//-------------------------------------------------------------------
INT32
IPA_CALL_GRAPH::Num_Calls (IPA_NODE* caller, IPA_NODE* callee) const
{
  INT32 count = 0;
  NODE_INDEX callee_idx = callee->Node_Index();
  NODE_INDEX caller_idx = caller->Node_Index();

  for (EDGE_INDEX e = NODE_from(&GRAPH_v_i(_graph, caller_idx));
       e != -1;
       e = EDGE_nfrom(&GRAPH_e_i(_graph, e))) {

    if (EDGE_to(&GRAPH_e_i(_graph, e)) == callee_idx) {
      ++count;
    }
  }
  
  return count;
}

// ----------------------------------------------------------------
// map callsites in the caller to WN nodes
// Precondition: WHIRL tree for the caller has already been read in
// ----------------------------------------------------------------
void 
IPA_CALL_GRAPH::Map_Callsites (IPA_NODE* caller)
{
    // Visited flag is used to avoid building the callsite map more than once
    if (caller->Is_Visited()) {
	return;
    }
    caller->Set_Visited();

  // Check if there are any calls at all
    if (caller->Total_Succ() == 0) {
	return;
    }
  
    WN** callsite_map = (WN**) alloca (caller->Total_Succ() * sizeof(WN*));
    UINT32 num_calls = 0;
  
    for (WN_ITER* wni = WN_WALK_TreeIter(caller->Whirl_Tree(FALSE)); 
	 wni != NULL;
	 wni = WN_WALK_TreeNext(wni)) {

	WN* wn = WN_ITER_wn (wni);

	switch (WN_operator(wn)) {

	case OPR_CALL:
	    if (WN_opcode(wn) == OPC_VCALL &&
		WN_Fake_Call_EH_Region (wn, Parent_Map))
		break;
	    // fall through
	case OPR_ICALL:
	case OPR_INTRINSIC_CALL:
	    callsite_map[num_calls++] = wn;
	    break;
	}
    }

    IPA_SUCC_ITER succ_iter (caller);

    for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {
	IPA_EDGE *edge = succ_iter.Current_Edge();
	if (edge) {
	    edge->Set_Whirl_Node (callsite_map[edge->Callsite_Id()]);
	}
    }
}


#if (!defined(_STANDALONE_INLINER) && !defined(_LIGHTWEIGHT_INLINER))

extern void
Rename_Call_To_Cloned_PU (IPA_NODE *caller, 
                          IPA_NODE *callee,
                          IPA_EDGE *e, 
                          IPA_CALL_GRAPH *cg);

// ------------------------------------------------------------------
// Add given procedure to the array of SUMMARY_PROCEDUREs in the file
// that contains given node and adjust summary header information
// ------------------------------------------------------------------
static INT32
IPA_add_new_procedure (const IPA_NODE* node)
{
  static INT32* max_proc_in_file = NULL;

  if (max_proc_in_file == NULL) {
    UINT32 bytes = IP_File_header.size() * sizeof(INT32);
    max_proc_in_file = (INT32*) MEM_POOL_Alloc(Malloc_Mem_Pool, bytes);
    bzero (max_proc_in_file, bytes);
  }
  
  INT32& max_proc_size = max_proc_in_file[node->File_Index()];
  IP_FILE_HDR& file_hdr = node->File_Header();
  SUMMARY_FILE_HEADER* summary_header = IP_FILE_HDR_file_header (file_hdr);

  INT32 num_proc;
  SUMMARY_PROCEDURE* old_proc_array = 
    IPA_get_procedure_file_array (file_hdr, num_proc);
  SUMMARY_PROCEDURE* new_proc_array;
  INT32 num_bytes = num_proc * sizeof(SUMMARY_PROCEDURE);
  
  // If max_proc_size is 0, we are extending the array for the first time
  if (max_proc_size == 0) {
    max_proc_size = num_proc * 2;
    new_proc_array = (SUMMARY_PROCEDURE*) 
      MEM_POOL_Alloc (Malloc_Mem_Pool, num_bytes * 2);
    memcpy (new_proc_array, old_proc_array, num_bytes);
    Elf64_Word new_offset = summary_header->Get_proc_offset() +
                            ((char*) new_proc_array - (char*) old_proc_array);
    summary_header->Set_proc_offset (new_offset);
  }
  // Reallocating when the array is extended more than once
  else if (max_proc_size <= num_proc) {
    max_proc_size = num_proc * 2;
    new_proc_array = (SUMMARY_PROCEDURE*) 
      MEM_POOL_Realloc(Malloc_Mem_Pool, old_proc_array, num_bytes,num_bytes*2);
    Elf64_Word new_offset = summary_header->Get_proc_offset() +
                            ((char*) new_proc_array - (char*) old_proc_array);
    summary_header->Set_proc_offset (new_offset);
  }
  else {
    new_proc_array = old_proc_array;
  }
  
  summary_header->Set_proc_size(num_proc + 1);

  return num_proc;
}

//------------------------------------------------------------------
// clone a procedure, copy all the from and to edges that contain
// summary information, delete the from and to edges from the clone
//------------------------------------------------------------------
IPA_NODE*
IPA_CALL_GRAPH::Create_Clone (IPA_NODE* node)
{
  IPA_NODE* clone = Add_New_Node (node->Func_ST(),
                                  node->File_Index(),
                                  node->Proc_Info_Index(),
                                  node->Summary_Proc_Index());

  // If necessary, initialize clone<->origin maps
  if (_clone_to_orig_node_map == NULL) {
    _clone_to_orig_node_map =
      CXX_NEW (IPA_CLONE_TO_IPA_NODE_MAP (31, _pool), _pool);
    _orig_node_to_clones_map = 
      CXX_NEW (IPA_NODE_TO_IPA_CLONES_MAP (31, _pool), _pool);
  }

  // Store clone-to-orig mapping
  _clone_to_orig_node_map->Enter (clone, node);

  // Store origin to clone mapping
  IPA_CLONE_ARRAY* clone_array = Clone_Array (node);
  if (clone_array == NULL) {
    clone_array = CXX_NEW (IPA_CLONE_ARRAY (_pool), _pool);
   _orig_node_to_clones_map->Enter (node, clone_array);
  }
  clone_array->AddElement (clone);

  // get the number of successor edges
  EDGE_INDEX* out_edges = 
    (EDGE_INDEX*) alloca (Num_Out_Edges(node) * sizeof(EDGE_INDEX));

  // move all successor edges from the original node to the clone
  INT32 out_count = 0;
  IPA_SUCC_ITER succ_iter (this, node);
  for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {    

    IPA_EDGE* edge = succ_iter.Current_Edge();
    IPA_NODE* callee = Callee (edge);

    if (callee == node) { // recursive edge
      Add_Edge (clone, clone, edge); 
    }
    else {
      Add_Edge (clone, callee, edge); 
    }

    // keep track of the edges that need to be deleted
    out_edges[out_count++] = succ_iter.Current_Edge_Index();
  }
  

  // get the number of predecessor edges
  EDGE_INDEX* in_edges = 
    (EDGE_INDEX*) alloca (Num_In_Edges(node) * sizeof(EDGE_INDEX));

  // move all predecessor edges from the original node to the clone
  // also, delete those edges from the original procedure
  INT32 in_count = 0;
  IPA_PRED_ITER pred_iter (this, node);
  for (pred_iter.First(); !pred_iter.Is_Empty(); pred_iter.Next()) {

    IPA_EDGE* edge = pred_iter.Current_Edge();
    // NULL edges come from the entry node (Root ?)
    if (edge) { 
      IPA_NODE* caller = Caller (edge);

      // skip recursive edges; they had been handled above
      if (caller != node) {  
	Add_Edge (caller, clone, edge);
        // keep track of the edges that need to be deleted 
        // do not delete edges from the root to keeo the graph connected
        if (caller->Node_Index() != Root()) {
	  in_edges[in_count++] = pred_iter.Current_Edge_Index();
        }
      }
    }
  }
  
  INT32 i;
  // delete the incoming edges
  for (i = 0; i < in_count; ++i) {
    _graph->Delete_Edge (in_edges[i]);
  }

  // delete the outgoing edges 
  for (i = 0 ; i < out_count; ++i) {
    _graph->Delete_Edge (out_edges[i]);
  }

  // Set the clone flag
  clone->Set_Clone();

  // initialize clone's mempool
  MEM_POOL_Initialize (clone->Mem_Pool(), node->Name(), 1); 
  MEM_POOL_Push (clone->Mem_Pool());
  clone->Set_Mempool_Initialized();

  clone->Set_Total_Succ (node->Total_Succ());
  clone->Set_Mod_Ref_Info (CXX_NEW (IPAA_NODE_INFO (*(node->Mod_Ref_Info ())),
				    Malloc_Mem_Pool));
  clone->Set_Cprop_Annot (node->Cprop_Annot());

  // this performs actual tree and symtab cloning and
  // sets all PU_Info related information
  IPO_Clone (node, clone);

  // we need to add a new entry to the SUMMARY_PROCEDURE array
  clone->Set_Summary_Proc_Index (IPA_add_new_procedure (clone));
  *(clone->Summary_Proc()) = *(node->Summary_Proc());

  // return created clone node
  return clone;
}

// -----------------------------------------------------------------
// If the source edge cprop annotation is Top (0) or Bottom (-1),
// set the destination edge annotation to the same value; otherwise,
// create new annotation for the destination edge and do a deep copy
// -----------------------------------------------------------------
static void
Copy_edge_cprop_annot (IPA_EDGE* src_edge, IPA_EDGE* dst_edge)
{
  VALUE_DYN_ARRAY* dst_annot;
  VALUE_DYN_ARRAY* src_annot = src_edge->Cprop_Annot();
  if (src_annot != NULL && src_annot != (void*)-1) {
    dst_annot = 
      CXX_NEW (VALUE_DYN_ARRAY (MEM_local_nz_pool_ptr), MEM_local_nz_pool_ptr);
    *dst_annot = *src_annot;
  }
  else {
    dst_annot = src_annot;
  }
  dst_edge->Set_Cprop_Annot (dst_annot);
}

// ------------------------------------------------------------------
// Create a quasi clone of the callee based on a specific edge
//
// Two major differences between this method and Clone_node are:
//
//  1. In Clone_node all edges incident to the original node
//     are MOVED to the clone. 
//     Here, only the incoming edges equivalent to the parameter
//     edge are redirected to the clone; all outgoing edges are
//     COPIED to the clone, but they are only removed from the
//     original node when that node has no more incoming edges
//     (except possibly for the one coming from the root).
//
//  2. Here, we only clone the IPA_NODE (and its cprop annotations)
//     for the callee and adjust edges appropriately. WHIRL, PU_Info, 
//     and ST will be generated on demand by Quasi_To_Real_Clone.
// ------------------------------------------------------------------
IPA_NODE* 
IPA_CALL_GRAPH::Create_Quasi_Clone (IPA_EDGE* call_edge)
{
  // We must never clone for self-recursive edges 
  Is_True (Caller(call_edge) != Callee(call_edge),
           ("Self-recursive edge in IPA_CALL_GRAPH::Create_Quasi_Clone"));
      
  IPA_NODE* node = Callee (call_edge);
   
  // add new node to the graph, and set its quasi_clone flag
  IPA_NODE* clone = Add_New_Node (node->Func_ST(),
                                  node->File_Index(),
                                  node->Proc_Info_Index(),
                                  node->Summary_Proc_Index());
  clone->Set_Quasi_Clone();
  
  // First time in this routine, initialize clone<->origin maps
  if (_clone_to_orig_node_map == NULL) {
    _clone_to_orig_node_map =
      CXX_NEW (IPA_CLONE_TO_IPA_NODE_MAP (31, _pool), _pool);
    _orig_node_to_clones_map = 
      CXX_NEW (IPA_NODE_TO_IPA_CLONES_MAP (31, _pool), _pool);
  }
  
  // Store clone-to-orig mapping
  _clone_to_orig_node_map->Enter (clone, node);

  // Store origin to clone mapping
  IPA_CLONE_ARRAY* clone_array = _orig_node_to_clones_map->Find (node);
  if (clone_array == NULL) {
    clone_array = CXX_NEW (IPA_CLONE_ARRAY (_pool), _pool);
   _orig_node_to_clones_map->Enter (node, clone_array);
  }
  clone_array->AddElement (clone);

  // set mod_ref and cprop annotations for the clone
  clone->Set_Mod_Ref_Info (CXX_NEW (IPAA_NODE_INFO (*(node->Mod_Ref_Info ())),
				    Malloc_Mem_Pool));
  Init_Cprop_Annotations (clone);

  // get the number of predecessor edges
  EDGE_INDEX* in_edges = 
    (EDGE_INDEX*) alloca (Num_In_Edges(node) * sizeof(EDGE_INDEX));

  INT32 in_count = 0;
  IPA_PRED_ITER pred_iter (this, node);
  for (pred_iter.First(); !pred_iter.Is_Empty(); pred_iter.Next()) {

    IPA_EDGE* edge = pred_iter.Current_Edge();

    // calls to the original node that are equivalent
    // to the call_edge are redirected to the to clone 
    if (edge && Edges_Have_Equiv_Cprop_Annots (edge, call_edge)) { 
      
      Add_Edge (Caller(edge), clone, edge);
      in_edges[in_count++] = pred_iter.Current_Edge_Index();
    }
  }

  // get the number of successor edges
  EDGE_INDEX* out_edges = 
    (EDGE_INDEX*) alloca (Num_Out_Edges (node) * sizeof(EDGE_INDEX));

  // move all successor edges from the original node to the clone
  INT32 out_count = 0;
  IPA_SUCC_ITER succ_iter (this, node);
  for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {    

    // calls from the original node are not MOVED, but COPIED to the clone
    IPA_EDGE* edge = succ_iter.Current_Edge();
    if (edge) {
      IPA_EDGE* ecopy = Add_New_Edge (edge->Summary_Callsite(),
                                      clone->Node_Index(),
                                      Callee(edge)->Node_Index());
      Copy_edge_cprop_annot (edge, ecopy);
    }
  }

  // delete the incoming edges
  for (INT32 i = 0; i < in_count; ++i) {
    _graph->Delete_Edge (in_edges[i]);
  }

  // if all in-edges are moved to clones, then we also need to 
  // delete the outgoing edges and connect original node to the root 
  if (Num_In_Edges (node) == 0) {
    _graph->Add_Edge (GRAPH_root(_graph), node->Node_Index(), NULL);
  }

  // return created clone node 
  return clone;
}

//----------------------------------------------------------------------
// Turn a quasi clone into a real one by cloning its PU_Info,
// WHIRL, ST and everything else that a real IPA_NODE needs.
//----------------------------------------------------------------------
void
IPA_CALL_GRAPH::Quasi_To_Real_Clone (IPA_NODE* clone)
{
  Is_True(clone->Is_Quasi_Clone(),
          ("IPA_CALL_GRAPH::Quasi_to_real_clone called on a non-quasi node"));
  
  clone->Clear_Quasi_Clone();     // Reset the IPA_QUASI_CLONE flag 
  clone->Set_Clone();             // Set IPA_CLONE flag
  clone->Clear_Clone_Candidate(); // Disable cloning of clones
  
  // initialize clone's mempool
  MEM_POOL_Initialize (clone->Mem_Pool(), clone->Name(), 1); 
  MEM_POOL_Push (clone->Mem_Pool());
  clone->Set_Mempool_Initialized();

  IPA_NODE* origin = Clone_Origin (clone);

  // set all global-context variables for the original node
  IPA_NODE_CONTEXT context (origin);
  
  // this performs actual tree and symtab cloning and
  // sets all PU_Info related information
  IPO_Clone (origin, clone);

  // we need to add a new entry to the SUMMARY_PROCEDURE array
  clone->Set_Summary_Proc_Index (IPA_add_new_procedure (clone));
  *(clone->Summary_Proc()) = *(origin->Summary_Proc());

  // check for the fake formal ST used with vla-s (661817)
  if (origin->Has_Aliased_Formal()) {
    clone->Set_Aliased_Formal();
  }

  // Before renaming calls to the cloned PU all callers that are 
  // themselves quasi clones must be converted into the real ones.
  // Furthermore, if the caller has spawned some quasi clones, 
  // they also must be converted before calls are renamed.
  IPA_PRED_ITER pred_iter (this, clone);
  for (pred_iter.First(); !pred_iter.Is_Empty(); pred_iter.Next()) {
    IPA_EDGE* edge = pred_iter.Current_Edge();
    if (edge) { // NULL edges come from the entry node (graph root)
      IPA_NODE* caller = Caller (edge);
      if (caller->Is_Quasi_Clone()) {
        Quasi_To_Real_Clone (caller);
      } 
      else {
        IPA_CLONE_ARRAY* caller_clones = Clone_Array (caller);
        if (caller_clones) {
          for (UINT32 i = 0; i < caller_clones->Elements(); ++i) {
            if (((*caller_clones)[i])->Is_Quasi_Clone()) {
              Quasi_To_Real_Clone((*caller_clones)[i]);
            }
          }
        }
      }
    }
  }
  
  // Now walk over all callers and rename calls to the clone
  new (&pred_iter) IPA_PRED_ITER (this, clone);
  for (pred_iter.First(); !pred_iter.Is_Empty(); pred_iter.Next()) {
    IPA_EDGE* edge = pred_iter.Current_Edge();
    if (edge) {
      Rename_Call_To_Cloned_PU (Caller(edge), clone, edge, this);
    }
  }

}

// --------------------------------------------------------------
// Remove a quasi-clone node and update the edges and annotations
// --------------------------------------------------------------
void
IPA_CALL_GRAPH::Remove_Quasi_Clone (IPA_NODE* clone)
{
  // If the clone has calls to other quasi-clones, 
  // those quasi-clone callees must be removed first
  IPA_SUCC_ITER succ_iter (this, clone);
  for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) { 
    IPA_NODE* callee = Callee (succ_iter.Current_Edge());
    if (callee->Is_Quasi_Clone()) {
      Remove_Quasi_Clone (callee);
    }
  }
  
  // Redirect all incoming edges back to the original node
  IPA_NODE* origin = Clone_Origin (clone);

  EDGE_INDEX* in_edges = 
    (EDGE_INDEX*) alloca (Num_In_Edges(clone) * sizeof(EDGE_INDEX));

  INT32 in_count = 0;
  IPA_PRED_ITER pred_iter (this, clone);
  for (pred_iter.First(); !pred_iter.Is_Empty(); pred_iter.Next()) {
    IPA_EDGE* edge = pred_iter.Current_Edge();
    Add_Edge (Caller(edge), origin, edge);
    in_edges[in_count++] = pred_iter.Current_Edge_Index();
  }

  // delete the incoming edges
  for (INT32 i = 0; i < in_count; ++i) {
    _graph->Delete_Edge (in_edges[i]);
  }

  // Union the quasi-clone annotations with those of the original node
  Union_Quasi_Clone_Cprop_Annot (origin, clone);
  
  // Remove the clone node from the graph
  (void) _graph->Delete_Node (clone->Node_Index());
}


// ------------------------------------------------------------------
// Update following info for IPA_NODE after it has been preoptimized:
//   - outgoing edges (call sites may be changed)
//   - SUMMARY_PROCEDURE
//   - WHIRL node
//   - enter IPA_NODE to IPL_SUMMARY_PTRS mapping into hash table
// ------------------------------------------------------------------
void 
IPA_CALL_GRAPH::Update_Node_After_Preopt (IPA_NODE* node,
                                          WN* opt_wn,
                                          SUMMARY_CALLSITE* callsite_array,
                                          IPL_SUMMARY_PTRS* summary_ptrs)
{
  // Delete indirect and opaque call edges
  node->Icall_List().clear();
  node->Ocall_List().clear();

  // Delete direct call edges
  EDGE_INDEX* out_edges = 
    (EDGE_INDEX*) alloca (Num_Out_Edges(node) * sizeof(EDGE_INDEX));

  INT32 out_count = 0;
  IPA_SUCC_ITER succ_iter (this, node);
  for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {    
    out_edges[out_count++] = succ_iter.Current_Edge_Index();
  }

  for (INT32 i = 0; i < out_count; ++i) {
    _graph->Delete_Edge (out_edges[i]);
  }

  // Node may have been marked as visited in IPA_CALL_GRAPH::Map_Callsites
  // if some of its callees had been cloned. Since WHIRL is now changed,
  // Map_Callsits should be called again
  node->Clear_Visited();

  // Set the new WHIRL tree, summary procedure, successor count, pu_size
  node->Set_Whirl_Tree (opt_wn);
  node->Set_Preoptimized();
  WN_Parentize (opt_wn, node->Parent_Map(), node->Map_Table());

  SUMMARY_PROCEDURE* summary_proc = node->Summary_Proc();
  UINT16 callsite_count = summary_proc->Get_callsite_count();
  node->Set_Total_Succ (callsite_count);
  node->Set_PU_Size (PU_SIZE (summary_proc->Get_bb_count(),
                              summary_proc->Get_stmt_count(),
                              summary_proc->Get_call_count()));

  SUMMARY_SYMBOL* symbol_array = IPA_get_symbol_array (node);
  
  // Iterate over regenerated call sites and update edges
  for (UINT16 j = 0; j < callsite_count; ++j) {

    // indirect calls
    if (callsite_array[j].Is_func_ptr()) {
      append_icall_list (node->Icall_List(), &callsite_array[j]);
    }
    else if (!callsite_array[j].Is_intrinsic()) {
      // direct calls
      INT32 callee_sym_index = callsite_array[j].Get_symbol_index();
      ST* callee_st = ST_ptr(symbol_array[callee_sym_index].St_idx());

      // if it is a weak symbol, find the corresponding strong
      while (ST_is_weak_symbol (callee_st) &&
             ST_st_idx (callee_st) != ST_base_idx (callee_st)) {
        callee_st = ST_base (callee_st);
      }
      Clear_ST_is_not_used (callee_st);

      // If the callee is not in a WHIRL IR file, its index will 
      // be invalid. In that case we do not add the edge, but we
      // add the callsite to a special list of opaque calls.
      NODE_INDEX callee_idx = AUX_PU_node(Aux_Pu_Table[ST_pu(callee_st)]);
      if (callee_idx != INVALID_NODE_INDEX) {
        IPA_EDGE* edge = Add_New_Edge(&callsite_array[j],
                                      node->Node_Index(), 
                                      callee_idx);
        IPA_NODE* callee = _graph->Node_User(callee_idx);
        if (callee->Has_Propagated_Const()) {
          edge->Set_Propagated_Const();
        }
      }
      else {
        append_icall_list (node->Ocall_List(), &callsite_array[j]);
      }
    }
  }

  // If not done before, initialize node to new summary info map
  // and then enter summary and array summary pointers into it
  if (_preopt_node_to_new_summary_map == 0) {
    _preopt_node_to_new_summary_map = 
      CXX_NEW (IPA_NODE_TO_IPL_SUMMARY_MAP (32, _pool), _pool);
  }
  _preopt_node_to_new_summary_map->Enter (node, summary_ptrs);

}

#endif // _STANDALONE_INLINER


char*
IPA_Node_Name(IPA_NODE* node)
{
  if (!node->Is_Quasi_Clone()) {
    return node->Name();
  }
  
  IPA_NODE* origin = IPA_Call_Graph->Clone_Origin(node);
  IPA_CLONE_ARRAY* clone_array = IPA_Call_Graph->Clone_Array(origin);
  UINT32 clone_num;
  for (clone_num = 0; clone_num < clone_array->Elements(); ++clone_num) {
    if ((*clone_array)[clone_num] == node) {
      break;
    }
  }

  size_t size = strlen(origin->Name())+15;
  char* name = TYPE_MEM_POOL_ALLOC_N(char, Malloc_Mem_Pool, size);
  sprintf(name, "%s..clone..%u", origin->Name(), clone_num);
  
  return name;
}

  
// -------------------------------------------
// Print all nodes and edges in the call graph
// -------------------------------------------
void 
IPA_CALL_GRAPH::Print (FILE* fp)
{
  Print(fp, PREORDER);
}

// ---------------------------------------------
// Print all node indices in the specified order
// ---------------------------------------------
void 
IPA_CALL_GRAPH::Print (FILE* fp, TRAVERSAL_ORDER order)
{
  IPA_NODE_ITER cg_iter(IPA_Call_Graph, order);
  for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {

    IPA_NODE* node = cg_iter.Current();
    if (node) {

      fprintf(fp, "PU    %s\n", IPA_Node_Name(node));
      BOOL seen_callee = FALSE;

      IPA_SUCC_ITER succ_iter(node);
      for (succ_iter.First(); !succ_iter.Is_Empty(); succ_iter.Next()) {
        if (IPA_NODE* callee = Callee(succ_iter.Current_Edge())) {
          if (!seen_callee) {
            fprintf(fp, "CALLS");
            seen_callee = TRUE;
          }
          fprintf(fp, "\t%s\n", IPA_Node_Name(callee));
        }
      }

      if (!seen_callee) {
        fprintf(fp, "HAS NO CALLS\n");
      }
      fprintf(fp, "\n");
    }
  }
}


#ifdef _LIGHTWEIGHT_INLINER
void 
IPA_NODE::Free_inlined_list()
{
  const INLINED_BODY_LIST& inlined_list = Inlined_list ();

  for (INLINED_BODY_LIST::const_iterator iter = inlined_list.begin ();
	iter != inlined_list.end (); ++iter) {
      MEM_POOL_FREE(Malloc_Mem_Pool, *iter);
  }
}

BOOL
Is_Node_Inlinable_In_Call_Graph(ST_IDX idx)
{
   IPA_NODE_ITER cg_iter (PREORDER, Malloc_Mem_Pool);
   for (cg_iter.First (); !cg_iter.Is_Empty(); cg_iter.Next ()) {

      IPA_NODE* node = cg_iter.Current ();

      if (node && (ST_st_idx(node->Func_ST()) == idx) && node->Has_Inline_Attrib())
	  return TRUE;
  }
  return FALSE;
}

BOOL
Pred_Is_Root(const IPA_NODE* node) 
{
    IPA_PRED_ITER pred_iter (node->Node_Index());

    for (pred_iter.First (); !pred_iter.Is_Empty (); pred_iter.Next ()) {
        IPA_EDGE *edge = pred_iter.Current_Edge ();

        if (edge) {
#if 0
            IPA_NODE* caller = IPA_Call_Graph->Caller (edge);

            if (caller->Node_Index() == IPA_Call_Graph->Root()) 
	        return TRUE;
#endif
        }
	else
	    return TRUE;  	// NULL edge connected to ROOT
    }
    return FALSE;
}

#endif // _LIGHTWEIGHT_INLINER

