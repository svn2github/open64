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

#include "defs.h"

/* STL stuff 
 */
#include <list.h>
#include <vector.h> 
#include <map.h>

/* memory management 
 */
#include "mempool.h"
#include "mempool_allocator.h"

/* commonly used data structure and facilities
 */
#include "topcode.h" /* for TOP_Name */
#include "op.h"

#include "bb.h"
#include "bb_set.h"

#include "be_util.h"

#include "tracing.h"
#include "error.h"

#include "ipfec_defs.h"
#include "ipfec_options.h"

/* data-flow related stuff
 */
#include "gra_live.h"

#include "sched_util.h"
#include "sched_cflow.h"
#include "sched_rgn_info.h"

#define ACROSS_NODE_THRESHOLD 3
    
    /* ==============================================================
     *
     *      Tracing flags, options and some thresholds
     *
     * =============================================================
     */

/* part 1: tracing flags 
 */
BOOL SCHED_TF_DUMP_IR      = FALSE ; 
BOOL SCHED_TF_DUMP_DAG     = FALSE ;
BOOL SCHED_TF_DUMP_CAND    = FALSE ;
BOOL SCHED_TF_SUMMARY_DUMP = FALSE ;
BOOL SCHED_TF_VERBOSE_DUMP = FALSE ;
BOOL SCHED_TF_DRAW_GLBL_CFG  = FALSE ;
BOOL SCHED_TF_DRAW_RGNL_CFG  = FALSE ;
BOOL SCHED_TF_DRAW_LOCAL_DAG = FALSE ;
BOOL SCHED_TF_DRAW_RGNL_DAG  = FALSE ;
BOOL SCHED_TF_TEST_SPEC    = FALSE ;

/*  threshold */
INT32 SAFE_CNTL_SPEC_PROB   = ((REACH_PROB)(REACH_PROB_SCALE * 0.15f)) ;
INT32 UNSAFE_CNTL_SPEC_PROB = ((REACH_PROB)(REACH_PROB_SCALE * 0.40f)) ;
INT32 SPEC_SAFE_LOAD_WITHOUT_TRANSFORM_REACH_PROB = 
                              ((REACH_PROB)(REACH_PROB_SCALE * 0.65f)) ;
static void
get_trace_flags (BOOL prepass) {

    if (prepass) {

        SCHED_TF_DUMP_IR        = Get_Trace (TP_A_GSCHED,DUMP_IR) ||
                                  Get_Trace (TKIND_IR, TP_A_GSCHED) ;
        SCHED_TF_DUMP_DAG       = Get_Trace (TP_A_GSCHED,DUMP_DAG) ;
        SCHED_TF_DUMP_CAND      = Get_Trace (TP_A_GSCHED,DUMP_CAND) ;
        SCHED_TF_SUMMARY_DUMP   = Get_Trace (TP_A_GSCHED,SUMMARY_DUMP) ;
        SCHED_TF_VERBOSE_DUMP   = Get_Trace (TP_A_GSCHED,VERBOSE_DUMP) ;
        SCHED_TF_DRAW_GLBL_CFG  = Get_Trace (TP_A_GSCHED,DRAW_GLBL_CFG) ;
        SCHED_TF_DRAW_RGNL_CFG  = Get_Trace (TP_A_GSCHED,DRAW_RGNL_CFG) ;
        SCHED_TF_DRAW_LOCAL_DAG = FALSE ; 
        SCHED_TF_DRAW_RGNL_DAG  = Get_Trace (TP_A_GSCHED,DRAW_RGNL_DAG) ;
        SCHED_TF_TEST_SPEC      = Get_Trace (TP_A_GSCHED,TEST_SPEC) ;

    } else {

        SCHED_TF_DUMP_IR        = Get_Trace (TP_A_LSCHED,DUMP_IR) ||
                                  Get_Trace (TKIND_IR, TP_A_LSCHED) ;
        SCHED_TF_DUMP_DAG       = Get_Trace (TP_A_LSCHED,DUMP_DAG) ;
        SCHED_TF_DUMP_CAND      = Get_Trace (TP_A_LSCHED,DUMP_CAND) ;
        SCHED_TF_SUMMARY_DUMP   = Get_Trace (TP_A_LSCHED,SUMMARY_DUMP) ;
        SCHED_TF_VERBOSE_DUMP   = Get_Trace (TP_A_LSCHED,VERBOSE_DUMP) ;
        SCHED_TF_DRAW_GLBL_CFG  = Get_Trace (TP_A_LSCHED,DRAW_GLBL_CFG) ;
        SCHED_TF_DRAW_RGNL_CFG  = Get_Trace (TP_A_LSCHED,DRAW_RGNL_CFG) ;
        SCHED_TF_DRAW_LOCAL_DAG = Get_Trace (TP_A_LSCHED,DRAW_LOCAL_DAG); 
        SCHED_TF_DRAW_RGNL_DAG  = Get_Trace (TP_A_LSCHED,DRAW_RGNL_DAG) ;
        SCHED_TF_TEST_SPEC      = Get_Trace (TP_A_LSCHED,TEST_SPEC) ;
    }

}


