/*
 *
 * Copyright (C) 2006, 2007, Tsinghua University.  All Rights Reserved.
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of version 2 of the GNU General Public License as
 * published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it would be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
 *
 * Further, this software is distributed without any warranty that it is
 * free of the rightful claim of any third person regarding infringement 
 * or the like.  Any license provided herein, whether implied or 
 * otherwise, applies only to this software file.  Patent licenses, if 
 * any, provided herein do not apply to combinations of this program with 
 * other software, or any other product whatsoever.  
 *
 * For further information regarding this notice, see:
 * http://hpc.cs.tsinghua.edu.cn
 *
 */

#ifndef __STDC_LIMIT_MACROS
#define __STDC_LIMIT_MACROS
#endif

#include <queue>
#include <ext/hash_map>
#include <ext/hash_set>
#include "symtab.h"
#include "wn_util.h"
#include "ir_reader.h"
#include "ipo_defs.h"
#include "ipo_parent.h"
#include "ipl_summarize.h"
#include "ipl_summarize_util.h"
#include "ipc_symtab_merge.h"
#include "ipc_ty_hash.h"
#include "ipa_chg.h"
#include "ipa_devirtual.h"

using std::queue;
using __gnu_cxx::hash_map;
using __gnu_cxx::hash_set;

// The candidates for conversion to direct call
typedef struct {
    SUMMARY_CALLSITE *callsite;  // the callsite
    TY_INDEX actual_class;       // the actual class it should be converted to
} CONVERSION_CANDIDATE;

#define SUBCLASS_UNSET 0
#define SUBCLASS_MORE_THAN_ONE (TY_INDEX)-1

// all instantiated classes and its corresponding constructor
// one constructor is enough to one class because we just use the vptr setting info 
static hash_map <TY_INDEX, PU_IDX> live_class;

// base_sub_map stores a base has how many instantiated subclasses
// if one, map the type of its subclass; 
// if zero, map SUBCLASS_UNSET;
// if more than one, map SUBCLASS_MORE_THAN_ONE
static hash_map <TY_INDEX, TY_INDEX> base_sub_map;

// map PU to NODE_INDEX
static hash_map <PU_IDX, NODE_INDEX> pu_node_index_map;

// map ST to INITO index
static hash_map <ST_IDX, INITO_IDX> st_inito_map;

// conversion_list stores the virtual function calls that need to be converted.
static queue <CONVERSION_CANDIDATE> conversion_list;

/*
 * Find the corresponding INITO entry that stores vtable by ST index.
 */
INITO_IDX
Find_inito_by_st(ST_IDX st_idx) {
    if (st_inito_map.find(st_idx) == st_inito_map.end()) {
        UINT inito_count = INITO_Table_Size(GLOBAL_SYMTAB);
        for (UINT i = 1; i < inito_count; i++) {
            INITO_IDX idx = make_INITO_IDX(i, GLOBAL_SYMTAB);
            if (INITO_st_idx(Inito_Table[idx]) == st_idx) {
                st_inito_map[st_idx] = idx;
                return idx;
            }
        }
        Is_True(FALSE, ("Cannot find vtable by ST."));
    }
    return st_inito_map[st_idx];
}

/*
 *  Find the ST_IDX of a virtual function 
 *  by the class type and its offset in virtual table.
 *  actual_class    : the class which the actual member function belongs to
 *  formal_class    : explicit class type of the member function in the callsite
 *  formal_field_id : explicit field id in the callsite
 *  func_offset     : the position of target function call in vtable
 */
