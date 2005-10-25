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
#ifndef sched_dflow_INCLUDED
#define sched_dflow_INCLUDED

 /* =========================================================================
  * =========================================================================
  * 
  * Module: sched_dflow.h
  * $Revision: 1.1.1.1 $
  * $Date: 2005/10/21 19:00:00 $
  * $Author: marcel $
  * $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/sched_dflow.h,v $
  *
  * Description:
  * ============
  *
  *   This module implement data-flow-related functionality on behalf 
  *   of scheduler.
  *
  *   Exported interface:
  *
  *   o. class SCHED_DFLOW_MGR 
  *
  *         - SCHED_DFLOW_MGR (void) 
  *         - ~SCHED_DFLOW_MGR (void) 
  *             constructor & destructor
  * 
  *  
  *         - BOOL Are_Defs_Live_Out  (OP * op, BB * bb) 
  *             return TRUE iff one of results that <op> defines live out <bb>
  *        
  *         - BOOL Are_Defs_Live_Out  (OP * op, BB_VECTOR* bbv)
  *             return TRUE iff one of results that <op> defines live out of
  *             at least one element in <bbv>.
  *  
  *         - BOOL Are_Defs_Live_In   (OP * op, BB * bb);
  *             check to see whether one of the results that <op> defines live 
  *             at the entry point of <bb>
  *
  *         - void Add_Defs_Live_Out (OP * op, BB * bb)
  *             make *ALL* results that <op> defines live out of <bb>
  *
  *         - void Add_Defs_Live_In (OP * op, BB * bb) 
  *             make *ALL* results that <op> defines live into <bb>
  *
  *         - void Update_Liveness_After_Upward_Code_Motion
  *                  (OP *op, SRC_BB_INFO * src_info)
  *             this routine maintain the liveness info properly after 
  *             upward code motion.
  *
  *         - void Update_Liveness_After_Downward_Code_Motion 
  *                  (OP *op, SRC_BB_INFO * src_info);
  *             this routines is dedicated to maintain the liveness info
  *             properly after downward code motion
  *
  *         - BOOL Upward_Code_Motion_Kill_Some_LiveOut_Defs 
  *         - BOOL Downard_Code_Motion_Kill_Some_LiveIn_Defs 
  *             check to see whether the upward code motion of <op>, 
  *             (from <from> to <to> and cutting_set is specified by 
  *              <cutting_set> will kill some live-out definitions.
  * 
  * 
  *         - BOOL Upward_Code_Motion_Violate_Dflow_Constrait
  *         - BOOL Downward_Code_Motion_Violate_Dflow_Constrait 
  *             TODO: finish this comments
  * 
  * ==========================================================================
  * ==========================================================================
  */

#include "ipfec_defs.h"
#include "sched_util.h"
#include "sched_cflow.h"

    /* =========================================================
     * =========================================================
     *
     *              classs SCHED_DFLOW_MGR 
     *
     * =========================================================
     * =========================================================
     */ 
class SCHED_DFLOW_MGR {
public :

    SCHED_DFLOW_MGR  (void) ;
    ~SCHED_DFLOW_MGR (void) ;

    BOOL Are_Defs_Live_Out  (OP * op, BB * bb) ;
    BOOL Are_Defs_Live_Out  (OP * op, BB_VECTOR* bbv) ;

    BOOL Are_Defs_Live_In   (OP * op, BB * bb);
    
    void Add_Defs_Live_Out  (OP * op, BB * bb);
    void Add_Defs_Live_Out  (OP * op, REGION * rgn);
    void Add_Defs_Live_In   (OP * op, BB * bb) ;
    void Add_Defs_Live_In   (OP * op, REGION * rgn);
    
    void Update_Liveness_After_Upward_Code_Motion
            (OP *op, SRC_BB_INFO * src_info) ;  

    void Update_Liveness_After_Downward_Code_Motion 
            (OP *op, SRC_BB_INFO * src_info);

    BOOL Upward_Code_Motion_Kill_Some_LiveOut_Defs 
            (OP* op, BB * from, BB * to, 
             const BB_VECTOR * cutting_set);

    BOOL Downard_Code_Motion_Kill_Some_LiveIn_Defs 
            (OP* op, BB * from, BB * to, 
             const BB_VECTOR * cutting_set);

    BOOL Upward_Code_Motion_Violate_Dflow_Constrait
                (OP * op, BB * from, BB * to, 
                 const BB_VECTOR * cutting_set,
                 const REGION_VECTOR *nested_rgns,
                 RGN_CFLOW_MGR * cflow_info) ;

    BOOL Downward_Code_Motion_Violate_Dflow_Constrait 
            (OP * op, 
             const BB_VECTOR * cutting_set,
             const REGION_VECTOR *nested_rgns);

};

#endif /* sched_dflow_INCLUDED */
