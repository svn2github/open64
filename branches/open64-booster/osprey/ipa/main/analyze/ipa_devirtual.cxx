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
#include <list>
#include <set>
#include <algorithm>
#include <iterator>
#include <string>
#include "symtab.h"
#include "wn_util.h"
#include "wn_lower.h"
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
using std::list;
using std::set;
using std::string;
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
                      UINT64 formal_vptr_offset,
                      size_t func_offset)
{
    PU_IDX pu_idx = live_class[TY_IDX_index(actual_class)];
    IPA_NODE *constructor = IPA_Call_Graph->Node(pu_node_index_map[pu_idx]);
    IPA_NODE_CONTEXT context(constructor);
    WN *wn_start = constructor->Whirl_Tree(TRUE);
    WN *vtab = NULL;
    size_t ancestor_offset = 
        IPA_Class_Hierarchy->Get_Ancestor_Offset(
          TY_IDX_index(actual_class),
          TY_IDX_index(formal_class));

    Is_True(ancestor_offset != BASE_CLASS_NOT_FOUND,
            ("Wrong ancestor class."));

    // Traverse the constructor of the actual class
    // and find the statement that sets the value of vtable.
    for (WN_ITER *wni = WN_WALK_StmtIter(wn_start);
            wni != NULL; wni = WN_WALK_StmtNext(wni))
    {
        WN *wn = WN_ITER_wn(wni);
        if (WN_operator(wn) == OPR_ISTORE) {
            WN *rhs = WN_kid0(wn);
            WN *lhs = WN_kid1(wn);
            UINT64 add_ofst = 0;
            if (WN_operator(lhs) == OPR_ADD) {
                add_ofst = WN_const_val(WN_kid1(lhs));
                lhs = WN_kid0(lhs);
            }
            if (WN_operator(rhs) == OPR_LDA && WN_operator(lhs) == OPR_LDID) {
                TY_IDX this_class_ptr = ST_type(WN_st(lhs));
                if (TY_kind(this_class_ptr) != KIND_POINTER)
                    continue;
                TY_IDX this_class = TY_pointed(this_class_ptr);
                if (TY_IDX_index(this_class) == TY_IDX_index(actual_class)) {
                    // Find the field by the statement in constructor
                    UINT64 ofst = WN_store_offset(wn) + add_ofst;
                    // If they are matched, this statement indicates the vtable of the actual class
                    if (ofst == formal_vptr_offset + ancestor_offset) {
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
        TY_IDX class_ty = PU_base_class(Pu_Table[pui]);
        Is_True(TY_kind(class_ty) == KIND_STRUCT, ("Wrong base class."));
        *sym_pu = pui;
        return TY_IDX_index(class_ty);
    }
    return TY_IDX_ZERO;
}

// Collect the instances of classes
void
IPA_collect_class_instances() {
    hash_set <TY_INDEX> invoked_base_classes;
    IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
    // Traverse the call graph
    for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next() ) {
        IPA_NODE *method = cg_iter.Current();
        if (method == NULL)
            continue;

        PU_IDX pui = ST_pu(method->Func_ST());
        pu_node_index_map[pui] = method->Node_Index();

        invoked_base_classes.clear();

        SUMMARY_PROCEDURE* method_summary = method->Summary_Proc();
        SUMMARY_CALLSITE* callsite_array =
            IPA_get_callsite_array(method) + method_summary->Get_callsite_index();
        int count = method_summary->Get_callsite_count();
        while (count > 0) {
            if (!callsite_array->Is_func_ptr() && !callsite_array->Is_intrinsic()) {
                SUMMARY_SYMBOL *sym = IPA_get_symbol_array(method) +
                                      callsite_array->Get_symbol_index();
                // if sym is a constructor, add it into live_class
                PU_IDX sym_pu;
                TY_INDEX new_class = Is_constructor(sym, &sym_pu);
                if (new_class) {
                    TY_INDEX bclass = TY_IDX_index(PU_base_class(Pu_Table[pui]));
                    // If new_class is the base class of the class of this consturctor,
                    // its must be invoked by this constructor once.
                    // If new_class occurs more than once, it must be live.
                    if (IPA_Class_Hierarchy->Is_Sub_Class(new_class, bclass) &&
                            invoked_base_classes.find(new_class) == invoked_base_classes.end()) {
                        invoked_base_classes.insert(new_class);
                    } else {
                        live_class[new_class] = sym_pu;
                    }
                }
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
        for (hash_map <TY_INDEX, PU_IDX>::const_iterator iter
                = live_class.begin();
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
Convert_virtual_call(IPA_NODE *method) { // Left by earlier developer.

    // wn_map maps the id of WN to WN
    hash_map <WN_MAP_ID, WN *> wn_map;
    IPA_NODE_CONTEXT context(method);

    WN *wn_start = method->Whirl_Tree(TRUE);
    Is_True(wn_start, ("Whirl node is empty."));

    // Traverse the PU and map all virtual function callsites.
    wn_map.clear();
    for (WN_ITER *wni = WN_WALK_StmtIter(wn_start);
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
        UINT64 vptr_ofst = callsite->Get_vptr_offset();
        // find the actual target function of this virtual function callsite
        ST_IDX callee_st_idx =
            Find_virtual_function(make_TY_IDX(cand.actual_class),
                                  orig_class, vptr_ofst, func_offset);

        // fail to find the actual function, skip the callsite
        if (callee_st_idx == ST_IDX_ZERO) {
            DevWarn("Find virtual function for class %s (offset %lu) failed.",
                    &Str_Table[TY_name_idx(make_TY_IDX(cand.actual_class))],
                    func_offset);
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
        callsite->Reset_icall_target();
        callsite->Reset_func_ptr();
        callsite->Set_param_count(WN_num_actuals(new_wn));
        callsite->Set_return_type(WN_rtype(new_wn));
        callsite->Set_callsite_freq();
        callsite->Set_probability(-1);
        callsite->Set_symbol_index(0);

        IPA_NODE *calle =
            IPA_Call_Graph->Node(pu_node_index_map[ST_pu(callee_st)]);

        //calle->Summary_Proc()->Clear_Never_Invoked_ah();

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


static BOOL
Is_Return_Store_Stmt (WN * wn)
{
    if (wn && WN_operator (wn) == OPR_STID)
    {
        WN *val = WN_kid (wn, 0);
        if (WN_operator (val) == OPR_LDID)
        {
            ST *st = WN_st (val);
            if (ST_sym_class (st) == CLASS_PREG
                    && (st == Return_Val_Preg))
                return TRUE;
        }
    }
    return FALSE;
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

/*
------------------
The optimization is enabled if the following variable is true:
   common/com/config_ipa.cxx BOOL variable IPA_Enable_fast_static_analysis_VF is TRUE
But not all of the devirtualization pass is disabled, 
with IPA_Enable_fast_static_analysis_VF == FALSE. 
A small portion of the pass is necessarily run to 
do a "fix up" work. This fix up leaves
no change in compiled code.

Effect of pass on compiled code:
-------------------------------
The pass changes the WHIRL at a virtual 
call site to look like the following:
1: At the virtual function call site an 
if-then-else structure is introduced.
    Example 1:
        Assumme virtual function call bar->foo(...). 
        After the pass, a if-then-else 
        structure wraps around this virtual function call.
        if (bar->foo()'s class type is CLS)
            CLS::foo(bar)
        else
            bar->foo()
2: A new edge is added in the call graph with the inferred callee.
    Example 2:
        Take the previous example, Example 1. 
        An edge from the caller that 
        contains bar->foo() is added to CLS::foo(bar)


This is the file osprey/ipa/main/analyze/ipa_devirtual.cxx 
containing most of the devirtualization work. All of the 
pass is done through a class called 
DEVIRT_WORK in this file, ipa_devirtual.cxx.
This file, ipa_devirtual.cxx file has been left 
by the earlier developer. 
The addition now is the class DEVIRT_WORK
and the function IPA_fast_static_analysis_VF. 
Rest of the functions in the file except for one or two. 
But most of the member functions in DEVIRT_WORK borrow 
code or idea directly from the existing functions 
left by the earlier developer.

psuedo code for IPA_fast_static_analysis_VF:
IPA_fast_static_analysis_VF() {
    if IPA_Enable_fast_static_analysis_VF() {
 construct the class inheritance graph 
        Build_Class_Hierarchy() ; // ipa/main/analyze/ipa_chg.cxx ipa_chg.h
 find all constructor calls. Since a constructor 
 is called at instantiation time, the
 effect is that we collect all instantiations of classes declared in program       
 Constructors are collected by iterating over the nodes in the Call graph. 
 So there is a need for the call graph before this pass.
        find_constructors()
 Walk over the IPA_NODES in IPA_Call_Graph and check if 
 these functions make any virtual function calls and 
 replace the virtual function call with an oracle 
 if-then-else           
        analyze_VFs()    
 
 Now that all virtual functions for IPA_NODEs are processed, 
 we got to update call node to SUMMARY_CALLSITE object mapping 
 in callsite_array of the IPA_NODE. 
 This is necessary because a new call may have been 
 inserted by the transformation. 
 ipl adds SUMMARY_CALLSITEs for every 
 call node, icall node etc in each of the files being compiled. 
 This data is placed along with the rest of the WHIRLs, symbol tables 
 in the .o object file.
 Every CALL or ICALL WHIRL node must have an associated 
 SUMMARY_CALLSITE so that the call graph can be constructed.
 In our pass, we are going to be inserting an additional call. And
 we don't have a SUMMARY_CALLSITE for it, as SUMMARY_CALLSITEs are added 
 by IPL. It is not feasible to add an additional SUMMARY_CALLSITE into the file being 
 processed right now during IPA. 
 The best idea is to insert the SUMMARY_CALLSITE 
 during IPL. This requires very little effort.
 This is a particular need that is shared by this pass and the
 ICALL transformation pass elsewhere in the ipa/.

 In order to let this all work, 
 IPL has to assume that we will have an additional call for every virtual 
 function after the pass is through, and it inserts a dummy 
 callsite for ALL virtual functions, 
 without knowing if IPA will insert the direct 
 call or not. i.e. we just have the dummy SUMMARY_CALLSITEs 
 without the WHIRL CALL/ICALL node that corresponds to them. 
 Dummy SUMMARY_CALLSITEs are mapped by IPL to WN_MAP_ID value of -1 
 or undefined. Dummy SUMMARY_CALLSITES are also flagged as
 callsite_targets. 
 There are some more call graph issues due to the linkage between callsites 
 and call whirl nodes.  An integer mapping is maintained between 
 callsites and WN_MAP_ID of a call WHIRL Node.
 It is imperative to also fix up this mapping after we insert 
 a call WHIRL node. i.e. watch out if there a clean mapping, 
 or some pass will crash.
 
 fix_up_only basically renumbers SUMMARY_CALLSITEs, i.e fixes up the 
 mapping between callsites and call nodes.
 
 The reference code fix_up_only is in Add_Edges_For_Node 
 function called by Build_Call_Graph.       
        fix_up_only()
 miscellaneous statistics, code for testing and profiling etc
        ...
    }
}

pseudo code for analyze_VFs():
analyze_VFs() {
    For each virtual call in a IPA_Node, 
    map its WN_Map_ID to the whirl node,
    make_VF_wn_map(...);
    if there are VFs, walk over the callsites in the IPA_Node and 
    analyze and transform
    count = callsite_count(IPA_Node)
    while(count > 0) {
        count --;
        if the callsite is a virtual function dummy callee inserted
        by ipl, the next callsite will be the virtual function
        if (callsite[count] is a dummy_callee) {
            dummy_callsite = callsite[count]
            count--
            virtual_function_call = callsite[count]
            get class instantiations of classes rooted at the declared class of virtual_function_call
            if the number of such class instantiations is 1, we have a pass for heuristic 2
            class_instantiations uses constructor data collected earlier
            instances = class_instantiations(type(virtual_function_class))

            try class_hierarchy_analysis:
            if num_subclasses(type(virtual_function_class)) == 0 {
                heuristic 1 pass that enables Class Hierarchy Analysis transformation
                add Virtual function, and its dummy_callsite for 
                optimization
            }
            else if length(instances) == 1 {
                heuristic 2 pass that enables Class Type Analysis transformation
                add Virtual function, and its dummy_callsite for 
                optimization 
            }
        }
    }

    if the loop marked virtual functions in the IPA_Node, apply transformation on them
    for functions in virtual_function_candidates{
        apply_VF_transformation();
    }
}
pseudo code for apply_VF_Transformation():
apply_VF_transformation() {
    Change the code to look like Example 1.
    insert the call from the if-then part into 
    IPA_Call_Graph by using dummy callsite as 
    the callsite argument to IPA_CALL_GRAPH::Add_New_Edge
    There are some miscellaneous profiling/test/assertions here.
    If you are debugging use them otherwise disable them 
    during release time.
}


*/

class DEVIRT_WORK {


TY_INDEX get_constructor_type (SUMMARY_SYMBOL* func_sym) {

    Is_True((ST_IDX_level(func_sym->St_idx()) <= GLOBAL_SYMTAB),
            ("SUMMARY_SYMBOL for function call not a global Symbol"));

    {
        ST_IDX func_st_idx = func_sym->St_idx();
        ST *func_st = &St_Table[func_st_idx];
        PU_IDX pui = ST_pu(func_st);
        if (PU_is_constructor(Pu_Table[pui])) {
            TY_IDX class_ty = PU_base_class(Pu_Table[pui]);
            Is_True(TY_kind(class_ty) == KIND_STRUCT,
                ("Wrong base class."));
            //printf ("symbol is global symbol:%s\n", 
            //    ST_name(St_Table[func_sym->St_idx()]));
            return TY_IDX_index(class_ty);
        }
    }
    return TY_IDX_ZERO;
}
    typedef struct  {
        WN* vtab;
        ST_IDX fun_st_idx;
        IPA_NODE * constructor;
        size_t ancestor_offset;
    } Shared_attr;
    

    void
    fdump_st(FILE* afil, ST *st)
    {
        st->Print(afil);
        switch (st->sym_class) {
        case CLASS_BLOCK:
            Blk_Table[st->u2.blk].Print (afil);
            break;
        case CLASS_FUNC:
            Pu_Table[st->u2.pu].Print (afil);
            break;
        }
    
    }
    
    ST_IDX
    find_vfun(FILE *trace_multi, IPA_NODE* constructor, 
            WN* vtab, size_t func_offset) {
    
        // I borrowed everything here from 
        // the earlier developer.
        IPA_NODE_CONTEXT context(constructor);
        WN *pos = WN_kid0(vtab);
        // vtab_st is the ST of vtable
        ST *vtab_st = WN_st(pos);
        // base_offset is the offset of vtable
        UINT32 base_offset = WN_lda_offset(pos);
    
        // The ST for the VT is in the INIT
        // region in WHIRL
        // Find the INITO entry for the ST index
        INITO_IDX inito_idx
        = Find_inito_by_st(ST_st_idx(vtab_st));
    
        // There is an INITV for the vtab in INITO.
        // We get the INITV entry to
        // find the target function call
        INITV_IDX initv_idx = INITO_val(inito_idx);
        // The position of target function
        // call in INITV is the entry
        // at func_offset from base_offset.
        // The Stroustrup paper on Multiple Inheritance,
        // refered elsewhere in this file, describes a
        // "naive" implementation for virtual functions
        // that is costlier in space than what GCC uses.         
        // Also you may need to brush up on virtual thunks
        // for single/multiple inheritance.
        // The wikipedia page on virtual functions
        // is a good reference on the topic of how 
        // the offsets come together.
        // The implementation in GCC generates thunks and 
        // using them cuts down on the virtual table sizes against the 
        // naive implementation.
        UINT32 offset = base_offset + func_offset;
    
        ST_IDX st_id = ST_IDX_ZERO;
        if (initv_idx <= INITV_IDX_ZERO) {
           // fprintf(trace_multi, "initv_idx_zero\n");
            return ST_IDX_ZERO;
        }
        do {
            if (offset == 0) {
    #ifdef TARG_IA64
                Is_True(INITV_kind(initv_idx)
                        == INITVKIND_SYMIPLT,
                        ("Wrong INITV for virtual function."));
    #else
                Is_True(INITV_kind(initv_idx)
                        == INITVKIND_SYMOFF,
                        ("Wrong INITV for virtual function."));
    #endif
                st_id = INITV_st(initv_idx);
                break;
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
        return st_id;
    }

    class WN_IPA_MAP {
        public:
            hash_map <WN_MAP_ID, WN *> wn_map;
            IPA_NODE *ipa_node;
    } ;

    private:

        // we set class_hierarchy_analysis to true if we want CHA, Class Hierarchy Analysis
        // we set class_type_analysis to true if we want CTA or Class Type Analysis
        // we set both to true to enable both.
        bool class_hierarchy_analysis, class_type_analysis;
        bool i_must_debug;
        ST_IDX miss_st, hit_st;
        hash_map <PU_IDX, NODE_INDEX> pu_node_index_map;
        hash_map <NODE_INDEX, WN_IPA_MAP> node_idx_virt_funs;
        hash_map <NODE_INDEX, list<SUMMARY_CALLSITE *> > node_idx_vf_callsites;
        hash_map <NODE_INDEX, IPA_NODE*> opti_cand;
        hash_map <int, int > num_instances;
        hash_map <int, int > num_true_classes;
        hash_map <int, list<string> > miss_hit_tag;

        void update_true_classes(int index) {
            num_true_classes[index] = num_true_classes[index] + 1;
        }
        
        void update_instances (int index) {
            num_instances[index] = num_instances[index] + 1;
        }

        int heur1, heur2;
        hash_set <TY_INDEX> constructed_types;
        hash_map <TY_INDEX, PU_IDX> constructor_map;

        typedef hash_map <NODE_INDEX, hash_map <WN_MAP_ID, hash_set<TY_INDEX> > > VF_GLOBAL_TYPE;
        VF_GLOBAL_TYPE method_vf_data;

        //
        // After analyze_VF is called, these must contain all
        // that we need.
        //

        typedef struct {
            ST_IDX vfun;
            WN* vtab;
        } VTAB_HANDLE_H;

        // We do not need to have a hash_map, hash_set in 
        // this data structure. The code adds only one entry
        // to both of them. I got to change this struct to 
        // something meaningful.
        typedef struct {
            hash_map<TY_INDEX, VTAB_HANDLE_H> vtab_h;
            hash_set<ST_IDX> sts;
        } VTAB_CONS; 

        // VTAB_CONS is a table indexed by each class, 
        // from the VTAB's inheritance graph, from which objects 
        // are instantiated

        FILE *virtual_whirls;
        FILE *transform_whirls;
        int num_vfs_count;
    public:
        void trace_cg() {
     	  FILE *tmp_call_graph = fopen("cg_dump.log", "w");

    	  if(tmp_call_graph != NULL) {	  
    	    fprintf(stdout, "\t+++++++++++++++++++++++++++++++++++++++\n");
	    // KEY
  	    IPA_Call_Graph->Print_vobose(stdout);
    	    fprintf(stdout, "\t+++++++++++++++++++++++++++++++++++++++\n");
	      }
    	  fclose(tmp_call_graph);
        }

        void fixup_only () {
            IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
            for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
                IPA_NODE *method = cg_iter.Current();
                if (method == NULL) 
                    continue;
                // TODO: add is_c check as well.
                BOOL is_fortran = PU_f77_lang(method->Get_PU()) ||
                                  PU_f90_lang(method->Get_PU());
                if (is_fortran)
                    continue;
                fix_callsites(method);
            }
        }
 
        void analyze_VFs() {
            IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
            for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
                IPA_NODE *method = cg_iter.Current();
                if (method == NULL) 
                    continue;
                BOOL is_fortran = PU_f77_lang(method->Get_PU()) ||
                                  PU_f90_lang(method->Get_PU());
                if (is_fortran)
                    continue;
                analyze_and_transform_VF (method);
            }
        }

        void print_stat() {
            printf("Number of vf callees that can be statically replaced: %d\n", 
                    num_vfs_count);
            printf("Number of vf callsites caught by heuristic 1: %d\n", 
                    heur1);
            printf("Number of vf callsites caught by heuristic 2: %d\n",
                    heur2);
        }

        void miss_hit_profile() {
            if(hit_st != ST_IDX_ZERO && miss_st != ST_IDX_ZERO) {
                FILE *csvfile = fopen("miss_hit_profile.csv", "w");
                for (hash_map<int, list<string> >::iterator mhmi =
                        miss_hit_tag.begin();
                        mhmi != miss_hit_tag.end();
                        ++mhmi) {
                    int id_num = mhmi->first;
                    list<string> str_lis = mhmi->second;
                    fprintf (csvfile, "%d,", id_num);
                    for (list<string>::iterator myns = str_lis.begin(); 
                            myns != str_lis.end(); ++myns) 
                        fprintf(csvfile, "%s,", (*myns).c_str());
                    fprintf (csvfile, "\n");
                }
                fclose(csvfile);
            }
        }
        void histogram_stat() {
            if ((num_true_classes.size() != 0) 
                    || (num_instances.size() != 0)) {
           
                FILE *csvfile = fopen ("vf_class_hist.csv", "w");
                printf ("Number of true classes:%d\n", num_true_classes.size());
                fprintf (csvfile, "%s,%s",
                     "\"Number of True classes\"",
                     "\"Number of virtual function callsites\"\n");
                for (hash_map<int, int>::iterator trcit = num_true_classes.begin();
                    trcit != num_true_classes.end();
                    ++trcit) {
                    int trval = trcit->first;
                    int numvf = trcit->second;
                    fprintf(csvfile, "%d,%d\n", trval, numvf);
                }

                printf ("Number of instance classes:%d\n", num_instances.size());

                fprintf (csvfile, "%s,%s",
                    "\"Number of instance classes\"", 
                    "\"Number of virtual function callsites\"\n");
                for (hash_map<int,int>::iterator incit = num_instances.begin();
                    incit != num_instances.end();
                    ++incit) {
                    int inval = incit->first;
                    int numvf = incit->second;
                    fprintf(csvfile, "%d,%d\n", inval, numvf);
                }
                fclose(csvfile);
            }
        }

        void dump_constructors () {
            FILE *fp = fopen("constructors.log", "w");
            for (hash_map<TY_INDEX, PU_IDX>::iterator cm_it = constructor_map.begin();
                    cm_it != constructor_map.end(); ++cm_it) {
                TY_INDEX ty_indx = cm_it->first;
                PU_IDX pu_indx = cm_it->second;
                fprintf (fp, "type of constructor:\n");
                Ty_tab[ty_indx].Print(fp);
                fprintf (fp, "PU of constructor:\n");
                Pu_Table[pu_indx].Print(fp);
                //fprintf (stdout, "type of constructor:\n");
                //Ty_tab[ty_indx].Print(stdout);
                //fprintf (stdout, "PU of constructor:%d\n", pu_indx);
                //Pu_Table[pu_indx].Print(stdout);
                IPA_NODE *constructor =
                   IPA_Call_Graph->Node (pu_node_index_map[pu_indx]);
                if (constructor != NULL) {
                    IPA_NODE_CONTEXT context(constructor);
                    fprintf(fp, "WHIRL of constructor:\n");
                    //fdump_tree(stdout,constructor->Whirl_Tree(TRUE));
                    fdump_tree(fp,constructor->Whirl_Tree(TRUE));
                } else {
                    fprintf(fp, "WHIRL of constructor: NOT_FOUND!\n");
                }
                 
                fprintf (fp, "-\n");
            }
            fclose(fp);
        }

        void dump_VF_optset() {
            FILE *fp = fopen("vf_opt_set.log", "w");
            for (VF_GLOBAL_TYPE::iterator vf_it = method_vf_data.begin();
                 vf_it != method_vf_data.end(); ++vf_it) {
                NODE_INDEX nod_indx = vf_it->first;
                hash_map<WN_MAP_ID, hash_set<TY_INDEX> > wn_map_constrs = vf_it->second;
                {
                    IPA_NODE* method = opti_cand[nod_indx];
                    IPA_NODE_CONTEXT context(method);
                    fprintf (fp, "WHIRL of caller:\n");
                    fdump_tree(fp, method->Whirl_Tree(TRUE));
                    fprintf (fp, "@WHIRL of caller ends_here\n");

                    for (hash_map<WN_MAP_ID, hash_set<TY_INDEX> >::iterator vf_wn_it 
                            = wn_map_constrs.begin(); vf_wn_it != wn_map_constrs.end();
                            ++vf_wn_it) {
                        fprintf (fp, "VF in WHIRL which can be optimized:\n");
                        WN_MAP_ID wn_id = vf_wn_it->first;
                        hash_set<TY_INDEX> vf_obj_types = vf_wn_it->second;
                        WN_IPA_MAP a_wn_map = node_idx_virt_funs[method->Node_Index()];
                        fdump_tree(fp, a_wn_map.wn_map[wn_id]);
                        fprintf (fp, "@VF in WHIRL which can be optimized ends_here\n");
                        fprintf (fp, "VF is accessed by these constructed objects:\n");
                        for (hash_set<TY_INDEX>::iterator vf_obj_it = vf_obj_types.begin();
                                vf_obj_it != vf_obj_types.end(); ++vf_obj_it) {
                            TY_INDEX ty_indx = *vf_obj_it;
                            Ty_tab[ty_indx].Print(fp);
                            {
                                PU_IDX pu_indx = constructor_map[ty_indx];
                                fprintf (fp, "PU of constructor:\n");
                                Pu_Table[pu_indx].Print(fp);
                                IPA_NODE *constructor =
                                   IPA_Call_Graph->Node (pu_node_index_map[pu_indx]);
                                {
                                    IPA_NODE_CONTEXT context(constructor);
                                    fprintf (fp, "WHIRL of constructor\n");
                                    fdump_tree(fp,constructor->Whirl_Tree(TRUE));
                                    fprintf (fp, "@WHIRL of constructor ends_here\n");
                                }
                            }
                        }
                        fprintf (fp, "@VF is accessed by these constructed objects ends_here\n");
                    }
                }
            }
            fclose(fp);
        }

     private:    
        int callsite_count(IPA_NODE* method) {
            SUMMARY_PROCEDURE* method_summary = method->Summary_Proc();
            SUMMARY_CALLSITE* callsite_array =
               IPA_get_callsite_array(method) + method_summary->Get_callsite_index();
            int count = method_summary->Get_callsite_count();
            return count;
        }

     public:
        void itest () {
            IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
            for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
                IPA_NODE *method = cg_iter.Current();
                if (method == NULL) 
                    continue;
                PU_IDX pui
                    = ST_pu(method->Func_ST());
                Is_True(pui >= PU_IDX_ZERO && pui < PU_Table_Size(), 
                        ("PUI index:%d not in range:%d <= indx < %d\n",
                         pui, PU_IDX_ZERO, PU_Table_Size()));

                BOOL is_fortran = PU_f77_lang(method->Get_PU()) ||
            	  PU_f90_lang(method->Get_PU());
                if (is_fortran)
                    continue;
                SUMMARY_PROCEDURE* method_summary =
                    method->Summary_Proc();

                SUMMARY_CALLSITE* callsite_array =
                    IPA_get_callsite_array(method)
                    + method_summary->Get_callsite_index();

                int count = callsite_count(method);
                while (count > 0) {
                    if (!callsite_array->Is_func_ptr()
                        && !callsite_array->Is_intrinsic()) {
                    
                        SUMMARY_SYMBOL *cons_sym
                            = IPA_get_symbol_array(method) +
                              callsite_array->Get_symbol_index();
                    }
                    count --;
                    callsite_array++;
                }
            }
        }
            
        void init () {
            { 
                i_must_debug = false;
                if (i_must_debug == true) {
                    virtual_whirls = fopen("virtual_whirls.txt", "w");
                    transform_whirls = fopen("tranform_whirls.txt", "w");
                } else {
                    virtual_whirls = NULL;
                    transform_whirls = NULL;
                }
                num_vfs_count = 0;
                heur1 = 0;
                heur2 = 0;
                IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
                for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
                    IPA_NODE *method = cg_iter.Current();
                    if (method == NULL) 
                        continue;
                    PU_IDX pui
                        = ST_pu(method->Func_ST());

                BOOL is_fortran = PU_f77_lang(method->Get_PU()) ||
            	  PU_f90_lang(method->Get_PU());
                if (is_fortran)
                    continue;

                    Is_True(pui >= PU_IDX_ZERO && pui < PU_Table_Size(), 
                        ("PUI index:%d not in range:%d <= indx < %d\n",
                         pui, PU_IDX_ZERO, PU_Table_Size()));

                    Is_True (pu_node_index_map.find(pui) == 
                            pu_node_index_map.end(), 
                            ("PU_IDX already in pu_node_index_map; %d -> %d; newly:%d -> %d\n",
                             pui, pu_node_index_map[pui], 
                             pui, method->Node_Index()));
                    pu_node_index_map[pui] = method->Node_Index();
                }
            }

            {
                miss_st = ST_IDX_ZERO;
                hit_st = ST_IDX_ZERO;
                for (ST_IDX sts = 1; sts < ST_Table_Size(GLOBAL_SYMTAB) ; ++sts) {
                    ST* cur_st = &St_Table(GLOBAL_SYMTAB,sts);
                    typedef mUINT32 INDEX;
                    INDEX ty_index=cur_st->u2.type>>8;
                    if(Ty_tab[ty_index].kind==KIND_ARRAY){ 
                        if (strcmp(ST_name(cur_st), "__MISS_VIRTUAL_FUNCTION__") == 0) {
                            miss_st = sts;
                        } else if (strcmp(ST_name(cur_st), "__HIT_VIRTUAL_FUNCTION__") == 0) {
                            hit_st = sts;
                        }
                    }
                }
            }
            class_hierarchy_analysis = true;
            class_type_analysis = false;
        }

        void fini() {
            if (i_must_debug == true) {
                fclose(virtual_whirls);
                fclose(transform_whirls);
            }
        }

        void find_constructors () {
            IPA_NODE_ITER cg_iter(IPA_Call_Graph, PREORDER);
            for (cg_iter.First(); !cg_iter.Is_Empty(); cg_iter.Next()) {
                IPA_NODE *method = cg_iter.Current();
                if (method == NULL) 
                    continue;

                BOOL is_fortran = PU_f77_lang(method->Get_PU()) ||
            	  PU_f90_lang(method->Get_PU());
                if (is_fortran)
                    continue;

                IPA_NODE_CONTEXT context(method);
                PU_IDX pui
                     = ST_pu(method->Func_ST());

                SUMMARY_PROCEDURE* method_summary =
                    method->Summary_Proc();

                SUMMARY_CALLSITE* callsite_array =
                    IPA_get_callsite_array(method)
                    + method_summary->Get_callsite_index();
                int count = callsite_count(method);
                while (count > 0) {
                    if (!callsite_array->Is_func_ptr()
                        && !callsite_array->Is_intrinsic()) {
                        SUMMARY_SYMBOL *cons_sym
                        = IPA_get_symbol_array(method) +
                          callsite_array->Get_symbol_index();
                        TY_INDEX constructor_class 
                            = get_constructor_type(cons_sym);
                        if (constructor_class != TY_IDX_ZERO) {
                            if (constructor_map.find(constructor_class) 
                                    == constructor_map.end()) {
                                ST_IDX func_st_idx = cons_sym->St_idx();
                                ST *func_st = &St_Table[func_st_idx];
                                PU_IDX cons_pui = ST_pu(func_st);
                                Is_True (pui >= PU_IDX_ZERO && pui < PU_Table_Size(),
                                    ("PUI of constructor:%d not in range: 0 <= pui < PU_Table_Size:%d\n",
                                    pui, PU_Table_Size()));

                                    if (pu_node_index_map.find(cons_pui) !=
                                            pu_node_index_map.end()) {
                                        constructed_types.insert(constructor_class);
                                        constructor_map[constructor_class] = cons_pui;
                                    } else {
                                       if (pui < PU_IDX_ZERO || pui > PU_Table_Size()) 
                                            printf ("problem for node pu index:%d not in range 0 <= idx < %d",
                                                pui, PU_Table_Size());
                                    }
                            } // We are required to omitting automatic base class 
                            // constructor calls. This code does it.
                            // As PU_IS_CONSTRUCTOR flag is not set on 
                            // them by the spin frontend we are automatically 
                            // handling them in the above code
                            //
                        }
                    }
                    count--;
                    callsite_array++;
                }
            }
        }

     private:

        void get_subcls_hierarchy(
            TY_INDEX declared_class,
            hash_set<TY_INDEX>& targets) {
            targets.insert(declared_class);
            if (IPA_Class_Hierarchy->
                    Get_Num_Sub_Classes(declared_class) == 0)
                return;
            for (UINT scls = 0;
                    scls < IPA_Class_Hierarchy->Get_Num_Sub_Classes(
                        declared_class);
                    ++scls) {
                TY_INDEX sub = IPA_Class_Hierarchy->
                               Get_Sub_Class(declared_class, scls);
                get_subcls_hierarchy(sub, targets);
            }
        }


        int num_subcls (TY_INDEX declared_class) {
            hash_set<TY_INDEX> subclses;
            get_subcls_hierarchy(declared_class, subclses);
            return subclses.size();
        }

        hash_set<TY_INDEX>
        class_instantiations (SUMMARY_CALLSITE* vfsite) {
            TY_INDEX declared_class
            = TY_IDX_index(vfsite->Get_virtual_class());
            hash_set<TY_INDEX> targets;
            hash_set <TY_INDEX> inter_set;
            get_subcls_hierarchy(declared_class, targets);
            Is_True(targets.size() > 0,
              ("IPA_fast_static_analysis_VF: size of subclasses in hierarchy must be > 0"));
            for (hash_set<TY_INDEX>::iterator tg_it
                    = targets.begin();
                    tg_it != targets.end();
                    ++tg_it) {
                if (constructed_types.find(*tg_it)
                        != constructed_types.end()) {
                    inter_set.insert(*tg_it);
                }
            }
        
            return inter_set;
        }

        VTAB_CONS find_vfuns (hash_set<TY_INDEX> cons_set,
            SUMMARY_CALLSITE* callsite) {
    //
    // Sometimes it helps to read the following with 
    // a pen/paper and a print of the 
    // Ty_Tab, Initv, Inito etc symbol tables of your test file
    //        
    // 1: formal_class is the class declaration
    // at the callsite
    // 2: callsite->Get_vtable_offset() 
    // is the vtable offset at
    // the callsite (the function is at this 
    // offset from vtable pointer, which will 
    // the first entry in an object 
    // 3: formal_vptr_offset is the offset to get
    // the correct vptr, only required in case of 
    // multiple inheritance and when the declared class is 
    // not the first base in the inheritance order. 
    // In this case we have an 
    // offset to reach functions defined in 
    // the vtab of this particular base.
    // Also remember that the object layout of the 
    // leaf class is in depth first order 
    // of the inherited bases.
    // For ex, if the inheritance is like so:
    // BarFoo:Bar, Foo. Assume that we call 
    // a certain method which is defined in Foo.
    // Assume that the declared class at the 
    // calling site is BarFoo.
    // The virtual table 
    // pointer for Foo will be at 
    // formal_vptr_offset offset from 
    // the virtual pointer of BarFoo.
    // Summarizing, if the declared class is known to be 
    // BarFoo, we need to start at this offset 
    // from the virtual pointer of BarFoo.
    // But if the actual class of the object
    // is a subclass of BarFoo, then we also
    // need the ancestor_offset to resolve
    // to the correct vfun.
    //
            TY_INDEX formal_class = 
                TY_IDX_index(callsite->Get_virtual_class());
            UINT64 formal_vptr_offset =
                callsite->Get_vptr_offset();
            VTAB_CONS vtab_hand;
            hash_set <ST_IDX> vfun_set;
            for (hash_set<TY_INDEX>::iterator
                    cons_it = cons_set.begin(); cons_it != cons_set.end();
                    ++cons_it) {
                TY_INDEX cons_ty = *cons_it;

                Is_True (constructor_map.find(cons_ty) != 
                        constructor_map.end(),
                        ("IPA_fast_static_analysis_VF:Constructor_map does not carry pui for type"));
                Is_True (pu_node_index_map.find(constructor_map[cons_ty]) !=
                        pu_node_index_map.end(),
                        ("IPA_fast_static_analysis_VF:PU_node_index_map does not carry node index for pui"));

                IPA_NODE * constructor 
                    = IPA_Call_Graph->Node(
                          pu_node_index_map[constructor_map[cons_ty]]);

                Is_True (constructor != NULL,
                        ("IPA_fast_static_analysis_VF: Constructor Node is not found in call graph"));

                IPA_NODE_CONTEXT context(constructor);
                WN *vtab = NULL;
                WN *wn_start = constructor->Whirl_Tree(TRUE);
                
                // The following is borrowed directly from the 
                // earlier developer's work.
                // Ancestor offset is computed by summing 
                // sizes of data members of classes that 
                // are along the path from the constructor class
                // to its ancestor, formal_class
                // Following comes from Multiple Inheritance for C++, 
                // Bjarne Stroustrup, May 1999 issue of "The C/C++ Users Journal"
                // On citeseer: http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.36.8766
                // More recent information is in Wikipedia: http://en.wikipedia.org/wiki/Virtual_function_table
                // These discuss the way C++ lays out
                // an object's data in memory. First element will be the rooting base
                // class/infered class's virtual pointer, 
                // if the class has a virtual function (the same virtual 
                // table pointers are shared between the root base class and 
                // the constructed type of the object), second will be first data 
                // member in base class, then the next, etc, and then the
                // members of subclass of base class and its children. Then the 
                // subclasses of the base's subclasses are laid out and 
                // so on recursively.
                // In case of multiple inheritance the layout is depth 
                // first on the specified inheritance order.
                // Open64 does not need to do any of this work to set up 
                // the virtual table or to set up data layout of objects. 
                // These are handled by the GCC frontend. open64 faithfully
                // brings this data from the GCC frontend 
                // into TY_Tab, Inito, initvs etc.
                // 

                size_t ancestor_offset
                    = IPA_Class_Hierarchy->Get_Ancestor_Offset(
                       cons_ty, formal_class);

                for (WN_ITER *wni = WN_WALK_StmtIter(wn_start);
                        wni != NULL;
                        wni = WN_WALK_StmtNext(wni)) {
                    WN *wn = WN_ITER_wn(wni);
                    if (WN_operator(wn) == OPR_ISTORE) {
                        WN *rhs = WN_kid0(wn);
                        WN *lhs = WN_kid1(wn);
                        UINT64 add_ofst = 0;
                        if (WN_operator(lhs) == OPR_ADD) {
                            add_ofst = WN_const_val(WN_kid1(lhs));
                            lhs = WN_kid0(lhs);
                        }
                        if (WN_operator(rhs) == OPR_LDA
                            && WN_operator(lhs) == OPR_LDID) {

                            TY_IDX this_class_ptr
                                = ST_type(WN_st(lhs));

                            if (TY_kind(this_class_ptr)
                                != KIND_POINTER)
                                continue;

                            TY_IDX this_class
                                = TY_pointed(this_class_ptr);

                            if (TY_IDX_index(this_class) == cons_ty) {
                                // Find the field by the
                                // statement in constructor
                                UINT64 ofst
                                    = WN_store_offset(wn) + add_ofst;
                                // If they are matched, this
                                // statement indicates the
                                // vtable of the actual class
                                if (ofst == ancestor_offset + 
                                        formal_vptr_offset) {
                                    vtab = wn;
                                    break;
                                }
                            }
                        }
                    }
                }

               if (vtab != NULL) {
                  size_t func_offset = callsite->Get_vtable_offset();
                  ST_IDX st_id = find_vfun(stdout, constructor, vtab, func_offset);
                  if (st_id != ST_IDX_ZERO) {
                       VTAB_HANDLE_H vtabh;
                       vtabh.vfun = st_id;
                       vtabh.vtab = vtab;
                       vtab_hand.vtab_h[cons_ty] = vtabh;
                       vtab_hand.sts.insert(st_id);
                   }
                }
            }
            return vtab_hand;
        }

        void fix_callsites (IPA_NODE *method) {
            if (method == NULL)
                return;

            PU_IDX pui
                = ST_pu(method->Func_ST());
            if (pu_node_index_map.find(pui) == pu_node_index_map.end()) {
                //printf ("Skipping method:pu_node_index_map does not carry pui:%d\n",
                //        pui);
                 return;
            }

            //IPA_NODE_CONTEXT context(method);
            SUMMARY_PROCEDURE * proc_array = method->Summary_Proc();
            SUMMARY_CALLSITE* callsite_array2 =
                IPA_get_callsite_array(method) + proc_array->Get_callsite_index();
            INT cs_index = proc_array->Get_callsite_index();
            cs_index =0;
            INT count = 0;
            for (INT j = 0; j < proc_array->Get_callsite_count(); ++j, ++cs_index) {
                // 
                // The only calls that will have this flag set are virtual function dummy callsites.
                // If the pass is enabled, after virtual function replacement, 
                // some dummy callsites will have this flag reset as they now get to 
                // represent the infered callee. 
                // In case the replacement did not kick in for a virtual function, or in case the 
                // pass is disabled, the corresponding dummy callsite
                // will still have this flag set on it. We check for this case here 
                // and leave their callsite_ids intact, without remapping to count.
                //
                 if (!callsite_array2[cs_index].Is_virtual_function_target()) {
                      callsite_array2[cs_index].Set_callsite_id (count++);
                 }
            }
        }

        void make_VF_wn_map (IPA_NODE *method,
                WN_IPA_MAP& a_wn_ipa_map) {
            IPA_NODE_CONTEXT context(method);
            a_wn_ipa_map.ipa_node = (IPA_NODE*) NULL;
            WN *wn_start = method->Whirl_Tree(TRUE);
            Is_True(wn_start, ("IPA_fast_static_analysis_VF: Whirl node is empty."));
            //
            // Walk over the whirl nodes in the Whirl_Tree of a node and
            // check if a WHIRL node is a virtual function call or not.
            // If WN* is a virtual function,
            // map it into argument WN_IPA_MAP& using the WN*'s 
            // map_id as hashmap's key.
            // 
            for (WN_ITER *wni = WN_WALK_StmtIter(wn_start);
                    wni != NULL; wni = WN_WALK_StmtNext(wni))
            {
                WN *wn = WN_ITER_wn(wni);
                if (WN_operator(wn) == OPR_ICALL) {
                    if (WN_Call_Is_Virtual(wn)) {
                        if (i_must_debug == true) {
                            method->Print(virtual_whirls);
                            fprintf(virtual_whirls, 
                                    "------ mapid:%d\n ------",
                                    WN_map_id(wn));
                            fdump_tree(virtual_whirls, wn);
                        }
                        Is_True(a_wn_ipa_map.wn_map.find(WN_map_id(wn)) 
                                == a_wn_ipa_map.wn_map.end(), 
                               ("Whirl map id conflicts in wn_map"));
                        a_wn_ipa_map.wn_map[WN_map_id(wn)] = wn;
                        a_wn_ipa_map.ipa_node = method;
                    }   
                }
            }

        }

        void analyze_and_transform_VF (IPA_NODE *method) {
            Is_True ((method != NULL), 
("IPA_fast_static_analysis_VF: Test method != NULL fails with analyze_and_transform_VF\n"));

            PU_IDX pui = ST_pu(method->Func_ST());
            if (pu_node_index_map.find(pui) == pu_node_index_map.end()) {
//                printf ("Skipping method:pu_node_index_map does not carry pui:%d\n",
//                        pui);
                 return;
            }

            WN_IPA_MAP a_wn_ipa_map;
            
            // This function maps virtual function whirlnodes in a method 
            // to their WN_map_id.
            // if there are no virtual functions in a method, a_wn_ipa_map.ipa_node
            // will be NULL
            make_VF_wn_map(method, a_wn_ipa_map);

            if (a_wn_ipa_map.ipa_node != NULL) {
                // we have passed stage_1 test. i.e we have 
                // a VF callsite in 'method'. 
                
                list <SUMMARY_CALLSITE* >  vf_callsites; // list of vf callsites from an IPA_NODE that heuristic 1 & 2 found
                list <SUMMARY_CALLSITE* >  vf_duplicates; // list of dummy callsites inserted by IPL if heuristic 1 & 2 approve the virtual function
 // the set of classes that may been instantiated is stored in vf_object_instances
                hash_map <WN_MAP_ID, hash_set<TY_INDEX> > vf_object_instances;
// 
// This is a hash_map mapping the virtual function Whirl_Node to a VTAB_CONS
// which contains the ST of the infered candidate for the virtual function. Also VTAB_CONS 
// contains the virtual table of the infered class containing the virtual function.
// more on this later.
// 
//
                hash_map <WN_MAP_ID, VTAB_CONS> vf_vtab_sts;

                int count = callsite_count(method);
                SUMMARY_PROCEDURE* method_summary =
                    method->Summary_Proc();

                SUMMARY_CALLSITE* callsite_array =
                    IPA_get_callsite_array(method)
                    + method_summary->Get_callsite_index();
                while (count > 0) {
                    // 
                    // This is what we expect to do for
                    // VFs. For each VF site, ipl had added a sister call site
                    // with a call to a dummy_callee
                    // This dummy callsite precedes VF callsite in callsite_array.
                    //
                    // If the virtual function is replaced, the dummy 
                    // callsite will be used by Add_New_Edge as the SUMMARY_CALLSITE 
                    // of the new call being inserted into the call graph. 
                    // Many of the VFs may never get through the heuristics and
                    // if there are no replacements due to that, the dummy callsite 
                    // needs to be skipped over in the callsite_array
                    // and fixup_only () function in this file does that.
                    // 
                    // we are decrementing callsite count variable 2 times in
                    // every iteration in case the present 
                    // callsite is a dummy callsite
                    // 
                    SUMMARY_CALLSITE * dummy_cs = callsite_array;
                    callsite_array++;
                    count--;
                    if (count == 0) break;

                    if (dummy_cs->Is_virtual_function_target()) {
                        if (callsite_array->Is_virtual_call()) {
                            SUMMARY_CALLSITE* callsite = callsite_array;

                           // printf ("num_subcls is %d for \n", 
                           //         num_subcls(TY_IDX_index(
                           //                 callsite->Get_virtual_class())));
                           // Ty_tab[TY_IDX_index(callsite->Get_virtual_class())].Print(stdout);
                            update_true_classes(
                                   num_subcls(TY_IDX_index(
                                            callsite->Get_virtual_class())));

                            if (a_wn_ipa_map.wn_map.find(callsite->Get_map_id()) 
                                    != a_wn_ipa_map.wn_map.end()) {
                                hash_set<TY_INDEX> instance_set
                                        = class_instantiations(callsite);

                                if (class_hierarchy_analysis == true && 
                                        num_subcls(TY_IDX_index(
                                        callsite->Get_virtual_class())) == 1) {
                                    //
                                    // this is heuristic 1, `Class Hierarchy Analysis'
                                    //  we check if num_subcls (containing the
                                    // declared_class is == 1, i.e. the declared class 
                                    // is the same as the true class of the object
                                    // declared class is typically the type used during 
                                    // argument passing time and true class is the type used
                                    // with the new operator at object creation time.
                                    // find_vfuns is a very complicated function. you 
                                    // need to understand the paper by C++ Stroustrup
                                    // on Multiple inheritance, wikipedia pages on 
                                    // Thunks and in general understand how virtual function
                                    // resolution happens at run time. Please contact us 
                                    // through the appropriate forum in case you have 
                                    // questions/comments regarding that.
                                    // 
                                    VTAB_CONS vtab_sts =
                                        find_vfuns(instance_set, callsite);
                                    if (vtab_sts.sts.size() == 1) {
                                        heur1++;
                                        vf_callsites.push_back(callsite);
                                        vf_duplicates.push_back(dummy_cs);
                                        vf_object_instances[callsite->Get_map_id()] =
                                            instance_set;
                                        vf_vtab_sts[callsite->Get_map_id()] =
                                            vtab_sts;
                                    }
                                }
                                else if (class_type_analysis == true && instance_set.size() >= 1) {
                                    // this is heuristic 2, `Class Type Analysis'. We check
                                    // if out of a class hierarchy only one instance is 
                                    // instantiated ever.
                                    update_instances(instance_set.size());
                                    if (instance_set.size() == 1) {
                                    VTAB_CONS vtab_sts =
                                        find_vfuns(instance_set, callsite);
                                    if (vtab_sts.sts.size() == 1) {
                                        heur2++;
                                        vf_callsites.push_back(callsite);
                                        vf_duplicates.push_back(dummy_cs);
                                        vf_object_instances[callsite->Get_map_id()] =
                                            instance_set;
                                        vf_vtab_sts[callsite->Get_map_id()] =
                                            vtab_sts;
                                    }
                                    }
                                }
                            }
                            callsite_array++;
                            count--;
                        }
                    }
                }

                // if analysis found some virtual functions
                if (vf_callsites.size() > 0) {
                    node_idx_virt_funs[method->Node_Index()] = a_wn_ipa_map;
                    node_idx_vf_callsites[method->Node_Index()] = 
                        vf_callsites;
                    method_vf_data[method->Node_Index()] = vf_object_instances;
                    list <SUMMARY_CALLSITE*>::iterator vf_dummy_it = vf_duplicates.begin();
                    for (list <SUMMARY_CALLSITE* >::iterator  vf_cit = 
                            vf_callsites.begin(); vf_cit != vf_callsites.end();
                            ++vf_cit, ++vf_dummy_it) {
                        // We could have done this right where the VF was found, 
                        // but some may find this kind of check pointing useful 
                        // while debugging.
                        // Obviously this list we double traverse on is a small list and the cost will not 
                        // be much due to the double travesal.
                        SUMMARY_CALLSITE *callsite = *vf_cit;
                        SUMMARY_CALLSITE *dummy_cs = *vf_dummy_it;
                        VTAB_CONS vtab_sts = vf_vtab_sts[callsite->Get_map_id()];
                        hash_set<TY_INDEX> instance_set = 
                            vf_object_instances[callsite->Get_map_id()];
                        WN* vtab = vtab_sts.vtab_h[*(instance_set.begin())].vtab;
                        ST_IDX st_id = *(vtab_sts.sts.begin());

                        // Shared_attr is just a convenient place holder
                        // for the vtab and a ST id of the inferred callee in it. 
                        // It helps in enabling a smaller argument passing list.
                        Shared_attr* ret = new Shared_attr();
                        ret->vtab = vtab;
                        ret->fun_st_idx = st_id;

                        TY_INDEX method_class
                            = TY_IDX_index(callsite->Get_virtual_class());
                        size_t ancestor_offset
                            = IPA_Class_Hierarchy->Get_Ancestor_Offset(
                              *(instance_set.begin()), method_class);
                        ret->ancestor_offset = ancestor_offset;
                        apply_VF_transformation(callsite, dummy_cs, method, ret);
                    }
                }
            }
        }
     private:
        int apply_VF_transformation(SUMMARY_CALLSITE *callsite,
                             SUMMARY_CALLSITE *dummy_cs,
                             IPA_NODE* method, Shared_attr *ret) {
            //
            // walk over the VTab and get the initv
            // entry of the function for each of the
            // instances in instance_set.
            // If these functions are the same we can adapt the 
            // "oracle based static dispatch" function calling scheme.
            //
            IPA_NODE_CONTEXT context(method);
            if (node_idx_virt_funs.find(method->Node_Index()) ==
                    node_idx_virt_funs.end()) {
                return -1;
            } else {
                if (node_idx_virt_funs[method->Node_Index()].wn_map.size() == 0) {
                    return -1;
                }
                if (node_idx_virt_funs[method->Node_Index()].ipa_node == NULL) {
                    return -1;
                }
            }
            hash_map<WN_MAP_ID, WN*> wn_map 
                = node_idx_virt_funs[method->Node_Index()].wn_map;
            
            ST_IDX calle_st = ret->fun_st_idx;

            ST *callee_st = ST_ptr (calle_st);
            
            PU_IDX pui = ST_pu(callee_st);

            if (pu_node_index_map.find(pui) == pu_node_index_map.end()) {
                //printf ("Skipping method:pu_node_index_map does not carry pui:%d\n",
                //        pui);
                 return -1;
            }

            for(UINT edg_i = 0; edg_i < IPA_Call_Graph->Edge_Size(); ++ edg_i) {
                if (IPA_Call_Graph->Caller(IPA_Call_Graph->Edge(edg_i)) == method) {
                    if (IPA_Call_Graph->Edge(edg_i)->Summary_Callsite()
                            == dummy_cs) {
                        //printf("Call graph already contains the callsite!\n");
                        return -1;
                    }
                }
            }

            NODE_INDEX callee_nod_idx = AUX_PU_node (Aux_Pu_Table[ST_pu(callee_st)]);

            if (callee_nod_idx == INVALID_NODE_INDEX) {
                //printf("Call graph does not contain the callsite's node\n");
                return -1;
            }

            TY_IDX ty_callee = ST_pu_type (callee_st);
            Is_True ((!(ty_callee <= TY_IDX_ZERO && ty_callee > TY_Table_Size())),
                    ("TY_IDX:%d is not in range:(%d %d)", 
                    ty_callee, TY_IDX_ZERO, TY_Table_Size()));

 
            WN *old_wn = wn_map[callsite->Get_map_id()];

            Is_True (WN_operator_is(old_wn, OPR_ICALL), 
                    ("Transformation only for ICALL"));

            if (i_must_debug == true) {   
                fprintf (transform_whirls, "Going to transform... \n");
                fprintf (transform_whirls, "caller->Total_Succ():%d", 
                       method->Total_Succ());
                fdump_tree(transform_whirls, method->Whirl_Tree(TRUE));
            }
 
            WN_verifier(method->Whirl_Tree(TRUE));

            WN* copy_lda = WN_CreateLda (Use_32_Bit_Pointers ? 
                    OPC_U4LDA : OPC_U8LDA,
                    0, Make_Pointer_Type(ty_callee), 
                    WN_st(WN_kid(ret->vtab,0)));

            WN *new_wn = WN_generic_call(OPR_CALL,
                                 WN_rtype(old_wn),
                                 /* result type is same as old_wn */
                                 WN_desc(old_wn),  /*  */
                                 WN_kid_count(old_wn)-1,
                                 callee_st);


            WN * block = WN_Get_Parent (old_wn,
                                method->Parent_Map(),
                                method->Map_Table());
           for (size_t j = 0; j < WN_kid_count(new_wn); j++) {
                WN_kid(new_wn,j) = WN_COPY_Tree_With_Map(WN_kid(old_wn,j));
            }

            WN* copy_load = WN_COPY_Tree_With_Map(
                                WN_kid(WN_kid(old_wn,
                                    WN_kid_count(old_wn)-1),
                                     0));

            OPCODE incopcode = OPCODE_make_op(OPR_SUB, 
                    WN_rtype(copy_load),MTYPE_V);
            WN * sub_op = WN_CreateExp2 (incopcode, 
                            WN_COPY_Tree_With_Map(copy_load),
                            WN_CreateIntconst(OPC_I4INTCONST,
                            (WN_lda_offset(WN_kid0(ret->vtab)))));

            WN *cmp = WN_Create(
                          Use_32_Bit_Pointers?
                          OPC_U4U4EQ:OPC_U8U8EQ,2);

            WN_kid0(cmp) = copy_lda;
            WN_kid1(cmp) = sub_op;

            WN *then_blk = WN_CreateBlock();
            WN *else_blk = WN_CreateBlock();
            WN* if_type = WN_CreateIf(cmp, then_blk, else_blk);
            WN* aold_wn = WN_COPY_Tree_With_Map(old_wn);

            WN_INSERT_BlockLast(then_blk, new_wn);
            WN_INSERT_BlockLast(else_blk, aold_wn);

            bool todo = false;
            for (WN* stmt = WN_next(old_wn);
                    stmt != NULL && Is_Return_Store_Stmt (stmt);) {
                todo= true;
                WN_INSERT_BlockLast (then_blk, WN_COPY_Tree(stmt));
                WN_INSERT_BlockLast (else_blk, WN_COPY_Tree(stmt));
                WN * ret_wn = stmt;
                stmt = WN_next (stmt);

                WN_EXTRACT_FromBlock (block, ret_wn);
            }

            if(i_must_debug == true) {
            // 
            // This code is used for profiling only. It is a debug feature.
            // load from extern variable miss_vf, hit_vf
            // increment and store back to the location 
            // miss_vf, hit_vf
            // else block gets missed 
            // if-then block gets hits
            //
                if (hit_st != ST_IDX_ZERO && miss_st != ST_IDX_ZERO) {
                    // hit part
                    // must use ldid???
                    ST *Hit_st = &St_Table(GLOBAL_SYMTAB, hit_st);
                    ST *Miss_st = &St_Table(GLOBAL_SYMTAB, miss_st);
                    TY_IDX pty_idx = Make_Pointer_Type (ST_type(Hit_st), FALSE);

                    WN *hit_ldid = WN_Ldid(MTYPE_I4, (WN_OFFSET)(num_vfs_count*4), Hit_st, 
                            ST_type(Hit_st));
                    WN *miss_ldid = WN_Ldid(MTYPE_I4, (WN_OFFSET)(num_vfs_count*4), Miss_st, 
                            ST_type(Miss_st));
                    OPCODE myaddopcode = OPCODE_make_op(OPR_ADD,MTYPE_U8,MTYPE_V);
                    WN *hit_add_op = WN_CreateExp2(myaddopcode,
                                         hit_ldid,
                                         WN_CreateIntconst(
                                            OPC_I4INTCONST, 1));
                    WN *miss_add_op = WN_CreateExp2(myaddopcode,
                                         miss_ldid,
                                         WN_CreateIntconst(
                                            OPC_I4INTCONST, 1));
                    WN *hit_store = WN_Stid(MTYPE_I4, (WN_OFFSET)(num_vfs_count*4), Hit_st,
                            ST_type(Hit_st), hit_add_op);
                    WN *miss_store = WN_Stid(MTYPE_I4, (WN_OFFSET)(num_vfs_count*4), Miss_st,
                            ST_type(Miss_st), miss_add_op);
                    WN_INSERT_BlockLast(then_blk,hit_store);
                    WN_INSERT_BlockLast(else_blk,miss_store);
                    list <string> mytags;
                    mytags.push_back(string(method->Name()));
                    mytags.push_back(string(ST_name(callee_st)));
                    miss_hit_tag[num_vfs_count] = mytags;
                }
            }

            WN_Parentize (then_blk, method->Parent_Map(),
                          method->Map_Table());
            WN_Parentize (else_blk, method->Parent_Map(),
                          method->Map_Table());

            WN_set_map_id(new_wn, WN_map_id(old_wn));
            WN_set_flag(new_wn, WN_flag(old_wn));

            WN_INSERT_BlockAfter(block,old_wn,if_type);
            WN_EXTRACT_FromBlock(block, old_wn);
            WN_Parentize (block, method->Parent_Map(), method->Map_Table());

            // Now fix_up_only will update this dummy callsite as well.
            dummy_cs->Reset_virtual_function_target();
            dummy_cs->Reset_func_ptr();
            dummy_cs->Set_param_count(WN_num_actuals(new_wn));
            dummy_cs->Set_return_type(WN_rtype(new_wn));
            //dummy_cs->Set_callsite_freq();
            // 
            // We dont have use for probability at all 
            // in this transformation. If I 
            // dont set probability to -1, the inliner 
            // skips this edge. 
            // 
            dummy_cs->Set_probability(-1);

            // set the symbol index of the inferred function on 
            // the dummy callsite
            method->Set_Pending_Virtual_Functions();
            IPA_NODE* callee_ipa_node = IPA_Call_Graph->Node(callee_nod_idx);
            SUMMARY_PROCEDURE* proc_summ_callee = callee_ipa_node->Summary_Proc();
            dummy_cs->Set_symbol_index(proc_summ_callee->Get_symbol_index());
            
            // update call graph
            
            IPA_EDGE* edge = IPA_Call_Graph->Add_New_Edge(dummy_cs,
                             method->Node_Index(),
                             pu_node_index_map[ST_pu(callee_st)]);
            edge->Set_Whirl_Node(new_wn); 

            // verify if the whirl_tree is proper after my insertions into it
            WN_verifier(method->Whirl_Tree(TRUE));

            num_vfs_count ++;
            
            // opti_cand is used only for statistics
            opti_cand[method->Node_Index()] = method;
            if (i_must_debug == true) {   
                fprintf (transform_whirls, "After transformation...\n");
                fdump_tree(transform_whirls, method->Whirl_Tree(TRUE));
                fprintf (transform_whirls, "caller->Total_Succ():%d", 
                        method->Total_Succ());
                fprintf (transform_whirls, "...done\n");
            }
            return 0;
        }
};

void
IPA_fast_static_analysis_VF () {
    DEVIRT_WORK devirt_work;
    devirt_work.init();
    if (IPA_Enable_fast_static_analysis_VF == TRUE) {
//        printf ("Devirt on open64.4.2.1-0\n");
        IPA_Class_Hierarchy = Build_Class_Hierarchy(); 
        devirt_work.find_constructors ();
// Dump out all constructors that we have found into a "constructors.log" file
//        devirt_work.dump_constructors();
        devirt_work.analyze_VFs();
        devirt_work.fixup_only();
        devirt_work.fini();
//
// The print_stat function prints the number of VF callees that have been replaced
// with the if-then-else and out of this, the number of CHA, CTA 
// cases that were replaced
//        
//        devirt_work.print_stat();
//
/* 
 This function collects histogram data. 
 compiler dump goes into a vf_class_hist.csv file in 
 current directory 
 Data looks like this:
 "Number of True classes","Number of virtual function callsites"
   1,888 // There were 888 virtual functions with Size(True_Class) == 1, 
   2,814
   ...
Number of instance classes","Number of virtual function callsites"
   1,2 
   2,856 // There were 856 virtual functions with Size(Instance_Class) == 1
   3,1085 
 */
 
//        devirt_work.histogram_stat();
/* 
 The following function, devirt_work.miss_hit_profile(), 
 is a profiling cum testing implementation.
 This is an experimental feature for use by developers during test and debug.
 The profiling mechanism counts how many times we had hits, i.e the optimization found
 the right virtual function replacement candidate and how many times the optimization found
 a wrong choice. That way we can see how effective the optimization really is. Because there
 may be thousands of instances for which this transfomation was applied on, it is not practical 
 to eye ball test them all of them. It helps to 
 use a profiling structure in the if-then and if-else to count how many times the optimization
 successefully predicted the right virtual function and how many times the optimization
 failed in predicting the right virtual function. In case we have a very large hit rate, 
 we are somewhat certain that our approach is accurate for all practical purposes.         
 How this feature works is described here. 
        After replacement we have an if-then-else structure for 
 the virtual function. Each such replaced virtual function is assigned an unique integer id. 
 Inside the if-then block and if-else block, profiling code is added. The profiling code
 requires two global arrays named __HIT_VIRTUAL_FUNCTION__ and __MISS_VIRTUAL_FUNCTION__ to be
 declared in the program that is getting compiled (in case these arrays are not defined, the
 pass does not insert the profiling code).
 In the if-then block pass adds a load from 
 __HIT_VIRTUAL_FUNCTION__[id], a piece of code to increment the loaded value and
 a store back to the load from location and likewise, inside the if-else block 
 pass adds a load from __MISS_VIRTUAL_FUNCTION__[id], increment code, store back. 
 In order for this to work we got to add a piece of code to the
 program being compiled in order to add the global arrays, 
 __HIT_VIRTUAL_FUNCTION__ and __MISS_VIRTUAL_FUNCTION__ and initialize and
 finalize these arrays.
 i.e at this time, we need to manually add lines into the  
 source code just like down here.
 Here it is:*/
/*
//  
unsigned int __MISS_VIRTUAL_FUNCTION__[2000], __HIT_VIRTUAL_FUNCTION__[2000];
// Add this class for initialization and finalization of these two arrays
class StatMan__ {
    public:
        // initialize elements in the hit, miss arrays to zero
    void init () {
        for (int mi = 0; mi < 2000; ++mi) {
            __MISS_VIRTUAL_FUNCTION__[mi] = 0;
            __HIT_VIRTUAL_FUNCTION__[mi] = 0;
        }
    }

    // create a file miss_hit.csv and dump out the profiling data from 
    // each element in the array. This function is meant to be called
    // just before the program completes execution. 
    // Dumps data into the run directory in a file miss_hit.csv like so
    // (id, misses, hits)
    // 1, 0, 90909 // there were 0 misses, and 90909 hits for virtual function
    // replacement location with id 1
    void fini () {
        FILE *mh = fopen("miss_hit.csv", "w");
        for (int mi = 0; mi < 2000; ++mi) {
            fprintf (mh, "%d,%u,%u\n",
                    mi,
                    __MISS_VIRTUAL_FUNCTION__[mi],
                    __HIT_VIRTUAL_FUNCTION__[mi]);
        }
        fclose(mh);
    }
};

// Add these lines to your main function. First two lines go
// right after entry and the last line goes right before the return
// statement(s) in the main function. 
int main () {
    //    StatMan__ myman;
    //    myman.init();
    ... 
    //    myman.fini();
    return 
}
*/
//        devirt_work.miss_hit_profile();
    } else {
        devirt_work.fixup_only();
    }
}