static void
get_spec_prob (void) {

    float f_safe_cntl_spec_prob , f_unsafe_cntl_spec_prob ;

    if (!IPFEC_safe_cntl_spec_prob) IPFEC_safe_cntl_spec_prob = "0.2" ;
    if (!IPFEC_unsafe_cntl_spec_prob) IPFEC_unsafe_cntl_spec_prob = "0.4" ;

    sscanf (IPFEC_safe_cntl_spec_prob,"%f", &f_safe_cntl_spec_prob) ;
    sscanf (IPFEC_unsafe_cntl_spec_prob,"%f", &f_unsafe_cntl_spec_prob) ;

    if (f_safe_cntl_spec_prob > 1.0) f_safe_cntl_spec_prob = 0.2 ;
    if (f_unsafe_cntl_spec_prob > 1.0) f_unsafe_cntl_spec_prob = 0.4 ;
  
    SAFE_CNTL_SPEC_PROB = INT32(f_safe_cntl_spec_prob * 100);
    UNSAFE_CNTL_SPEC_PROB = INT32(f_unsafe_cntl_spec_prob * 100);
}

void
Get_Sched_Opts (BOOL prepass) {

    get_trace_flags (prepass) ;
    get_spec_prob () ; 

    /* just for the time being */
    IPFEC_Glos_Reg_Pressure_Aware = FALSE ;
}


    /* ===============================================================
     * ===============================================================
     *
     *      implementation of CFG_NODE_MAP
     *
     * ===============================================================
     * ===============================================================
     */
void
CFG_NODE_MAP::Initialize_Map (REGION *rgn) {

    _bb_map_vect.clear () ;
    _rgn_map_vect.clear () ;

    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter(rgn->Regional_Cfg()) ; 
        iter != 0 ; ++ iter) {

        if ((*iter)->Is_Region()) {
            _rgn_map_vect.push_back (
                    tagNODE_ID_VAL_PAIR(NULL,(*iter)->Region_Node()->Id()));      
        } else {
            _bb_map_vect.push_back (
                    tagNODE_ID_VAL_PAIR(NULL,BB_id((*iter)->BB_Node())));
        }
    }

    INT32 upbound = _bb_map_vect.size() - 1;
    if (upbound > 0) _bubble_sort (_bb_map_vect,0,upbound) ;

    upbound = _rgn_map_vect.size() - 1 ;
    if (upbound > 0) _bubble_sort (_rgn_map_vect,0,upbound);
}


void
CFG_NODE_MAP::Initialize_Map (BB *bb) {
    _bb_map_vect.clear () ;
    _rgn_map_vect.clear () ;

    _bb_map_vect.push_back (NODE_ID_VAL_PAIR(NULL,BB_id(bb)));
}

void
CFG_NODE_MAP::_bubble_sort (
    _PAIR_VECT& vect, INT32 low_idx, INT32 hign_idx) 
{
    INT32 last_elem_idx = vect.size () - 1;
    BOOL change = TRUE;
    
    for (INT32 upbound = last_elem_idx; 
         change && upbound > 0 ; upbound--) {

        change = FALSE;

        for (INT32 j = 0 ; j < upbound; j ++) {
            INT32 tmp = vect[j].node_id - vect[j+1].node_id ;

            if (tmp < 0) { continue ; }

            if (tmp > 0) { /* swap two element : vect[i] <=> vect[j] */
                NODE_ID_VAL_PAIR p = vect[j+1] ;
                vect[j+1] = vect[j]; vect[j] = p;
            } else {
                FmtAssert (FALSE, ("two node with identical id %d", 
                            vect[j].node_id)) ;
            }

            change = TRUE;
        }
    }
}


INT32
CFG_NODE_MAP::_find_elem (_PAIR_VECT& vect, INT32 id) {
    INT32 low = 1, high = vect.size(); 
    
    while (low < high) {
        INT32 mid = ((low + high) >> 1) ;
        INT32 diff = vect[mid-1].node_id - id;

        if (diff < 0) { low = mid + 1 ; continue ; } 
        if (diff > 0) { high = mid - 1 ; continue ; } 
        else return mid - 1;
    }

    if (low > high) return -1 ;
    return vect[low-1].node_id == id ? low - 1 : -1 ;
}

void 
CFG_NODE_MAP::_set_map (_PAIR_VECT& vect, INT32 id, void* value) {
    INT32 pos = _find_elem (vect, id) ;
    if (pos < 0) {
        vect.push_back (tagNODE_ID_VAL_PAIR(value,id));  
        _bubble_sort (vect,0,vect.size()-1) ;
        pos = _find_elem (vect, id);
        Is_True (pos >= 0, ("fail to find element")); 
    }

    vect[pos].value = value ;
}


    /* =============================================================
     * =============================================================
     *
     *      implementation of SCHED_BB_ANNOT
     * 
     * =============================================================
     * =============================================================
     */
#define OP_INC_NUM (20)

inline void
SCHED_BB_ANNOT::_set_op_annot (OP * op, SCHED_OP_ANNOT * annot) {
    Is_True (OP_bb(op) == _bb, 
             ("BB%d is not OP[BB:%d map%d]'s home BB",
              BB_id(_bb), BB_id(OP_bb(op)), OP_map_idx(op)));
    
    _annot_inited_ops = 
        BS_Union1D (_annot_inited_ops,OP_map_idx(op),_mem_pool);
    BB_OP_MAP_Set (_ops_annot_map, op, (void*)annot);
}


SCHED_BB_ANNOT::SCHED_BB_ANNOT (BB * bb, MEM_POOL *mp) : 
    _bb(bb), _mem_pool(mp)
{
    _ops_annot_map      = BB_OP_MAP_Create (bb, _mem_pool);

    _1st_append_op      = _last_prepend_op = NULL;                 
    _xfer_op  = BB_xfer_op (bb);

    _annot_inited_ops =
        BS_Create_Empty (BB_next_op_map_idx(_bb) + OP_INC_NUM, _mem_pool);
    _init_ops_annot () ;
}


