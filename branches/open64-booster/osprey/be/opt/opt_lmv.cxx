//-*-c++-*-
// ====================================================================
// ====================================================================
//
// Copyright (C) 2007, University of Delaware, Hewlett-Packard Company, 
//  All Rights Reserved.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of version 2 of the GNU General Public License as
// published by the Free Software Foundation.
//
// This program is distributed in the hope that it would be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//
// Further, this software is distributed without any warranty that it
// is free of the rightful claim of any third person regarding
// infringement  or the like.  Any license provided herein, whether
// implied or otherwise, applies only to this software file.  Patent
// licenses, if any, provided herein do not apply to combinations of
// this program with other software, or any other product whatsoever.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write the Free Software Foundation,
// Inc., 59 Temple Place - Suite 330, Boston MA 02111-1307, USA.
//
// ====================================================================

#include <vector>
#include <algorithm>
using namespace std;

#include "tracing.h"
#include "id_map.h"
using idmap::ID_MAP;

#include "be_util.h"
#include "bb_node_set.h"
#include "opt_alias_rule.h"
#include "opt_main.h"  // for COMP_UNIT
#include "opt_lmv.h"

const INT LMV_HEURISTIC::_low_trip_count = 40; 
const float _dup_loop_freq_ratio = 0.1f;

extern void Rename_CODEMAP(COMP_UNIT *);

//====================================================================
//====================================================================
// 
//             Implementation of class LMV_HEURISTIC 
//
//====================================================================
//====================================================================

// Figure out pair of memory access ranges; with the assumption 
// of the no-alias of these two memory ranges, the performance of 
// the loop in question is supposed to be improved quite a lot.
//
// return FALSE iff no such pairs are found.
// 
// TODO: Current heuristic looks like a toy. It is just used to make
//  the loop-multiversioning for a loop in LBM@spec2k6 and make other
//  components of the loop-multiversioning works. 
//
// The better heuristics that is planed to be experimented soon are:
// 
//   - examine in what degree a critical lenth in loop in shorten 
//     with assumed no-alias
//   
//   - examine how many redundant expressions will be eliminated with 
//     assumed no-alias.
// 
//   - evalute the profitability that will be obtained by assuming the 
//     some quantities (say, trip-counter) to be loop invariant. 
//
typedef struct {
  INT ptr_id;
  INT weight;
} PTR_INFO ;

struct less_weight {
  bool operator() (PTR_INFO info1,  PTR_INFO info2) 
     { return info1.weight < info2.weight; }
};

BOOL
LMV_HEURISTIC::Figureout_assumed_noalias_mem_ranges 
   (MEM_ACCESS_VECT& mem_grp1, MEM_ACCESS_VECT& mem_grp2,
    MEM_RANGE* r1, MEM_RANGE* r2) {

  r1->Init ();
  r2->Init ();

  MA_PTR_MGR& ptr_mgr = _maa->_ptr_mgr;
  if (ptr_mgr.Ptr_sum() < 2) {
    // there is no more than one group of mem-ops. No chance for 
    // multiversioning.
    return FALSE;
  }

  // current toy heuristic is: 
  //  - group memoy access according to their pointer it use (e.g p[i] 
  //    and p[2] are of same group). The weight of a group is measured 
  //    by the number of memory access in that group. 
  //
  //  - Sort the groups in an order of decreasing weight. 
  //
  //  - if the top 2 groups dorminate the memory access in the loop and
  //    they are array access via pointer, they are profitable for loop
  //    multi-versioning.

  PTR_INFO* ptr_info = TYPE_MEM_POOL_ALLOC_N(PTR_INFO, _mp, 
                                             ptr_mgr.Next_ptr_id()+1);
  
  MA_PTR_VECT& vect = ptr_mgr.All_ptrs ();
  INT idx = 0;
  INT total_weight = 0;
  for (MA_PTR_VECT_ITER iter = vect.begin (); 
       iter != vect.end(); iter++, idx++) {
    MA_POINTER* ptr = *iter;  
    ptr_info[idx].ptr_id = ptr->Id();
    ptr_info[idx].weight = ptr->Ld_cnt() + ptr->St_cnt();
    total_weight += ptr->Ld_cnt() + ptr->St_cnt();
  }
  sort (ptr_info, ptr_info+idx-1, less_weight());
  
  MA_POINTER* p1 = ptr_mgr.Get_pointer (ptr_info[0].ptr_id);
  MA_POINTER* p2 = ptr_mgr.Get_pointer (ptr_info[1].ptr_id);

  MEM_ACCESS_VECT& v1 = p1->All_mem_access();   
  MEM_ACCESS_VECT& v2 = p2->All_mem_access();   
  if (!_alias_rule->Aliased_Memop (v1[0]->Points_to(_opt_stab), 
                 v2[0]->Points_to(_opt_stab), (TY_IDX)0, (TY_IDX)0)) {
    return FALSE;
  }

  // compute the range of p1
  MA_OFFSET ofst1, ofst2;
  ofst1.Set_fixed_ofst (0);
  ofst2.Set_fixed_ofst (0);

  INT sz1, sz2;
  sz1 = sz2 = 0;

  for (MEM_ACCESS_VECT_ITER iter = v1.begin (); iter != v1.end (); iter++) {
    ofst1.Union (&(*iter)->Ofst(), _loopinfo);
    sz1 = MAX(sz1, (*iter)->Byte_size());
  }

  r1->Set_base_ptr (p1);
  r1->Set_access_range (&ofst1, _loopinfo, sz1);
  if (!r1->Access_range().low.Is_const () || !r1->Access_range().high.Is_const ())
    return FALSE;

  for (MEM_ACCESS_VECT_ITER iter = v2.begin (); iter != v2.end (); iter++) {
    ofst2.Union (&(*iter)->Ofst(), _loopinfo);
    sz2 = MAX(sz2, (*iter)->Byte_size());
  }
  r2->Set_base_ptr (p2);
  r2->Set_access_range (&ofst2, _loopinfo, sz2);
  if (!r2->Access_range().low.Is_const () || !r2->Access_range().high.Is_const ())
    return FALSE;

  mem_grp1 = v1;
  mem_grp2 = v2;

  return TRUE;
}

//====================================================================
//====================================================================
// 
//             Implementation of class LOOP_MULTIVER
//
//====================================================================
//====================================================================

LOOP_MULTIVER::LOOP_MULTIVER (COMP_UNIT* comp_unit):
  MEM_POOL_Constructor (&_mp, "loop multiversioning", TRUE), 
  _candidates (&_mp)
{
  _comp_unit = comp_unit;
  _htable = comp_unit->Htable();
  _opt_stab = comp_unit->Opt_stab();
  _cfg = _opt_stab->Cfg();
  _tracing = Get_Trace (TP_WOPT2, LOOP_MULTVER_FLAG);
  _blk_num = _stmt_num = _expr_num = _ld_num = _st_num = 0;
  _alias_rule = _opt_stab->Rule ();
  _local_mp = MEM_local_pool_ptr;
 
  _visited_cr = BS_Create_Empty (1024/*init size*/, &_mp);

}

