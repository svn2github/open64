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

/*=====================================================================
 *=====================================================================
 *
 * Module: scheduler.h
 * $Date: 2005/10/21 19:00:00 $
 * $Author: marcel $
 * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/scheduler.h,v $
 *
 * DESCRIPTION:
 *
 * Implementation of global(on per region basis) and local (on per-BB basis) 
 * instruction scheduling
 *
 * 1. EXPORTED INTERFACES OF THIS PACKAGE
 *
 *   o. void Global_Insn_Sched(REGION_TREE& region_tree);
 *          Global instruction scheduling on per-region basis
 *
 *   o. void Local_Insn_Sched(BOOL);
 *          Local instruction scheduling on per-BB basis
 * 
 *   o. void Global_Insn_Merge_Splitted_BBs () ;
 * 
 *          We split PU's entry-BB and exit-BBs before global instruction 
 *          scheduling, and after global instrution scheduling, we merged these
 *          bbs (masked by flag BBM_SPLITTED) into the bb from which they 
 *          are separated. 
 *     
 *          Merging should be performed locally inside the Global_Insn_Sched()
 *          as splitting does to make code easy to read and maintain. But the 
 *          current implement of speculation package not allowed this package 
 *          to do so, since that package keep track of the location where 
 *          speculation occurs staticly. If we change the global CFG, building
 *          -recovery-block part of speculation package will complains. 
 * 
 *          To make speculation package happy, we isolate the merging work which 
 *          is done in CG_Generate_Code()(in cg.cxx) very after buiding specu-
 *          lation recovery block.
 *
 *   o.void Clean_Up(BB* bb);
 *          Do some house-keeping works 
 *   
 *   o. class SCHEDULER 
 *          Class which perform instruction scheduling on per region basis 
 *          or on per BB basis.
 *  
 *   o. class SCHED_MEM 
 *          Near-empty base class to SCHEDULER, designed to make sure the 
 *          mempool is initialized properly before its derived class 
 *          instance's constructor. It is better to reclaim memory from 
 *          mempool in this base class than in derived class destructor.
 *
 * 
 * 
 * 
 * 2. STRUCTURE, CLASSES USED INTERNALLY IN SCHEDULER
 *  
 *      struct CANDIDATE 
 *          data structure designed to hold some essential information of 
 *          candidate instruction.
 *  
 *      class OP_SCHED_INFO 
 *          candidate's heuristic information     
 * 
 *=====================================================================
 *=====================================================================
 */ 


#ifndef scheduler_INCLUDED
#define scheduler_INCLUDED

/* Using STL template 
 */
#include <slist.h> 
#include <list.h>
#include <vector.h> 
#include <map.h>

/* memory management 
 */
#include "mempool.h"
#include "mempool_allocator.h"

/* definition used globally in backend 
 */
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

/* communicate with micro-scheduler and region-formation packages 
 */
#include "cggrp_microsched.h"
#include "region.h"
#include "region_verify.h"

#include "targ_issue_port.h"
#include "targ_isa_bundle.h"

#include <string.h>     /* for bzero */


/* Locally reuse of OP_flag1 to indidcate whether an candidate
 * is scheduled or not, also need by micro-schedler 
 */
#define OP_Scheduled          OP_flag1
#define Set_OP_Scheduled      Set_OP_flag1
#define Reset_OP_Scheduled    Reset_OP_flag1

/* exported interfaces of this package 
 */
extern void Global_Insn_Sched(REGION_TREE& region_tree);
extern void Local_Insn_Sched(BOOL);
extern void Global_Insn_Merge_Splitted_BBs () ;
extern void Clean_Up(BB* bb);





/* ==================================================================
 * 
 *  Candidate structure and relative routines 
 * 
 * =================================================================
 */

enum SPEC_TYPE { NO_SPEC, CNTL_SPEC, DATA_SPEC, COMB_SPEC };
extern char* spec_text[] ;

typedef UINT32 CYCLE;
struct CANDIDATE {

    OP*        _op;           /* associated OP */
    CYCLE      _etime;        /* cached e-time */
    BOOL       _tried;         
    SPEC_TYPE  _spec_type ;   /* speculation type */

    BOOL       _is_P_READY ;  

                        /* the following 3 fields are actually NOT 
                         * used in this release
                         */
    BOOL       _predicate_guarded ;  
    BB *       _unresolved_dep_pred_bb ;
    INT8       _unresolved_data_dep_num ;
};