SCHED_OP_ANNOT*
SCHED_BB_ANNOT::Detach_OP_Annot (OP* op) {

    SCHED_OP_ANNOT * op_annot = Get_OP_Annot (op) ;
    _annot_inited_ops = BS_Difference1D (_annot_inited_ops,
                                         OP_map_idx(op));
    return op_annot ;
}


void
SCHED_BB_ANNOT::Attach_OP_Annot (OP * op, SCHED_OP_ANNOT * annot) {
    _set_op_annot (op,annot) ;
}


void
SCHED_BB_ANNOT::_init_ops_annot (void) {

    INT32 size = BB_length (_bb) + OP_INC_NUM;
    _annot_inited_ops = BS_Create_Empty (size, _mem_pool);

    OP * op;
    FOR_ALL_BB_OPs (_bb, op) {

        SCHED_OP_ANNOT * op_annot = 
            CXX_NEW (SCHED_OP_ANNOT(op),_mem_pool); 

        BB_OP_MAP_Set (_ops_annot_map, op, (void*)op_annot);
        
        _annot_inited_ops = 
            BS_Union1D(_annot_inited_ops, OP_map_idx(op), _mem_pool);
    }
}

SCHED_OP_ANNOT * 
SCHED_BB_ANNOT::Init_New_OP_Annot (OP* op) {

    _annot_inited_ops = 
        BS_Union1D (_annot_inited_ops, OP_map_idx(op), _mem_pool); 

    SCHED_OP_ANNOT * op_annot = 
                        CXX_NEW (SCHED_OP_ANNOT(op),_mem_pool);
    Set_OP_Annot (op, op_annot);
                    
    return op_annot;
}



    /* ===========================================================
     * ===========================================================
     *
     *              IMPLEMENTATION of SCHED_RGN_ANNOT
     * 
     * ===========================================================
     * ===========================================================
     */

/* NONE */

    /* =============================================================
     * =============================================================
     *
     *          SCHED_OP_ANNOT implementation
     *
     * =============================================================
     * =============================================================
     */

#define OP_INC_NUM (20)


    /* ===============================================================
     * ===============================================================
     *
     *          SCHED_ANNOT  implementation 
     *
     * ===============================================================
     * ===============================================================
     */

INT32 SCHED_ANNOT::_inst_num = 0 ;
SCHED_ANNOT  sched_annot ;

SCHED_ANNOT::SCHED_ANNOT (void) {
    _node_map = NULL;

    if (_inst_num++) {
       Is_True (FALSE, 
            ("two instances of class SCHED_ANNOT live simutaneously!"));
    }

    _rgn_scope = NULL;
    _local_scope = NULL;
}

void
SCHED_ANNOT::Init (REGION *scope) {

    MEM_POOL_Pop (&_mem_pool);
    MEM_POOL_Push (&_mem_pool);

    _node_map = CXX_NEW(CFG_NODE_MAP(&_mem_pool),&_mem_pool);
    _node_map -> Initialize_Map (scope) ; 
    
    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter = scope->Regional_Cfg() ;
         iter != 0 ; ++iter) {

        if ((*iter)->Is_Region()) {

           REGION * rgn = (*iter)->Region_Node();
           _node_map->Set_Map (rgn, 
                CXX_NEW(SCHED_RGN_ANNOT(rgn,&_mem_pool), &_mem_pool));

        } else {

           BB * bb = (*iter)->BB_Node();
           _node_map->Set_Map (bb, 
                CXX_NEW(SCHED_BB_ANNOT(bb,&_mem_pool),&_mem_pool));

        }
    }

    _isolated_bbs = BB_SET_Create_Empty (PU_BB_Count+2,&_mem_pool);

    _rgn_scope = scope;
    _local_scope = NULL;
}

void
SCHED_ANNOT::Init (BB *scope) {

    MEM_POOL_Pop (&_mem_pool) ;
    MEM_POOL_Push (&_mem_pool);

    _node_map = CXX_NEW(CFG_NODE_MAP(&_mem_pool),&_mem_pool);
    _node_map->Initialize_Map (scope);
    _node_map->Set_Map (scope, 
                CXX_NEW(SCHED_BB_ANNOT(scope,&_mem_pool),&_mem_pool));

    _isolated_bbs = BB_SET_Create_Empty (PU_BB_Count+2, &_mem_pool);

    _rgn_scope = NULL;
    _local_scope = scope;
}

    /* =====================================================================
     *
     *  ::Dump
     * 
     *  Dump the status of SCHED_ANNOT
     * 
     * ====================================================================
     */
