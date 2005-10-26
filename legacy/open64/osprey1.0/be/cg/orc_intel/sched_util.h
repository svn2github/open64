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

#ifndef sched_util_INCLUDED
#define sched_util_INCLUDED

#include "defs.h"

#include <list.h>
#include <vector.h> 
#include <queue>

/* memory management */
#include "mempool.h"
#include "mempool_allocator.h"

/* definition used globally in backend */
#include "ipfec_defs.h"
#include "cg_flags.h"

/* tracing facility and commomly used data structure and 
 * utilities
 */
#include "tracing.h"
#include "bb.h"
#include "op.h"

/* control flow related header file
 */
#include "region.h"
#include "region_verify.h"
#include "dominate.h"

#include "reg_live.h"

#include "targ_issue_port.h" /* for ISSUE_PORT */
#include "dag.h"

#ifndef	min
    #define min(a,b) (((a)<(b))?(a):(b))
#endif

#ifndef	max
    #define max(a,b) (((a)>(b))?(a):(b))
#endif

/* ????????? put this typedef to region.h ?????????? 
 */
typedef BB_VECTOR::const_iterator BB_VECTOR_CONST_ITER;
typedef REGION_VECTOR::iterator   REGION_VECTOR_ITER;
typedef REGION_VECTOR::const_iterator RGN_VECTOR_CONST_ITER;

    /* ==============================================================
     * ==============================================================
     *
     *          speculation and dependence related stuff 
     * 
     * ==============================================================
     * ==============================================================
     */
typedef enum {
    SPEC_NONE   = 0,    /* no speculation */
    SPEC_CNTL   = 1,    /* control speculation */ 
    SPEC_DATA   = 2,    /* data speculation */ 
    SPEC_COMB   = 3,    /* both data and control speculation */
    SPEC_DISABLED = 4,  /* could not speculate */
} SPEC_TYPE ;

typedef enum {
    LOAD_FORM_NORMAL = 0,
    LOAD_FORM_DOT_S  = 1,  /* ld[1,2,4,8].s form */
    LOAD_FORM_DOT_A  = 2,  /* ld[1,2,4,8].a form */
    LOAD_FORM_DOT_SA = 3,  /* ld[1,2,4,8].sa form */ 
    LOAD_FORM_LAST   = 4, 
} LOAD_FORM ;

extern const char * spec_text[] ;
extern const char * arc_text[] ;

extern BOOL Ld_Need_Not_Transform (OP* op) ;
extern SPEC_TYPE Dirive_Upward_Code_Motion_Spec_Type_From_Arc (ARC* arc) ;

typedef struct tagUNRESOLVED_DEP  UNRESOLVED_DEP ;
struct tagUNRESOLVED_DEP {
    ARC *           arc;
    SPEC_TYPE       spec_type;
    UNRESOLVED_DEP * next;

    /* accessors */
    ARC*     Arc (void) const { return arc ; }
    void Set_Arc (ARC* Arc)   { arc = Arc  ; }

    SPEC_TYPE Spec_Type (void) const   { return spec_type; }
    void  Set_Spec_Type (SPEC_TYPE st) { spec_type = st ;  }

    OP* Pred (void) const { return ARC_pred(arc); }
    OP* Succ (void) const { return ARC_succ(arc); }
}; 

typedef UNRESOLVED_DEP UNRESOLVED_DEP_LIST;
#define FOR_ALL_UNRESOLVED_DEPs(list, item) \
    for (item = (UNRESOLVED_DEP *)(void*)(list) ; item != NULL ; item = (item)->next)

void Init_Unresolved_Dep (MEM_POOL *mp) ; 
inline void Fini_Unresolved_Dep (void) {} ;

extern UNRESOLVED_DEP * New_Unresolved_Dep (void) ;
extern void Free_Unresolved_Dep (UNRESOLVED_DEP* item) ;
extern void Free_Unresolved_Dep_Lst (UNRESOLVED_DEP_LIST* lst) ;

inline UNRESOLVED_DEP_LIST * Prepend_to_Unresolved_Dep_List (
                                    UNRESOLVED_DEP_LIST * lst, 
                                    UNRESOLVED_DEP *item) {

            item->next = (UNRESOLVED_DEP*)(void*)lst ;
            return (UNRESOLVED_DEP_LIST*)(void*) item ; 
       }