void CAND_Init (CANDIDATE * cand_ptr, OP* op, SPEC_TYPE spec_type, 
           CYCLE etime,BOOL Is_P_READY, BB * unresolved_dep_pred_bb , 
           BOOL predicate_guarded=FALSE) ; 

BOOL CAND_is_spec (CANDIDATE *cand) ;

BOOL CAND_cand_are_the_same (CANDIDATE *cand1, CANDIDATE * cand2) ;

SPEC_TYPE CAND_Get_Update_to_Date_Spec_Type (CANDIDATE * cand_ptr, 
                 BOOL *guarded_by_predicate_def) ;

void CAND_Dump (CANDIDATE * cand, FILE *f) ;


/* =================================================================== 
 * 
 *      Heuristic info 
 *
 * ===================================================================
 */
class OP_SCHED_INFO {
public:
    INT32 _etime ;
    float _delay ;

    BB * _etime_set_by_which_bb ;
 
    OP_SCHED_INFO() {
        _etime = 0;
        _delay = 0.0f;
        _etime_set_by_which_bb = NULL ;
    }
};






/* ==========================================================================
 * ==========================================================================
 *
 * SCHEDULER:
 *
 * EXPOSED FUNCTIONS 
 * 
 *   O. CONSTRUCTOR & DESTRUCTOR
 *
 *     o. SCHEDULER (BB* bb, BOOL before_regalloc,PRDB_GEN *prdb=NULL) ;
 *     o. SCHEDULER (struct tagRGN_INFO * rgn_info, BOOL before_regalloc , 
 *                   PRDB_GEN * prdb=NULL) ;
 *
 *     o. ~SCHEDULER () ;
 *
 * 
 *     o. void Schedule_Region ();
 *     o. void Schedule_BB ();
 *     o. void Verify_Region_Integrity (REGION * rgn_ptr) ;
 * 
 *     o. void Print(FILE* file = stderr);
 *     o. void Verify() ;
 *
 * ===========================================================================
 * ===========================================================================
 */ 

  /* base class to SCHEDULER 
   */
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


struct tagRGN_INFO ;
template <class _Ptr_Tp>
struct ptr_hash {
    size_t operator()(_Ptr_Tp __x) const { return UINT(__x); }
};



class SCHEDULER : public SCHED_MEM {

friend void Global_Insn_Sched(REGION_TREE* region_tree, BOOL prepass) ;
friend void Global_Insn_Merge_Splitted_BBs () ;

private:
    
    /* -----------------------------------------------------------------
     * 
     *    OP heuristic map: OP => OP_SCHED_INFO 
     *
     *------------------------------------------------------------------
     */
    typedef mempool_allocator <pair<OP*,OP_SCHED_INFO*> >	OP_INFO_ALLOC;
    typedef hash_map<OP*, OP_SCHED_INFO*, ptr_hash<OP*>,
            equal_to<OP*>, OP_INFO_ALLOC> OP_INFO_MAP;
    typedef OP_INFO_MAP::iterator      OP_INFO_ITER;


    /* ----------------------------------------------------------------------
     *   
     *      BB annotation : associate BB with arbitrary data 
     * 
     *  During instruction scheduling, we frequently append arbitrary info 
     *  to a BB, and these info are frequently manipulated. BB_MAP does 
     *  provide a mechanism to map a BB address to arbitrary value with 
     *  size less than 8 bytes, but this mapping is quite expensive both 
     *  in time and space. And, structure BB itself has a field named 
     *  annotation(of type struct annotation) which provide similar functi-
     *  onality. However, only a set number of annotations are predefined, 
     *  to extend will affect the whole backend globallly. So, we design 
     *  another BB-annotation scheme which is used locally in SCHEDUER. 
     * 
     *  Our approach is : 
     *  1st : map bb-ids to a contiguous range of integer (1 through <_BB_-
     *        num_in_rgn> inclusively). 
     *
     *  2nd : predefine a annotation structure with each field contain or 
     *        point to a kind of annotation. To same space, some fields of
     *        this structure can share same location via a union if the 
     *        correponding annotation of these fields in question do not 
     *        live simutaneously.
     *
     *  3nd : It stands to reason, almost all BBs need same kinds of anno-
     *        tations, since they share similar role in a given scope(region-
     *        /bb) from most perspectives. It is straightforward to put all 
     *        bb-annotation structure in one array/vector, whichby , another
     *        benefit is gained -- spacial locality. 
     *        
     * ---------------------------------------------------------------------------
     */   