#define MAX_BB_NUM    (32)
#define MAX_STMT_NUM  (128)
#define MAX_EXPR_NUM  (400)

// check to see whether the statistic data collected by Pass_initial_screen()
// exceed the threshold.
//
BOOL
LOOP_MULTIVER::Exceed_threshold (void) {
  return _blk_num > MAX_BB_NUM || _stmt_num > MAX_STMT_NUM || _expr_num > MAX_EXPR_NUM; 
}

// return the "latency" of given <cr>, the latency is imprecise and 
// the unit for the "latency" is not specified -- it is not in machine 
// cycles as traditional "latencies" are. We just need a number of 
// each operator so that the "weight" between operators can be 
// differentiated.
//
INT
LOOP_MULTIVER::Estimate_latency (const CODEREP* cr, BOOL lhs) {
  
  switch (cr->Kind()) {
  case CK_LDA:
  case CK_CONST:
  case CK_RCONST:
    return 1;
  
  case CK_VAR:
    {
    ST* st = _opt_stab->Aux_stab_entry (cr->Aux_id())->St ();
    if (ST_class(st) == CLASS_PREG) 
      return 1;
    }
    return lhs ? 2 : 4;

  case CK_IVAR:
    return lhs ? 4 : 8; 

  case CK_DELETED:
    return 0;

  case CK_OP:
    break;

  default:
    Is_True (FALSE, ("Unexpected CODEREP kind"));
  }

  // Certainly need refined. 
  INT lat = 0;
  switch (cr->Opr()) {
  case OPR_MOD: 
  case OPR_DIV:  lat = 32;  break;
  case OPR_DIVREM : lat = 40; break;
  case OPR_MPY:
  case OPR_FLOOR:
  case OPR_CEIL:
     return 40; 
  case OPR_MLOAD:
  case OPR_MSTORE:
     return 12;
  }

  return 2;
}

//////////////////////////////////////////////////////////////////////////////
//
// Evaluate_stmt ()
//
//   Helper function of Pass_initial_screen(). It does the following things for
// Pass_initial_screen():
//    - collect the number of expression, load/store in given stmt.
//    - check to see whether the given statement as well as its expr disable 
//      loop-multiversioning -- e.g it is not possible to perform loop-multiver
//      if there is a call in current loop, and that call has side-effect. 
// 
// Evaluate_cr_rec()
//   Helper function of Evaluate_stmt(). Count the number of expr and their 
// weight recursively. 
//
//////////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Evaluate_cr_rec (const CODEREP* cr, BOOL is_read) {

  if (!BS_MemberP (_visited_cr, cr->Coderep_id())) {
    _visited_cr = BS_Union1D (_visited_cr, cr->Coderep_id(), &_mp);
  } else {
    // do not visit a CODEREP twice 
    return;
  }

  switch (cr->Kind()) {
  case CK_LDA: _expr_num ++; break;
  case CK_CONST: break;
  case CK_RCONST: 
    { 
      TYPE_ID dty = cr->Dtyp(); 
      if (MTYPE_is_float(dty) || MTYPE_is_complex(dty)) {
        _expr_num ++;
      }
    }
    break;

  case CK_VAR:
    {
      ST* st = _opt_stab->Aux_stab_entry (cr->Aux_id())->St ();
      if (ST_class(st) != CLASS_PREG) {
        _expr_num ++;
        if (is_read) _ld_num ++ ; else _st_num ++; 
      }
    }
    break;

  case CK_IVAR:
    {
      if (is_read) _ld_num ++ ; else _st_num ++; 
      _expr_num ++;
      Evaluate_cr_rec (is_read ? cr->Ilod_base() : cr->Istr_base(), TRUE);
    }
    break;
     
  case CK_OP:
    _expr_num ++;
    for (INT i = 0; i < cr->Kid_count() ; i++) {
      Evaluate_cr_rec (cr->Opnd(i), TRUE);
    }
    break;

  case CK_DELETED:
    break;
  }
}

BOOL
LOOP_MULTIVER::Evaluate_stmt (const STMTREP* stmt) {
  switch (stmt->Opr()) {
  case OPR_CALL:
  case OPR_ICALL:
  case OPR_INTRINSIC_CALL:
  case OPC_BACKWARD_BARRIER:
  case OPC_FORWARD_BARRIER:
    return FALSE;

  default:
    if (OPCODE_is_black_box (stmt->Op())) {
      return FALSE;
    }
  }
 
  if (stmt->Rhs()) Evaluate_cr_rec (stmt->Rhs(), TRUE);
  if (stmt->Lhs()) Evaluate_cr_rec (stmt->Lhs(), FALSE);
  ++ _stmt_num;

  return TRUE;
}


////////////////////////////////////////////////////////////////////////////
//
// Helper function of Gen_test_cond(), it returns the CODEREP
// holding value "<ptr>+ofst".
//
////////////////////////////////////////////////////////////////////////////
//
CODEREP*
LOOP_MULTIVER::Gen_add_expr (CODEREP* ptr, INT ofst) {

  if (ofst == 0) return ptr;

  CODEREP* tmp_cr = Alloc_stack_cr(2/*at most 2 kids*/+IVAR_EXTRA_NODE_CNT);
  CODEREP* ofst_cr; 

  tmp_cr->Init_const (ofst > 0 ? MTYPE_U4 : MTYPE_I4, (INT64)ofst);
  ofst_cr = _htable->Hash_Const (tmp_cr); 
   
  OPCODE opcode = (MTYPE_byte_size(ptr->Dtyp()) == 8) ? OPC_U8ADD : OPC_U4ADD;
  tmp_cr->Init_op(opcode, 2);
  tmp_cr->Set_opnd(0, ptr);
  tmp_cr->Set_opnd(1, ofst_cr);

  ptr->IncUsecnt();
  return _htable->Hash_Op (tmp_cr);
}

