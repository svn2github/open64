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
// Module: dag.cxx
// $Date: 2005/10/21 19:00:00 $
// $Author: marcel $
// $Source: /proj/osprey/CVS/open64/osprey1.0/be/cg/orc_intel/dag.cxx,v $
//
// Description:
//
// DAG (dependence graph) construction related utilities.
//
//*********************************************************************

#include <set.h>
#include <hash_map.h>
#include "defs.h"
#include "tracing.h"
#include "cgtarget.h"
#include "cg_dep_graph.h"
#include "w2op.h"
#include "targ_proc_properties.h"
#include "ipfec_defs.h"
#include "region_bb_util.h"
#include "dag.h"
#include "prdb.h"
#include "region_bb_util.h"
#include "pair.h"
#include "op_targ.h"

// -----------------------------------------------------------------------
// OP_Shadowed_By_Prev_OPs
// Placeholder routine to exclude unnecessary dependencies.
// -----------------------------------------------------------------------

extern MEM_POOL dep_nz_pool;
extern TN_LIST *same_reg[REGISTER_MAX+1][ISA_REGISTER_CLASS_MAX+1];

TN *
set_representative_tn (TN* tn) {
    if (!TN_is_register(tn) || TN_register(tn) == REGISTER_UNDEFINED) {
        return tn ;
    }

    REGISTER rnum = TN_register(tn);
    ISA_REGISTER_CLASS rclass = TN_register_class(tn);
    TN_LIST *tns = same_reg[rnum][rclass]; 
    
    if (tns) { return TN_LIST_first(tns); }
    
    same_reg[rnum][rclass] = TN_LIST_Push(tn, same_reg[rnum][rclass],
					&dep_nz_pool);
    
    return tn ;
}

TN *
get_representative_tn (TN *tn) {
    if (!TN_is_register (tn)) return tn ;
    REGISTER rnum = TN_register(tn);
    ISA_REGISTER_CLASS rclass = TN_register_class(tn);
    TN_LIST *tns;

    for (tns = same_reg[rnum][rclass]; tns; tns = TN_LIST_rest(tns)) {
        return TN_LIST_first(tns) ;
    }

    return tn ;
}

INT16 
get_opnd_idx (OP *op , TN* tn) {
    tn = set_representative_tn(tn);
    for (INT16 idx = OP_opnds (op) - 1 ; idx >= 0 ; idx--) {
        TN * opnd = OP_opnd(op,idx); 
        opnd = set_representative_tn (opnd) ;
        if (opnd == tn) return idx ;
    }

    return -1;
}

void
adjust_reganti_latency (ARC *arc) {
    if (ARC_kind (arc) != CG_DEP_REGANTI) return ;

    OP * pred = ARC_pred (arc) ;
    TN * tn = OP_opnd(pred,ARC_opnd(arc)) ;   

    if (TN_is_register(tn) && TN_register_class(tn) == ISA_REGISTER_CLASS_predicate) {
        return ;    
    }
    
    arc->latency = 0 ;
}

void
adjust_reganti_latency (BB *bb) {
    
    OP * op ;
    FOR_ALL_BB_OPs (bb, op) {
        for (ARC_LIST* arcs = OP_succs(op); arcs != NULL; 
            arcs = ARC_LIST_rest(arcs)) {
            ARC *arc = ARC_LIST_first(arcs) ;
            if (ARC_kind(arc) != CG_DEP_REGANTI) continue ;
            adjust_reganti_latency (arc) ;       
        }
    }
}


BOOL
DAG_BUILDER::OP_Shadowed_By_Prev_OPs(OP*                defop,
                                         OPs&               prev_def_ops, 
                                         COMPARE_FUNCTION   comp_func)
{
  // Place holder for further enhancement.
  return FALSE;
}

DAG_BUILDER::OPs&
DAG_BUILDER::Get_Def_Use_OPs(OP *op, UINT8 res, CG_DEP_KIND arc_kind)
{
  TN *tn;
  if (arc_kind == CG_DEP_REGIN) {
    tn = OP_opnd(op, res);
  } else if (arc_kind == CG_DEP_REGOUT ||
             arc_kind == CG_DEP_REGANTI) {
    tn = OP_result(op, res);
  }
  
  tn = set_representative_tn (tn);

  if (!TN_is_register(tn) || TN_is_true_pred(tn)) {
    return _empty_set;
  }
  
  if (arc_kind == CG_DEP_REGIN) {
    return _bb_def_info_map[OP_bb(op)][tn];
  } else if (arc_kind == CG_DEP_REGOUT) {
    return _bb_def_info_map[OP_bb(op)][tn];
  } else if (arc_kind == CG_DEP_REGANTI) {
    return _bb_use_info_map[OP_bb(op)][tn];
  } else {
    Is_True(FALSE, ("Shouldn't come here"));
  }
}
  
