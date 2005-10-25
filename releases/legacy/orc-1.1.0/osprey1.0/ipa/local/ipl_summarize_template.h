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
/* ====================================================================
 * ====================================================================
 *
 * Module: ipl_summarize.cxx
 *
 * Description:
 *	operations for generating summary information.
 *
 * ====================================================================
 * ====================================================================
 */

#ifndef ipl_summarize_template_INCLUDED
#define ipl_summarize_template_INCLUDED

#ifndef wn_tree_util_INCLUDED
#include "wn_tree_util.h"
#endif

#ifndef ipl_summarize_util_INCLUDED
#include "ipl_summarize_util.h"
#endif // ipl_summarize_util_INCLUDED

#ifndef loop_info_INCLUDED
#include "loop_info.h"			// for Record_scalar_flow ()
#endif // loop_info_INCLUDED

#ifndef ipl_linex_INCLUDED
#include "ipl_linex.h"
#endif

#include "region_util.h"                // for WN_Fake_Call_EH_Region
#include "wn_mp.h"                    // for WN_has_pragma_with_side_effect
#include "ipl_lno_util.h" 
#include "wb_ipl.h"

extern BOOL DoPreopt;
extern BOOL Do_Par;
extern BOOL Do_Common_Const;
extern ALIAS_MANAGER* Ipl_Al_Mgr;
extern DU_MANAGER *Ipl_Du_Mgr;
extern DYN_ARRAY<char*>* Ipl_Symbol_Names;
extern DYN_ARRAY<char*>* Ipl_Function_Names;

extern void Init_Chi_Phi_Hash_Tables(MEM_POOL*);
extern void IPL_Mark_Code(WN* func_nd);
extern void IPL_Build_Access_Vectors(WN* func_nd);
extern void Initialize_Access_Vals (DU_MANAGER*, FILE*);
extern void Finalize_Access_Vals();
extern void IPL_Initialize_Par_Code();
extern void IPL_Finalize_Par_Code();
extern void IPL_Finalize_Projected_Regions(SUMMARY_PROCEDURE *p);
extern DYN_ARRAY<char*>* Ipl_Symbol_Names;
extern DYN_ARRAY<char*>* Ipl_Function_Names; 


// helper functions
static inline BOOL
ST_is_formal(const ST* s)
{
  return (ST_sclass(s) == SCLASS_FORMAL || ST_sclass(s) == SCLASS_FORMAL_REF);
}

static inline BOOL
ST_is_common_block (const ST* st)
{
  return 
    ( ST_class(st) == CLASS_VAR &&
      ST_base(st) == st &&
      (ST_sclass(st) == SCLASS_COMMON || ST_sclass(st) == SCLASS_DGLOBAL) && 
      TY_kind(ST_type(st)) == KIND_STRUCT );
}

static inline BOOL
ST_is_common_element (const ST* st)
{
  return ( ST_class(st) == CLASS_VAR &&
           ST_base(st) != st &&
           ST_is_common_block(ST_base(st)) );
}

// Given an expression, find out if it contains any address of a symbol 
enum ADDR_TAKEN_ACTION
{
    RECORD_PASSED,			// set addr_passed bit for any LDA
    RECORD_SAVED,			// set addr_saved bit for any LDA
    RECORD_EXTERN			// set addr_passed bit if LDA is
					// for a symbol defined outside of
					// the current scope.
};

template <PROGRAM program>
static void
set_addr_taken_expr (const WN* expr, SUMMARIZE<program>* sum,
		     ADDR_TAKEN_ACTION action, BOOL is_iload)
{
  Is_True (OPERATOR_is_expression (WN_operator (expr)),
           ("Expecting an expression node"));

  WN_TREE_ITER<PRE_ORDER, const WN*> iter (expr);

  while (iter.Wn () != NULL) {
    const WN* wn = iter.Wn ();
    OPERATOR opr = WN_operator (wn);
	
    if (program == INLINER && ! OPERATOR_is_expression (opr)) {
      Set_Addr_Taken_Attrib (wn, sum);
      iter.WN_TREE_next_skip ();
      continue;
    }
	    
    if (OPERATOR_is_load (opr) && !OPERATOR_is_leaf (opr)) {
      // indirect load, ignore
      if (program == INLINER) {
        set_addr_taken_expr(WN_kid0 (wn), sum, action, TRUE);
        iter.WN_TREE_next_skip ();
        continue;
      }
      else {
        iter.WN_TREE_next_skip ();
        continue;
      }
    }

    if (!is_iload && opr == OPR_LDA) {
      ST* st = WN_st (wn);
      if (ST_class(st) == CLASS_VAR || ST_class(st) == CLASS_FUNC) {
        IPL_ST_INFO& st_info = Aux_Symbol(st);
        switch (action) {
        case RECORD_SAVED:
          // We don't want to set addr_saved if it is originally
          // not set in the symbol table.  However, it
          // ST_addr_saved is originally set but cleared by IPL,
          // we need to set it again.  This can happen when a
          // symbol's address is only saved by the nested PU, and 
          // IPL clears the addr_saved bit when processing the parent. 
          if (st_info.addr_saved_reset || ST_addr_saved (st)) {
            st_info.addr_saved = TRUE;
            Set_ST_addr_saved (st);
            if (st_info.summary_symbol_idx > -1) {
              sum->Get_symbol(st_info.summary_symbol_idx)->Set_addr_saved();
            }
            // propagate addr_saved atttribute from an element 
            // of a common block to the common block itself
            if (ST_is_common_element(st)) {
              ST* base_st = ST_base(st);
              IPL_ST_INFO& st_info = Aux_Symbol(base_st);
              st_info.addr_saved = TRUE;
              Set_ST_addr_saved(base_st);
              if (st_info.summary_symbol_idx > -1) {
                sum->Get_symbol(st_info.summary_symbol_idx)->Set_addr_saved(); 
              }
            }
          }
          break;

        case RECORD_EXTERN:
          if (ST_level (st) == CURRENT_SYMTAB)
            break;
          // fall through

        case RECORD_PASSED:
          st_info.addr_passed = TRUE;
          if (st_info.summary_symbol_idx > -1) {
            sum->Get_symbol(st_info.summary_symbol_idx)->Set_addr_passed();
          }
          // propagate addr_passed atttribute from an element 
          // of a common block to the common block itself
          if (ST_is_common_element(st)) {
            ST* base_st = ST_base(st);
            IPL_ST_INFO& st_info = Aux_Symbol(base_st);
            st_info.addr_passed = TRUE;
            Set_ST_addr_passed(base_st);
            if (st_info.summary_symbol_idx > -1) {
              sum->Get_symbol(st_info.summary_symbol_idx)->Set_addr_passed(); 
            }
          }
          break;
        }
      }
    }

    ++iter;
  }
} // set_addr_taken_expr


// walk the entire procedure and set the address taken attributes
template <PROGRAM program>
static void
Set_Addr_Taken_Attrib (const WN *proc_entry, SUMMARIZE<program>* sum)
{
    WN_TREE_ITER<PRE_ORDER, const WN*> iter (proc_entry);

    while (iter.Wn () != NULL) {
	const WN* wn = iter.Wn ();
	OPERATOR opr = WN_operator (wn);

	if (OPERATOR_is_store (opr)  || (opr == OPR_RETURN_VAL)) {
	    // TODO:  ignore stores to stack variables that are never
	    // passed out of the PU
	    set_addr_taken_expr (WN_kid0 (wn), sum, RECORD_SAVED, FALSE);
	    if (program == INLINER)
	        set_addr_taken_expr (WN_kid0 (wn), sum, RECORD_PASSED, FALSE);
	    iter.WN_TREE_next_skip ();
	    
	} else {
	    INT i;
	    switch (opr) {
#ifdef TODO
	    case OPR_ICALL:
		// Normally, we should ignore the function pointer of an
		// ICALL, in the same way we ignore LDA under ILOAD.
		// However, in the case of ICALL (LDA foo), we should
		// convert it to a direct call and also record this in the 
		// summary info as a direct call.  Until we do such a
		// conversion, we need to mark foo as address passed.
		// Otherwise DFE might delete foo if there is no other
		// direct call to foo.
		// By *NOT* handling ICALL in this switch statement, all
		// the PARM nodes will be handled by the OPR_PARM case
		// below, and the function pointer will be handled by the
		// OPR_LDA case below.
#endif // TODO
		
	    case OPR_IO_ITEM:
		for (i = 0; i < WN_kid_count (wn); ++i)
		    if (OPERATOR_is_expression (WN_operator (WN_kid (wn, i))))
			set_addr_taken_expr (WN_kid (wn, i), sum,
					     RECORD_PASSED, FALSE);
		iter.WN_TREE_next_skip ();
		break;
		
	    case OPR_PARM:
		set_addr_taken_expr (WN_kid0 (wn), sum, RECORD_PASSED, FALSE);
		iter.WN_TREE_next_skip ();
		break;

	    case OPR_LDA:
		if (ST_level (WN_st (wn)) != CURRENT_SYMTAB)
		    set_addr_taken_expr (wn, sum, RECORD_EXTERN, FALSE);
		++iter;
		break;

	    default:
		++iter;
	    }
	}
    }
} // Set_Addr_Taken_Attrib


