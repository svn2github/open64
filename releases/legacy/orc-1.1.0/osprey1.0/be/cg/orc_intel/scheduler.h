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

/* -*-Mode: c++;-*- (Tell emacs to use c++ mode) */

 /* ======================================================================
  * ======================================================================
  *
  * Module: sched_cflow.h
  * $Revision: 1.1.1.1 $
  * $Date: 2005/10/21 19:00:00 $
  * $Author: marcel $
  *
  * Revision comments:
  *
  * ======================================================================
  * ======================================================================
  */
#ifndef scheduler_INCLUDED
#define scheduler_INCLUDED

/* Using STL template */
#include <slist.h> 
#include <list.h>
#include <vector.h> 
#include <map.h>

/* memory management */
#include "mempool.h"
#include "mempool_allocator.h"

/* definition used globally in backend */
#include "ipfec_defs.h"

/* tracing facility and commomly used data structure and 
 * utilities
 */
#include "tracing.h"
#include "bb.h"
#include "op.h"
#include "prdb.h"

/* dependence DAG */
#include "dag.h"

/* communication with microscheduling and region packages 
 */
#include "targ_issue_port.h"
#include "cggrp_microsched.h"
#include "region.h"
#include "region_verify.h"


#include "sched_util.h"
#include "sched_cflow.h"
#include "sched_dflow.h"
#include "sched_heur.h"
#include "sched_cand.h"

/* exported interfaces of this package 
 */
extern void Global_Insn_Sched(REGION_TREE& region_tree);
extern void Local_Insn_Sched(BOOL);
extern void Global_Insn_Merge_Splitted_BBs () ;
extern void Clean_Up(BB* bb);


class SCHED_MEM {
protected:
    MEM_POOL _mem_pool;

    SCHED_MEM () {
        MEM_POOL_Initialize (&_mem_pool, "SCHED_MEM", true);
        MEM_POOL_Push (&_mem_pool);
    }

    ~SCHED_MEM () {
        MEM_POOL_Pop (&_mem_pool);
        MEM_POOL_Delete (&_mem_pool);
    }
};


class SCHEDULER : public SCHED_MEM {

friend void Global_Insn_Sched (REGION_TREE* rgn_tree, BOOL prepass) ;

private:

    /* dependence DAG 
     */
    DAG_BUILDER _dag_constructor;
    void Rebuild_Cntl_Arcs_From_Scratch (OP* op);

    /* candidate stuff 
     */
    CAND_LIST   _m_ready_cand,      /* M-ready candidate list */
                _p_ready_cand ;     /* P-ready candidate list */

                /* find out all candidate which are potentially 
                 * scheduled into <_target_bb> */
    void Find_All_Candidates (void) ; 

                /* add <op> to candidate list if its qualified */ 
    BOOL Try_Add_OP_to_Candidate_List (OP* op);

                /* update candidate list  o. after one candidate 
                 *     has been schedule. o. right after cycle 
                 *     advance.
                 */
    void Update_Cand_Lst_During_Sched_Cyc (CANDIDATE& cand);
    void Update_Cand_Lst_After_Cycle_Advancing (void) ;
    



    /* speculation stuff 
     */ 

                /* check to see whether <op> can be moved out of 
                 * its home block */
    BOOL OP_Cannot_Be_Moved_Outof_HomeBB (OP * op) ;
        
                /* return the speculation type that we can not 
                 * apply upon <op> */
    SPEC_TYPE Get_OP_Prohibited_Spec_Type (OP * op) ;
                
                /* identify all OPs in <bb> or <rgn> that could not 
                 * be speculated */ 
    void Identify_Cannot_Spec_OPs (BB * bb    ) ;
    void Identify_Cannot_Spec_OPs (REGION *rgn) ;


    /* heuristic stuff 
     */
    #define LOWEST_PROB_FOR_HIGHLY_BIASED_BR (0.7f)
    BB *    _highly_biased_branch_succ ;
    void    Determine_P_Ready_is_Profitable_or_not (void); 
    void    Disable_P_Pready_Cand (void) { _highly_biased_branch_succ = NULL ; } ;
    BOOL    P_READY_Cand_Disabled (void) {
                return _highly_biased_branch_succ == NULL ; 
            };

   /*  Miscellaneous
    */
    BOOL     _prepass;      /* flag indicate before or after reg allocation */ 
    BOOL     _global;       /* flag indicate schedule scope: within region 
                             * confined within single BB */
    REGION*  _region;       /* the global code motion scope */
    BB*      _target_bb;    /* which block scheduler currently deals with */


    /* Commit schedule: all routines other than <Commit_Schedule> is 
     *                  only called by it. 
     */
    void    BB_Move_Op_Before (BB *to_bb, OP *point, BB *from_bb, OP *op) ;
    OP *    Insert_Check (OP * ld, BB * home_bb, OP* pos) ;
    OP *    Gen_Compensation_Code (
                                CANDIDATE& model, BB* org_home_bb, 
                                BB * to, BOOL append=TRUE,
                                BOOL maintain_incoming_arcs=TRUE) ;

    BOOL    Transform_Load_to_be_Spec (CANDIDATE * cand, 
                                       INT32 cutting_set_size) ;

    void    Prune_Upside_Down_Postbr_Arcs (OP * br);
    void    Cycle_Advance   (void);
    BOOL    Commit_Schedule (CANDIDATE& cand);


        /* workaround for gp problem 
         */
    void  Preprocess_GP_def_op () ;
    void  Postprocess_GP_def_op () ;

    OP *  _gp_def_op ; 
    ARC_LIST * _dep_upon_this_op ;

    BOOL OP_def_GP (OP* op) ;

    /* workaround for actual-argument problem 
     */
    void Identify_Actual_Argument_Defs (BB* bb);


    /*  schedule status
     */
    CYCLE   _cur_cyc;         /* current cycle */
    OP *    _frontier_op;     /* boundary OP between unscheduled and 
                               * scheduled OPs
                               */ 
    OP_Vector _ops_in_cur_cyc; /* ops scheduled in current cycle, 
                                * not including nops
                                */
    void    Init_Sched_Status (BB *bb) ;
    

    RGN_CFLOW_MGR    _cflow_mgr ;
    SCHED_DFLOW_MGR  _dflow_mgr ;
    SRC_BB_MGR       _src_bb_mgr ;
    FAVOR_DELAY_HEUR _heur_mgr;


    /* tracing and debugging supports
     */
    void Verify (void) ;
    void Dump_OP_Verbose_Info (OP* op, FILE * f=stderr);


    /* exported interface */
public:

    SCHEDULER (BB* bb, BOOL before_regalloc,PRDB_GEN *prdb=NULL) ;
    SCHEDULER (struct tagRGN_INFO * rgn_info, BOOL before_regalloc , 
               PRDB_GEN * prdb=NULL) ;

    ~SCHEDULER () ;


    BOOL Sched_Rgn_Preproc (void);

    void Postschedule_Target_BB (void) ;
    void Preschedule_Target_BB (void) ;

    inline void Bug_Workaround_After_Schedule_BB (void) ;
    inline void Bug_Workaround_Before_Schedule_BB (void) ;

    void  Schedule_Region (void);
    void  Schedule_BB();

#ifdef Is_True_On
    void Verify_Region_Integrity (REGION * rgn_ptr) ;
#endif
    
    /* Tracing and debugging 
     */
    void Dump (FILE* file = stderr);
    void Dump_DAG (FILE *f=stderr );
    void Dump_IR  (FILE *f=stderr );
};

#endif