////////////////////////////////////////////////////////////////////////////
//
// Generate a expression which is going to be evaluated at runtime. If 
// the evaluation turns out to be true, it means the alias does not happen. 
// In that case, the faster verion should be executed. 
// 
// We set the original loop be the the "faster" verion. 
//
////////////////////////////////////////////////////////////////////////////
//
CODEREP*
LOOP_MULTIVER::Gen_test_cond (LMV_CANDIDATE* cand) {

  const MEM_RANGE& r1 = cand->Mem_range_1 ();
  const MEM_RANGE& r2 = cand->Mem_range_2 ();

  const ADDR_LINEAR_EXPR_RANGE ar1 = r1.Access_range();
  const ADDR_LINEAR_EXPR_RANGE ar2 = r2.Access_range();

  // TODO: Handle non-constant range
  Is_True (ar1.low.Is_const () && ar1.high.Is_const() &&
           ar2.low.Is_const() && ar2.high.Is_const(), 
           ("currently cannot handle non-constant range"));

  // TODO: Handle this case
  if (r1.Base_is_symbol() || r2.Base_is_symbol()) {
    return NULL;
  }
  
  MA_POINTER *p1, *p2;
  p1 = r1.Base_ptr ();
  p2 = r2.Base_ptr ();

  if (p1->Kind () != MA_PTR_PREG && p1->Kind() != MA_PTR_SYM ||
      p2->Kind () != MA_PTR_PREG && p2->Kind() != MA_PTR_SYM) {
    return NULL;
  }

  CODEREP* ptr1 = p1->Coderep();
  CODEREP* ptr2 = p2->Coderep();
  if (!cand->Loop()->Invariant_cr (ptr1) || 
      !cand->Loop()->Invariant_cr (ptr2)) {
    // TODO:: Handle non-loop-invariant cases
    return NULL;    
  }
  
  CODEREP *ptr1_low  = Gen_add_expr (ptr1, ar1.low.Const_val());
  CODEREP *ptr1_high = Gen_add_expr (ptr1, ar1.high.Const_val());
  CODEREP *ptr2_low  = Gen_add_expr (ptr2, ar2.low.Const_val());
  CODEREP *ptr2_high = Gen_add_expr (ptr2, ar2.high.Const_val());

  // generate the expr : (p1h < p2l || p2h < p1l)   
  CODEREP* tmp_cr = Alloc_stack_cr(2/*2 kids */);
  BOOL use_8_bytes = (MTYPE_byte_size(ptr1_low->Dtyp()) == 8); 

  CODEREP* cr_1; // generate "p1h < p2l"
  tmp_cr->Init_op (use_8_bytes ? OPC_I4U8LE : OPC_I4U4LE, 2);
  tmp_cr->Set_opnd (0, ptr1_high);
  tmp_cr->Set_opnd (1, ptr2_low);
  cr_1 = _htable->Hash_Op (tmp_cr);

  CODEREP* cr_2; // generate "p2h < p1l"
  tmp_cr->Init_op (use_8_bytes ? OPC_I4U8LE : OPC_I4U4LE, 2);
  tmp_cr->Set_opnd (0, ptr2_high);
  tmp_cr->Set_opnd (1, ptr1_low);
  cr_2 = _htable->Hash_Op (tmp_cr);

  tmp_cr->Init_op (OPC_I4CIOR, 2);
  tmp_cr->Set_opnd (0, cr_1);
  tmp_cr->Set_opnd (1, cr_2);

  CODEREP* cr = _htable->Hash_Op (tmp_cr);
  if (_tracing) {
    fprintf (TFile, "The precondition predicate (kid of true-branch) is:\n");
    cr->Print (0, TFile);
  }
  return cr;
}

//////////////////////////////////////////////////////////////////////////////////
//
// Not_applicable() take a glance of the loop in quesition to see whether it is 
// legal for multiversioning. No cost issue is taken into accout in this function.
//
//////////////////////////////////////////////////////////////////////////////////
//
BOOL 
LOOP_MULTIVER::Not_applicable (BB_LOOP* loop) {
  // Currenly, applicable only to inner most loop
  if (loop->Child()) {
    if (_tracing) {
      fprintf (TFile, "Not innermost loop, give up\n");
    }
    return TRUE;
  }

  if (loop->Parent ()) {
    if (_tracing) {
      // The concern is not interfere LNO.
      fprintf (TFile, "Currently, it is not ready for loop-nest");
    }
    return TRUE;
  }

  // don't try to outsmart OpenMP pragma 
  if (loop->Is_flag_set(LOOP_IS_MP) || loop->Is_flag_set(LOOP_IS_PDO)) {
    if (_tracing) {
      fprintf (TFile, "Don't try to outsmart OpenMP pragma\n");
    }
    return TRUE;
  }

  // Check to see whether CFG agree
  if (!_cfg->LMV_eligible_for_multiversioning(loop, _tracing)) 
    return TRUE; 

  return FALSE;
}

//////////////////////////////////////////////////////////////////////////////////
//
//  Take a closer look to screen out the ineligible loop 
//
//////////////////////////////////////////////////////////////////////////////////
//
BOOL 
LOOP_MULTIVER::Pass_initial_screen (const BB_LOOP* loop) {

  // do not do multiversion for loop with small trip count 
  CODEREP* iv;
  if (_agg_mode && (iv = loop->Iv()) && iv->Kind() == CK_CONST && 
     iv->Const_val () < LMV_HEURISTIC::Low_trip_count_threshold ()) {
    fprintf (TFile, "The trip count is %d smaller than the threshold %d\n", 
             (INT)iv->Const_val(), (INT)LMV_HEURISTIC::Low_trip_count_threshold ());
    return FALSE;
  }

  BB_NODE_SET_ITER iter;
  BB_NODE* blk;
 
  _visited_cr = BS_ClearD (_visited_cr);

  // Take a glance of each block to see whether the loop in question is 
  // appropriate for multiversioning.
  //
  _blk_num = 0;
  BB_NODE_SET* loop_body = loop->True_body_set(); 
  FOR_ALL_ELEM (blk, iter, Init(loop_body)) {
    if (blk->Hascall()) {
      if (_tracing) {
        fprintf (TFile, 
	         "give up due to call in block %d\n", 
                 blk->Id());   
      }
      return FALSE;
    }

    _blk_num ++;
    // too many blocks
    if (_blk_num > MAX_BB_NUM) {
      if (_tracing) {
        fprintf (TFile, "block number exceed threshold %d\n", MAX_BB_NUM);
      }
      return FALSE;  
    }

    if (!blk->Clonable (TRUE/*allow-loop-cloning*/)) {
      if (_tracing) {
        fprintf (TFile, "block %d is not clonable\n", blk->Id());
      }
      return FALSE;
    }

    if (blk->Hascall()) {
      // Currently, we cannot handle loop with call. 
      if (_tracing) {
        fprintf (TFile, "give up due to call\n");
      }
      return FALSE;
    }

    switch (blk->Kind()) {
    case BB_VARGOTO:
    case BB_IO:
    case BB_SUMMARY:
      if (_tracing) {
        fprintf (TFile, "Don't know how to deal with BB:%d of kind %d",
	                 blk->Id(), blk->Kind());
      }
      return FALSE;

    case BB_ENTRY:
    case BB_EXIT:
    case BB_REGIONSTART:
    case BB_REGIONEXIT:
      Is_True (FALSE, ("BB:%d of kind %d should excluded by BB_NODE::Clonable",
                       blk->Id(), blk->Kind()));
      return FALSE;
    }
  }

  // Take a closer look of each block by examining each statement to see 
  // whether it is appropriate for multiversioning 
  //
  FOR_ALL_ELEM (blk, iter, Init(loop->True_body_set())) {
   
    STMTREP_CONST_ITER stmt_iter (blk->Stmtlist());
    const STMTREP* stmt;
    INT wrap_cnt = 0;
    FOR_ALL_NODE (stmt, stmt_iter, Init()) {
      if (!Evaluate_stmt (stmt)) {
         if (_tracing) {
	   fprintf (TFile, 
	        "unable to conduction loop multiversioning due to this statement:\n");
	   stmt->Print(TFile);
	 }
      }

      if (wrap_cnt ++ > 128) {
        // wrap_cnt is used to prevent Exceed_threshold() from 
        // being called too frequently.
        wrap_cnt = 0;
        if (Exceed_threshold ()) {
	  if (_tracing) {
	    fprintf (TFile, "give up because the size exceed threshold");
	    fprintf (TFile, 
	             "block:%d, statement:%d, expression:%d, load:%d, store:%d\n",
		     _blk_num, _stmt_num, _expr_num, _ld_num, _st_num);
	  }
          return FALSE;
        }
      }
    } // end of FOR_ALL_NODE 

    if (Exceed_threshold ()) {
      if (_tracing) {
	fprintf (TFile, "give up because the size exceed threshold");
	fprintf (TFile, 
	         "block:%d, statement:%d, expression:%d, load:%d, store:%d\n",
		 _blk_num, _stmt_num, _expr_num, _ld_num, _st_num);
      }
      return FALSE;
    }
  } // end of FOR_ALL_ELEM

  return TRUE;
}