struct update_symtab
{
#ifdef Is_True_On
    BOOL trace;

    update_symtab () : trace (Get_Trace (TP_IPL, TT_IPL_VERBOSE)) {}
    
#endif
    void operator() (UINT32, ST* st) const {
	IPL_ST_INFO& st_info = Aux_Symbol (st);
	if (st_info.addr_saved)
	    Set_ST_addr_saved (st);
	else if (ST_addr_saved (st) && !ST_has_nested_ref (st)) {
	    Clear_ST_addr_saved (st);
	    st_info.addr_saved_reset = TRUE;
#ifdef Is_True_On
	    if (trace)
		fprintf (TFile, "Clearing addr_saved for %s\n", ST_name (st));
#endif

	}

	if (st_info.addr_passed)
	    Set_ST_addr_passed (st);
	else if (ST_addr_passed (st) && !ST_has_nested_ref (st)) {
	    Clear_ST_addr_passed (st);
#ifdef Is_True_On
	    if (trace)
		fprintf (TFile, "Clearing addr_passed for %s\n", ST_name (st));
#endif
	}
    }
	    
}; // update_symtab


// scan all INITV for SYMOFF entries that specifies a symbol in
// CURRENT_SYMTAB
// this should be very rare, so we don't care about efficiency
static void
search_for_symoff_initv (INITV_IDX initv_idx)
{
    while (initv_idx) {
	const INITV& initv = Initv_Table[initv_idx];
	if (INITV_kind (initv) == INITVKIND_SYMOFF) {
	    ST_IDX st_idx = INITV_st (initv);
	    Aux_Symbol[st_idx].addr_saved = TRUE;
	} else if (INITV_kind (initv) == INITVKIND_BLOCK)
	    search_for_symoff_initv (INITV_blk (initv));
	initv_idx = INITV_next (initv);
    }
} // search_for_symoff_initv


struct search_for_static_initialization
{
    void operator() (UINT32, const INITO* inito) const {
	search_for_symoff_initv (INITO_val (*inito));
    }
};


// The preopt always set the ST_addr_saved bit too conservatively.  So we
// need to recompute them.
template <PROGRAM program>
void
Recompute_Addr_Taken (const WN *proc_entry, SUMMARIZE<program>* sum)
{
    // sometime, preopt or other backend phases might create a few new ST
    // entries 
    if (program == IPL) {
	for (SYMTAB_IDX i = GLOBAL_SYMTAB; i <= CURRENT_SYMTAB; ++i) {
	    if (ST_Table_Size (i) > Aux_Symbol_Info[i].size ()) {
		vector<IPL_ST_INFO>& aux_st = Aux_Symbol_Info[i];
		aux_st.insert (aux_st.end(),
			       ST_Table_Size (i) - aux_st.size (),
			       IPL_ST_INFO ());
	    }
	}
    }	

    // search for run-time address taken
    Set_Addr_Taken_Attrib (proc_entry, sum);

    // search for compile-time (static) address taken
    if (Scope_tab[CURRENT_SYMTAB].inito_tab->Size () > 1)
	For_all (Inito_Table, CURRENT_SYMTAB,
		 search_for_static_initialization ());

    // update(override) the symtab addr_taken attributes based on our own
    // analysis 
    For_all (St_Table, CURRENT_SYMTAB, update_symtab ());
} // Recompute_Addr_Taken

static MEM_POOL Temp_pool;

template <PROGRAM program>
void
SUMMARIZE<program>::Summarize (WN *w)
{
  static BOOL Temp_pool_initialized = FALSE;
  WN_MAP save_parent_map = Parent_Map;
  
  if (!Temp_pool_initialized) {
    Temp_pool_initialized = TRUE;
    MEM_POOL_Initialize(&Temp_pool, "temp pool", 0);
  }
  
  MEM_POOL_Popper pool (&Temp_pool);

  Init_Aux_Symbol_Info (CURRENT_SYMTAB);
    
  Recompute_Addr_Taken (w, this);

  if (!Has_alt_entry ()) {
    Parent_Map = WN_MAP_Create(&Temp_pool);
    LWN_Parentize(w);

    // init the global hash table;
    Global_hash_table = CXX_NEW(GLOBAL_HASH_TABLE(113,&Temp_pool),&Temp_pool);
    entry_cache = CXX_NEW(SUMMARY_ENTRY_CACHE(&Temp_pool), &Temp_pool);

    // initialize hash tables for translating CODEREP and PHI
    Chi_To_Idx_Map =
	CXX_NEW (CHI_CR_TO_INT_MAP (113, ptr_hash<CODEREP> (),
				    equal_to<CODEREP*> (), &Temp_pool),
		 &Temp_pool);
    Phi_To_Idx_Map =
	CXX_NEW (PHI_NODE_TO_INT_MAP (113, ptr_hash<PHI_NODE> (),
				      equal_to<PHI_NODE*> (), &Temp_pool),
		 &Temp_pool);
    Hashed_Chis = CXX_NEW(CHI_CR_ARRAY(&Temp_pool), &Temp_pool);
    Hashed_Phis = CXX_NEW(PHI_NODE_ARRAY(&Temp_pool), &Temp_pool); 
    Num_Chis_On_PU_Start = Get_chi_idx()+1; 
    Num_Phis_On_PU_Start = Get_phi_idx()+1;   

    // map for reducing duplicat entries for jump function descriptions
    Summary_Map = WN_MAP32_Create (&Temp_pool);
    
    if (DoPreopt) {
      Init_cdg (&Temp_pool);
      if (Do_Par)
	// map for traversing the ctrl dep and stmt structures.
	Stmt_Map = WN_MAP32_Create (&Temp_pool);
    }
    
  }
    
  Set_entry_point (w);
  Process_procedure (w);

  // if the original subroutine contained alternate entry points
  // then we need to create summary procedure nodes for each
  // alternate entry point. The entry points occuring in the
  // subroutine are stored in a list which is generated during
  // the original summary procedure node process routine
  // The global variable Do_Altentry is also set in the process
  // routine if any entry points are encountered
  // Note, we need to perform a preorder walk from the entry node
  // onwards hence we will invoke the tree walker for the original
  // node and walk from there onwards
  if ( Has_alt_entry () ) {
    
    for (INT i = 0; i <= Get_alt_entry_idx(); i++) {
      ALT_ENTRY *alt_entry = Get_alt_entry (i);
      w = alt_entry->Get_wn ();
      if ( Trace_IPA  || Show_Progress) {
	
	fprintf (TFile, "Summarizing alternate entry point %s \n",
		 ST_name(WN_st(w)));
      }

      INT position = alt_entry->Get_position();
      INT formal_count = alt_entry->Get_formal_count();
      Summary->Process_alt_procedure (w, position, formal_count);
    }
    _alt_entry.Free_array();
    _alt_entry.Resetidx();
  }

  // clean up the maps
  if (!Has_alt_entry()) {
    WN_MAP_Delete(Parent_Map);
    Parent_Map = save_parent_map;
    WN_MAP_Delete(Summary_Map);
    if (DoPreopt && Do_Par) {
      WN_MAP_Delete(Stmt_Map);
    }
  }
  
} // SUMMARIZE<program>::Summarize


//-------------------------------------------------------------------
// DESCR:
// Set addr taken bits for global symbols
//-------------------------------------------------------------------
template <PROGRAM program>
struct process_compile_time_addr_saved
{
    SUMMARIZE<program>* const sum;
    vector<IPL_ST_INFO>& aux_st_info; 

    process_compile_time_addr_saved (SUMMARIZE<program>* const s) :
	sum (s), aux_st_info (Aux_Symbol_Info[GLOBAL_SYMTAB]) {}

    void operator() (UINT32, const INITV* initv) const {
	if (INITV_kind (*initv) != INITVKIND_SYMOFF)
	    return;
	ST_IDX st_idx = INITV_st (*initv);
	if (ST_IDX_level (st_idx) != GLOBAL_SYMTAB)
	    return;
	const ST& st = St_Table[st_idx];
	if (ST_sym_class (st) != CLASS_VAR &&
	    ST_sym_class (st) != CLASS_FUNC)
	    return;
	
	IPL_ST_INFO& st_info = aux_st_info[ST_IDX_index (st_idx)];
	st_info.addr_saved = TRUE;
    }
}; // process_compile_time_addr_saved

    
template <PROGRAM program>
struct set_global_addr_taken_attrib
{
#ifdef Is_True_On
    BOOL trace;
#endif
    SUMMARIZE<program>* const sum;
    const vector<IPL_ST_INFO>& aux_st_info;

