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

/* ======================================================================
 * ======================================================================
 *
 *
 * Module: scheduler.cxx
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/scheduler.cxx,v $
 *
 * Description:
 * ===========
 *
 * Implementation of Ipfec instruction scheduler.
 * See scheduler.h for the description.
 *
 *
 * ======================================================================
 * ======================================================================
 */

#include "hb_hazards.h"
#include "timing.h"
#include "cg_dep_graph.h"
#include "tracing.h"
#include "errors.h"
#include "be_util.h"
#include "cg.h"
#include "cgtarget.h"
#include "targ_isa_enums.h"
#include "ipfec_options.h"
#include "region_bb_util.h"

#include "scheduler.h"
#include "cggrp_microsched.h"
#include "speculation.h"

#include "sched_util.h"
#include "sched_cflow.h"
#include "sched_dflow.h"
#include "sched_cand.h"
#include "sched_rgn_info.h"

//for prdb_util
#include "prdb_util.h"

/* memory management */
#include "cxx_memory.h"

/* dep DAG & liveness */
#include "cg_dep_graph.h"
#include "dag.h"
#include "reg_live.h"
#include "gra_live.h"

/* calc dominator and postdominator */
#include "dominate.h"

/* DaVinci */
#include "vt_region.h"
#include "vt_dag.h"


#include <stdarg.h>       /* for va_start va_list and vnsprintf */
#include <tlog.h>
#include "whirl2ops.h"    /* for Copy_WN_For_Memory_OP */

static char* _Global_Insn_Sched_Phase_Name = "ORC:Global code motion"  ;
static char* _Local_Insn_Sched_Phase_Name = "ORC:Local code motion" ;
static char* _Cur_Phase_Name = NULL ;

#define GET_CAND_LIST(x) (!(x)->Is_P_ready () ? &_m_ready_cand : \
                              &_p_ready_cand)

/* ====================================================================
 *
 *  Rebuild_Cntl_Arcs_From_Scratch:
 * 
 *  We are constantly move OPs across branch, hence make cntl arcs 
 *  leading to OPs in question upside down, these arcs should be 
 *  pruned. 
 *
 *  on the other hand, when OPs is moved across a branch, We should
 *  create cntl-arcs between OP and the branchs which is moved across
 *  by op.
 * 
 *  this routine is used to make the cntl-arcs leading from and to 
 *  <op>, which is moved across some branch, up-to-date and accurate.
 *
 * ===================================================================
 */
void
SCHEDULER::Rebuild_Cntl_Arcs_From_Scratch (OP* op) {

    /* 1. prune all control arcs */
    for (ARC_LIST* arcs = OP_preds(op); arcs != NULL;) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *pred = ARC_pred(arc);

        if (ARC_is_br(arc)                                           || 
            pred->bb != _target_bb && 
            _cflow_mgr.BB1_Reachable_From_BB2 (pred->bb, _target_bb) ||
            !_cflow_mgr.BB1_Reachable_From_BB2 (_target_bb,pred->bb)) 
        {
            arcs = ARC_LIST_rest(arcs);
            CG_DEP_Detach_Arc(arc);
            continue;
        }

        arcs = ARC_LIST_rest(arcs);
    }

    for (ARC_LIST* arcs = OP_succs(op); arcs != NULL;) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *succ = ARC_succ(arc);
        if (ARC_is_br(arc)) {
            arcs = ARC_LIST_rest(arcs);
            CG_DEP_Detach_Arc(arc);
            continue;
        }

        arcs = ARC_LIST_rest(arcs);
    }

    /* 2. create control arcs from scratch 
     */
    _dag_constructor.Build_Branch_Arcs(op, INCLUDE_CONTROL_ARCS);
}


/* ================================================================
 *
 *  Cycle_Advance 
 *
 * 1. inform micro-scheduler that current cycle cannot bundle any 
 *    candidates available, to that micro-scheduler reset its 
 *    internal status and prepare for the next cycle.
 *
 * 2. update candidate list, set all candidates, which are tried to 
 *    be issued in current cycle but fail, to be "untired"
 * 
 * 3. Let some new candidates under the control of candidate list.
 *    (these new candidates depend upon OPs that are issued in 
 *     current cycle, and the latency between them is non-ZERO)
 * 
 * 4. adjust schedule status accordingly.
 *
 * ===============================================================
 */
void
SCHEDULER::Cycle_Advance () {

    /* make sure all candidates avaiable is untried, so that they
     * have a change to be issued in next cycle.
     */
    _m_ready_cand.Clear_All_Cands_Tried_Mark ();
    _p_ready_cand.Clear_All_Cands_Tried_Mark ();

    /* let some candidates under the contol of candidate-list
     */
    Update_Cand_Lst_After_Cycle_Advancing ();
    _heur_mgr.Adjust_Heur_After_Sched_One_Cyc 
                (_ops_in_cur_cyc,_cur_cyc);

    /* inform micro-scheduler to change its internal status
     */
    CGGRP_Cycle_Advance();

    if (SCHED_TF_SUMMARY_DUMP) {
        fprintf(TFile, "\n    Cycle: %d\n", _cur_cyc);
    }

    /* reset schedule status 
     */
    _ops_in_cur_cyc.clear ();

    /* next cycle start at least _cur_cyc + 1 
     */
    ++_cur_cyc ; 
}


          /*=============================================
           *
           *    Candidates stuff 
           *
           * ============================================
           */