void
SCHED_ANNOT::Dump (FILE *f) {

    if (!_node_map) {
        fprintf (f, "NULL\n"); return ;
    } 
         
    
    if (_rgn_scope) {
        for (TOPOLOGICAL_REGIONAL_CFG_ITER iter = _rgn_scope->Regional_Cfg() ; 
             iter != 0 ; ++iter) {
            if ((*iter) -> Is_Region()) {
                REGION *rgn = (*iter)->Region_Node();
                SCHED_RGN_ANNOT * rgn_annot = 
                    (SCHED_RGN_ANNOT *)_node_map->Get_Map (rgn);

                fprintf (f, "RGN:%d ", rgn->Id()) ;
                if (!rgn_annot) fprintf (f, "NULL\n");
                else  rgn_annot->Dump (f);
            } else {
                BB * bb = (*iter)->BB_Node () ;
                SCHED_BB_ANNOT * bb_annot = 
                    (SCHED_BB_ANNOT *)_node_map->Get_Map (bb);
                
                fprintf (f, "BB:%d ", BB_id(bb));
                if (!bb_annot) fprintf (f, "NULL \n");
                else bb_annot->Dump (f);
            }
        }
    } else {
        SCHED_BB_ANNOT * bb_annot = 
            (SCHED_BB_ANNOT *)_node_map->Get_Map(_local_scope);
        
        fprintf (f, "BB:%d ", BB_id(_local_scope));
        if (bb_annot) fprintf (f, "NULL \n");
        else bb_annot->Dump (f);
    }
}



    /* =======================================================================
     * =======================================================================
     *
     *              implementation of SRC_BB_MGR
     *
     * =======================================================================
     * =======================================================================
     */

SRC_BB_MGR::SRC_BB_MGR (MEM_POOL *mp) : 
    _mp(mp), 
    _src_bbs_vect(BB_ALLOC(mp)),
    _src_info_vect (SRC_BB_INFO_ALLOC(mp)) {

    _src_bbs_set = BB_SET_Create (PU_BB_Count+2, _mp);
    _targ = NULL;
    _scope = NULL;
    _prepass = FALSE;

    _find_src_bbs_access_bbs  = BB_SET_Create_Empty (PU_BB_Count + 2, _mp);
    _find_src_bbs_access_rgns = BS_Create_Empty (64/* estimated */, _mp);
}

SRC_BB_MGR :: ~SRC_BB_MGR (void) {
}

  /* ===================================================================
   * 
   *  _find_src_bbs & Find_Src_BBs :
   * 
   *  find out all BBs which potentially donate candidates to 
   *  <_targ>(member of SRC_BB_MGR) .
   *
   * ===================================================================
   */
BOOL
SRC_BB_MGR :: _src_bb_is_qualified (BB *src, SRC_BB_INFO * its_info, 
                                   RGN_CFLOW_MGR * cflow_info) {
    if (src != _targ) {
        
        BB_VECTOR * bb_vect ; 

        bb_vect = &its_info->siss ;
        for (BB_VECTOR_ITER iter = bb_vect->begin() ; 
             iter != bb_vect->end (); iter++) {

            if (!IPFEC_Glos_Motion_Across_Calls && 
                 BB_call(*iter) &&
                    /* p-ready candidate can by-pass call rather than 
                     * being moved across it 
                     */
                !IPFEC_Glos_Enable_P_Ready_Code_Motion) {
                return FALSE ;
            }
        }

        bb_vect = &its_info->across_bbs;
        for (BB_VECTOR_ITER iter = bb_vect->begin () ;
             iter != bb_vect->end () ; iter ++) {
            
            if (!IPFEC_Glos_Motion_Across_Calls && BB_call(*iter)) {
                return FALSE ;
            }
        }

        /* fall-thru and routine returns TRUE */
    }

    return TRUE ;
}

    /* ===================================================================
     *
     *  ::_find_src_bbs
     *
     *  Support routine for Find_Src_BBs. _find_src_bbs try to find out
     *  all BBs that are reachable from nested-<rgn> and potentially donate 
     *  candidates to <_targ>.
     *
     *  <n> is the REGIONAL_CFG_NODE of the REGION which immediatly nests 
     *  <rgn>. 
     *
     * ===================================================================
     */
void
SRC_BB_MGR :: _find_src_bbs (REGION * rgn, 
                             REGIONAL_CFG_NODE * n,
                             RGN_CFLOW_MGR * cflow_info) {

    Is_True (n->Region_Node () == rgn,
             ("n->Region_Node and rgn(%d) does not match !",rgn->Id()));
    
    if (BS_MemberP (_find_src_bbs_access_rgns, rgn->Id())) {
        return ;
    }

    _find_src_bbs_access_rgns = 
        BS_Union1D (_find_src_bbs_access_rgns, rgn->Id(), _mp);

    if (!IPFEC_Glos_Code_Motion_Across_Nested_Rgn ||
        No_OP_Can_be_Moved_Across_Region (rgn)) {
       return ; 
    }

    for (CFG_SUCC_NODE_ITER succ_iter(n);
         succ_iter != 0; 
         ++succ_iter) {
        
        if ((*succ_iter)->Is_Region ()) {

            REGION * r = (*succ_iter)->Region_Node ();
            if (No_OP_Can_be_Moved_Across_Region (r)) {
                continue ;
            } else {
                _find_src_bbs(r, *succ_iter, cflow_info);
            }
        } else {
           _find_src_bbs ((*succ_iter)->BB_Node (),cflow_info);
        }
    }
}

    /* ===================================================================
     *
     *  ::_find_src_bbs
     *
     *  Support routine for Find_Src_BBs. _find_src_bbs try to find out
     *  all BBs that are reachable from <src> and potentially donate 
     *  candidates to <_targ>.
     *
     * ===================================================================
     */