class RGN_CFLOW_MGR ;



/* =================================================================
 * =================================================================
 * 
 *          Flags and options 
 *
 * =================================================================
 * =================================================================
 */
extern BOOL SCHED_TF_DUMP_IR ; 
extern BOOL SCHED_TF_DUMP_DAG ;
extern BOOL SCHED_TF_DUMP_CAND ;
extern BOOL SCHED_TF_SUMMARY_DUMP;
extern BOOL SCHED_TF_VERBOSE_DUMP;
extern BOOL SCHED_TF_DRAW_GLBL_CFG;
extern BOOL SCHED_TF_DRAW_RGNL_CFG;
extern BOOL SCHED_TF_DRAW_LOCAL_DAG;
extern BOOL SCHED_TF_DRAW_RGNL_DAG;
extern BOOL SCHED_TF_TEST_SPEC;

extern INT32 SAFE_CNTL_SPEC_PROB ;
extern INT32 UNSAFE_CNTL_SPEC_PROB ;
extern INT32 SPEC_SAFE_LOAD_WITHOUT_TRANSFORM_REACH_PROB;

extern void Get_Sched_Opts (BOOL prepass) ;

/* ================================================================
 * ================================================================
 *
 *     memory pool used for some data structure
 * 
 * ================================================================
 * ================================================================
 */ 
class SCHED_UTIL_MEM_POOL {
protected:
    MEM_POOL _mem_pool ;

public:
    SCHED_UTIL_MEM_POOL () {
        MEM_POOL_Initialize (&_mem_pool,"SCHED_UTIL", true);
        MEM_POOL_Push(&_mem_pool);
    }

    ~SCHED_UTIL_MEM_POOL () {
        MEM_POOL_Pop (&_mem_pool);
        MEM_POOL_Delete (&_mem_pool);
    }
};

    /* =================================================================
     * =================================================================
     *
     *   CFG_NODE_MAP 
     *
     *  We have alreay many maps, such as BB_MAP, OP_MAP etc. 
     *  From the viewpoint of REGIONAL-CONTROL-FLOW, we need mapping 
     *  a regional-cfg-node to any arbitrary value. CFG_NODE_MAP 
     *  serve this purpose. 
     *  
     *  Instance of this class is free at choosing the underlying 
     *  MEM_POOL. 
     * 
     *  NOTE : o. before use this mapping mechanism, 
     *            CFG_NODE_MAP::Initialize_Map should be called. 
     *            otherwise, CFG_NODE_MAP will constantly change
     *            its internal mapping data structure.
     *
     * =================================================================
     * =================================================================
     */
class CFG_NODE_MAP {
private:
    MEM_POOL * _mem_pool ;

    typedef struct tagNODE_ID_VAL_PAIR{
        void * value ;
        INT32  node_id ;
        tagNODE_ID_VAL_PAIR (void* Value, INT32 Node_id) {
            value = Value ; node_id = Node_id ;
        }
    } NODE_ID_VAL_PAIR ;

    typedef mempool_allocator<NODE_ID_VAL_PAIR >    _PAIR_ALLOC ;
    typedef vector<NODE_ID_VAL_PAIR , _PAIR_ALLOC>  _PAIR_VECT ; 
    typedef _PAIR_VECT::iterator      	            _PAIR_VECT_ITER ;

    _PAIR_VECT _bb_map_vect, _rgn_map_vect ;

    void    _bubble_sort (_PAIR_VECT& vect, INT32 low_idx, INT32 hign_idx); 
    void    _set_map (_PAIR_VECT& vect, INT32 id, void *value);
    INT32   _find_elem (_PAIR_VECT& vect, INT32 id);

public :

    CFG_NODE_MAP (MEM_POOL * mp) : 
        _mem_pool(mp), _bb_map_vect(mp), _rgn_map_vect(mp) { }

    ~CFG_NODE_MAP () {} ;

    void Initialize_Map (REGION* rgn) ;
    void Initialize_Map (BB *bb) ;

    inline void Set_Map (BB * bb, void* value) { 
        _set_map (_bb_map_vect,BB_id(bb), value); 
    }

    inline void Set_Map (REGION *rgn, void * value) {
        _set_map (_rgn_map_vect,rgn->Id(), value) ;
    }