BOOL
SCHEDULER::Try_Add_OP_to_Candidate_List (OP* op) {

    if (OP_Scheduled(op)) return FALSE;

    if (_prepass&& 
        (OP_glue(op) || OP_chk(op) || OP_no_move_before_gra(op) || 
         OP_access_reg_bank (op)) && 
         OP_bb(op) != _target_bb) {

        return FALSE;
    }

    if (OP_bb (op) != _target_bb && 
        OP_Cannot_Be_Moved_Outof_HomeBB (op)) {
        return FALSE ;
    }

    if (_m_ready_cand.OP_Is_In_Cand_List (op) || 
        _p_ready_cand.OP_Is_In_Cand_List (op)) {
        
        return FALSE ;
    }

    UNRESOLVED_DEP_LIST * unresolved_dep_lst = NULL;

    SPEC_TYPE spec_type = SPEC_NONE; 
    BB *      home_bb   = OP_bb (op);

    for (ARC_LIST* arcs = OP_preds(op);
        arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

        ARC * arc   = ARC_LIST_first(arcs) ;
        OP  * pred  = ARC_pred(arc) ;

        if (OP_Scheduled(pred)) continue ;

        /* <transpose> indicate whether <op> will transpose with 
         * <pred> if we sched <op>
         */
        BOOL transpose = FALSE ;

        SRC_BB_INFO * src_bb_info = _src_bb_mgr.Get_Src_Info (home_bb);
        BB_POS pos = BB_Pos_Analysis(OP_bb(pred), &src_bb_info->siss,
                                     &_cflow_mgr) ;
        switch (pos) {
        case ABOVE_SISS:
            continue ;

        case IN_SISS:

            transpose = (OP_bb(pred) == _target_bb || OP_xfer(pred));
            break ;

        case BELOW_SISS:
            transpose = TRUE ; break ;

        default :
            Is_True (FALSE, ("fail to analysis src position for BB:%d!",
                              BB_id(OP_bb(pred))));
        }

        if (!transpose) {
            /* the sequence (<op> and <pred>) remain unchanged 
             */
            continue; 
        }


        /* step1 : examine whether the unfulfilled deps can be violated
         */
        SPEC_TYPE spec_tmp = 
            Dirive_Upward_Code_Motion_Spec_Type_From_Arc (arc);

        switch (spec_tmp) {
        case SPEC_NONE :
        case SPEC_DATA :
        case SPEC_CNTL :
        case SPEC_DISABLED :
            break ;
        default:
            FmtAssert (FALSE,("Unknow spec_type %d\n", spec_tmp));
        }

        if (spec_tmp == SPEC_DISABLED) {
            Free_Unresolved_Dep_Lst (unresolved_dep_lst);
            return FALSE; 
        }

        /* keep track of each violated dependece 
         */
        UNRESOLVED_DEP * t = New_Unresolved_Dep ();

        t->Set_Arc (arc); 
        t->Set_Spec_Type (spec_tmp);
        unresolved_dep_lst = Prepend_to_Unresolved_Dep_List 
                               (unresolved_dep_lst,t);

        spec_type = SPEC_TYPE(spec_type|spec_tmp);

    } /* end of for (ARC_LIST* arcs = ... ) */ 


    /* futher check wether we can speculate this candidate: 
     * the purposes are twofold:
     * 
     *      o.  debugging purpose
     *      o.  satify data flow constraint. 
     */

    BOOL qualified = TRUE ;

    SRC_BB_INFO * bb_info = _src_bb_mgr.Get_Src_Info (home_bb);
    const BB_VECTOR * cutting_set = &bb_info->siss ;
    const BB_VECTOR * between_cs_and_src = &bb_info->across_bbs;

    if (!(spec_type & SPEC_CNTL) & _global) {
        for (BB_VECTOR_CONST_ITER iter = cutting_set->begin () ;
            iter != cutting_set->end () ; iter ++) {
        
            BB * b = *iter ;
            if (b != home_bb &&
                !BB1_Postdominate_BB2 (home_bb, b)) {
                    spec_type = SPEC_TYPE(spec_type | SPEC_CNTL);
            }
        }
    }     

    if (spec_type != SPEC_NONE) {

        if ((spec_type & SPEC_DATA) && OP_ANNOT_Cannot_Data_Spec (op) ||
            (spec_type & SPEC_CNTL) && OP_ANNOT_Cannot_Cntl_Spec (op)) {
            qualified = FALSE ;
        }

        UNRESOLVED_DEP * dep;
        FOR_ALL_UNRESOLVED_DEPs(unresolved_dep_lst , dep) {

            SPEC_TYPE spec_tmp = dep->Spec_Type ();

            /* check whether candidate can be cntl-speculated
             */
            ARC * arc = dep->Arc ();

            if ((OP_call(ARC_pred(arc)) && !IPFEC_Glos_Motion_Across_Calls)) {
                qualified = FALSE ; break ;
            }  

        } /* end of FOR_ALL...DEPS*/

    }
    
    mBOOL across_nested_rgns = 
        (bb_info->across_nested_rgns.size () != 0);

        /* check to see whether speculation violate data flow 
         * constraint.
         */
    if (qualified && 
        (spec_type != SPEC_NONE || across_nested_rgns)) {
                       
        if (_dflow_mgr.Upward_Code_Motion_Violate_Dflow_Constrait
                           (op, OP_bb(op),  /* from */
                            _target_bb,     /* to */
                            (const BB_VECTOR*)(void*)cutting_set,
                            &bb_info->across_nested_rgns,
                            &_cflow_mgr)) {

            qualified = FALSE ; 
        }
    }

        /* check whether this code motion betrate our cost-model principal. 
         */
    if (qualified                   && 
        (spec_type != SPEC_NONE)    && 
        !_heur_mgr.Spec_Code_Motion_Is_Profitable 
                    (op, OP_bb(op), 
                     _target_bb, 
                     unresolved_dep_lst,
                     cutting_set,
                     between_cs_and_src,
                     &bb_info->across_nested_rgns)) {

        qualified = FALSE ;
    }

    if (qualified                   && 
        (spec_type == SPEC_NONE)    &&
        !_heur_mgr.Upward_Useful_Code_Motion_Is_Profitable 
                        (op, OP_bb(op),
                         cutting_set,
                         between_cs_and_src,
                         &bb_info->across_nested_rgns)) {
        qualified = FALSE ;
    }

    if (!qualified) {
        Free_Unresolved_Dep_Lst (unresolved_dep_lst);
        return FALSE ;
    }

    CANDIDATE * cand = _m_ready_cand.Create_Empty_Cand () ;

    cand->Setup (op, spec_type, FALSE,unresolved_dep_lst);
    _m_ready_cand.Add_Candidate (cand);

    return TRUE;
}


    /* ==========================================================
     *
     *  Find_All_Candidates 
     *
     *  ref the header file for details
     *
     * ==========================================================
     */
void
SCHEDULER::Find_All_Candidates (void) {

    _m_ready_cand.Erase_All_Cand ();
    _p_ready_cand.Erase_All_Cand ();

    if (_global) {
        Determine_P_Ready_is_Profitable_or_not () ;
    } else {
        Disable_P_Pready_Cand () ;
    }

    const BB_VECTOR * src_bbs = _src_bb_mgr.Src_BBs () ;

    for (BB_VECTOR_CONST_ITER iter = src_bbs->begin(); 
        iter != src_bbs->end(); iter++) {

        OP* op;
        FOR_ALL_BB_OPs(*iter, op) {
            Try_Add_OP_to_Candidate_List (op);
        }
    }
  
    /* Candidate list should not be empty here.
     */
    Is_True (!(_m_ready_cand.Cand_Lst_Is_Empty () && 
              BB_length(_target_bb)),

             ("fail to find any candidate!"));

}



/* =================================================================
 *
 *  Update_Cand_Lst_During_Sched_Cyc 
 *
 *
 *  After commiting <cand>, the dependences are resoved, hence 
 *  some non-candidates are now become P-ready or M-ready candidates.
 *  
 *  We add _SOME_ of these new candidate into candidate list. the 
 *  newly added candidates are dep upon <cand> with _ZERO_ latency 
 *  before <cand> is committed. 
 * 
 *  the rest new candidates are added to candidates after cycle
 *  advancing by calling <Update_Cand_Lst_After_Cycle_Advance>.
 *  
 * ================================================================
 */
void
SCHEDULER::Update_Cand_Lst_During_Sched_Cyc (CANDIDATE& cand) {

    OP* op = cand.Op ();
    OP* succ;

    for (ARC_LIST* arcs = OP_succs(op); 
        arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *succ = ARC_succ(arc);

        if (!_src_bb_mgr.Is_Src_BB (OP_bb(succ))) {

            /* the successor does not reside in any source BBs, 
             * hence, they cannot be an candidate
             */

            continue;
        }

        INT32 latency = ARC_latency(arc) ;

        if (latency > 0) {
            /* obviously, the successor should not be bundled into 
             * current instruction group, otherwise, we would got
             * a splitted issue.
             * 
             * these candidates are added into candidate list after
             * cycle is advanced.
             */
            continue ;
        } else if (latency < 0) {

            /* some component once have produced negative dep letency
             */
            FmtAssert (FALSE,
                ("Latency of dep between OP[%d](BB:%d) and OP[%d](BB:%d)"
                 " should not be a negative %d\n", 
                 OP_map_idx(op),   BB_id(OP_bb(op)), 
                 OP_map_idx(succ), BB_id(OP_bb(succ)),
                 latency)) ;

        }

        /* for the case of ZERO latency, _IF_ the non-candidate-
         * successor become an candidate, add them into 
         * now becomes a candidates, we add them into candidate
         * list.
         */

        BOOL added = Try_Add_OP_to_Candidate_List (succ);
        if (added && SCHED_TF_SUMMARY_DUMP) {
            fprintf (TFile, "%d ", OP_map_idx(succ));
        }
    }
  
    _heur_mgr.Adjust_Heur_After_Cand_Sched (op, _cur_cyc);
    if (SCHED_TF_SUMMARY_DUMP) { fprintf(TFile, "\n"); }
  
    /* <cand> has currently scheduled, remove it from candidate list
     */
    if (!cand.Is_P_ready ()) {
        _m_ready_cand.Erase_Cand (&cand) ;
    } else {
        _p_ready_cand.Erase_Cand (&cand);
    }
}
      
    /* ================================================================
     *
     *  Update_Cand_Lst_After_Cycle_Advancing 
     * 
     *  Add all M-ready and P-ready(that are not in any canidate list)
     *  into M-ready candidate list or P-ready candidate list seperately.
     * 
     * ================================================================
     */
void
SCHEDULER::Update_Cand_Lst_After_Cycle_Advancing (void) {

    for (OP_Vector_Iter iter = _ops_in_cur_cyc.begin () ;
         iter != _ops_in_cur_cyc.end () ; iter ++) {

        OP * op = *iter ;

        for (ARC_LIST* arcs = OP_succs(op);
            arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

            ARC *arc = ARC_LIST_first(arcs);
            OP *succ = ARC_succ(arc);

            INT32 latency = ARC_latency(arc) ;

            if (!latency) continue ;
            if (!_src_bb_mgr.Is_Src_BB (OP_bb(succ))) continue;
  
            INT32 adj = 0 ;
            if (IPFEC_Adjust_Variable_Latency) {

                /* IPFEC_Adjust_Variable_Latency are used to 
                 * investigate how the variable-latency affect
                 * the performance. 
                 *
                 * By default, it is turned on. Option (at 
                 * command line) "-Wb,-IPFEC:adjust_variable_latency=off
                 * can turn this flag off. 
                 */

                adj = CGTARG_adjust_latency (
                                op, CGGRP_OP_Issue_Port (op),
                                succ,ip_invalid, ARC_kind(arc),
                                latency);
            }

            if (adj) {
                arc->latency = (latency += adj) ; 
            }
                                              
            BOOL added = Try_Add_OP_to_Candidate_List(succ);
            if (SCHED_TF_SUMMARY_DUMP && added) {
                fprintf(TFile, "%d ", OP_map_idx(succ));
            }
        }
  
        if (SCHED_TF_SUMMARY_DUMP) { fprintf(TFile, "\n"); }
    }
}


