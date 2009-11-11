//-*-c++-*-

// ====================================================================
// ====================================================================
//
// Copyright (C) 2007, University of Delaware, Hewlett-Packard Company,
// All Rights Reserved.
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
#include "defs.h"			// INT32, INT64
#include "config.h"			// Alias_Pointer_Parms
#include "opt_defs.h"
#include "tracing.h"			// trace flags
#include "config_opt.h"

#include "erglob.h"
#include "opt_cfg.h"  // for EXITBB_ITER 
#include "opt_sym.h"
#include "opt_misc.h"

#include <stack>
#include "opt_du.h"

static void
Analyze_pu_noreturn_attr (OPT_STAB* stab, PU* pu, ST* pu_st) {
 
  EXITBB_ITER iter(stab->Cfg());
  FOR_ALL_ITEM (iter, Init()) {
    BB_NODE* exit_bb = iter.Cur_exit_bb();
    WN *wn = exit_bb->Laststmt();
    if (wn && 
        (WN_operator (wn) == OPR_RETURN ||
         WN_operator (wn) == OPR_RETURN_VAL)) {
      wn = WN_prev (wn);
    }
    if (!wn || WN_operator (wn) != OPR_CALL) return;

    PU& pu_ent = Pu_Table[ST_pu(WN_st(wn))];
    if (!PU_has_attr_noreturn (pu_ent)) {
      return;
    }
  }
 
  // Now, all exit blocks are ended with call having 
  // __attribute__((noreturn), this function itself 
  // satisify the "noreturn" semantic 
  Set_PU_has_attr_noreturn (*pu);
 
}

// Analyze_pu_attr() conducts following things
//
//   - reveal _attribute_ semantics
//   - points-to summary 
// 
void
Analyze_pu_attr (OPT_STAB* opt_stab, ST* pu_st) {

  WN* pu_tree = opt_stab->Pu ();
  if (WN_opcode(pu_tree)!=OPC_FUNC_ENTRY)  {
    // not applicable, give up. 
    return;
  }

  PU& pu_ent = Pu_Table[ST_pu(pu_st)];

  // analyze __attribute__((noreturn)
  if (WOPT_Enable_Noreturn_Attr_Opt && !PU_has_attr_noreturn (pu_ent)) {
    Analyze_pu_noreturn_attr (opt_stab, &pu_ent, pu_st);
  }

  if (WOPT_Enable_Pt_Summary) {
    SET_OPT_PHASE("Points-to Summary");
    opt_stab->Summarize_points_to ();
  }
}

// Check if the array node is in a 'form' suitable to be a candidate
// for redundant mem clear removal
// - should be a single dimensional array
// - the index should be just the induction variable with zero offset
// - the base addr is a PREG or VAR (v, with offset and field == 0)
//   or a expression of the form (v + offset, where offset is a const and > 0)
// If valid, returns the base addr and offset
static BOOL valid_array_addr(WN *array_wn, WN *ind, INT bytenum,
                             WN *& base_addr, INT& offset)
{
  Is_True(WN_operator(array_wn) == OPR_ARRAY, ("Expecting an ARRAY"));

  // deal with 1-dim array  only
  if (WN_num_dim(array_wn) != 1)
    return FALSE; 

  // the size should equal
  if (WN_element_size(array_wn) != bytenum)
    return FALSE; 

  // Check index
  WN *idx = WN_kid2(array_wn);
  if (! (WN_operator(idx) == OPR_LDID && WN_offset(ind) == 0 &&
         WN_st(idx) == WN_st(ind)) )
    return FALSE;

  // Check base
  WN *addr = WN_kid0(array_wn);
  if (! ( ( WN_operator(addr) == OPR_LDID &&
            (ST_class(WN_st(addr)) == CLASS_PREG ||
             (WN_offset(addr) == 0 && WN_field_id(addr) == 0)
            ) 
          ) ||
          ( WN_operator(addr) == OPR_ADD &&
            WN_operator(WN_kid0(addr)) == OPR_LDID &&
            (ST_class(WN_st(WN_kid0(addr))) == CLASS_PREG ||
             (WN_offset(WN_kid0(addr)) == 0 && 
              WN_field_id(WN_kid0(addr)) == 0)
            ) &&
            WN_operator(WN_kid1(addr)) == OPR_INTCONST &&
            WN_const_val(WN_kid1(addr)) > 0
          )
        )
     )
    return FALSE;

  if (WN_operator(addr) == OPR_LDID)
  {
    base_addr = addr;
    offset = 0;
  } 
  else
  {
    base_addr = WN_kid0(addr);
    offset = WN_const_val(WN_kid1(addr));
  }
    
  return TRUE;
}