ST_IDX
Find_virtual_function(TY_IDX actual_class,
                      TY_IDX formal_class,	
                      UINT32 formal_field_id, 
                      size_t func_offset) 
{
    PU_IDX pu_idx = live_class[TY_IDX_index(actual_class)];
    IPA_NODE *constructor = IPA_Call_Graph->Node(pu_node_index_map[pu_idx]);
    IPA_NODE_CONTEXT context(constructor);
    WN *wn_start = constructor->Whirl_Tree(TRUE);
    WN *vtab = NULL;

    // Traverse the constructor of the actual class 
    // and find the statement that sets the value of vtable.	
    for(WN_ITER *wni = WN_WALK_StmtIter(wn_start);
        wni != NULL; wni = WN_WALK_StmtNext(wni))
    {
        WN *wn = WN_ITER_wn(wni);
        if (WN_operator(wn) == OPR_ISTORE) {
            WN *rhs = WN_kid0(wn);
            WN *lhs = WN_kid1(wn);
            if (WN_operator(lhs) == OPR_ADD)
                lhs = WN_kid0(lhs);
            if (WN_operator(rhs) == OPR_LDA && WN_operator(lhs) == OPR_LDID) {
                TY_IDX this_class_ptr = ST_type(WN_st(lhs));
                if (TY_kind(this_class_ptr) != KIND_POINTER)
                    continue;
                TY_IDX this_class = TY_pointed(this_class_ptr);
                if (TY_IDX_index(this_class) == TY_IDX_index(actual_class)) {

                    // Find the field by the statement in constructor
                    UINT cur_field_id = 0;
                    FLD_HANDLE fld0 =
                        FLD_get_to_field (actual_class, WN_field_id(wn), cur_field_id);
                    Is_True(!fld0.Is_Null(), ("Wrong field id."));

                    // Find the field by the callsite context
                    cur_field_id = 0;
                    FLD_HANDLE fld1 =
                        FLD_get_to_field (formal_class, formal_field_id, cur_field_id);
                    Is_True(!fld1.Is_Null(), ("Wrong field id."));

                    // If they are matched, this statement indicates the vtable of the actual class 
                    if (FLD_ofst(fld0) == FLD_ofst(fld1)) {
                        vtab = wn;
                        break;
                    }
                }
            }
        }
    }

    // If no statement found, skip this callsite
    if (vtab == NULL)
        return ST_IDX_ZERO;

    // pos is the WN of vtable  
    WN *pos = WN_kid0(vtab);
    // vtab_st is the ST of vtable
    ST *vtab_st = WN_st(pos);
    // base_offset is the offset of vtable
    UINT32 base_offset = WN_lda_offset(pos);

    // Find the INITO entry via ST index
    INITO_IDX inito_idx = Find_inito_by_st(ST_st_idx(vtab_st));

    // Get the INITV entry, then find the target function call
    INITV_IDX initv_idx = INITO_val(inito_idx);
    // The position of target function call in INITO entry 
    // is at func_offset after base_offset. 
    UINT32 offset = base_offset + func_offset;
	
    if (initv_idx <= INITV_IDX_ZERO)
        return ST_IDX_ZERO;
    do {
        if (offset == 0) {
#ifdef TARG_IA64
            Is_True(INITV_kind(initv_idx) == INITVKIND_SYMIPLT,
                    ("Wrong INITV for virtual function."));
#else
            Is_True(INITV_kind(initv_idx) == INITVKIND_SYMOFF,
                    ("Wrong INITV for virtual function."));
#endif
            return INITV_st(initv_idx);
        }
        switch (INITV_kind(initv_idx)) {
            case INITVKIND_BLOCK:
                initv_idx = INITV_blk(initv_idx);
                break;
            case INITVKIND_VAL:
            case INITVKIND_ZERO:
                offset -= Pointer_Size;
                initv_idx = INITV_next(initv_idx);
                break;
            case INITVKIND_SYMOFF:
                offset -= Pointer_Size;
                initv_idx = INITV_next(initv_idx);
                break;
#ifdef TARG_IA64
            case INITVKIND_SYMIPLT:
				offset -= (Pointer_Size << 1);
                initv_idx = INITV_next(initv_idx);
                break;
#endif
            default:
                Is_True(FALSE, ("Unexcepted INITV kind."));
        }	
    } while (initv_idx > INITV_IDX_ZERO);
    Is_True(FALSE, ("Initv entry not found."));
    return ST_IDX_ZERO;
}


// if the function is constructor, return its base class type and set sym_pu as its PU_IDX.
TY_INDEX
Is_constructor(SUMMARY_SYMBOL *func_sym, PU_IDX *sym_pu) {
    ST_IDX func_st_idx = func_sym->St_idx();
    ST *func_st = &St_Table[func_st_idx];
    PU_IDX pui = ST_pu(func_st);
    if (PU_is_constructor(Pu_Table[pui])) {
        TY_INDEX class_ty = TY_IDX_index(TY_baseclass(ST_pu_type(func_st)));
        Is_True(TY_kind(Ty_tab[class_ty]) == KIND_STRUCT, ("Wrong base class."));
        *sym_pu = pui;
        return class_ty;
    }
	return 0;	
}

