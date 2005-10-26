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

#ifndef sched_cand_INCLUDED
#define sched_cand_INCLUDED

 /* ======================================================================
  * ======================================================================
  * 
  *  Module sched_cand.h
  *
  *  $Revision: 1.1.1.1 $
  *  $Date: 2005/10/21 19:00:00 $
  *  $Author: marcel $
  *  $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/sched_cand.h,v $
  *
  *  Description:
  *  ============
  *  this module implements candidates management. We put all candidates 
  *  of same type (M-ready or P-ready) into an candidate list. different
  *  type of candidates are managed by separately, but this is out of 
  *  scope of this module.
  * 
  *
  *
  *  Exported interface:
  *  
  *  o. CANDIDATE 
  *         data structure used to describe an candidate.
  *
  *  o. class CAND_LIST 
  *
  *    - CAND_LIST (MEM_POOL * mp,BOOL m_ready_cand) 
  *    - ~CAND_LIST (void) 
  *         constructor & destructor 
  * 
  *    - BOOL OP_Is_In_Cand_List (OP *op); 
  *         return TRUE iff candidate-list has already take control of <op> 
  *
  *    - CANDIDATE * Get_Candidate (OP* op);
  *         return CANDIDATE structure associated with <op>, NULL if 
  *         <op> is not managed by cand-list.
  *
  *    - void Erase_Cand (OP *op) 
  *    - void Erase_Cand (CANDIDATE * cand)
  *         evict candidate <op> or <cand> from list.
  *
  *    - void Erase_All_Cand (void) 
  *         make candidate list empty
  * 
  *    - CANDIDATE *Create_Empty_Cand (void)
  *         create a vacant CANDIDATE structure, 
  *         NOTE: all CANDIDATE structures should be allocated by 
  *         CAND_LIST.
  *
  *    - void Add_Candidate (CANDIDATE * cand)
  *         add <cand> to CAND_LIST
  *
  *    - BOOL Cand_Has_Been_Tried (CANDIDATE * cand) 
  *         check to see whether <cand> has already been tried to be
  *         scheduled but failed.
  * 
  *    - void Set_Cand_Has_Been_Tried (CANDIDATE* cand) ;
  *         mark <cand> has been "tried".
  *
  *    - void Clear_Cand_Tried_Mark (CANDIDATE *cand) 
  *    - void Clear_All_Cands_Tried_Mark (void);
  *         clear <cand>(or all candidates in CAND_LIST)'s "tried" flag
  *
  *    - BOOL All_Cands_Have_Been_Tried (void) 
  *         return TRUE iff all candidates in cand-list has been "tried".
  *
  *    - INT16 Cand_In_Total(void) 
  *         return the number of candidates this list hosts
  * 
  *    - INT16 Tried_Cand_Num (void)
  *         how many candidates in this list have been "tried" to be scheduled
  *         and yet failed. 
  *
  *    - BOOL Cand_Lst_Is_Empty(void)
  *         return TRUE iff list host no candidates.
  *
  *    - INT16 Evict_Unqualified_Cands (CAND_QUALIFICATION_CHECK * quaf_func, 
  *                                     void * parm)
  *         evict all unqualified candidates from list. the qualification is 
  *         checked by <quaf_func> with <parm> being its parameter which 
  *         make sense only to <quaf_func>.
  *
  *    - void Dump (FILE * f=stderr, BOOL verbose=FALSE, 
  *                 FAVOR_DELAY_HEUR * heur=NULL)
  *         Dump list's current status, we may obtains more info when <verbose>
  *         set to non-FALSE. If <heur> is passed, this routine will print out
  *         heuristic-related data associated with each candidate.
  *
  *
  *
  *  o. class CAND_LIST_ITER  
  *  o. class CAND_LIST_RITER 
  * 
  *         iterator used to step over each CANDIDATE managed by CAND_LIST.
  *         CAND_LIST_ITER step candidate list from front to end, 
  *         CAND_LIST_RITER works in reverse order.
  *
  *         NOTE: Do not erase CANDIDATE when iterates thru cand-list unless
  *               this is performed by an integrated func 
  *               'erase_cur_and_advance()'
  *
  * ======================================================================
  * ======================================================================
  */ 

   