    inline void Set_Map (REGIONAL_CFG_NODE * nd, void* value) {
        if (nd->Is_Region()) Set_Map (nd->Region_Node(), value); 
        else  Set_Map (nd->BB_Node(), value);
    }

    inline void * Get_Map (BB * bb) {
        INT32 pos = _find_elem (_bb_map_vect,BB_id(bb));
        return pos >= 0 ? _bb_map_vect[pos].value : NULL ;
    }

    inline void * Get_Map (REGION * rgn) {
        INT32 pos = _find_elem (_rgn_map_vect,rgn->Id()) ;
        return pos >= 0 ? _rgn_map_vect[pos].value : NULL;
    }

    inline void * Get_Map (REGIONAL_CFG_NODE *nd) {
        return nd->Is_Region() ? Get_Map (nd->Region_Node()) : 
                                 Get_Map (nd->BB_Node()) ;
    }
    
    void Dump (FILE *f=stderr) ;

    #ifdef Is_True_On
    void gdb_dump (void);
    #endif
};




typedef INT32 REACH_PROB ;
#define REACH_PROB_SCALE (100)

    /* ======================================================================
     * 
     *   SCHED_{OP|BB|RGN}_ANNOT and SCHED_ANNOT
     * 
     *
     *  Basic data structure which is used to hold some,from scheduler's point 
     *  of view, essential information of object (OP, BB and inner-region). the
     *  object itself, however, does not provide.
     *
     *  SCHED_ANNOT neatly organize these data through its one (and only one)
     *  global instance 'sched_annot'.
     *
     *  These "annotation" can be viewed as extended attribute of object, so 
     *  they should be initialized properly before any code motion occurs and 
     *  updated timely to reflect object's up-to-date status. 
     *
     * ======================================================================
     */
typedef INT16 CYCLE ;
#define CYCLE_MAX  INT16_MAX

typedef UINT32 OP_EXT_FLAG;

class SCHED_OP_ANNOT {

public:

    OP_EXT_FLAG _ext_flags ;

    OP *        _op;
    BB *        _org_home_bb ; 
    
    SCHED_OP_ANNOT (OP *associated_op) {
        _ext_flags = (OP_EXT_FLAG)0 ;

        _op = associated_op; _org_home_bb = OP_bb(_op);
        Is_True (_org_home_bb, ("OP has no home BB"));

    }

    void Add_OP_Ext_Flag (OP_EXT_FLAG e_flags) {
        _ext_flags |= e_flags ; 
    }

    void Del_OP_Ext_Flag (OP_EXT_FLAG e_flags) {
        _ext_flags &= ~e_flags;
    }

    ~SCHED_OP_ANNOT () {} ;

    SCHED_OP_ANNOT& operator = (SCHED_OP_ANNOT& opnd) {
        _ext_flags = opnd._ext_flags ;
        _op        = opnd._op;
        _org_home_bb = opnd._org_home_bb;
    }

    void Dump (FILE *f=stderr) ;
    
} ;


class SCHED_BB_ANNOT {

private:

    MEM_POOL * _mem_pool ;  /* underlying memory pool */

    BB *  _bb ;             /* associated BB */
    
    OP *  _1st_append_op;   /* before <_bb> being scheduled, <_1st_append_op> 
                             * through BB_last_op(_bb) inclusively are the OPs 
                             * appended to <_bb> as compensation code during
                             * code hoisting
                             */
    OP *  _last_prepend_op ; /* before <_bb> being scheduled, BB_first_op(_bb) 
                              * through _last_prepend_op are the OPs prepended 
                              * to <_bb> during code sinking 
                              */
    OP * _xfer_op ;         /* control-transfer OP */

    BB_OP_MAP       _ops_annot_map ;
    BS *            _annot_inited_ops; 

    void  _init_ops_annot (void) ;

    inline void  _set_op_annot (OP * op, SCHED_OP_ANNOT * annot) ;


public :

    SCHED_OP_ANNOT * Get_OP_Annot (OP * op) {
        if (BS_MemberP (_annot_inited_ops, OP_map_idx(op))) {
            return (SCHED_OP_ANNOT * )BB_OP_MAP_Get (_ops_annot_map, op); 
        }
        
        return NULL;
    }
        