void
SCHEDULER::Determine_P_Ready_is_Profitable_or_not (void) {
    
    if (!_global) {
      _highly_biased_branch_succ = NULL ;
      return ;
    }

    BBLIST * succ ; 
    INT8  branch_num = 0 ;
    float prob = -1.0f ;

    _highly_biased_branch_succ = NULL ;
    
    FOR_ALL_BB_SUCCS(_target_bb,succ) {
      if (!BB_MAP_Get(bb_node_map, BBLIST_item(succ))) continue ;
      ++ branch_num ;
      if (succ->prob > prob) { 
        prob = succ->prob ; 
        _highly_biased_branch_succ = succ->item ;
      }
    }

    if (branch_num <= 1 || prob < LOWEST_PROB_FOR_HIGHLY_BIASED_BR) {
       _highly_biased_branch_succ = NULL ;
    }

    /* P_ready is not implemented in this version 
     */
     _highly_biased_branch_succ = NULL ;
}


inline BOOL
SCHEDULER::OP_Cannot_Be_Moved_Outof_HomeBB (OP* op) {
     
    return OP_ANNOT_OP_Def_Actual_Para (op) ||
           OP_xfer (op)                     ||
           OP_chk  (op) ;
}


SPEC_TYPE
SCHEDULER::Get_OP_Prohibited_Spec_Type (OP *op) {

    /* 1. techanical weakness make us cannot speculate some kinds 
     *     of OPs 
     */
    if (OP_Is_Float_Mem(op) || OP_ANNOT_OP_Def_Actual_Para (op)) {
        return SPEC_COMB ;
    }


    /* 2. algorithm required or architecture constraint 
     */
    if (!_prepass) { return SPEC_COMB ; }

    TOP opcode = OP_code(op);

    if (OP_xfer(op)         || OP_like_store(op)    ||
        TOP_is_ftrap(opcode)|| TOP_is_itrap(opcode) ||
        TOP_is_fdiv(opcode) || OP_idiv (op)         ||
        OP_sqrt (op)) {

        /* there are actually no data-spec 
         */
        return SPEC_CNTL ;
    }

    if (OP_volatile(op)) { return SPEC_COMB ; }


    /* We could not speculate post-inc load. 
     * TODO:  exclude those load which is safe to be speculated 
     *        without any transformation from this category.
     */
     if (OP_load (op)) {

        for (INT i = OP_results(op) - 1 ; i >= 0 ; --i) {

            TN * result_tn = OP_result (op,i) ;
            for (INT j = OP_opnds(op) - 1 ; j >= 0 ; --j) {

                if (result_tn == OP_opnd(op,j)) {
                    return SPEC_COMB ;
                }
            }
        }
    }

    /* 3. for the sake of debugging purpose 
     */
    SPEC_TYPE spec_type = IPFEC_Enable_Speculation ? SPEC_NONE : SPEC_COMB ;

    if (!IPFEC_Enable_Data_Speculation) {
        spec_type = SPEC_TYPE(spec_type | SPEC_DATA);
    }

    if (!IPFEC_Enable_Cntl_Speculation) {
        spec_type = SPEC_TYPE(spec_type | SPEC_CNTL);
    }


    if (spec_type != SPEC_COMB && (
        IPFEC_Query_Skiplist (spec_skip_bb, (INT32)BB_id(OP_bb(op)),
                (INT32)Current_PU_Count()) ||
        IPFEC_Query_Skiplist (spec_skip_op, (INT32)OP_map_idx(op), 
                (INT32)BB_id(OP_bb(op))))) { 
        spec_type = SPEC_COMB ;
    }

    return spec_type ;
}

    /* ====================================================================
     * 
     *  Append_Dup_Op_2_BB 
     *
     *  append <op> to <bb> if <bb> has no control-transfer OP, otherwise, 
     *  insert <op> right before cntl-xfer-op
     * 
     *  maintain some corresponding data structure properly.
     * 
     *  this routine is called when we generate compensation code
     * 
     * ====================================================================
     */
void
SCHEDULER::Identify_Cannot_Spec_OPs (BB *bb) {

    OP * op;
    FOR_ALL_BB_OPs(bb, op) {

        SPEC_TYPE spec_type = Get_OP_Prohibited_Spec_Type (op);
    
        if (spec_type == SPEC_NONE) continue ;

        if (spec_type & SPEC_CNTL) {
            OP_ANNOT_Set_Cannot_Cntl_Spec (op) ;
        }

        if (spec_type & SPEC_DATA) {
            OP_ANNOT_Set_Cannot_Data_Spec (op) ;
        }
    }
}

/* ====================================================================
 *
 *  Identify_Cannot_Spec_OPs
 * 
 *  identify all ops (of region <rgn_ptr>) that cannot be speculated
 * 
 * ====================================================================
 */

void
SCHEDULER::Identify_Cannot_Spec_OPs (REGION *rgn) {

    for (TOPOLOGICAL_REGIONAL_CFG_ITER 
        iter (rgn->Regional_Cfg()) ; iter != 0 ; ++ iter) {

        if ((*iter)->Is_Region()) continue ; 
        Identify_Cannot_Spec_OPs ((*iter)->BB_Node()); 
    }
}


void
SCHEDULER::Init_Sched_Status (BB * bb) {
    
    _cur_cyc = (CYCLE)0 ;

    _ops_in_cur_cyc.clear ();
    _frontier_op = BB_length(bb) ? BB_first_op (bb) : NULL;
}

    /* ==========================================================
     * ==========================================================
     *
     *       Commiting scheduling 
     *
     * ==========================================================
     * =========================================================
     */

/* ==========================================================
 *
 *  Insert_Check 
 *
 *  Insert chk-op at <pos> of <home_bb> for speculative 
 *  load <ld> which resides <home_bb> before it being 
 *  moved. At the same time, maintain dependence 
 *  etc if necessary.
 *  
 *  Not all candidates are leagal to be move across a given
 *  check, however, these candidates may have already been
 *  added into candidate list. We evict these candidates from
 *  cand-list.
 *
 * ==========================================================
 */
OP *
SCHEDULER::Insert_Check (OP * ld, BB * home_bb, OP* pos) {

    Is_True (OP_load(ld), ("OP is not load!")) ;
    Is_True (!OP_Is_Float_Mem(ld), 
             ("floating-point load shouldn't be spec now"));

    vector<OP*> dup_ops;
    OP *chk_op = ::Insert_CHK (ld, dup_ops, home_bb, pos, 
                               OP_opnd(ld, OP_PREDICATE_OPND));
      
    /* Some candidates annot be move across a given check-op 
     * (those OPs are termed "baneful"-OP by speculation 
     * package author), drive them out of candidate list.
     */
    for (ARC_LIST * arcs = OP_succs(chk_op) ;
         arcs != NULL ; arcs = ARC_LIST_rest (arcs)) {

        ARC * arc = ARC_LIST_first (arcs) ;
        OP  * succ = ARC_succ (arc);

        CAND_LIST       * cand_list = NULL ;
        CANDIDATE       * cand = NULL;

        if (cand = _m_ready_cand.Get_Candidate (succ)) {
            cand_list = &_m_ready_cand ;
        } else if (cand = _p_ready_cand.Get_Candidate (succ)) {
            cand_list = &_p_ready_cand ;
        }

        if (!cand) {
            continue ; /* <succ> is not candidate */
        }

        /* examining whether <succ> is "baneful" from <chk_op>'s
         * point of view
         */
        if (!ARC_is_dotted (arc) || OP_baneful(succ)) {

            /* the 1st logical ORed condition is redundant since 
             * <OP_baneful> itself consider ARC_succ(<arc>) is 
             * "baneful" to <chk_op>, but <OP_baneful> is very
             * expensive. We put the "ARC_is_dotted" condition
             * ahead to identify some "baneful" OP quickly.
             */ 
            cand_list->Erase_Cand (cand);

        } else {

            if (OP_ANNOT_Cannot_Cntl_Spec (cand->Op())) {
                cand_list->Erase_Cand (cand);
            } else {
                cand->Add_Spec (SPEC_CNTL); 
            }
        }

        if (cand->Safe_Load ()) {
            cand_list->Erase_Cand (cand) ;
        }
    }

    /* maintain annotation 
     */
    SCHED_BB_ANNOT * bb_annot = sched_annot.Get_BB_Annot (home_bb);
    bb_annot->Init_New_OP_Annot (chk_op);

    /* maintain heuristic data 
     */
    _heur_mgr.Compute_Heur_Data_For_Inserted_OP (chk_op);

    /* and maintain other miscellaneous things
     */
    OP_ANNOT_Set_Cannot_Spec (chk_op);

    if (BB_call(OP_bb(chk_op))) {
        
        for (OP * op = chk_op ; op ; op = OP_next(op)) {
            if (OP_ANNOT_OP_Def_Actual_Para (op)) {
                new_arc_with_latency(CG_DEP_POSTCHK, chk_op, 
                    op, 0, 0, 0, FALSE);
            }
        }
    }

    return chk_op ;
}