void
SRC_BB_MGR :: _find_src_bbs (BB * src, RGN_CFLOW_MGR * cflow_info) {

    _find_src_bbs_access_bbs = 
        BB_SET_Union1D (_find_src_bbs_access_bbs, src,_mp);


    if (_prepass) {
        if (BB_entry (src) || BB_exit(src)) {
            return ;
        }
    }

        /* <src> is "isolated" from schedule scope, (mostly for the 
         * debugging purpose), Do *NOT* schedule any OP out of it. 
         */
    if (BB_Is_Isolated_From_Sched (src)) return ;

    SRC_BB_INFO * bb_info = CXX_NEW (SRC_BB_INFO(_mp), _mp);
    bb_info->src          = src ;
    bb_info->targ         = _targ ;

    if (!_compute_cutting_set (src, bb_info,cflow_info) ||
        !_src_bb_is_qualified (src, bb_info,cflow_info)) {
        return ;
    }

    /* now, <src> are qualifed being an "source" BB.
     */
    if (src != _targ) {

        bb_info->donate_p_ready_cand = FALSE ;

        /*if (IPFEC_Glos_Enable_P_Ready_Code_Motion) {
            bb_info->donate_p_ready_cand = FALSE ;
        } else {
            bb_info->donate_p_ready_cand = 
                Can_BB_Potentially_Donate_P_Ready_Cands 
                    (src, _targ, cflow_info);
        }*/
        
        if (bb_info->donate_p_ready_cand) {
        
            /*cflow_info->Get_Cold_Paths_Cutting_Set 
                (src, _targ, TRUE, &bb_info->cold_paths_cutting_set);

            cflow_info->Get_Hot_Paths_Cutting_Set 
                (src, _targ, FALSE, &bb_info->hot_paths_cutting_set);
            */
        } else {

            bb_info->cold_paths_cutting_set.clear ();
            bb_info->hot_paths_cutting_set.clear  ();
        }
    }

    _src_bbs_set = BB_SET_Union1D (_src_bbs_set, src,_mp);
    _src_bbs_vect.push_back (src);
    _src_info_vect.push_back (bb_info);

    if (!_scope) {
        /* we does not specify global-scope (regional-cfg),
         * hence, current schedule scope is confined within
         * an BB, namely <_targ>, which should has *ONLY* one
         * "source" BB -- <_targ> itself.
         */ 
        
        Is_True (src == _targ, 
                 ("BB:%d should not donate candidte to BB:%d!",
                   BB_id(src), BB_id(_targ)));
        return ;
    }


    /* Check whether <src>'s desendants are also qualified as 
     * "source" BB (to <_targ> BB)
     */
    for (CFG_SUCC_NODE_ITER succ_iter(Regional_Cfg_Node(src));
         succ_iter != 0; 
         ++succ_iter) 
    {
        if ((*succ_iter)->Is_Region()) {

            REGION * r = (*succ_iter)->Region_Node ();
            if (!BS_MemberP(_find_src_bbs_access_rgns, r->Id()) &&
                 IPFEC_Glos_Code_Motion_Across_Nested_Rgn       &&
                !No_OP_Can_be_Moved_Across_Region (r)) {

                _find_src_bbs(r, *succ_iter, cflow_info);

            } else {

                _find_src_bbs_access_rgns = 
                    BS_Union1D (_find_src_bbs_access_rgns, r->Id(), _mp);
            }

        } else {

            BB * succ_bb = (*succ_iter)->BB_Node();
            if (BB_SET_MemberP (_find_src_bbs_access_bbs, succ_bb)) {
                continue ;
            }

            _find_src_bbs_access_bbs = 
                BB_SET_Union1D (_find_src_bbs_access_bbs, succ_bb,_mp);

            if (BB_exit (succ_bb) || BB_Is_Isolated_From_Sched (succ_bb)) {
                continue ;
            }

            _find_src_bbs (succ_bb, cflow_info) ;
        }
    }
}


    /* ===============================================================
     *
     *  Find_Src_BBs 
     *
     *  Find out all BBs (in the REGION <scope>) that can potentially
     *  donate candidates to <targ>.
     *
     * ===============================================================
     */
const BB_VECTOR * 
SRC_BB_MGR::Find_Src_BBs (REGION * scope , BB* targ,
                          RGN_CFLOW_MGR * cflow_info, 
                          BOOL prepass) 
{
    Is_True (!BB_Is_Isolated_From_Sched (targ), 
             ("BB:%d is isolated from schedule", BB_id(targ)));

    _src_bbs_vect.clear ();
    _src_info_vect.clear ();
    _src_bbs_set = BB_SET_ClearD (_src_bbs_set);

    _targ = targ ;
    _scope = scope ;
    _prepass = prepass; 

    _find_src_bbs_access_bbs  = BB_SET_ClearD (_find_src_bbs_access_bbs);
    _find_src_bbs_access_rgns = BS_ClearD (_find_src_bbs_access_rgns);

    _find_src_bbs (targ, cflow_info);
    
    return &_src_bbs_vect;
}


    /* ====================================================================
     *
     *  _ubs_union1d, _ubs_union1d,  _ubs_memberp, _ubs_memberp
     *  _ubs_memberp, _ubs_union1d etc
     *  
     *  ref the header file for details.
     *
     *  !!! NOTE: THESE 6 ROUTINES ARE CALLED ONLY BY <_compute_cutting_set>.
     *            THEY ARE *NOT* GENERAL PURPOSE FUNCS!
     * 
     * =====================================================================
     */  
inline BS *
SRC_BB_MGR :: _ubs_union1d (BS * Bitset, BB * bb) {
    return BS_Union1D (Bitset, BB_id(bb),_mp);
}

inline BS * 
SRC_BB_MGR :: _ubs_union1d (BS * Bitset, REGION *r, INT32 rgn_id_base) {
   return BS_Union1D (Bitset, r->Id () + rgn_id_base,_mp);
}