    void Set_OP_Annot (OP* op, SCHED_OP_ANNOT *annot) {
        BB_OP_MAP_Set (_ops_annot_map, op, annot); 
    }

    SCHED_OP_ANNOT * Init_New_OP_Annot (OP* op) ;

    SCHED_OP_ANNOT * Detach_OP_Annot (OP * op);
    void       Attach_OP_Annot (OP * op, SCHED_OP_ANNOT * annot) ;

    OP * First_Append_OP (void) { return _1st_append_op ; } 
    void Set_First_Append_OP(OP *op) { _1st_append_op = op; } ;
    OP * Last_Prepend_OP (void) { return _last_prepend_op ; } 

    SCHED_BB_ANNOT (BB *bb, MEM_POOL *mp) ;
    ~SCHED_BB_ANNOT () {} ;

    void Dump (FILE *f=stderr) ;

};


/* =================================================================
 * =================================================================
 *
 *      SCHED_RGN_ANNOT class
 * 
 * =================================================================
 * =================================================================
 */

class SCHED_RGN_ANNOT {
private:
    MEM_POOL * _mem_pool;
    REGION * _rgn;

public:
    SCHED_RGN_ANNOT (REGION *rgn, MEM_POOL *mp) : 
        _mem_pool(mp) , _rgn(rgn) {} 
    ~SCHED_RGN_ANNOT () {} ;
    
    void Dump (FILE *f) ;
};

/* ================================================================
 * ================================================================
 *
 *          SCHED_ANNOT 
 *
 * ================================================================
 * ================================================================
 */
class SCHED_ANNOT : public SCHED_UTIL_MEM_POOL {
private:
    CFG_NODE_MAP  * _node_map ; 
    static INT32   _inst_num ; 

    REGION * _rgn_scope ;
    BB     * _local_scope;
    BB_SET * _isolated_bbs;

public:

    SCHED_ANNOT (void);  
    ~SCHED_ANNOT (void) { -- _inst_num ; } 

    void Init (REGION *scope) ;
    void Init (BB *scope) ;

    inline SCHED_BB_ANNOT * Get_BB_Annot (BB *bb) {
        return (SCHED_BB_ANNOT*)_node_map->Get_Map (bb);
    }

    inline SCHED_RGN_ANNOT * Get_Rgn_Annot (REGION *rgn) {
        return (SCHED_RGN_ANNOT*)_node_map->Get_Map (rgn);
    }

    inline SCHED_OP_ANNOT * Get_OP_Annot (OP *op) {
        SCHED_BB_ANNOT * bb_annot = Get_BB_Annot (OP_bb(op));
        return bb_annot ? bb_annot->Get_OP_Annot (op) : NULL;
    }
    
    inline UINT32 Get_OP_Ext_Flags (OP *op) {
        return Get_OP_Annot(op)->_ext_flags ;
    }

    inline UINT32 * Get_OP_Ext_Flags_P (OP *op) {
        return &Get_OP_Annot(op)->_ext_flags ;
    }


    void Isolate_BB_From_Sched_Scope (BB * bb) {
            _isolated_bbs = BB_SET_Union1D (    
                                _isolated_bbs,bb, &_mem_pool);
         }

    BOOL BB_Is_Isolated (BB *bb) { return BB_SET_MemberP(_isolated_bbs,bb); }
    void Delete_BB_From_Isolated_BB_Lst (BB* bb) {
            _isolated_bbs = BB_SET_Difference1D (_isolated_bbs,bb);
         }

    /* tracing facility 
     */

    void Dump (FILE * f=stderr) ;
    
};

extern SCHED_ANNOT sched_annot ;

    /* ===============================================================
     * ===============================================================
     *
     *              OP and BB's extended FLAGS
     *
     * ===============================================================
     * ===============================================================
     */

#define OP_EXT_MASK_ACTUAL (0x00000001) /* OP defines autual argument */
#define OP_EXT_MASK_NO_CNTL_SPEC (0x00000002) /* OP cannot be control-speculated */
#define OP_EXT_MASK_NO_DATA_SPEC (0x00000004) /* OP cannot be data-speculated */