/* =================================================================
 * 
 *  BB_Move_Op_Before 
 * 
 *  move <op> from <from_bb> to <to_bb> right before <point>, 
 *  maintain dependence, annotation if necessary.
 *
 *  if <point> is NIL, we append <op> to <to_bb>.
 *
 * ================================================================
 */
void
SCHEDULER::BB_Move_Op_Before (BB *to_bb, OP *point, BB *from_bb, OP *op) {
    
    /* before code motion, keep something:
     * (1) orignal annotation, and (2) dep info 
     */

    SCHED_BB_ANNOT * bb_annot ;
    SCHED_OP_ANNOT * op_annot ;
    void           * op_heur ;

    BB_OP_MAP  omap 
        = (BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info, OP_bb(op));
    _CG_DEP_OP_INFO *dep_info = 
        (_CG_DEP_OP_INFO *) BB_OP_MAP_Get(omap, op);

    bb_annot = sched_annot.Get_BB_Annot (from_bb); 
    op_annot = bb_annot->Detach_OP_Annot (op);
    op_heur  = _heur_mgr.Detach_OP_Heur_Info (op);

    if (point) {
        ::BB_Move_Op_Before (to_bb, _frontier_op, from_bb, op);
    } else {
        /* "move OP before _NOTHING_", so we append <op> to 
         * the end of <to_bb>
         */
        ::BB_Move_Op_To_End (to_bb, from_bb, op);
    }

    omap = (BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info, OP_bb(op));
    BB_OP_MAP_Set (omap, op, dep_info);

    bb_annot = sched_annot.Get_BB_Annot (to_bb);
    bb_annot->Attach_OP_Annot (op, op_annot) ; 
    _heur_mgr.Attach_OP_Heur_Info (op,op_heur);
}

OP * 
SCHEDULER::Gen_Compensation_Code 
    (CANDIDATE& model_cand, /* copy the model of this <mode> candidate*/
     BB * org_home_bb,      /* <model>'s orginal home block */
     BB * to,               /* where compensation code place */ 
     BOOL append,           /* append of prepend to block */
     BOOL maintain_in_coming_arcs) {

    Is_True (!BB_Is_Isolated_From_Sched (to),
              ("Cannot prepend or append compensation code to a"
               " 'isolated BB:%d", BB_id(to)));

    /* step 1 : duplication op which is look like <model>.
     *          copy model's attribute,etc 
     */
    OP* model = model_cand.Op ();
    OP* op    = Dup_OP (model) ;
    OP_srcpos (op) = OP_srcpos(model);
    
    /* step 4.a  preparation for maintaining annotation 
     */
    SCHED_BB_ANNOT * annot = sched_annot.Get_BB_Annot (to);

    /* step 2: place compensation code at proper place
     */
    BOOL insert_op = FALSE;
    if (append) {

        /* the last op of bb is branch , insert right before it 
         */
        OP *last_op = BB_last_op (to) ;
        if (last_op && TOP_is_xfer (OP_code(last_op))) {
            BB_Insert_Op_Before (to, last_op, op) ;
            insert_op = TRUE;
        } else {
            /* empty bb or the last op is not branch, append <op>
             * at the end of <bb>
             */
            BB_Append_Op (to, op) ;
        }
    } else {
        FmtAssert (FALSE, 
                   ("OP[%d] which is now in BB:%d is moved downward,"
                    "however downward code has yet implemented",
                    OP_map_idx(model),BB_id(to)));
    }

    /* step 3 :maintain the Whirl node 
     */
    if (OP_memory(op)) {
        Copy_WN_For_Memory_OP (op,model);
    }

    /* step 4.b : maintain the annotation 
     */
    SCHED_OP_ANNOT * op_annot = annot->Init_New_OP_Annot (op) ;
    SCHED_OP_ANNOT * model_annot = sched_annot.Get_OP_Annot (model) ;

    op_annot->_ext_flags = model_annot->_ext_flags & 
                            (OP_EXT_MASK_NO_CNTL_SPEC | 
                             OP_EXT_MASK_NO_DATA_SPEC |
                             OP_EXT_MASK_ACTUAL) ; 

    op_annot->_op = op ;
    op_annot->_org_home_bb = org_home_bb ;


    /* step 5: maintain dependence info
     */
    BB_OP_MAP_Set ((BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info,OP_bb(op)), 
                    op, new_op_info ()) ;
  
    ARC_LIST * list ;
    if (maintain_in_coming_arcs) {
        for (list = OP_preds(model); list ; list = ARC_LIST_rest(list)) {

            ARC* tmp = ARC_LIST_first(list);

            if (!tmp || ARC_is_br(tmp)) continue ;

            BOOL dup = FALSE;
            if (OP_bb(ARC_pred(tmp)) == to) {
                Is_True (append, ("cyclic arc!")); 
                dup = TRUE; 
            }

            dup |= _cflow_mgr.BB1_Reachable_From_BB2 (to,OP_bb(ARC_pred(tmp)));
            if (dup) {
                new_arc (ARC_kind(tmp), ARC_pred(tmp), op, ARC_omega(tmp),
                     ARC_opnd(tmp), ARC_is_definite(tmp));
            }
        }
    } 

    for (list = OP_succs(model) ; list ; list = ARC_LIST_rest(list)) {

        ARC * tmp = ARC_LIST_first(list);

        if (!tmp || ARC_is_br(tmp)) continue ;
        new_arc (ARC_kind(tmp), op,ARC_succ(tmp),ARC_omega(tmp),
                 ARC_opnd(tmp), ARC_is_definite(tmp));
    }

    _dag_constructor.Build_Branch_Arcs(op, INCLUDE_CONTROL_ARCS);

    /* step 6 : maintain heuristic info. this should be performed 
     *          after the dependence info become valid up-to-date.
     */
    if (append) {
        if (insert_op) {
            _heur_mgr.Compute_Heur_Data_For_Inserted_OP (op);
        } else {
            _heur_mgr.Compute_Heur_Data_For_Appended_OP (op);
        }
    } else {
        FmtAssert (FALSE,("Downward code motion has yet implemented\n"));
    }

    /* step 7: other miscellaneous works.
     */
    SPEC_TYPE spec_type = model_cand.Spec_Type ();
    if (spec_type & SPEC_DATA) {
        Set_OP_data_spec  (op);
        Set_OP_orig_bb_id (op,BB_id(org_home_bb));
    }

    if (spec_type & SPEC_CNTL) {
        Set_OP_cntl_spec  (op);
        Set_OP_orig_bb_id (op,BB_id(org_home_bb));
    }

    return op ;
}

/* ====================================================================
 *
 *  Transform_Load_to_be_Spec 
 *
 *  Change load to be speculative form IF NECESSARY. return TRUE
 *  iff we should insert check where load initially resides.
 * 
 * ====================================================================
 */