///////////////////////////////////////////////////////////////////////////
//
// Figure out whether <loop> is a candidate. If yes, put this candidate 
// into <_candidates> vector. 
//
// Since there may be several candidates in a single PU, performing 
// multiversioning upon all these candidates may not be realistic. If that 
// happen, only few candidates with top priority are select for the 
// final code generation. Therefore, the multiversioning code generation 
// should not be conducted right after a single candidate is identified. It 
// is done when all candidates are identified and collected in <_candidates> 
// vector. 
//
////////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Identify_candidate (BB_LOOP* loop) {

  MEM_POOL_Popper lmp (_local_mp);

  LMV_LOOP_INFO* loopinfo = CXX_NEW(LMV_LOOP_INFO(loop, &_mp), &_mp);

  MEM_ACCESS_ANALYZER* maa = 
    CXX_NEW (MEM_ACCESS_ANALYZER(_opt_stab, loopinfo, &_mp, _tracing), &_mp);
  maa->Analyze_mem_access ();
 
  LMV_HEURISTIC heur(_local_mp, this, loopinfo, _opt_stab, maa,
                    _alias_rule, _tracing);

  MEM_RANGE r1, r2;
  MEM_ACCESS_VECT mem_grp1 (_local_mp);
  MEM_ACCESS_VECT mem_grp2 (_local_mp);

  if (heur.Figureout_assumed_noalias_mem_ranges 
       (mem_grp1, mem_grp2, &r1, &r2)) {

    LMV_CANDIDATE* cand = CXX_NEW (LMV_CANDIDATE(&_mp), &_mp);
    cand->Set_mem_access_analyzer (maa);
    cand->Set_range (r1, r2);
    cand->Set_loop (loop);
    cand->Set_mem_group (mem_grp1, mem_grp2);
    _candidates.push_back (cand);
  }
}

//////////////////////////////////////////////////////////////////////////
//
//   Identify all candidates in current PU. All candidates are 
// collected by <_candidates> vector. 
// 
//////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Identify_candidates (void) {

  BB_LOOP* loop_list = _cfg->Analyze_loops();

  BB_LOOP_ITER loop_iter(loop_list);
  BB_LOOP* loop;

  // go through all innermost loops 
  FOR_ALL_NODE (loop, loop_iter, Init()) {

    if (Not_applicable (loop) || !Pass_initial_screen (loop)) {
      // The loop is not eligible for multiversioning
      continue;
    }

    Identify_candidate (loop);  
  }

  if (_tracing) {
    fprintf (TFile, "End Loop Multiversioning\n%s\n", DBar);
  }
}

////////////////////////////////////////////////////////////////////////
//
// Sort the candidates in the descending order of priority. 
//
////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Sort_candidates (void) {
  // not yet implemented 
}

void
LOOP_MULTIVER::Annotate_alias_group_helper 
  (const MEM_ACCESS_VECT& memops, LMV_ALIAS_GROUP alias_grp) {

  MEMOP_ANNOT_CR_SR_MGR* annot_mgr = _opt_stab->Cr_sr_annot_mgr();
  MEMOP_ANNOT_ITEM annot;
  annot.Set_LMV_alias_group (alias_grp);

  for (MEM_ACCESS_VECT_CITER iter = memops.begin ();
       iter != memops.end(); iter++) {
    const MEM_ACCESS* access = *iter;
    Is_True (access->Is_read() || access->Is_write(), 
             ("neither read nor write"));
    CODEREP* cr = access->Coderep ();
    POINTS_TO* pt = cr->Points_to (_opt_stab);
    pt->Set_LMV_alias_group (alias_grp);

    if (access->Is_write()) {
      annot_mgr->Add_annot (access->Stmtrep(), annot);
    }
  }
}

void
LOOP_MULTIVER::Annotate_alias_group (LMV_CANDIDATE* cand) {

  const MEM_ACCESS_VECT& memops1 = cand->Mem_op_group1 ();
  LMV_ALIAS_GROUP alias_grp1 = 
    Gen_LMV_alias_group (cand->Loop()->Header()->Id(), 1);
  Annotate_alias_group_helper (memops1, alias_grp1);

  const MEM_ACCESS_VECT& memops2 = cand->Mem_op_group2 ();
  LMV_ALIAS_GROUP alias_grp2 = 
    Gen_LMV_alias_group (cand->Loop()->Header()->Id(), 2);
  Annotate_alias_group_helper (memops2, alias_grp2);
}

/////////////////////////////////////////////////////////////////////////
//
//   As its name suggests, this function is the perform transoformation 
// for given candidate. 
//
/////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Perform_transformation (LMV_CANDIDATE* cand) {
  
  CODEREP* precond = Gen_test_cond (cand);
  if (!precond) {
    // it is possible because currently we cannot handle some cases.
    return;
  }

  // We feel more comfortable to have code generation done by CFG in that 
  // code generation entails lot of knowledge of CFG's internal, trick, 
  // assumption and lots of other good and bad things.
  //
  // LMV_CFG_ADAPTOR is employed to serve as a "adaptor" between CFG and 
  // LOOP_MULTIVER.
  //
  LMV_CFG_ADAPTOR adaptor(&_mp, _cfg, _tracing, cand->Loop(), precond);
  _cfg->LMV_clone_loop (&adaptor);

  Annotate_alias_group (cand); 
}