inline BS *
SRC_BB_MGR :: _ubs_union1d 
    (BS *Bitset, REGIONAL_CFG_NODE *n, INT32 rgn_base_id) {

    if (n->Is_Region ()) {
        return _ubs_union1d (Bitset, n->Region_Node(), 
                             rgn_base_id);
    }

    return _ubs_union1d (Bitset, n->BB_Node()) ;
}


inline BS *
SRC_BB_MGR :: _ubs_diff1d  (BS * Bitset, BB * bb) {
    return BS_Difference1D (Bitset, BB_id(bb)) ;
}

inline BS *
SRC_BB_MGR :: _ubs_diff1d  (BS * Bitset, REGION *r, 
                            INT32 rgn_id_base) {
    return BS_Difference1D (Bitset, r->Id () + rgn_id_base);
}

inline BS *
SRC_BB_MGR :: _ubs_diff1d  (BS * Bitset, REGIONAL_CFG_NODE *n,
                            INT32 rgn_id_base) {

    if (n->Is_Region ()) {
        return _ubs_diff1d (Bitset, n->Region_Node (), rgn_id_base);   
    } 

    return _ubs_diff1d (Bitset, n->BB_Node());
}


inline BOOL
SRC_BB_MGR :: _ubs_memberp (BS * Bitset, BB *b) {
   return BS_MemberP (Bitset, BB_id(b));
}

inline BOOL
SRC_BB_MGR :: _ubs_memberp (BS * Bitset, REGION *r, INT32 rgn_id_base) {
    return BS_MemberP (Bitset, r->Id() + rgn_id_base);
}

inline BOOL
SRC_BB_MGR :: _ubs_memberp (BS *Bitset, REGIONAL_CFG_NODE *n, 
                            INT32 rgn_base_id) {

    if (n->Is_Region ()) {
        return _ubs_memberp (Bitset, n->Region_Node(), rgn_base_id);
    }

    return _ubs_memberp (Bitset, n->BB_Node());
}


    /* ==============================================================
     *
     *  _compute_cutting_set 
     *
     *  Compute the cutting set for the code motion from <src>
     *  to <_targ> and keep the cutting set in src_info if at 
     *  least one cutting-set is found.
     *
     *  return TRUE iff we find one cutting-set, FALSE otherwise.
     *
     *  TODO: divide the large routine into some small ones.   
     *
     * ==============================================================
     */
BOOL
SRC_BB_MGR::_compute_cutting_set (BB * src, SRC_BB_INFO *src_info,
                                  RGN_CFLOW_MGR * cflow_info) {
    src_info->siss.clear () ;
    src_info->across_bbs.clear   ();
    src_info->across_nested_rgns.clear ();

    if (_targ == src) {

        src_info->src = src ;
        src_info->siss.push_back (src);

        return TRUE;
    }


    const INT32 rgn_id_base = cflow_info->Max_BB_Id () + 1;

        /* keep track of the nodes we have accessed
         */
    NODE_VECTOR visited_nodes_v(_mp); 
    BS * visited_nodes_bs = BS_Create_Empty (
                                cflow_info->Max_BB_Id  () + 
                                cflow_info->Max_Rgn_Id () + 2,
                                _mp);
        
        /* keep track of the nodes we need moving across 
         */
    BB_VECTOR       across_bbs  (_mp);
    REGION_VECTOR   across_rgns (_mp);


        /* cutting-set BBs 
         */
    BS * siss_node_set = BS_Create_Empty (
                            cflow_info->Max_BB_Id  () + 
                            cflow_info->Max_Rgn_Id () + 2,
                            _mp);


    visited_nodes_v.push_back (::Regional_Cfg_Node(src));
    visited_nodes_bs = _ubs_union1d (visited_nodes_bs, src);


    siss_node_set = _ubs_union1d (siss_node_set, src);
     
    while (!_ubs_memberp (siss_node_set, _targ)) {

        BOOL changed = TRUE;
        while (changed) {

                /* stepping over every node we have accessed 
                 */
            changed = FALSE ;

            for (INT32 vect_idx = 0 ; 
                vect_idx < visited_nodes_v.size() ; 
                vect_idx ++) {

                REGIONAL_CFG_NODE * member = visited_nodes_v[vect_idx]; 
                if (!_ubs_memberp(siss_node_set, member, rgn_id_base)) {

                    /* member->BB_Node() is *OBVIOUSLY* not an 
                     * element of cutting-set, this fact has already 
                     * been identified in the previous iterations
                     * of the outer while-statement, but it remains
                     * undeleted since deleting an element of an 
                     * vector is quite expensive.
                     */
                    continue ;
                }

                if (!member->Is_Region ()) {

                    BB * b = member->BB_Node ();

                    if (b == _targ) { continue ; }
                
                    if (!cflow_info->BB1_Reachable_From_BB2(b,_targ) && 
                        !BB_Is_Isolated_From_Sched (b)) {
                        continue ;
                    }
                }

                    /* Now, we can draw the conclusion that member is not 
                     * qualified being an element of cutting-set.
                     */
                siss_node_set = _ubs_diff1d(siss_node_set,
                                            member,
                                            rgn_id_base);
                changed = TRUE;


                for (CFG_PRED_NODE_ITER pred_iter(member); 
                     pred_iter != 0; 
                     ++pred_iter) {
                        
                    if (_ubs_memberp (visited_nodes_bs, 
                                      *pred_iter,
                                      rgn_id_base)) {
                        continue ;
                    }

                    visited_nodes_bs = 
                        _ubs_union1d (visited_nodes_bs, *pred_iter,rgn_id_base);

                    visited_nodes_v.push_back (*pred_iter);
                    siss_node_set = _ubs_union1d (siss_node_set, 
                                                  *pred_iter,
                                                  rgn_id_base);

                    if ((*pred_iter)->Is_Region ()) {

                        /* pred is nested REGION 
                         */
                        REGION * r = (*pred_iter)->Region_Node () ;

                        if (!IPFEC_Glos_Code_Motion_Across_Nested_Rgn ||
                             No_OP_Can_be_Moved_Across_Region (r)) {
                            return FALSE;
                        }

                        /* workaround for Edge_Splitting which currently does not 
                         * split critical edge leading from an nested region 
                         */
                        if (cflow_info->BB_Reachable_From_RGN (_targ, r)) {
                            return FALSE ;
                        }

                        across_rgns.push_back ((*pred_iter)->Region_Node());

                    } else {

                        BB * pred_bb = (*pred_iter)->BB_Node () ;
                        if (BB_Is_Isolated_From_Sched (pred_bb)) {
                            return FALSE;
                        }

                        across_bbs.push_back ((*pred_iter)->BB_Node());
                    }

                } /* end of for(CFG_PRED_NODE_ITER ...(member) */

            } /* end of for (INT32 vect_idx = 0; ...) */

        } /* end of nested while (change) */

    } /* while (_ubs...) */



    BB_VECTOR * siss_p = &src_info->siss ;
    BB_VECTOR * across_bbs_p= &src_info->across_bbs;

    for (BB_VECTOR_ITER iter = across_bbs.begin() ; 
         iter != across_bbs.end () ; 
         iter ++) {

        BB * b = *iter ;
        if (_ubs_memberp(siss_node_set, b)) {
            siss_p->push_back (b);
        } else if (b != src) {
            across_bbs_p->push_back (b);
        }
    }

    src_info->across_nested_rgns = across_rgns ;

    return TRUE;

}


    /* ==================================================================
     *
     * ::Cutting_Set 
     * 
     * return the cutting-set for the code motion from <src> to <_targ>
     * (a data member of class SRC_BB_MGR).
     *
     * ==================================================================
     */
