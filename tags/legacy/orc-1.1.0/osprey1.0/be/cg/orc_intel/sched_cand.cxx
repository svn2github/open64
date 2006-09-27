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
     *  Module sched_cand.cxx
     *
     *  $Revision: 1.1.1.1 $
     *  $Date: 2005/10/21 19:00:00 $
     *  $Author: marcel $
     *  $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/sched_cand.cxx,v $
     * 
     *  Description:
     *  =============
     *
     *  This module implement 3 classes, namely CAND_LIST,CAND_LIST_ITER and
     *  CAND_LIST_RITER.
     *  
     *  See sched_cand.h for the description.
     * 
     * ======================================================================
     * ======================================================================
     */

#include "cg.h"
#include "cg_dep_graph.h"
#include "sched_util.h"
#include "sched_cand.h"
#include "sched_heur.h"

static MEM_POOL * _unresolved_dep_mp;
static UNRESOLVED_DEP *_free_unresolved_dep;

void
Init_Unresolved_Dep (MEM_POOL *mp) {
    _unresolved_dep_mp      = mp ; 
    _free_unresolved_dep    = NULL;
}

UNRESOLVED_DEP_LIST *
New_Unresolved_Dep_List (INT32 num) {
   
    Is_True (num > 0, 
            ("Invalid num of elements %d\n", num));
            
    UNRESOLVED_DEP * items = TYPE_MEM_POOL_ALLOC_N(
                    UNRESOLVED_DEP, _unresolved_dep_mp, num); 

    /* then, link them up
     */  
    UNRESOLVED_DEP * tmp = items ;
    while (num-- > 1) { tmp->next = tmp + 1; tmp++; }
    tmp->next = NULL ;

    return (UNRESOLVED_DEP_LIST*)(void*)items ;
}

void
Free_Unresolved_Dep (UNRESOLVED_DEP* item) {

    if (item) {
        item->next = _free_unresolved_dep;
        _free_unresolved_dep = item ;
    }
}

void
Free_Unresolved_Dep_Lst (UNRESOLVED_DEP_LIST* lst) {

    if (!lst) return ;

    UNRESOLVED_DEP *item = (UNRESOLVED_DEP *)(void*)lst;
    while (item->next) {
        item = item->next ;
    }
                
    item -> next = _free_unresolved_dep; 
    _free_unresolved_dep = lst ;
}


UNRESOLVED_DEP * 
New_Unresolved_Dep (void) {

    if (!_free_unresolved_dep) {
        _free_unresolved_dep = New_Unresolved_Dep_List (16);
    }
    
    UNRESOLVED_DEP * new_item = _free_unresolved_dep;
    _free_unresolved_dep = new_item->next ;
    new_item->next = NULL;

    return new_item ;
}




 /* =====================================================================
  * =====================================================================
  *
  *         Implementation of CANDIDATE 
  *
  * =====================================================================
  * =====================================================================
  */

SPEC_TYPE 
tagCANDIDATE :: Get_Up_to_Date_Spec_Type (void) {
    if (!_unresolved_dep) {
        return _spec_type ;
    }

    SPEC_TYPE spec_type = SPEC_NONE;

    UNRESOLVED_DEP * dep ;
    FOR_ALL_UNRESOLVED_DEPs(_unresolved_dep, dep) {

        if (OP_Scheduled(dep->Pred ()) &&
            !OP_xfer(dep->Pred ())) {
            continue ; 
        }
        
        spec_type = SPEC_TYPE(spec_type|dep->Spec_Type ());
    }

    return _spec_type = spec_type ;
}


 /* =====================================================================
  * =====================================================================
  * 
  *             IMPLEMENTATION OF CAND_LIST
  *
  * =====================================================================
  * =====================================================================
  */ 
void
CAND_LIST :: Init (void) {
        
    _total          = 0 ;
    _tried_cand_num = 0 ;
    _try_version    = MIN_TRY_VERSION ;

    /* initialize CANDIDATE's internal list 
     */
    _cand_lst_head._prev = _cand_lst_tail._next = NULL ;   
    _cand_lst_head._next = &_cand_lst_tail ;
    _cand_lst_tail._prev = &_cand_lst_head ;

    /* init free-candidate list, we prealloc some candidate
     * for the sake of spacial locality
     */
    _free_cand = NULL ;
    for (INT i = 0 ; i < 16 ; i ++) {
        Reclaim_Free_Cand (CXX_NEW(CANDIDATE, 
                                   _mp));
    }

    _op_map_idx = BS_Create_Empty (DEF_BBLENGTH, 
                                   _mp);
                                    
}

CAND_LIST :: CAND_LIST (MEM_POOL *mp, BOOL host_m_ready_cand) :
    _mp(mp),_host_m_ready_cand(host_m_ready_cand) {

    Init () ;    
}


 /* ============================================================
  *
  *     Set_Cand_Has_Been_Tried 
  *  
  *  mark the status that this candidate has been tried to be
  *  scheduled but fails.
  *
  * ============================================================
  */
void 
CAND_LIST :: Set_Cand_Has_Been_Tried (CANDIDATE* cand) {

    if (!Cand_Has_Been_Tried (cand)) {

        cand->_try_ver = _try_version + 1 ;
        ++ _tried_cand_num ;
        Is_True (_tried_cand_num <= _total,
            ("tried candidate exceed total number!"));

    }
}

    /* =======================================================
     *
     *  Erase_All_Cand (void)
     *
     *  Make candidate list empty.
     * 
     * =======================================================
     */