BOOL
SCHEDULER::Transform_Load_to_be_Spec (CANDIDATE * cand, 
                                      INT32 cutting_set_size) {
    OP * op = cand->Op ();

    if (!OP_load(op)                    || 
        !cand->Is_Spec ()               || 
        CGTARG_Is_OP_Speculative(op)    ||
        CGTARG_Is_OP_Check_Load(op)     || 
        Ld_Need_Not_Transform (op)) {
    
        return FALSE ; /* Means : Ld (if it is) is not transformed, 
                        *         and hence need not inserting a check.
                        */ 
    }

    if ((cutting_set_size > 1 && IPFEC_Enable_Data_Speculation) || cand->Spec_Type () == SPEC_COMB) {
        Change_ld_Form(op, ECV_ldtype_sa);
    } else if (cand->Spec_Type () == SPEC_DATA) {
        Change_ld_Form(op, ECV_ldtype_a);
    } else { 
        if(Is_Control_Speculation_Gratuitous(op, _target_bb, _frontier_op)){
            return FALSE;
        }else{
            Change_ld_Form(op, ECV_ldtype_s);
        }
    } 

    return TRUE ;
}

    /* ===============================================================
     *
     *  Prune_Upside_Down_Postbr_Arcs 
     *
     *  ref the header file for details
     *
     * ==============================================================
     */
void
SCHEDULER::Prune_Upside_Down_Postbr_Arcs (OP * br) {

    for (ARC_LIST* arcs = OP_succs(br); arcs ;) {

        ARC *arc = ARC_LIST_first(arcs);
        arcs = ARC_LIST_rest(arcs);

        if (ARC_kind(arc) == CG_DEP_POSTBR &&
            OP_bb(ARC_succ(arc)) == OP_bb(br)) {
            CG_DEP_Detach_Arc(arc);
        }
    }
}

/* ====================================================================
 *
 *  Commit_Schedule 
 *
 *  Commit scheduling of <cand>
 * 
 * ====================================================================
 */
BOOL
SCHEDULER::Commit_Schedule (CANDIDATE& cand) {

    OP* op              = cand.Op ();
    BB* home_bb         = OP_bb(op);

    BOOL insert_chk = FALSE ;
    SRC_BB_INFO * src_info = _src_bb_mgr.Get_Src_Info (OP_bb(cand.Op()));

    if (op != _frontier_op) {

        OP* pos = OP_prev(op);
        BB_VECTOR * cutting_set = &src_info->siss;

        if (OP_load(op) && cand.Is_Spec ()) {
            cand.Get_Up_to_Date_Spec_Type ();
            insert_chk = Transform_Load_to_be_Spec 
                            (&cand, cutting_set->size());
        }

        BB_Move_Op_Before (_target_bb, _frontier_op, OP_bb(op), op) ;
        if (insert_chk) { Insert_Check (op, home_bb, pos); }

        for (BB_VECTOR_ITER iter = cutting_set->begin (); 
             iter != cutting_set->end () ; iter++) {

             BB * b = *iter ;
             if (b == _target_bb) continue ;
             Gen_Compensation_Code (cand, home_bb, b);
        }

        if (cand.Is_P_ready ()) {
            /* generate P-ready candidate compensation code */
        }

    } else {

        _frontier_op = OP_next(_frontier_op);

    }

    if (home_bb != _target_bb) {
        Rebuild_Cntl_Arcs_From_Scratch (op) ; 
    }

    /* update the liveness info 
     */
    if (home_bb != _target_bb) {
        _dflow_mgr.
            Update_Liveness_After_Upward_Code_Motion (op, src_info) ; 
    }

        /* set some flags */
    Set_OP_Scheduled (op);   /* mark inst has been scheduled */
    OP_scycle(op) = (mINT16)_cur_cyc ; /* the issue cycle */

        /* ASM file annotation support */ 
    SPEC_TYPE spec_type = cand.Spec_Type ();
    if (spec_type & SPEC_DATA) { Set_OP_data_spec(op); }
    if (spec_type & SPEC_CNTL) { Set_OP_cntl_spec(op); }
    if (spec_type & (SPEC_DATA | SPEC_CNTL)) { 
        Set_OP_orig_bb_id (op,BB_id(home_bb));
    }

    /* Those instructions just becoming ready should be 
     * added into the list of candidates.
     */
    Update_Cand_Lst_During_Sched_Cyc (cand);


    /* Inform Micro-Scheduler to update its internal state.
     */
    _ops_in_cur_cyc.push_back(op) ;
    BOOL retcode = CGGRP_Issue_OP(op, TRUE);
    Is_True (retcode, ("fail to issue op"));

    return OP_xfer (op);
}

    /* ===============================================================
     *
     *          preprocess before and postprocess after scheduling
     *
     * ==============================================================
     */
void
SCHEDULER::Verify (void) {

    OP* op;

    FOR_ALL_BB_OPs(_target_bb, op) {
        Is_True(OP_Scheduled(op),
                ("Not all ops scheduled: %d 0x%x\tin BB: %d",
                OP_map_idx(op), op, BB_id(OP_bb(op))));
    }

}

void
SCHEDULER::Identify_Actual_Argument_Defs (BB* bb) {

    if (!BB_call (bb)) return ;

    OP * call_op = BB_xfer_op(bb) ;
    Is_True (OP_call(call_op), ("OP is not a call!"));

    OP * op ;
    FOR_ALL_BB_OPs(bb, op) {
        OP_ANNOT_Set_OP_Def_Actual_Para (op);
    }  

    OP_ANNOT_Reset_OP_Def_Actual_Para (call_op);


    FOR_ALL_BB_OPs_REV (bb,op) {
        if (OP_store(op) || OP_prefetch(op)) {  
            OP_ANNOT_Reset_OP_Def_Actual_Para (op);
        }

        BOOL safe_move_across_bb = FALSE ;

        if (safe_move_across_bb) {
            OP_ANNOT_Reset_OP_Def_Actual_Para (op);
        }

        for (ARC_LIST * list = OP_preds(op); list ; 
             list = ARC_LIST_rest(list)) { 

            ARC * arc = ARC_LIST_first (list) ;
            if (ARC_kind(arc) == CG_DEP_REGIN && 
                OP_bb (ARC_pred(arc)) == bb) {

                OP_ANNOT_Reset_OP_Def_Actual_Para (ARC_pred(arc));
            }
        }
    }
  
    OP_ANNOT_Reset_OP_Def_Actual_Para (call_op);

    BOOL find_first_def = FALSE ;
    FOR_ALL_BB_OPs (bb,op) {
        if (OP_ANNOT_OP_Def_Actual_Para (op)) find_first_def = TRUE ; 
        if (OP_load (op) && find_first_def ) { 
            OP_ANNOT_Set_OP_Def_Actual_Para (op) ; 
        };
    }

    BOOL debug = FALSE ;
    if (debug) {
        FOR_ALL_BB_OPs(bb,op) {
            if (OP_ANNOT_OP_Def_Actual_Para(op)) {
                fprintf (stdout,"%d\n", OP_map_idx(op));
            }
        }
        fflush (stdout);
    }
}



BOOL
SCHEDULER::Sched_Rgn_Preproc (void) {


    if (_cflow_mgr.Critical_Edge_Present(_region)) { 

        /* currently our global code motion algirithm is not 
         * applicable to a REGION with critical edge presence.
         */
        return FALSE; 
    }

    if (!_cflow_mgr.BB_Node_Num()) { 

        /* this region contains only inner region (but no BB),
         * it is obviously nothing to be scheduled.
         */

        return FALSE; 
    }
        
    /* initialize BB,inner-REGION and OP's annotations
     */
    sched_annot.Init (_region);

    /* Build dep DAG. DAG construction is time-consuming, 
     * we keep and timer to acquire the time spent in 
     * this work.
     */
    Start_Timer (T_Ipfec_GLOS_MISC1_CU);
    _dag_constructor.Build_DAG();
    Stop_Timer (T_Ipfec_GLOS_MISC1_CU);
    if (SCHED_TF_DUMP_DAG) { Dump_DAG(); fprintf(TFile, "\n"); }

    _heur_mgr.Initialize (_region,&_cflow_mgr);

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter(_region->Regional_Cfg());
         iter != 0; ++iter) {

        if ((*iter)->Is_Region()) continue ;
        BB * bb = (*iter)->BB_Node();
        if (BB_entry(bb) || BB_exit(bb)) continue ;

        Identify_Actual_Argument_Defs (bb);
    }

    Identify_Cannot_Spec_OPs (_region);

    return TRUE;
}

