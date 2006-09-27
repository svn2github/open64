/*
  Copyright (C) 2000-2003, Intel Corporation
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
//=============================================================================
//=============================================================================
//
//  Module :  multibranch.cxx
//  $Date  : $
//  $Author: marcel $
//  $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/multi_branch.cxx,v $
//
//  Description:
//  ============
//
//  Implementation of multi-branch.
//
//=============================================================================
//=============================================================================

#include "defs.h"
#include "errors.h"

#include "tn.h"
#include "op.h"
#include "op_map.h"
#include "be_util.h"

#include "timing.h"
#include "cg_dep_graph.h"
#include "cgtarget.h"
#include "targ_isa_bundle.h"
#include "tracing.h"

#include "ipfec_options.h"
#include "cggrp_microsched.h"
#include "cggrp_ptn_table.h"
#include "scheduler.h"
#include "dag.h"
#include "multi_branch.h"

static MEM_POOL  MLBR_pool_struct;
MEM_POOL* const MLBR_pool = &MLBR_pool_struct;

/////////////////////////////////////
static void
Initialize_Memory(void)
/////////////////////////////////////
//
//  Prepare the MLBR_pool for memory allocation.
//
/////////////////////////////////////
{
  static BOOL did_init = FALSE;

  if ( ! did_init ) {
    MEM_POOL_Initialize(MLBR_pool,"multi-branch pool",FALSE);
    did_init = TRUE;
  }
  MEM_POOL_Push(MLBR_pool);
}
/////////////////////////////////////
static void
Finalize_Memory(void)
/////////////////////////////////////
//
//  Delete all the memory that we used for strictly private stuff.
//
/////////////////////////////////////
{
  MEM_POOL_Pop(MLBR_pool);
  MEM_POOL_Delete(MLBR_pool);
}

//------------------------------------------------------------
// BB_has_target_bb(BB *bb, BB *target_bb)
//   Decide BB has xfer op, which target address may be label of
//   target_bb
//------------------------------------------------------------
static BOOL
BB_has_target_bb(BB *bb, BB *target_bb)
{
    OP *op;
    FOR_ALL_BB_OPs_REV(bb, op) {
        if (OP_dummy(op)) continue;
        if (OP_xfer(op)){
             INT tfirst, tcount;
             CGTARG_Branch_Info(op, &tfirst, &tcount);
             if (tcount == 0 ) {
                 // indirect jump to target_bb
                 return TRUE;
             } else {
                 TN *dest = OP_opnd(op, tfirst);
                 if (Is_Label_For_BB(TN_label(dest), target_bb)) { 
                     return TRUE;
                 } 
             }
        } else {
            return FALSE;
        }
    }
    return FALSE;
}
//-------------------------------------------------------------
// BOOL Multi_Branch_Valid_OP(OP *br_op)
//   OP can do mult_branch must meet following requirment:
//    1) prev_bb must be unique predecessor of bb of br_op 
//    2) prev_bb must not target to br_op's bb
//    3) br_call cannot be middle of pattern group
//    4) br_op is only non-nop instruction in its bb
//      
//-------------------------------------------------------------
BOOL Multi_Branch_Valid_OP(OP *br_op, BB *partial_head=NULL)
{
    if (!IPFEC_Enable_Multi_Branch || 
        !LOCS_Enable_Bundle_Formation) return FALSE;

    if (partial_head && !IPFEC_Enable_Pre_Multi_Branch) 
        return FALSE;

    Is_True((br_op != NULL && OP_xfer(br_op)), ("expect branch op to do multi branch!"));

    BB *bb= OP_bb(br_op);
    if (bb == NULL) return FALSE;
    // skip list
    if (IPFEC_Query_Skiplist(mlbr_skip_bb, BB_id(bb),
                             Current_PU_Count())) 
        return FALSE;
    
    // Heur: If freq is very small, give up multi-branch, for we can
    // speculation some ops to these BB. But post_multi_branch still 
    // can process this problem, for after then compiler do nothing.
    // Here we consider partial_head as a flag to determine what we
    // are doing. (pre_multi_branch or post_multi_branch)
    // Now assumption: 
    //   if partial_head as NULL, it means post_multi_branch
    //   
    if (BB_freq(bb) <= 0.0 && partial_head != NULL) {
        return FALSE;
    }

    if (partial_head) { 
        if (!BB_last_op(partial_head) || 
            !OP_Scheduled(BB_last_op(partial_head))) return FALSE;
    }
    // prev_bb must be unique precedentor of bb of br_op
    
    // if bb has more than one precedent bb, it can't bundle 
    // into last cycle, since op can't jump to middle of bundle
    // and BB cannot has target of next bb;
    BB *prev_bb = BB_prev(bb);

    if (prev_bb==NULL) return FALSE;

    if (!BB_Is_Unique_Predecessor(bb,prev_bb)) return FALSE;

    while (BB_length(prev_bb)==0) 
    { 
        prev_bb=BB_prev(prev_bb);
        if (prev_bb == NULL) break;
        if (!BB_Is_Unique_Predecessor(BB_next(prev_bb),prev_bb) ||
             BB_has_target_bb(prev_bb,BB_next(prev_bb))) { 
             prev_bb=NULL;
             break;
        }
    }

    if (prev_bb==NULL) return FALSE;
         
    // BB can jump to br_op's bb(include indirect and direct)
    if (BB_has_target_bb(prev_bb, bb)) return FALSE;

    // prev_bb branch op cannot be br.call
    if (BB_call(prev_bb)) return FALSE;
        
    // skip br_ret for special case
    if (OP_code(br_op) == TOP_br_ret) return FALSE;

    OP *cur_op;
    FOR_ALL_BB_OPs(bb,cur_op) {
        if (OP_dummy(cur_op) || OP_simulated(cur_op) || OP_noop(cur_op)) continue;
        // BB has more than one branch op except noop;
        if (cur_op != br_op) return FALSE;
    }
  
    // partial_head is the last bundle's BB?
    if (partial_head) {
        INT ops_num=0;
        while (partial_head != prev_bb) {
             ops_num += BB_length(prev_bb); 

             // partial bb should not be scheduled.
             if (BB_scheduled(prev_bb) ||
                ops_num > ISA_MAX_SLOTS * ISA_MAX_ISSUE_BUNDLES)
                return FALSE;

             prev_bb = BB_prev(prev_bb);
             if (prev_bb == NULL) return FALSE;
        }
    }
    return TRUE;
}

//-------------------------------------------------------------
// Post_Multi_Branch
//   Bundling multiple branch ops into one cycle, in such way
//   we can save several cycles between branch op. We can use
//   MBB and BBB template to hold these ops.But not any branch 
//   op can be fit into one cycle, we need meet some special 
//   requirement. 
//     -br.call must be in last slot of pattern
//     -Any op can't jump to middle of bundle, that is branch
//      target must be begining of bundle.
//   Method:
//    for each bb in all region;
//     Find one BB which only hold branch ops and nop, and 
//     it has only one precedent bb, which next bb just is this bb
//
//     Then, find all ops(preops) in last cycle of its precedent bb.
//
//     Using preops and branch ops to sought a suitable pattern, 
//       if find, then change stop bit and redo bundling;
//       if not find, then next;
//   Assumption:
//     each bb has only one branch op;
//--------------------------------------------------------------
void Post_Multi_Branch(void)
{
     Set_Error_Phase("Multiple Branch");
     Start_Timer(T_Ipfec_Multi_Branch_CU);    
 
     for  (BB *bb= REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
         if (BB_length(bb)==0) continue;
         if (!OP_end_group(BB_last_op(bb))) continue;
         if (IPFEC_Query_Skiplist(mlbr_skip_bb, BB_id(bb),
                   Current_PU_Count())) continue;


         // Find bb is valid for multi branch?
         OP *op = BB_branch_op(bb);
         if (op == NULL) { op = BB_call_op(bb); }
         if (op == NULL || OP_chk(op)) continue;
         
         if (!Multi_Branch_Valid_OP(op)) continue;
         
         BB *prev_bb = BB_prev(bb);
         if (prev_bb == NULL) continue;

         while(BB_length(prev_bb) == 0) {
             prev_bb = BB_prev(prev_bb);
             if (prev_bb == NULL) break;
         }

         if (prev_bb == NULL) continue;
         // constuct ops for last cycle
         OPS ops;
         OPS_Init(&ops);
         BOOL valid_ops =TRUE;
         if (OP_end_group(BB_last_op(prev_bb))) {
             BOOL meet_stop_bit = FALSE;
             INT stop_idx = 0;
             INT ops_len = 0;
             // end of group can do multiple branch 
             // get last cylce ops in previous bb
             for(prev_bb; prev_bb!=NULL; prev_bb=BB_prev(prev_bb)) {
                 OP *cur_op = BB_last_op(prev_bb);
                 while(cur_op) {
                     if ( !OP_noop(cur_op) &&
                         (OP_dummy(cur_op) || OP_simulated(cur_op))) {
                         cur_op = OP_prev(cur_op);
                         continue;
                     }
                     if (OP_end_group(cur_op) && 
                         OPS_length(&ops) != 0) {
                         meet_stop_bit = TRUE;
                         if (ops_len % ISA_MAX_SLOTS == 0) break;
                     }
                     // push to ops
                     OP *add_op = cur_op;
                     cur_op = OP_prev(cur_op);
                     BB_Remove_Op(prev_bb,add_op);
                     OPS_Prepend_Op(&ops, add_op); 
                     OP_bb(add_op) = prev_bb; 
                     if (!BB_Is_Unique_Predecessor(BB_next(prev_bb),prev_bb)) {
                         valid_ops = FALSE;
                     }
                     ops_len += ISA_PACK_Inst_Words(OP_code(add_op));
                     
                     if (meet_stop_bit) {stop_idx++;}
                     if (meet_stop_bit && 
                         ops_len % ISA_MAX_SLOTS == 0) break;
                 }
                 if (meet_stop_bit && 
                     ops_len % ISA_MAX_SLOTS == 0) break;
                 Is_True(OPS_length(&ops)<=(ISA_MAX_SLOTS*ISA_MAX_ISSUE_BUNDLES), 
                          ("too many ops %d in this cycle", OPS_length(&ops)));                 
             }

             if (OPS_length(&ops) == 0) return;

             prev_bb = OP_bb(OPS_first(&ops));
            
             // trace file
             if (Get_Trace(TP_A_MLBR, 0x01)) {
                  fprintf(TFile, "op list in last cycle is:\n");
                  Print_OPS(&ops);
                  fprintf(TFile, "\nop add in cur cycle is in BB %d:\n", BB_id(bb));
                  Print_OP(op);
                  fprintf(TFile, "\nstop index: %d\n", stop_idx);
                  fprintf(TFile, "\n");
             }

             // call micro-scheduler to find pattern for op list;
             if (valid_ops) {
                 // save level;
                 INT32 save = IPFEC_sched_care_machine;
                 IPFEC_sched_care_machine = Sched_care_bundle;
                 if (CGGRP_Bundle_OPS(&ops, op, stop_idx)) {

                     if (Get_Trace(TP_A_MLBR, 0x01)) {
                         fprintf(TFile, "op list After Bundle:\n");
                         Print_OPS(&ops);
                         fprintf(TFile, "\n");
                     }

                     // Find new bundle , clean bb of branch op 
                     BB_Remove_All(bb);  
                     BB_cycle(bb)=0;
                     Set_BB_partial_bundle(bb);
                     for (BB *p_bb=prev_bb; p_bb!=bb; p_bb = BB_next(p_bb)){
                         Is_True(p_bb!=NULL, ("partial bb is null!"));
                         Set_BB_partial_bundle(p_bb);
                     }

                 }
                 // recover msched level
                 IPFEC_sched_care_machine = save;
             }

             // Insert op to bb from ops;
             BB *insert_bb = prev_bb;
             Is_True(insert_bb != NULL, ("You should know where to insert OPS"));
             for(OP *cur_op=OPS_first(&ops);cur_op;) {
                 OP *next_op = OP_next(cur_op);
                 if (!OP_bb(cur_op)) {
                     BB_Append_Op(insert_bb, cur_op);
                 } else {
                     insert_bb = OP_bb(cur_op);
                     BB_Append_Op(insert_bb, cur_op);
                 }
                 cur_op = next_op;
             }
             
         }
     }
     Stop_Timer(T_Ipfec_Multi_Branch_CU);
}
///////////////////////////////////////////////////////////////////
//  Check_Cross_Boundary
//    Assumption: every patial bundle has only one predecessor,
//    which just its previous bb.
//
void Check_Cross_Boundary()
{
     BOOL partial_bundle_start = FALSE;
     BOOL valid_multi_branch = TRUE;
     BB *last_bb;
     BB_SET *partial_bbs;
    
     Set_Error_Phase("Multiple Branch");
     Start_Timer(T_Ipfec_Multi_Branch_CU);    
     Initialize_Memory();
     partial_bbs = BB_SET_Create_Empty(PU_BB_Count+2, MLBR_pool);

     // get last bb in code layout, how can I get it?
     for  (BB *bb= REGION_First_BB; bb != NULL; bb = BB_next(bb)) {
        last_bb = bb;
     }
     for (BB *bb=last_bb; bb != NULL; bb = BB_prev(bb)) {
        if (!BB_partial_bundle(bb) &&
            !partial_bundle_start) continue;
   
        // start bundle must end of bundle 
        if (!partial_bundle_start &&
            (BB_length(bb) ==0 ||
            !OP_end_group(BB_last_op(bb)))
            ) {
            valid_multi_branch = FALSE;  
        }
        partial_bundle_start  = TRUE;
        if (BB_prev(bb) == NULL) {
            partial_bundle_start = FALSE;
        } else {
            if (BB_partial_bundle(bb)) {
                if (BB_partial_bundle(BB_prev(bb))) {
                    if (!BB_scheduled(bb) ||
                        !BB_Is_Unique_Predecessor(bb, BB_prev(bb))) {
                        valid_multi_branch = FALSE;
                    }
                    // If prev bb is another partial bundle
                    BB *prev_partial_bb = BB_prev(bb);
                    BOOL end_bundle = BB_last_op(bb) ?
                                 OP_end_group(BB_last_op(prev_partial_bb)) : FALSE;
                    if (BB_scheduled(prev_partial_bb) &&
                        end_bundle) {
                        DevWarn("two successor partial bundle BB %d and BB %d.", 
                                BB_id(bb),
                                BB_id(prev_partial_bb));
                        partial_bundle_start = FALSE;
                    }
                } else {
                    BOOL start_bundle = BB_first_op(bb) ? 
                             OP_start_bundle(BB_first_op(bb)): FALSE;
                    if (!start_bundle ||
                        !BB_scheduled(bb)) {
                        valid_multi_branch = FALSE;
                    }
                    // partial bundle end
                    partial_bundle_start = FALSE;
                }
            }else {
                valid_multi_branch = FALSE;
            }
        }
        // push to bb set 
        partial_bbs = BB_SET_Union1(partial_bbs, bb, MLBR_pool);
        // set rescheduler for invalid partial bundle;
        if (!partial_bundle_start && !valid_multi_branch) {
            BB *bb;
            FOR_ALL_BB_SET_members(partial_bbs, bb) {
                Reset_BB_scheduled(bb);
                Reset_BB_partial_bundle(bb);
            }
            valid_multi_branch = TRUE;
            if (Get_Trace(TP_A_MLBR, 0x01)) {
                fprintf(TFile, "You should check BB set:");
                BB_SET_Print(partial_bbs, TFile);         
                fprintf(TFile, "\n");
            }
        }
        if (!partial_bundle_start) {
            partial_bbs = BB_SET_ClearD(partial_bbs);
        }
    }
    Finalize_Memory();
    Stop_Timer(T_Ipfec_Multi_Branch_CU);
}