class FAVOR_DELAY_HEUR ;




    /* =============================================================
     * ============================================================= 
     *
     *       Structure used to describe candidate
     *
     * =============================================================
     * =============================================================
     */
typedef struct tagCANDIDATE CANDIDATE ;
struct tagCANDIDATE {

friend class CAND_LIST ;
friend class CAND_LIST_ITER ;
friend class CAND_LIST_RITER ;

private:
    INT16     _try_ver   ;    /* time stamp used to keep the latest 
                               * trial of being scheduled.
                               * this field make sense only to  
                               * CAND_LIST.
                               */
    CANDIDATE * _prev, * _next ; /* internal doublely linked list */
    

    OP*        _op;           /* associated OP */

    SPEC_TYPE  _spec_type ; 
    mBOOL      _safe_load ;   /* Cache the result of query 
                               * Ld_Need_Not_Transform, it 
                               * seems as an attribute of OP , 
                               * itself.
                               */

    mBOOL      _is_P_ready ;  /* if false, the following two 
                               * variables are meaningless 
                               */ 
    UNRESOLVED_DEP_LIST * _unresolved_dep ;

    /* initialization */
    void Init (void) {
        _try_ver = 0 ; /* any arbitrary value works, now */ 
        _prev = _next = NULL ;
        _op   = NULL ; 
        _spec_type = SPEC_NONE ;
        _safe_load = FALSE ;
        _is_P_ready = FALSE ;
        _unresolved_dep = NULL;
    }

    tagCANDIDATE (void)  { Init () ; }
    ~tagCANDIDATE (void) { } 

public : 

    BOOL Is_Spec (void)        {  return _spec_type != SPEC_NONE ; } 
    SPEC_TYPE Spec_Type (void) {  return _spec_type ;              }
    SPEC_TYPE Get_Up_to_Date_Spec_Type (void) ;
    void Set_Spec(SPEC_TYPE t) {  _spec_type = t ;                 }
    void Add_Spec(SPEC_TYPE t) {  _spec_type = SPEC_TYPE(_spec_type | t);}
    void Del_Spec(SPEC_TYPE t) {  _spec_type = SPEC_TYPE(_spec_type & ~t);}

    OP * Op      (void)        {  return _op ;                     }
    void Set_OP  (OP *op)      {  _op = op ; 
                                  _safe_load = OP_load(op) ?
                                        ::Ld_Need_Not_Transform (op) : FALSE ;
                               }
    BOOL Is_Load (void)        { return OP_load (_op) ;            }

    BOOL Is_P_ready (void)     { return _is_P_ready ;              } 
    void Set_P_ready (void)    { _is_P_ready = TRUE ;              }
    void Set_M_ready (void)    { _is_P_ready = FALSE ;             }

    void Setup (OP* op, SPEC_TYPE spec_type, 
                BOOL is_P_ready, 
                UNRESOLVED_DEP_LIST * dep_list) {

                    _op = op ; _spec_type = spec_type ;
                    _unresolved_dep = dep_list ;
                    _is_P_ready = is_P_ready ;

                    _safe_load = OP_load(op) ? 
                        Ld_Need_Not_Transform (op) : FALSE ;
                }

    void Set_Unresolved_Dep_List (UNRESOLVED_DEP_LIST *list) {
                    _unresolved_dep = list ;
               }

    void Free_Unresolved_Dep_Lst (void) {
                    if (_unresolved_dep) {
                        ::Free_Unresolved_Dep_Lst (_unresolved_dep);
                        _unresolved_dep = NULL;
                    }
               }

    UNRESOLVED_DEP_LIST * Get_Unresolved_Dep_List (void) {
                    return _unresolved_dep ;
                }
    BOOL  Safe_Load (void)  {   return OP_load(_op) ? _safe_load : FALSE; }

    BOOL  Load_Need_Not_Transform (void) {

                    Is_True (OP_load(_op), 
                             ("OP:%d (of BB:%d) is not a load!",
                               OP_map_idx(_op), BB_id(OP_bb(_op)))) ;

                    return _spec_type == SPEC_NONE || _safe_load;
                }