    set_global_addr_taken_attrib (SUMMARIZE<program>* const s) :
	sum (s),
#ifdef Is_True_On
	trace (Get_Trace (TP_IPL, TT_IPL_VERBOSE)),
#endif
	aux_st_info (Aux_Symbol_Info[GLOBAL_SYMTAB]) {}

    void operator() (UINT32 idx, ST* st) const {

#ifdef _LIGHTWEIGHT_INLINER
	if (INLINE_Inlined_Pu_Call_Graph && (idx >= aux_st_info.size()))
	  return;	// This symbol was added by the inliner
#endif
        // skip special name holder symbols
        if (ST_class (st) == CLASS_NAME) 
          return;

	const IPL_ST_INFO& st_info = aux_st_info[idx];

	// update the addr_taken attributes in the symbol table
	if (st_info.addr_saved)
	    Set_ST_addr_saved (st);
#ifdef _LIGHTWEIGHT_INLINER
	else if (!INLINE_Inlined_Pu_Call_Graph && ST_addr_saved (st)) {
#else // _LIGHTWEIGHT_INLINER
	else if (ST_addr_saved (st)) {
#endif // _LIGHTWEIGHT_INLINER
	    Clear_ST_addr_saved (st);
#ifdef Is_True_On
	    if (trace)
		fprintf (TFile, "Clearing addr_saved for %s\n", ST_name (st));
#endif
	}

	if (st_info.addr_passed)
	    Set_ST_addr_passed (st);
	else
	    Clear_ST_addr_passed (st);

	// string literals often have address taken, but we don't have
	// summary info for them
	if (ST_class (st) == CLASS_CONST)
	    return;

	// now, update the summary_symbol

	if (st_info.addr_saved || st_info.addr_passed) {
	    UINT sym_idx = st_info.summary_symbol_idx;

	    Is_True (ST_class (st) == CLASS_VAR ||
		     ST_class (st) == CLASS_FUNC,
		     ("symbol is neither variable nor function"));

	    if (sym_idx == (UINT32) -1)
		sym_idx = sum->Get_symbol_index(st);

	    SUMMARY_SYMBOL *symbol = sum->Get_symbol (sym_idx);
	    
	    // record addr taken attributes for global symbols
	    if (st_info.addr_saved)
		symbol->Set_addr_saved ();

	    if (st_info.addr_passed)
		symbol->Set_addr_passed();
	}
    }
}; //  set_global_addr_taken_attrib

template <PROGRAM program>
void
SUMMARIZE<program>::Set_global_addr_taken_attrib (void)
{
    // set addr_saved for symbols whose addresses are used in compile-time
    // initialization 
    For_all (Initv_Table, process_compile_time_addr_saved<program> (this));

    // now scan all global symbols and update the SUMMARY_SYMBOL entry as
    // well as the ST attributes.
    For_all (St_Table, GLOBAL_SYMTAB,
	     set_global_addr_taken_attrib<program> (this));
} // Set_global_addr_taken_attrib


//-----------------------------------------------------------
// walk the OPR_PARM opcode
//-----------------------------------------------------------
template <PROGRAM program>
void
SUMMARIZE<program>::Update_Addr_Passed_Count (WN* opr_parm)
{
  WN_ITER *wni;
  INT i;
  const ST* s = NULL;

  // walk the tree
  for ( wni = WN_WALK_TreeIter(opr_parm); wni && WN_ITER_wn(wni) != 0;
       wni = WN_WALK_TreeNext(wni) ) {

    WN* w = WN_ITER_wn(wni);
    SUMMARY_SYMBOL *symbol;

    // nested calls within COMMA nodes: ignore LDA under
    // inner calls: LDA will be counted for the inner calls once only
    if ((program == INLINER) &&
	(WN_operator(w) == OPR_CALL))
      {
	WN_WALK_Abort(wni);
	return;
      }
    if (WN_operator(w) != OPR_LDA)
      continue;

    s = WN_st(w);

    if (ST_class(s) == CLASS_CONST)
      continue;
	
    symbol = Get_symbol (Get_symbol_index (s));

    // don't do this for symbols that are part of a common block
    // in fortran 
    if (symbol->Is_local () && !symbol->Is_common())
      symbol->Incr_addr_count ();
    
    if ( Trace_CopyProp ) 
      fprintf ( TFile, "\n  Addr passed count for  %s updated to %d\n",
	       ST_name(s), symbol->Get_addr_count ());

	
    // handle splitting of common blocks
    if (ST_st_idx (s) == ST_base_idx (s) && ST_sclass (s) != SCLASS_COMMON)
      continue;
	
    if (ST_st_idx (s) != ST_base_idx (s)) {
      const ST* st = ST_base (s);
      if (ST_sclass (st) == SCLASS_COMMON) {
	// now enter it as a parameter only if the entry being
	// passed is NOT a 1 dimensional array
	// check the following:
	// 1. if the parent is an OPR_PARM node
	// 2. if it a 1-d array that is being passed
	WN* parent_w = LWN_Get_Parent(w);
		
	OPERATOR opc = WN_operator(parent_w);

	if (opc == OPR_PARM || opc == OPR_ARRAY) {
	  if (TY_kind (ST_type (s)) == KIND_ARRAY &&
	      TY_kind (ST_type (st)) == KIND_STRUCT) {
	    const TY& array_type = Ty_Table[ST_type (s)];
	    if (ARB_dimension (TY_arb (array_type)) == 1) {
	      WN_WALK_Abort (wni);
	      return;
	    }
	  }
	}

	s = st;
      }
    }


    i = Get_symbol_index (s);
    Get_symbol (i)->Set_parm ();
  }
} // SUMMARIZE::Update_Addr_Passed_Count


//-----------------------------------------------------------------
// add the address attributes to the symbols array
//-----------------------------------------------------------------
template <PROGRAM program>
inline void
SUMMARIZE<program>::Set_local_addr_taken_attrib ()
{
    typedef vector<IPL_ST_INFO> AUX_INFO;
    const AUX_INFO& aux_info = Aux_Symbol_Info[CURRENT_SYMTAB];

    for (AUX_INFO::const_iterator first = aux_info.begin ();
	 first != aux_info.end (); ++first) {

	const IPL_ST_INFO& st_info = *first;

	if (st_info.summary_symbol_idx == -1)
	    continue;

	if (st_info.addr_saved || st_info.addr_passed) {
	    SUMMARY_SYMBOL* symbol = Get_symbol (st_info.summary_symbol_idx);
	    if (st_info.addr_saved)
		symbol->Set_addr_saved ();
	    if (st_info.addr_passed)
		symbol->Set_addr_passed ();
	}
    }
} // Set_local_addr_taken_attrib


//-----------------------------------------------------------
// Get the symbol_crefcount_index of the st
// if not found create a new symbol_crefcount and return its index
//-----------------------------------------------------------

template <PROGRAM program>
INT 
SUMMARIZE<program>::Get_symbol_crefcount_index(INT idx) 
{
    FmtAssert(program == INLINER, 
      ("Get_symbol_crefcount_index can be called only from INLINER"));

    // the symbol in question IS a formal
    INT maxidx;
    SUMMARY_CREF_SYMBOL *sym;

    if (Has_symbol_crefcount_entry ()) { 
	INT i = 0;
	maxidx = Get_symbol_crefcount_idx ();
	while (i <= maxidx) {
	    if (Get_symbol_crefcount(i)->Get_symbol_index() == idx)
		return i;
	    else
		i++;
	} // while i <= maxidx
    } // if has_crefcount_entry
  
    // Either there are no crefcount_entries or this one wasn't found yet
    // create a NEW _symbol_crefcount
    sym = New_symbol_crefcount();  
    sym->Set_symbol_index(idx);
    return Get_symbol_crefcount_idx ();
}

//-----------------------------------------------------------
// If st is found return its symbol_crefcount_index
// else return -1
//-----------------------------------------------------------


template <PROGRAM program>
INT 
SUMMARIZE<program>::Find_symbol_crefcount_index(INT idx) 
{
  FmtAssert(program == INLINER,
    ("Find_symbol_crefcount_index can be called only from INLINER"));

// the symbol in question IS a formal
  INT i = 0;
  INT maxidx;
  if (Has_symbol_crefcount_entry ()) { 
    maxidx = Get_symbol_crefcount_idx ();
    while (i <= maxidx) {
      if (Get_symbol_crefcount(i)->Get_symbol_index() == idx)
	return i;
      else
	i++;
    } // while i < maxidx
  } // if has_crefcount_entry
  return -1; // symbol not found
}

//-----------------------------------------------------------
// If caller with st-index is found return its proc_info_index
// else return -1
//-----------------------------------------------------------


template <PROGRAM program>
INT 
SUMMARIZE<program>::Find_proc_info_index(INT32 idx) 
{
  FmtAssert(program == INLINER,
    ("Find_proc_info_index can be called only from INLINER"));

  INT i = 0;
  INT maxidx;
  if (Has_proc_info_entry ()) { 
    maxidx = Get_proc_info_idx ();
    while (i <= maxidx) {
      if (Get_proc_info(i)->Get_symbol_index() == idx)
	return i;
      else
	i++;
    } // while i < maxidx
  } // if has_proc_info_entry
  return -1; // symbol not found
}

//-----------------------------------------------------------
// return TRUE if parent of w is an ISTORE and w is the LHS
//-----------------------------------------------------------
static inline BOOL
WN_is_istore_or_mstore (WN* w)
{ 
  WN* parent = LWN_Get_Parent(w);
  return (parent &&
          (WN_operator(parent) == OPR_ISTORE ||
           WN_operator(parent) == OPR_MSTORE) &&
          WN_kid1(parent) == w);
}

static BOOL 
WN_is_in_pragma (WN* wn_node)
{
  for (WN* wn = wn_node; wn != NULL; wn = LWN_Get_Parent(wn))  
    if (WN_operator(wn) == OPR_PRAGMA || WN_operator(wn) == OPR_XPRAGMA)
      return TRUE; 
  return FALSE; 
} 

// check if the current opcode is the last one in the tree
static inline BOOL
Last_Node (WN_TREE_ITER<PRE_ORDER, WN*> i)
{
    i.Skip ();
    return i.Wn () == NULL;
}

//-----------------------------------------------------------
// summary procedure node
// create call site entries
//-----------------------------------------------------------
template <PROGRAM program>
void
SUMMARIZE<program>::Process_procedure (WN* w)
{
    SUMMARY_PROCEDURE *proc = New_procedure ();
    WN* w2, *alt_wn;
    ST *st = WN_st (w);
    INT loopnest = 0;
    INT pu_first_formal_idx = 0;
    INT pu_last_formal_idx = 0;
    INT pu_first_actual_idx = 0;
    INT pu_first_callsite_idx = 0;
    BOOL Do_Altentry = Has_alt_entry ();
    BOOL Do_parallel_stuff = Do_Par && !Do_Altentry && DoPreopt ;
    BOOL Do_common_const = Do_Common_Const && !Do_Altentry && DoPreopt;
    BOOL Has_return_already = FALSE;
    BOOL Has_pdo_pragma = FALSE;
    BOOL Has_local_pragma = FALSE;

    Trace_Modref = Get_Trace ( TP_IPL, TT_IPL_MODREF );
    
    BOOL Direct_Mod_Ref = FALSE;
    if (!Do_parallel_stuff)
      proc->Set_has_incomplete_array_info();

    if (!WHIRL_Return_Val_On)
	proc->Set_use_lowered_return_preg ();

    // check for the position in the actual index
    if (Do_parallel_stuff) {
	pu_first_formal_idx = Get_formal_idx() + 1;
	pu_first_actual_idx = Get_actual_idx() + 1;
	pu_first_callsite_idx = Get_callsite_idx() + 1;
    }
    // process all the file/pu scope pragmas
    if (WN_operator(w) == OPR_FUNC_ENTRY)
	Process_pragmas (w);

    // set the formals array
    if ((WN_operator(w) == OPR_FUNC_ENTRY) &&
	WN_num_formals(w) )
	Process_formal (w, WN_num_formals(w), proc);

    if (Do_parallel_stuff) {
      pu_last_formal_idx = Get_formal_idx();
    } 

    const PU& pu = Get_Current_PU ();
    if (PU_mp_needs_lno (pu))
	proc->Set_has_mp_needs_lno ();

    // the index into the symbols array for the st to this procedure
    proc->Set_symbol_index (Get_symbol_index(st));

    if (Cur_PU_Feedback) { // was FB_PU_Has_Feedback
	FB_FREQ freq = (Cur_PU_Feedback->Query_invoke(w)).freq_invoke;

	if (freq.Known()) {
	    proc->Set_has_PU_freq ();
	    SUMMARY_FEEDBACK *fb = New_feedback ();
	    proc->Set_feedback_index (Get_feedback_idx ());
	    fb->Set_frequency_count (freq);
	}
	else {
	  // FB_PU_Has_Feedback = FALSE;
	    DevWarn ("Unknown invoke frequency found in %s so no feedback info in this procedure will be considered", ST_name(WN_st(w)));
	}
    }

    Set_lang (proc);

    if (PU_is_inline_function (pu))
	proc->Set_may_inline();

    if (PU_no_inline (pu) )
	proc->Set_no_inline();
    
    if (PU_no_delete (pu) )
	proc->Set_no_delete();

    if (TY_is_varargs (Ty_Table[ST_pu_type (st)]))
	proc->Set_is_varargs();


    // set the index into the globals array
    proc->Set_global_index (Get_global_idx () + 1);


    // if Do_Par is set then build the access vectors, if
    // condition information and reductions
    // TODO:
    // Map the access vectors the the CFG
    // Map the access vectors to LINEX structures

    // Use/Extend LNO's vector projection capabilities
    if (Do_parallel_stuff) {
	Ipl_Al_Mgr = Get_alias_mgr();	  
	Ipl_Du_Mgr = Get_du_mgr();
	IPL_Initialize_Par_Code();
	IPL_Mark_Code(w);
	WB_IPL_Set_Reduction_Map(IPL_reduc_map);
	Initialize_Access_Vals(Get_du_mgr(), TFile);
	IPL_Build_Access_Vectors(w);
	WB_IPL_Set_Access_Array_Map(IPL_info_map);
    }

    // if we are summarizing an alternate entry point then we must
    // search for the alternate entry point node in the subroutine.
    // and keep walking until we encounter it
    if ( Do_Altentry ) {
	alt_wn = w;
	w = Get_entry_point ();
    }

    BOOL phi_index;

    if (DoPreopt)
	phi_index = Get_phi_idx ();	// record initial phi node index
    

    BOOL found = FALSE;

    // walk the tree
    for (WN_TREE_ITER<PRE_ORDER, WN*> iter (w); iter.Wn () != NULL; ++iter) {

	// note if it is an alternate entry then we keep walking the
	// tree until we encounter the alternate entry point of
	// interest to us
	while ( (Do_Altentry) && (!found) ) {
	    if ( iter.Wn () == alt_wn ) {
		found = TRUE;
	    } else {
		++iter;
	    }
	}

	w2 = iter.Wn ();
	st = OPERATOR_has_sym(WN_operator(w2)) ? WN_st(w2) : NULL;


	// get SUMMARY_SYMBOLs for a common block and its element
	if (st && (Do_Common_Const || Do_parallel_stuff)) {
          if (ST_is_common_element(st)) {
            Get_symbol_index(ST_base(st));
	    Get_symbol_index(st);
          }
          else if (ST_is_common_block(st)) {
            Get_symbol_index(st);
          }
        }
	
   	if (st && (is_variable_dim_array(ST_type(st)))) 
	    proc->Set_has_var_dim_array();

	switch ( WN_operator(w2) ) {
	case OPR_DO_LOOP:
	case OPR_WHILE_DO:
	case OPR_DO_WHILE:
	    loopnest++;
	    break;

	case OPR_ICALL:
	case OPR_CALL: {
            // ignore fake call from exception handling block
            if ((WN_opcode(w2) == OPC_VCALL) &&
                (WN_Fake_Call_EH_Region(w2, Parent_Map)))
              break;

            proc->Incr_call_count ();
            Process_callsite (w2, proc->Get_callsite_count (), loopnest);
            proc->Incr_callsite_count ();
            Direct_Mod_Ref = TRUE;
	      
            // update actual parameter count
            if (Do_common_const && 
                !Process_control_dependence (w2, Get_callsite_idx())) {
              proc->Set_has_unstructured_cflow();
            }
	    break;
        } 

	case OPR_INTRINSIC_CALL:
	    Process_callsite (w2, proc->Get_callsite_count (), loopnest);
	    proc->Incr_callsite_count ();
	    Direct_Mod_Ref = TRUE;
	    break;
	    
	case OPR_ARRAY: {
          WN* base = WN_array_base(w2);
          if (OPERATOR_has_sym(WN_operator(base))) {
            // for IPA:common record only stores to common arrays
            // NOTE: This should be fixed to include the case of mixed 
            // languages, where FORTRAN common is accessed as C struct
            if (Do_common_const &&
                WN_is_istore_or_mstore(w2) &&
                ST_is_common_element(WN_st(base))) {
              if (!Process_control_dependence(w2, 0)) {
                proc->Set_has_unstructured_cflow();
              }
            }
            // for IPA:array record all accesses to global and formal arrays
            else if (Do_parallel_stuff &&
                     !WN_is_in_pragma(w2) &&
                     (ST_level(WN_st(base)) == GLOBAL_SYMTAB ||
                      ST_is_formal(WN_st(base)))) {
              if (!Process_control_dependence(w2, 0)) {
                proc->Set_has_unstructured_cflow();
              }
            } 
          }
          break;
        } 

	case OPR_LDA:
	case OPR_LDID:
	case OPR_ILOAD:
	    Direct_Mod_Ref = TRUE;
	    Record_ref (w2);
	    break;
	  
	case OPR_STID:
          if (Do_common_const && ST_is_common_element(st)) {
            if (!Process_control_dependence(w2, 0)) {
              proc->Set_has_unstructured_cflow();
            }
          }
          // fall through

	case OPR_ISTORE:
	case OPR_MSTORE:
	    Direct_Mod_Ref = TRUE;
	    Record_mod (w2);
	    break;

	case OPR_IO:
	    Process_IO(w2);
	    break;

	    // Exceptions now come as REGIONS (not as EXC_SCOPE_BEGINS)
	case OPR_EXC_SCOPE_BEGIN:
	case OPR_EXC_SCOPE_END:
	    Fail_FmtAssertion ("Invalid opcode from old style Exception Processing\n");
	    break;

	case OPR_REGION:
	    if (WN_region_is_EH(w2))
		proc->Set_exc_inline();
	    if (WN_region_kind(w2)== REGION_KIND_TRY)
		proc->Set_exc_try();
	    break;

        case OPR_PRAGMA:
	    if (st) {
		if (ST_is_formal(st) && !ST_is_value_parm(st))
		    proc->Set_has_formal_pragma();
	      
		if (PU_has_alloca (Get_Current_PU ()) && 
			is_variable_dim_array(ST_type(st)))
		    // Local VLAs with PRAGMA
		    proc->Set_has_formal_pragma();

		if (ST_sclass(st) == SCLASS_FORMAL ||
		    PU_has_alloca (Get_Current_PU ())
		    ) {
		    switch (WN_pragma(w2)) {
		    case WN_PRAGMA_DISTRIBUTE:
		    case WN_PRAGMA_DISTRIBUTE_RESHAPE:
		    case WN_PRAGMA_DYNAMIC:
		    case WN_PRAGMA_REDISTRIBUTE:
		    case WN_PRAGMA_AFFINITY:
		    case WN_PRAGMA_DATA_AFFINITY:
		    case WN_PRAGMA_THREAD_AFFINITY:
		    case WN_PRAGMA_PAGE_PLACE:
			proc->Set_has_formal_pragma();
			break;

		    default:
			break;
		    }
		}

		if (TY_is_non_pod(ST_type(st))) {
		    switch (WN_pragma(w2)) {
		    case WN_PRAGMA_LOCAL:
		    case WN_PRAGMA_LASTLOCAL:
		    case WN_PRAGMA_FIRSTPRIVATE:
			Has_local_pragma = TRUE;
			break;
			
		    default:
			break;
		    }
		}
	    }
	    // parallel pragmas can occur in 2 possible places
	    // 1. just before a loop (could have interveaning statements)
	    if ((WN_pragma(w2) == WN_PRAGMA_DOACROSS) ||
		(WN_pragma(w2) == WN_PRAGMA_PARALLEL_DO)) {
		proc->Set_has_parallel_pragma();
	    }
		
	    // 2. as a region in the region header 
	    if (WN_pragma(w2) == WN_PRAGMA_PARALLEL_BEGIN) {
		proc->Set_has_parallel_region_pragma();
	    }

	    if ((WN_pragma(w2) == WN_PRAGMA_DOACROSS) ||
		(WN_pragma(w2) == WN_PRAGMA_PARALLEL_DO) ||
		(WN_pragma(w2) == WN_PRAGMA_PARALLEL_BEGIN) ||
		(WN_pragma(w2) == WN_PRAGMA_PARALLEL_SECTIONS)) 
		proc->Set_has_noinline_parallel_pragma();

	    if ((WN_pragma(w2) == WN_PRAGMA_PDO_BEGIN) ||
		(WN_pragma(w2) == WN_PRAGMA_PSECTION_BEGIN) ||
		(WN_pragma(w2) == WN_PRAGMA_SINGLE_PROCESS_BEGIN)) 
		Has_pdo_pragma = TRUE;

	    if (WN_has_pragma_with_side_effect(w2))
                proc->Set_has_side_effect();

	    // now, inline pragmas are part of the function body
	    Process_pragma_node (w2);
	    break;
	    
	    // walk the parameter statement and check for
	    // addr passed opcodes only if the parameter
	    // is a local/formal and it does not have the
	    // addr_taken_and_saved bit set in the symbol table
	    // update the addr_passed_count in that case
	case OPR_PARM:
	    Update_Addr_Passed_Count(w2);
	    break;

	case OPR_ALTENTRY:
	    proc->Incr_altentry_count();

	    if ( Do_Altentry ) {
		// for alternate entry points record the wn 
		// if we are looking at an alternate entry point
		// then set is_alt_entry bit
		proc->Set_alt_entry();
	    } else {
		// else we are implying that this subroutine has
		// alternate entry points
		proc->Set_has_alt_entry();
	    }

	    proc->Set_no_inline();

	    // if we are processing the main subroutine then
	    // this variable will be set to false
	    // so in that case we record all the alternate
	    // entry points in the subroutine
	    if (!Do_Altentry)
		Process_alt_entry (w2);
	    break;
	    
	case OPR_RETURN_VAL:
	    Direct_Mod_Ref = TRUE;	// implicit store to return registers
	    // fall through
	case OPR_RETURN:
	    if (!proc->Has_early_returns ()) {
		if (!Last_Node (iter))
		    proc->Set_has_early_returns ();
	    }
	    break;
	}

	if (WN_next(w2) == NULL) {
	    /* check for end of a loop */
	    WN *parent = LWN_Get_Parent (w2);
	    if (parent && WN_opcode(parent) == OPC_BLOCK) {
		parent = LWN_Get_Parent (parent);
		if (parent) {
		    switch (WN_opcode(parent)) {
		    case OPC_DO_LOOP:
		    case OPC_WHILE_DO:
		    case OPC_DO_WHILE:
			loopnest--;
		    }
		}
	    }
	}

	// early check to see if there are any local pstatic variables
	// that would need to be promoted if inlined or cloned
	if (OPCODE_has_sym(WN_opcode(w2)) && WN_st_idx(w2) != 0) {
	    ST* st2 = ST_st_idx (st) == ST_base_idx (st) ? st : ST_base (st);
	    if (ST_level (st2) == CURRENT_SYMTAB) {
		// local symtab
		if (ST_sclass (st2) == SCLASS_PSTATIC)
		    proc->Set_has_pstatic ();
	    } else if (ST_sclass (st2) == SCLASS_FSTATIC &&
		       !ST_class (st2) == CLASS_CONST)
		proc->Set_has_fstatic ();
	}

    }

    if (proc->Get_callsite_count () > 0)
	proc->Set_callsite_index (Get_callsite_idx () -
				  proc->Get_callsite_count () + 1);

    proc->Set_global_count (Get_global_idx () + 1 - proc->Get_global_index ());


    if (!Do_Altentry) {
	if (Cur_PU_Feedback) { // was FB_PU_Has_Feedback
	    INT bb_count = 0;
	    INT stmt_count = 0;
 	    FB_FREQ cycle_count(0);
	    SUMMARY_FEEDBACK *fb = Get_feedback (proc->Get_feedback_index ());
 	    FB_FREQ freq_count = fb->Get_frequency_count();
	    Count_tree_size (*Cur_PU_Feedback, Get_entry_point (), bb_count, stmt_count, cycle_count, freq_count);
	    if (!cycle_count.Known()) {
		proc->Clear_has_PU_freq();
		DevWarn("%s has unknown frequencies so no feedback info in this procedure will be considered", ST_name(WN_st(w)));
		// FB_PU_Has_Feedback = FALSE;
	    }
	    else 
	        fb->Set_cycle_count (cycle_count);
	    fb->Set_effective_bb_count (bb_count);
	    fb->Set_effective_stmt_count (stmt_count);
	}

	if (DoPreopt) {
	    // Handle the cached control dependence nodes
	    proc->Set_ctrl_dep_index (Get_ctrl_dep_idx () + 1);
	    Generate_summary_control_dependence ();
	    proc->Set_ctrl_dep_count (Get_ctrl_dep_idx () -
				      proc->Get_ctrl_dep_index () + 1);
	    if (Get_phi_idx () > phi_index)
		Fix_phi_node_ctrl_dep_index (Get_phi (phi_index + 1),
					     Get_phi_idx () - phi_index);
	}
	if (Do_Par)
          IPL_Execution_Cost(w, proc, &Temp_pool, FALSE); 
	if (Do_parallel_stuff) {
            IPL_Access_Vector_To_Projected_Region(w,
                                                  proc,
                                                  pu_first_formal_idx,
                                                  pu_last_formal_idx,
                                                  pu_first_actual_idx,
                                                  Get_actual_idx(),
						  pu_first_callsite_idx,
						  Get_callsite_idx());
	    Finalize_Access_Vals();
	    IPL_Finalize_Projected_Regions(proc); // pop mem pools 
	    IPL_Finalize_Par_Code();
	}

	// record local addr taken attributes
	Set_local_addr_taken_attrib ();
    } else { 
      if (Do_Par)
        IPL_Execution_Cost(w, proc, &Temp_pool, TRUE); 
    } 
    
    if ( Direct_Mod_Ref )
	proc->Set_direct_mod_ref();
    
    if ( Has_local_pragma && Has_pdo_pragma)
	proc->Set_has_pdo_pragma();

} // SUMMARIZE::Process_procedure
				 
//====================================================================
// 
// Update_call_pragmas
//
// update the call attributes if any pragmas exist
//
//====================================================================
template <PROGRAM program>
void
SUMMARIZE<program>::Update_call_pragmas (SUMMARY_CALLSITE *callsite)
{
    INT name_index;
    char* func_name;
    
    func_name = ST_name (Get_symbol (callsite->Get_symbol_index())->St_idx ());

    // go down the list from the end, and stop after the first hit
    for (INT i = Get_inline_attr_idx(); i >= 0; i--) {
	INLINE_ATTR *pragma = Get_inline_attr (i);
	char *name = pragma->Get_name ();
	BOOL is_f77 = PU_f77_lang (Get_Current_PU ());
	if (is_f77) {
	    if (Fortran_string_compare (name, func_name)) {
		if (pragma->Is_file_inline())
		    callsite->Set_must_inline();
		if (pragma->Is_no_file_inline())
		    callsite->Set_no_inline();
		return;
	    }
	} else {
	    if (func_name[0] == name[0] && strcmp (func_name, name) == 0) {
		if (pragma->Is_file_inline())
		    callsite->Set_must_inline();
		if (pragma->Is_no_file_inline())
		    callsite->Set_no_inline();
		return;
	    }
	}
    }
} // SUMMARIZE::Update_call_pragmas


//-----------------------------------------------------------
// store the callsite information, set the actual parameter information
//-----------------------------------------------------------
template <PROGRAM program>
void
SUMMARIZE<program>::Process_callsite (WN *w, INT id, INT loopnest)
{
    INT count;
    SUMMARY_CALLSITE *callsite = New_callsite ();

    if (program == IPL)
	WN_MAP32_Set (Summary_Map, w, Get_callsite_idx () + 1);

    callsite->Set_callsite_id (id);
    callsite->Set_loopnest (loopnest);
    callsite->Set_param_count (WN_num_actuals(w));
    callsite->Set_return_type (WN_rtype(w));

    if (program == INLINER) {
	callsite->Set_symbol_index (Get_symbol_index(WN_st(w)));

	WN_MAP_Set_ID (Current_Map_Tab, w);

	if (File_Pragmas)
	    Update_call_pragmas(callsite);
    
	switch (WN_operator(w)) {
	    
	case OPR_CALL:
	    // Process callsite pragma
	    // callsite pragmas SUPERSEDE callee "inline" properties
	    // callsite pragmas also SUPERSEDE COMMAND LINE options 
	    
	    //a Inconsistent pragmas: don't set must/no inline
	    if (WN_Call_Inline(w) && WN_Call_Dont_Inline(w)) {
		if (Trace_IPA || Trace_Perf)
		    fprintf (TFile, "\t user specified inconsistent inline"
			     " pragmas at callsite\n"); 
	    } else if (WN_Call_Dont_Inline(w)) {
		//b callsite: pragma noinline ==> don't inline
		callsite->Set_no_inline();
	    } else if (WN_Call_Inline(w)) {
		//c callsite pragma inline ==> inline
		callsite->Set_must_inline();
	    } else {
		WN* parent_block = LWN_Get_Parent(w);
		Is_True(parent_block, ("Cannot get parent node of call\n"));

		// ignore fake calls that are not kid of a 
		// OPR_BLOCK (generalization of PV 335012.

		if (WN_operator (parent_block) != OPR_BLOCK) {
		    // fake call -- never inline
		    callsite->Set_no_inline();
		} else if (WN_operator (parent_block) == OPR_IO_ITEM) {
		    // checks to see if the call occurs inside
    		    // a fortran write statement
		    callsite->Set_no_inline();
		}
	    }

	    break;
	default:
	    break;
	}

#if 0
	if (!INLINE_Enable_Copy_Prop)
	    return;
#endif
    } else {

	/* ipl case */
	switch (WN_operator(w)) {

	case OPR_ICALL:
	    callsite->Set_func_ptr ();
	    count = WN_kid_count(w) - 1;

	    if (OPCODE_has_sym(WN_opcode(WN_kid(w, count)))) {

                const SUMMARY_CHECK_POINT chk_pt (this);

		SUMMARY_VALUE *value = New_value ();
		INT value_idx = Get_value_idx ();
		value->Set_not_const ();

		Process_jump_function (WN_kid(w, count), value_idx);

                value = Get_value (value_idx);
		INT tmp_idx = entry_cache->Lookup (SUM_VALUE, value);
		if (tmp_idx != -1 && tmp_idx < value_idx) {
                    Restore_from_check_point(&chk_pt);
		    callsite->Set_value_index (tmp_idx);
		} else {
		    entry_cache->Insert (SUM_VALUE, value_idx);
		    callsite->Set_value_index (value_idx);
		}
	    }

	    WN_MAP_Set_ID(Current_Map_Tab, w);
	    callsite->Set_map_id (WN_map_id(w));
	    break;

	case OPR_CALL:
	    callsite->Set_symbol_index (Get_symbol_index (WN_st(w)));
	    WN_MAP_Set_ID(Current_Map_Tab, w);
	    callsite->Set_map_id (WN_map_id(w));
 
	    if (Cur_PU_Feedback) { // was FB_PU_Has_Feedback
		FB_FREQ freq = Cur_PU_Feedback->Query(w, FB_EDGE_CALL_INCOMING);
		if (freq.Known()) {
		    callsite->Set_callsite_freq ();
		    callsite->Set_frequency_count (freq);
		}
		else {
		    SUMMARY_PROCEDURE *proc = Get_procedure (Get_procedure_idx());
		    proc->Clear_has_PU_freq();
		    DevWarn("%s has unknown frequencies so no feedback info in this procedure will be considered", ST_name(WN_st(w)));
		    // FB_PU_Has_Feedback = FALSE;
	        }
	    }

	    // if there are file based pragmas then update them
	    if (File_Pragmas) {
		Update_call_pragmas (callsite);
	    }

	    // Process callsite pragma
	    // callsite pragmas SUPERSEDE callee "inline" properties
	    // callsite pragmas also SUPERSEDE COMMAND LINE options 
	    
	    //a Inconsistent pragmas: don't set must/no inline
	    if (WN_Call_Inline(w) && WN_Call_Dont_Inline(w)) {
		if (Trace_IPA || Trace_Perf)
		    fprintf (TFile, "\t user specified inconsistent inline"
			     " pragmas at callsite\n"); 
	    } else if (WN_Call_Dont_Inline(w)) {
		//b callsite: pragma noinline ==> don't inline
		callsite->Set_no_inline();
	    } else if (WN_Call_Inline(w)) {
		//c callsite pragma inline ==> inline
		callsite->Set_must_inline();
	    } else {
		WN* parent_block = LWN_Get_Parent(w);
		Is_True(parent_block, ("Cannot get parent node of call\n"));
		if (WN_operator (parent_block) != OPR_BLOCK) {
		    // fake call -- never inline
		    callsite->Set_no_inline();
		}
	    }

	    break;
	
	case OPR_INTRINSIC_CALL:
	    // store things about intrinsic calls
		callsite->Set_intrinsic();
	    WN_MAP_Set_ID(Current_Map_Tab, w);
	    callsite->Set_map_id (WN_map_id(w));
	    break;

	case OPR_INTRINSIC_OP:
	    callsite->Set_intrinsic();
	    callsite->Set_map_id (-1);
	    break;
	
	default:
	    Fail_FmtAssertion ("Unsupported OPCODE %s \n",
			       OPCODE_name(WN_opcode(w)));
	    break;
	}
    }

    // if there are parameters in this routine
    // then process them one at a time

    for (INT i = 0; i < callsite->Get_param_count (); i++)
	Process_actual (WN_actual (w, i));

    if (callsite->Get_param_count () > 0)
	callsite->Set_actual_index (Get_actual_idx () -
				    callsite->Get_param_count () + 1);

} // SUMMARIZE::Process_callsite

static BOOL
is_variable_dim_array(TY_IDX ty)
{
    if (TY_kind(ty) == KIND_POINTER)
	ty = TY_pointed(ty);

    if (TY_kind(ty) == KIND_ARRAY) {
	ARB_ITER arb_iter = Make_arb_iter (ARB_HANDLE (TY_arb(ty)));
        UINT dim = ARB_dimension (arb_iter);
        for (UINT i = 0; i < dim; ++i) {
            ARB_HANDLE arb (arb_iter);
            if (!(ARB_const_lbnd(arb) && ARB_const_stride(arb)))
		return TRUE;
            else if (!ARB_const_ubnd(arb)) {
		if (ARB_ubnd_var(arb) != 0)  // this is not C's array pointers written as a[]
	            return TRUE;
	    }
            ++arb_iter;
	}
	return is_variable_dim_array(TY_etype(ty));
    }

    return FALSE;
}


// process formal parameters
template <PROGRAM program>
void
SUMMARIZE<program>::Process_formal (WN *w, INT num_formals, SUMMARY_PROCEDURE *proc)
{
    for (INT i = 0; i < num_formals; i++) {
	SUMMARY_FORMAL *formal = New_formal ();
	bzero (formal, sizeof(SUMMARY_FORMAL));
	const ST* formal_st = WN_st (WN_formal (w, i));
	INT sym_idx = Get_symbol_index (formal_st);
	formal->Set_symbol_index (sym_idx);
	Get_symbol (sym_idx)->Set_findex (Get_formal_idx());
	if (ST_sclass (formal_st) == SCLASS_FORMAL_REF)
	    formal->Set_is_ref_parm ();
	formal->Set_position (i);
        formal->Set_region_index (-1);
	formal->Set_machine_type(Machine_Type(WN_formal(w, i)));
	formal->Set_ty(Promoted_Parm_Type(formal_st));
	if (is_variable_dim_array(formal->Get_ty())) {
	    formal->Set_is_var_dim_array();
	    proc->Set_has_var_dim_array();
	}
    }

    INT position = Get_formal_idx () - num_formals + 1;
    proc->Set_formal_index (position);
    proc->Set_formal_count (num_formals);
} // SUMMARIZE::Process_formal


template <PROGRAM program>
void
SUMMARIZE<program>::Process_formal_alt (WN *w, INT kid_count)
{
    for (INT i = 0; i < kid_count; i++) {
	SUMMARY_FORMAL *formal = New_formal ();
	bzero (formal, sizeof(SUMMARY_FORMAL));
	const ST* formal_st = WN_st(WN_kid(w, i));
	INT sym_idx = Get_symbol_index (formal_st);
	formal->Set_symbol_index (sym_idx);
	Get_symbol (sym_idx)->Set_findex (Get_formal_idx());
	if (ST_sclass (formal_st) == SCLASS_FORMAL_REF)
	    formal->Set_is_ref_parm ();
	formal->Set_position (i);
        formal->Set_region_index (-1);
	formal->Set_machine_type(Machine_Type(WN_formal(w, i)));
	formal->Set_ty (ST_type(formal_st));
	if (is_variable_dim_array(formal->Get_ty())) {
	    formal->Set_is_var_dim_array();
	}
    }
} // SUMMARIZE::Process_formal_alt


static inline BOOL
Parm_Type_Equal_To_Etype(TY_IDX parm_ty, WN* array_wn)
{
  Is_True(WN_operator(array_wn) == OPR_ARRAY,
          ("Parm_Type_Equal_To_Etype: expected an array node"));

  WN* base_wn = WN_array_base(array_wn);
  if (OPERATOR_has_sym(WN_operator(base_wn))) {
    ST* array_st = WN_st(base_wn);
    TY_IDX array_ty = ST_type(array_st);
    if (TY_kind(array_ty) == KIND_POINTER) {
      array_ty = TY_pointed(array_ty);
    }
    return (TY_kind(array_ty) == KIND_ARRAY && TY_etype(array_ty) == parm_ty);
  }

  return FALSE;
}


template <PROGRAM program>
void 
SUMMARIZE<program>::Process_actual (WN* w)
{
  SUMMARY_ACTUAL* actual = New_actual ();

  OPERATOR opr = WN_operator(w);
  if (opr == OPR_PARM) {

    WN* kid = WN_kid0(w);
    opr = WN_operator(kid);

    if (WN_Parm_By_Reference(w)) {

      if (opr == OPR_INTCONST && WN_const_val(kid) == 0) {
        // INTCONST 0 signifies an optional argument
        actual->Set_ty(0);
      }
      else if (opr == OPR_ARRAYEXP || opr == OPR_ARRSECTION) { 
        // standalone inliner will not handle complicated 
        // array expressions generated by f90
        actual->Set_ty(0);
      }
      else {
        TY_IDX parm_ty = WN_ty(w);
        if (opr == OPR_ARRAY && 
            TY_kind(parm_ty) == KIND_POINTER &&
            Parm_Type_Equal_To_Etype(TY_pointed(parm_ty), kid)) {
          // if a whole array element is passed, use the high-level array type
          ST* array_st = WN_st(WN_array_base(kid));
          actual->Set_symbol_index(Get_symbol_index(array_st));
          actual->Set_ty(ST_type(array_st));
        }	
        else {
          actual->Set_ty(parm_ty);
          if (OPERATOR_has_sym(opr)) {
            actual->Set_symbol_index(Get_symbol_index(WN_st(kid))); 
          }
        }
      }
    } 
    else {
      if (WN_Parm_By_Value(w)) {
        actual->Set_is_value_parm();
      }
      actual->Set_ty(WN_ty(w)); 
      w = WN_kid0(w);
      if (OPERATOR_has_sym(opr)) {
        actual->Set_symbol_index(Get_symbol_index(WN_st(w)));
      }
    }
  }

  if (program == INLINER)
    return;

  SUMMARY_VALUE *value;

  switch (opr) {

    case OPR_INTCONST: {

      if (WN_operator (w) == OPR_PARM)
	  w = WN_kid0(w);
      if (WN_rtype(w) == MTYPE_I4 &&
          (WN_const_val(w) == 0 || WN_const_val(w) == 1)) {
        // special case for constant 0 and 1
        actual->Set_value_index (WN_const_val (w));
        return;
      }

      value = New_value ();
      value->Set_int_const ();
      value->Set_int_const_value (WN_const_val (w));
      value->Set_mtype (WN_rtype (w));

      INT idx = entry_cache->Lookup (SUM_VALUE, value);
      if (idx != -1 && idx < Get_value_idx()) {
        actual->Set_value_index (idx);
        _value.Decidx ();
      } 
      else {
        entry_cache->Insert (SUM_VALUE, Get_value_idx ());
        actual->Set_value_index (Get_value_idx ());
      }
      return;
    }

    case OPR_LDID:
      actual->Set_pass_type(PASS_LDID);
      break;
	
    case OPR_ILOAD:
      actual->Set_pass_type(PASS_LOAD);
      break;

    case OPR_MLOAD:
      actual->Set_pass_type(PASS_MLOAD);
      break;

    case OPR_LDA:
      actual->Set_pass_type(PASS_LDA);
      break;

    default:
      actual->Set_pass_type(PASS_UNKNOWN);
      break;
  }

  const SUMMARY_CHECK_POINT chk_pt(this);

  value = New_value ();
  value->Set_not_const ();
  actual->Set_value_index (Get_value_idx ());
    
  Process_jump_function (w, Get_value_idx ());

  value = Get_value (actual->Get_value_index ());
    
  if (value->Is_not_const ()) {
    Restore_from_check_point (&chk_pt);
    actual->Set_value_index (-1);
  } 
  else {
    INT tmp_idx = entry_cache->Lookup (SUM_VALUE, value);
    if (tmp_idx != -1 && tmp_idx < actual->Get_value_index()) {
      Restore_from_check_point (&chk_pt);
      actual->Set_value_index (tmp_idx);
    } 
    else {
      entry_cache->Insert (SUM_VALUE, actual->Get_value_index ());
    }
  }
    
} // SUMMARIZE::Process_actual


//----------------------------------------------------------------------
//       check if a global symbol has a SUMMARY_SYMBOL entry
//----------------------------------------------------------------------
template <PROGRAM program>
BOOL 
SUMMARIZE<program>::Has_global_symbol_index(const ST* st)
{
  INT idx;
  SUMMARY_SYMBOL *sym;
    
  if (ST_class(st) == CLASS_CONST)
    return -1;

  // for globals, check the Globals_Index array
  if (ST_level (st) == GLOBAL_SYMTAB) {

    idx = ST_index (st);

    if (idx <= Global_index->Lastidx() && (*Global_index)[idx])
      return TRUE;
  }
  return FALSE;
}

//-----------------------------------------------------------------------
// NAME: Save_Symbol_Names
// FUNCTION: Save the name of the 'st' and, if possible, the name of its
//   function in 'Ipl_Symbol_Names' and 'Ipl_Function_Names'.  
//-----------------------------------------------------------------------

static void Save_Symbol_Name(const ST* st)
{
  static BOOL Ipl_Symbol_Function_Names_Inited = FALSE; 
  if (!Ipl_Symbol_Function_Names_Inited) { 
    Ipl_Symbol_Function_Names_Inited = TRUE; 
    Ipl_Symbol_Names = CXX_NEW(DYN_ARRAY<char*>(Malloc_Mem_Pool), 
      Malloc_Mem_Pool);
    Ipl_Function_Names = CXX_NEW(DYN_ARRAY<char*>(Malloc_Mem_Pool), 
      Malloc_Mem_Pool);
  } 
  INT idx_symbol = Ipl_Symbol_Names->Newidx();
  INT idx_function = Ipl_Function_Names->Newidx();
  char** symbol_name = &((*Ipl_Symbol_Names)[idx_symbol]);
  char** function_name = &((*Ipl_Function_Names)[idx_symbol]);
  const char* original_symbol_name = ST_name(st);
  const char* original_function_name = Scope_tab[CURRENT_SYMTAB].st == NULL
    ? "?" : ST_name(ST_st_idx(Scope_tab[CURRENT_SYMTAB].st));
  *symbol_name = CXX_NEW_ARRAY(char, strlen(original_symbol_name) + 1, 
    Malloc_Mem_Pool);
  *function_name = CXX_NEW_ARRAY(char, 
    strlen(original_function_name) + 1, Malloc_Mem_Pool);
  strcpy(*symbol_name, original_symbol_name);
  strcpy(*function_name, original_function_name);
}

//----------------------------------------------------------------------
// return the index into the SUMMARY_SYMBOL index, as a side-effect if
// the entry does'nt exist then create it
//----------------------------------------------------------------------

template <PROGRAM program>
INT32
SUMMARIZE<program>::Get_symbol_index (const ST *st)
{
  if (ST_class(st) == CLASS_CONST) {
    return -1;
  }

  UINT32& index = Aux_Symbol(st).summary_symbol_idx;

  if (index != (UINT32) -1) {
    return index;
  }
    
  SUMMARY_SYMBOL* sym = New_symbol();
    
  if (Get_Trace(TKIND_IR, TP_IPL)) {
    Save_Symbol_Name(st);
  }
    
  sym->Set_st_idx (ST_st_idx(st));
  sym->Set_st_idx_func(ST_st_idx(Scope_tab[CURRENT_SYMTAB].st));

  if (ST_sclass(st) == SCLASS_PSTATIC || ST_sclass(st) == SCLASS_FSTATIC) {
    sym->Set_static();
  }
    
  if (ST_is_export_local(st)) {
    sym->Set_local();
  }
    
  if (ST_is_formal(st)) {
    sym->Set_formal();
    if (ST_is_optional_argument(st)) {
        sym->Set_optional();
    }
  }
	
  if (ST_class(st) == CLASS_FUNC) { 
    sym->Set_function();
  } 
  else if (ST_is_common_block(st)) {
    sym->Set_common_block();
  } 
  else if (ST_is_common_element(st)) {
    sym->Set_common();
  }

  if (ST_class(st) == CLASS_FUNC || ST_class(st) == CLASS_BLOCK) {
    sym->Set_btype(MTYPE_UNKNOWN);
  } 
  else { 
    sym->Set_btype(TY_mtype(ST_type(st)));
  } 

  if (TY_kind(ST_type(st)) == KIND_POINTER) { 
    if (TY_kind(TY_pointed(ST_type(st))) == KIND_ARRAY)
      sym->Set_array();
  } else { 
    if (TY_kind(ST_type(st)) == KIND_ARRAY)
      sym->Set_array();
  } 

  if (ST_is_f90_target (st))
      sym->Set_addr_f90_target ();

  index = Get_symbol_idx();
    
  return index;

} // SUMMARIZE::Get_symbol_index


template <PROGRAM program>
void
SUMMARIZE<program>::Process_alt_entry (WN *w)
{
    ALT_ENTRY *alt = New_alt_entry ();

    alt->Set_wn (w);

    Process_formal_alt (w, WN_kid_count(w));

    INT position = Get_formal_idx () - WN_kid_count(w) + 1;
    alt->Set_position (position);
    alt->Set_formal_count (WN_kid_count(w));

} // SUMMARIZE<program>::Process_alt_entry


template <PROGRAM program>
void
SUMMARIZE<program>::Process_inline_attr (WN *pragma_node)
{
    INLINE_ATTR *inline_attr;
    TCON tc;

    switch (WN_pragma(pragma_node)) {

    case WN_PRAGMA_KAP_OPTION_INLINE:
	inline_attr = New_inline_attr ();
	tc = STC_val(WN_st(pragma_node));
	inline_attr->Set_name (Targ_String_Address(tc));
	inline_attr->Set_file_inline();
	break;

    case WN_PRAGMA_KAP_OPTION_NOINLINE:
	inline_attr = New_inline_attr ();
	tc = STC_val(WN_st(pragma_node));
	inline_attr->Set_name (Targ_String_Address(tc));
	inline_attr->Set_no_file_inline();
	break;

    default:
	break;
    }
} // SUMMARIZE<program>::Process_inline_attr

//-----------------------------------------------------------
// process a pragma WHIRL node, return TRUE if interesting pragma found
//-----------------------------------------------------------
template <PROGRAM program>
void
SUMMARIZE<program>::Process_pragma_node (WN* w)
{
    switch (WN_pragma(w)) {

    case WN_PRAGMA_KAP_OPTION_INLINE:
    case WN_PRAGMA_KAP_OPTION_NOINLINE:
	Process_inline_attr (w);
	File_Pragmas = TRUE;
	break;
	
    default:
	break;
    }
} // Process_pragma_node


//-----------------------------------------------------------
// process pragmas that occur in the pu pragma header list
//-----------------------------------------------------------
template <PROGRAM program>
void
SUMMARIZE<program>::Process_pragmas (WN *w)
{
    WN* pragmas = WN_func_pragmas(w);

    if (pragmas)
	pragmas = WN_first(pragmas);

    while (pragmas != NULL) {
	Process_pragma_node (pragmas);
	pragmas = WN_next(pragmas);
    }
} // Process_pragmas


// ----------------------------------------------------------------
// Print summary info arrays: similar to IPA_Trace_Summary_Section, 
// but has simpler interface and doesn't print header info.
// ----------------------------------------------------------------
template <PROGRAM program>
void 
SUMMARIZE<program>::Trace(FILE* fp)
{
  if (Has_symbol_entry()) {
    Ipl_Summary_Symbol = Get_symbol(0);
    Ipl_Summary_Symbol->Print_array(fp, Get_symbol_idx()+1);
  }

  if (Has_procedure_entry())
    Get_procedure(0)->Print_array(fp, Get_procedure_idx()+1);
  
  if (Has_callsite_entry())
    Get_callsite(0)->Print_array(fp, Get_callsite_idx()+1);

  if (Has_feedback_entry())
    Get_feedback(0)->Print_array(fp, Get_feedback_idx()+1);

  if (Has_actual_entry())
    Get_actual(0)->Print_array(fp, Get_actual_idx()+1);
  
  if (Has_value_entry())
    Get_value(0)->Print_array(fp, Get_value_idx()+1);

  if (Has_expr_entry())
    Get_expr(0)->Print_array(fp, Get_expr_idx()+1);
  
  if (Has_phi_entry())
    Get_phi(0)->Print_array(fp, Get_phi_idx()+1);

  if (Has_chi_entry())
    Get_chi(0)->Print_array(fp, Get_chi_idx()+1);
  
  if (Has_stmt_entry())
    Get_stmt(0)->Print_array(fp, Get_stmt_idx()+1);

  if (Has_ctrl_dep_entry())
    Get_ctrl_dep(0)->Print_array(fp, Get_ctrl_dep_idx()+1);

  if (Has_formal_entry())
    Get_formal(0)->Print_array(fp, Get_formal_idx()+1);
  
  if (Has_global_entry())
    Get_global(0)->Print_array(fp, Get_global_idx()+1);

  if (Has_global_stid_entry())
    Get_global_stid(0)->Print_array(fp, Get_global_stid_idx()+1);

  if (Has_common_entry())
    Get_common(0)->Print_array(fp, Get_common_idx()+1);

  if (Has_common_shape_entry())
    Get_common_shape(0)->Print_array(fp, Get_common_shape_idx()+1);
}

#endif // ipl_summarize_template_INCLUDED

template <PROGRAM program>
void
SUMMARIZE<program>::Process_alt_procedure(WN *w, INT formal_index, INT
                                          formal_count)
{
    Process_procedure (w);
    SUMMARY_PROCEDURE *proc = Get_procedure (Get_procedure_idx());
    proc->Set_formal_index (formal_index);
    proc->Set_formal_count (formal_count);
}

