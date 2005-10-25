/*
  Copyright (C) 2000-2002, Intel Corporation
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

//-*-c++-*-

//*********************************************************************
//
// Module: scheduler.cxx
// $Date: 2005/10/21 19:00:00 $
// $Author: marcel $
// $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/scheduler.cxx,v $
//
// Description:
//
// Implementation of ORC instruction scheduler.
// See scheduler.h for the description.
//
//
//
//*********************************************************************

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


/* misc */
#include <stdarg.h>       /* for va_start va_list and vnsprintf */
#include <tlog.h>
#include "whirl2ops.h"

/* set or clear the flag of bbs that splitted from PU boundary
 * (entry/exit) bbs
 */
#define BBM_SPLITTED       BBM_LOCAL_FLAG1
#define BB_splitted(x)     (BB_flag(x) & BBM_SPLITTED)
#define	Set_BB_splitted(x)		(BB_flag(x) |= BBM_SPLITTED)
#define	Reset_BB_splitted(x)	(BB_flag(x) &= ~BBM_SPLITTED)


#define OP_MASK_P_READY     OP_MASK_FLAG1
#define OP_P_READY(o) 	    (OP_flags(o) & OP_MASK_P_READY)
#define Set_OP_P_READY(o)   (OP_flags(o) |= OP_MASK_P_READY)
#define Reset_OP_P_READY(o) (OP_flags(o) &= ~OP_MASK_P_READY)

#define Set_OP_pass_para(o)    (OP_flags(o) |= OP_MASK_PASS_PARA)
#define Reset_OP_pass_para(o)  (OP_flags(o) &= ~OP_MASK_PASS_PARA)
#define OP_is_pass_para(o)     (OP_flags(o) & OP_MASK_PASS_PARA)

#define Set_OP_cannot_spec(o)     (OP_flags(o) |= OP_MASK_CANNOT_SPEC_LD)
#define Reset_OP_cannot_spec(o)   (OP_flags(o) &= ~OP_MASK_CANNOT_SPEC_LD)
#define OP_cannot_spec(o)         (OP_flags(o) & OP_MASK_CANNOT_SPEC_LD)

#define ALL_LOCAL_OP_FLAGS   (OP_MASK_FLAG1 | OP_MASK_PASS_PARA | OP_MASK_CANNOT_SPEC_LD)
#define Reset_All_OP_Local_Flags(o) (OP_flags(o) &= ~ALL_LOCAL_OP_FLAGS)

#define LD_VIOLATE_DEP_THRESHOLD  2
#define VIOLATE_DEP_THRESHOLD     6




/* A bb which holds at least this many OPs is viewed as a "large" BB, code motion 
 * into or out of a "large" bb may increce register presure greatly
 * 
 * TODO: control register presure in more quantative way 
 */
#define BB_SIZE_REG_PRESSURE_THRESHOLD         100

#define REACH_PROB_SCALE        100

/* suppress inline function expansion, so we can trace into rather 
 * than step over an inline function . after this part of code having 
 * been tested stable , we should delete this statement
 */
#define inline

#define INVALID_SISS ((list<BB*,mempool_allocator<BB*> > *)(void*)1) 
char* spec_text[] = {
    "no-spec" , "cntl-spec", "data-spec" , "comb-spec" } ;  

/* data structure used to keep some essential info of region 
 */
typedef enum {
    SKIP_RGN_NONE,
    SKIP_RGN_IMPROPER,
    SKIP_RGN_NON_SEME,
    SKIP_RGN_CRITICAL_EDGE,
    SKIP_RGN_LAST,
    SKIP_RGN_DEBUG,
    SKIP_RGN_NO_FURTHER_OPT
}_SKIP_SCHED_RGN_REASON ;

typedef struct tagRGN_INFO RGN_INFO ;
struct tagRGN_INFO {
    REGION      *rgn ;
    _SKIP_SCHED_RGN_REASON skip_reason ;
    BOOL        in_abnormal_loop ;
    RGN_INFO    * prev , * next ;
};

  /* ============================================================
   *
   *              scheduling flags
   *
   * ==========================================================*/

/* tracing flags 
 */
static BOOL SCHED_TF_DUMP_IR      = FALSE ; 
static BOOL SCHED_TF_DUMP_DAG     = FALSE ;
static BOOL SCHED_TF_DUMP_CAND    = FALSE ;
static BOOL SCHED_TF_SUMMARY_DUMP = FALSE ;
static BOOL SCHED_TF_VERBOSE_DUMP = FALSE ;
static BOOL SCHED_TF_DRAW_GLBL_CFG  = FALSE ;
static BOOL SCHED_TF_DRAW_RGNL_CFG  = FALSE ;
static BOOL SCHED_TF_DRAW_LOCAL_DAG = FALSE ;
static BOOL SCHED_TF_DRAW_RGNL_DAG  = FALSE ;
static BOOL SCHED_TF_TEST_SPEC    = FALSE ;

/* flow reach-probability threshold for speculative op 
 */
static INT32 _safe_cntl_spec_prob = 20 ;
static INT32 _unsafe_cntl_spec_prob = 40 ;

extern BOOL gra_self_recursive;




/* ===================================================================
 * ===================================================================
 *
 *  Get scheduling tracing flags and other parameters 
 *
 * ===================================================================
 * ===================================================================
 */

/* ======================================================================
 * 
 *  Get_Trace_Flags : get tracing flags
 * 
 * ======================================================================
 */

void
Get_Trace_Flags (void) {

    if (!Get_Trace(TP_A_SCHED, 0xffffffff)) {

        SCHED_TF_DUMP_IR      = FALSE ;
        SCHED_TF_DUMP_DAG     = FALSE ;
        SCHED_TF_DUMP_CAND    = FALSE ;
        SCHED_TF_SUMMARY_DUMP = FALSE ;
        SCHED_TF_VERBOSE_DUMP = FALSE ;
        SCHED_TF_DRAW_GLBL_CFG  = FALSE ;
        SCHED_TF_DRAW_RGNL_CFG  = FALSE ;
        SCHED_TF_DRAW_LOCAL_DAG = FALSE ;
        SCHED_TF_DRAW_RGNL_DAG  = FALSE ;
        SCHED_TF_TEST_SPEC    = FALSE ;

    } else {

        SCHED_TF_DUMP_IR      = Get_Trace (TP_A_SCHED,DUMP_IR) ;
        SCHED_TF_DUMP_DAG     = Get_Trace (TP_A_SCHED,DUMP_DAG) ;
        SCHED_TF_DUMP_CAND    = Get_Trace (TP_A_SCHED,DUMP_CAND) ;
        SCHED_TF_SUMMARY_DUMP = Get_Trace (TP_A_SCHED,SUMMARY_DUMP) ;
        SCHED_TF_VERBOSE_DUMP = Get_Trace (TP_A_SCHED,VERBOSE_DUMP) ;
        SCHED_TF_DRAW_GLBL_CFG  = Get_Trace (TP_A_SCHED,DRAW_GLBL_CFG) ;
        SCHED_TF_DRAW_RGNL_CFG  = Get_Trace (TP_A_SCHED,DRAW_RGNL_CFG) ;
        SCHED_TF_DRAW_LOCAL_DAG = Get_Trace (TP_A_SCHED,DRAW_LOCAL_DAG) ;
        SCHED_TF_DRAW_RGNL_DAG  = Get_Trace (TP_A_SCHED,DRAW_RGNL_DAG) ;
        SCHED_TF_TEST_SPEC    = Get_Trace (TP_A_SCHED,TEST_SPEC) ;
    }
}

/* ====================================================================
 * 
 *   Get_Spec_Prob 
 *
 *   get the probability threshold for speculation
 *
 * ====================================================================
 */

void
Get_Spec_Prob (void) {

    float f_safe_cntl_spec_prob , f_unsafe_cntl_spec_prob ;

    if (!IPFEC_safe_cntl_spec_prob) IPFEC_safe_cntl_spec_prob = "0.2" ;
    if (!IPFEC_unsafe_cntl_spec_prob) IPFEC_unsafe_cntl_spec_prob = "0.4" ;

    sscanf (IPFEC_safe_cntl_spec_prob,"%f", &f_safe_cntl_spec_prob) ;
    sscanf (IPFEC_unsafe_cntl_spec_prob,"%f", &f_unsafe_cntl_spec_prob) ;

    if (f_safe_cntl_spec_prob > 1.0) f_safe_cntl_spec_prob = 0.2 ;
    if (f_unsafe_cntl_spec_prob > 1.0) f_unsafe_cntl_spec_prob = 0.4 ;
  
    _safe_cntl_spec_prob = INT32(f_safe_cntl_spec_prob * 100);
    _unsafe_cntl_spec_prob = INT32(f_unsafe_cntl_spec_prob * 100);
}

void
get_sched_flag_and_para () {
    Get_Trace_Flags () ;
    Get_Spec_Prob () ; 
}


/* ================================================================
 * ================================================================
 *
 *   CANDIDATE related routines 
 *
 *   o. CAND_Init    :  initialize an CANDIDATE structure
 * 
 *   o. CAND_is_spec :  determine whether code motion type, spec or 
 *                      useful 
 *   o. CAND_cand_are_the_same : whether two candidates are identical 
 *
 *   o. CAND_Get_Up_to_Date_Spec_Type 
 *                   : get candidates up-to-date speculation type (
 *                     data spec, cntl spec or combination). A candidates
 *                     speculation type may be changed when scheduling
 *                     progress.
 * 
 *   o. CAND_Dump    : dump candidate to file
 *                     
 * ===================================================================
 * ===================================================================
 */
inline void 
CAND_Init (CANDIDATE * cand_ptr, OP* op, SPEC_TYPE spec_type, 
           CYCLE etime,BOOL Is_P_READY, BB * unresolved_dep_pred_bb , 
           BOOL predicate_guarded) {

        cand_ptr->_op = op;
        cand_ptr->_etime = etime;
        cand_ptr->_tried = FALSE ; 
        cand_ptr->_spec_type = spec_type ;
        cand_ptr->_is_P_READY = Is_P_READY ;
        cand_ptr->_unresolved_dep_pred_bb = unresolved_dep_pred_bb ;
        cand_ptr->_predicate_guarded = predicate_guarded ;

}

BOOL
CAND_is_spec (CANDIDATE *cand_ptr) {
     return cand_ptr->_spec_type != NO_SPEC;
}

BOOL
CAND_cand_are_the_same (CANDIDATE *cand1, CANDIDATE * cand2) {
  return cand1->_op == cand2->_op ;
}


/* phase name */

char* SCHEDULER::_Global_Insn_Sched_Phase_Name = "Global code motion"  ;
char* SCHEDULER::_Local_Insn_Sched_Phase_Name = "Local code motion" ;
char* SCHEDULER::_Cur_Phase_Name = NULL ;


/* ====================================================================
 * ====================================================================
 *
 *   Transform log file stuff 
 *  
 *  
 * ===================================================================
 * ====================================================================
 */
char  SCHEDULER::_before_motion[GENERAL_PURPOSE_BUF_SIZE] ;
char  SCHEDULER::_after_motion[GENERAL_PURPOSE_BUF_SIZE] ;
char  SCHEDULER::_aux_info[GENERAL_PURPOSE_BUF_SIZE];


extern FILE * Tlog_File ;

void
SCHEDULER::Init_TLog_Buf (char* which_buf) {

    char * free_space = NULL ;
    if (which_buf == _before_motion) 
        free_space = _before_motion_buf_next =  _before_motion ;
    else if (which_buf == _after_motion) 
        free_space = _after_motion_buf_next  =  _after_motion ;
    else if (which_buf == _aux_info) 
        free_space = _aux_info_buf_next =  _aux_info ;

    Is_True (free_space , ("no such buf\n")) ;

    *free_space = '\0' ;
}

void
SCHEDULER::Init_TLog_Buf (void) {

    _before_motion_buf_next =  _before_motion ;
    *_before_motion_buf_next = '\0' ; 
     
    _after_motion_buf_next =  _after_motion ;
    *_after_motion_buf_next = '\0';

    _aux_info_buf_next = _aux_info ;
    *_aux_info_buf_next = '\0' ;
}

char **
SCHEDULER::Get_Buf_Free_Space (char *which_buf) {

    if (which_buf == _before_motion) 
        return &_before_motion_buf_next ; 

    if (which_buf == _after_motion) 
        return &_after_motion_buf_next ; 

    if (which_buf == _aux_info) 
        return &_aux_info_buf_next ; 

    return NULL ;

}

void
SCHEDULER::Append_Str_2_Buf (char * which_buf, char * fmt,...) {

    char ** free_space_ptr = Get_Buf_Free_Space (which_buf) ;
    Is_True (free_space_ptr, ("free_space_ptr can not be NULL\n"));

    char * free_space = *free_space_ptr ;
    free_space = (free_space >= which_buf + GENERAL_PURPOSE_BUF_SIZE)
                  ? NULL : free_space ;

    if (!free_space) return ;

    va_list ap ;
    va_start (ap, fmt) ;

    int ret_code = vsnprintf (free_space, 
                              which_buf + GENERAL_PURPOSE_BUF_SIZE - 1 - 
                              free_space, fmt, ap) ;

    if (ret_code < 0) 
        *free_space_ptr = which_buf + GENERAL_PURPOSE_BUF_SIZE ;
    else
        *free_space_ptr += ret_code ;
}

/* ==========================================================================
 * ==========================================================================
 *  
 *              Control flow: query and manipulation
 * 
 *  1. Overview 
 * 
 *  During global code motion, we constantly query the regional and global
 *  control flow information, such as 'Is BBx reachable from BBy? if yes, 
 *  the reach-probability?'. 
 *  
 *  Before global code motion begins, 
 *
 *      o. our global-instruction-scheduling algorithm entails eliminating 
 *         critical-edge (by  edge-spliting). 
 * 
 *      o. For the sake of larger global-instruction-scheduling scope, 
 *         we split PU's entry-BB into two with one containing all
 *         orginal BB's "no-move-before-GRA" OPs, and the other BBs holds
 *         the remaining OPs. and we merge the splitted entry BBs into 
 *         for the sake of larger local instruction scheduling scope.
 * 
 *  2. reachable information
 *      
 *     Provide the service of answering question such as "Is BBx reachable 
 *     from BBy?". To ease the calculation and same time, we map discrete
 *     IDs of BBs in one region to a contiguous range of integer--from 1 
 *     through number-of-bbs-in-region inclusively. and we map inner-regions' 
 *     IDs in the same way.
 *       
 *     The answer to the question of "Is BBx is reachable from itself" is no,
 *     whichby, distinguis this special case from other cases.
 *
 *  3. reach-probability
 *     
 *     provide query service of reach-probability of two regional-cfg-node.
 *     we scale up the reach-probability by REACH_PROB_SCALE and type-cast
 *     result to an integer,so that make the reach-prob comparison slightly 
 *     less expensive.
 *   
 *  4. PU-entry/-exit-BB spliting & merging
 *     as describe above
 *  
 *  5. miscellaneous other things
 * 
 *     such as checking critical-edge presence 
 *  
 * 
 *   TODO: concentrate all these functions mentioned above into one class
 * 
 * ==========================================================================
 * ==========================================================================
 */

void
SCHEDULER::Get_BB_Number_Max_BB_ID_Max_Rgn_Number (void) {

    if (!_global) {
        _BB_num_in_cur_scope = 1 ; 
        _Max_BB_id = BB_id(_target_bb);  
        return ;
    } 

    _BB_num_in_cur_scope = 0 ; 
    _Max_BB_id           = 0 ; 
    _Max_rgn_id          = 0 ;

    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
         cfg_iter != 0; ++cfg_iter) {

        if ((*cfg_iter)->Is_Region()) {

            INT32 rgn_id = (*cfg_iter)->Region_Node()->Id() ;
            _Max_rgn_id = (rgn_id > _Max_rgn_id) ? rgn_id : _Max_rgn_id ; 
            continue ;

        }

        if ((*cfg_iter)->BB_Node()->id > _Max_BB_id) {
            _Max_BB_id = (*cfg_iter)->BB_Node()->id ;
        }

        ++ _BB_num_in_cur_scope ; 
    }
}

void 
SCHEDULER::Map_BBs_id_to_Contiguous_Range_Ints () {

    if (_BB_id_map_ptr) return ;

    Get_BB_Number_Max_BB_ID_Max_Rgn_Number () ;
   
    _BB_id_map_ptr = TYPE_MEM_POOL_ALLOC_N (mCONT_BB_NUM, 
                                            &_mem_pool, 
                                            _Max_BB_id + 1);

    /* map the BBs id to contiguous range of integer
     */
    UINT32 id_idx = mCONT_BB_NUM_BASE ;
 
    if (_global) {

        for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
             cfg_iter != 0; ++cfg_iter) {

            if ((*cfg_iter)->Is_Region()) continue; 
            _BB_id_map_ptr[(*cfg_iter)->BB_Node()->id] = id_idx ++ ;
        }

    } else {
        _BB_id_map_ptr[_target_bb->id] = id_idx++ ; 
    }
}


void
SCHEDULER::Build_RGN_Annotation_Vector (void) {

    Is_True (_Max_rgn_id >= 0, ("max region is negative integer\n"));

    _RGN_annotation_vector.resize (_Max_rgn_id + 1);

    INT32 size = (INT32)((_Max_BB_id + 7) / 8) + 1 ;
    INT32 prob_vect_size = sizeof(INT32) * 
            (_BB_num_in_cur_scope + mCONT_BB_NUM_BASE);

    for (INT i = 0 ; i <= _Max_rgn_id ; i++) {

        _RGN_annotation_vector[i].inner_rgn_ptr = NULL ;
        _RGN_annotation_vector[i].reachable_bb_vector = 
                                  (mINT8*)MEM_POOL_Alloc (&_mem_pool,size) ;
        bzero (_RGN_annotation_vector[i].reachable_bb_vector, size) ; 

        _RGN_annotation_vector[i].bb_reachable_prob_vector = 
                    (INT32*)MEM_POOL_Alloc (&_mem_pool,prob_vect_size) ;
        bzero (_RGN_annotation_vector[i].bb_reachable_prob_vector, prob_vect_size) ; 

    }
}

void
SCHEDULER::Build_BB_Annotation_Vector (void) {

    Map_BBs_id_to_Contiguous_Range_Ints () ;
    _BB_annotation_vector.resize (_BB_num_in_cur_scope + mCONT_BB_NUM_BASE);

}

inline REGION *
SCHEDULER::Get_Inner_Rgn_by_Id(INT32 rgn_id) {

    Is_True (rgn_id <= _Max_rgn_id,("region id out of range\n")) ; 
    return _RGN_annotation_vector[rgn_id].inner_rgn_ptr;

}