    void Dump (FILE *f=stderr,BOOL verbose=FALSE,
               FAVOR_DELAY_HEUR * heur=NULL); 
} ;



   /* =========================================================
    * =========================================================
    * 
    *      CAND_LIST : hold M-ready or P-ready candidates 
    * 
    *  M-ready and P-ready should be put in distinct list. 
    * 
    * ==========================================================
    * ==========================================================
    */
typedef BOOL (*CAND_QUALIFICATION_CHECK) (CANDIDATE * cand,void * parm);

class CAND_LIST {

friend class CAND_LIST_ITER ;
friend class CAND_LIST_RITER ;

private:
    MEM_POOL * _mp ;  /* underlying memory pool */
    INT16  _total ;   /* candidate in total */
    INT16  _tried_cand_num ;   /* this many candidates have been 
                                * tried to be scheduled but failed */
    mBOOL  _host_m_ready_cand ; /* indicate whether CAND_LIST_MGR host 
                                 * M-ready or P-ready cand */

      /* candidate try version stuff : 
       *        
       *   type version is used as a time-stamp. It is used to mark
       *   time when a candidate is tried to scheduled but fails. 
       *   
       *   when candidate's try-version <= <_try_version>, it indidates
       *   the candidate in question has not been tried yet. 
       * 
       *   the variable <_try_version> keep the latest time-stamp, 
       *   each time a candidate is tried, it is time-stamp or try-version
       *   is set to <_try_version> plus one. 
       *  
       *   to reset all candidate has not been tried, we can simply 
       *   advance _try_version by 1. 
       *
       */ 

    #define MAX_TRY_VERSION INT32_MAX
    #define MIN_TRY_VERSION 0 
    INT32  _try_version ;


    BS  *  _op_map_idx; /* used to quickly answer the question 
                         * "Is OP in candidate list?" with a 
                         * resounding NO. 
                         */
        /* candidate list led by <_cand_lst_head> and end at 
         * <_cand_lst_tail>, both of them are not valid 
         * canidate, them only serve as sentinal to ease 
         * list manipulation.
         */
    CANDIDATE _cand_lst_head, _cand_lst_tail ;   

        /* free candidate list are linked by a singly linked list 
         */
    CANDIDATE * _free_cand;  


    /* CANDIDATE internal doublely-linked-lst operation 
     */

    void Insert  (CANDIDATE * prev, CANDIDATE * next, CANDIDATE *item) {
            item -> _next = next ; item -> _prev = prev ;
            prev -> _next = item ; next -> _prev = item ;
         }

    void Prepend (CANDIDATE *item) {
            Insert (&_cand_lst_head, _cand_lst_head._next, item);
         }

    void Append  (CANDIDATE *item) {
            Insert (_cand_lst_tail._prev, &_cand_lst_tail, item);
         }

    void Detach (CANDIDATE * item) {
            Is_True (item != &_cand_lst_tail && item != &_cand_lst_head, 
                     ("can not delete list head or tail"));
            item -> _next -> _prev = item -> _prev ;
            item -> _prev -> _next = item -> _next ;
            item -> _next = item -> _prev = NULL ;
        }

    /* allocate new candidate and reclaim free-candidte
     */
    void Reclaim_Free_Cand (CANDIDATE * cand) {

            cand->_next = _free_cand ;
            _free_cand = cand ;
        
            if (cand->_unresolved_dep) {
                Free_Unresolved_Dep_Lst (cand->_unresolved_dep);
                cand->_unresolved_dep = NULL;
            }
        }

    CANDIDATE * Alloc_Cand (void) {
        CANDIDATE * new_cand ; 

        if (_free_cand) {
                new_cand = _free_cand ;
                _free_cand = new_cand->_next;
        } else {
            new_cand = CXX_NEW (CANDIDATE , _mp) ;
        }

        return new_cand ; 
     }

     void Init (void);   /* Initialize CAND_LIST */


public:
    
    CAND_LIST (MEM_POOL * mp,BOOL m_ready_cand) ;
    ~CAND_LIST (void) {} ;

    BOOL OP_Is_In_Cand_List (OP *op); 
    CANDIDATE * Get_Candidate (OP* op);