void
DAG_BUILDER::Set_Def_Use_OPs(OP *op)
{
  INT i;
  for (i = 0; i < OP_results(op); i++) {
    TN *result_tn = OP_result(op,i);
    result_tn = set_representative_tn (result_tn);

    Is_True(TN_is_register(result_tn), ("result is not register.\n"));
    if (!TN_is_true_pred(result_tn) &&
        !OP_Shadowed_By_Prev_OPs(op,
                                 _bb_def_info_map[OP_bb(op)][result_tn], 
                                 OP_has_subset_predicate)) {
      _bb_def_info_map[OP_bb(op)][result_tn].insert(op);
    }
  }

  for (i = 0; i < OP_opnds(op); i++) {
    TN *opnd_tn = OP_opnd(op,i);
    opnd_tn = set_representative_tn (opnd_tn);

    if (TN_is_register(opnd_tn) &&
        !TN_is_true_pred(opnd_tn) &&
        !OP_Shadowed_By_Prev_OPs(op,
                                 _bb_use_info_map[OP_bb(op)][opnd_tn], 
                                 OP_has_subset_predicate)) {
      _bb_use_info_map[OP_bb(op)][opnd_tn].insert(op);
    }
  }
}

void
DAG_BUILDER::Compute_Defs_Uses_In(BB* bb)
{
  for (CFG_PRED_NODE_ITER pred_iter(Regional_Cfg_Node(bb));
       pred_iter != 0;
       ++pred_iter) {
    if (!(*pred_iter)->Is_Region()) {
      BB* pred = (*pred_iter)->BB_Node();

      for (TN_OPs_MAP_ITER iter = _bb_def_info_map[pred].begin();
           iter != _bb_def_info_map[pred].end();
           iter++) {
          TN * tn = set_representative_tn (iter->first) ;
          _bb_def_info_map[bb][tn].insert(iter->second.begin(),
                                                 iter->second.end());
      }
      
      for (TN_OPs_MAP_ITER iter = _bb_use_info_map[pred].begin();
           iter != _bb_use_info_map[pred].end();
           iter++) {
          TN * tn = set_representative_tn (iter->first) ;
          _bb_use_info_map[bb][tn].insert(iter->second.begin(),
                                                 iter->second.end());
      }
    }
  }
}

void
DAG_BUILDER::Compute_OPs_In(BB* bb)
{
  for (CFG_PRED_NODE_ITER pred_iter(Regional_Cfg_Node(bb));
       pred_iter != 0;
       ++pred_iter) {
    if (!(*pred_iter)->Is_Region()) {
      BB* pred = (*pred_iter)->BB_Node();

      _bb_ops_map[bb].insert(_bb_ops_map[pred].begin(),
                             _bb_ops_map[pred].end());
    }
  }
}


BOOL
DAG_BUILDER::Is_Control_Speculative(OP* pred, OP* succ)
{
  // Handle branch op only.
  if (OP_br((OP *) pred)) {
    TOP opcode = OP_code(succ);
    if (OP_xfer(succ) || OP_volatile(succ) || OP_like_store(succ) ||
        TOP_is_ftrap(opcode) || TOP_is_itrap(opcode) ||
        TOP_is_fdiv(opcode)) {
      return FALSE;
    } else {
      return TRUE;
    }
  }

  return FALSE;
}


