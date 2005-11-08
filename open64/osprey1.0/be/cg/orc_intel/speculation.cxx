/*
  Copyright (C) 2000-2003, Intel Corporation
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification,
  are permitted provided that the following conditions are met:
  
  Redistributions of source code must retain the above copyright notice, this list
  of conditions and the following disclaimer. 
  
  Redistributions in binary form must reproduce the above copyright notice, this list
  of conditions and the following disclaimer in the documentation and/or other materials
  provided with the distribution. 

  Neither the name of the owner nor the names of its contributors may be used to endorse or
  promote products derived from this software without specific prior written permission. 

  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//-*-C++-*-

//=============================================================================
//
//  Module:  speculation.cxx
//  $Date: 2005/10/21 19:00:00 $
//  $Author: marcel $
//  $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/speculation.cxx,v $
//
//  Description:
//  ============
//
//  Implementation of Aurora control and data speculation.
//
//=============================================================================

#include "cgtarget.h"
#include "op_list.h"
#include "cg_dep_graph.h"
#include "bb.h"

#include "speculation.h"
#include "recovery.h"
#include "scheduler.h"
#include "dag.h"
#include "map.h"
#include "vt_region.h"
#include "tracing.h"
#include "ipfec_defs.h"
#include "vt_dag.h"
#include "vt_partition.h"
#include "op.h"
#include "cgtarget.h"
#include "ipfec_options.h"

map<OP*, OP*, compare_op>  Recovery_Info;



OP 
*Change_ld_Form(OP *load_op, ISA_ENUM_CLASS_VALUE target_form)
{
    Is_True(OP_load(load_op),("not a load OP!"));

    BOOL compatible = FALSE;
    BOOL float_op = OP_Is_Float_Mem(load_op) ? TRUE : FALSE;
    compatible = float_op ? ((target_form >= ECV_fldtype_s) && (target_form <= ECV_fldtype)) :
                            ((target_form >= ECV_ldtype_s)  && (target_form <= ECV_ldtype));
    FmtAssert(compatible,("load op and ldtype not compatible."));
        
    if( (target_form < ECV_ldtype_s) || (target_form > ECV_ldtype_sa) )
        return NULL;

    if( TN_enum(OP_opnd(load_op, enum_ldtype_pos)) == target_form)
        return load_op;

    Set_OP_opnd(load_op, enum_ldtype_pos, Gen_Enum_TN(target_form));
    Set_OP_speculative(load_op);

    return load_op;
}


//=============================================================================
//Function: Build_Incoming_Edges
//Input:
//    - OP *spec_ld: current ld that has been speculated.
//    - OP *chk: corresponding chk that has been constructed.
//Output:
//    - No explicit output.
//Description:
//    - There are five kinds of dependent relationship.
//          spec_ld-----> chk     
//          cmp---------> chk      
//          store-------> chk      
//          chk1--------> chk2 
//          br----------> chk    
//    - A new kind of arc will be invented to represent these relationships.
//      Its name is CG_DEP_PRECHK(its counterpart is CG_DEP_POSTCHK).
//=============================================================================
static void
Build_Incoming_Edges(OP *spec_ld, OP *chk)
{
    UINT8 opnd = OP_chk_a(chk) ? 2 : 1;
    new_arc(CG_DEP_REGIN, spec_ld, chk, 0, opnd, FALSE);
    for(ARC_LIST* arcs = OP_preds(spec_ld); arcs; arcs = ARC_LIST_rest(arcs)) {
        ARC* arc = ARC_LIST_first(arcs);
        OP* op = ARC_pred(arc);            
        if(OP_bb(op) != OP_bb(chk))
          continue;
        if(ARC_is_spec(arc) && !OP_Scheduled(op)) {
            if(OP_store(op)){
                new_arc_with_latency(CG_DEP_PRECHK, op, chk, 1, 0, 0, FALSE);
                continue;
            }
            if(ARC_kind(arc) == CG_DEP_CTLSPEC) {
                new_arc_with_latency(CG_DEP_CTLSPEC, op, chk, 1, 0, 0, FALSE);
                continue;
            }
            if(OP_chk(op)){
                new_arc_with_latency(CG_DEP_PRECHK, op, chk, 0, 0, 0, FALSE);
                continue;
            }
            Is_True(!OP_br(op),("A branch can not get to here!"));
        }
    }    
}


//=============================================================================
//Function:  BOOL OP_baneful(OP *op)
//Input:
//    - OP *op
//Output:
//    - A BOOL variable.
//    - True indicates that op writes only to GFP registersers.
//    - False indicates that op writes to eles places.
//Description:
//    - GFP stands for General register, Floating point register and 
//      Predicate register.
//=============================================================================
BOOL
OP_baneful(OP *op)
{

    if(OP_like_store(op))
        return TRUE;
    
    if(OP_results(op) == 0) 
        return TRUE;

    for (INT i = 0; i < OP_results(op); i++) {
        TN *result = OP_result(op, i);
        if( !TN_is_GFP(result) )
            return TRUE;
    }

    switch (OP_code(op)) {   
    default:
        return FALSE; 
    case TOP_mov_f_cpuid:
    case TOP_mov_f_dbr:
    case TOP_mov_f_ibr:
    case TOP_mov_f_msr:
    case TOP_mov_f_pkr:
    case TOP_mov_f_pmc:
    case TOP_mov_f_pmd:
    case TOP_mov_f_rr:
    case TOP_tpa:
    case TOP_probe_r:
    case TOP_probe_w:
    case TOP_probe_i_r:
    case TOP_probe_i_w:
    case TOP_alloc_3:
    case TOP_alloc:
    case TOP_lfetch_r:
    case TOP_lfetch_r_excl:
    case TOP_lfetch_r_fault:
    case TOP_lfetch_r_fault_excl:
    case TOP_lfetch_i:
    case TOP_lfetch_i_excl:
    case TOP_lfetch_i_fault:
    case TOP_lfetch_i_fault_excl:
    case TOP_xchg1:
    case TOP_xchg2:
    case TOP_xchg4:
    case TOP_xchg8:
    case TOP_ldf_fill:
    case TOP_ld8_fill:
    case TOP_ldf_r_fill:
    case TOP_ld8_r_fill:
    case TOP_ldfp8_i:
    case TOP_ldfpd_i:
    case TOP_ldfps_i:
    case TOP_ldf8_r:
    case TOP_ldfd_r:
    case TOP_ldfe_r:
    case TOP_ldfs_r:
    case TOP_ldf8_i:
    case TOP_ldfd_i:
    case TOP_ldfe_i:
    case TOP_ldfs_i:
    case TOP_ldf_i_fill:
    case TOP_ld8_i_fill:
    case TOP_cmpxchg1:
    case TOP_cmpxchg2:
    case TOP_cmpxchg4:
    case TOP_cmpxchg8:
    case TOP_fetchadd4:
    case TOP_fetchadd8:
    case TOP_stf8_i:
    case TOP_stf_i_spill:
    case TOP_stfd_i:
    case TOP_stfe_i:
    case TOP_stfs_i:
    case TOP_st8_i_spill:
    case TOP_st1_i:
    case TOP_st2_i:
    case TOP_st4_i:
    case TOP_st8_i:
    case TOP_spadjust:
    case TOP_intrncall:
    case TOP_ifixup:
    case TOP_ffixup:
    case TOP_dfixup:   
        return TRUE;
    }
}


//=============================================================================
//Function:  Compute_Topological_Order
//Input:
//    - REGIONAL_CFG_NODE* root;
//    - list<REGIONAL_CFG_NODE* >& node_list;
//    - set<REGIONAL_CFG_NODE* >& visited;
//Output:
//    - <none>
//Description:
//    - Put all successors of a reginal cfg node in a list, in topological order.
//=============================================================================
static void
Compute_Topological_Order(REGIONAL_CFG_NODE* root, 
                          list<REGIONAL_CFG_NODE *>& node_list, 
                          set<REGIONAL_CFG_NODE *>& visited)
{
    if( root == NULL ) return;
    for (CFG_SUCC_NODE_ITER succ_iter(root); succ_iter != 0; ++succ_iter) {
        REGIONAL_CFG_NODE* node = *succ_iter;
        if(visited.find(node) != visited.end())
            continue;
        Compute_Topological_Order(node, node_list, visited);
    }
    node_list.push_front(root);
    visited.insert(root);
    return;
}


//=============================================================================
//Function: Build_Outgoing_Edges
//Input:
//    - OP *spec_ld: current ld that has been speculated.
//    - OP *chk: corresponding chk that has been constructed.
//Output:
//    - No explicit output.
//Description:
//    - A new kind of arc: CG_DEP_POSTCHK, is invented to represent those edges
//      that come out from the chk to the other OPs. Such a kind of OP is 
//      prevented from been scheduled across the chk to become a member of the
//      speculative chain.
//=============================================================================
static void
Build_Outgoing_Edges(OP *spec_ld, OP *chk)
{

    if( IPFEC_Hold_Uses && CGTARG_Is_OP_Speculative_Load(spec_ld)){
        for (ARC_LIST *arcs = OP_succs(spec_ld); arcs; arcs = ARC_LIST_rest(arcs)) {   
             ARC *arc = ARC_LIST_first(arcs);
             new_arc(CG_DEP_POSTCHK, chk, ARC_succ(arc), 0, 0, FALSE); 
        }
        return;
    }

    typedef set<TN*, compare_tn> TNs;
    typedef map<BB*, TNs, compare_bb >  BB_TNs_MAP;
    typedef BB_TNs_MAP::iterator   BB_TNs_MAP_ITER;

    BB_TNs_MAP _live_in_map;  // Record all live in TNs of the speculative chain.
    BB_TNs_MAP _def_in_map;   // Record all TNs that are defined on the speculative chain.
    BB_TNs_MAP _pdef_in_map;  // The same as the above map, but the definition is predicated.
    
    BB* home_bb = OP_bb(chk);
    REGIONAL_CFG_NODE* root = Regional_Cfg_Node(home_bb);
    list<REGIONAL_CFG_NODE *>  node_list;
    set<REGIONAL_CFG_NODE *>  visited;
    
    Compute_Topological_Order(root, node_list, visited);   
    visited.clear();

    // Initialize the live in set.
    
    for (INT i = 0; i < OP_opnds(spec_ld); i++) {
        TN *opnd = OP_opnd(spec_ld, i);
        if (TN_is_register(opnd) && !TN_is_const_reg(opnd)){
            Is_True(!TN_Pair_In_OP(spec_ld, opnd, opnd), ("can not be a post-incr load!"));
            _live_in_map[home_bb].insert(opnd);
        }
    }
    
    // Initialize the definition set.
    
    TNs unsafe_set;
    for (INT i = 0; i < OP_results(spec_ld); i++) {
        TN *rslt = OP_result(spec_ld, i);
        Is_True(TN_is_register(rslt), ("rslt tn must be a register tn!"));
        _def_in_map[home_bb].insert(rslt);
        unsafe_set.insert(rslt);
    }

    set<OP*, compare_op> _dependent_set;
 

    // Iterate all successors, in topological order.
    
    list<REGIONAL_CFG_NODE*>::iterator iter;
    for(iter = node_list.begin(); iter != node_list.end(); iter++){
        if( (*iter)->Is_Region() || BB_exit((*iter)->BB_Node()) )  
            continue; 
        BB* bb = (*iter)->BB_Node();
    
        // Initialize the associative data structures of the current BB.

        for (CFG_PRED_NODE_ITER pred_iter(Regional_Cfg_Node(bb)); pred_iter != 0; ++pred_iter) {
            if ((*pred_iter)->Is_Region() || visited.find(*pred_iter) == visited.end()) 
                continue;
            BB* pred = (*pred_iter)->BB_Node();
            _def_in_map[bb].insert(_def_in_map[pred].begin(), _def_in_map[pred].end());
            _pdef_in_map[bb].insert(_pdef_in_map[pred].begin(), _pdef_in_map[pred].end());
            _live_in_map[bb].insert(_live_in_map[pred].begin(), _live_in_map[pred].end());
        }
       
        visited.insert(*iter);

        OP* start_op = bb == OP_bb(chk) ? OP_next(chk): BB_first_op(bb);
        for(OP* op = start_op; op != NULL; op = OP_next(op)) {

            TNs _tmp_live_in;
            BOOL Flow_Dep = FALSE;
            BOOL Output_Dep = FALSE;
            TN* last_flow_dep_tn = NULL;
            TN* ptn; 
    
            // If current op is already dependent on the chk,
            // go directly to handle its' successors.
    
            if(_dependent_set.find(op) != _dependent_set.end())   
                goto Handle_Succs;

            // If the current op is a baneful op that in the same BB
            // as the chk op, make sure it will not be scheduled 
            // across the chk.
    
            if(OP_bb(chk) == OP_bb(op) && OP_baneful(op))
                goto Gen_Arc;

            // Check to see whether the current op will change 
            // the value of live TNs.
    
            for(INT i = 0; i < OP_results(op); i++) {
                TN *rslt = OP_result(op, i);
                Is_True(TN_is_register(rslt),("can not be a post-incr load!"));
                if( unsafe_set.find(rslt) != unsafe_set.end() ||
                    _live_in_map[bb].find(rslt) != _live_in_map[bb].end())
                    goto Gen_Arc;
                if(!Output_Dep && 
                   (_def_in_map[bb].find(rslt) != _def_in_map[bb].end() ||
                    _pdef_in_map[bb].find(rslt) != _pdef_in_map[bb].end()))
                    Output_Dep = TRUE;
            }
            
            for(INT i = 0; i < OP_opnds(op); i++) {
                TN *opnd = OP_opnd(op, i);
                if(TN_is_register(opnd) && !TN_is_const_reg(opnd) &&
                   (_def_in_map[bb].find(opnd) != _def_in_map[bb].end() ||
                    _pdef_in_map[bb].find(opnd) != _pdef_in_map[bb].end())){
                    Flow_Dep = TRUE; 
                    last_flow_dep_tn = opnd;
                }
            }
            
            // If the current op has nothing to do with the speculative load.
            // Nothing will be done.

            if(!Flow_Dep && !Output_Dep)  continue;
            
            // If it is a baneful op, make sure it will not be  scheduled across
            // the check.
    
            if(OP_baneful(op))  goto Gen_Arc;
            
            // - predicate opnd is not a TRUE tn, 
            // - predicate opnd is defined on the speculative chain,
            // - the speculative load is a data speculative load.
            // prevent it from been schedule across the chk.

            ptn = OP_opnd(op, 0);
            if(!TN_is_true_pred(ptn) && CGTARG_Is_OP_Advanced_Load(spec_ld) && 
                ( _def_in_map[bb].find(ptn) != _def_in_map[bb].end() ||
                  _pdef_in_map[bb].find(ptn) != _pdef_in_map[bb].end()))
                    goto Gen_Arc;
            
            // It is a cascaded load.
    
            if(Flow_Dep && OP_load(op)){
                ISA_REGISTER_CLASS rc = TN_register_class(last_flow_dep_tn); 
                if(rc != ISA_REGISTER_CLASS_predicate){
                    ARC *arc = new_arc_with_latency(CG_DEP_POSTCHK, chk, op, 0, 0, 0, FALSE);
                    Set_ARC_is_dotted(arc, TRUE);
                }
            }

            // Prepare to update live in set.

            for (INT i = 0; i < OP_opnds(op); i++) {
                TN *opnd = OP_opnd(op, i);
                if(TN_is_register(opnd) && !TN_is_const_reg(opnd) &&
                    _def_in_map[bb].find(opnd) == _def_in_map[bb].end()){ 
                    _tmp_live_in.insert(opnd);
                    if(TN_Pair_In_OP(op,opnd,opnd))
                        goto Gen_Arc;           
                }
            }
            _live_in_map[bb].insert(_tmp_live_in.begin(),_tmp_live_in.end());

            // Update relative data structures.
    
            for (INT i = 0; i < OP_results(op); i++) {
                TN *rslt = OP_result(op, i);
                Is_True(TN_is_register(rslt),("can not be a post-incr load!"));
                if(!Flow_Dep &&
                    _def_in_map[bb].find(rslt) == _def_in_map[bb].end() &&
                    _pdef_in_map[bb].find(rslt) == _pdef_in_map[bb].end())
                    continue;
                if(TN_is_true_pred(ptn)){
                    _def_in_map[bb].insert(rslt);
                    _pdef_in_map[bb].erase(rslt);
                } else {
                    if(_def_in_map[bb].find(rslt) == _def_in_map[bb].end())
                        _pdef_in_map[bb].insert(rslt);
                }
            }            
            continue;

Gen_Arc:  
            new_arc_with_latency(CG_DEP_POSTCHK, chk, op, 0, 0, 0, FALSE);  
            
Handle_Succs:
            for (ARC_LIST *arcs = OP_succs(op); arcs; arcs = ARC_LIST_rest(arcs)){
                ARC *arc = ARC_LIST_first(arcs);
                OP  *succ = ARC_succ(arc);
                if(!OP_br(op) && !ARC_is_spec(arc))
                    _dependent_set.insert(succ);
            }
        }

    }
}

//=============================================================================
//Function:  Connect_Clones_with_CHK
//Input:
//      - Convert every ld.s on the op list to ld.sa.
//      - All OPs on the op list should be load .
//Output:
//      - <none>
//Description:
//      -
//=============================================================================
static void Connect_Clones_with_CHK(vector<OP *>& clones, OP *chk)
{

    vector<OP *>::iterator iter;
    for(iter = clones.begin() ; iter != clones.end(); ++iter) {

        OP *op = *iter;         
        Is_True(OP_load(op),("not a load OP"));

        if( CGTARG_Is_OP_Speculative(op) && !CGTARG_Is_OP_Advanced_Load(op)){
            //If load op is a ld.s/ldf.s , convert it to ld.sa/ldf.sa .
            TN *ldtype_tn = OP_Is_Float_Mem(op) ? Gen_Enum_TN(ECV_fldtype_sa) :
                                                  Gen_Enum_TN(ECV_ldtype_sa);
            Set_OP_opnd(op, enum_ldtype_pos, ldtype_tn);        
            new_arc(CG_DEP_PRECHK, op, chk, 0, 0, FALSE);
        }
    }
}

//=============================================================================
//Function:  Loacl_Insert_CHK
//Input:
//    - OP *spec_ld: The speculative ld. 
//    - OP *point: An OP in OPs list. It points to the position where we 
//                 will insert the chk.
//    - TN *pr_tn: The qualifying predicate of the speculative ld when it
//                 has not been scheduled.
//Output:
//    - No explicit output.
//Description:
//    - This function is dedicated to local scheduling.
//=============================================================================
OP*
Local_Insert_CHK(OP *spec_ld, OP *point, TN *pr_tn)
{        

    Is_True(CGTARG_Is_OP_Speculative(spec_ld),("not a speculative load!"));
    Is_True(point != NULL,("Insert position cannot be NULL!"));
    Is_True(OP_bb(spec_ld) == OP_bb(point),("not in the same BB!"));

    OP *chk;

    if( CGTARG_Is_OP_Advanced_Load(spec_ld) ) {
       
        TN *aclr_tn   = Gen_Enum_TN(ECV_aclr_clr);
        TN *reg_tn    = OP_result(spec_ld, 0);
        TN *target_tn = Gen_Label_TN(Gen_Label_For_BB(OP_bb(spec_ld)), 0);

        if(TN_is_float(reg_tn)){
            chk = Mk_OP(TOP_chk_f_a, pr_tn, aclr_tn, reg_tn, target_tn);    
        } else {
            chk = Mk_OP(TOP_chk_a, pr_tn, aclr_tn, reg_tn, target_tn);    
        }
    } else {

        TN *reg_tn    = OP_result(spec_ld, 0);
        TN *target_tn = Gen_Label_TN(Gen_Label_For_BB(OP_bb(spec_ld)), 0);

        if(TN_is_float(reg_tn)){
            chk = Mk_OP(TOP_chk_f_s, pr_tn, reg_tn, target_tn);    
        } else {
            chk = Mk_OP(TOP_chk_s, pr_tn, reg_tn, target_tn);    
        }
    }

    BB_Insert_Op_After(OP_bb(spec_ld), point, chk);  
 
    if (Get_Trace(TP_A_RBG, TT_RBG_DRAW_GLBL_CFG)) { 
        draw_global_cfg();
    }
 
    Build_Outgoing_Edges(spec_ld, chk);     
    Build_Incoming_Edges(spec_ld, chk);

    Recovery_Info[chk] = spec_ld;
  
    return chk;    
}


//=============================================================================
//Function: Insert_CHK
//Input:
//    - OP *spec_ld_list: the speculative ld and its' splitting clones. The
//      first element of the list is the speculative ld that has been 
//      scheduled. Others are clones of this ld. These OPs are newly added
//      into the DAG. Thus they have not been scheduled and they will be
//      scheduled at latter time.
//    - OP *orig_ld: the original ld. It points to the position where we 
//      will insert the chk.
//Output:
//    - No explicit output.
//Description:
//    - Insert chk for the speculative load and update DAG.
//=============================================================================
OP*
Insert_CHK(OP* primary_ld, vector<OP *>& copys, BB* home_bb, OP* pos, TN* pr_tn)
{

    Is_True(CGTARG_Is_OP_Speculative(primary_ld),("not a speculative load OP!"));

    OP *chk;
    if( !copys.empty() || CGTARG_Is_OP_Advanced_Load(primary_ld) ) {

        //If the "copys" is not empty, it means that the ld has been 
        //scheduled across a joint point. Thus several compensation OPs
        //have been added into the DAG. For this kind of case, we use 
        //chk.a to handle the work of check .
                        
        TN *aclr_tn   = Gen_Enum_TN(ECV_aclr_clr);
        TN *reg_tn    = OP_result(primary_ld, 0);
        TN *target_tn = Gen_Label_TN(Gen_Label_For_BB(home_bb), 0);

        if(TN_is_float(reg_tn)){
            chk = Mk_OP(TOP_chk_f_a, pr_tn, aclr_tn, reg_tn, target_tn);    
        } else {
            chk = Mk_OP(TOP_chk_a, pr_tn, aclr_tn, reg_tn, target_tn);    
        }
    } else {

        TN *reg_tn    = OP_result(primary_ld, 0);
        TN *target_tn = Gen_Label_TN(Gen_Label_For_BB(home_bb), 0);

        if(TN_is_float(reg_tn)){
            chk = Mk_OP(TOP_chk_f_s, pr_tn, reg_tn, target_tn);    
        } else {
            if(IPFEC_Force_CHK_Fail){
                chk = Mk_OP(TOP_chk_s_m, pr_tn, reg_tn, target_tn);    
            } else {
                chk = Mk_OP(TOP_chk_s, pr_tn, reg_tn, target_tn);                
            }
        }
    }

    OP_srcpos(chk) = OP_srcpos(primary_ld);
    
    if(pos != NULL){
       Is_True(OP_bb(pos) == home_bb,("Position error!"));
       BB_Insert_Op_After(home_bb, pos, chk);
    } else {
       BB_Prepend_Op(home_bb, chk);
    }

    Build_Outgoing_Edges(primary_ld, chk);        
    Build_Incoming_Edges(primary_ld, chk);

    if (!copys.empty())
        Connect_Clones_with_CHK(copys,chk);  

    Recovery_Info[chk] = primary_ld;

    return chk;    
}

void
Set_Speculative_Chain_Begin_Point(OP* chk_op, OP* load_op)
{
    Recovery_Info[chk_op] = load_op;
    return;
}



/*
 *
 *  We suppose the load will be converted to a ld.s and will
 *  be inserted in the position that indicated by target_bb
 *  and pos.
 *
 */ 
 