#define Set_OP_Ext_Flag(x,y)  \
    { sched_annot.Get_OP_Annot ((x))->Add_OP_Ext_Flag (OP_EXT_MASK_ ## y); }
#define OP_Ext_Flag(x,y) (sched_annot.Get_OP_Ext_Flags ((x)) & OP_EXT_MASK_ ## y)
#define Reset_OP_Ext_Flag(x,y) \
    { sched_annot.Get_OP_Annot ((x))->Del_OP_Ext_Flag (OP_EXT_MASK_ ## y); }


inline BOOL
OP_ANNOT_Cannot_Data_Spec (OP* op) { return OP_Ext_Flag (op, NO_DATA_SPEC); }

inline void 
OP_ANNOT_Set_Cannot_Data_Spec(OP *op) { Set_OP_Ext_Flag (op, NO_DATA_SPEC); }

inline void
OP_ANNOT_Reset_Cannot_Data_Spec(OP *op) { Reset_OP_Ext_Flag (op, NO_DATA_SPEC); }

inline BOOL 
OP_ANNOT_Cannot_Cntl_Spec (OP * op) { return OP_Ext_Flag(op, NO_CNTL_SPEC); }

inline void
OP_ANNOT_Set_Cannot_Cntl_Spec (OP* op) { Set_OP_Ext_Flag(op, NO_CNTL_SPEC); }

inline void
OP_ANNOT_Reset_Cannot_Cntl_Spec (OP* op) { Reset_OP_Ext_Flag(op,NO_CNTL_SPEC);}

inline BOOL
OP_ANNOT_Cannot_Spec (OP * op) {
    return OP_ANNOT_Cannot_Cntl_Spec (op) || 
           OP_ANNOT_Cannot_Data_Spec (op) ;
}

inline void 
OP_ANNOT_Set_Cannot_Spec (OP* op) {
    OP_ANNOT_Set_Cannot_Data_Spec (op) ;
    OP_ANNOT_Set_Cannot_Cntl_Spec (op) ;
}

inline void
OP_ANNOT_Reset_Cannot_Spec (OP* op) {
    OP_ANNOT_Reset_Cannot_Data_Spec (op) ;
    OP_ANNOT_Reset_Cannot_Cntl_Spec (op) ;
}

inline BOOL
OP_ANNOT_OP_Def_Actual_Para (OP *op) { return OP_Ext_Flag(op, ACTUAL); }

inline void
OP_ANNOT_Set_OP_Def_Actual_Para (OP *op) { Set_OP_Ext_Flag (op, ACTUAL); }

inline void
OP_ANNOT_Reset_OP_Def_Actual_Para (OP* op) { Reset_OP_Ext_Flag(op,ACTUAL) ;}

inline void
Isolate_BB_From_Sched_Scope (BB * bb) {
    sched_annot.Isolate_BB_From_Sched_Scope (bb);
}

inline BOOL
BB_Is_Isolated_From_Sched (BB* bb) { 
    return sched_annot.BB_Is_Isolated (bb); 
}

inline void 
Delete_BB_From_Isolated_BB_Lst (BB* bb) {
    sched_annot.Delete_BB_From_Isolated_BB_Lst (bb);
}



    /* ======================================================================
     * ======================================================================
     * 
     *          prototype for class SRC_BB_MGR
     *
     * ======================================================================
     * =====================================================================
     */

typedef struct tagSRC_BB_INFO {
    BB * src ;
    BB * targ ;
    BB_VECTOR   siss ;      /* cutting set for code motion from 
                             * <src> to <targ> 
                             */
    BB_VECTOR   across_bbs;             /* across BBs */
    REGION_VECTOR across_nested_rgns;   /* across rgns */

            /* <cold_paths_cutting_set> & <hot_paths_cutting_set>
             * are used only when <src> donate P-ready candidate 
             */
    BB_VECTOR   cold_paths_cutting_set ;
    BB_VECTOR   hot_paths_cutting_set ;

    mBOOL donate_p_ready_cand ; /* permit <src> donate p-ready candidate 
                                 * or not */
    mBOOL _cntl_equiv ;         /* flags indidate whether code motion
                                 * from <src> to <targ> is control equivalent 
                                 */

    inline BOOL Is_Cntl_Equiv (void) const { return _cntl_equiv ; }
    inline BOOL Can_Donate_P_Ready_Cand (void) const {
                    return donate_p_ready_cand ;  
                }
    inline void Set_Cntl_Equiv (void) { _cntl_equiv = TRUE ; }

    tagSRC_BB_INFO (MEM_POOL *mp) : 
        siss(mp), across_bbs (mp),
        across_nested_rgns (mp),
        cold_paths_cutting_set (mp),
        hot_paths_cutting_set (mp) {

        src = NULL ;
        _cntl_equiv         = FALSE;
        donate_p_ready_cand = FALSE;
    }

} SRC_BB_INFO ;


class SRC_BB_MGR {
private :

    typedef mempool_allocator<SRC_BB_INFO*>	          SRC_BB_INFO_ALLOC;
    typedef vector<SRC_BB_INFO *, SRC_BB_INFO_ALLOC>  SRC_BB_INFO_VECT; 
    typedef SRC_BB_INFO_VECT::iterator               SRC_BB_INFO_ITER;

    MEM_POOL *   _mp;           /* underlying MEM_POOL */

    BB_VECTOR  _src_bbs_vect;   /* all source BBs */
    SRC_BB_INFO_VECT _src_info_vect ;  

    BB_SET *    _src_bbs_set ;  /* store all source BBs into a set for 
                                 * fast query an check */
    BB   *      _targ ;         /* the BBs that SCHEDULER is not now engaging
                                 * with */
    REGION *    _scope ; 
    BOOL        _prepass;


            /* compute the cutting-set for code motion from <src> to <_targ>
             */
    BOOL _compute_cutting_set (BB *src, SRC_BB_INFO * src_info,
                               RGN_CFLOW_MGR *cflow_info) ;

            /* this routines is called only by Find_Src_BBs */
    void _find_src_bbs (BB * src,    RGN_CFLOW_MGR * cflow_info) ;
    void _find_src_bbs (REGION *rgn, REGIONAL_CFG_NODE * n,
                                     RGN_CFLOW_MGR *cflow_info);

           /* keep track of the nodes Find_Src_BBs accesss 
            */
    BB_SET * _find_src_bbs_access_bbs ;
    BS     * _find_src_bbs_access_rgns ;

            /* check to see whether <src> is qualified to donate candidate
             * to <_targ>
             */
    BOOL _src_bb_is_qualified (BB *src, SRC_BB_INFO * its_info, 
                                   RGN_CFLOW_MGR * cflow_info) ;

             /* following 9 inline routines are used only by 
              * _compute_cutting_set. we try to use a single bitset to 
              * keep track both BB and nested REGION. the prefix
              * _ubs stands for "uniform bitset".
              */
    inline BS * _ubs_union1d (BS * Bitset, BB * bb) ;
    inline BS * _ubs_union1d (BS * Bitset, REGION *r, INT32 rgn_id_base);
    inline BS * _ubs_union1d (BS * Bitset, REGIONAL_CFG_NODE *n,
                                       INT32 rgn_id_base);
    inline BS * _ubs_diff1d  (BS * Bitset, BB * bb) ;
    inline BS * _ubs_diff1d  (BS * Bitset, REGION *r,
                                       INT32 rgn_id_base);
    inline BS * _ubs_diff1d  (BS * Bitset, REGIONAL_CFG_NODE *n,
                                       INT32 rgn_id_base);

    inline BOOL _ubs_memberp (BS * Bitset, BB *b) ;
    inline BOOL _ubs_memberp (BS * Bitset, REGION *r, 
                                INT32 rgn_id_base);
    inline BOOL _ubs_memberp (BS *Bitset, REGIONAL_CFG_NODE *n, 
                                INT32 rgn_id_base);
    
        /* EXPORTED INTERFACES 
         */
    

public:

    SRC_BB_MGR (MEM_POOL *mp) ;
    ~SRC_BB_MGR (void) ;

            /* find all BBs that can potentially donate candidates to <targ>
             */ 
    const BB_VECTOR * Find_Src_BBs (REGION * scope, BB * targ,
                                    RGN_CFLOW_MGR *cflow_info, 
                                    BOOL prepass) ;

            /* return source BBs of <_targ> (data member of this class) 
             */
    const BB_VECTOR * Src_BBs (void) { return &_src_bbs_vect ; } 

            /* return the cutting-set for code motion from <src> to <_targ>
             * with which scheduler is now dealing.*/
    const BB_VECTOR * Cutting_Set (BB * src) ;     

            /* check to see whether <bb> is one of the source-BB of <_targ> 
             */
    BOOL  Is_Src_BB (BB * bb) { return  BB_SET_MemberP (_src_bbs_set, bb); }

            /* return the block scheduler is now scheduling */
    BB * Targ_BB (void) { return _targ ; }   
            
            /* return all BBs that code motion from <src> to <_targ> need
             * moving across 
             */
    const BB_VECTOR * BBs_Between_Cutting_Set_and_Src (BB *src);
            
            /* return all REGIONs that code motion from <src> to <_targ> need
             * moving across
             */
    const REGION_VECTOR* Move_Across_Nested_Rgns (BB *src) ;
    
            /* return SRC_BB_INFO associated with <bb> 
             */
    SRC_BB_INFO  * Get_Src_Info (BB * bb);

            /* dump the status of this class 
             */
    void Dump (FILE *f=stderr) ;

#ifdef Is_True_On
    void gdb_dump (void);    
#endif 

} ;





    /* ==========================================================
     * ==========================================================
     *
     *          Scheduling sequence 
     *
     * ==========================================================
     * ==========================================================
     */
class SCHED_SEQ {
private:

    class NODE_INFO { public: INT32 _n_pred; NODE_INFO() {_n_pred = 0;} };
    typedef mempool_allocator<pair<REGIONAL_CFG_NODE*,NODE_INFO> > 
  		    NODE_INFO_ALLOC;
    template <class _Ptr_Tp>
    struct ptr_hash {
        size_t operator()(_Ptr_Tp __x) const { return UINT(__x); }
    };

    typedef hash_map<REGIONAL_CFG_NODE*, NODE_INFO,
                 ptr_hash<REGIONAL_CFG_NODE*>,
                 equal_to<REGIONAL_CFG_NODE*>, NODE_INFO_ALLOC>  
				 NODE_INFO_MAP;

    NODE_VECTOR _root ;
        /* _node_info_map:  f: rgn_node -> <has-not-sched-pred-num> 
         */
    NODE_INFO_MAP   _node_info_map;  
    BB *        _cur ;
    REGION *    _rgn ;

    BOOL _node1_is_sparser (
            REGIONAL_CFG_NODE *nd1,
            REGIONAL_CFG_NODE *nd2) {

        /* Favor BB with more bubbles over less one, we assume that BB with 
         * more OPs is sparer than less one.
         */
        INT32 density1 = nd1->Is_Region () ? 0 : BB_length(nd1->BB_Node());
        INT32 density2 = nd2->Is_Region () ? 0 : BB_length(nd2->BB_Node());
            
        return density1 > density2 ;
    }

    REGIONAL_CFG_NODE * _next (void) ;
    BOOL _qualified (REGIONAL_CFG_NODE *nd) {
        if (nd->Is_Region()) return FALSE;
        BB * bb = nd->BB_Node () ;
        return !BB_entry(bb) && !BB_exit(bb);
    }

public: 

    SCHED_SEQ (REGION *rgn, MEM_POOL *mem_pool) ;
    ~SCHED_SEQ (void) {} ;

    BB * First (void) ;
    BB * Next (void) ;
    BB * Cur (void) { Is_True (_cur, ("no CURRENT BB node!")) ;  return _cur ; }
} ;




    /* ======================================================
     * ======================================================
     *
     *              Miscellaneous 
     * 
     * ======================================================
     * ======================================================
     */

typedef mempool_allocator<OP*> OP_ALLOC;
typedef vector<OP*,OP_ALLOC>   OP_Vector;
typedef OP_Vector::iterator    OP_Vector_Iter;
typedef OP_Vector::reverse_iterator OP_Vector_Riter ;

/* these funcs put here just for the time-being */
/* CGGRP_OP_Issue_Port put to microscheduling package 
 */
inline ISSUE_PORT CGGRP_OP_Issue_Port (OP *op) { return ip_invalid ; } 
INT32 CGTARG_adjust_latency (OP* pred, ISSUE_PORT pred_port, 
                             OP* succ, ISSUE_PORT succ_port,
                             mUINT16  arc_kind, INT32 org_latency);

#endif  /* sched_util_INCLUDED */