// Check is the whirl statment 'copy' is a STID fed by a LDID
// The STID and LDID must be from either a PREG or VAR with zero offset
// and field ids
static BOOL isCopy(WN *copy)
{
  if (WN_operator(copy) != OPR_STID)
    return FALSE;
  if (WN_operator(WN_kid0(copy)) != OPR_LDID)
    return FALSE;
  if (ST_class(WN_st(copy)) != CLASS_PREG &&
      (WN_offset(copy) != 0 || WN_field_id(copy) != 0))
    return FALSE;
  if (ST_class(WN_st(WN_kid0(copy))) != CLASS_PREG &&
      (WN_offset(WN_kid0(copy)) != 0 || WN_field_id(WN_kid0(copy)) != 0))
    return FALSE;
  return TRUE;
}

// Starting from the def node, until we reach the statement following
// the do_loop, check if there is use of the target of the def node
static BOOL check_if_def_reaches_memset(WN *def, WN *base_addr, WN *do_loop,
                                        ALIAS_MANAGER *alias_mgr,
                                        BOOL& use_after_do_loop)
{
  FmtAssert(isCopy(def), ("def not a copy!\n"));
  use_after_do_loop = FALSE;
  ST *st = WN_st(def);
  // Ignore anything that is not a var and has its address taken
  if (ST_sym_class(*st) != CLASS_VAR ||
      ST_addr_passed(*st)  || ST_addr_saved(*st))
    return FALSE;

  WN *stmt = WN_next(def);
  while (stmt != WN_next(do_loop)) 
  {
    for (WN_ITER *wni = WN_WALK_TreeIter(stmt);
         wni; wni = WN_WALK_TreeNext(wni)) 
    {
      WN *wn = WN_ITER_wn(wni);
      // Since it is VAR with address not taken, we only look for calls
      // or LDIDs that use the VAR
      // If there is a may use at a call
      // check if it is one of some 'nice' libc calls
      // or if the call does not return
      // else abort
      if (WN_operator(wn) == OPR_CALL &&
          Aliased_with_region(alias_mgr, def, wn, READ_AND_WRITE)) 
      {
        ST *call_st = WN_st(wn);
        if (call_st && 
            (!strcmp(ST_name(call_st), "calloc") ||
             !strcmp(ST_name(call_st), "abort") ||
             !strcmp(ST_name(call_st), "exit") ||
             !strcmp(ST_name(call_st), "fprintf")))
          continue;
        if (WN_Call_Never_Return(wn))
          continue;
        return FALSE;
      } 
      else if (WN_operator(wn) == OPR_LDID && WN_st(def) == WN_st(wn)) 
      {
        // If found an LDID that uses the var, ensure that it is the
        // base_addr of the array in the do_loop, else abort
        if (wn != base_addr)
          return FALSE;
        else
          return TRUE;
      }
    }
    stmt = WN_next(stmt);
  }
  use_after_do_loop = TRUE;
  return FALSE;
}

// Given a tree, initialize its parent pointers.
// Override what was there, if anything.
// Do not update parent pointer of the root node 'wn'.
static void wn_parentize(WN* wn, WN_MAP& parent_map) 
{
  if (!OPCODE_is_leaf(WN_opcode(wn))) 
  {
    if (WN_opcode(wn) == OPC_BLOCK) 
    {
      WN *kid = WN_first(wn);
      while (kid) 
      {
        WN_MAP_Set(parent_map, kid, wn);
        wn_parentize(kid, parent_map);
        kid = WN_next(kid);
      }
    } 
    else 
    {
      for (INT kidno = 0; kidno < WN_kid_count(wn); kidno++) 
      {
        WN *kid = WN_kid(wn, kidno);
        if (kid) 
        {
          WN_MAP_Set(parent_map, kid, wn);
          wn_parentize(kid, parent_map);
        }
      }
    }
  }
}