inline BOOL
SCHEDULER::BB_reachable_from_rgn(BB *bb_ptr,REGION * rgn_ptr) {

    UINT16 bb_cont_id = Get_Contiguous_BB_ID (bb_ptr);
 
    mINT8 * vector_ptr = RGN_ANNOT_Get_BB_Reachable_Vector(rgn_ptr) ;
  
    return BOOL(vector_ptr[bb_cont_id>>3] & (1 << (bb_cont_id & 7))) ;
}

inline mINT8 *
SCHEDULER::GET_CFG_NODE_BB_Reachable_Vector (
    REGIONAL_CFG_NODE * cfg_node_ptr) {

    return (cfg_node_ptr->Is_Region()) ? 
            RGN_ANNOT_Get_BB_Reachable_Vector(cfg_node_ptr->Region_Node()) :
            _reachable_matrixp[Get_Contiguous_BB_ID(cfg_node_ptr->BB_Node())] ;
}

inline INT32 *
SCHEDULER::GET_CFG_NODE_BB_Reachable_Prob_Vector (
    REGIONAL_CFG_NODE * cfg_node_ptr) {

    return (cfg_node_ptr->Is_Region()) ? 

            RGN_ANNOT_Get_BB_Reachable_Prob_Vector(
                    cfg_node_ptr->Region_Node()) :

            _reachable_prob_matrixp[Get_Contiguous_BB_ID(cfg_node_ptr->BB_Node())] ;
}

INT16
SCHEDULER::Count_Succ_BB_Num (REGIONAL_CFG_NODE * node) {

    REGIONAL_CFG_EDGE * edge ;
    INT16 icount = 0 ; 

    for (edge = node->First_Succ() ; edge ; edge = edge->Next_Succ()) {
       if (!edge->Dest()->Is_Region()) ++ icount ;
    }

    return icount ;
}

INT16
SCHEDULER::Count_Pred_BB_Num (REGIONAL_CFG_NODE * node) {

    REGIONAL_CFG_EDGE * edge ;
    INT16  icount = 0 ;

    for (edge = node->First_Pred() ; edge ; edge = edge->Next_Pred()) {
       if (!edge->Dest()->Is_Region()) ++ icount ;
    }

    return icount ;
}

BOOL
SCHEDULER::Has_Scheduled_Preds (BB* bbptr) {
    BBLIST *pred ;
    FOR_ALL_BB_PREDS (bbptr,pred) {
        if (BB_scheduled (pred->item)) return TRUE;
    }

    return FALSE ;
} 


/* -----------------------------------------------------------
 *  
 *  Does_JS_Edge_Present : check whether critical edge present
 * 
 * ----------------------------------------------------------*/
BOOL   
SCHEDULER::Does_JS_Edge_Present (REGION * rgn) {

    REGIONAL_CFG *cfg = rgn->Regional_Cfg() ;

    /* for each regional_cfg_node 
     */
    TOPOLOGICAL_REGIONAL_CFG_ITER iter(cfg);

    for(;iter!=0;++iter){

        REGIONAL_CFG_NODE *node = *iter;

        if(node->Is_Region()) continue;
        if(node->Succ_Num()<=1) continue;

        /* for each Succ_Edge of node
         */
        int succ_bb_num , pred_bb_num ;
        succ_bb_num = Count_Succ_BB_Num(node) ;
        if (succ_bb_num <= 1) continue ;

        for (REGIONAL_CFG_EDGE *edge = node->First_Succ(); 
             edge!=NULL; 
             edge = edge->Next_Succ()) {

            REGIONAL_CFG_NODE *succ_node = edge->Dest();
            if(succ_node->Is_Region()) continue;

            if (Count_Pred_BB_Num (succ_node) > 1) return TRUE ;
        }
    }

    return FALSE ;
}

void
SCHEDULER::Compute_Node_Level () {
    if (!_global) return ;

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter(_region->Regional_Cfg()) ; 
        iter != 0 ; ++iter) {
        if ((*iter)->Is_Region()) {
            REGION * r = (*iter)->Region_Node() ;

            RGN_ANNOT_min_level (r) = 1 ;
            RGN_ANNOT_max_level (r) = 1 ;

        } else {
            BB *bb = (*iter)->BB_Node () ;


            _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].max_level = 1;
            _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].min_level = 1;
        }
    }


    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter(_region->Regional_Cfg()) ; 
        iter != 0 ; ++iter) {
       INT32 level ;

       level = ((*iter)->Is_Region ()) ? 
            RGN_ANNOT_min_level ((*iter)->Region_Node()) :
            _BB_annotation_vector
                [Get_Contiguous_BB_ID((*iter)->BB_Node())].min_level;

       level -- ;

       for (CFG_PRED_NODE_ITER preds(*iter) ; preds != 0 ; ++preds) {
            INT32 L = (*preds)->Is_Region () ? 
                RGN_ANNOT_min_level((*preds)->Region_Node ()) : 
                BB_ANNOT_min_level((*preds)->BB_Node()) ;

            level = (level > L) ? level : L ;
       }

       if ((*iter)->Is_Region ()) {
            REGION * r = (*iter)->Region_Node () ;

            RGN_ANNOT_max_level(r) = level + 1 ;
            RGN_ANNOT_min_level(r) = level + 1 ;
       } else {
            BB * bb = (*iter)->BB_Node () ;

            _BB_annotation_vector [Get_Contiguous_BB_ID(bb)].min_level = 
                                                             level + 1;
            _BB_annotation_vector [Get_Contiguous_BB_ID(bb)].max_level = 
                                                             level + 1;

       }
    }


    for (REVERSE_TOPO_REGIONAL_CFG_ITER iter (_region->Regional_Cfg()) ; 
        iter != 0 ; ++iter) {

       INT32 level, * plevel ;

       plevel = ((*iter)->Is_Region ()) ? 
                  &RGN_ANNOT_max_level((*iter)->Region_Node()) :
                  &_BB_annotation_vector 
                    [Get_Contiguous_BB_ID((*iter)->BB_Node())].max_level;
                  
       level = *plevel + 1;
       for (CFG_SUCC_NODE_ITER succs(*iter) ; succs != 0 ; ++succs) {
            INT32 L = (*succs)->Is_Region () ? 
                RGN_ANNOT_max_level((*succs)->Region_Node()) : 
                _BB_annotation_vector 
                    [Get_Contiguous_BB_ID((*succs)->BB_Node())].max_level;

            level = (level > L) ? level : L ; 
       }

       *plevel = level - 1; 
    }
}

INT32 
SCHEDULER::across_node_num (BB * from , BB * to) {

    if (!_global) {
        Is_True (from == to && from == _target_bb, ("invalid parameter"));
        return 0 ;
    }

    if (from == to) return 0 ;

    BB * ance , * desc ;
    if (BB1_reachable_from_BB2 (to, from)) {
        ance = from ; desc = to ; 
    } else {
        ance = to ; desc = from ; 
    }

    if (!BB1_reachable_from_BB2(desc, ance)) return 0 ;

    INT32 d1 = BB_ANNOT_max_level (desc) - BB_ANNOT_max_level(ance) ;
    INT32 d2 = BB_ANNOT_min_level (desc) - BB_ANNOT_min_level(ance) ;

    return d1 < d2 ? d1 : d2 ;
}

    /* ==========================================================
     *
     *  PU entry/exit BB splitting and merging 
     *
     * ==========================================================
     */ 

/* initialize static members 
 */
BB  *   SCHEDULER::_entry_bb_ptr = NULL ; 
BB  **  SCHEDULER::_exit_bbs_ptr = NULL ;
INT16   SCHEDULER::_exit_bb_num = 0, 
        SCHEDULER::_exit_bbs_link_len = 0;

void 
SCHEDULER::Init_PU_Boundary_BB_Splitting (void) {

    _entry_bb_ptr = NULL ;

    extern MEM_POOL MEM_local_pool ;
    _exit_bbs_ptr = (BB**) 
    MEM_POOL_Alloc (&MEM_local_pool,sizeof(BB*) * (_exit_bbs_link_len = 30));
   
    _exit_bb_num = 0 ;   
}

void 
SCHEDULER::Finalize_PU_Boundary_BB_Split (void) {
    _entry_bb_ptr = NULL ;
    _exit_bbs_ptr = NULL ;
    _exit_bb_num = _exit_bbs_link_len = 0 ;
}


void
SCHEDULER::Add_Splitted_Exit_BB (BB* bb_ptr) {

   Is_True ((_exit_bbs_link_len > 0 || _exit_bb_num >= _exit_bbs_link_len) , 
        ("Add_Splitted_Exit_BB () : exit_bb link has not initialized yet!\n"));

   if (_exit_bb_num == _exit_bbs_link_len) {

      INT32 oldsize = sizeof (BB*) * _exit_bbs_link_len ;
      INT32 newsize = sizeof (BB*) * (_exit_bbs_link_len *= 2) ;  

      extern MEM_POOL MEM_local_pool ;
      _exit_bbs_ptr = (BB**)MEM_POOL_Realloc (&MEM_local_pool,
                                              _exit_bbs_ptr, 
                                              oldsize, newsize);
   }

   _exit_bbs_ptr[_exit_bb_num++] = bb_ptr;   
}

BB * 
SCHEDULER::Get_Splitted_Exit_BB (INT16 index) { 

    if (_exit_bbs_link_len <= 0 || _exit_bb_num >= _exit_bbs_link_len) {
      return NULL ;
    }

    return _exit_bbs_ptr[index] ;
}
 

void
SCHEDULER::Copy_Entry_BB_Annotation (BB* entry_bb, BB* splitted_bb) {

    for (ANNOTATION * annot = BB_annotations (entry_bb) ; 
         annot ; annot = ANNOT_next (annot)) {

        switch (ANNOT_kind(annot)) {
        case ANNOT_LABEL:
        case ANNOT_ENTRYINFO :
        case ANNOT_EXITINFO :
            break ;
        case ANNOT_PRAGMA : 
        case ANNOT_CALLINFO : 
        case ANNOT_NOTE :
        case ANNOT_LOOPINFO :
        case ANNOT_SWITCH : 
        case ANNOT_ROTATING_KERNEL :
             BB_Add_Annotation (splitted_bb,
                                ANNOT_kind (annot),
                                ANNOT_info(annot));
            break ;
        default :
            Is_True (FALSE , ("unknow annotation \n")) ;
      } 
    }
}

void
SCHEDULER::Split_Entry_BB (REGION * rgn) {

    Is_True (rgn, ("Split_Entry_BB () : illegal parameter\n"));

    NODE_VECTOR entry_node_vector = rgn->Entries () ;

    Is_True (entry_node_vector.size() == 1, 
             ("Split_Entry_BB(): region %d has more than one entries\n",
              rgn->Id()));
    
    REGIONAL_CFG_NODE * cfg_node = *(entry_node_vector.begin());
    REGIONAL_CFG      * rgn_cfg  = rgn->Regional_Cfg();

    BB * entry_bb_ptr ;
    
    if (cfg_node->Is_Region() || 
        (entry_bb_ptr = cfg_node->BB_Node()) && !BB_entry(entry_bb_ptr)) {
        return ;
    }

    if (BB_exit(entry_bb_ptr)) return ;

    OP * last_op , *boundary_op, * sp_adj;
    last_op = BB_last_op (entry_bb_ptr);
    sp_adj  = BB_entry_sp_adj_op (entry_bb_ptr);

    for (boundary_op = BB_last_op (entry_bb_ptr); 
         boundary_op && boundary_op != sp_adj ; 
         boundary_op = OP_prev(boundary_op)) {

        if (OP_glue(boundary_op)               || 
            OP_no_move_before_gra(boundary_op) ||
            OP_access_reg_bank(boundary_op)) {

            break ; 

        }
    }

    /* trival case : entry bb's last op is BB_entry_sp_adj_op() (so , entry 
     * bb fall thru to succeeding bb
     */
    if (last_op == boundary_op) return ;
    Is_True (boundary_op , 
             ("Split_Entry_BB (): boundary_op can't be null\n"));

    /* split entry-bb and update {regional|global}-cfg properly 
     */
    BB * split_bb = RGN_Gen_And_Insert_BB_After (
                            entry_bb_ptr,rgn->Regional_Cfg()) ;
    BB_freq(split_bb) = BB_freq(entry_bb_ptr);

    BBLIST * nxt, *succ;

    for (succ = BB_succs(entry_bb_ptr); succ; succ = nxt) {

        BB* bb_succ = BBLIST_item(succ);
        nxt = BBLIST_next(succ);
        RGN_Link_Pred_Succ_With_Prob(split_bb, bb_succ, BBLIST_prob(succ));
        RGN_Unlink_Pred_Succ(entry_bb_ptr, bb_succ);

    }

    RGN_Link_Pred_Succ_With_Prob (entry_bb_ptr, split_bb, 1.0f);

    /* move all ops that follows boundary_op to the newly allocated bb 
     */
    while (OP_next(boundary_op)) {
        BB_Move_Op_To_End (split_bb, entry_bb_ptr, 
                           OP_next(boundary_op)) ;
    }

    /* liveness analysis : share same liveness structure , 
     * inaccurate yet suffice.
     */
    BB_bbregs (split_bb) = BB_bbregs(entry_bb_ptr);

    /* set & reset flags for entry- and splitted-bb
     */
    BB_flag (split_bb) = BB_flag (entry_bb_ptr) ;
    Reset_BB_entry (split_bb) ;

    Set_BB_splitted (split_bb);
    Set_Splitted_Entry_BB (entry_bb_ptr);

    Copy_Entry_BB_Annotation (entry_bb_ptr,split_bb);
}

/* -----------------------------------------------------------------------
 *
 *  Merge_Splitted_Entry_BB
 *
 *  merge <entry_bb_ptr> and its unique successor(they must be marked 
 *  by BB_splitted) into <entry_bb_ptr>. 
 * 
 * -----------------------------------------------------------------------
 */
void
SCHEDULER::Merge_Splitted_Entry_BB (BB *entry_bb_ptr) {

    if (!entry_bb_ptr) return ;

    BB* split = BB_Unique_Successor (entry_bb_ptr) ;
    Is_True (split , 
             ("Merge_Splitted_Entry() : fail to get unique succ\n"));
    Is_True (BB_splitted (split), 
             ("succ is not a splitted part of entry-bb\n"));

    BBLIST* nxt, *succ;
    for (succ = BB_succs(split); succ; succ = nxt) {

        BB* bb_succ = BBLIST_item(succ);
        nxt = BBLIST_next(succ);
        RGN_Link_Pred_Succ_With_Prob (entry_bb_ptr, bb_succ, BBLIST_prob(succ));
        RGN_Unlink_Pred_Succ(split, bb_succ);

    }

    RGN_Unlink_Pred_Succ (entry_bb_ptr, split);

    /* mv ops */
    BB_Append_All (entry_bb_ptr, split);
    BB_bbregs (split) = NULL ;
          
    Set_Splitted_Entry_BB (NULL);

    if (BB_call (entry_bb_ptr)) {

        OP * op = BB_xfer_op (entry_bb_ptr) ;

        if (!op || !OP_call (op)) {

            Reset_BB_call (entry_bb_ptr) ;
            ANNOTATION * bb_annot = BB_annotations (entry_bb_ptr) ;

            ANNOTATION * call_annot ; 
            if (bb_annot && (call_annot = 
                             ANNOT_Get (bb_annot,ANNOT_CALLINFO))) {
                ANNOT_Unlink (bb_annot,call_annot) ;
            }
        }
    }

    OP *op ;
    FOR_ALL_BB_OPs (entry_bb_ptr, op) {
        Reset_All_OP_Local_Flags(op) ;
    }

    if (BB_chk_split(split)) {
        Set_BB_chk_split(entry_bb_ptr);
    }

    if (BB_chk_split_head(split)) {
        Set_BB_chk_split_head(entry_bb_ptr);
    }     
	    
    RGN_Remove_BB_And_Edges (split);
}

/* ------------------------------------------------------------------
 *
 *  Split_Exit_BB (BB*)
 * 
 *  divide all OPs in PU's exit-BB denoded by <exit_bb> into two. 
 *  the upper part must be no-moved-before-GRA and we move these OPs
 *  into one new BB with the remaining OPs still residing in <exit_bb>.
 *  then,change CFG accordingly 
 * 
 * -------------------------------------------------------------------
 */
void 
SCHEDULER::Split_Exit_BB (BB* exit_bb) {
    /* not yet implemented */
}

/* --------------------------------------------------------------------
 *
 *  Split_Exit_BBs (REGION*) 
 * 
 *  perform Split_Exit_BB(BB*) for each PU's exit-BB in <region_ptr>
 *
 * --------------------------------------------------------------------
 */
void 
SCHEDULER::Split_Exit_BBs (REGION * region_ptr) {
    
    Is_True (region_ptr , ("Split_Exit_BBs () : illegal region_ptr\n"));

    NODE_VECTOR exit_node_vector (region_ptr->Exits()) ;

    for (NODE_VECTOR_ITER iter = exit_node_vector.begin() ; 
         iter != exit_node_vector.end () ; iter++) {

        if ((*iter)->Is_Region()) continue ;
        SCHEDULER::Split_Exit_BB ((*iter)->BB_Node()) ;
    }
}


/* ---------------------------------------------------------------------
 *
 *  Merge_Splitted_Exit_BB 
 *
 *  merge splitted (PU)'s exit-BB into one so that we obtains an larger
 *  local instruction scope
 * 
 * ---------------------------------------------------------------------
 */
void 
SCHEDULER::Merge_Splitted_Exit_BB (BB *exit_bb_ptr) {
    /* not yet implemented */
}

/* ---------------------------------------------------------------------
 *
 *  Global_Insn_Merge_Splitted_BBs 
 *
 *  merge all PU's splitted entry- exit-BB. 
 *
 * ---------------------------------------------------------------------
 */
void
Global_Insn_Merge_Splitted_BBs () {

    if (SCHEDULER::Get_Splitted_Entry_BB()) {
        SCHEDULER::Merge_Splitted_Entry_BB (
                      SCHEDULER::Get_Splitted_Entry_BB());
    }

    for (INT16 i = 0 ; SCHEDULER::Get_Splitted_Exit_BB (i) ; i++) {
        SCHEDULER::Merge_Splitted_Exit_BB (
                      SCHEDULER::Get_Splitted_Exit_BB (i));
    }
}