    void Erase_Cand (OP *op) ;
    void Erase_Cand (CANDIDATE * cand);
    void Erase_All_Cand (void) ;

    CANDIDATE *Create_Empty_Cand (void);

    void Add_Candidate (CANDIDATE * cand);

    inline BOOL Cand_Has_Been_Tried (CANDIDATE * cand) {
            return cand->_try_ver > _try_version ;
         }

    void Set_Cand_Has_Been_Tried (CANDIDATE* cand) ;
    void Clear_Cand_Tried_Mark (CANDIDATE *cand) ;
    void Clear_All_Cands_Tried_Mark (void);
    
    inline BOOL All_Cands_Have_Been_Tried (void) {
                    return _tried_cand_num == _total ;
                }

    inline INT16 Cand_In_Total     (void) { return _total ; } ;
    inline INT16 Tried_Cand_Num    (void) { return _tried_cand_num ; } ;
    inline BOOL  Cand_Lst_Is_Empty (void) { return Cand_In_Total () == 0 ; } 

    INT16  Evict_Unqualified_Cands (CAND_QUALIFICATION_CHECK * quaf_func, void * parm);

    void   Dump (FILE * f=stderr, BOOL verbose=FALSE, 
                 FAVOR_DELAY_HEUR * heur=NULL); 

    #ifdef Is_True_On
    void   gdb_dump (FAVOR_DELAY_HEUR * heur) ;
    #endif 
} ;


/* ===========================================================
 *
 * An iterator type for looping over the elemnts of all 
 * candidates of a paticular candidate list
 *
 * ===========================================================
 */
class CAND_LIST_ITER {
    
private :
    
    CAND_LIST * _cand_lst;
    CANDIDATE * _cur ;

public :

    CAND_LIST_ITER (CAND_LIST * cand_lst) : 
        _cand_lst (cand_lst),
        _cur(cand_lst->_cand_lst_head._next) { } 

    ~CAND_LIST_ITER (void) { /* do nothing */ } 

    CAND_LIST_ITER& begin (void) {
        _cur = _cand_lst->_cand_lst_head._next ;
        return *this ;
    }

    void  step (void) { _cur = _cur->_next; };
    CANDIDATE* cur (void) const { return _cur; };
    BOOL  done (void) const { return _cur == &_cand_lst->_cand_lst_tail ; }
    void  erase_cur_and_advance (void) {
                            Is_True (!done(), ("could not erase list tail!"));
                            CANDIDATE * tmp = _cur ;
                            step ();
                            _cand_lst->Erase_Cand (tmp); 
                      }
};

/* ===========================================================
 *
 * Looping over the elemnts of all candidates of a paticular 
 * candidate list in reverse order.
 *
 * ===========================================================
 */

class CAND_LIST_RITER {
    
private :
    
    CAND_LIST * _cand_lst;
    CANDIDATE * _cur ;

public :

    CAND_LIST_RITER (CAND_LIST * cand_lst) : 
        _cand_lst (cand_lst),
        _cur(cand_lst->_cand_lst_tail._prev) {} 

    ~CAND_LIST_RITER (void) {} ;

    CANDIDATE * begin (void) {
        return _cur = _cand_lst->_cand_lst_tail._prev;
    }

    CANDIDATE * cur (void)  { return _cur; };
    void  step (void) { _cur = _cur->_prev; };
    BOOL  done (void) { return _cur == &_cand_lst->_cand_lst_head; }
    void  erase_cur_and_advance (void) {
                            Is_True (!done(), ("could not erase list tail!"));
                            CANDIDATE * tmp = _cur ;
                            step ();

                            _cand_lst->Erase_Cand (tmp); 
           }
};

    /* ============================================================
     * ============================================================
     *
     *          Miscellaneous 
     *
     * ============================================================
     * ============================================================
     */

    /* check to see whether <src> can potentially donate P-ready 
     * candidate to <targ>.
     */
class RGN_CFLOW_INFO ;
BOOL Can_BB_Potentially_Donate_P_Ready_Cands (BB * src, BB* targ, 
                                              RGN_CFLOW_MGR *cflow_info);

#endif /*sched_cand_INCLUDED*/ 