/* ===========================================================================
 *
 *    Handle GP-problem  
 * 
 *  GP-problem in brief : 
 *  before sched code sequence : (1) mov gp = xxxx (2) add TN2=TN3,GTN4
 *  after  global scheduing : OP1 and OP2 are transposed: add TN2=TN3, GTN4, 
 *                                                         mov gp = xxxx
 *  GRA, assume gp is valid, spill GTN4 and prepend the code to BB, hence
 *  got the sequence :
 *   (1) add TNgtn4=gp, some-const, (2) ld GTN4=[TNgtn4] (3) mov gp=xxx
 *  
 *  it is obviously an wrong sequence. 
 *  
 *  Our workaround is just for the time bing, it is better to fix this bug
 *  in GRA phase. 
 *
 *  TODO : fix the GP-problem in GRA phase rather than provide
 *         a workaround in code motion phase.
 * 
 * ============================================================
 */

void
SCHEDULER::Preprocess_GP_def_op () {
    
    _gp_def_op = NULL ; 
    if (!BB_length (_target_bb)) return ;

    OP * op = BB_first_op(_target_bb);
    if (!OP_def_GP (op)) return ; 

    _gp_def_op = op ;

    /* detach all arcs leading from this op
     */
    ARC_LIST* list ;
    while (list = OP_succs(op)) {
        CG_DEP_Detach_Arc (ARC_LIST_first(list));
    }

    BB_Remove_Op (_target_bb,op) ;
    _frontier_op = BB_first_op (_target_bb);
}

void
SCHEDULER::Postprocess_GP_def_op () {

    if (_gp_def_op) {

        mUINT16	map_idx = OP_map_idx (_gp_def_op) ;
        BB_Prepend_Op (_target_bb,_gp_def_op);
        Set_OP_end_group (_gp_def_op);

        _gp_def_op->map_idx = map_idx ; 
        _gp_def_op = NULL ;

        Reset_BB_scheduled (_target_bb); 

    }
}

inline BOOL
SCHEDULER::OP_def_GP (OP* op) {
    if (OP_results (op) != 1) return FALSE;

    return OP_result(op,0) == GP_TN ; 
}

inline void
SCHEDULER::Bug_Workaround_Before_Schedule_BB (void) {
    if (_prepass) {
        Preprocess_GP_def_op ();
    }
}

inline void
SCHEDULER::Bug_Workaround_After_Schedule_BB (void) {

    if (_prepass) {
        Postprocess_GP_def_op ();
    }
}

void
SCHEDULER::Preschedule_Target_BB (void) {

    Bug_Workaround_Before_Schedule_BB ();

    if (_global) {
        Determine_P_Ready_is_Profitable_or_not () ;
    }

    Init_Sched_Status (_target_bb) ;

    /* find out all BBs (including <_target_bb> itself) 
     * that are potentialy donate candidates to be 
     * moved into <_target_bb>
     */
    _src_bb_mgr.Find_Src_BBs (_region, _target_bb, &_cflow_mgr, 
                                  TRUE /*prepass phase*/);

    /* adjust heuristic stuff : 
     *
     *      heuristic stuff should be initialized properly and 
     *      up-to-date before we begin to find candidates,since 
     *      we prevent some "bad" candidate from being selected
     *      into candidate-list at this time.
     */
    _heur_mgr.Adjust_Heur_Stuff_When_BB_Changed (_target_bb,_src_bb_mgr);

    /* now find all candidates from src BBs 
     */
    Find_All_Candidates ();
}


void
SCHEDULER::Postschedule_Target_BB (void) {

    /* Inform micro-scheduler to change its internal state.
     */
    CGGRP_End_BB(); 
    Set_BB_scheduled (_target_bb);
    Isolate_BB_From_Sched_Scope (_target_bb); 

    /* calc total number of cycles required by this bb 
     */
    BB_cycle(_target_bb) = 
    BB_length(_target_bb) ? _cur_cyc + 1 : 0 ;

    Verify();

    Bug_Workaround_After_Schedule_BB ();
}

/* ==================================================================
 *
 *      Schedule_Region
 * 
 *  schedule each BB in <_region> except PU's entry- and exit-BB
 * 
 *  NOTE:  Schedule_Region should only be called before register 
 *         allocation
 * ==================================================================
 */

void
SCHEDULER::Schedule_Region (void) {

    if (!Sched_Rgn_Preproc ()) return;

    SCHED_SEQ seq(_region, &_mem_pool);
    for (_target_bb = seq.First (); _target_bb ; _target_bb = seq.Next()) {

        INT32 len = BB_length(_target_bb);


        /* provide a latitude for CFLOW to delete blocks that contains 
         * only on non-call cntl-xfer op.
         */ 
        if (!len || 
            len == 1 && BB_xfer_op (_target_bb) && 
            BB_kind(_target_bb) != BBKIND_LOGIF)
        {
            Isolate_BB_From_Sched_Scope (_target_bb); 
            continue ;
        }

        Preschedule_Target_BB ();

        BOOL no_new_cycle = FALSE;
        OP * xfer_op = BB_xfer_op(_target_bb);

        while (TRUE) {

            while (!_m_ready_cand.Cand_Lst_Is_Empty () || 
                   !_p_ready_cand.Cand_Lst_Is_Empty ()) {

                /* if cycle full or no untried candidates 
                 * are available, advance to next cycle.
                 */
                if (CGGRP_Cycle_Full() || 
                    _m_ready_cand.All_Cands_Have_Been_Tried () &&
                    _p_ready_cand.All_Cands_Have_Been_Tried ()) {

                    Cycle_Advance();
                    if (no_new_cycle) { --_cur_cyc ; break ; }
                }
      
                /* Select an untried instruction with highest priority.
                 */

                E_Time_Constraint etime_constraint;

                etime_constraint.threshold = _cur_cyc;
                etime_constraint.constraint = _ops_in_cur_cyc.empty() ? 
                                              AS_EARLY_AS_POSSIBLE : 
                                              NO_LATER; 

                CANDIDATE* cand = _heur_mgr.Select_Best_Candidate (
                                                _m_ready_cand,
                                                _p_ready_cand,
                                                _target_bb,
                                                &etime_constraint);
                if (!cand) continue ;

                if (!CGGRP_Issue_OP(cand->Op())) {

                    /* this candidate cannot be issued in current cycle
                     * due to structrual hazard.
                     */

                    if (_heur_mgr.Trace_Cand_Sel_Enabled ()) {
                        _heur_mgr.Trace_Cand_Sel_Process (
                            "\tDiscard best candidate due to structual hazard\n");
                    }

                    (GET_CAND_LIST(cand))->Set_Cand_Has_Been_Tried (cand);
                    continue;
                }
      
                /* check whether candidate kills some liveout definitions.
                 * 
                 * e.g 
                 *    For a diamon-shaped flow, its layout is depicted 
                 *    below:
                 *
                 *    BB1 has two successors, BB2 and BB3, they are also BB4's
                 *    2 preds.
                 *    
                 *    Both OP2(of BB2) and OP3 (of BB3) define same TN, say 
                 *    TN234. at the beginging, both OP2 and OP3 qualified 
                 *    as candidate and they compete a slot in BB1. after 
                 *    speculating OP3 to BB1, OP2 is no longer a candidate
                 *    to BB1, but it still resides in candidate list.
                 */

                BB *cand_home_bb = OP_bb (cand->Op()) ; 

                SRC_BB_INFO * src_info = _src_bb_mgr.Get_Src_Info (cand_home_bb);
                if (cand_home_bb != _target_bb &&
                    _dflow_mgr.Upward_Code_Motion_Kill_Some_LiveOut_Defs (
                            cand->Op(),      /* candidate in question */
                            cand_home_bb,   /* from this bb */
                            _target_bb,     /* to this bb   */
                            &src_info->siss) /* cutting set  */) {

                    GET_CAND_LIST(cand)->Erase_Cand (cand);
                    if (_heur_mgr.Trace_Cand_Sel_Enabled ()) {
                        _heur_mgr.Trace_Cand_Sel_Process(
                            "\tDiscard best candidate since it kill some live out TN");
                    }

                    continue ;
                }


#ifdef Is_True_On 

                if (!_ops_in_cur_cyc.empty ()) {
                    Is_True (_cur_cyc == etime_constraint.threshold , 
                            ("best candidate [OP%3d][BB%3d] should be issued exactly"
                             " at cycle %d",
                             OP_map_idx(cand->Op()),
                             BB_id(OP_bb(cand->Op())),
                             _cur_cyc));
                } else {
                    Is_True (_cur_cyc <= etime_constraint.threshold,
                             ("best candidate [OP%3d][BB%3d] should be issued" 
                              " before cycle %d",
                             OP_map_idx(cand->Op()),
                             BB_id(OP_bb(cand->Op())),
                             _cur_cyc));
                }
#endif
                _cur_cyc = etime_constraint.threshold ; 

                /* now commit schedule 
                 */
                OP * op = cand->Op ();
                Commit_Schedule (*cand);

                if (!no_new_cycle) {
                    no_new_cycle = 
                        _heur_mgr.It_is_Better_No_New_Cycle_For_Cur_BB ();

                    if (xfer_op && OP_Scheduled(xfer_op) && 
                        OP_call(xfer_op)) {
                       break ; 
                    }
                }
            } /* end of nested while loop */

            if (!BB_length(_target_bb) || no_new_cycle) {
                break ; 
            } else {
                Cycle_Advance () ; 
            }

        } /* end of outer while loop */

        if (xfer_op) {
            Prune_Upside_Down_Postbr_Arcs (xfer_op);
        }

        /* do some miscellaneous work after scheduling BB 
         */
        Postschedule_Target_BB ();

    } /* end of "for (_target_bb = ... = seq.Next())" */

    Build_Region_Summary (_region, &_cflow_mgr) ;
}