    /* calc how many bb node in current regional CFG (not including inner- 
     * region) and the maximum id of these BBs. 
     */
    INT16     _BB_num_in_cur_scope;  
                              /* the number of bb node in current scope 
                               * (region/bb) */
    mBB_NUM   _Max_BB_id ;     /* maximum bb id in currrent scope */ 

    typedef  mBB_NUM  mCONT_BB_NUM ;
    #define  mCONT_BB_NUM_BASE    1
                    /* f : BB-id => { 1, 2 ..., <_BB_num_in_cur_scope>}
                     */
    mCONT_BB_NUM *_BB_id_map_ptr;  

    void Map_BBs_id_to_Contiguous_Range_Ints () ;
    mCONT_BB_NUM Get_Contiguous_BB_ID(BB* bb) {
        return (mCONT_BB_NUM)_BB_id_map_ptr[BB_id(bb)] ;
    }

    void Get_BB_Number_Max_BB_ID_Max_Rgn_Number () ; 
   
    typedef enum {
        SCHED_BB_ANNOT_OP_INFO_MAP_IDX ,
        SCHED_BB_ANNOT_OP_INFO_LAST
    } SCHED_BB_ANNOT_OP_INFO_FIELD_IDX ;

    typedef struct tagSCHED_BB_ANNOT {
           /* f : {OPs of this bb} => { its heur info } 
            */
        OP_INFO_MAP   _op_heuristic_info ;

            /* during global scheduling  some OPs are appended to the end of an 
             * unscheduled BB by issuing SCHEDULER::Append_Dup_OP_2_BB. This 
             * field indicate where these appended OPs start. (All appended OPs 
             * start from <_appended_op_begin_with_this> through the end of BB 
             * except control-transfer op if any). If BB is appended with ops 
             * heuristic need recalculating.  
             */ 
        OP *  _appended_op_begin_with_this ; 
        BOOL  have_init ;  

        BOOL  processed ;  

             /* TRUE for non-BB_call BB. for BB_call-BB, this field indicate 
              * whether we have identify all actual parameters or not 
              */
        BOOL  iden_para_passing_OPs ;

             /* indicate whether the OPs' (of this associated BB) delay (ref 
              * list sched algorithm for detail) need adjusting to reflect 
              * its up-to-date status
              */
        BOOL  _need_adjust_delay ;

             /* the reachable-probability from <(SCHEDULER::)_target_bb> to 
              * this-struct-associate-BB
              */
        INT32 _reachable_prob ;  
         
             /* for regional-cfg-node x, we define:
              * min_level(x) = 1                         ; if x is root-node
              *              = max(min-level(PREDs)) + 1 ; otherwise
              *
              * max_level(x) = min_level(x)              ; if x is leaf
              *              = max(max_level(SUCCS)) - 1 ; otherwise
              */
        INT32 min_level ;
        INT32 max_level ;

        tagSCHED_BB_ANNOT () {
            _appended_op_begin_with_this = NULL; 
            have_init = FALSE;
            _reachable_prob = 0 ;
            min_level = max_level = 1;
            processed = FALSE ;
            _need_adjust_delay = TRUE;
            iden_para_passing_OPs = FALSE;
        }

    } SCHED_BB_ANNOT,*PSCHED_BB_ANNOT ;

    typedef mempool_allocator<SCHED_BB_ANNOT>    SCHED_BB_ANNOT_ALLOC;
    typedef vector<SCHED_BB_ANNOT,BB_ALLOC>      SCHED_BB_ANNOT_VECTOR;
    typedef SCHED_BB_ANNOT_VECTOR::iterator      SCHED_BB_ANNOT_VECTOR_ITER;

    SCHED_BB_ANNOT_VECTOR _BB_annotation_vector ;  
    void Build_BB_Annotation_Vector (void) ;

    #define BB_ANNOT_op_info_map(bb)  \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))]._op_heuristic_info)

    #define BB_ANNOT_first_append_op(bb) \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))]._appended_op_begin_with_this) 

    #define BB_ANNOT_heuristic_init(bb) \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))].have_init)

    #define BB_ANNOT_iden_para_passing_OPs(bb) \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))].iden_para_passing_OPs)

    #define BB_ANNOT_reachable_prob(bb) \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))]._reachable_prob) 

    #define BB_ANNOT_need_adjust_delay(bb) \
         (_BB_annotation_vector[Get_Contiguous_BB_ID((bb))]._need_adjust_delay) 