// Collect the instances of classes 
void
IPA_collect_class_instances() {
    IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
    // Traverse the call graph
    for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next() ){
        IPA_NODE *method = cg_iter.Current();
        if (method == NULL)
            continue;

        PU_IDX pui = ST_pu(method->Func_ST());
        pu_node_index_map[pui] = method->Node_Index();

		SUMMARY_PROCEDURE* method_summary = method->Summary_Proc();
        SUMMARY_CALLSITE* callsite_array =
            IPA_get_callsite_array(method) + method_summary->Get_callsite_index();
        int count = method_summary->Get_callsite_count();
        while (count > 0) { 
            if (!callsite_array->Is_func_ptr()) {
                SUMMARY_SYMBOL *sym = IPA_get_symbol_array(method) + method_summary->Get_symbol_index();
                // if sym is a constructor, add it into live_class
                PU_IDX sym_pu;
                TY_INDEX new_class = Is_constructor(sym, &sym_pu);
                if (new_class) 
                    live_class[new_class] = sym_pu;
            }
            callsite_array++;
            count--;
        } 
    }										
}

/*
 *  If there is only one instantiated class in base and all its subclass,
 *  return this instantiated class. 
 *  Otherwise, return SUBCLASS_UNSET (no instantiated class) or SUBCLASS_MORE_THAN_ONE.
 */
TY_INDEX
Class_has_subclass(TY_INDEX base) {
    if (base_sub_map.find(base) == base_sub_map.end()) {
        TY_INDEX live_sub = SUBCLASS_UNSET;
        for (hash_map <TY_INDEX, PU_IDX>::const_iterator iter = live_class.begin(); 
             iter != live_class.end(); iter++)
        {
            TY_INDEX sub = iter->first;
            if (IPA_Class_Hierarchy->Is_Ancestor(base, sub)) {
                if (live_sub == SUBCLASS_UNSET) {
                    live_sub = sub;
                }
                else if (live_sub != SUBCLASS_MORE_THAN_ONE) {
                    live_sub = SUBCLASS_MORE_THAN_ONE;
                    break;
                }
            }
        }
        base_sub_map[base] = live_sub;
    }
    return base_sub_map[base];
}

/* 
 * Convert the virtual functions in conversion_list.
 * They must be in the same PU node that method indicates.
 */