/* ----------------------------------------------------------------------
 *
 *  Sort_Region_BBs 
 * 
 *  determine the scheduling sequence BEFORE global code motion begins.
 * 
 *  in global code motion we scheduling each BB in topological sort. 
 *  However, there may be more than one instance of topological sort. 
 *  we favor this one which sort more frequent node before less one.
 *
 *  TODO:
 *      determine the scheduling sequence when code motion progress rather
 *      than before code motion begins. so that we can apply some heuristic
 *      info for BBs whose exec-freq are slightly differs.
 *
 *      e.g region R's control flow is diamond-shaped as depicted below:
 *                     +-------+
 *                     |  bb1  |              
 *                     +-------+
 *                   /         \
 *        freq =20, /op-num=20  \ freq = 20, op-num =5
 *           +-----+              +-----+
 *           | bb3 |              | bb4 | 
 *           +-----+              +-----+
 *                  \            /
 *                   \ +------+/
 *                     | bb2  |
 *                     +------+
 *
 *         the bb1 should be 1st scheduled. before bb1 is scheduled, bb3 
 *         contains as many as 20 OPs and bb4 contains 5 ops. but after 
 *         schedule, thing changed, bb4 holds more ops than bb3 does.
 *         
 *         so we shoose bb4 as the next bb to be scheduled since bb4 and
 *         bb3 share equal exec-freqency and bb4 hold more ops than bb3 does
 *         which indicate bb4 MAY "digest" compensation code more easily 
 *         than bb3. 
 * 
 * -----------------------------------------------------------------------
 */

class   NODE_INFO { public: INT32 _n_pred; NODE_INFO() {_n_pred = 0;} };
typedef mempool_allocator<pair<REGIONAL_CFG_NODE*,NODE_INFO> >
                NODE_INFO_ALLOC;
typedef hash_map<REGIONAL_CFG_NODE*, NODE_INFO,
                 ptr_hash<REGIONAL_CFG_NODE*>,
                 equal_to<REGIONAL_CFG_NODE*>, NODE_INFO_ALLOC> NODE_INFO_MAP;

BB_VECTOR * 
SCHEDULER::Sort_Region_BBs () {

    BB_VECTOR * region_bbs = CXX_NEW (BB_VECTOR(BB_ALLOC(&_mem_pool)), 
                                      &_mem_pool);
    region_bbs->clear();

    NODE_VECTOR     root_nodes (&_mem_pool);
    NODE_INFO_MAP   node_info_map; 

    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
        cfg_iter != 0; ++cfg_iter) {

        node_info_map[*cfg_iter]._n_pred = (*cfg_iter)->Pred_Num();

    }

    root_nodes.push_back (_region->Entries()[0]);

    while (root_nodes.size()) {

        /* get the max freq root 
         */ 

        float freq = -1.0f ;
        NODE_VECTOR_ITER max_freq_iter = root_nodes.begin ();

        for (NODE_VECTOR_ITER node_iter = root_nodes.begin();
            node_iter != root_nodes.end(); node_iter ++) {

            float node_freq = 
                (*node_iter)->Home_Region ()-> Regional_Cfg ()-> 
                Node_Freq (*node_iter);

            if (node_freq > freq) {
                max_freq_iter = node_iter;
                freq = node_freq ;
            }
        }

        /* emit this node 
         */
        REGIONAL_CFG_NODE * emit_root = *max_freq_iter ;
        root_nodes.erase(max_freq_iter);

        if (!emit_root->Is_Region()) {

            BB * bb = emit_root->BB_Node();     
            if (!BB_entry (bb) && !BB_exit(bb)) {
                region_bbs->push_back (bb) ;
            }

        }


        for (CFG_SUCC_NODE_ITER succs(emit_root) ; succs != 0 ; ++succs) {
            if (! --node_info_map[*succs]._n_pred) {
               root_nodes.push_back(*succs); 
            }
        }
    }

    return region_bbs;
}


void
SCHEDULER::Find_Source_BBs (BB* bb , SRC_BB_SISS_MAP *siss_map_ptr) {

    if (bb == _target_bb) {
        if (_before_regalloc) {
            if (BB_entry(bb) || BB_exit(bb)) {
                Is_True (FALSE, 
("cannot schedule entry- or exit-bb before reg-alloc phase!"));
                return ;
            }
        }
    }

    struct _SISS_guarded_tuple3 * pair_ptr = Compute_SISS (_target_bb,bb); 
    if (!pair_ptr) return ;

    SISS *siss_lstp = pair_ptr->siss_ptr ;

    /* TODO: control dupliation-ratio in quantiative way
     */ 
    /* if (siss_lstp->size() >= 3) return ; */
     

    if (bb != _target_bb) {

        INT32 interference = 0 ;
        float bbs_freq = 0.0;
        float empty_bb_freq = 0.0;

        for (SISS_ITERATOR iter = siss_lstp->begin (); 

            iter != siss_lstp->end () ; iter++) {
            if (BB_scheduled(*iter) || BB_ANNOT_processed (*iter)) return ; 

            BB * bb_tmp = *iter;
            if (BB_length(bb_tmp) > BB_SIZE_REG_PRESSURE_THRESHOLD) return ;

            INT32 bb_size = BB_length(bb_tmp);
            interference += bb_size ;

            bbs_freq += BB_freq (bb_tmp);

            if (!bb_size || (bb_size == 1 && BB_xfer_op(bb_tmp))) {
                empty_bb_freq += BB_freq(bb_tmp);
            }
        }

        for (BB_VECTOR_ITER item = pair_ptr->guarded_ptr->begin(); 
             item != pair_ptr->guarded_ptr->end(); item++) {
            if (!*item) continue ;

            INT32 bb_size = BB_length (*item);
            if (bb_size > BB_SIZE_REG_PRESSURE_THRESHOLD) return ;
            interference += bb_size ;
        }

        interference  += BB_length(bb);

        /* TODO :
         * control register presure in less arbitrary approach
         */
        INT32 across_nodes = across_node_num (_target_bb, bb);
        if (across_nodes > 3) {
            if (interference > BB_SIZE_REG_PRESSURE_THRESHOLD/4) { return ; } 
            if (across_nodes > 5) return ;
        }

        /* how to prevent BB fragament ? 
         */ 
        /* if (empty_bb_freq > BB_freq(_target_bb)) return ; */
    }

    _source_bbs.push_back(bb); 
    (*siss_map_ptr)[bb] = pair_ptr;


    if (!_global) return ;
    if (BB_length (bb) > BB_SIZE_REG_PRESSURE_THRESHOLD) return ;

    for (CFG_SUCC_NODE_ITER succ_iter(Regional_Cfg_Node(bb));
         succ_iter != 0; ++succ_iter) {
        if ((*succ_iter)->Is_Region()) continue ;

        BB * succ_bb = (*succ_iter)->BB_Node();

        if (find(_source_bbs.begin() , _source_bbs.end(), succ_bb) 
            != _source_bbs.end()) return ;

        if (BB_entry (succ_bb) || BB_exit (succ_bb)) return ;

        BOOL src_cand = TRUE;
        for (CFG_PRED_NODE_ITER preds (*succ_iter) ; 
             src_cand && preds != 0 ; ++preds) {

            if ((*preds)->Is_Region()) { src_cand = FALSE ; break ; } ;

            BB * pred_bb = (*preds)->BB_Node();
            if (BB_scheduled(pred_bb) || BB_ANNOT_processed (pred_bb)) {
                src_cand = FALSE ; break ; 
            } ;

            if (BB_length (pred_bb) > BB_SIZE_REG_PRESSURE_THRESHOLD || 
                BB_length (succ_bb) > BB_SIZE_REG_PRESSURE_THRESHOLD) { 
                src_cand = FALSE ; break ; 
            } ; 
        }

        if (!src_cand) continue ;

        Find_Source_BBs (succ_bb,siss_map_ptr);
    }
}


    /* =========================================================
     * 
     *   Express code motion constraints(1): data & control hazard
     *      Dep DAG construction and updating 
     *
     * ========================================================*/ 

void
SCHEDULER::Update_DAG(OP* op) {

    for (ARC_LIST* arcs = OP_preds(op);
        arcs != NULL;) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *pred = ARC_pred(arc);

        if (ARC_is_br(arc)                                  || 
            BB1_reachable_from_BB2 (pred->bb, _target_bb)   ||
            !BB1_reachable_from_BB2 (_target_bb,pred->bb)) {

            arcs = ARC_LIST_rest(arcs);
            CG_DEP_Detach_Arc(arc);
            continue;
        }

        arcs = ARC_LIST_rest(arcs);
    }

    for (ARC_LIST* arcs = OP_succs(op);
        arcs != NULL;) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *succ = ARC_succ(arc);

        if (ARC_is_br(arc)) {
            arcs = ARC_LIST_rest(arcs);
            CG_DEP_Detach_Arc(arc);
            continue;
        }

        arcs = ARC_LIST_rest(arcs);
    }

    _dag_constructor.Build_Branch_Arcs(op, INCLUDE_CONTROL_ARCS);
}

    /* =========================================================
     * 
     *   Express code motion constraints(2): structural hazard
     *     communicate with micro-scheduling 
     *
     * ========================================================*/ 

/* --------------------------------------------------------------------
 * Scheduling of current cycle is finished.  Advance to next cycle.
 * Clear all candidates' TRIED flag.  Inform Micro-Scheduler the 
 * beginning of a new cycle.
 * -------------------------------------------------------------------*/
void
SCHEDULER::Cycle_Advance (void) {

    Reset_M_READY_Candidates_Untried();
    Reset_P_READY_Candidates_Untried();

    CGGRP_Cycle_Advance();
    Add_Cand_After_Cycle_Advancing (); 

    if (SCHED_TF_SUMMARY_DUMP) {
        fprintf(TFile, "\n    Cycle: %d\n", _current_cycle);
    }


    /* next cycle start at least _current_cycle + 1 
     */
    ++_current_cycle ; 

    _ops_in_cur_cyc [_cur_cyc_op_num = 0] = NULL ;
}


    /* =========================================================
     * 
     *   Express code motion constraints(3): data flow 
     *     liveness info query & updating 
     *
     * ========================================================*/ 

BOOL
SCHEDULER::Are_Defs_Live_Out (OP* op, BB* target_bb) {

    for (INT i = 0; i < OP_results(op); ++i) {

        TN *result_tn = OP_result(op,i);
        if (GTN_SET_Intersection_MemberP(BB_live_out(target_bb), 
            BB_defreach_out(target_bb), result_tn)) {
            return TRUE;
        }

        if (TN_is_dedicated (result_tn) &&
            REG_LIVE_Implicit_Use_Outof_BB (TN_register_class(result_tn), 
					   TN_register(result_tn), target_bb)) {
            return TRUE ;
        }
    }

    return FALSE;
}

BOOL
SCHEDULER::Are_Defs_Live_Out (OP* op, SISS * siss_lst) {

    for (SISS_ITERATOR iter = siss_lst->begin (); 
        iter != siss_lst->end () ; iter++) {

        if (Are_Defs_Live_Out (op , *iter)) return TRUE; 
    }

    return FALSE ;
}

void 
SCHEDULER::Add_Live_In (BB* bbptr, OP* opptr) {

    for (INT i = OP_results(opptr) - 1 ; i >= 0 ; --i) {

        TN *result_tn = OP_result(opptr,i);

        Set_TN_is_global_reg (result_tn) ;
        GTN_UNIVERSE_Add_TN (result_tn) ;

        GRA_LIVE_Add_Defreach_In_GTN (bbptr,result_tn);
        GRA_LIVE_Add_Live_In_GTN (bbptr,result_tn);
    }
}

void 
SCHEDULER::Add_Live_Out (BB* bbptr, OP* opptr) {

    for (INT i = OP_results(opptr) - 1 ; i >= 0 ; --i) {

        TN *result_tn = OP_result(opptr,i);

        Set_TN_is_global_reg(result_tn) ;
        GTN_UNIVERSE_Add_TN (result_tn) ;
        GRA_LIVE_Add_Defreach_Out_GTN (bbptr,result_tn);
        GRA_LIVE_Add_Live_Out_GTN (bbptr,result_tn);
    }
}

void 
SCHEDULER::Update_Liveness_Info (
          SISS      * siss_lstp , 
          BB_VECTOR * siss_guarded_bb_ptr, 
          BB        * source_bb_ptr, 
          OP        * opptr) {

    if (!_global) return ;
    Is_True (siss_guarded_bb_ptr && source_bb_ptr 
             && siss_guarded_bb_ptr && opptr, 
            ("Update_Liveness_Info: invalid parameter!"));

    for (SISS_ITERATOR iter = siss_lstp->begin (); 
         iter != siss_lstp->end () ; iter++) {
        Add_Live_Out (*iter, opptr);
    }

    for (BB_VECTOR_ITER item = siss_guarded_bb_ptr->begin(); 
        item != siss_guarded_bb_ptr->end(); item++) {

        if (!*item) continue ;
        Add_Live_In (*item, opptr);
        Add_Live_Out (*item, opptr);
    }
  
    Add_Live_In (source_bb_ptr, opptr);
}


          /*=============================================
           *
           *    Candidates management
           *
           * =========================================*/

inline CANDIDATE* 
SCHEDULER::In_M_READY_Candidate_List (OP* op) {

    for (CAND_ITERATOR item = _M_READY_candidates.begin();
         item != _M_READY_candidates.end(); item++) {

        if ((*item)->_op == op) { return *item ; }
    }

    return NULL ; 
}

inline CANDIDATE* 
SCHEDULER::In_P_READY_Candidate_List(OP* op) {

    for (CAND_ITERATOR item = _P_READY_candidates.begin();
        item != _P_READY_candidates.end(); item++) {

        if ((*item)->_op == op) return *item ; 
    }

    return NULL ; 
}

CANDIDATE * 
SCHEDULER::Find_P_READY_Candidate (OP *op ) { 

    for (CAND_ITERATOR item = _P_READY_candidates.begin();
        item != _P_READY_candidates.end(); item++) {

        if ((*item)->_op == op) return *item ;
    }

    return NULL; 
}

void
SCHEDULER::Erase_P_READY_Candidate (OP *op) {

    for (CAND_ITERATOR item = _P_READY_candidates.begin();
        item != _P_READY_candidates.end(); item++) {

        if ((*item)->_op == op){
            _P_READY_candidates.erase (item) ; 
            return ;
        }
    }
}