// ====================================================================
// Computes the dependence graph for a SEME region.
//
// In addition to REG* and MEM* arcs, PREBR and POSBR dependence arcs
// are also inserted to preserve dependences across branch instructions.
// ====================================================================
void
DAG_BUILDER::Build_DAG()
{
  if (_region) {
    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
         cfg_iter != 0;
         ++cfg_iter) {

      // Region node will become barrier of code motion, at least for now.
      if (!(*cfg_iter)->Is_Region()) {
        if ( BB_entry((*cfg_iter)->BB_Node()) || BB_exit((*cfg_iter)->BB_Node()))
          continue;
       
        BB* bb = (*cfg_iter)->BB_Node();

        BB_OP_MAP omap = BB_OP_MAP_Create(bb, &_mem_pool);
        BB_MAP_Set(_cg_dep_op_info, bb, omap);

        OP *op;
        FOR_ALL_BB_OPs(bb, op) {
          BB_OP_MAP_Set(omap, op, new_op_info());
        }
      }
    }

    for (TOPOLOGICAL_REGIONAL_CFG_ITER cfg_iter(_region->Regional_Cfg());
         cfg_iter != 0;
         ++cfg_iter) {

      // Region node will become barrier of code motion, at least for now.
      if (!(*cfg_iter)->Is_Region()) {
        if ( BB_entry((*cfg_iter)->BB_Node()) ||BB_exit((*cfg_iter)->BB_Node()))
          continue;

        BB* bb = (*cfg_iter)->BB_Node();

        // Compute the reaching definitions and uses in the head of bb.
        Compute_Defs_Uses_In(bb);

        // Compute the reaching memory OPs in the head of bb.
        Compute_OPs_In(bb);

        OP *op;
        // add an arc from every stack memory op to the SP adjustment op.
        if (BB_exit(bb)) {
          OP *exit_sp_adj = BB_exit_sp_adj_op(bb);
          for (op = exit_sp_adj; op != NULL; op = OP_prev(op)) {
            maybe_add_exit_sp_adj_arc (op, exit_sp_adj);
          }
        }

        FOR_ALL_BB_OPs(bb, op) {
          Build_Reg_Arcs(op);

          if (OP_load(op) || OP_like_store(op)) {
            Build_Mem_Arcs(op);
          }

          Build_Misc_Arcs(op);

          // generate all PREBR and POSTBR dependence arcs.
          if (_include_control_arcs) {
            Build_Branch_Arcs(op, TRUE);
          }

          // Push this op.
          _bb_ops_map[OP_bb(op)].insert(op);

          // Push this op into the sets of definitions and uses
          Set_Def_Use_OPs(op);
        }
      }
    }
  } else if (_bb) {
      CG_DEP_Compute_Graph (
          _bb,
          INCLUDE_ASSIGNED_REG_DEPS,
          NON_CYCLIC,
          INCLUDE_MEMREAD_ARCS,
          INCLUDE_MEMIN_ARCS,
          INCLUDE_CONTROL_ARCS,
          NULL);
      adjust_reganti_latency (_bb);
  }

  if (Get_Trace(TP_A_SCHED, SUMMARY_DUMP)) {
    fprintf(TFile, "\n%s  Number of data-spec edges: %u\n", SBar, _num_data_spec_arcs);
    fprintf(TFile, "  Number of control-spec edges: %u\n", _num_cntl_spec_arcs);
  }
}

// ====================================================================
// Constructor and Destructor.
// ====================================================================
DAG_BUILDER::DAG_BUILDER(REGION* region, 
                                 PRDB_GEN *prdb,
                                 BOOL    assigned_regs,
                                 BOOL    memread_arcs,
                                 BOOL    memin_arcs,
                                 BOOL    control_arcs) :
      _cyclic(FALSE),
      _prdb(prdb),
      _include_assigned_registers(assigned_regs),
      _include_memread_arcs(memread_arcs),
      _include_memin_arcs(memin_arcs),
      _include_control_arcs(control_arcs),
      _num_data_spec_arcs( 0 ),
      _num_cntl_spec_arcs( 0 ),
      _bb ( NULL ),
      _region( region ),
      _bb_ops_map(100, ptr_hash<BB*>(), equal_to<BB*>(),
                       BB_OPs_ALLOC(&_mem_pool)),
      _bb_def_info_map(100, ptr_hash<BB*>(), equal_to<BB*>(),
                       BB_DEF_USE_ALLOC(&_mem_pool)),
      _bb_use_info_map(100, ptr_hash<BB*>(), equal_to<BB*>(),
                       BB_DEF_USE_ALLOC(&_mem_pool))
{
  Invoke_Init_Routines();
}

DAG_BUILDER::DAG_BUILDER(BB* bb,PRDB_GEN *prdb) :
      _prdb(prdb),
      _num_data_spec_arcs( 0 ),
      _num_cntl_spec_arcs( 0 ),
      _bb( bb ),
      _region( NULL )
{}

DAG_BUILDER::~DAG_BUILDER()
{
  // Delete the DAG.
  if (_region) CG_DEP_Delete_DAG();
}