    INT32 BB_ANNOT_min_level(BB * bb) { 
        return _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].min_level;
    }

    INT32 BB_ANNOT_max_level(BB * bb) {
        return _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].max_level;
    }

    INT32 BB_ANNOT_processed (BB * bb) {
        return _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].processed ;
    }

    void  BB_ANNOT_set_processed (BB *bb) {
        _BB_annotation_vector[Get_Contiguous_BB_ID(bb)].processed = TRUE ;
    }

    /* --------------------------------------------------------------------
     * 
     *  inner-region node annotation : 
     *  
     *  associate inner-region with arbitrary data. 
     *  handled in the same way as "BB-annotation" (described in previous 
     *  sections.)
     * 
     * ---------------------------------------------------------------------
     */
    INT16 _Inner_rgn_in_cur_scope ;
    INT32 _Max_rgn_id ;

    typedef struct tagRGN_ANNTATION {
        REGION * inner_rgn_ptr ;
        mINT8  * reachable_bb_vector ;
        INT32  * bb_reachable_prob_vector ; /* scale 100 */
        INT32    min_level ;
        INT32    max_level ;
    } RGN_ANNOTATION ;

    typedef mempool_allocator<RGN_ANNOTATION>    RGN_ANNOTATION_ALLOC;
    typedef vector<RGN_ANNOTATION,RGN_ANNOTATION_ALLOC>  RGN_ANNOTATION_VECTOR;
    typedef RGN_ANNOTATION_VECTOR::iterator      RGN_ANNOTATION_VECTOR_ITER;

    RGN_ANNOTATION_VECTOR  _RGN_annotation_vector;
    void Build_RGN_Annotation_Vector (void) ;
  
    #define RGN_ANNOT_Get_BB_Reachable_Vector(x) \
        _RGN_annotation_vector[(x)->Id()].reachable_bb_vector 

    #define RGN_ANNOT_Get_BB_Reachable_Prob_Vector(x) \
        _RGN_annotation_vector[(x)->Id()].bb_reachable_prob_vector 

    #define RGN_ANNOT_min_level(x) \
        _RGN_annotation_vector[(x)->Id()].min_level 

    #define RGN_ANNOT_max_level(x) \
        _RGN_annotation_vector[(x)->Id()].max_level 


    mINT8  * GET_CFG_NODE_BB_Reachable_Vector (REGIONAL_CFG_NODE * cfg_node) ;
    INT32  * GET_CFG_NODE_BB_Reachable_Prob_Vector (
                                    REGIONAL_CFG_NODE * cfg_node) ;
    REGION * Get_Inner_Rgn_by_Id(INT32 rgn_id) ;
  

    /* ----------------------------------------------------------------------
     *
     *          TLog (transformation log) stuff 
     *
     * ----------------------------------------------------------------------
     */ 
  
    #define GENERAL_PURPOSE_BUF_SIZE 1024 
    static  char    _before_motion[GENERAL_PURPOSE_BUF_SIZE] ;
    char    *       _before_motion_buf_next ;

    static  char    _after_motion[GENERAL_PURPOSE_BUF_SIZE];
    char    *       _after_motion_buf_next ;

    static  char    _aux_info[GENERAL_PURPOSE_BUF_SIZE];
    char    *       _aux_info_buf_next ;

    void    Init_TLog_Buf (char* which_buf) ;
    void    Init_TLog_Buf (void) ;
  
    char ** Get_Buf_Free_Space (char *which_buf) ;

    #define Fin_Buf(x)  ((void)0) 
    void   Append_Str_2_Buf (char *which_buf,char * fmt,...) ;


    /* --------------------------------------------------------------
     *
     * Cutting-set/separating-set stuff 
     *
     * Overview :
     * 
     *    Cutting-set is emploied to represent a set of BB(s) into which 
     *    candidates is copied or moved. <_target_bb>, combined with 
     *    source bb (on which candidate OP resides), determine a cutting-set
     *    of which <_target_bb> is an element. This concept is applied both 
     *    on global and local context. In local scheduling, Cutting set 
     *    include only <_target_bb> itself(<_target_bb> is also viewed as 
     *    sole source bb). In global scheduling, Cutting set may contains more 
     *    than one bbs which  collectively dominate the source bb which donate 
     *    candidates to <_target_bb>.
     *     
     *    We adopt David Bernstein's algorithm to calculate cutting-set for 
     *    a given source bb and <_target_bb>(check his paper for detail : 
     *    "Code Duplication: An Assist for Global Instruction Scheduling").  
     *    In Bernstein's paper, cutting-set should hold the property, namely, 
     *    there is no directed path from one element to another, hence the 
     *    the name, "Strongly-Independent-Separating-Set" , SISS for short. 
     *     
     *    We precompute cutting-set for a given <_target_bb> and source-bb 
     *    pair before any code motion happens 
     * 
     * SISS storage, elements iteration ,mapping and other miscellaneous info 
     *
     * _SISS_guarded_tuple3 
     *     When we move (or copy) an OP from source bb X to destination BB Y 
     *     (not necessarily <_target_bb>) , We should make the TN/register 
     *     ,which this OP defines, live out at the exit point of each bb 
     *     along the path from destination-bb to source-bb (not including 
     *     source-bb), and make it live in at the entry point of each bb 
     *     along the same path(not including both destination- and source-bb)
     * 
     *     This should be done on per code motion basis to prevent OPs 
     *     being moved into some bbs, unexpectly kills some defs 
     *
     *     The field <guarded_ptr> record those BBs whose liveness are affected 
     *     and need updating when code motions happens across BBs. These bbs 
     *     is calculated during the calculating SISS. Because all these bbs are
     *     reachable from SISS and upon which source-bb is reachable, intuitively
     *     there are "guarded" by SISS, hence the name 
     *
     *     <siss_ptr> contains all elements of SISS, the corresponding source-bb
     *     does not recorded in this structure, since this structure is designed  
     *     to be value space of a map which indexed by source BBs' address. Prior 
     *     to obtaining any instance of this structure, source-bb is already known, 
     *     So no need to record src bb. And, the target-bb is kept in member 
     *     <_target_bb> which is used globally in the scope of SCHEDULER, this  
     *     obviates the need the record target-bb.  
     *  
     *     <b_cntl_equiv>  indicates code-motion from source-bb to target_bb is 
     *     a control-equivalent one if all data-depdences(dotted) upon OPs in <
     *     guarded_ptr> are resolved.
     *
     *
     *   SRC_BB_SISS_MAP _src_bb_siss_map 
     *     Can be viewed as a function :
     *     SRC_BB_SISS_MAP:{<src-bb, _target_bb> pair} => { _SISS_guarded_tuple3 
     *                instance} 
     *     Actually, we use only src-bb as an index to this map, since the 
     *     map is recreated when <_target_bb> differs, and the previous map 
     *     is discarded. 
     *
     * --------------------------------------------------------------------------
     */
    
    /* storage & iteration of SISS and some "by-product"s of 
     * SISS calculation 
     */ 
    typedef     mempool_allocator<BB*>		BB_PTR_ALLOC;
    typedef     list<BB*,BB_PTR_ALLOC> 	 	SISS ;
    typedef     SISS::iterator 			    SISS_ITERATOR ;
    struct      _SISS_guarded_tuple3 {
                    list<BB*, BB_PTR_ALLOC> *siss_ptr;
                    BB_VECTOR * guarded_ptr;   
                    BOOL b_cntl_equiv;
    };
  
    /* SRC_BB_SISS_MAP : {<source bb>} => {<SISS as well as it by-product>} 
     */
    typedef map<BB*,struct _SISS_guarded_tuple3 *, greater<BB*> > 	
            SRC_BB_SISS_MAP;
    SRC_BB_SISS_MAP _src_bb_siss_map ;
  
    /* routines tauxiliary to calc SISS 
     */ 
    mINT8 * _marked_bb_vector_ptr ; 
    void BB_SetMarked (BB* bb);
    BOOL BB_IsMarked (BB* bb);


    /* --------------------------------------------------------------------
     *
     *      reachable-info stuff 
     *
     * --------------------------------------------------------------------
     */ 

    INT16 _BB_REACHABLE_VECTOR_SIZE ;  
    mINT8 **  _reachable_matrixp ;

    INT16       _BB_REACHABLE_PROB_VECTOR_SIZE ;
    INT32 **    _reachable_prob_matrixp ;

    mINT8 *     Create_BB_Reachable_Vector (UINT16 size_in_bytes) ;

    INT32 *     Create_BB_Reachable_Prob_Vector (UINT16 sizeof_in_bytes) ;
    INT32       Get_BB_Reachable_Prob (BB * target_bb, BB* src_bb) ;
    void        Set_BB_Reachable_Prob (BB* target_bb, BB* src_bb,INT32 prob) ;
    void        Set_BB_Reachable_Prob (REGION* rgn, BB* src_bb,INT32 prob) ;
    void        Set_BB_Reachable_Prob (INT32 *vector_ptr, BB* src_bb,
                                      INT32 prob) ;
    void        fused_mult_Add_BB_Reachable_Prob_Vector (INT32 * target_vect, 
                                      INT32 * src_vect, INT16 element_num,
                                      float mult_by) ;
  
    void        Union_BB_Reachable_Vector (mINT8 * target_vector_p, 
                                           mINT8 * src_vector, 
                                           INT16 vector_size_in_bytes);

    BOOL        BB1_reachable_from_BB2 (BB* bb1 , BB* bb2) ;
    void        Set_BB1_reachable_from_BB2 (BB * bb1, BB* bb2) ;
    void        Set_BB_is_reachable (mINT8 * reachable_vector_ptr, BB * bb) ;
    BOOL        Is_BB_reachable (mINT8 *reachable_vector_ptr, BB *bb);
 
    /* build reachable matrix for current regional CFG. 
     */
    BOOL        Build_Reachable_Matrix (BB_VECTOR * region_bbs) ;
    BOOL        Build_Reachable_Prob_Matrix () ;
    BOOL        Build_Reachable_Stuff (BB_VECTOR *region_bbs) ;
    void        Cache_Reachable_Prob (void) ;

    BOOL        Is_Reachable_From_SISS (BB* bbptr,SISS *siss_ptr) ;
    BOOL        BB_reachable_from_rgn(BB *bb_ptr,REGION * rgn_ptr) ;
            
    struct _SISS_guarded_tuple3 * Compute_SISS (BB* dest, BB* src) ;

    void        Mark_Reachable_BBs (BB* startptr) ;
    BOOL        Is_Member_of_SISS (BB *bbptr , SISS* siss_ptr);
    BOOL        IS_INVALID_SISS(SISS *p) {
                    return p == (SISS *)(void*)1;
                }



    /* ------------------------------------------------------------
     *  CFG transformation & query (part 1) : query relations 
     *     between rgn nodes
     * ------------------------------------------------------------
     * INT16     Count_Succ_BB_Num (REGIONAL_CFG_NODE * node) 
     * INT16     Count_Pred_BB_Num (REGIONAL_CFG_NODE * node) ;
     *    how may succeeding/preceding BB nodes 
     *
     * BOOL Does_Edge_Present () 
     *     check if critical edge (JS or joint/split edge) still 
     *     present in current regional CFG.  
     * 
     *------------------------------------------------------------
     */   
    static INT16     Count_Succ_BB_Num (REGIONAL_CFG_NODE * node) ;
    static INT16     Count_Pred_BB_Num (REGIONAL_CFG_NODE * node) ;
   
    BOOL      Has_Scheduled_Preds(BB* bbp) ;
    static BOOL Does_JS_Edge_Present (REGION * rgn) ; 

    void      Compute_Node_Level () ;
    INT32     across_node_num (BB * from , BB * to) ;

    /* -----------------------------------------------------------------
     * 
     *      Entry- Exit-BB spliting and merging 
     * 
     * -----------------------------------------------------------------
     */
    static BB  * _entry_bb_ptr ; 
    static BB  ** _exit_bbs_ptr ;
    static INT16  _exit_bb_num , _exit_bbs_link_len;
  
    static void Split_Entry_BB (REGION * region_ptr);
    static void Split_Exit_BBs (REGION * region_ptr) ;
    static void Split_Exit_BB  (BB *exit_bb_ptr);
  
    static void Copy_Entry_BB_Annotation (BB* entry_bb, BB* splitted_bb);
    static void Merge_Splitted_Entry_BB (BB *entry_bb_ptr) ;
    static void Merge_Splitted_Exit_BB (BB *exit_bb_ptr) ;
  
    static void Init_PU_Boundary_BB_Splitting (void) ;
    static void Finalize_PU_Boundary_BB_Split (void) ;
  
    static BB *Set_Splitted_Entry_BB (BB *entry_ptr) { 
                                _entry_bb_ptr = entry_ptr; } ;
    static BB* Get_Splitted_Entry_BB (void) { return _entry_bb_ptr ; } ;
  
    static void Add_Splitted_Exit_BB (BB* bb_ptr) ;
    static BB * Get_Splitted_Exit_BB (INT16 index) ; 
    
    BB_VECTOR * Sort_Region_BBs (void);
  
    void Find_Source_BBs (BB* bb , SRC_BB_SISS_MAP *siss_map) ;

    /* -------------------------------------------------------------------
     *
     *  Express code motion constraint : 1. dep DAG, and 2. liveness
     *
     * -----------------------------------------------------------------
     */
    DAG_BUILDER _dag_constructor;
    void Update_DAG (OP* op);
    void Dump_DAG  (FILE *f);

    BOOL Are_Defs_Live_Out (OP* op, BB* target_bb);
    BOOL Are_Defs_Live_Out (OP* op, SISS * siss_lstp) ;
    void Add_Live_Out      (BB* bb, OP* op) ;
    void Add_Live_In       (BB* bb, OP* op) ;
    void Update_Liveness_Info (SISS *siss_lst , BB_VECTOR *siss_guarded_bb, 
                               BB* src_bb,OP* op) ;




    /* -------------------------------------------------------------------
     * 
     *      candidate management
     *
     * ------------------------------------------------------------------
     */

    /* storage & iteration for both M_ready and P_ready candidates  
     */ 
    typedef mempool_allocator<CANDIDATE*>	CAND_ALLOC;
    typedef list<CANDIDATE*, CAND_ALLOC>    CANDIDATEs;
    typedef CANDIDATEs::iterator      	    CAND_ITERATOR;
 
    /* M-ready and P-ready candidates are stored in separate lists
     * and managed separately 
     */
    CANDIDATEs      _M_READY_candidates;
    CANDIDATEs      _P_READY_candidates;
  
    CANDIDATE*      In_P_READY_Candidate_List (OP* op) ;
    CANDIDATE*      In_M_READY_Candidate_List (OP* op) ;

    CANDIDATE *     In_Candidat_List (OP* op) { 
                        CANDIDATE * pcand ; 
                        if (pcand = In_M_READY_Candidate_List (op))
                            return pcand ;  

                        return In_P_READY_Candidate_List (op);  
                    }
  
    CANDIDATE *     Find_P_READY_Candidate  (OP *op) ; 

    void    Erase_P_READY_Candidate (OP *op) ;

    BOOL    All_M_READY_Candidates_Tried (void);
    BOOL    All_P_READY_Candidates_Tried (void);
    BOOL    All_Candidates_Tried (void) { 
                return All_M_READY_Candidates_Tried () && 
                       All_P_READY_Candidates_Tried ();
                }

    void    Reset_M_READY_Candidates_Untried (void);
    void    Reset_P_READY_Candidates_Untried (void);

    void    Find_Candidates (SRC_BB_SISS_MAP *siss_map) ;

    BOOL    Try_Add_OP_to_Candidate_List (OP* op,SISS *siss_lst);

    void    Update_Candidate_List_During_Sched_Cyc (CANDIDATE& cand,
                                                    SISS* siss_lstp) ;
    void    Add_Cand_After_Cycle_Advancing (void) ; 


  
    #define LOWEST_PROB_FOR_HIGHLY_BIASED_BR (0.7f)
    BB *    _highly_biased_branch_succ ;
    void    Determine_P_Ready_is_Profitable_or_not (void); 
    void    Disable_P_Pready_Cand (void) { _highly_biased_branch_succ = NULL ; } ;
    BOOL    P_READY_Cand_Disabled (void) {
                return _highly_biased_branch_succ == NULL ; 
            };

    CANDIDATE*  Select_Best_Candidate (void);
    CANDIDATE*  Select_Best_Candidate (CANDIDATEs *Cand_List_ptr) ;

    CANDIDATE * _free_candidate_list ;
    CANDIDATE * NewCandidate (OP* op, SPEC_TYPE spec_type, CYCLE etime,
                              BOOL Is_P_READY, BB * unresolved_dep_pred_bb , 
                              BOOL predicate_guarded=FALSE) ; 
    void        FreeCandidate (CANDIDATE *cand) ;

    void        Dump_Candidates (FILE *f);
    void        Trace_Candidate_Updating (OP *op, FILE *f) ;
    void        Trace_Candidate_Selection_Process (FILE *f);


    /* -------------------------------------------------------------
     *  
     *      Heuristic info stuff 
     * 
     * -------------------------------------------------------------
     */
    OP_SCHED_INFO * Get_OP_Heuristic_Info (OP *op) ;

    void init_heur_info (BB *bb) ;
    void init_heur_info (REGION * rgn) ;

    void Compute_Delay (REGION *rgn, BOOL global_ver=TRUE) ;
    void Compute_Delay (BB *bb, BOOL global_ver=TRUE) ;

    typedef struct { BB * succ ; float reach_prob ; float max_delay ; 
                     INT32 flow_shift_latency ; 
    } SUCC_INFO ;
    void Compute_Delay (OP * op, SUCC_INFO * succ_info, INT32 succ_num, 
                        BOOL global_ver=TRUE) ;

    inline void Compute_Delay_4_Inserted_OP (OP * op, BOOL global_ver=TRUE) ;
    void Adjust_Delay (REGION *rgn, BOOL global_ver=TRUE) ;

    void Reset_BB_OPs_etime (BB *bb);
    void Reset_BB_OPs_etime (BB_VECTOR *bb);


    /* ------------------------------------------------------------
     * 
     *        Load transformation 
     *
     * ----------------------------------------------------------*/
    BOOL Spec_Ld_In_Normal_Form_Is_Profitable (OP *op) ;
    BOOL Ld_Need_Not_Transform (OP* op) ;


    /* -------------------------------------------------------------
     *        
     *            Miscellaneous
     *
     *--------------------------------------------------------------
     */


    void    Dump_IR (FILE* f=stderr);
    static void Get_Trace_Flags () ;

    BOOL Is_Cntl_Equiv (SISS *siss_ptr, BB* source_bb_ptr) ;

    BOOL Append_Dup_Op_2_BB (OP* op,BB* bb) ;
    BOOL Commit_Schedule (CANDIDATE& cand,
                          struct _SISS_guarded_tuple3 *tuple);

    void  Preprocess_GP_def_op () ;
    void  Postprocess_GP_def_op () ;


    void Cycle_Advance (void);

    OP *  _gp_def_op ; 
    ARC_LIST * _dep_upon_this_op ;
    BOOL OP_def_GP (OP* op) ;