BOOL
SCHEDULER::Try_Add_OP_to_Candidate_List (OP* op,SISS *siss_lstp) {

    Is_True (siss_lstp , ("siss_lstp cannot be NULL\n"));

    if (OP_Scheduled(op)) return FALSE;

    if (_before_regalloc && 
        (OP_glue(op) || OP_chk(op) || OP_no_move_before_gra(op) ||
         OP_access_reg_bank(op)) 
        && OP_bb(op) != _target_bb) {

        return FALSE;
    }

    /* If op already in candidate list, do nothing.
     */
    if (In_M_READY_Candidate_List (op) || 
        In_P_READY_Candidate_List (op)) {
        return FALSE;
    }

    if (OP_bb (op) != _target_bb && OP_is_pass_para (op)) {
        return FALSE ;
    }

    BOOL M_READY            = TRUE; 

        /* predicate_guarded = 
         *    NON-FALSE : <op>'s unscheduled pred, say x, define an 
         *                predicate px, by which <op> is guarded.
         *    FALSE     : othewise
         * 
         * to across <x>, we need change <op>'s guarded predicate px
         * to constant p0.
         *
         * Sign!! predicate-sensitive-code-motion has yet been fully 
         *        implemented in this ver. so this var plays an "emply"
         *        role.
         */
    BOOL predicate_guarded  = FALSE; 
    BOOL P_READY            = FALSE ;

        /* speculation involed */
    SPEC_TYPE spec_type = NO_SPEC; 

        /* keep track the aliasing 
         */
    #define MAX_UNRESOLVED_DOTTED_DATA_DEP   30 
    BB *  unresolved_dotted_data_dep_preds[MAX_UNRESOLVED_DOTTED_DATA_DEP] ;
    mINT8  unresolved_dotted_data_dep_preds_idx = -1 ;

        /* scheduling P-ready candidate <op> entails moving across 
         * unscheduled preds, and append one copy of <op> after this 
         * pred. To ease implementation and formulate cost model, we
         * required all these unscheduled predecessor centralize in 
         * in one BB indicated by <strict_dep_upon_bb>. If this kind 
         * of predecessors scatter in more than one BBs, <op> is not 
         * qualifed as an P-ready candidate. 
         *
         */
    BB *  strict_dep_upon_bb = NULL;   
    Is_True (_CG_DEP_op_info(op),
            ("No DEP info for op: %d 0x%x\tin BB: %d",
            OP_map_idx(op), op, BB_id(OP_bb(op))));

    BOOL post_chk_dep_unresolved = FALSE ;

        /* this many dependences should be violated if we schedule 
         * this candidate
         */
    INT32 violate_dep_num = 0 ;

    for (ARC_LIST* arcs = OP_preds(op);
        arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

        ARC *arc = ARC_LIST_first(arcs) ;
        OP *pred = ARC_pred(arc) ;

        if (!OP_Scheduled(pred)) {

            if (!_before_regalloc || BB_entry(OP_bb(op)) || 
                BB_exit(OP_bb(op))) {
                M_READY = P_READY = FALSE ;
                break ;
            }
        
            BOOL is_spec_in_this_iter = FALSE ; 
            BOOL is_data_spec = ARC_is_data_spec(arc) ;
            BOOL is_cntl_spec = ARC_is_control_spec(arc);

            BOOL is_reachable_from_SISS = !_global || 
                            Is_Reachable_From_SISS (OP_bb(pred), siss_lstp) ;

            /* ignore this case: 
             * unresolved dep's pred is NOT "BELOW" cutting set, and the pred 
             * != <_target_bb>, do not care the dep in question is "dotted" 
             * or strict.  
             */
            if (_global && !is_reachable_from_SISS && 
                OP_bb(pred) != _target_bb) {

                if (!is_data_spec && !is_cntl_spec && 
                    Is_Member_of_SISS (OP_bb(pred) ,siss_lstp)) {

                    if (pred == BB_xfer_op (OP_bb(pred))) {
                        return FALSE ;
                    }
                }

                continue ;
            }

            violate_dep_num ++ ;

            /* the unresolved dep upon arc->pred need strictly observing
             */
            if (!is_data_spec && !is_cntl_spec) {
                if (TOP_is_xfer (OP_code(ARC_pred(arc))) || 
                    OP_bb(pred) == _target_bb) {

                    M_READY = P_READY = FALSE ;
                    break ;
                }
         
                if (BB1_reachable_from_BB2 (OP_bb(pred) , _target_bb)) {

                    M_READY = FALSE ;
         
                    /* check if <op> is P_READY at <_target_bb>
                     */
                    if (P_READY_Cand_Disabled () || 
                        siss_lstp->size() < 2 ||
                        ARC_kind (arc) != CG_DEP_REGIN) {

                        P_READY = FALSE ; break ; 
                    }

                    if (!strict_dep_upon_bb) {
                        strict_dep_upon_bb = OP_bb(pred); 
                    }

                    if (strict_dep_upon_bb != OP_bb(pred)             || 
                        strict_dep_upon_bb == OP_bb(op)               ||
                        strict_dep_upon_bb == _highly_biased_branch_succ  ||
                        BB1_reachable_from_BB2 (strict_dep_upon_bb ,
                            _highly_biased_branch_succ)) {

                       /* we constraint all unresolved strict deps' pred 
                        * centralize on one bb
                        */
                        P_READY = FALSE ; break ;
                    }

                    P_READY = TRUE ;
                }

                continue ;
            }

            if (is_data_spec) {

                spec_type = SPEC_TYPE(spec_type | DATA_SPEC);

                /* keep track of the dotted data dep preds 
                 */
                if (unresolved_dotted_data_dep_preds_idx < 0) {

                    unresolved_dotted_data_dep_preds 
                      [unresolved_dotted_data_dep_preds_idx = 0] = 
                        OP_bb (pred) ;

                } else {

                    INT8 i;
                    for (i = 0 ; 
                         i <= unresolved_dotted_data_dep_preds_idx ; 
                         i++) 
                    {
                        if (unresolved_dotted_data_dep_preds[i] == 
                            OP_bb(pred)) { break ; }
                    }

                    if (i < MAX_UNRESOLVED_DOTTED_DATA_DEP && 
                        i > unresolved_dotted_data_dep_preds_idx) {

                        unresolved_dotted_data_dep_preds
                          [++unresolved_dotted_data_dep_preds_idx] = 
                             OP_bb (pred) ;
                    }
                }

            } else { 

                Is_True (is_cntl_spec, ("It must be control speculation!\n"));
                if (OP_call(pred)) {
                    M_READY = P_READY = FALSE ;
                    break ;
                }

                if (ARC_is_postchk(arc)) {
                    post_chk_dep_unresolved = TRUE ;
                }
            }

        }/* end of "if (!OP_Scheduled(pred))" */
    }
  
    /* at this point : 
     * (1) both M_READY and P_READY is FALSE ,or 
     * (2) one and only one of M_READY and P_READY is TRUE 
     */

    Is_True ((!M_READY || !P_READY) , 
             ("an candidate cannot be both M_READY and P_READY!\n"));

    if (M_READY || P_READY) {

        if (OP_bb(op) != _target_bb) {
            if (TOP_is_xfer (OP_code(op))) return FALSE ;

            BOOL b_cntl_equiv = ((_SISS_guarded_tuple3*) 
                    _src_bb_siss_map[OP_bb(op)]) -> b_cntl_equiv;

            if (!b_cntl_equiv) {

                if (Are_Defs_Live_Out (op,siss_lstp)) { return FALSE; }
                spec_type = SPEC_TYPE(spec_type | CNTL_SPEC);

            } else if (unresolved_dotted_data_dep_preds_idx < 0 || 
                       (!unresolved_dotted_data_dep_preds_idx && 
                        unresolved_dotted_data_dep_preds[0] == 
                        strict_dep_upon_bb)) {
                spec_type =  NO_SPEC;
            }
        
        } /* end of "if (OP_bb(op) != _target_bb)" */

        if (post_chk_dep_unresolved) {
            spec_type = SPEC_TYPE (spec_type | CNTL_SPEC);
        }

        if (spec_type != NO_SPEC) {
            if (OP_Is_Float_Mem(op) /* Currently do not speculate fp ld */
#ifdef Is_True_On
            ||!IPFEC_Enable_Speculation 
            ||(!IPFEC_Enable_Data_Speculation && (spec_type & DATA_SPEC) && 
              (fprintf (stderr, "op skipped (data_spec) pu/rgn/bb/map = %d/%d/%d/%d\n",
                      Current_PU_Count(), _region->Id(), BB_id(OP_bb(op)), 
                      OP_map_idx(op)),TRUE)) 
            ||(!IPFEC_Enable_Cntl_Speculation && (spec_type & CNTL_SPEC) &&
                (fprintf (stderr, "op skipped (cntl_spec) pu/rgn/bb/map = %d/%d/%d/%d\n",
                      Current_PU_Count(), _region->Id(), BB_id(OP_bb(op)), 
                      OP_map_idx(op)),TRUE))
            ||(gra_self_recursive && (spec_type & CNTL_SPEC) &&
                (fprintf (stderr, "op skipped (cntl_spec) pu/rgn/bb/map = %d/%d/%d/%d\n", 
                      Current_PU_Count(), _region->Id(), BB_id(OP_bb(op)),
                      OP_map_idx(op)),TRUE))
            ||(IPFEC_Query_Skiplist(spec_skip_bb, (INT32)BB_id(OP_bb(op)),
                  (INT32)Current_PU_Count()) && 
                (fprintf (stderr, "op skipped (spec_skip_bb) pu/rgn/bb/map = %d/%d/%d/%d\n",
                      Current_PU_Count(), _region->Id(), BB_id(OP_bb(op)), 
                      OP_map_idx(op)),TRUE))
            ||(IPFEC_Query_Skiplist(spec_skip_op, (INT32)OP_map_idx(op) , 
                    (INT32)BB_id(OP_bb(op))) && 
                (fprintf (stderr, "op skipped (skip_skip_op) pu/rgn/bb/map = %d/%d/%d/%d\n",
                      Current_PU_Count(), _region->Id(), BB_id(OP_bb(op)), 
                      OP_map_idx(op)),TRUE)) 
#endif 

        ) {
            return FALSE;
        }

        if (OP_cannot_spec (op)) {
            return FALSE ;
        }

        if ((spec_type == CNTL_SPEC || 
            spec_type == COMB_SPEC) && OP_bb(op) != _target_bb) {

            INT32 reach_prob_upboundary = 
                OP_load(op) ? _unsafe_cntl_spec_prob : _safe_cntl_spec_prob ;

            if (spec_type == CNTL_SPEC && OP_load (op) && 
                Ld_Need_Not_Transform (op)) {

                if (!Spec_Ld_In_Normal_Form_Is_Profitable (op)) { return FALSE ; }
                spec_type = NO_SPEC;

            } else if (BB_ANNOT_reachable_prob(OP_bb(op)) < 
                       reach_prob_upboundary) 
                return FALSE ;
            }

            if (OP_load (op)) {
                if (violate_dep_num > LD_VIOLATE_DEP_THRESHOLD) return FALSE ;
            } else if (violate_dep_num > VIOLATE_DEP_THRESHOLD) {
                return FALSE ;
            }
        } /* end of 'if (spec_type != NO_SPEC)' */ 

        OP_SCHED_INFO* tmp ;
        tmp = Get_OP_Heuristic_Info (op) ;


        if (!P_READY) 
            _M_READY_candidates.push_front (
                NewCandidate (op, spec_type, tmp->_etime,
                    FALSE , strict_dep_upon_bb, predicate_guarded));
        else
            _P_READY_candidates.push_front (
                NewCandidate (op, spec_type, tmp->_etime,
                    TRUE , strict_dep_upon_bb, predicate_guarded));

            return TRUE;
    }

    return FALSE;

#undef MAX_UNRESOLVED_DOTTED_DATA_DEP

}


void
SCHEDULER::Find_Candidates (SRC_BB_SISS_MAP *siss_map_ptr) {

    _M_READY_candidates.clear();
    _P_READY_candidates.clear();

    if (_global) 
        Determine_P_Ready_is_Profitable_or_not () ;
    else 
        Disable_P_Pready_Cand () ;

    for (BB_VECTOR_ITER item = _source_bbs.begin();
         item != _source_bbs.end(); item++) {

        OP* op;
        FOR_ALL_BB_OPs(*item, op) {
        
            Try_Add_OP_to_Candidate_List(op,
                (*siss_map_ptr)[OP_bb(op)]->siss_ptr);
        }
    }
  
    /* Candidate list should not be empty here.
     */
    Is_True(!(_M_READY_candidates.empty() && BB_length(_target_bb)),
          ("M-ready candidates should not be empty here!"));

}


inline BOOL
SCHEDULER::All_M_READY_Candidates_Tried (void) {

    for (CAND_ITERATOR item = _M_READY_candidates.begin();
        item != _M_READY_candidates.end(); item++) {

        if (!(*item)->_tried) return FALSE;
    }

    return TRUE;
}

inline BOOL
SCHEDULER::All_P_READY_Candidates_Tried (void) {

    for (CAND_ITERATOR item = _P_READY_candidates.begin () ;
         item != _P_READY_candidates.end() ; item ++) {

        if (!(*item)->_tried) return FALSE ;
    }
    
    return TRUE;
}

CANDIDATE *
SCHEDULER::NewCandidate (
    OP* op, SPEC_TYPE spec_type, CYCLE etime,
    BOOL Is_P_READY, BB * unresolved_dep_pred_bb , 
    BOOL predicate_guarded=FALSE) {

    CANDIDATE * cand_ptr ;
    if (_free_candidate_list) 
        cand_ptr = _free_candidate_list ;
    else
        cand_ptr = TYPE_MEM_POOL_ALLOC(CANDIDATE, &_mem_pool);

    if (cand_ptr == _free_candidate_list) {
        _free_candidate_list = (*(CANDIDATE**)_free_candidate_list); 
    }

    CAND_Init (cand_ptr,op, spec_type, etime,Is_P_READY, 
              unresolved_dep_pred_bb , predicate_guarded) ; 
}

inline void
SCHEDULER::FreeCandidate (CANDIDATE* cand_ptr) {
    (*(CANDIDATE**)_free_candidate_list) = cand_ptr ;
    _free_candidate_list = cand_ptr ;
}



inline CANDIDATE*
SCHEDULER::Select_Best_Candidate() {

    CANDIDATE * M_cand_ptr = Select_Best_Candidate(&_M_READY_candidates);

#ifdef Is_True_On 
    if (P_READY_Cand_Disabled()) {
        Is_True (M_cand_ptr , 
            ("there must be at least one M-ready candidate")); 
    }
#endif

    if (P_READY_Cand_Disabled() || 
       (M_cand_ptr && M_cand_ptr->_etime <= _current_cycle)) {
        return M_cand_ptr ;
    }

    CANDIDATE * P_cand_ptr = Select_Best_Candidate(&_P_READY_candidates);

    if (!M_cand_ptr || 
        (P_cand_ptr && (P_cand_ptr->_etime < M_cand_ptr->_etime))) {
        return P_cand_ptr ;
    } 

    /* We have no choise , but let pipeline stalled for some cycles 
     */
    return M_cand_ptr ; 
}



CANDIDATE*
SCHEDULER::Select_Best_Candidate(CANDIDATEs *Cand_List_ptr) {

    /* keep track "best" candidate's earliest issue cycle 
     * as well as its 'delay' (ref list scheduling for 
     * more details)
     */
    CYCLE e_time ; 
    e_time = INT32_MAX ;  

 
    /* using <ETime(cand), OP_bb(cand).freq ,Delay (cand)> as an 
     * heuristic to select an "best" candidate 
     */ 
    CAND_ITERATOR item = Cand_List_ptr->begin();

    OP_SCHED_INFO * op_sched_info = NULL;

    for (; item != Cand_List_ptr->end(); item++) {
        if ((*item)->_tried) continue ;
        CANDIDATE cand_temp = **item;

        op_sched_info = Get_OP_Heuristic_Info (cand_temp._op) ;

        (*item)->_etime = op_sched_info->_etime ;
        if (e_time > op_sched_info->_etime) {
            e_time = op_sched_info->_etime ;
        }
    }

    /* expected next cycle 
     */
    if (e_time == INT32_MAX) return NULL ;
    e_time = (e_time < _current_cycle) ? _current_cycle : e_time ;


    float max_delay_of_target_bb = -1.0;
    float max_delay_of_other_bb = -1.0 ;

    CANDIDATE * best_cand_of_other_bb = NULL, *best_cand_of_target_bb = NULL ;
   
    for (item = Cand_List_ptr->begin(); item != Cand_List_ptr->end(); 
         item++) {

        if ((*item)->_tried) continue ;

        CANDIDATE cand_temp = **item;
        if (cand_temp._etime > e_time) { continue ; }

        BB * home_bb = OP_bb(cand_temp._op);
        op_sched_info = Get_OP_Heuristic_Info (cand_temp._op) ;

        INT32 reach_prob = BB_ANNOT_reachable_prob (home_bb);

        if (home_bb == _target_bb) {
            float delay_temp = op_sched_info->_delay ;
            if (max_delay_of_target_bb < delay_temp) {
                max_delay_of_target_bb = delay_temp ;
                best_cand_of_target_bb = *item ; 
            }
        } else {

            float delay_temp = BB_ANNOT_reachable_prob (home_bb) * 
                               op_sched_info -> _delay / REACH_PROB_SCALE ;

            if (delay_temp > max_delay_of_other_bb) {
                max_delay_of_other_bb = delay_temp ;
                best_cand_of_other_bb = *item ;
            }
        }
    }

#define LARGE_DELAY_DIFF (5.0f)     

    return  best_cand_of_target_bb ? best_cand_of_target_bb :
                                     best_cand_of_other_bb ;

#undef  LARGE_DELAY_DIFF 

}

inline void
SCHEDULER::Reset_M_READY_Candidates_Untried() {

    for (CAND_ITERATOR item = _M_READY_candidates.begin();
        item != _M_READY_candidates.end();
        item++) {

        (*item)->_tried = FALSE;
    }
}

inline void
SCHEDULER::Reset_P_READY_Candidates_Untried() {

    for (CAND_ITERATOR item = _P_READY_candidates.begin();
        item != _P_READY_candidates.end(); item++) {

        (*item)->_tried = FALSE;

    }
} 

/* ====================================================================
 *
 *  Add_Cand_After_Cycle_Advancing 
 *
 *  For a processor which is feature by variable latency, we should
 *  adjust latency after cycle advance. this routine serve for this 
 *  purpose. 
 *
 *  TODO:
 *      this routines is implemented in harsh before 1st release.
 *      very few variable-latency are covered in this routine.
 * 
 * ====================================================================
 */
void
SCHEDULER::Add_Cand_After_Cycle_Advancing (void) {

    for (INT32 i = 0 ; i < _cur_cyc_op_num ; i++) {
        
        OP * succ, *op;
        op = _ops_in_cur_cyc[i];

        if (SCHED_TF_SUMMARY_DUMP) {
            Trace_Candidate_Updating (op,TFile);
        }

        for (ARC_LIST* arcs = OP_succs(op);
            arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

            ARC *arc = ARC_LIST_first(arcs);
            OP *succ = ARC_succ(arc);
            
            if (OP_Scheduled(succ)) continue ;

            BOOL can_move = FALSE;
            for (BB_VECTOR_ITER item = _source_bbs.begin();
                item != _source_bbs.end(); item++) {
                if (OP_bb(succ) == *item) {
                    can_move = TRUE;
                    break;
                }
            }
    
            if (!can_move) continue ;

            INT32 latency = ARC_latency(arc);
            if (latency == 0) { continue ; } 

            /* update heuristic info 
             */
            OP_SCHED_INFO * op_info = Get_OP_Heuristic_Info (succ) ;
            Is_True (op_info || (!op_info && OP_Scheduled(succ)), 
                ("fail to get OP's heuristic info\n")) ;

            /* It is better to query machine model for the variable
             * latency than this ad hoc approach. this routine 
             * is added few days before 1st release. machine model 
             * has no convenient interface for this purpose. 
             */
            if (OP_load(succ) && OP_bb(succ) == _target_bb && 
                (EXEC_PROPERTY_is_M_Unit(OP_code(op)) ||
                 EXEC_PROPERTY_is_I_Unit(OP_code(op)) 
                 && OP_m_unit(op))) {
                latency = max(latency-1, 0);  
            }

            if (op_info->_etime_set_by_which_bb != _target_bb) {
                op_info->_etime_set_by_which_bb = _target_bb ;
                op_info->_etime = _current_cycle + latency ; 
            } else if (op_info->_etime < _current_cycle + latency) {
                op_info->_etime = _current_cycle + latency ; 
            }
       
            _SISS_guarded_tuple3 * tri = _src_bb_siss_map[OP_bb(succ)] ;
            Is_True (tri, ("fail to find cutting set!\n"));  

            BOOL ADDED = Try_Add_OP_to_Candidate_List(succ,tri->siss_ptr);
            if (ADDED && SCHED_TF_SUMMARY_DUMP) {
                fprintf(TFile, "%d ", OP_map_idx(succ));
            }
        }
    }
  
    if (SCHED_TF_SUMMARY_DUMP) { fprintf(TFile, "\n"); }
  
}

void
SCHEDULER::Update_Candidate_List_During_Sched_Cyc 
             (CANDIDATE& cand,SISS* siss_lst) {

    OP* op = cand._op;
    OP* succ;

    Is_True(_CG_DEP_op_info(op),
            ("No DEP info for op: %d 0x%x\tin BB: %d",
            OP_map_idx(op), op, BB_id(OP_bb(op))));

    if (SCHED_TF_SUMMARY_DUMP) {
        Trace_Candidate_Updating (op,TFile);
    }

    for (ARC_LIST* arcs = OP_succs(op);
        arcs != NULL; arcs = ARC_LIST_rest(arcs)) {

        ARC *arc = ARC_LIST_first(arcs);
        OP *succ = ARC_succ(arc);


        BOOL can_move = FALSE;
        for (BB_VECTOR_ITER item = _source_bbs.begin();
            item != _source_bbs.end(); item++) {

            if (BB_id(OP_bb(succ)) == BB_id(*item)) {
                can_move = TRUE;
                break;
            }
        }
    

        if (can_move) {
            /* update heuristic info 
             */
            OP_SCHED_INFO * op_info = Get_OP_Heuristic_Info (succ) ;
            Is_True (op_info || (!op_info && OP_Scheduled(succ)), 
                ("fail to get OP's heuristic info\n")) ;

            INT32 latency = ARC_latency(arc);
            if (latency > 0) {
                op_info->_etime = _current_cycle + 1;
                continue ;
            }

            if (!op_info) continue ;

            if (op_info->_etime_set_by_which_bb != _target_bb) {

                op_info->_etime_set_by_which_bb = _target_bb ;
                op_info->_etime = _current_cycle + ARC_latency(arc); 

            }else if (op_info->_etime < _current_cycle + ARC_latency(arc)) {

                op_info->_etime = _current_cycle + ARC_latency(arc) ; 
            }
       
            _SISS_guarded_tuple3 * tri = _src_bb_siss_map[OP_bb(succ)] ;
            Is_True (tri, ("fail to find cutting set!\n"));  

            BOOL ADDED = Try_Add_OP_to_Candidate_List(succ,tri->siss_ptr);
            if (ADDED && SCHED_TF_SUMMARY_DUMP) {
                fprintf(TFile, "%d ", OP_map_idx(succ));
            }
        }
    }
  
    if (SCHED_TF_SUMMARY_DUMP) { fprintf(TFile, "\n"); }
  
    if (!cand._is_P_READY)
        _M_READY_candidates.remove (&cand);
    else
        _P_READY_candidates.remove (&cand);

} 
      
/* ===============================================================
 *
 *  Determine_P_Ready_is_Profitable_or_not 
 * 
 *  the routine name itself is enough describe its functinality
 * 
 * ================================================================
 */
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

    /* P-READY is not stable, we set _highly_biased_branch_succ to 
     * NULL and effectively turn off P-ready code motion
     */
     _highly_biased_branch_succ = NULL ;
}