BOOL
Is_Control_Speculation_Gratuitous(OP* load, BB* target_bb, OP* pos)
{
    TN* base_tn;
    TN* ofst_tn;
    OP_Base_Offset_TNs(load,&base_tn,&ofst_tn);
    BB* cur_bb = target_bb;
    for(OP* op = pos ? pos : BB_last_op(cur_bb);;){
      if(op == NULL){
        if(BB* pred = BB_Unique_Predecessor(cur_bb)){
          //if(BB_call(pred)) return FALSE;
          cur_bb = pred;
          op = BB_last_op(cur_bb);
          continue;
        }else{
          return FALSE;
        }
      }else{
        if(OP_Defs_TN(op,base_tn)){
          return FALSE;
        }else{
          if((OP_load(op) || OP_store(op)) && !CGTARG_Is_OP_Speculative_Load(op)){
            TN* base;
            TN* ofst;
            OP_Base_Offset_TNs(op,&base,&ofst);
            if((base_tn == base) && (OP_opnd(op,TOP_Find_Operand_Use(OP_code(op),OU_predicate)) == True_TN)){
              return TRUE;
            }
          }
          op = OP_prev(op);
          continue;
        }
      }
    }
}

 //======================================================================
 //
 //  Delete_Recovery_Info_For_BB
 //
 //  Delete the chk op from recovery info if this BB is deleted in
 //  cflow optimization.
 //
 //======================================================================
 BOOL
 Delete_Recovery_Info_For_BB(BB *bb) {
     for (OP *op= BB_first_op(bb);op != NULL;op = OP_next(op)) {
         Is_True(op != NULL,("OP Can not be NULL!"));
         if (OP_chk(op)) {
             Recovery_Info.erase(op);
         }
     }
 }