#ifdef Is_True_On
    void GP_Def_is_first_OP (OP *op) ;
#endif 
    void Push_Down_Remaining_OPs(void);
  
    /* -------------------------------------------------------------------
     *
     *      scheduling status and context  
     *
     *
     * o. _current_cycle   : it is self-descripative
     *
     * o. _cur_cyc_op_num  : this many OPs in current inst cycle.
     *
     *                       NOTE: In our compiler, we compact OPs 
     *                             in one group that can be issued
     *                             exactly in one cycle, namely, no
     *                             split-issue caused by structural
     *                             hazard.
     *
     * o. _ops_in_cur_cyc  : all OPs issued in <_current_cycle>   
     *                       are collected in this vector.
     * 
     * o. _before_regalloc : True: code motion before register allocation
     *                     : false : otherwise
     * 
     * o. _region          : specify global code motion scope
     *
     * o. _target_bb       : In local scheduling phase, <_target_bb> specify
     *                       the scheduling scope (within a BB), however, 
     *                       in global scheduling phase, this member is 
     *                       mutable, it go through each BB in <_region> 
     *                       with exception of (PU) Entry- Exit-BB. 
     *
     * o. _source_bbs      : BBs that donate candidates to <_target_bb>, 
     *                       including <_target_bb> itself
     * 
     * ---------------------------------------------------------------------
     */

    CYCLE   _current_cycle;  
    INT32   _cur_cyc_op_num ; 
                              
    OP *    _ops_in_cur_cyc[ISA_MAX_SLOTS * ISA_MAX_ISSUE_BUNDLES];
    OP*     _frontier_op;

    BOOL    _before_regalloc;
    BOOL    _global;
                        
    REGION* _region;  /* global code motion scope */ 
    BOOL    _in_abnormal_loop ;

    BB*     _target_bb; 
    BB_VECTOR _source_bbs;


    /* process many messy thing before global code motion starts
     */
    void    Identify_Para_Passing_OPs (BB* bb) ; 
    void    Identify_Cannot_Spec_OPs (BB * bb) ;
    void    Identify_Cannot_Spec_OPs (REGION * rgn) ;
    BOOL    Para_Passing_OPs_have_been_Identified (BB *bb) ;   

    BB_VECTOR * Sched_Rgn_Preproc ();


public:

    SCHEDULER (BB* bb, BOOL before_regalloc,PRDB_GEN *prdb=NULL) ;
    SCHEDULER (struct tagRGN_INFO * rgn_info, BOOL before_regalloc , 
               PRDB_GEN * prdb=NULL) ;

    ~SCHEDULER () ;

    /* phase name */
    static  char *       _Global_Insn_Sched_Phase_Name ; 
    static  char *       _Local_Insn_Sched_Phase_Name ;
    static  char *       _Cur_Phase_Name ; 

    void    Schedule_Region();
    void    Schedule_BB();

    #ifdef  Is_True_On
    void    Verify_Region_Integrity (REGION * rgn_ptr) ;
    #endif

    void    Print (FILE* file = stderr);
    void    Print_Candidate_Selection_Process ();
    void    Verify() ;
};

#endif