// Optimization to eliminate redundant clear of memory following a calloc of
// the same space.
// Checks if there are no writes into the space allocated by the calloc
// in which case the subsequent clear is no longer redundant
void remove_redundant_mem_clears(WN *func,
                                 ALIAS_MANAGER *alias_mgr,
                                 DU_MANAGER *du_mgr)
{
  if (!WOPT_Enable_Mem_Clear_Remove)
    return;

  MEM_POOL mpool;
  MEM_POOL_Initialize(&mpool, "parent wn", FALSE);
  MEM_POOL_Push(&mpool);

  WN_MAP parent_map = WN_MAP_Create(&mpool);
  BOOL parentized = FALSE;

  // Search for the do_loop that zero out a memory location
  for (WN_ITER *wni = WN_WALK_StmtIter(WN_func_body(func));
       wni; wni = WN_WALK_StmtNext(wni)) 
  {
    WN *wn = WN_ITER_wn(wni);

    if (WN_opcode(wn) != OPC_DO_LOOP)
      continue;
    WN *do_loop_wn = wn;
    WN *body       = WN_do_body(do_loop_wn);
    WN *loop_info  = WN_do_loop_info(do_loop_wn);
    if (loop_info == NULL)
      continue;

    // Check for unit stride
    WN *loop_indvar = WN_loop_induction(loop_info);
    if (!loop_indvar)
      continue;
    BOOL is_incr;
    WN *loop_stride = WN_LOOP_Increment(do_loop_wn, &is_incr);
    if (!loop_stride || is_incr == FALSE ||
        !WN_operator_is(loop_stride, OPR_INTCONST) ||
        WN_const_val(loop_stride) != 1)
      continue;

    OPCODE ub_compare;
    WN *upper_bound = WN_LOOP_UpperBound(do_loop_wn, &ub_compare, TRUE);
    if (!upper_bound)
      continue;

    WN *trip_count = WN_LOOP_TripCount(do_loop_wn, TRUE);
    if (!trip_count)
      continue;

    WN *lower_bound = WN_LOOP_LowerBound(do_loop_wn);
    if (!lower_bound)
      continue;

    // If not starting from constant 0, abort
    if (!(WN_operator_is(lower_bound, OPR_INTCONST) &&
          WN_const_val(lower_bound) == 0))
      continue;

    Is_True(WN_opcode(loop_indvar), ("expected a non-NULL loop induction"));

    WN *base_addr = NULL;
    INT offset_val = 0;
    // Try to find the mem clear within the loop body
    // Check if only ISTORE of the constant 0 is in the loop body
    INT istore_num = 0;
    BOOL do_opt = TRUE;
    for (WN *stmt = WN_first(body); stmt; stmt = WN_next(stmt)) 
    {
      if (WN_operator(stmt) == OPR_LABEL)
        continue;
      if (!(WN_operator(stmt) == OPR_ISTORE &&
            WN_field_id(stmt) == 0 && WN_offset(stmt) == 0)) 
      {
        do_opt = FALSE;
        break;
      }

      // no transformation if more than one ISTORE
      if (++istore_num > 1) 
      {
        do_opt = FALSE;
        break;
      }

      // Currently deal with only non-float types
      if (MTYPE_is_float(WN_desc(stmt))) 
      {
        do_opt = FALSE;
        break;
      }

      WN *load_value_wn = WN_kid0(stmt);
      WN *store_addr_wn = WN_kid1(stmt);
      INT mbyte_stmt = MTYPE_byte_size(OPCODE_desc(WN_opcode(stmt)));

      // If not assigned a constant 0, abort
      if (!(WN_operator_is(load_value_wn, OPR_INTCONST) &&
            WN_const_val(load_value_wn) == 0)) 
      {
        do_opt = FALSE;
        break;
      }

      // The address of the ISTORE has to be a ARRAY with some
      // restrictions (see valid_array_addr)
      if (! (WN_operator(store_addr_wn) == OPR_ARRAY &&
             valid_array_addr(store_addr_wn, loop_indvar, mbyte_stmt,
                              base_addr, offset_val)) ) 
      {
        do_opt = FALSE;
        break;
      }
    }

    if (!do_opt || istore_num == 0)
      continue;

    FmtAssert(WN_operator(base_addr) == OPR_LDID && offset_val >= 0,
               ("Expecting LDID with const offset\n"));

    // Search backwards starting from the do_loop, until we reach a calloc
    // and check if the return value of the calloc reaches the base addr
    // of the array being cleared.
    // Need to ensure that any writes to the calloced area does not
    // overlap with the area being cleared in the do_loop.

    WN *prev_wn = WN_prev(do_loop_wn);
    for (; prev_wn; prev_wn = WN_prev(prev_wn)) 
    {
      if (!(WN_operator(prev_wn) == OPR_CALL &&
            !strcmp(ST_name(WN_st(prev_wn)), "calloc")))
        continue;

      if (!parentized) 
      {
        wn_parentize(func, parent_map);
        parentized = TRUE;
      }

      // The return value of the calloc is assumed to be the next statement
      WN *def_wn = WN_next(prev_wn);
      if (!(WN_operator(def_wn) == OPR_STID &&
            Is_Return_Preg(WN_offset(WN_kid0(def_wn))) && isCopy(def_wn)))
        continue;

      // Follow the uses of the return value of the calloc
      // If the value is being copied over to another variable or preg
      // follow the uses of this new copy target, until we reach the 
      // final use in the do_loop. We do not care about any use after
      // the do_loop.
      
      BOOL found_memset = FALSE;
      BOOL do_opt = TRUE;
      // Stack to keep track of any copies we see while traversing the
      // du chain.
      std::stack<WN*> def_stack;

      while (do_opt && def_wn) 
      {
        USE_LIST *use_list = du_mgr->Du_Get_Use(def_wn);
        ST *st = WN_st(def_wn);
        // If its a var with address taken, ignore
        if (ST_sym_class(*st) == CLASS_VAR &&
            (ST_addr_passed(*st) || ST_addr_saved(*st))) 
        {
          do_opt = FALSE;
          break;
        }

        // In presence of may defs, the use list can be incomplete
        // If so, do a brute force search for all uses
        // starting from the statement following the define 
        // until we hit the do_loop
        if (!use_list || use_list->Incomplete()) 
        {
          BOOL use_after_do_loop = FALSE;
          if (!check_if_def_reaches_memset(def_wn, base_addr, do_loop_wn,
                                           alias_mgr, use_after_do_loop)) 
          {
            // If the use is before the do_loop, abort
            if (!use_after_do_loop)
              do_opt = FALSE;
          }
          else 
          {
            // Any use/def beyond the use within the do_loop
            // can be ignored since we are checking all instructions
            // between def_wn and this use
            found_memset = TRUE;
          }
          // Track next define
          if (!def_stack.empty()) 
          {
            def_wn = def_stack.top();
            def_stack.pop();
          } 
          else
            def_wn = NULL;
          continue;
        }
        USE_LIST_ITER uiter(use_list);
        for (DU_NODE *use_node = uiter.First(); !uiter.Is_Empty();
             use_node = uiter.Next()) 
        {
          WN *use = use_node->Wn();
          if (WN_operator(use) == OPR_RETURN)
            continue;
          if (WN_operator(use) != OPR_LDID) 
          {
             do_opt = FALSE;
             break;
          } 
          else if (use == base_addr) 
          {
            found_memset = TRUE;
            continue;
          }
          WN *useParent = (WN *)WN_MAP_Get(parent_map, use);
          // If the use's parent is a copy, save the target of the copy
          // so as to start tracking its use the next time
          if (isCopy(useParent)) 
          {
            def_stack.push(useParent);
          } 
          else if (WN_operator(useParent) == OPR_ISTORE &&
                     WN_kid1(useParent) == use &&
                     (ST_class(WN_st(use)) == CLASS_PREG  ||
                      (WN_offset(use) == 0 && WN_field_id(use) == 0))) 
          {
              // Make sure we are not overwriting the area we will
              // be clearing later
              if (WN_offset(useParent) +
                  MTYPE_byte_size(WN_desc(useParent)) - 1 >= offset_val) 
              {
                do_opt = FALSE;
                break;
              }
          } 
          else if (!OPERATOR_is_boolean(WN_operator(useParent))) 
          {
            // Construct not handled
            do_opt = FALSE;
            break;
          }
        }
        // Track next define
        if (!def_stack.empty()) 
        {
          def_wn = def_stack.top();
          def_stack.pop();
        } 
        else
          def_wn = NULL;
      }
      if (found_memset && do_opt) 
      {
        // remove the loop
        WN *parent_block = (WN *)WN_MAP_Get(parent_map, do_loop_wn);
        WN_DELETE_FromBlock(parent_block, do_loop_wn);
        WN_ITER_wn(wni) = NULL;
        break;
      }
    }
  }

  WN_MAP_Delete(parent_map);
  MEM_POOL_Pop(&mpool);
  MEM_POOL_Delete(&mpool);
}