///////////////////////////////////////////////////////////////////////////
//
//        The driver of the loop multiversioning
//
///////////////////////////////////////////////////////////////////////////
//
void
LOOP_MULTIVER::Perform_loop_multiversioning (void) {

  if (_tracing) {
    fprintf (TFile, 
             "Begin Loop Multiversioning for PU:%d %s\n%s\n", 
	     Current_PU_Count(),
	     ST_name(Get_Current_PU_ST ()), DBar);

    fprintf (TFile, "The CFG before loop multiversioning\n");
    _opt_stab->Cfg()->Print (TFile, TRUE, (IDTYPE)-1);
    fprintf (TFile, "The end of CFG before loop multiversioning\n\n");
  }
  
  Identify_candidates ();
  if (_candidates.size () == 0) return ;

  for (LMV_CAND_VECT_ITER iter = _candidates.begin ();
       iter != _candidates.end(); iter++) {
    LMV_CANDIDATE* cand = *iter; 
    Perform_transformation (cand);
  }

  // reconstruct the CFG 
  _cfg->Invalidate_loops();
  _cfg->Invalidate_and_update_aux_info(TRUE);
  _cfg->Analyze_loops();

  if (_tracing) {
    fprintf (TFile, "\n%s\t\tAfter loop multiversioning\n%s", DBar, DBar);
    _cfg->Print (TFile, TRUE, (IDTYPE)-1);
    fprintf (TFile, 
             "End Loop Multiversioning for PU:%d %s\n%s\n", 
	     Current_PU_Count(),
	     ST_name(Get_Current_PU_ST ()), DBar);
  }

  Rename_CODEMAP(_comp_unit);
}





//====================================================================
//====================================================================
//
//   From this points on define some CFG class functions which will be 
// called to generate the loop multiversioning code.
//
//====================================================================
//====================================================================
//


// Check to see whether the loop in question is appropriate for multiversioning.
//
BOOL
CFG::LMV_eligible_for_multiversioning (const BB_LOOP* loop, BOOL trace) {

  // Multiple preheaders renders code generation complicated.
  //
  INT count = 0;
  BB_LIST_ITER pred_iter;
  BB_NODE* pred;
  FOR_ALL_ELEM (pred, pred_iter, Init(loop->Header()->Pred())) {
    if (!Is_backedge (pred, loop->Header())) {
      count++;
    }
  }
  if (count != 1) {
    if (trace) { 
      fprintf (TFile, "No unique preheader\n"); 
    }
    return FALSE; 
  }

  // Make sure preheader and merge block are set properly  
  if (loop->Preheader() == NULL || loop->Merge() == NULL) {
    if (trace) { 
      fprintf (TFile, 
        "No preheader or merge blocks or they are not set properly \n"); 
    };
    return FALSE;
  }
  
  // Make sure the blocks related to this loop are permuted in this order along the 
  // prev/next link: preheader, loop body blocks, merge block. And there should be no
  // "hole" between them, meaning those blocks are adjacent to each other. This 
  // werid requirement is to make code-emit happy. Code-emit makes some werid assumptions 
  // with CFG.
  //
  BB_NODE* phdr = loop->Preheader();
  BB_NODE* next_blk = phdr->Next(); 
  BB_NODE_SET* loop_body = loop->True_body_set ();
  BOOL there_is_hole = FALSE;

  if (phdr->Next() != loop->Header()) {
    there_is_hole = TRUE;
  }

  INT cnt = 0;
  do {
    if (loop_body->MemberP(next_blk)) {
      cnt ++; 
      next_blk = next_blk->Next();    
    } else {
      if (next_blk != loop->Merge()) {
        there_is_hole = TRUE;
      }
      break;
    }
  } while (next_blk);
  
  // It is possible there is a hole in the loop body, for example: 
  //   for (....) { if (cond) break; } 
  // the then-clause of the if-statement is not belong to the loop body, 
  // but it is interposed between loop body blocks.
  //
  // TODO: add the empty block mentioned above into loop body to 
  //   enable the multiversioning 
  //
  if (there_is_hole || cnt != loop_body->Size()) {
    if (trace) {
      fprintf (TFile, "The loop body blocks are not adjacent along prev/next link");
    }
    return FALSE;
  }

  // Make sure all merge-block's predecessors are blocks of loop body
  //
  FOR_ALL_ELEM (pred, pred_iter, Init(loop->Merge()->Pred())) {
    if (!loop_body->MemberP (pred)) {
      if (trace) {
        fprintf (TFile, 
	  "One of merge-blk's predecessor BB:%d is not in loop body", pred->Id());
      }
      return FALSE;
    }
  }

  // When a loop is multiversioned, both loop body and preheader are cloned.
  // We need to copy preheader because emiter mades some assumptions of the 
  // preheader. For instance, it assumes the init statement of the IV is the 
  // last one of the preheader. If emiter cannot find the init statement 
  // there, it simply gives up converting a while-loop into a do-loop.
  //
  if (!phdr->Clonable (TRUE)) {
    if (trace) {
      fprintf (TFile, "Preheader BB:%d is not clonable\n",phdr->Id ());
    }
    return FALSE;
  }

  // If there is a break from loop, the successor should be the merge block or 
  // the break is done by a explicit goto statement.
  // 
  BB_NODE* blk;
  BB_NODE_SET_ITER iter;
  FOR_ALL_ELEM (blk, iter, Init(loop_body)) {

    BB_NODE* succ;
    BB_LIST_ITER succ_iter;
    FOR_ALL_ELEM (succ, succ_iter, Init(blk->Succ())) {

      if (!loop_body->MemberP (succ) && succ != loop->Merge()) {
        STMTREP* br = blk->Branch_stmtrep();
        if (!br || br->Op () != OPC_GOTO) {
	  if (trace) {
	    fprintf (TFile, 
	       "No explicit goto statment between loop body block BB:%d and BB:%d\n",
	       blk->Id(), succ->Id());
	  }
	  return FALSE;
	}
      }

    }// end of for all succ

  }
  
  return TRUE;
}


///////////////////////////////////////////////////////////////////////////////////
//
// Clone block <src> coming from source loop: statements and other stuff are copied, 
// map between them are established,....
//
//////////////////////////////////////////////////////////////////////////////////
//
BB_NODE* 
CFG::LMV_clone_block (const BB_NODE* src, LMV_CFG_ADAPTOR* adaptor) {

  BB_NODE* clone = Create_and_allocate_bb (src->Kind()); 
  Clone_bb (src->Id(), clone->Id(), FALSE); 
  clone->Set_loopdepth (src->Loopdepth());
  clone->Set_rid_id (src->Rid_id());
  clone->Set_flag (src->Flag());
  clone->Set_kind (src->Kind());

  // DCE requires non-null PHI-list to transfer dead phi functions
  // from one block to another.
  clone->Set_phi_list (CXX_NEW(PHI_LIST(clone), Mem_pool()));
  clone->Set_linenum (src->Linenum());
  clone->Set_freq (src->Freq());

  // Set a map between original block and duplicated block
  adaptor->Map_cloned_bb (src, clone);

  if (src->Labnam() != 0) {
    clone->Add_label (this);
    adaptor->Map_cloned_label (src->Labnam(), clone->Labnam());
  }

  return clone;
}

