/* -*-Mode: c++;-*- (Tell emacs to use c++ mode) */
/*
 *  Copyright (C) 2000-2002, Intel Corporation
 *  All rights reserved.
 *  
 *  Redistribution and use in source and binary forms, with or without modification,
 *  are permitted provided that the following conditions are met:
 *  
 *  Redistributions of source code must retain the above copyright notice, this list
 *  of conditions and the following disclaimer. 
 *  
 *  Redistributions in binary form must reproduce the above copyright notice, this list
 *  of conditions and the following disclaimer in the documentation and/or other materials
 *  provided with the distribution. 
 *
 *  Neither the name of the owner nor the names of its contributors may be used to endorse or
 *  promote products derived from this software without specific prior written permission. 
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 *  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 *  FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE CONTRIBUTORS BE LIABLE FOR
 *  ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 *  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 *  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *  LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 *  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

 /* =========================================================================
  * =========================================================================
  * 
  * Module: sched_dflow.cxx
  * $Revision: 1.1.1.1 $
  * $Date: 2005/10/21 19:00:00 $
  * $Author: marcel $
  * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/sched_dflow.cxx,v $
  *
  * Description:
  * ============
  *
  *   This module implement data-flow-related functionality on behalf 
  *   of scheduler.
  *   ref sched_dflow.h for more details
  * 
  * =========================================================================
  * =========================================================================
  */
  
#include "tracing.h"
#include "errors.h"

#include "reg_live.h"
#include "gra_live.h"

#include "region.h"
#include "sched_util.h"
#include "sched_dflow.h"
#include "sched_cflow.h"

#include "sched_rgn_info.h"


SCHED_DFLOW_MGR :: SCHED_DFLOW_MGR (void) {
}

SCHED_DFLOW_MGR :: ~SCHED_DFLOW_MGR (void) {} 

    
    /* =======================================================
     *
     * ::Are_Defs_Live_Out
     * 
     * Ref the header file for more details
     * 
     * =======================================================
     */
BOOL
SCHED_DFLOW_MGR::Are_Defs_Live_Out  (OP * op, BB * bb) {

    for (INT i = 0; i < OP_results(op); ++i) {

        TN *result_tn = OP_result(op,i);
        if (GTN_SET_Intersection_MemberP(BB_live_out(bb), 
            BB_defreach_out(bb), result_tn)) {
            return TRUE;
        }

        if (TN_is_dedicated (result_tn) &&
            REG_LIVE_Implicit_Use_Outof_BB (TN_register_class(result_tn), 
					   TN_register(result_tn), bb)) {
            return TRUE ;
        }
    }

    return FALSE;
}

    /* ============================================================
     *
     *  ::Are_Defs_Live_In 
     *
     *  Check to see whether one of the results that <op> defines 
     *  live at the entry point of <bb>
     *
     * ============================================================
     */
BOOL
SCHED_DFLOW_MGR::Are_Defs_Live_In (OP * op, BB * bb) {

    for (INT i = OP_results (op) - 1; i >= 0 ; i --) {
        if (GRA_LIVE_TN_Live_Into_BB (OP_result(op, i), bb)) {
            return TRUE; 
        }
    }

    return FALSE ;
}



    /* =======================================================
     *
     * SCHED_DFLOW_MGR::Are_Defs_Live_Out
     *
     * Ref the header file for more details
     * 
     * =======================================================
     */
BOOL
SCHED_DFLOW_MGR::Are_Defs_Live_Out  (OP * op, BB_VECTOR *bbv) {

    for (BB_VECTOR_ITER iter = bbv->begin () ; 
        iter != bbv->end () ; iter++) {

        if (Are_Defs_Live_Out (op, *iter)) {
            return TRUE ;
        }
    }
    
    return FALSE;
}

    /* =======================================================
     *
     * SCHED_DFLOW_MGR::Are_Defs_Live_In
     *
     * add the resultes of <op> live into <bb>'s entry
     * 
     * =======================================================
     */
void
SCHED_DFLOW_MGR::Add_Defs_Live_In (OP * op, BB * bb) {

    for (INT i = OP_results(op) - 1 ; i >= 0 ; --i) {

        TN *result_tn = OP_result(op,i);

        Set_TN_is_global_reg (result_tn) ;
        GTN_UNIVERSE_Add_TN (result_tn) ;

        GRA_LIVE_Add_Defreach_In_GTN (bb,result_tn);
        GRA_LIVE_Add_Live_In_GTN (bb,result_tn);
    }
}

    /* =======================================================
     *
     * SCHED_DFLOW_MGR::Are_Defs_Live_In
     *
     * add the resultes of <op> live into <rgn>
     * 
     * =======================================================
     */
void
SCHED_DFLOW_MGR::Add_Defs_Live_In (OP * op, REGION *rgn) {
   
    NODE_VECTOR entries = rgn->Entries () ;

    for (NODE_VECTOR_ITER iter = entries.begin () ; 
         iter != entries.end () ; 
         iter ++) {
        
        REGIONAL_CFG_NODE * n = *iter ;
        if (n->Is_Region ()) {
            Add_Defs_Live_In (op, n->Region_Node());
        } else {
            Add_Defs_Live_In (op, n->BB_Node());
        }
    }
}

    /* =======================================================
     *
     * SCHED_DFLOW_MGR::Add_Defs_Live_Out 
     *
     * Ref the header file for more details
     * 
     * =======================================================
     */
void
SCHED_DFLOW_MGR::Add_Defs_Live_Out (OP * op, BB * bb) {

    for (INT i = OP_results(op) - 1 ; i >= 0 ; --i) {

        TN *result_tn = OP_result(op,i);

        Set_TN_is_global_reg(result_tn) ;
        GTN_UNIVERSE_Add_TN (result_tn) ;
        GRA_LIVE_Add_Defreach_Out_GTN (bb,result_tn);
        GRA_LIVE_Add_Live_Out_GTN (bb,result_tn);
    }
}

    /* =======================================================
     *
     * SCHED_DFLOW_MGR::Add_Defs_Live_Out 
     *
     * Ref the header file for more details
     * 
     * =======================================================
     */