void
Convert_virtual_call(IPA_NODE *method) {

    // wn_map maps the id of WN to WN
    hash_map <WN_MAP_ID, WN *> wn_map;
	IPA_NODE_CONTEXT context(method);

    WN *wn_start = method->Whirl_Tree(TRUE);
    Is_True(wn_start, ("Whirl node is empty."));

    // Traverse the PU and map all virtual function callsites.
    wn_map.clear();
    for(WN_ITER *wni = WN_WALK_StmtIter(wn_start);
        wni != NULL; wni = WN_WALK_StmtNext(wni))
    {
        WN *wn = WN_ITER_wn(wni);
        if (WN_Call_Is_Virtual(wn))
            wn_map[WN_map_id(wn)] = wn;
    }

    // process all candidates in conversion_list
    while (!conversion_list.empty()) {
 
        // get the front node in conversion_list and process it
        CONVERSION_CANDIDATE cand = conversion_list.front();
        conversion_list.pop();

        // get the corresponding WN to the candidate
        WN_MAP_ID map_id = cand.callsite->Get_map_id();
        Is_True(wn_map.find(map_id) != wn_map.end(), ("No corresponding whirl node."));
        WN *old_wn = wn_map[cand.callsite->Get_map_id()];

        SUMMARY_CALLSITE *callsite = cand.callsite;
        // the explicit formal class in callsite
		TY_IDX orig_class = callsite->Get_virtual_class();
        // the offset of vtable in callsite
        size_t func_offset = callsite->Get_vtable_offset();
        // the field id in callsite
        UINT32 vtab_field = callsite->Get_vtable_field();
        // find the actual target function of this virtual function callsite
        ST_IDX callee_st_idx = 
            Find_virtual_function(make_TY_IDX(cand.actual_class), orig_class, vtab_field, func_offset);

        // fail to find the actual function, skip the callsite
        if (callee_st_idx == ST_IDX_ZERO) {
            DevWarn("Find virtual function for class %s (offset %lu) failed.", 
                    &Str_Table[TY_name_idx(make_TY_IDX(cand.actual_class))], func_offset);
            continue;
        }

        // gerenate the new direct call instead of the old virtual function call
        ST *callee_st = ST_ptr(callee_st_idx);
        WN *new_wn = WN_generic_call(OPR_CALL, WN_rtype(old_wn), 
                                 WN_desc(old_wn), WN_kid_count(old_wn)-1, callee_st);
        for (size_t j = 0; j < WN_kid_count(new_wn); j++) {
            WN_kid(new_wn, j) = WN_kid(old_wn, j);
        }
        WN_set_map_id(new_wn, WN_map_id(old_wn));
        WN_set_flag(new_wn, WN_flag(old_wn));
        WN_Reset_Call_Is_Virtual(new_wn);
        WN *parent = WN_Get_Parent(old_wn, method->Parent_Map(), method->Map_Table());
        WN_Set_Parent(new_wn, parent, method->Parent_Map(), method->Map_Table());
        WN_INSERT_BlockAfter(parent, old_wn, new_wn);
        WN_EXTRACT_FromBlock(parent, old_wn);

        // update summary info
        for (IPA_ICALL_LIST::iterator iter = method->Icall_List().begin();
            iter != method->Icall_List().end(); iter++) 
        {
            if ((*iter)->Callsite() == callsite) {
                method->Icall_List().erase(iter);
                break;
            }
        }
        callsite->Reset_icall_slot();
        callsite->Reset_func_ptr();
        callsite->Set_param_count(WN_num_actuals(new_wn));
        callsite->Set_return_type(WN_rtype(new_wn));
        callsite->Set_callsite_freq();
        callsite->Set_probability(-1);
        callsite->Set_symbol_index(0); 

        // update call graph
        IPA_EDGE* edge = IPA_Call_Graph->Add_New_Edge(callsite, 
                              method->Node_Index(),
                              pu_node_index_map[ST_pu(callee_st)]);

        // print debug info
        DevWarn("Convert indirect call (class %s, offset %lu) to direct call %s (class %s) in function %s.", 
                &Str_Table[TY_name_idx(orig_class)], 
                func_offset, &Str_Table[ST_name_idx(*callee_st)],
                &Str_Table[TY_name_idx(make_TY_IDX(cand.actual_class))],
                &Str_Table[ST_name_idx(*(method->Func_ST()))]);
    }
}

/*
 *  Main function of devirtualizaton. 
 */
void
IPA_devirtualization() {

    live_class.clear();
    base_sub_map.clear();
    pu_node_index_map.clear();
    st_inito_map.clear();

    // collect the liveness infomation of all classes	
    IPA_collect_class_instances();

    // Traverse the call graph and find the candidates of devirtualization
    IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
    for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
        IPA_NODE *method = cg_iter.Current();
        if (method == NULL)
            continue;

        // get the callsites infomation 
        SUMMARY_PROCEDURE* method_summary = method->Summary_Proc();
        SUMMARY_CALLSITE* callsite_array =
            IPA_get_callsite_array(method) + method_summary->Get_callsite_index();
        int count = method_summary->Get_callsite_count();

        Is_True(conversion_list.empty(), ("Conversion list is not empty."));
		while (count > 0) {
            // only process virtual function callsites
            if (callsite_array->Is_virtual_call()) {
                // the formal class indicated by callsite
                TY_INDEX method_class = TY_IDX_index(callsite_array->Get_virtual_class());
                // check if the formal class has only one instantiated sub(sub)class
                TY_INDEX actual_class = Class_has_subclass(method_class);
                if (actual_class != SUBCLASS_UNSET && actual_class != SUBCLASS_MORE_THAN_ONE) {
                    // add the callsite into the candidate list
                    CONVERSION_CANDIDATE cand;
                    cand.callsite = callsite_array;
                    cand.actual_class = actual_class;
                    conversion_list.push(cand);
				}
            }
            callsite_array++;
            count--;
        }

        // If there exists devirtualization candidates in the PU node,
        // convert them to direct function calls.
        if (!conversion_list.empty())
            Convert_virtual_call(method);
    }
}