/* =======================================================================
 * 
 *  Schedule_BB
 *  
 *  perform scheduling within BB scope. 
 *
 *  NOTE: o. local scheduling does not imply no control or data speculation.
 * 
 *           before register allocation, these two kind of speculation are 
 *           omnipresent unless speculation is turned off explicitly through
 *           (compiler's) command option. and,
 * 
 *           after reg-alloc any speculation is disallowed.
 *   
 * 
 * =======================================================================
 */

void
SCHEDULER::Schedule_BB() {

    if (BB_length(_target_bb) == 0)  return; 

    _src_bb_mgr.Find_Src_BBs (_region, _target_bb, 
                              &_cflow_mgr, _prepass);

    /* build dependence DAG 
     */
    _dag_constructor.Build_DAG ();
    if (SCHED_TF_DUMP_DAG) { 
        Dump_DAG(); fprintf(TFile, "\n"); 
    }

    _heur_mgr.Initialize (_target_bb,&_cflow_mgr);
    _heur_mgr.
        Adjust_Heur_Stuff_When_BB_Changed (_target_bb,_src_bb_mgr);

    /* identify OPs which cannot be speculated 
     */
    if (_prepass) {
        Identify_Cannot_Spec_OPs (_target_bb);
        Preprocess_GP_def_op () ;
    }

    /* now find all candidates from src BBs 
     */
    Find_All_Candidates ();


    Init_Sched_Status (_target_bb) ;


    BOOL last_op_sched = FALSE ;

    while (1) {
        while (!_m_ready_cand.Cand_Lst_Is_Empty ()) {

            if (CGGRP_Cycle_Full() ||
                _m_ready_cand.All_Cands_Have_Been_Tried ()) {
                Cycle_Advance();
            }

            E_Time_Constraint etime_constraint;

            etime_constraint.threshold  = _cur_cyc;
            etime_constraint.constraint = _ops_in_cur_cyc.empty() ? 
                                              AS_EARLY_AS_POSSIBLE : 
                                              NO_LATER; 
            CANDIDATE* cand = _heur_mgr.Select_Best_Candidate (
                                            _m_ready_cand, 
                                            _p_ready_cand,
                                            _target_bb, 
                                            &etime_constraint);

            if (!cand) continue ;

            if (!CGGRP_Issue_OP(cand->Op())) {
                /* fail to issue candidate due to structual hazard
                 */ 
                GET_CAND_LIST(cand)->Set_Cand_Has_Been_Tried (cand); 

                if (_heur_mgr.Trace_Cand_Sel_Enabled ()) {
                    _heur_mgr.Trace_Cand_Sel_Process (
                            "\tDiscard best candidate due to structual hazard\n");
                }
                continue;
            }
    
#ifdef Is_True_On

            if (!_ops_in_cur_cyc.empty ()) {
                Is_True (_cur_cyc == etime_constraint.threshold , 
                         ("best candidate [OP%3d][BB%3d] should be issued exactly"
                          " at cycle %d",
                          OP_map_idx(cand->Op()),
                          BB_id(OP_bb(cand->Op())),
                          _cur_cyc));
            } else {
                Is_True (_cur_cyc <= etime_constraint.threshold,
                         ("best candidate [OP%3d][BB%3d] should be issued" 
                          " before cycle %d",
                          OP_map_idx(cand->Op()),
                          BB_id(OP_bb(cand->Op())),
                          _cur_cyc));
            }
#endif

            _cur_cyc = etime_constraint.threshold ; 

            Commit_Schedule(*cand);
            last_op_sched |= OP_Scheduled (BB_last_op(_target_bb)) ;
        }

        if (last_op_sched) break ;
        Cycle_Advance () ;
    }

    /* calculate BB's execution cycle
     */
    BB_cycle(_target_bb) = BB_length(_target_bb) ? _cur_cyc + 1 : 0;

    /* Inform machine model the beginning of a new basic block.
     */
    if (BB_length(_target_bb)) CGGRP_End_BB();

    Verify();

    if (_prepass) Postprocess_GP_def_op ();

    CG_DEP_Delete_Graph (_target_bb) ;
}

    /* =================================================================
     * =================================================================
     * 
     *          Constructor and Destructor 
     *
     * =================================================================
     * =================================================================
     */
SCHEDULER::SCHEDULER (BB* bb, BOOL prepass,PRDB_GEN *prdb) :
        _dag_constructor (bb,prdb),
        _m_ready_cand (&_mem_pool,TRUE /*host m-ready candidates*/), 
        _p_ready_cand (&_mem_pool, FALSE /* host p-ready candidates*/),
        _heur_mgr(&_mem_pool),
        _src_bb_mgr(&_mem_pool),
        _ops_in_cur_cyc(OP_ALLOC(&_mem_pool))
{

    _global  = FALSE ;  
    _prepass = prepass ,
    _region  = NULL;
    _target_bb = bb, 

    Get_Sched_Opts (prepass);
    Clean_Up(bb);

    _cflow_mgr.Init (_target_bb);
    sched_annot.Init (_target_bb);

    Init_Unresolved_Dep (&_mem_pool);
}

SCHEDULER::SCHEDULER (struct tagRGN_INFO * rgn_info, BOOL prepass, PRDB_GEN * prdb) :
        _dag_constructor (rgn_info->rgn, prdb, 
                          INCLUDE_ASSIGNED_REG_DEPS,
                          INCLUDE_MEMREAD_ARCS, 
                          NO_MEMIN_ARCS,
                          INCLUDE_CONTROL_ARCS),
        _m_ready_cand (&_mem_pool, TRUE), 
        _p_ready_cand (&_mem_pool, FALSE),
        _src_bb_mgr(&_mem_pool),
        _ops_in_cur_cyc(OP_ALLOC(&_mem_pool)),
        _heur_mgr(&_mem_pool)
{

    _global  = TRUE ;
    _prepass = TRUE ;
    _region = rgn_info->rgn ;

    _target_bb = NULL ;

    Get_Sched_Opts (prepass);
    _cflow_mgr.Init (_region) ;
    sched_annot.Init (_region);

    Init_Unresolved_Dep (&_mem_pool);

    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
         cfg_iter != 0; ++cfg_iter) {

        if ((*cfg_iter)->Is_Region()) {
            continue;
        } else {
            Clean_Up((*cfg_iter)->BB_Node());
        }
    }
  
}

SCHEDULER::~SCHEDULER () {

    _heur_mgr.Finialize ();
    Fini_Unresolved_Dep ();
}

/* ====================================================================
 *
 *  Clean_Up 
 *  
 *  "clean up" prior to code motion, NOTE: DO NOT apply static qualifer 
 *   to this routine, since it is also issued by micro-scheduling. 
 * 
 * ====================================================================
 */

void
Clean_Up (BB* bb) {

    OP *op, *next_op;
  
    Reset_BB_scheduled (bb);

    for (op = BB_first_op(bb); op; op = next_op) {

        next_op = OP_next(op);

        if (OP_noop(op)) {
            BB_Remove_Op(bb, op);
        } else {

            Reset_OP_Scheduled (op);
            Reset_OP_start_bundle(op);
            Reset_OP_end_group(op);
            Reset_OP_bundled(op);
            Reset_OP_m_unit(op);
        }
    }
}