// Create a block like <model>, the kind of the new block is specified.
//
BB_NODE*
CFG::LMV_create_alike_block (BB_KIND kind, BB_NODE* model) {

  BB_NODE* new_bb = Create_and_allocate_bb (kind);
  new_bb->Set_loopdepth (model->Loopdepth());
  new_bb->Set_rid_id (model->Rid_id());
  new_bb->Set_flag (model->Flag());

  // DCE requires non-null PHI-list to transfer dead phi functions
  // from one block to another.
  new_bb->Set_phi_list (CXX_NEW(PHI_LIST(new_bb), Mem_pool()));
  new_bb->Set_linenum (model->Linenum());
  new_bb->Set_freq (model->Freq());

  return new_bb;
}

////////////////////////////////////////////////////////////////////////////
//
//  Establish the Pred/Succ relationship for cloend loop
//
////////////////////////////////////////////////////////////////////////////
//
void
CFG::LMV_clone_pred_succ_relationship (LMV_CFG_ADAPTOR* adaptor) {
  
  BB_LOOP* src_loop = adaptor->Src_loop();

  BB_NODE* src_blk;
  BB_NODE_SET_ITER bb_iter;   
  FOR_ALL_ELEM (src_blk, bb_iter, Init(src_loop->True_body_set ())) {

    BB_NODE* clone = adaptor->Get_cloned_bb (src_blk);

    BB_LIST_ITER pred_iter;
    BB_NODE* pred;
    FOR_ALL_ELEM (pred, pred_iter, Init(src_blk->Pred())) {
      BB_NODE* t = adaptor->Get_cloned_bb (pred);
      if (t) {
        Connect_predsucc (t, clone);
      } else {
        Is_True (pred == adaptor->Src_loop()->Preheader(),
	         ("Block BB:%d is not cloned", pred->Id()));
      }
    }
  }

  // special handling of header and preheader
  Connect_predsucc (adaptor->Cloned_loop_preheader (), 
                    adaptor->Cloned_loop_header ());

  // special handling of merge block
  BB_NODE* new_merge = adaptor->Cloned_loop_merge ();

  BB_LIST_ITER pred_iter;
  BB_NODE* pred;
  FOR_ALL_ELEM (pred, pred_iter, Init(src_loop->Merge()->Pred())) {
    BB_NODE* cloned_pred = adaptor->Get_cloned_bb (pred);
    Connect_predsucc (cloned_pred, new_merge);
  }
}

//////////////////////////////////////////////////////////////////////////////
//
// This function is supposed to do:
//   - clone all blocks comprising loop body, and 
//   - chain all cloned blocks together via a single prev/next list. The 
//     order of the cloned block in the list is also copied from source loop. 
//
//////////////////////////////////////////////////////////////////////////////
//     
void
CFG::LMV_clone_loop_body (LMV_CFG_ADAPTOR* adaptor) {

  // Clone the body by traversing the prev/next list from header
  // all way down to the merge block. This traversal style enables us:
  //  - to check whether header is the first block in the prev/next list.
  //  - whether there is a "hole" in the loop body in the prev/next list
  //  - ease the work of cloning the prev/next relationship.
  //
  BB_NODE* src_blk = adaptor->Src_loop()->Header(); 
  BB_NODE* clone_blk;
  BB_NODE* prev_clone_blk = NULL;
  BB_NODE_SET* src_loop_body = adaptor->Src_loop()->True_body_set();
  INT clone_cnt = 0;
  do {
    clone_blk = LMV_clone_block (src_blk, adaptor);
    src_blk = src_blk->Next();
    ++ clone_cnt;
    if (prev_clone_blk) {
      // Chain them up by prev/next link
      prev_clone_blk->Set_next (clone_blk);
      clone_blk->Set_prev (prev_clone_blk);
    }
    prev_clone_blk = clone_blk;
  } while (src_blk && src_loop_body->MemberP (src_blk));

  // if this assertion should be trigged, check out 
  // CFG::LMV_eligible_for_multiversioning() to see how come this case 
  // is not prevent. 
  //
  Is_True (clone_cnt == src_loop_body->Size(), 
           ("Some blocks in the source loop body are not cloned which suggest "
	    "there is a hole in the loop body blocks in the prev/next link"));

  adaptor->Set_pred_next_lst_header (adaptor->Cloned_loop_header());
  adaptor->Set_pred_next_lst_tail (clone_blk);

  if (!adaptor->Trace()) {
    return;
  } else {
    fprintf (TFile, 
       "The map of loop body blocks are (in format <src,dup>):\n");  
    BB_NODE* t;
    BB_NODE_SET_ITER iter;
    FOR_ALL_ELEM (t, iter, Init(src_loop_body)) {
      fprintf (TFile, "<%d,%d>,", t->Id(), adaptor->Get_cloned_bb(t)->Id());
    }

    fprintf (TFile, "\nPrev/next of src loop: ");
    for (t = adaptor->Src_loop()->Header(); 
         t && src_loop_body->MemberP(t); t = t->Next()) {
      fprintf (TFile, "%d,", t->Id());
    }
    
    fprintf (TFile, "\nPrev/next of cloned loop: ");
    for (t = adaptor->Pred_next_lst_header (); t; t = t->Next()) {
      fprintf (TFile, "%d,", t->Id());
    }
    fprintf (TFile, "\n");
  }
}

/////////////////////////////////////////////////////////////////////////////
//
// Apparently, the labels cannot be copied, they should be created anew in 
// the cloned blocks. We call those labels as "internal lables" to 
// differenticate them from other labels outside the loop. When a branch is 
// cloned, the label of it is blindly copied too. This is not correct if the
// the label is "internal label" of source loop. This function is going to 
// correct those labels by changing them into their corresponding "internal 
// labels" of cloned loop.
//
//////////////////////////////////////////////////////////////////////////////
//
void
CFG::LMV_update_internal_labels (LMV_CFG_ADAPTOR* adaptor) {
  
  BB_LOOP* src_loop = adaptor->Src_loop();
  BB_NODE_SET_ITER bbs_iter;   
  BB_NODE* bb;
  FOR_ALL_ELEM(bb, bbs_iter, Init(src_loop->True_body_set())) {
    STMTREP* br = bb->Branch_stmtrep();
    if (!br) continue;
    INT lab = br->Label_number();
    if (lab == 0) continue;

    INT new_lab = adaptor->Get_cloned_label (lab);
    if (new_lab) {
      STMTREP* new_br = adaptor->Get_cloned_bb (bb)->Branch_stmtrep(); 
      new_br->Set_label_number (new_lab); 
    }
  }

#ifdef Is_True_On
  // Verify: For every labeld block of src loop body, its cloned 
  //   counterpart should be labeled too, and the labels are mapped
  //   properly.
  FOR_ALL_ELEM(bb, bbs_iter, Init(src_loop->True_body_set())) {
    INT lab = bb->Labnam();
    if (lab) {
      INT l = adaptor->Get_cloned_bb (bb)->Labnam ();
      Is_True (l && l == adaptor->Get_cloned_label (lab), 
         ("Lab %d is either not cloned or not mapped properly", lab));
    }
  }
#endif // Is_True_On

  // Update the lab associated with the branches of precessors of new-merge blk.
  //
  BB_LIST_ITER bb_iter;   
  FOR_ALL_ELEM (bb, bb_iter, Init(src_loop->Merge()->Pred())) {
    // If this assertion should be triggered, check out
    // CFG::LMV_eligible_for_multiversioning to see why it fail
    // to screen out this loop.
    //
    Is_True (src_loop->True_body_set()->MemberP (bb),
       ("All predecessors are supposed to be the block of loop body"));

    BB_NODE* clone_pred = adaptor->Get_cloned_bb (bb);
    STMTREP* br = clone_pred->Branch_stmtrep();
    if (br || br->Label_number() == src_loop->Merge()->Labnam()) {
      INT t = adaptor->Cloned_loop_merge()->Labnam();
      Is_True (t != 0, 
          ("Label of new merge block BB:%d of source loop BB:%d is not "
	   "set properly", 
	   adaptor->Cloned_loop_merge()->Id(),
	   src_loop->Header()->Id()));
      br->Set_label_number (t);
    }
  }
}