const BB_VECTOR * 
SRC_BB_MGR :: Cutting_Set (BB * src) {

    Is_True (BB_SET_MemberP (_src_bbs_set, src), 
             ("BB:%d is not candidate BB of BB:%d", BB_id(src), BB_id(_targ)));
                
    for (SRC_BB_INFO_ITER iter = _src_info_vect.begin () ; 
         iter != _src_info_vect.end () ; iter ++) {
        SRC_BB_INFO  * info = *iter ;
        if (info->src == src) return &info->siss;
    }

    Is_True (FALSE, ("Fail to find BB-info for BB:%d", BB_id(src))); 

}

    /* ===================================================================
     *
     *  ::BBs_Between_Cutting_Set_and_Src 
     * 
     *  return the cutting-set for the code motion from <src> to <_targ>.
     *
     * ===================================================================
     */
const BB_VECTOR * 
SRC_BB_MGR :: BBs_Between_Cutting_Set_and_Src (BB * src) {

    Is_True (BB_SET_MemberP (_src_bbs_set, src), 
             ("BB:%d is not candidate BB of BB:%d", BB_id(src), BB_id(_targ)));
                
    for (SRC_BB_INFO_ITER iter = _src_info_vect.begin () ; 
         iter != _src_info_vect.end () ; iter ++) {
        SRC_BB_INFO  * info = *iter ;
        if (info->src == src) return &info->across_bbs;
    }

    Is_True (FALSE, ("Fail to find BB-info for BB:%d", BB_id(src))); 

}

    /* =================================================================
     *
     *  ::Moved_Across_Nested_Rgns 
     *
     *  Returns all nested REGIONs (in REGION_VECTOR) that when code 
     *  motion from <src> to <_targ> occurs, we need move instruction
     *  across these REGIONS.
     *
     * =================================================================
     */
const REGION_VECTOR*
SRC_BB_MGR :: Move_Across_Nested_Rgns (BB *src) {
    
    Is_True (BB_SET_MemberP (_src_bbs_set, src),
                ("BB:%d is not candidate BB of BB:%d", BB_id(src), BB_id(_targ)));
    
    for (SRC_BB_INFO_ITER iter = _src_info_vect.begin () ;
         iter != _src_info_vect.end () ; iter++) {
        
        SRC_BB_INFO * info = *iter ;
        if (info->src == src) {
            return &info->across_nested_rgns;
        }
    }

    Is_True (FALSE, ("Fail to find BB-info for BB:%d", BB_id(src))); 
}

    /* =================================================================
     *
     *  ::Get_Src_Info 
     *
     *  returns SRC_BB_INFO associated with <bb>
     *
     * =================================================================
     */
SRC_BB_INFO * 
SRC_BB_MGR::Get_Src_Info (BB * bb) {

    Is_True (Is_Src_BB (bb), ("BB:%d is not Soruce-BB", BB_id(bb)));
   
    for (SRC_BB_INFO_ITER iter = _src_info_vect.begin() ;
         iter != _src_info_vect.end() ; iter++) {
        if ((*iter)->src == bb) return *iter; 
    }

    Is_True (FALSE, ("fail to find SRC_BB_INFO for BB:%d", BB_id(bb)));
    return NULL;

}



    /* ============================================================
     * ============================================================
     *
     *          SCHED_SEQ implementation
     *
     * ============================================================
     * ============================================================
     */