void
CAND_LIST :: Erase_All_Cand (void) {
    while (_total > 0) {
        Erase_Cand (_cand_lst_head._next);
    }
            
    Is_True (_cand_lst_head._next == &_cand_lst_tail, 
        ("candidate list should be empty!"));
}

    /* ====================================================
     *
     *  Clear_Cand_Tried_Mark 
     * 
     *  Undo what <Set_Cand_Has_Been_Tried> has done
     *
     * ====================================================
     */
void
CAND_LIST :: Clear_Cand_Tried_Mark (CANDIDATE *cand) {

    if (Cand_Has_Been_Tried (cand)) {

        cand->_try_ver = _try_version ;
        -- _tried_cand_num ;

        Is_True (_tried_cand_num >= 0, 
            ("tried candidate can not be a negative"));
                        
    }
}


    /* =====================================================
     *
     *   return TRUE if <op> is added into this candidate 
     *   list, FALSE otherwise
     *
     * =====================================================
     */
BOOL
CAND_LIST :: OP_Is_In_Cand_List (OP* op) {
    
    if (!BS_MemberP (_op_map_idx, OP_map_idx(op))) {
        return FALSE;
    }

    for (CAND_LIST_ITER iter(this); ! iter.done () ; iter.step ()) {
        if (iter.cur()->Op () == op) return TRUE; 
    }
    return FALSE;
}

    /* ==============================================================
     * 
     *  Get_Candidate 
     *
     *  return CANDIDATE structure associated with candidate <op>. 
     *  NULL if <op> is not candidate or is not under the control 
     *  of this list.
     *
     * ==============================================================
     */
CANDIDATE *
CAND_LIST :: Get_Candidate (OP* op) {
    
    for (CAND_LIST_ITER iter(this); ! iter.done() ; iter.step ()) {
        CANDIDATE * cand = iter.cur();
        if (cand->Op () == op) return cand ; 
    }
    return NULL;
}

    /* ======================================================
     * 
     *  Add_Candidate
     *
     *  make <cand> under the control of CAND_LIST 
     *
     * ======================================================
     */
void
CAND_LIST :: Add_Candidate (CANDIDATE * cand) {
  
    /* TODO : add some cheap mechanism to prevent duplicated
     *        candidtes added into candidate list.
     */

    Append (cand) ;
    ++ _total ;
    cand->_try_ver = _try_version ; 

    _op_map_idx = BS_Union1D (_op_map_idx, 
                              OP_map_idx(cand->_op),_mp);
}

    /* ===========================================================
     *
     *  Erase_Cand (OP*)
     *  Erase_Cand (CANDIDATE *cand)
     *
     *  Evict <op> or <cand> from candidate list and free its 
     *  corresponding CANDIDATE structure as well.
     *
     * ===========================================================
     */

void
CAND_LIST :: Erase_Cand (CANDIDATE *cand) {
    
    if (Cand_Has_Been_Tried (cand)) { -- _tried_cand_num ; }
    -- _total ;

    cand->Free_Unresolved_Dep_Lst ();

    Detach (cand);
    Reclaim_Free_Cand (cand);
}

void
CAND_LIST :: Erase_Cand (OP *op) {
    
    for (CAND_LIST_ITER iter(this) ; !iter.done() ; ) {

        CANDIDATE * cand = iter.cur();

        if (cand->Op() == op) {
            iter.erase_cur_and_advance ();
            return ;
        } 

        iter.step ();
    }

    Is_True (FALSE, ("OP[%d] of BB:%d is not in %s-candidate list!\n", 
              OP_map_idx(op), BB_id(OP_bb(op))));

}



    /* ===========================================================
     *
     *  Create_Empty_Cand 
     *
     *  allocate an empty candidate structure
     *
     * ===========================================================
     */
CANDIDATE *
CAND_LIST :: Create_Empty_Cand (void) {

    return Alloc_Cand () ;
}

    /* ===============================================================
     *
     *   Clear_All_Cands_Tried_Mark 
     * 
     *   make all candidates managed by this CAND_LIST being un-"tried". 
     *   so they arc potentially scheduled in current cycle.
     *
     * ===============================================================
     */
void
CAND_LIST :: Clear_All_Cands_Tried_Mark (void) {
    
    _tried_cand_num = 0 ;

    if (_try_version < MAX_TRY_VERSION) {

       ++ _try_version ;
       return ;

    } else {
        
        _try_version = MIN_TRY_VERSION ;

        for (CAND_LIST_ITER iter(this) ; ! iter.done(); iter.step ()) {
            iter.cur ()->_try_ver = MIN_TRY_VERSION; 
        }
    }
}

    /* ===========================================================
     * 
     *  Evict_Unqualified_Cands 
     * 
     *  drove all "unqualified" candidate out of CAND_LIST. 
     *  func <quad_func> define the qualification.
     * 
     * ===========================================================
     */

INT16
CAND_LIST :: Evict_Unqualified_Cands (
    CAND_QUALIFICATION_CHECK * quaf_func, void* parm) 
{
    INT16 evict_num = 0 ;

    for (CANDIDATE * tmp = _cand_lst_head._next ; 
         tmp != &_cand_lst_tail ; ) {

        if (!(*quaf_func)(tmp, parm)) {
            CANDIDATE * cand = tmp ;
            tmp = tmp -> _next ;
            Erase_Cand (cand); 
            evict_num  ++ ;
        } else {
            tmp = tmp -> _next ;
        }
    }

    return evict_num ;
}

    /* check to see whether <src> can potentially donate P-ready
     * candidate to <targ>
     */
BOOL
Can_BB_Potentially_Donate_P_Ready_Cands 
    (BB * src, BB * targ, RGN_CFLOW_MGR * cflow_info) {
                            
    return FALSE;
}