/////////////////////////////////////////////////////////////////////////////
//
//  Create BB_LOOP for the cloned loop; update chind/parent/sibling of 
// related BB_LOOPs; associate some cloned blocks with newly created BB_LOOP.
// 
/////////////////////////////////////////////////////////////////////////////
//
BB_LOOP*
CFG::LMV_clone_BB_LOOP (LMV_CFG_ADAPTOR* adaptor) {

  BB_LOOP* src_loop = adaptor->Src_loop();
  WN* idx = src_loop->Index();
  BB_NODE* start = src_loop->Start ();
  BB_NODE* end   = src_loop->End ();
  BB_NODE* body  = src_loop->Body ();
  BB_NODE* step  = src_loop->Step ();

  if (start) start = adaptor->Get_cloned_bb (start);
  if (end)   end   = adaptor->Get_cloned_bb (end);
  if (body)  body  = adaptor->Get_cloned_bb (body);
  if (step)  step  = adaptor->Get_cloned_bb (step);

  BB_LOOP* dup_loop = CXX_NEW (BB_LOOP(idx, start, end, body, step, 
                               adaptor->Cloned_loop_merge()), 
                               Mem_pool());

  BB_NODE_SET* t = CXX_NEW (BB_NODE_SET(Last_bb_id(), this, Mem_pool(), 
                            BBNS_EMPTY), Mem_pool());
  dup_loop->Set_true_body_set (t);
 
  dup_loop->Set_parent (src_loop->Parent());
  dup_loop->Set_loopstmt (src_loop->Loopstmt());
  dup_loop->Set_wn_trip_count (src_loop->Wn_trip_count());
  dup_loop->Set_flag (src_loop->Flags());
  dup_loop->Set_orig_wn (src_loop->Orig_wn());

  if (src_loop->Promoted_do()) { dup_loop->Set_promoted_do(); }
  if (src_loop->Well_formed()) { dup_loop->Set_well_formed(); }
  if (src_loop->Has_entry_guard()) { dup_loop->Set_has_entry_guard(); }
  if (src_loop->Valid_doloop()) { dup_loop->Set_valid_doloop(); }

  dup_loop->Set_header (adaptor->Cloned_loop_header ());
  dup_loop->Set_preheader (adaptor->Cloned_loop_preheader ());
  dup_loop->Set_size_estimate (src_loop->Size_estimate());

  // associate the cloned BB_LOOP with some blocks 
  BB_NODE_SET_ITER bb_iter;
  BB_NODE* bb;
  FOR_ALL_ELEM(bb, bb_iter, Init(src_loop->True_body_set ())) {
    if (bb->Loop()) {
      BB_NODE* blk = adaptor->Get_cloned_bb (bb);
      blk->Set_loop (dup_loop); 
    }
  }

  return dup_loop;
}

void
CFG::LMV_clone_BB_IFINFO (LMV_CFG_ADAPTOR* adaptor) {
  
  BB_NODE* bb;
  BB_NODE_SET_ITER iter;
  FOR_ALL_ELEM (bb, iter, Init(adaptor->Src_loop()->True_body_set())) {

    if (bb->Kind() != BB_LOGIF) { continue ; }

    BB_IFINFO* ifinfo = bb->Ifinfo();
    BB_NODE *cond_blk, *then_blk, *else_blk, *merge_blk;
    cond_blk = adaptor->Get_cloned_bb (ifinfo->Cond());
    then_blk = adaptor->Get_cloned_bb (ifinfo->Then());
    else_blk = adaptor->Get_cloned_bb (ifinfo->Else());
    merge_blk = adaptor->Get_cloned_bb (ifinfo->Merge());

    Is_True (cond_blk && then_blk && else_blk && merge_blk, 
            ("Fail to construct BB_IFINFO"));

    BB_IFINFO* cloned_ifinfo = CXX_NEW (BB_IFINFO(ifinfo->Thenloc(),
                                                  ifinfo->Elseloc(),
                                                  cond_blk,
                                                  then_blk, 
                                                  else_blk,
                                                  merge_blk), 
                                          Mem_pool());
    adaptor->Get_cloned_bb (bb)->Set_ifinfo (cloned_ifinfo);
  }
}