/* ===================================================================
 *
 *                      Heuristic stuff 
 * 
 *  candidate's heuristic info consist of two component, namely, 
 *  earliest-exec-time and delay. ref list scheduling algorithm 
 *  for how delay is defined. Since in list scheduling, delay is 
 *  calculated within BB scope, it is not edequate when we extend 
 *  scheduling scope across BB's boundary. Hence we extend delay's 
 *  def to be: 
 *  
 *     Delay : OP -> real 
 *     Delay(x) = Exec(x)                                if x is leaf
 *              = bubbles-number (it is real/float)      otherwise
 *                during the interval from 
 *                control flow reach x throug
 *                flow leave control flow subgraph.
 *
 * ====================================================================
 */

void
SCHEDULER::init_heur_info (BB *bb) {

    if (!BB_ANNOT_heuristic_init(bb)) {

        OP * op ;
        OP_INFO_MAP * info_map = &BB_ANNOT_op_info_map(bb);
        OP_SCHED_INFO * sched_info ; /* for debugging*/

        FOR_ALL_BB_OPs (bb, op) {
            sched_info = CXX_NEW(OP_SCHED_INFO(),&_mem_pool);
            (*info_map)[op] = sched_info ;
        }
    }
}

void
SCHEDULER::init_heur_info (REGION * rgn) {

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter (rgn->Regional_Cfg()) ; 
        iter != 0 ; ++ iter) {

        if ((*iter)->Is_Region()) continue ;

        BB * bb = (*iter)->BB_Node () ;
        if (BB_entry (bb) || BB_exit(bb)) continue ;        

        init_heur_info ((*iter)->BB_Node()) ;
    }
}

/* ====================================================================
 *
 *  Get_OP_Heuristic_Info 
 * 
 *  return <op>'s heuristic info. NULL if it is not available
 *
 * ===================================================================
 */
inline OP_SCHED_INFO*
SCHEDULER::Get_OP_Heuristic_Info (OP *op) {
    return BB_ANNOT_op_info_map (OP_bb(op))[op] ; 
}



  /* ===================================================================
   * 
   *    Compute_Delay 
   *   
   *   compute <op>'s delay value, assume all ops(dep upon <op>)'s delay 
   *   has already been calculated
   *
   *   global_ver being true requires us cannot ignore dep arcs across
   *   BB boundary
   * ====================================================================
   */
void
SCHEDULER::Compute_Delay (
    OP * op, 
    SUCC_INFO * succ_info,
    INT32 succ_num,
    BOOL global_ver) 
{
    BOOL Is_Leaf = TRUE ;  
    BOOL delay_base_on_home_bb_op = TRUE;

    OP_SCHED_INFO *op_info = Get_OP_Heuristic_Info(op) ;
    BB * home_bb = OP_bb(op);

    float max_delay_base_on_home_bb = -1.0f ;
    float max_delay_base_on_succ_bb = -1.0f ;

    if (succ_info) {
        for (INT i = 0 ; i < succ_num ; i++) { 
            succ_info[i].max_delay = 0.0f ; 
        }
    }

    for (ARC_LIST* list = OP_succs(op);
        list ; list = ARC_LIST_rest(list)) {
        ARC * arc = ARC_LIST_first (list) ;
        OP  * succ = ARC_succ (arc);

        /* ignore control-arcs, so no-xfer-op can easily be hoisted or sink
         */
        switch (ARC_kind(arc)) {
        case CG_DEP_POSTBR :
        case CG_DEP_PREBR :
        case CG_DEP_PRECHK :
        case CG_DEP_POSTCHK :
             continue ;
        }

        BB * descendant_bb = OP_bb(succ);
        if (descendant_bb != home_bb && !global_ver) {
            continue ; 
        } 

        Is_Leaf = FALSE ;

        mINT16 latency = ARC_latency(arc) ;

        float delay = latency + 
                      Get_OP_Heuristic_Info(succ)->_delay;

        if (home_bb == descendant_bb) {
            max_delay_base_on_home_bb = 
                   (max_delay_base_on_home_bb > delay) ? 
                    max_delay_base_on_home_bb : delay ;

        } else {

            delay_base_on_home_bb_op = FALSE ;

            if (!succ_info) { 
                max_delay_base_on_succ_bb = 
                    (max_delay_base_on_succ_bb > delay) ? 
                     max_delay_base_on_succ_bb : delay ;
            } else {
                for (INT i = 0 ; i < succ_num ; i++) {
                    if ((descendant_bb == succ_info[i].succ || 
                        BB1_reachable_from_BB2 (descendant_bb,succ_info[i].succ)) &&
                        succ_info[i].max_delay < delay) {
                        succ_info[i].max_delay = delay ;
                    }
                }
            }

        }
    }


    if (Is_Leaf) { 

        /* TODO : set leaf node's value base on machine model.
         *        My exprement shows Exec_time() for leaf node
         *        is not good.
         */  

        if (TOP_is_xfer(OP_code(op))) { op_info->_delay = 0.0f ; } 
        else if (OP_load(op)) { op_info->_delay = 2.0f ; } 
        else { op_info->_delay = 1.0f ; }  ;

        return ;
    }

    if (delay_base_on_home_bb_op) {
        op_info->_delay = op_info->_delay > max_delay_base_on_home_bb ? 
                          op_info->_delay : max_delay_base_on_home_bb ;
        return ;
    }

    if (succ_info) { 
        max_delay_base_on_succ_bb = 0.0f;

        for (INT i = 0 ; i < succ_num ; i++) {
            max_delay_base_on_succ_bb += 
                succ_info[i].max_delay * succ_info[i].reach_prob ;
        }
    }

    float f = max_delay_base_on_succ_bb > max_delay_base_on_home_bb ? 
              max_delay_base_on_succ_bb : max_delay_base_on_home_bb ;
    op_info->_delay = op_info->_delay > f ? op_info->_delay : f ;
}


/* =====================================================================
 *
 *  Compute_Delay_4_Inserted_OP 
 * 
 *  convenient interface to Compute_Delay(OP*).
 *  which are called to compute delay mostly for the newly inserted OP, 
 *  hence the name.
 *
 * =====================================================================
 */
void
SCHEDULER::Compute_Delay_4_Inserted_OP (OP * op, BOOL global_ver) {

    if (!_global) {
        Compute_Delay (op, NULL, 0, global_ver);
        return ;
    } 

    REGIONAL_CFG_NODE * node = NULL; 
    REGIONAL_CFG  * cfg = NULL ;
    SUCC_INFO  succs_info[8], * psucc_info = NULL;
    INT32    succ_num = 0 ;

    node = Regional_Cfg_Node (OP_bb(op)) ;
    cfg  = Home_Region(OP_bb(op))->Regional_Cfg () ;
    succ_num = node->Succ_Num ();
        
    if (succ_num > 8) {
        psucc_info = TYPE_ALLOCA_N(SUCC_INFO,succ_num) ;  
    } else {
        psucc_info = &succs_info[0] ;
    }

    INT32 bb_succ_num = 0 ;

    REGIONAL_CFG_EDGE * edge ;
    for (edge = node->First_Succ() ; edge ; edge = edge->Next_Succ()) {
        REGIONAL_CFG_NODE * succ_node = edge->Dest() ;
            
        if (succ_node->Is_Region()) continue ;
        BB * succ_bb = succ_node->BB_Node();

        psucc_info[bb_succ_num].succ = succ_bb ;
        psucc_info[bb_succ_num].reach_prob = cfg->Edge_Prob (edge) ;
        psucc_info[bb_succ_num].flow_shift_latency = 1 ;
        psucc_info[bb_succ_num++].max_delay = 0.0f;
    }
        
    succ_num = bb_succ_num ;
    if (!bb_succ_num) { psucc_info = NULL ; } 

    Compute_Delay (op, psucc_info, succ_num,global_ver);
}

/* =======================================================================
 *
 *  Compute_Delay 
 * 
 *  compute delay for each OP which initially resides in <bb>
 * 
 * ======================================================================
 */

void
SCHEDULER::Compute_Delay (BB * bb, BOOL global_ver) {

    /* reverse-topological traverse ops 
     */
    if (!BB_ANNOT_need_adjust_delay(bb)) return ;

    REGIONAL_CFG_NODE * node = NULL; 
    REGIONAL_CFG  * cfg = NULL ;
    SUCC_INFO  succs_info[8], * psucc_info = NULL;
    INT32    succ_num = 0 ;

    if (_global) { 

        node = Regional_Cfg_Node (bb) ;
        cfg  = Home_Region(bb)->Regional_Cfg () ;
        succ_num = node->Succ_Num ();
        
        if (succ_num > 8) {
            psucc_info = TYPE_ALLOCA_N(SUCC_INFO,succ_num) ;  
        } else {
            psucc_info = &succs_info[0] ;
        }

        INT32 bb_succ_num = 0 ;

        REGIONAL_CFG_EDGE * edge ;
        for (edge = node->First_Succ() ; edge ; edge = edge->Next_Succ()) {
            REGIONAL_CFG_NODE * succ_node = edge->Dest() ;
            
            if (succ_node->Is_Region()) continue ;
            BB * succ_bb = succ_node->BB_Node();

            psucc_info[bb_succ_num].succ = succ_bb ;
            psucc_info[bb_succ_num].flow_shift_latency = 
                (succ_bb == BB_next(bb)) ? 1 :
                CGTARG_Branch_Taken_Penalty ();
            psucc_info[bb_succ_num].reach_prob = cfg->Edge_Prob (edge) ;
            psucc_info[bb_succ_num++].max_delay = 0.0f;
        }
        
        succ_num = bb_succ_num ;
        if (!bb_succ_num) { psucc_info = NULL ; } 
    }

    OP * op ;
    FOR_ALL_BB_OPs_REV (bb, op) {
        Compute_Delay (op, psucc_info, succ_num, global_ver); 
    }

    BB_ANNOT_need_adjust_delay (bb) = FALSE ;
}

/* ========================================================================
 * 
 *  Compute_Delay 
 * 
 *  Compute delay for each op which initially reside in <rgn>.(not 
 *  including <rgn>'s inner region)
 *
 * ========================================================================
 */
void
SCHEDULER::Compute_Delay (REGION *rgn, BOOL global_ver) {

    for (REVERSE_TOPO_REGIONAL_CFG_ITER iter(rgn->Regional_Cfg()) ; 
        iter != 0 ; ++iter) {
        if ((*iter)->Is_Region()) continue ;
        BB * bb = (*iter)->BB_Node ();
        if (BB_exit (bb) || BB_entry (bb)) continue;

        Compute_Delay ((*iter)->BB_Node (), global_ver);
    }

}

    /* ===================================================================
     *
     *  Adjust_Delay 
     * 
     *  keep each op(within <rgn>)'s delay up-to-date if necessary
     * 
     * ===================================================================
     */
void
SCHEDULER::Adjust_Delay (REGION *rgn, BOOL global_ver) {

    for (REVERSE_TOPO_REGIONAL_CFG_ITER iter(rgn->Regional_Cfg()) ; 
        iter != 0 ; ++iter) {
        if ((*iter)->Is_Region()) continue ;

        BB * bb = (*iter)->BB_Node () ;
        if (BB_entry (bb) || BB_exit(bb) || !BB_ANNOT_need_adjust_delay(bb)) {
            continue ;
        }

        Compute_Delay (bb, global_ver);
    }

}

    /* =================================================================
     *
     *   Reset_BB_OPs_etime 
     *   
     *   set each op(in <bb>)'s e-time be 0 
     * 
     * ==================================================================
     */
inline void
SCHEDULER::Reset_BB_OPs_etime (BB *bb) {

    OP * op ;
    FOR_ALL_BB_OPs (bb, op) {
       (Get_OP_Heuristic_Info (op))-> _etime = 0;
    }

}

void
SCHEDULER::Reset_BB_OPs_etime (BB_VECTOR *bbs) {

    for (BB_VECTOR_ITER iter = bbs->begin () ; iter != bbs->end () ; iter++) {
        Reset_BB_OPs_etime (*iter);
    }

}

    /* ==============================================================
     * 
     *            Load transform 
     *
     * ==============================================================
     */
BOOL
SCHEDULER::Ld_Need_Not_Transform (OP* op) {

    Is_True (OP_load (op), ("OP is not load"));

    for (INT i = 0 ; i < OP_results (op) ; i ++) {
        TN * result = OP_result (op,i); 
        if (!TN_is_rematerializable(result)) continue ;

        WN * home = TN_home(result); if (!home) continue ;

        if (WN_operator(home) == OPR_LDA) return TRUE;
    }
  
    return FALSE ;
}


inline BOOL
SCHEDULER::Spec_Ld_In_Normal_Form_Is_Profitable (OP *op) {
    return BB_ANNOT_reachable_prob (OP_bb(op)) > 60 ;
}

    /* ===============================================================
     * 
     *            Reachable-information stuff
     *
     * ===============================================================
     */


inline void
SCHEDULER::Union_BB_Reachable_Vector (mINT8 * target_vector_p, mINT8 * src_vector_p, 
            INT16 vector_size_in_bytes) {
    while (vector_size_in_bytes) {
        target_vector_p[vector_size_in_bytes-1] |= 
            src_vector_p[vector_size_in_bytes-1]; 
        vector_size_in_bytes -- ;
    }
}

inline BOOL
SCHEDULER::BB1_reachable_from_BB2(BB* bb1 , BB* bb2) {
  
    mINT8 * vector_ptr = _reachable_matrixp[Get_Contiguous_BB_ID(bb2)];

    UINT16 bb1_cont_id = Get_Contiguous_BB_ID(bb1);

    return vector_ptr[bb1_cont_id / 8] & (1 << (bb1_cont_id & 7));
}

inline void
SCHEDULER::Set_BB1_reachable_from_BB2 (BB * bb1, BB* bb2) {

    mINT8 * vector_ptr = _reachable_matrixp[Get_Contiguous_BB_ID(bb2)];

    UINT16 bb1_cont_id = Get_Contiguous_BB_ID (bb1) ;

    vector_ptr[bb1_cont_id / 8] |= (1 << (bb1_cont_id & 7)) ;
}

inline void
SCHEDULER::Set_BB_is_reachable (mINT8 * reachable_vector_ptr, BB * bb) {

    UINT16 bb_cont_id = Get_Contiguous_BB_ID (bb) ;
    reachable_vector_ptr[bb_cont_id / 8] |= (1 << (bb_cont_id & 7)) ;
}

inline BOOL
SCHEDULER::Is_BB_reachable (mINT8 *reachable_vector_ptr, BB *bb) {

    UINT16 bb_cont_id = Get_Contiguous_BB_ID (bb) ;
    return (BOOL)(reachable_vector_ptr[bb_cont_id / 8] & (1 << (bb_cont_id & 7))) ;

}

inline mINT8 * 
SCHEDULER::Create_BB_Reachable_Vector (UINT16 size_in_bytes) {

    mINT8 * vector_ptr = (mINT8*)MEM_POOL_Alloc (&_mem_pool, size_in_bytes); 
    bzero (vector_ptr, (size_t)size_in_bytes); 

    return vector_ptr ;
}

inline INT32 *
SCHEDULER::Create_BB_Reachable_Prob_Vector (UINT16 size_in_bytes) {

    INT32 * vector_ptr = (INT32*)MEM_POOL_Alloc (&_mem_pool,size_in_bytes) ;
    bzero (vector_ptr, (size_t)size_in_bytes) ;

    return vector_ptr ;
}

inline INT32
SCHEDULER::Get_BB_Reachable_Prob(BB * targ_bb, BB* src_bb) {

    INT32 * vector_ptr = _reachable_prob_matrixp[Get_Contiguous_BB_ID(targ_bb)];
    Is_True (vector_ptr, ("reachable prob is NULL")) ;

    return  vector_ptr[Get_Contiguous_BB_ID(src_bb)];
}

inline void
SCHEDULER::Set_BB_Reachable_Prob(BB* targ_bb, BB* src_bb,INT32 prob) {

    INT32 * vector_ptr = _reachable_prob_matrixp[Get_Contiguous_BB_ID(targ_bb)];
    Is_True (vector_ptr, ("reachable prob is NULL")) ;

    *(vector_ptr+Get_Contiguous_BB_ID(src_bb)) = prob;
}

inline void
SCHEDULER::Set_BB_Reachable_Prob(REGION* rgn, BB* src_bb,INT32 prob) {

    INT32 * vector_ptr = RGN_ANNOT_Get_BB_Reachable_Prob_Vector (rgn);
    Is_True (vector_ptr, ("reachable prob is NULL")) ;

    *(vector_ptr+Get_Contiguous_BB_ID(src_bb)) = prob;
}

inline void
SCHEDULER::Set_BB_Reachable_Prob(INT32 *vector_ptr, BB* src_bb,INT32 prob) {
    *(vector_ptr+Get_Contiguous_BB_ID(src_bb)) = prob;
}

inline void
SCHEDULER::fused_mult_Add_BB_Reachable_Prob_Vector (INT32 * target_vect, 

    INT32 * src_vect, INT16 element_num, float mult_by) {

    for (INT i = 1 ; i <= element_num ; i ++) {

        target_vect[i] =  INT32(target_vect[i] + 
                          src_vect[i]*mult_by) ;
    }
}

/* 
 * func : Build_Reachable_Prob_Matrix 
 * desc :
 *        build a matrix with each element(bbx,bby) hold a INT32 value 
 *        which indicate the reachable prob(scale 100) from bbx to bby
 */
BOOL
SCHEDULER::Build_Reachable_Prob_Matrix () {
    _reachable_prob_matrixp = (INT32**) MEM_POOL_Alloc (&_mem_pool,
        (_BB_num_in_cur_scope + mCONT_BB_NUM_BASE) * sizeof(INT32*)) ;

    _BB_REACHABLE_PROB_VECTOR_SIZE = 
        (_BB_num_in_cur_scope + mCONT_BB_NUM_BASE) * sizeof(INT32);

    for (INT i = 0 ; i <= _BB_num_in_cur_scope ; i++) {
        _reachable_prob_matrixp [i] = 
        Create_BB_Reachable_Prob_Vector (_BB_REACHABLE_PROB_VECTOR_SIZE) ; 
    } 

    REGIONAL_CFG * rgn_cfg = _region->Regional_Cfg() ;

    for (REVERSE_TOPO_REGIONAL_CFG_ITER cfg_iter (rgn_cfg) ; 
         cfg_iter != 0 ; ++ cfg_iter) {

        INT32 * this_node_reachable_prob_vector = 
            GET_CFG_NODE_BB_Reachable_Prob_Vector (*cfg_iter) ;

        for (CFG_SUCC_NODE_ITER succ_iter(*cfg_iter) ; 
             succ_iter != 0 ; ++succ_iter) {

            INT32 * succ_node_reachable_prob_vector = 
                GET_CFG_NODE_BB_Reachable_Prob_Vector (*succ_iter) ;

            fused_mult_Add_BB_Reachable_Prob_Vector (
                this_node_reachable_prob_vector,
                succ_node_reachable_prob_vector, 
                _BB_num_in_cur_scope ,
                rgn_cfg->Edge_Prob ((*succ_iter)->Find_Pred_Edge(*cfg_iter)));

        }

        if (!(*cfg_iter)->Is_Region()) {
            Set_BB_Reachable_Prob (this_node_reachable_prob_vector,
                (*cfg_iter)->BB_Node(),100) ;
        }
    }
}