void
SCHED_DFLOW_MGR::Add_Defs_Live_Out (OP * op, REGION *rgn) {

    NODE_VECTOR exits = rgn->Exits () ;

    for (NODE_VECTOR_ITER iter = exits.begin () ; 
         iter != exits.end () ; 
         iter ++) {
        
        REGIONAL_CFG_NODE * n = *iter ;
        if (n->Is_Region ()) {
            Add_Defs_Live_Out (op, n->Region_Node()); 
        } else {
            Add_Defs_Live_Out (op, n->BB_Node ());
        }
    }
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Upward_Code_Motion_Kill_Some_LiveOut_Defs
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
BOOL
SCHED_DFLOW_MGR::Upward_Code_Motion_Kill_Some_LiveOut_Defs 
    (OP* op, BB * from, BB * to, 
     const BB_VECTOR * cutting_set) {

    if (from == to) return FALSE;

    for (BB_VECTOR_CONST_ITER iter = cutting_set->begin () ;
         iter != cutting_set->end () ; iter ++) {
    
        BB * cs_bb = *iter ;

        if (BB1_Postdominate_BB2 (from,cs_bb)) {
            continue ;
        } else if (!Are_Defs_Live_Out (op, cs_bb)) {
            continue ; 
        } else {

           BBLIST * succ_lst ;
           FOR_ALL_BB_SUCCS (cs_bb, succ_lst) {

                BB * succ = BBLIST_item(succ_lst);

                if (succ == from) continue ;

                if (Are_Defs_Live_In (op,succ) &&
                    !BB1_Postdominate_BB2 (from, succ)) {
                    return TRUE;
                }

           } /* end of FOR_ALL...(...,succ) */
        }
    } /* end of for (BB_VECTOR...begin() ; */

    return FALSE;
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Downard_Code_Motion_Kill_Some_LiveIn_Defs 
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
BOOL
SCHED_DFLOW_MGR::Downard_Code_Motion_Kill_Some_LiveIn_Defs 
            (OP* op, BB * from, BB * to, 
             const BB_VECTOR * cutting_set) {

    FmtAssert (FALSE,
        ("Downard_Code_Motion_Kill_Some_LiveIn_Defs has not implemented"));

    return FALSE; /* make gcc happy */
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Update_Liveness_After_Upward_Code_Motion
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
void
SCHED_DFLOW_MGR::Update_Liveness_After_Upward_Code_Motion
            (OP *op, SRC_BB_INFO * src_info) {
      
    if (src_info->targ == src_info->src) return ;
    
    for (BB_VECTOR_ITER iter = src_info->siss.begin () ;
         iter != src_info->siss.end () ; iter ++) {
        Add_Defs_Live_Out (op, *iter); 
    }
       
    Add_Defs_Live_In (op, src_info->src) ;
         
    for (BB_VECTOR_ITER iter = src_info->across_bbs.begin ();
         iter != src_info->across_bbs.end () ; iter ++) {
        Add_Defs_Live_In  (op, *iter) ;
        Add_Defs_Live_Out (op, *iter);
    }

    for (REGION_VECTOR_ITER 
         rgn_iter =  src_info->across_nested_rgns.begin ();
         rgn_iter != src_info->across_nested_rgns.end () ; 
         rgn_iter++) {

        Add_Defs_Live_In  (op, *rgn_iter);
        Add_Defs_Live_Out (op, *rgn_iter);

    }
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Update_Liveness_After_Downward_Code_Motion 
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
void
SCHED_DFLOW_MGR::Update_Liveness_After_Downward_Code_Motion 
            (OP *op, SRC_BB_INFO * src_info) {
    /* has yet not implemented 
     */
    FmtAssert (FALSE, ("Update_Liveness_After_Downward_Code_Motion "
                       "has not been implemented"));
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Upward_Code_Motion_Violate_Dflow_Constrait
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
BOOL
SCHED_DFLOW_MGR::Upward_Code_Motion_Violate_Dflow_Constrait
            (OP * op, BB * from, BB * to, 
             const BB_VECTOR * cutting_set,
             const REGION_VECTOR *nested_rgns,
             RGN_CFLOW_MGR * cflow_info) {

    if (Upward_Code_Motion_Kill_Some_LiveOut_Defs 
            (op, from, to, cutting_set)) {
        return TRUE ;
    }

    for (RGN_VECTOR_CONST_ITER iter = nested_rgns->begin () ;
         iter != nested_rgns->end () ; iter++) {

        RGN_SUMMARY * sum = Get_Region_Summary (*iter) ;
        Is_True (sum, ("REGION(%d)'s summary is not available!"));

        if (!sum->Is_It_Legal_To_Hoist_OP_Across_Rgn 
                (op, from,to, cutting_set, *iter, cflow_info)) {
            return TRUE;
        }
    }

    return FALSE ;
}

    /* ============================================================
     *
     * SCHED_DFLOW_MGR::Downward_Code_Motion_Violate_Dflow_Constrait
     *
     * Ref the header file for more details
     * 
     * ============================================================
     */
BOOL
SCHED_DFLOW_MGR::Downward_Code_Motion_Violate_Dflow_Constrait 
            (OP * op, const BB_VECTOR * cutting_set,
             const REGION_VECTOR *nested_rgns) {

    FmtAssert (FALSE,("Downward_Code_Motion_Violate_Dflow_Constrait "
                      "has not been implemented"));
    return FALSE;
}