/////////////////////////////////////////////////////////////////////////
//
// This function is to generate the preconditioning statement/block 
// and connect it with the related blocks. The final control flow graph
// is depicted bellow. 
//
//                         original-preheader's preds
//                                |  |
//                                V  V
//                         preconditional block (*)
//                         /         \
//                        /           V
//             preheader-of      original-preheader
//             duplicated-loop         | 
//                   |                 |
//                   V                 V
//             dup-loop-body     src-loop-body
//                   |                 |
//                   V                 V
//              merge-blk          new-merge-blk (*)
//                        \          /
//                         \        /
//                          V      V
//                     org-merge-block-of-src-loop
//                          
//  Three new blocks are created in this function, see the asterisk marked 
// block in the above graph. There are 
//     - preconditioning block, and 
//     - empty block serving as merge block for source loop. 
// 
/////////////////////////////////////////////////////////////////////////
//
void
CFG::LMV_gen_precondioning_stuff (LMV_CFG_ADAPTOR* adaptor) {
  
  BB_LOOP* src_loop = adaptor->Src_loop();

  // step 1: Create a empty block serving as new merge block
  // 
  BB_NODE* orig_merge = src_loop->Merge();
  BB_NODE* new_merge = Create_and_allocate_bb (BB_GOTO);

  orig_merge->Insert_Before (new_merge);

  BB_LIST_ITER pred_iter;
  BB_NODE* t;
  FOR_ALL_ELEM (t, pred_iter, Init(orig_merge->Pred())) {
    t->Replace_succ (orig_merge, new_merge);
  }
  new_merge->Set_pred (orig_merge->Pred());
  orig_merge->Set_pred (NULL);
  Connect_predsucc (new_merge, orig_merge);

  // update the labels of branches of merge block's predecessors.
  //
  INT lab = orig_merge->Labnam();
  if (lab) {
    new_merge->Add_label (this);
    INT new_lab = new_merge->Labnam();
    FOR_ALL_ELEM (t, pred_iter, Init(new_merge->Pred())) {
      STMTREP* br = t->Branch_stmtrep();
      if (br && br->Label_number () == lab) {
        br->Set_label_number (new_lab);
      }
    }
  }

  // original merge block of the src loop become the merge block 
  // of the preconditioning statement
  orig_merge->Set_ifmerge (); 

  // step 2: create and insert preconditioning 
  //
  BB_NODE* orig_phdr = src_loop->Preheader();
  BB_NODE* precond = Create_and_allocate_bb (BB_LOGIF);

  // splice into pred/next list and permute the precond right before 
  // original preheader.
  orig_phdr->Insert_Before (precond);

  // interpose <precond> between <orig_phdr> and its preds  
  BB_NODE* pred;
  FOR_ALL_ELEM (pred, pred_iter, Init(orig_phdr->Pred())) {
    pred->Replace_succ (orig_phdr, precond); 
  }
  precond->Set_pred (orig_phdr->Pred ());
  orig_phdr->Set_pred (NULL);
  Connect_predsucc (precond, orig_phdr);

  // Append the preconditioning branch 
  
  // Why use FALESBR: 
  //   - the predicate evaluated to true when alias does not present
  //   - the original loop is set to be the "faster" version
  //
  STMTREP* br = CXX_NEW(STMTREP(OPC_FALSEBR), Mem_pool());
  br->Set_rhs (adaptor->Predicate());
  t = adaptor->Cloned_loop_preheader();
  if (t->Labnam() == 0) { t->Add_label (this); }
  br->Set_label_number (t->Labnam());
  precond->Append_stmtrep (br);

  // When CFG lower the if-statment, it try to to permute the then-clause
  // before else-clause in the prev/next list, which entails negating 
  // the branch. In order to compliant with this rule, we treat the source 
  // loop and cloned as then-clause and else-clause respectively.  And 
  // construe the preconditioning branch as the negation of the "original"  
  // branch.
  //
  BB_IFINFO* ifinfo = 
      CXX_NEW (BB_IFINFO(0, 0, 
                         precond,      // conditional block
		         orig_phdr,     // then clause
                         adaptor->Cloned_loop_preheader(), // else clause 
		         orig_merge),  // merge block of if-stmt
               Mem_pool());
  precond->Set_ifinfo (ifinfo);                                      

  //connect the precond and the preheader of cloned loop
  Connect_predsucc (precond, adaptor->Cloned_loop_preheader());

  // Update the BB_LOOP of src loop
  src_loop->Set_merge (new_merge);
  
  // step 3: connect the merge block of the cloned loop and the 
  //  original merge block of src loop.
  Connect_predsucc (adaptor->Cloned_loop_merge(), orig_merge);

  // step 4: Splice the blocks of cloned loop into the prev/next list in the 
  //   order: condition, then-clause, else clause, merge. 
  //  
  // NOTE: This order should not be changed since some phase (say, emit) assume
  //  the blocks of the if-statement are in this order.
  //
  // What we need to do is to insert the cloned loop (together with preheader and 
  // merge block) between:
  //   - new merge block of source loop, 
  //   - original merge block of source loop, this block is now serving as 
  //     merge block of the if-statement.
  //
  new_merge->Set_next (adaptor->Cloned_loop_preheader ());
  adaptor->Cloned_loop_preheader()->Set_prev (new_merge);
  orig_merge->Set_prev (adaptor->Cloned_loop_merge ());
  adaptor->Cloned_loop_merge ()->Set_next (orig_merge);
   
  if (adaptor->Trace()) {
    fprintf (TFile, "Preconditioning block is BB:%d\n", precond->Id());
    fprintf (TFile, "New merge for source loop is BB:%d\n", new_merge->Id());
  }
}

void
CFG::LMV_clone_loop (LMV_CFG_ADAPTOR* adaptor) {
 
  if (adaptor->Trace()) {
    fprintf (TFile, 
       "Duplicating loop (BB:%d)\nthe map between original and new blocks" 
       " are (in format <orig,new>):\n", adaptor->Src_loop()->Header()->Id());
  }

  BB_LOOP* src_loop = adaptor->Src_loop ();

  // step 1. clone the loop body and chain them together via prev/next link.
  //
  LMV_clone_loop_body (adaptor);

  // step 2. Clone the preheader
  //
  BB_NODE* new_phdr = LMV_create_alike_block (BB_GOTO, src_loop->Preheader());
  Clone_bb (src_loop->Preheader()->Id(), new_phdr->Id(), FALSE);
  adaptor->Set_cloned_loop_preheader (new_phdr);

  // prepend to the prev/next list
  BB_NODE* t = adaptor->Pred_next_lst_header ();
  t->Insert_Before (new_phdr);
  adaptor->Set_pred_next_lst_header (new_phdr);

  // step 3: Create an empty block serving as merge block for the cloned loop. 
  //
  BB_NODE* new_merge = LMV_create_alike_block (BB_GOTO, src_loop->Merge());
  new_merge->Set_flag (0);
  adaptor->Set_cloned_loop_merge (new_merge);
  if (src_loop->Merge()->Labnam()) {
    new_merge->Add_label (this);
  }

  // append to the prev/next list
  t = adaptor->Pred_next_lst_tail ();
  t->Insert_After (new_merge);
  adaptor->Set_pred_next_lst_tail (new_merge);

  if (adaptor->Trace()) {
    fprintf (TFile, 
             "Preheader and merge block of cloned loop is BB:%d and BB:%d\n",
             new_phdr->Id(), new_merge->Id());
  }

  // step 4: Clone the pred/succ relationship.
  //
  LMV_clone_pred_succ_relationship (adaptor);

  // step 5: Update the internal labels
  //
  LMV_update_internal_labels (adaptor);

  // step 6: Generate a BB_LOOP structure for the cloned loop.
  //
  BB_LOOP* dup_BB_LOOP = LMV_clone_BB_LOOP (adaptor);
  adaptor->Set_cloned_loop (dup_BB_LOOP);

  // step 7: update BB_IFINFO associated with block of kind BB_LOGIF 
  LMV_clone_BB_IFINFO (adaptor);

  // step 8: Generate preconditiong block and splic then/else clause in the CFG.
  //
  LMV_gen_precondioning_stuff (adaptor);
}