void
SCHEDULER::Cache_Reachable_Prob () {

    for (BB_VECTOR_ITER item = _source_bbs.begin(); 

        item != _source_bbs.end(); item++) {
        BB_ANNOT_reachable_prob(*item) = 
            Get_BB_Reachable_Prob (_target_bb, *item);

    }
}


BOOL
SCHEDULER::Build_Reachable_Matrix (BB_VECTOR *region_bbs) {

    if (_reachable_matrixp) return TRUE ;

    Map_BBs_id_to_Contiguous_Range_Ints () ;
    _reachable_matrixp = (mINT8**) MEM_POOL_Alloc (&_mem_pool,
        (_BB_num_in_cur_scope + mCONT_BB_NUM_BASE) * sizeof(mINT8*)) ;

    _BB_REACHABLE_VECTOR_SIZE = (INT16)((_BB_num_in_cur_scope + 7) / 8)+1;

    for (INT16 i = 0 ; i <= _BB_num_in_cur_scope ; i ++) {
        _reachable_matrixp[i] = 
            Create_BB_Reachable_Vector (_BB_REACHABLE_VECTOR_SIZE);
    }

    for (REVERSE_TOPO_REGIONAL_CFG_ITER cfg_iter (_region->Regional_Cfg());
       cfg_iter != 0 ; ++ cfg_iter) {

        mINT8 * this_node_reachable_vector = 
            GET_CFG_NODE_BB_Reachable_Vector (*cfg_iter);

        for (CFG_SUCC_NODE_ITER succ_iter(*cfg_iter);
             succ_iter != 0; ++succ_iter) {

            mINT8 * succ_reachable_vector = 
                GET_CFG_NODE_BB_Reachable_Vector (*succ_iter);

            if (!(*succ_iter)->Is_Region()) {
                Set_BB_is_reachable (this_node_reachable_vector , 
                                     (*succ_iter)->BB_Node());
            }

            Union_BB_Reachable_Vector (this_node_reachable_vector, 
                                       succ_reachable_vector,
                                       _BB_REACHABLE_VECTOR_SIZE) ;
        } /* inner for-loop */
    }
  
    return TRUE ;
} 

/* =================================================================
 *
 *  Build_Reachable_Stuff 
 * 
 *  set up reachable-related stuff properly
 * 
 * ================================================================
 */
BOOL
SCHEDULER::Build_Reachable_Stuff (BB_VECTOR *region_bbs) {

    Build_Reachable_Matrix (region_bbs) ; 
    Build_Reachable_Prob_Matrix () ;

}

/* ================================================================
 * 
 *  Is_Reachable_From_SISS 
 * 
 *  return TRUE if <bbptr> is reachable from <siss_ptr> FALSE 
 *  otherwise
 *
 *  NOTE: if <bbptr> is a member of <siss_ptr>, we consider <bbptr>
 *        is not reachable from <siss_ptr>
 * 
 * ================================================================
 */
BOOL
SCHEDULER::Is_Reachable_From_SISS (BB* bbptr,SISS *siss_ptr) {

    Is_True (siss_ptr && _reachable_matrixp ,
        ("!siss_map_ptr || !_reachable_matrixp"));

    for (SISS_ITERATOR iter = siss_ptr->begin (); 
        iter != siss_ptr->end () ; iter++) {

        if (BB1_reachable_from_BB2 (bbptr, *iter))
            return TRUE ; 
    }
  
    return FALSE ; 
}

/* ================================================================
 * 
 * Is_Member_of_SISS 
 * 
 * return TRUE if <bbptr> is a member of <siss_ptr>, FALSE otherwise
 * 
 * ================================================================
 */
BOOL 
SCHEDULER::Is_Member_of_SISS (BB *bbptr , SISS* siss_ptr) {

    for (SISS_ITERATOR  iter = siss_ptr->begin() ; 
         iter != siss_ptr->end() ; iter++) {

        if (bbptr == *iter) return TRUE ;

    }

    return FALSE ;
}


    /* =================================================================
     *
     *          Compute SISS (Strong Indepndent Seperating Set, ref 
     *  this paper for detail: D.Bernstein, D.Cohen, And H.Krawcyzk: 
     *  Code duplication: An asist for global instruction scheduling.
     *  Proceedings of MICRO24,IEEE Computer Society, p103 - 113)
     *  
     *  Mark_Reachable_BBs, BB_SetMarked, BB_IsMarked is supporting 
     *  routines.
     *
     * =================================================================       
     */ 
inline void
SCHEDULER::Mark_Reachable_BBs (BB* startptr) {

    Union_BB_Reachable_Vector (_marked_bb_vector_ptr, 
            _reachable_matrixp[Get_Contiguous_BB_ID(startptr)],
            _BB_REACHABLE_VECTOR_SIZE) ;

}

inline void
SCHEDULER::BB_SetMarked (BB* bb) {

    Set_BB_is_reachable (_marked_bb_vector_ptr, bb) ;

}

inline BOOL
SCHEDULER::BB_IsMarked (BB* bb) {

    return Is_BB_reachable (_marked_bb_vector_ptr, bb);

}

struct SCHEDULER::_SISS_guarded_tuple3 *
SCHEDULER::Compute_SISS (BB* destptr , BB* srcptr) {

    SISS *siss_lstp = CXX_NEW (SISS,&_mem_pool); 
    siss_lstp->push_front(srcptr) ;

    if (destptr == srcptr) {

        struct _SISS_guarded_tuple3 * trituple = 
                CXX_NEW (struct SCHEDULER::_SISS_guarded_tuple3, 
                         &_mem_pool);

        trituple->siss_ptr      = siss_lstp ;
        trituple->guarded_ptr   = CXX_NEW (BB_VECTOR(BB_ALLOC(&_mem_pool)), 
                                           &_mem_pool); 
        return trituple;

    }

    BB_SET * visited_cnt = BB_SET_Create_Empty (PU_BB_Count + 2, 
                                                &_mem_pool);
    #define BB_VISITED(x)      (BB_SET_MemberP(visited_cnt,(x)))
    #define SET_BB_VISITED(x)  { visited_cnt = BB_SET_Union1D(visited_cnt, \
                                                   (x), &_mem_pool) ; }
    if (!_marked_bb_vector_ptr) {
        _marked_bb_vector_ptr = 
            Create_BB_Reachable_Vector (_BB_REACHABLE_VECTOR_SIZE) ;
    } else {
        bzero (_marked_bb_vector_ptr ,_BB_REACHABLE_VECTOR_SIZE);
    }

    Mark_Reachable_BBs (destptr) ;
    Is_True (BB_IsMarked(srcptr), ("Src BB:%d has not been marked", 
                                   BB_id(srcptr)));

    BB_VECTOR *p_SISS_guarded = CXX_NEW (
                                    BB_VECTOR(BB_ALLOC(&_mem_pool)), 
                                    &_mem_pool) ;

    BOOL changed = TRUE ;
    while (changed && !BB_IsMarked (destptr)) {

        changed = FALSE ;

        for (SISS_ITERATOR iter = siss_lstp->begin() ; 
            iter != siss_lstp->end() ;) {

            if (BB_IsMarked (*iter)) {
                BBLIST *pred ;

                BB* bbp = *iter ;

                /* before pushing or poping any <BB> , we keep track of 
                 * these <BB>s as visited <BB>s
                 */
                SET_BB_VISITED (*iter);

                iter = siss_lstp->erase (iter) ;  

                for (CFG_PRED_NODE_ITER pred_iter(Regional_Cfg_Node(bbp));
                     pred_iter != 0; ++pred_iter) {

                    if (!(*pred_iter)->Is_Region()) {

                        bbp = (*pred_iter)->BB_Node(); 
                        if (!BB_VISITED (bbp)) {

                            siss_lstp->push_front(bbp);
                            ((BB_VECTOR*)p_SISS_guarded)->push_back(bbp);
                            SET_BB_VISITED (bbp);
                            Mark_Reachable_BBs (bbp) ;
                        }
                    } else {
                        siss_lstp->clear () ; 
                        CXX_DELETE(siss_lstp,&_mem_pool); 
                        return NULL ; 
                    }
                }

                changed = TRUE ;
            } else { ++ iter ; }
        }
    }

    /* make sure that <destptr> in the <siss_lstp> 
     */
    BOOL invalid_siss = TRUE ; 
    for (SISS_ITERATOR iter = siss_lstp->begin() ; 
        iter != siss_lstp->end() ; iter ++) { 

        if (*iter == destptr) {
            invalid_siss = FALSE ; break ; 
        }
    } 

    if (BB_IsMarked (destptr) || invalid_siss) {
        siss_lstp->clear () ;
        CXX_DELETE(siss_lstp,&_mem_pool);
        return NULL ; 
    }
  
    for (BB_VECTOR_ITER item = ((BB_VECTOR*)p_SISS_guarded)->begin(); 
        item != ((BB_VECTOR*)p_SISS_guarded)->end(); item++) {

        /* set the pointer to element of SISS to be NULL
         */
        if (!BB_IsMarked(*item)) *item = NULL ;
    }

    struct _SISS_guarded_tuple3 * trituple = 
          CXX_NEW (struct _SISS_guarded_tuple3, &_mem_pool);

    trituple -> siss_ptr        = siss_lstp ;
    trituple -> guarded_ptr     = p_SISS_guarded;
    trituple -> b_cntl_equiv    = 
        Is_Cntl_Equiv (trituple -> siss_ptr, srcptr) ; 

    return  trituple;

    #undef BB_VISITED
    #undef SET_BB_VISITED
}





    /* ===================================================================
     * ===================================================================
     *
     *      Code motion dup and committing
     *
     * ==================================================================
     * ==================================================================
     */

/* =====================================================================
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
BOOL 
SCHEDULER::Append_Dup_Op_2_BB (OP *op , BB * bb) {

    /* forbid append op to an invalid <bb> or one 
     * that has already been scheduled
     */
    if (!bb || bb && BB_scheduled(bb)) return FALSE ;

    OP *last_op = BB_last_op (bb) ;
    if (last_op && TOP_is_xfer (OP_code(last_op))) {
        /* the last op of bb is branch , insert very before it 
         */
        BB_Insert_Op_Before (bb, last_op, op) ;
    } else {
        /* empty bb or the last op is not branch, append <op>
         * at the end of <bb>
         */
        BB_Append_Op (bb, op) ;
    }

    if (!BB_ANNOT_first_append_op (bb)) {
        BB_ANNOT_first_append_op (bb) = op ;
    }

    BB_ANNOT_need_adjust_delay(bb) = TRUE ;

    BB_ANNOT_op_info_map(OP_bb(op))[op] = 
        CXX_NEW(OP_SCHED_INFO(),&_mem_pool);

    return TRUE ;
}

/* ==================================================================
 *
 *  Identify_Cannot_Spec_OPs 
 *
 *  identify all ops(of bb <bb_ptr>) that cannot be speculated
 * 
 * ==================================================================
 */