/* ======================================================================
 * ======================================================================
 * 
 *
 *  Global_Insn_Sched : global-instruction-scheduling driver which is 
 *                      called ONLY prior to register allocation if 
 *                      and only if both the following two conditions
 *                      are satisfied. 
 *                       
 *                      o. IPFEC_Enable_Prepass_GLOS != 0 , and 
 *                      o. CG_opt_level > 1
 * 
 *  Local_Insn_Sched  : local-instruction-scheduling driver. 
 *                      which is called before reg-alloc if and only if 
 *                       
 *                      (!IPFEC_Enable_Prepass_GLOS || CG_opt_level <= 1)
 *                      && IPFEC_Enable_Prepass_LOCS 
 *                      
 *                      and it is called after reg-alloc iff
 * 
 *                      IPFEC_Enable_Postpass_LOCS && 
 *                      IPFEC_sched_care_machine == Sched_care_bundle 
 *                      
 * ======================================================================
 * ======================================================================
 */

void
Global_Insn_Sched_Preproc (
    REGION_TREE * rgn_tree, 
    INT& how_many_rgn_need_sched) {

    how_many_rgn_need_sched = 0 ;

    Init_Split_PU_Entry_Or_Exit_BB ();

    Acquire_Region_Info (rgn_tree);

    for (INNERMOST_REGION_FIRST_ITER iter(rgn_tree);
         iter != 0 ; ++iter) {
       
        RGN_INFO  * rgn_info = Get_Region_Info (*iter);
        if (rgn_info->skip_reason != SKIP_RGN_NONE) { continue ; }

        /* 1. perform edge splitting 
         */
        rgn_info->rgn->Edge_Splitting () ;

        if (RGN_CFLOW_MGR::Critical_Edge_Present(rgn_info->rgn)) {
            
            /* TODO : Adding ficticious block, and prevent any OPs from 
             *        being moved into this block to make our global 
             *        scheduling algorithm still appliable to regions 
             *        with critical-edge presence.
             */        
            rgn_info->skip_reason = SKIP_RGN_CRITICAL_EDGE;
            continue ;    
        }

        ++ how_many_rgn_need_sched ;

        /* 2. split (PU) entry-BB in <rgn_info->rgn> if any 
         */
        if (IPFEC_Glos_Split_Entry_BB) {
            Split_PU_Entry_BB (rgn_info->rgn);
        }

        /* 3. split (PU) exit-block in <rgn_info->rgn> if any 
         */
        if (IPFEC_Glos_Split_Exit_BB) {
            Split_PU_Exit_BB (rgn_info->rgn);
        }
    }


    GRA_LIVE_Init (NULL);
}

void
Global_Insn_Sched_Postproc (void) {

    /* 1. merge all splitted entry and exit bb
     */
    Merge_All_Splitted_Entry_and_Exit_BB ();

    
    /* 2. make liveness info up-to-date 
     */
    GRA_LIVE_Init (NULL);

    Free_Region_Info_Memory () ;
}

/* ======================================================================
 * ======================================================================
 * 
 *
 *  Global_Insn_Sched : global-instruction-scheduling driver which is 
 *                      called ONLY prior to register allocation if 
 *                      and only if both the following two conditions
 *                      are satisfied. 
 *                       
 *                      o. IPFEC_Enable_Prepass_GLOS != 0 , and 
 *                      o. CG_opt_level > 1
 * 
 *  Local_Insn_Sched  : local-instruction-scheduling driver. 
 *                      which is called before reg-alloc if and only if 
 *                       
 *                      (!IPFEC_Enable_Prepass_GLOS || CG_opt_level <= 1)
 *                      && IPFEC_Enable_Prepass_LOCS 
 *                      
 *                      and it is called after reg-alloc iff
 * 
 *                      IPFEC_Enable_Postpass_LOCS && 
 *                      IPFEC_sched_care_machine == Sched_care_bundle 
 *                      
 * ======================================================================
 * ======================================================================
 */

extern void SCHED_Dump_IR (BOOL prepass, 
                           BOOL bef_sched, 
                           BOOL gcm,FILE *f=stderr) ;

void
Global_Insn_Sched (REGION_TREE* rgn_tree, BOOL prepass) {

    Set_Error_Phase (_Cur_Phase_Name = _Global_Insn_Sched_Phase_Name);

    Start_Timer (T_Ipfec_GLOS_CU);
    Get_Sched_Opts (prepass);

    if (SCHED_TF_DRAW_GLBL_CFG) { draw_global_cfg(); }
    if (SCHED_TF_DUMP_IR) SCHED_Dump_IR (prepass, 
                                         TRUE, /* bef code motion*/
                                         TRUE, /* global code motion */
                                         TFile) ;

    /* just for the time being */
    IPFEC_Glos_Code_Motion_Across_Nested_Rgn = TRUE; 

    /* acquire region information
     */
    INT32 sched_rgn_num = 0 ;
    Global_Insn_Sched_Preproc (rgn_tree, sched_rgn_num);

    if (sched_rgn_num) {

        PRDB_GEN * prdb = NULL ;
        if (IPFEC_Enable_PRDB) {
            prdb = PRDB_Init(rgn_tree);
        }

        Calculate_Dominator_Info (rgn_tree);

        for (INNERMOST_REGION_FIRST_ITER iter(rgn_tree) ; 
             iter != 0; ++iter) {
                
            RGN_INFO * rgn_info = Get_Region_Info (*iter);
    
            if (rgn_info->Skip_Sched_Reason () == SKIP_RGN_NONE) {

                if (rgn_info->In_Abnormal_Loop ()) {
                   Workaround_Dom_Info_For_In_Abnormal_Loop_Rgn 
                    (rgn_info->Region ()) ;
                }

                SCHEDULER scheduler (rgn_info, TRUE, prdb);
                scheduler.Schedule_Region ();
                
            } else if (rgn_info->Skip_Sched_Reason () == 
                       SKIP_RGN_NO_FURTHER_OPT &&
                       IPFEC_Glos_Code_Motion_Across_Nested_Rgn) {

                RGN_CFLOW_MGR rgn_cflow_mgr ;
                rgn_cflow_mgr.Init (rgn_info->Region ());

                ::Build_Region_Summary (rgn_info->Region (), 
                                        &rgn_cflow_mgr) ;
            }
        }

        if (prdb) { Delete_PRDB () ; prdb = NULL ; } ;

  	    Free_Dominator_Info_Memory () ;
    }

    Global_Insn_Sched_Postproc ();

    if (SCHED_TF_DUMP_IR) SCHED_Dump_IR (prepass, 
                                         FALSE, /* after code motion  */
                                         TRUE,  /* global code motion */
                                         TFile) ;

    Stop_Timer(T_Ipfec_GLOS_CU);
}


    /* ==============================================================
     * ==============================================================
     *
     *  Local_Insn_Sched 
     * 
     *  perform local code motion for each BB in current PU if 
     *  necessary.
     * 
     * ==============================================================
     * ==============================================================
     */
void
Local_Insn_Sched (BOOL prepass) {

    Set_Error_Phase (_Cur_Phase_Name = _Local_Insn_Sched_Phase_Name);
    Start_Timer(T_Ipfec_LOCS_CU);

    Get_Sched_Opts (prepass);
    if (SCHED_TF_DUMP_IR) SCHED_Dump_IR (prepass, 
                                         TRUE,  /* bef code motion   */
                                         FALSE, /* local code motion */
                                         TFile) ;


    for (BB* bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    	
        if (BB_length(bb) == 0) { continue; }

        /* local scheduling before register allocation
         */
        
        if (prepass) { 
        	if (!BB_scheduled(bb) && !BB_reg_alloc(bb)) {
                SCHEDULER local_scheduler(bb, prepass);
                local_scheduler.Schedule_BB();
        	}
        } else {

            /* local scheduling after register allocation
             */
            if (BB_chk_split_head(bb)){
                bb = Handle_Chk_Split_Bunch(bb);
                continue;
            }
	    
            if (!BB_scheduled(bb) || BB_scheduled_hbs(bb) || BB_entry(bb) || 
                BB_exit(bb)){

                if (IPFEC_Query_Skiplist(locs_skip_bb, BB_id(bb))) {
                    Clean_Up(bb);
                    Handle_All_Hazards (bb);
                } else {
                    SCHEDULER local_scheduler(bb, prepass);
                    local_scheduler.Schedule_BB();
                }
            }
        }
        Set_BB_scheduled(bb);
    }

    if (SCHED_TF_DUMP_IR) SCHED_Dump_IR (prepass, 
                                         FALSE,  /* after code motion  */
                                         FALSE,  /* local code motion */
                                         TFile) ;

    Stop_Timer(T_Ipfec_LOCS_CU);
}