REGIONAL_CFG_NODE* 
SCHED_SEQ::_next(void) {

    float freq = -1.0f ;
    REGIONAL_CFG_NODE * best = NULL;
    INT32  index = -1;

    INT32 root_num = _root.size();
    for (INT32 idx = root_num - 1 ; idx >= 0 ; idx--) {

        REGIONAL_CFG_NODE  * cand = _root[idx] ;
        float node_freq = cand->Home_Region ()-> Regional_Cfg ()-> 
                          Node_Freq (cand);
        float deviation = node_freq/200.0 ;

        if (!best || (node_freq - deviation) > freq || 
            node_freq + deviation > freq && 
            _node1_is_sparser (cand,best)) {
            best = cand ; 
            freq = node_freq ;
            index = idx ;
        }
    }

    if (!best) return NULL;

    if (index + 1 != root_num) {
        _root[index] = _root[root_num - 1];
    }

    _root.resize(--root_num);

    for (CFG_SUCC_NODE_ITER succs(best) ; succs != 0 ; ++succs) {
        if (! --_node_info_map[*succs]._n_pred) {
            _root.push_back(*succs); 
        }
    }

    return best ; 
}

SCHED_SEQ::SCHED_SEQ (REGION *rgn, MEM_POOL *mp) :
    _rgn(rgn), _root(mp) {
    _cur = NULL ;

    /* initialize the pred num 
     */
    for (TOPOLOGICAL_REGIONAL_CFG_ITER iter(_rgn->Regional_Cfg());
        iter != 0; ++iter) {
        _node_info_map[*iter]._n_pred = (*iter)->Pred_Num();
    }
}


BB *
SCHED_SEQ::Next (void) {
    while (REGIONAL_CFG_NODE * nd = _next()) {
       if (_qualified(nd)) return _cur = nd->BB_Node();
    }

    return _cur = NULL;
}

BB *
SCHED_SEQ::First (void) {

    _root.clear () ;
    _cur = NULL ;
    _root.push_back (_rgn->Entries()[0]);

    return Next () ;
}



    /* ============================================================
     * ============================================================
     * 
     *          other miscellaneous utilities 
     * 
     * ============================================================
     * ==========================================================
     */

const char *spec_text[] = {
    "non-spec", "cntl-spec", "data-spec", "comb-spec", "can't spec"
};

const char *arc_text[] = {
    "REGIN", "REGOUT", "REGANTI", "MEMIN", "MEMOUT", 
    "MEMANTI", "MEMVOL", "MEMREAD", "SPILLIN", 
    "PREFIN", "PREFOUT", "PREBR", "POSTBR", "SCC", 
    "PRECHK", "POSTCHK", "MISC",
};


/* note : this func is just for the time-being
 */
INT32 
CGTARG_adjust_latency (
    OP* pred, ISSUE_PORT pred_port, 
    OP* succ, ISSUE_PORT succ_port,
    mUINT16  arc_kind, INT32 org_latency) {

    if (!EXEC_PROPERTY_is_I_Unit(OP_code(pred)) ||
        !EXEC_PROPERTY_is_M_Unit(OP_code(pred))) {
        return 0;
    }

    if (OP_load(succ) && OP_bb(succ) == OP_bb(pred) && 
        (EXEC_PROPERTY_is_M_Unit(OP_code(pred))     || 
        EXEC_PROPERTY_is_I_Unit(OP_code(pred))      &&
        OP_m_unit(pred))) {
        if (org_latency >= 1) {
            return -1;
        }
    }

    return 0;
}

SPEC_TYPE
Dirive_Upward_Code_Motion_Spec_Type_From_Arc (ARC* Arc) {

    if (!ARC_is_dotted(Arc)) { return SPEC_DISABLED; }

    if (ARC_is_data_spec(Arc)) { return SPEC_DATA ; } 

    Is_True (ARC_is_control_spec(Arc), ("Arc is not control speculative!"));


    OP * pred = ARC_pred(Arc);
    OP * succ = ARC_succ(Arc);
        
    BB * pred_home = OP_bb(pred);
    BB * succ_home = OP_bb(succ);

    if (pred_home != succ_home &&
        !OP_call(pred)         &&
        !OP_chk(pred)          &&
        BB1_Postdominate_BB2 (succ_home, pred_home)) {

        return SPEC_NONE ; 
    }
    
    if (OP_call(pred) && !IPFEC_Glos_Motion_Across_Calls) {
        return SPEC_DISABLED ;
    }

    return SPEC_CNTL ;    
}

BOOL
Ld_Need_Not_Transform (OP* op) {

  Is_True (OP_load (op), 
           ("OP:%d (of BB:%d) is not load", 
            OP_map_idx(op), BB_id(OP_bb(op))));

  /* 1. if TN is rematerializable, need not trasforming
   */
  for (INT16 i = 0 ; i < OP_results (op) ; i ++) {
        TN * result = OP_result (op,i); 
        if (!TN_is_rematerializable(result)) continue ;

        WN * home = TN_home(result); if (!home) continue ;

        if (WN_operator(home) == OPR_LDA) return TRUE;
  }
  
  /* 2. those OPs which claims no-alias need not transforming, and
   * 3. so does for "safe-load".
   */
  
  return OP_no_alias(op) || OP_safe_load(op);

}