void
SCHEDULER::Identify_Cannot_Spec_OPs (BB *bb_ptr) {

    OP * op_ptr ;
    FOR_ALL_BB_OPs(bb_ptr, op_ptr) {
    
        if (OP_like_store (op_ptr)) Set_OP_cannot_spec (op_ptr) ; 

        if (OP_load (op_ptr)) {

            for (INT i = OP_results(op_ptr) - 1 ; i >= 0 ; --i) {

                TN * result_tn = OP_result (op_ptr,i) ;
                for (INT j = OP_opnds(op_ptr) - 1 ; j >= 0 ; --j) {
                    if (result_tn == OP_opnd(op_ptr,j)) {
                        Set_OP_cannot_spec (op_ptr) ; 
                    }
                }
            } 
        }

        if (OP_fdiv (op_ptr) || OP_idiv(op_ptr) || OP_sqrt (op_ptr)) {
            Set_OP_cannot_spec (op_ptr);
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
SCHEDULER::Identify_Cannot_Spec_OPs(REGION *rgn_ptr) {

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter (rgn_ptr->Regional_Cfg()) ;
        iter != 0 ; ++ iter) {

        if ((*iter)->Is_Region()) continue ; 
        Identify_Cannot_Spec_OPs ((*iter)->BB_Node()); 
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
SCHEDULER::Commit_Schedule (CANDIDATE& cand,
    struct _SISS_guarded_tuple3 *pair) {

    OP* op = cand._op;
    BOOL BRANCH_SCHEDULED = op == BB_xfer_op(_target_bb);
    BOOL DAG_NEED_UPDATE = OP_bb(op) != _target_bb;

    SISS *siss_lstp = pair ? pair->siss_ptr : NULL ;
    INT cutting_set_size = siss_lstp ? siss_lstp->size() : 1 ;

    BB* home_bb = OP_bb(op);
    BOOL need_chk_insertion = FALSE ;

    if (Tlog_File) {
        Init_TLog_Buf () ;
        Append_Str_2_Buf (_before_motion, "op (srcbb/mapidx = %d/%d etime = %d", 
            BB_id(OP_bb(op)),OP_map_idx(op),cand._etime) ;
        
        Print_OP (cand._op, _before_motion_buf_next) ;
        _before_motion_buf_next += strlen (_before_motion_buf_next);
    }


    if (op == _frontier_op) {
        _frontier_op = OP_next(_frontier_op);
    } else {
        OP* pos = OP_prev(op);

        if (CAND_is_spec(&cand) && OP_load(op) && 
            !CGTARG_Is_OP_Speculative(op) && 
            !CGTARG_Is_OP_Check_Load(op) &&
            !(IPFEC_Enable_Safety_Load && 
            (OP_no_alias(op) || 
             (cand._spec_type == CNTL_SPEC && OP_safe_load(op))))) {

            need_chk_insertion = TRUE ;

            if (cutting_set_size > 1 || cand._spec_type == COMB_SPEC) {
                Change_ld_Form(op, ECV_ldtype_sa);
            } else if (cand._spec_type == DATA_SPEC) {
                Change_ld_Form(op, ECV_ldtype_a);
            } else { 
                Change_ld_Form(op, ECV_ldtype_s);
            } 

            if (Tlog_File) {
                char * variant_name = NULL ;
                switch (cand._spec_type) {
                case DATA_SPEC:
                    variant_name = ".a" ;
                    break ;

                case CNTL_SPEC :
                    variant_name = ".s" ;
                    break ;
                default :
                    variant_name = ".sa" ;
                }

                Append_Str_2_Buf (_after_motion,"tranformed to variant %s", 
                              variant_name);
            }
        }

        /* move OP to <_target_bb> 
         *
         * After code motion, operation got new map_idx.
         * So we need to save and restore the dependence info.
         */
        BB_OP_MAP omap;
        omap = (BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info, OP_bb(op));
        _CG_DEP_OP_INFO *info = (_CG_DEP_OP_INFO *) BB_OP_MAP_Get(omap, op);
    
        if (!_frontier_op) {
            /* All ops in target BB have been scheduled.
             */
            Is_True(_target_bb != OP_bb(op), 
                    ("_frontier_op shouldn't be NULL.\n"));
            BB_Move_Op_To_End(_target_bb, OP_bb(op), op);

        } else {
            BB_Move_Op_Before(_target_bb, _frontier_op, OP_bb(op), op);
        }
    
        if (Tlog_File) {
            Append_Str_2_Buf (_after_motion, "op bb/mapidx = %d/%d", 
                              BB_id(OP_bb(op)),OP_map_idx(op)) ;
        }

        omap = (BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info, OP_bb(op));
        BB_OP_MAP_Set(omap, op, info);
    
        if (need_chk_insertion) {
            Is_True(!OP_Is_Float_Mem(op), ("fp ld shouldn't be spec now.\n"));

            vector<OP*> dup_ops;
            OP *chk_op = Insert_CHK(op, dup_ops, home_bb, pos, OP_opnd(op, OP_PREDICATE_OPND));
      
            #ifdef Is_True_On

            for (ARC_LIST* arcs = OP_preds(chk_op);
                arcs != NULL; arcs = ARC_LIST_rest(arcs)) {
                ARC * arc = ARC_LIST_first(arcs) ;

                Is_True (ARC_latency(arc) >= 0, ("negative latency!")) ;
            }

            for (ARC_LIST * arcs = OP_succs(chk_op) ;
                arcs != NULL ; arcs = ARC_LIST_rest (arcs)) {

                ARC * arc = ARC_LIST_first (arcs) ;
                Is_True (ARC_latency(arc) >= 0, ("negative latency!")) ;
            }

            #endif /* Is_True_On */

            for (ARC_LIST * arcs = OP_succs(chk_op) ;
                 arcs != NULL ; arcs = ARC_LIST_rest (arcs)) {

                ARC * arc = ARC_LIST_first (arcs) ;
                CANDIDATE * pcand = NULL; 
                CANDIDATEs  * pcand_list = NULL ;
                pcand = In_M_READY_Candidate_List (ARC_succ (arc)) ;
                pcand_list = &_M_READY_candidates;

                if (!pcand) {
                    pcand = In_P_READY_Candidate_List (ARC_succ (arc));
                    pcand_list = &_P_READY_candidates;
                }


                if (!pcand) continue ;
                if (!ARC_is_dotted (arc) || OP_baneful(ARC_succ(arc))) {
                    pcand_list->remove(pcand);
                } else if (OP_load (ARC_succ(arc)))

                pcand->_spec_type = SPEC_TYPE (pcand->_spec_type | CNTL_SPEC); 
            }

            BB_ANNOT_op_info_map(
                OP_bb(chk_op))[chk_op] = CXX_NEW(OP_SCHED_INFO(),&_mem_pool);

            if (home_bb == _target_bb)
                Compute_Delay_4_Inserted_OP (chk_op);
            else
                BB_ANNOT_need_adjust_delay(home_bb) = TRUE ;
      
            if (Tlog_File) {
                Append_Str_2_Buf (_aux_info,
                        "with check op insertion bb/map_idx = %d/%d\n",
                         BB_id(OP_bb(chk_op)),OP_map_idx(chk_op));
            }
        }

        /* If this op is predicate-guarded by one of its preds (unscheduled) 
         * and is speculatively moved across this pred, we should change its 
         * qulifing predicate to be True_TN.
         * 
         * We perform this action very after Insert_CHK to make sure the cor-
         * responding check-op has the same qualifing predicate with that of 
         * <op>'s (before being moved).
         */

        if (cand._predicate_guarded) {
            Set_OP_opnd (op,OP_PREDICATE_OPND,True_TN);
        }

        /* duplicate op to other BBs listed in <siss_lstp> 
         */

        if (Tlog_File && siss_lstp && siss_lstp->size () > 1) {
            Append_Str_2_Buf (_after_motion, "dup to (bb/mapidx)s =") ; 
        }
    
        if (siss_lstp) {

            for (SISS_ITERATOR iter = siss_lstp->begin (); 
                iter != siss_lstp->end () ; iter++) {

                if (*iter == _target_bb) continue ;
  
                OP *opptr = Dup_OP (op) ;
                Append_Dup_Op_2_BB (opptr , *iter) ;
                if (OP_memory(op)) Copy_WN_For_Memory_OP (opptr, op);

                if (Tlog_File) {
                    Append_Str_2_Buf (_after_motion,
                                      "%d/%d",
                                      BB_id(*iter),
                                      BB_next_op_map_idx(*iter)-1) ;
                }

                /* duplicate the preds & succs 
                 */

                BB_OP_MAP_Set (
                    (BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info,OP_bb(opptr)), 
                     opptr, new_op_info ()) ;
  
                ARC_LIST * list ;
                for (list = OP_preds(op); list ; list = ARC_LIST_rest(list)) {

                    ARC* temp_arc = ARC_LIST_first(list);
                    if (!temp_arc || ARC_is_br(temp_arc)) continue ;

                    if (OP_bb(ARC_pred(temp_arc)) == OP_bb(opptr) ||
                        BB1_reachable_from_BB2 (OP_bb(opptr),
                                                OP_bb(ARC_pred(temp_arc)))) {
                        new_arc (ARC_kind(temp_arc), 
                                 ARC_pred(temp_arc), 
                                 opptr, 
                                 ARC_omega(temp_arc),
                                 ARC_opnd(temp_arc), 
                                 ARC_is_definite(temp_arc));
                    }
                }
  
                for (list = OP_succs(op) ; list ; list = ARC_LIST_rest(list)) {

                     ARC *temp_arc = ARC_LIST_first(list);
                     if (!temp_arc || ARC_is_br(temp_arc)) continue ;
                     
                     new_arc (ARC_kind(temp_arc), opptr,ARC_succ(temp_arc),
                              ARC_omega(temp_arc),
                              ARC_opnd(temp_arc), ARC_is_definite(temp_arc));
                }

                _dag_constructor.Build_Branch_Arcs (opptr, INCLUDE_CONTROL_ARCS);
            }
        }/* end of if */

        if (cand._is_P_READY) {

            BB * bb = cand._unresolved_dep_pred_bb;
            OP* dup_op = Dup_OP (op) ;
            Append_Dup_Op_2_BB (dup_op, bb) ;

            BB_OP_MAP_Set ((BB_OP_MAP) BB_MAP_Get(_cg_dep_op_info,bb), 
                    dup_op, new_op_info ()) ;

            for (ARC_LIST *list = OP_preds(op); list ; 
                 list = ARC_LIST_rest(list)) {

                ARC* temp_arc = ARC_LIST_first(list);
                if ((OP_bb(ARC_pred(temp_arc)) == bb) ||
                    BB1_reachable_from_BB2 (bb,OP_bb(ARC_pred(temp_arc)))) {

                    new_arc (ARC_kind(temp_arc), ARC_pred(temp_arc), 
                             dup_op, ARC_omega(temp_arc),
                             ARC_opnd(temp_arc), ARC_is_definite(temp_arc));
                }
            }

            _dag_constructor.Build_Branch_Arcs(dup_op, INCLUDE_CONTROL_ARCS);

            if (Tlog_File) {
                Append_Str_2_Buf (_aux_info,
                                  "\nP_ready cand append to BB %d with mapidx %d", 
                                  BB_id(bb), OP_map_idx(dup_op)) ;
            }
        }
    
    } /* end of else */
  
    if (DAG_NEED_UPDATE) Update_DAG (op) ; 

    /* update the liveness info 
     */
    if (home_bb != _target_bb) {
        Update_Liveness_Info(pair->siss_ptr, pair->guarded_ptr,home_bb,op) ;
    }

    /* This flag should be set right here
     * since it will be used below in Try_Add_OP_to_candidate_List.
     */
    Set_OP_Scheduled(op);

	/* set <start cycle> properly which will be printed in assembly file
     */
    OP_scycle(op) = (mINT16)_current_cycle ;
  
    if (Tlog_File && (_after_motion_buf_next[0]||_aux_info[0])) {
        char keyword[1] = { '\0' };
        Generate_Tlog (SCHEDULER::_Cur_Phase_Name, "Code motion", 
        OP_srcpos (cand._op),keyword,_before_motion,_after_motion,_aux_info);
    }

    /* Those instructions just becoming ready should be 
     * added into the list of candidates.
     */
    Update_Candidate_List_During_Sched_Cyc (cand,siss_lstp);


    /* Inform Micro-Scheduler to update its internal state.
     */
    CGGRP_Issue_OP(op, TRUE);


    _ops_in_cur_cyc[_cur_cyc_op_num++] = cand._op;

    return BRANCH_SCHEDULED;
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
 * ==========================================================================
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


#ifdef Is_True_On

inline void
SCHEDULER::GP_Def_is_first_OP (OP *op) {
    if (_before_regalloc && OP_def_GP (op))
        Is_True (BB_first_op(OP_bb(op)) == op, 
                 ("gp def is not the first op!\n"));
}

#endif 

void
SCHEDULER::Push_Down_Remaining_OPs() {

    for (OP* op = _frontier_op; op != NULL; op = OP_next(op)) {
        for (CFG_SUCC_NODE_ITER succ_iter(Regional_Cfg_Node(_target_bb));
            succ_iter != 0;
            ++succ_iter) {
            Is_True(FALSE, ("Last OP scheduled before other OPs.\n"));

            if (!(*succ_iter)->Is_Region()) {
                BB* succ = (*succ_iter)->BB_Node();
                OP* new_op = Dup_OP(op);
                if (!BB_Has_One_Pred(succ)) {
                    /* change new_op to appropriate predicated form;*/
                }
                /* insert new_op before the head of bb; */
            }
        }
    }
}

void
SCHEDULER::Verify() {
    OP* op;
    FOR_ALL_BB_OPs(_target_bb, op) {
        Is_True(OP_Scheduled(op),
            ("Not all ops scheduled: %d 0x%x\tin BB: %d",
             OP_map_idx(op), op, BB_id(OP_bb(op))));
    }
}

/* ===============================================================
 *
 *  Identify_Para_Passing_OPs 
 * 
 *  identify actual parameter def op
 * 
 *  It is seems quite quirky that code motion need identifying 
 *  actual argument def ops. But it is actually needed, since 
 *  in current IR, actual arguments, which are passed by stacked
 *  register, are not claimed as corresponding call's operands. 
 *  if they are moved to other BB, GRA-live package calc an 
 *  incorrect liveness, to make thing even worse, EBO delete 
 *  these "redundant" defs.
 * 
 *  this routine's name does not reflect what it actually does.
 *  But it mark all OPs(of <bb>)which are unsafe to be move out of 
 *  <bb> by seting flag OP_MASK_PASS_PARA
 * 
 * ===============================================================
 */
void
SCHEDULER::Identify_Para_Passing_OPs (BB* bb) {

    if (Para_Passing_OPs_have_been_Identified (bb)) return ;
  
    OP * call_op = BB_xfer_op(bb) ;
    if (!call_op || !OP_call (call_op)) return ;

    OP * op ;
    FOR_ALL_BB_OPs(bb, op) {
        Set_OP_pass_para (op) ; 
    }  
    Reset_OP_pass_para (call_op) ;


    FOR_ALL_BB_OPs_REV (bb,op) {
        if (OP_store(op) || OP_prefetch(op)) { 
            Reset_OP_pass_para (op) ; 
        }

        BOOL safe_move_across_bb = FALSE ;

        if (safe_move_across_bb) 
            Reset_OP_pass_para (op) ;

        for (ARC_LIST * list = OP_preds(op); list ; 
             list = ARC_LIST_rest(list)) { 

            ARC * arc = ARC_LIST_first (list) ;
            if (ARC_kind(arc) == CG_DEP_REGIN && 
                OP_bb (ARC_pred(arc)) == bb) {
                Reset_OP_pass_para (ARC_pred(arc)) ;
            }
        }
    }
  
    Reset_OP_pass_para (call_op) ;

    FOR_ALL_BB_OPs_REV (bb,op) {
        if (OP_load (op)) { Set_OP_cannot_spec (op) ; }
    }
}

inline BOOL
SCHEDULER::Para_Passing_OPs_have_been_Identified (BB *bb) {
  
    return  !BB_call (bb) || BB_ANNOT_iden_para_passing_OPs(bb) ;
}


/* =================================================================
 *
 *  Is_Cntl_Equiv 
 * 
 *  return TRUE iff 
 *      o. <_region> (data member of SCHEDULER) is not enclosed by
 *         "abnormal" loop
 *      o. <src> post-dominate each member of <siss_ptr>
 *
 *  FALSE, otherwise.
 *
 *  ref the comment to Is_Abnormal_Loop(if-conv.cxx) for the definition 
 *  of "abnormal" loop.
 * 
 * ================================================================
 */
BOOL 
SCHEDULER::Is_Cntl_Equiv (SISS *siss_ptr, BB* src) {

    if (src == _target_bb) return TRUE ;

    if (_in_abnormal_loop) return FALSE ;

    for (SISS_ITERATOR bbp = siss_ptr->begin() ; 
        bbp != siss_ptr->end() ; bbp++) {
        if (!BB_SET_MemberP(BB_pdom_set(*bbp), src))
            return FALSE ;
    }
    
    return TRUE ; 
}



/*=======================================================
 *
 *    High level exported interfaces  
 *
 * =====================================================
 */

/* --------------------------------------------------------------------
 * Perform global list scheduling.
 * The algorithm is:
 *
 * for each bb in a region
 *   compute the list of candidate op
 *   while the last op of the bb is not scheduled
 *     choose an op to schedule
 *     update candidate list
 *     if current op is the last op of bb
 *       do backward codemotion
 *       break
 *     end if
 *   end while
 * end for
 * -------------------------------------------------------------------*/

#ifdef Is_True_On

void
SCHEDULER::Verify_Region_Integrity (REGION * rgn_ptr) {

    BB_VISITED_COUNTER bb_counter (&_mem_pool);
    bb_counter.Init();

    for (BB* bb_ptr=REGION_First_BB ; bb_ptr ; bb_ptr = BB_next (bb_ptr)) {
        bb_counter.Set_visited (bb_ptr);
    }

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter (_region->Regional_Cfg()) ;
        iter != 0 ; ++ iter) {

        if ((*iter)->Is_Region()) continue ; 
        BB * bb = (*iter)->BB_Node(); 

        if (!bb_counter.Visited (bb))
            DevWarn ("BB:%d (of region:%d pu:%d is not incorporated into"
                     " REGION_First_BB",
                     BB_id(bb),_region->Id(), Current_PU_Count());
    }
}

#endif 

/* ==================================================================
 *
 *  Sched_Rgn_Preproc 
 * 
 *  preprocess before scheduling <_region> (data member of SCHEUDLER)
 *  
 * ==================================================================
 */
BB_VECTOR *
SCHEDULER::Sched_Rgn_Preproc (void) {

    /* check if rgn is suitable for global scheduling 
     */
    if (Does_JS_Edge_Present (_region)) return NULL; 
    Map_BBs_id_to_Contiguous_Range_Ints () ;

    if (!_Max_BB_id) return NULL; 

#ifdef Is_True_On 
    Verify_Region_Integrity (_region);
#endif 

    
    /* build dep DAG 
     */
    Start_Timer (T_Ipfec_GLOS_MISC1_CU);
    _dag_constructor.Build_DAG();
    Stop_Timer (T_Ipfec_GLOS_MISC1_CU);
    if (SCHED_TF_DUMP_DAG) { Dump_DAG (TFile); fprintf(TFile, "\n"); }


    /* build BB as well as region annotations
     */
    Build_BB_Annotation_Vector () ;  
    Build_RGN_Annotation_Vector () ;


    /* determine scheduling sequence 
     */
    BB_VECTOR * region_bbs = Sort_Region_BBs();
    if (!region_bbs->begin()) return NULL;


    /* acquire control flow info 
     */
    Build_Reachable_Stuff (region_bbs);
    Compute_Node_Level () ;

    /* init heuristic info 
     */
    init_heur_info (_region);
    Compute_Delay (_region);

    /* miscs */
    for (BB_VECTOR_ITER item = region_bbs->begin();

        item != region_bbs->end(); item++) {
        Identify_Para_Passing_OPs (*item) ;

    }

    Identify_Cannot_Spec_OPs (_region);

    return region_bbs ;
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
SCHEDULER::Schedule_Region() {

    BB_VECTOR * region_bbs = Sched_Rgn_Preproc ();
    if (!region_bbs) return ;

    for (BB_VECTOR_ITER bb_iter = region_bbs->begin();
        bb_iter != region_bbs->end(); bb_iter++) {
    
        _target_bb = *bb_iter ;

        if (BB_length(_target_bb) == 0 || 
            (BB_length(_target_bb) == 1) && BB_xfer_op (_target_bb))
        {
            BB_ANNOT_set_processed (_target_bb) ;
            continue ;
        }

        Determine_P_Ready_is_Profitable_or_not () ;
        
        /* init sched status */
        _frontier_op = BB_length(_target_bb) ? 
            BB_first_op(_target_bb):NULL;

        _current_cycle = 0 ;
        _cur_cyc_op_num = 0;

        /* Determine those bbs from which we choose candidate ops.*/

        _src_bb_siss_map.clear ();
        _source_bbs.clear();
        Find_Source_BBs (_target_bb , &_src_bb_siss_map);

        Adjust_Delay (_region) ;
        Reset_BB_OPs_etime (_target_bb) ;
        Reset_BB_OPs_etime (&_source_bbs);

        Cache_Reachable_Prob (); 
        Preprocess_GP_def_op () ;
    
        /* Find ready candidates for scheduling and put them into a list. */
        Find_Candidates(&_src_bb_siss_map);

        if (_M_READY_candidates.empty() && _P_READY_candidates.empty()) {
            Set_BB_scheduled (_target_bb);
            Postprocess_GP_def_op () ;
            continue ;
        }

        BOOL no_new_cycle = FALSE;

        while (1) {
        while (!_M_READY_candidates.empty() || !_P_READY_candidates.empty()) {
            if (SCHED_TF_VERBOSE_DUMP) Print(TFile);
    
            /* Need we advancing to next cycle?*/
            if (CGGRP_Cycle_Full() || All_Candidates_Tried()) {
               /* Update candidate list and micro-scheduler's internal states.*/
                Cycle_Advance();
            }
      
            /* Select an untried instruction with highest priority.*/
            CANDIDATE* candidatep = Select_Best_Candidate ();
            if (!candidatep) continue ;

            /* Can _op be scheduled into current cycle? */
            if (!CGGRP_Issue_OP(candidatep->_op)) {
                /* _op need not be tried again in current cycle. */
                candidatep->_tried = TRUE;
                continue;
            }
      
            BB *cand_bb = OP_bb (candidatep->_op) ; 

            struct _SISS_guarded_tuple3 * tri_tuple_ptr = 
                    _src_bb_siss_map[cand_bb];

            if (!tri_tuple_ptr->b_cntl_equiv && 
                OP_bb(candidatep->_op) != _target_bb) {
                if (Are_Defs_Live_Out (candidatep->_op, tri_tuple_ptr->siss_ptr)) {
                    if (!candidatep->_is_P_READY) 
                        _M_READY_candidates.remove (candidatep) ;
                    else
                        _P_READY_candidates.remove (candidatep) ;

                    continue ;
                }
            }

            /* Do not mingle OPs that are issued at diff cycles */
            if (!_cur_cyc_op_num) {
                _current_cycle = max (candidatep -> _etime,_current_cycle) ;
            }

            INT32 deviation = (INT32)_current_cycle - (INT32)candidatep->_etime ;

            if (deviation < 0) {
                Cycle_Advance () ; continue ; 
            }

            BOOL BRANCH_SCHEDULED = Commit_Schedule(*candidatep, tri_tuple_ptr); 

            /* The last op scheduled, current BB finished.*/
            if (BRANCH_SCHEDULED) {
                /* All yet-to-be scheduled ops are pushed down.*/
                Push_Down_Remaining_OPs ();
                no_new_cycle = TRUE;
                break;
            }

            no_new_cycle |= OP_Scheduled (BB_last_op(_target_bb)) ;
        }

        if (!BB_length(_target_bb) || no_new_cycle) { break ; } 
        else Cycle_Advance () ; 
        }

        /* Inform micro-scheduler the beginning of a new basic block.
         */
        CGGRP_End_BB(); 

        Verify();

        /* set this flags so that the succ to _target_bb can't be selected
         * to a candidate bb , we must clear this flag after having scheduled
         * whole region to indicate the BB in question has not been scheduled
         * in local context 
         */
        Set_BB_scheduled (_target_bb);
        BB_ANNOT_set_processed (_target_bb);

        Postprocess_GP_def_op () ;

        if (BB_call (_target_bb)) {
            OP *op ;  
            FOR_ALL_BB_OPs(_target_bb,op) {
              Reset_OP_pass_para(op) ;
            }
        }

        /* calc total number of cycles required by this bb 
         */
        BB_cycle(_target_bb) = BB_length(_target_bb) ? _current_cycle + 1 : 0 ;
    }

    if (SCHED_TF_VERBOSE_DUMP) { Print(TFile); }

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

    /* 1. Build dependence DAG for current basic block.
     */
    _dag_constructor.Build_DAG();
    
    Build_BB_Annotation_Vector () ;  

    /* 2.initialize heuristic stuff 
     */
    init_heur_info (_target_bb);
    Compute_Delay (_target_bb, FALSE);
    Reset_BB_OPs_etime (_target_bb);

    if (SCHED_TF_DUMP_DAG) { Dump_DAG (TFile); fprintf (TFile, "\n"); }
    if (SCHED_TF_DRAW_LOCAL_DAG) {
        draw_bb_dependence_graph (_target_bb, "Before Local Scheduling");
    }

    /* 3. Determine those bbs from which we choose candidate ops.
     */
    _src_bb_siss_map.clear ();
    Find_Source_BBs (_target_bb,&_src_bb_siss_map);

    BB_ANNOT_reachable_prob (_target_bb) = (INT32)REACH_PROB_SCALE ;

    /* 4. init scheduling status 
     */
    _current_cycle = 0 ;  
    _cur_cyc_op_num = 0;
    BOOL last_op_sched = FALSE ;

    /* 5. other misc init 
     */
    if (_before_regalloc) {
        Identify_Cannot_Spec_OPs (_target_bb);
        Preprocess_GP_def_op () ;
    }

    /* 6. Find ready candidates for scheduling and put them into a list. 
     */
    Find_Candidates(&_src_bb_siss_map);


    /* 7. now, local scheduling happens...
     */
    while (1) {
    while (!_M_READY_candidates.empty()) {
        if (SCHED_TF_VERBOSE_DUMP) Print(TFile);
    
        if (CGGRP_Cycle_Full() ||
            All_M_READY_Candidates_Tried()) {
            
            /* No candidate can be "compacted" into current instruction- 
             * group, mark a stop-bit and advance cycle.
             */
            Cycle_Advance();
        }
    
        /* 7.1 Select an untried best instruction
         */
        CANDIDATE* candidate = Select_Best_Candidate();
        Is_True (candidate, ("candidate cannot be NULL\n"));
 
        if (!CGGRP_Issue_OP(candidate->_op)) {

            /* With structural hazard presence (or other reason), this 
             * candidate cannot be issued in this cycle. mark candidate 
             * is "tried" and try for the next-best one.
             */
            candidate->_tried = TRUE;
            continue;
        }
    
        /* Do not mingle OPs that are issued at diff cycles 
         */
        if (!_cur_cyc_op_num)
            _current_cycle = max (candidate -> _etime,_current_cycle) ;

        INT32 deviation = (INT32)candidate->_etime - (INT32)_current_cycle;
        if (deviation > 0) { Cycle_Advance () ; continue ; }

        /* 7.2 commit it */
        Commit_Schedule(*candidate, _src_bb_siss_map[_target_bb]);
        last_op_sched |= OP_Scheduled (BB_last_op(_target_bb)) ;
    }

    /* loop break if BB's last op has been scheduled */
    if (last_op_sched) break ; 

    Cycle_Advance () ;

    } 

    /* calc BB's static execution time */
    BB_cycle(_target_bb) = BB_length(_target_bb) ? _current_cycle + 1 : 0;

    /* inform micro-scheduler to adjust its internal state
     */
    if (BB_length(_target_bb)) CGGRP_End_BB();

    if (SCHED_TF_VERBOSE_DUMP) { Print(TFile); }


    Verify();

    if (_before_regalloc) Postprocess_GP_def_op ();

    CG_DEP_Delete_Graph (_target_bb) ;
}




/* ========================================================================
 * ========================================================================
 *
 *  Constructor and Destructor 
 * 
 * ======================================================================== 
 * ======================================================================== 
 */
SCHEDULER::SCHEDULER (BB* bb, BOOL before_regalloc, PRDB_GEN *prdb) :
        _global (FALSE),  _before_regalloc (before_regalloc),
        _region (NULL),   _target_bb (bb), 
        _M_READY_candidates (CAND_ALLOC(&_mem_pool)), 
        _P_READY_candidates (CAND_ALLOC(&_mem_pool)), 
        _dag_constructor (bb,prdb),
        _reachable_matrixp (NULL),
        _reachable_prob_matrixp (NULL),
        _BB_annotation_vector (SCHED_BB_ANNOT_VECTOR(SCHED_BB_ANNOT_ALLOC(&_mem_pool))),
        _RGN_annotation_vector (RGN_ANNOTATION_VECTOR(RGN_ANNOTATION_VECTOR(&_mem_pool)))
{

    _in_abnormal_loop       = FALSE ;
    _BB_num_in_cur_scope    = 0 ;
    _Max_BB_id              = 0 ; 
    _Max_rgn_id             = 0;
    _BB_id_map_ptr          = NULL ;
    _free_candidate_list     = NULL ;
    _marked_bb_vector_ptr   = NULL ;

    Clean_Up(bb);
    _frontier_op = BB_first_op(bb);
    
    get_sched_flag_and_para ();

    OP* op;
    if (SCHED_TF_DUMP_IR || SCHED_TF_SUMMARY_DUMP) {
        fprintf(TFile, "\n%s\n  IR of BB %d "
              "before Aurora %s local instruction scheduling\n\n%s\n",
              DBar, BB_id(_target_bb), 
              _before_regalloc ? "pre-pass" : "post-pass", DBar);
        Dump_IR (TFile);
    }
}

SCHEDULER::SCHEDULER (
    struct tagRGN_INFO * rgn_info, 
    BOOL before_regalloc, PRDB_GEN * prdb) :

        _source_bbs (BB_ALLOC(&_mem_pool)),
        _M_READY_candidates (CAND_ALLOC(&_mem_pool)),
        _P_READY_candidates (CAND_ALLOC(&_mem_pool)),
        _dag_constructor (rgn_info->rgn, prdb, INCLUDE_ASSIGNED_REG_DEPS,
                         INCLUDE_MEMREAD_ARCS, NO_MEMIN_ARCS,
                         INCLUDE_CONTROL_ARCS),
        _reachable_matrixp (NULL),
        _reachable_prob_matrixp (NULL),
        _BB_annotation_vector (SCHED_BB_ANNOT_VECTOR(SCHED_BB_ANNOT_ALLOC(&_mem_pool))),
        _RGN_annotation_vector (RGN_ANNOTATION_VECTOR(RGN_ANNOTATION_VECTOR(&_mem_pool)))
{

    _global             = TRUE ;
    _before_regalloc    = TRUE ;
    _region             = rgn_info->rgn ;

    _target_bb          = NULL ;
    _in_abnormal_loop   = rgn_info->in_abnormal_loop;

    _BB_num_in_cur_scope = 0 ;
    _Max_BB_id          = 0 ; 
    _Max_rgn_id         = 0;
    _BB_id_map_ptr      = NULL ;
    _free_candidate_list    = NULL ;
    _marked_bb_vector_ptr   = NULL ;

    OP* op;

    /* get tracing flags and other miscellaneous options
     */
    get_sched_flag_and_para ();


    /* "clean up" each BB in current region: 
     *  o. clear local OP flags, and
     *  o. erase nops, and so on
     */
    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
         cfg_iter != 0; ++cfg_iter) {

        if ((*cfg_iter)->Is_Region()) {
            continue;
        } else {
            Clean_Up ((*cfg_iter)->BB_Node());
        }
    }
  
    /* Dump IR before global code motion occurs if required 
     */
    if (SCHED_TF_DUMP_IR || SCHED_TF_SUMMARY_DUMP) {

        fprintf(TFile, "\n%s\n  IR of region %d "
              "before Aurora %s global instruction scheduling\n\n%s\n",
              DBar, _region->Id(),
              _before_regalloc ? "pre-pass" : "post-pass", DBar);

        Dump_IR (TFile);

    }
}

SCHEDULER::~SCHEDULER () {

    /* Dump IR after scheduling if required 
     */
    if (SCHED_TF_DUMP_IR || SCHED_TF_SUMMARY_DUMP) {

        fprintf(TFile, "\n%s\n  IR of %s %d "
              "after Aurora %s %s instruction scheduling\n\n%s\n",
              DBar, _global ? "region" : "BB",
              _global ? _region->Id() : BB_id(_target_bb),
              _before_regalloc ? "pre-pass" : "post-pass",
              _global ? "global" : "local", DBar);

        Dump_IR (TFile);

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
  
    /* Reset each op's SCHEDULED flag.
     */
    for (op = BB_first_op(bb); op; op = next_op) {
        next_op = OP_next(op);

        if (OP_noop(op)) {
            BB_Remove_Op(bb, op);
        } else {
            Reset_All_OP_Local_Flags(op);
            Reset_OP_start_bundle(op);
            Reset_OP_end_group(op);
            Reset_OP_bundled(op);
            Reset_OP_m_unit(op);
        }
    }
}


void
Global_Insn_Sched(REGION_TREE* region_tree, BOOL before_regalloc) {

    Set_Error_Phase (SCHEDULER::_Cur_Phase_Name = 
       SCHEDULER::_Global_Insn_Sched_Phase_Name);

    Start_Timer(T_Ipfec_GLOS_CU);

    if (Get_Trace (TP_A_SCHED,DRAW_GLBL_CFG)) { draw_global_cfg(); }

    /* 1. split PU-entry/-exit BB for larger global-instruction scope
     */
    SCHEDULER::Init_PU_Boundary_BB_Splitting ();


    /* 2. breadth-1st-traverse <rgn_tree> to acquire some info of region,
     *    and link these info by <rgn_info_lnk>.
     *    eliminate critical edge through edge-spliting.
     */ 

    INT32 sched_rgn_num = 0 ;

    RGN_INFO  * rgn_info_lnk = CXX_NEW (RGN_INFO, &MEM_phase_pool) ;
    rgn_info_lnk->skip_reason   = SKIP_RGN_NONE ;
    rgn_info_lnk->rgn           = region_tree->Root ();

    extern BOOL Is_Abnormal_Loop(REGION* region) ;
    rgn_info_lnk->in_abnormal_loop = Is_Abnormal_Loop (rgn_info_lnk->rgn);
  
    list<RGN_INFO *,mempool_allocator<RGN_INFO *> > queue(&MEM_phase_pool) ;
    queue.push_back (rgn_info_lnk);
    rgn_info_lnk = NULL;


    while (!queue.empty ()) {

        RGN_INFO * tmp = *(queue.begin());
        queue.erase (queue.begin());

        /* emit <rgn> (to <rgn_info_lnk>) : determine wether the region in 
         * question is suitable for global scheduling.
         */

        REGION * rgn = tmp -> rgn ;
        _SKIP_SCHED_RGN_REASON skip_reason = SKIP_RGN_NONE ;

        if (IPFEC_Query_Skiplist(glos_skip_rgn, rgn->Id(), Current_PU_Count())) {
            skip_reason = SKIP_RGN_DEBUG ;
        } else if (rgn->Region_Type() == IMPROPER) {
            skip_reason = SKIP_RGN_IMPROPER;
        } else if (rgn->Is_No_Further_Opt()) {
            skip_reason = SKIP_RGN_NO_FURTHER_OPT;
        } else if (rgn->Entries().size() != 1) {
            skip_reason = SKIP_RGN_NON_SEME;
        } else { 
            rgn->Edge_Splitting () ;
            if (SCHEDULER::Does_JS_Edge_Present(rgn)) 
                skip_reason = SKIP_RGN_CRITICAL_EDGE;
        }

        tmp->skip_reason = skip_reason ;

        if (tmp->skip_reason == SKIP_RGN_NONE) {
            sched_rgn_num ++;

            SCHEDULER::Split_Entry_BB (tmp->rgn) ;
        }
        
        tmp->next = rgn_info_lnk ;
        tmp->prev = NULL ;

        if (rgn_info_lnk) { rgn_info_lnk->prev = tmp ; } ;
        rgn_info_lnk = tmp ;
        
        /* push all immediate kids into queue and propagate "in_abnormal_loop"
         * to kids
         */
        for (REGION_KID_ITER kids_iter(rgn) ; kids_iter != 0 ; ++kids_iter) {
            RGN_INFO  * kid_info = CXX_NEW(RGN_INFO, &MEM_phase_pool) ;

            kid_info->rgn  = *kids_iter ;
            kid_info->in_abnormal_loop = 
                tmp->in_abnormal_loop ? TRUE : Is_Abnormal_Loop (*kids_iter); 

            /* do not care other fields of RGN_INFO 
             */
            queue.push_back (kid_info);
        }
    }

    /* 3.generate PRDB until control flow become stable
     */
    PRDB_GEN * prdb = PRDB_Valid()? PRDB_Init(region_tree):NULL;

    /* 4. calculate dominator and post-dominator info 
     */
    Calculate_Dominators();


    /* 5. inner-most-region-1st-traverse <rgn_tree>, global-instruction-
     *    schedule each region unless the region in question is "skipped"
     *    for some reason.
     */
    for (RGN_INFO * tmp = rgn_info_lnk ; tmp ; tmp = tmp->next) {

        if (tmp->skip_reason != SKIP_RGN_NONE) {

            /* the commented out statements below searve as a placehold 
             * for tracing some information of skipped region.
             */
            /*if (SCHED_TF_SUMMARY_DUMP)
                _trace_skip_sched_rgn (tmp,TFile); */

        } else {

            #ifdef Is_True_On 

            /* to test prdb */
            if (prdb && !Is_No_BB_Region(tmp->rgn)) {
                Verify_PRDB(tmp->rgn, prdb);
            }
            
            #endif 

            SCHEDULER global_scheduler(tmp, TRUE,prdb);
            global_scheduler.Schedule_Region();
        }
    }

    /* 6. clean up before returning to the caller 
     */
    if (prdb) { Delete_PRDB () ; prdb = NULL ; } ;

  	Free_Dominators_Memory() ;

    Stop_Timer(T_Ipfec_GLOS_CU);
}



void
Local_Insn_Sched (BOOL before_regalloc) {

    Set_Error_Phase (SCHEDULER::_Cur_Phase_Name = 
                     SCHEDULER::_Local_Insn_Sched_Phase_Name);
    Start_Timer(T_Ipfec_LOCS_CU);

    for (BB* bb = REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
    	
        if (BB_length(bb) == 0) { continue; }

        /* local scheduling before register allocation
         */
        
        if (before_regalloc) { 
        	if (!BB_scheduled(bb) && !BB_reg_alloc(bb)) {
                SCHEDULER local_scheduler(bb, before_regalloc);
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
                    SCHEDULER local_scheduler(bb, before_regalloc);
                    local_scheduler.Schedule_BB();
                }
            }
        }
        Set_BB_scheduled(bb);
    }

    Stop_Timer(T_Ipfec_LOCS_CU);
}




/* =================================================================
 * =================================================================
 *
 *          Tracing Routines 
 * 
 * =================================================================
 * =================================================================
 */
void
CAND_Dump (CANDIDATE * cand_ptr,FILE *f) {

    fprintf (f, "      OP [%u] :  et=%u,try=%s,%s", 
             OP_map_idx(cand_ptr->_op), cand_ptr->_etime, 
             cand_ptr->_tried ? "tried" : "nontried", 
             spec_text[cand_ptr->_spec_type] );

    FILE *ftmp = TFile ;

    Set_Trace_File_internal(f);
    Print_OP_No_SrcLine(cand_ptr->_op);
    Set_Trace_File_internal(ftmp);
}

void
SCHEDULER::Dump_IR (FILE *f) {

    FILE * ftmp = TFile ;
    Set_Trace_File_internal (f);

    if (_global) {

        for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg()); 
            cfg_iter != 0; ++cfg_iter) {

            if (!(*cfg_iter)->Is_Region()) {
                if (BB_entry((*cfg_iter)->BB_Node()) ||
                    BB_exit((*cfg_iter)->BB_Node())) {
                    continue;
                }

                BB* bb =  (*cfg_iter)->BB_Node();
                if (Get_BB_Trace(BB_id(bb))) Print_BB_No_Srclines(bb);
            }
        }

    } else if (Get_BB_Trace(BB_id(_target_bb))) {

        Print_BB_No_Srclines(_target_bb );

    }

    Set_Trace_File_internal (ftmp);
}

void
SCHEDULER::Dump_DAG (FILE *f) {

    FILE * ftmp = TFile ;
    Set_Trace_File_internal(f);

    if (_global) {
        for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg()); 
            cfg_iter != 0; ++cfg_iter) {

            if (!(*cfg_iter)->Is_Region()) {

                if (BB_entry((*cfg_iter)->BB_Node()) ||
                    BB_exit((*cfg_iter)->BB_Node()))
                    continue;

                BB* bb =  (*cfg_iter)->BB_Node();
                if (Get_BB_Trace(BB_id(bb))) {
                    CG_DEP_Trace_Graph(bb);
                }
            }
        }
    } else if (Get_BB_Trace(BB_id(_target_bb))) {
        CG_DEP_Trace_Graph(_target_bb);
    }

    Set_Trace_File_internal(ftmp);
}

void
SCHEDULER::Dump_Candidates (FILE *f) {

    fprintf (f, "%s   M_READY Candidate List:  Total number :%d\n%s",
            SBar, _M_READY_candidates.size(), SBar);

    for (CAND_ITERATOR item = _M_READY_candidates.begin();
        item != _M_READY_candidates.end(); item++) {

        CAND_Dump (*item,f);
    }
  
    fprintf (f, "%s  M_READY Candidate List: Total number :%d\n%s\n",
        SBar, _P_READY_candidates.size(),SBar);

    for (CAND_ITERATOR item = _P_READY_candidates.begin();
        item != _P_READY_candidates.end(); item++) {
        CAND_Dump (*item,f);
    }
}

void
SCHEDULER::Trace_Candidate_Selection_Process (FILE *f) {

    if (SCHED_TF_DUMP_CAND && SCHED_TF_VERBOSE_DUMP) {

        FILE * ftmp = TFile ; 
        Set_Trace_File_internal(f);

        fprintf(f, "    Candidates: ");

        for (CAND_ITERATOR item = _M_READY_candidates.begin();
            item != _M_READY_candidates.end();
            item++) {
            fprintf(f, "%d ", OP_map_idx((*item)->_op));
        }

        fprintf(f, "  Total number: %d", _M_READY_candidates.size());
        fprintf(f, "\n");

        Set_Trace_File_internal(f);
    }
}

void
SCHEDULER::Trace_Candidate_Updating (OP *op,FILE *f) {


    if (SCHED_TF_SUMMARY_DUMP) {

        FILE * ftmp = TFile ; 
        Set_Trace_File_internal(f);

        fprintf(f, "    Candidates: %d%s",
                _M_READY_candidates.size(),
                SCHED_TF_DUMP_CAND ? "\n" : "    ");

        for (CAND_ITERATOR item = _M_READY_candidates.begin();
            item != _M_READY_candidates.end(); item++) {

            if (SCHED_TF_DUMP_CAND) {
                CAND_Dump (*item,f);
            } else {
                fprintf(f, "%u ", OP_map_idx((*item)->_op));
            }
        }

        if (!SCHED_TF_DUMP_CAND) fprintf(TFile, "\n");

        fprintf(f, "    Commited OP: %u %p  ", OP_map_idx(op), op);

        Print_OP_No_SrcLine(op);

        fprintf(f,
            "    OPs added into candidates after commit of OP %d:    ",
            OP_map_idx(op));

        Set_Trace_File_internal(f);
    }
}

void
SCHEDULER::Print (FILE *f) {

    FILE * ftmp = TFile ; 
    Set_Trace_File_internal(f);

    if (_frontier_op && SCHED_TF_SUMMARY_DUMP) {
        fprintf(f, "    Frontier OP: %p  ", _frontier_op);
        Print_OP_No_SrcLine (_frontier_op);
    }

    if (SCHED_TF_DUMP_IR) {
        Dump_IR (f); fprintf (f, "\n");
    }
  
    if (SCHED_TF_DUMP_DAG) {
        Dump_DAG (f); fprintf(f, "\n");
    }

    Set_Trace_File_internal (ftmp);
}

