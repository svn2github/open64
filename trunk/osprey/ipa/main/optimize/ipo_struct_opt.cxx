////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2007. QLogic Corporation. All Rights Reserved.
//
// This program is free software; you can redistribute it and/or modify it
// under the terms of version 2 of the GNU General Public License as
// published by the Free Software Foundation.
//
// This program is distributed in the hope that it would be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//
// Further, this software is distributed without any warranty that it is
// free of the rightful claim of any third person regarding infringement
// or the like.  Any license provided herein, whether implied or
// otherwise, applies only to this software file.  Patent licenses, if
// any, provided herein do not apply to combinations of this program with
// other software, or any other product whatsoever.
//
// You should have received a copy of the GNU General Public License along
// with this program; if not, write the Free Software Foundation, Inc., 59
// Temple Place - Suite 330, Boston MA 02111-1307, USA.
////////////////////////////////////////////////////////////////////////////

#define __STDC_LIMIT_MACROS
#include <stdint.h>

#include "defs.h"
#include "wn.h"
#include "wn_util.h"
#include "symtab.h"
#include "config_ipa.h"

#include "ipa_cg.h"
#include "ipo_parent.h"

// ======================================================================
// Implements a form of structure splitting.
// ======================================================================
//
// Assumptions:
// ------------
// Let us call TY to be the 'struct' type on which we are performing the
// optimization.

// When a function returns an object of type pointer-to-TY where TY is 
// a type we are performing the optimization on, the function must be an
// allocation function like malloc, calloc, realloc.
//
// TY should have 2 fields only.
//
// An object of pointer-to-TY should not be present as a function parameter.
//
// It should be a local variable.
//
// An object of pointer-to-TY may appear as a field in another 'struct'
// type parent_TY, if there is only one such parent_TY, and parent_TY
// contains only one such field.

TY_IDX candidate_ty_idx = TY_IDX_ZERO;
mUINT32 candidate_fld_id = 0;

static WN_MAP PU_Parent_Map = 0;
static WN_MAP_TAB * PU_Map_Tab = NULL;

// TODO:
//  * map should be always updated whenever the whirl is changed.
//  * change assertions to debug assertions later.
//  * we should find a better way to detect memory management routines,
//    like generating intrinsics for them and detecting these intrinsics.

ST * fld1_st = NULL, * fld2_st = NULL;

struct FLD_MAP
{
  mUINT32 old_field_id; // not required
  mUINT32 new_field_id;
  WN_OFFSET old_ofst; // unused
  WN_OFFSET new_ofst; // unused
};

static FLD_MAP * field_map_info;

// size is a size expression, return the WN for the constant
// part of the expr that needs update.
WN * size_wn (WN * expr)
{
  WN * wn = NULL;
  if (WN_operator(expr) == OPR_INTCONST)
    wn = expr;
  else if (WN_operator(expr) == OPR_MPY)
    wn = WN_kid1(expr);
  else Fail_FmtAssertion ("Unrecognized expression");

  FmtAssert (WN_operator(wn) == OPR_INTCONST, ("Constant size expected"));
  FmtAssert (WN_const_val(wn) >= TY_size(candidate_ty_idx),
              ("allocation constant cannot be less than type size"));
  return wn;
}

// Given a memory allocation function call, get the argument that has the
// size expression. Returns size_wn() of it.
WN * size_expr (WN * call)
{
  FmtAssert (WN_operator(call) == OPR_CALL, ("Call stmt expected"));
  FmtAssert (!strcmp(ST_name(WN_st(call)), "malloc") ||
             !strcmp(ST_name(WN_st(call)), "realloc") ||
             !strcmp(ST_name(WN_st(call)), "calloc"),
             ("Unexpected function call"));

  if (!strcmp(ST_name(WN_st(call)), "malloc"))
    return size_wn(WN_kid0(WN_kid0(call)));
  else
    return size_wn(WN_kid0(WN_kid1(call)));
}

// Adjusts first argument to realloc() if necessary.
void fixup_realloc_pointer (WN * call)
{
  Is_True (WN_operator(call) == OPR_CALL, ("Expected call stmt"));
  WN * ptr = WN_kid0(WN_kid0(call));

  if (WN_operator(ptr) == OPR_ILOAD && WN_operator(WN_kid0(ptr)) == OPR_LDID &&
      WN_ty(ptr) == IPA_Update_Struct)
  {
    UINT field_id = WN_field_id(ptr);
    FmtAssert (field_id == candidate_fld_id, ("Unexpected field id in iload"));
    UINT cur_field_id = 0;
    FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct, ++field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    WN_set_field_id(ptr, field_id);
    WN_offset(ptr) = FLD_ofst(fld);
  }
}

// call to memory allocation routine
void handle_function_return (WN * block, WN * wn)
{
  FmtAssert (WN_operator(wn) == OPR_STID, ("Stid expected"));

  // must be an allocation routine call
  WN * call = WN_prev(wn);
  FmtAssert (call && WN_operator(call) == OPR_CALL, ("Call stmt expected"));

  // clone the call-stmt before it is updated
  WN * new_call = WN_COPY_Tree (call);

  WN * size = size_expr(call);

  INT num_elements = WN_const_val(size) / TY_size(candidate_ty_idx);
  FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
  FLD_HANDLE fld2 = FLD_next(fld1);

  TY_IDX ptr_ty1 = Make_Pointer_Type(FLD_type(fld1));
  TY_IDX ptr_ty2 = Make_Pointer_Type(FLD_type(fld2));

  fld1_st = Gen_Temp_Symbol (ptr_ty1, "fld1");
  fld2_st = Gen_Temp_Symbol (ptr_ty2, "fld2");

  // allocation for first field
  WN_const_val(size) = num_elements * TY_size(FLD_type(fld1));
  // wn is stid
  WN_st_idx(wn) = ST_st_idx(fld1_st);
  WN_offset(wn) = 0;
  WN_set_ty(wn, ptr_ty1);
  WN_set_ty(WN_kid0(wn), ptr_ty1);

  // allocation for second field
  if (!strcmp(ST_name(WN_st(new_call)), "realloc"))
  {
    // Fix up first argument of realloc for alloc of second field
    fixup_realloc_pointer(new_call);
  }
  size = size_expr(new_call);
  WN_const_val(size) = num_elements * TY_size(FLD_type(fld2));
  WN * val = WN_Ldid(WN_desc(WN_kid0(wn)), -1, Return_Val_Preg, ptr_ty2);
  WN * stid = WN_Stid(WN_rtype(val), 0, fld2_st, ST_type(fld2_st), val);
  WN_INSERT_BlockLast(block, new_call);
  WN_INSERT_BlockLast(block, stid);
}

// Handle assignment statement
void handle_assignment (WN * block, WN * wn)
{
  FmtAssert (WN_operator(wn) == OPR_STID, ("Expected assignment stmt"));

  UINT32 field_id = WN_field_id(wn);
  FmtAssert (field_id != 0, ("Field-id should be non-zero"));
  UINT32 new_field_id = field_map_info[field_id-1].new_field_id;

  FmtAssert (new_field_id == candidate_fld_id, ("Unexpected field-id found"));

  UINT cur_field_id = 0;
  FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
  FmtAssert (!fld.Is_Null(), ("Field not found"));
  // update assignment
  WN_set_field_id(wn, new_field_id);
  WN_offset(wn) = FLD_ofst(fld);
  WN_Delete(WN_kid0(wn));
  WN_kid0(wn) = WN_Ldid(WN_desc(wn), 0, fld1_st, Make_Pointer_Type(FLD_type(fld)));
  // get next field
  cur_field_id = 0;
  fld = FLD_get_to_field (IPA_Update_Struct, ++new_field_id, cur_field_id);
  FmtAssert (!fld.Is_Null(), ("Field not found"));

  // generate assignment for next field
  WN * val = WN_Ldid(WN_desc(WN_kid0(wn)), 0, fld2_st, Make_Pointer_Type(FLD_type(fld)));
  WN * stid = WN_Stid(WN_rtype(val), FLD_ofst(fld), WN_st(wn), WN_ty(wn), val, new_field_id);
  WN_INSERT_BlockLast(block, stid);
}

// call to memory free routine
WN * handle_function_call (WN * parent, WN * wn)
{
  FmtAssert (WN_operator(wn) == OPR_CALL, ("Call stmt expected"));

  WN * call = wn;

  if (!strcmp(ST_name(WN_st(call)), "free"))
  {
    // pointer to be freed.
    WN * ptr = WN_kid0(WN_kid0(call));
    FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
    FLD_HANDLE fld2 = FLD_next(fld1);

    TY_IDX ptr_ty1 = Make_Pointer_Type(FLD_type(fld1));
    TY_IDX ptr_ty2 = Make_Pointer_Type(FLD_type(fld2));

    // free for first field
    WN_st_idx(ptr) = ST_st_idx(fld1_st);
    WN_offset(ptr) = 0;
    WN_set_ty(ptr, ptr_ty1);

    // free for second field
    WN * new_call = WN_COPY_Tree (call);
    WN_st_idx(WN_kid0(WN_kid0(new_call))) = ST_st_idx(fld2_st);
    WN_set_ty(WN_kid0(WN_kid0(new_call)), ptr_ty2);

    WN_INSERT_BlockAfter(parent, wn, new_call);
    return new_call;
  }
  else Fail_FmtAssertion ("NYI");

  return NULL;
}

// Call to memory free routine, similar to handle_function_call() and
// the two should be merged.
void duplicate_call (WN * block, WN * call)
{
  FmtAssert (WN_operator(call) == OPR_CALL, ("Call stmt expected"));

  if (!strcmp(ST_name(WN_st(call)), "realloc"))
    return;

  FmtAssert (!strcmp(ST_name(WN_st(call)), "free") && WN_kid_count(call) == 1,
             ("Unexpected function call"));

  WN * new_call = WN_COPY_Tree (call);
  WN * addr = WN_kid0(WN_kid0(new_call));

  UINT32 new_field_id = WN_field_id(addr);

  UINT cur_field_id = 0;
  FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           ++new_field_id, cur_field_id);
  FmtAssert (!fld.Is_Null(), ("Field not found"));
  WN_set_field_id(addr, new_field_id);
  WN_offset(addr) = FLD_ofst(fld);

  WN_INSERT_BlockLast (block, new_call);
}

// Handle an ISTORE when it needs to be duplicated.
void handle_istore_assignment (WN * block, WN * stmt)
{
  FmtAssert (WN_operator(stmt) == OPR_ISTORE,
             ("handle_istore_assignment: expected ISTORE"));
  if (TY_pointed(WN_ty(stmt)) == IPA_Update_Struct)
  {
    // Handle LHS of istore.
    UINT field_id = WN_field_id(stmt);
    FmtAssert (field_id == candidate_fld_id,
               ("handle_istore_assignment: unexpected field id"));
    WN * new_istore = WN_COPY_Tree(stmt);
    UINT cur_field_id = 0;
    FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    FmtAssert (FLD_ofst(fld) == WN_offset(stmt),
               ("handle_istore_assignment: Unexpected offset in ISTORE"));
    FmtAssert (field_id == field_map_info[field_id-1].new_field_id,
               ("Error in field-id computation"));

    // Handle LHS of istore for next field.
    cur_field_id = 0;
    fld = FLD_get_to_field (IPA_Update_Struct,
                                           ++field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    WN_set_field_id(new_istore, field_id);
    WN_offset(new_istore) = FLD_ofst(fld);

    WN * rhs = WN_kid0(stmt);
    if (WN_operator(rhs) == OPR_LDID)
    {
      // Update RHS of both assignment statements.
      FmtAssert (TY_kind(WN_ty(rhs)) == KIND_POINTER &&
                 TY_pointed(WN_ty(rhs)) == candidate_ty_idx,
                 ("Unexpected pointer"));

      FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
      FLD_HANDLE fld2 = FLD_next(fld1);

      TY_IDX ty = FLD_type(fld1);
      WN_kid0(stmt) = WN_Ldid(WN_desc(rhs),
                                    0,
                                    fld1_st,
                                    Make_Pointer_Type(ty));
      WN_Delete(rhs);

      ty = FLD_type(fld2);
      rhs = WN_kid0(new_istore);
      WN_kid0(new_istore) = WN_Ldid(WN_desc(rhs),
                                    0,
                                    fld2_st,
                                    Make_Pointer_Type(ty));
      WN_Delete(rhs);
    }
    else
    {
      FmtAssert (WN_operator(rhs) == OPR_INTCONST, ("NYI"));
    }
    WN_INSERT_BlockLast(block, new_istore);
  }
  else Fail_FmtAssertion ("NYI");
}

#if 0
// Delete this function after verifying all the needed functionality has
// been moved over to the new function.
//
void handle_istore (WN * block, WN * parent, WN * wn)
{
  Is_True (WN_operator(wn) == OPR_ISTORE, ("Unexpected operator"));

  if (TY_pointed(WN_ty(wn)) == candidate_ty_idx)
  {
        FmtAssert (WN_operator(parent) == OPR_BLOCK,
                 ("parent of stmt should be OPR_BLOCK"));
        WN * addr = WN_kid1(wn);
        if (WN_operator(addr) == OPR_LDID)
        {
          FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
          FLD_HANDLE fld2 = FLD_next(fld1);

          ST * base_st = NULL;
          TY_IDX ty = TY_IDX_ZERO;

          if (WN_field_id(wn) == 1)
          {
            base_st = fld1_st;
            ty = FLD_type(fld1);
          }
          else
          {
            base_st = fld2_st;
            ty = FLD_type(fld2);
          }

          // analyze the base
          FmtAssert (TY_kind(WN_ty(addr)) == KIND_POINTER, (""));
          if (TY_pointed(WN_ty(addr)) == candidate_ty_idx)
          {
            WN_kid1(wn) = WN_Ldid(WN_desc(addr),
                                  0,
                                  base_st,
                                  Make_Pointer_Type(ty));
            WN_Delete(addr);
          }

          WN_set_field_id(wn,0);
          WN_offset(wn) = 0;
          WN_set_ty(wn, Make_Pointer_Type(ty));
        }
        else
        {
          FmtAssert (WN_operator(addr) == OPR_ADD, ("NYI"));
          WN * base = WN_kid0(addr);
          WN * ofst = WN_kid1(addr);

          FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
          FLD_HANDLE fld2 = FLD_next(fld1);
          TY_IDX ty = TY_IDX_ZERO;
          if (WN_field_id(wn) == 1)
          {
            ty = FLD_type(fld1);
          }
          else
          {
            ty = FLD_type(fld2);
          }
          // analyze the base
          if (WN_operator(base) == OPR_ILOAD &&
              WN_ty(base) == IPA_Update_Struct)
          {
            UINT field_id = WN_field_id(base);
            FmtAssert (field_id == candidate_fld_id, (""));
            if (WN_field_id(wn) != 1)
            {
              field_id++;
              UINT cur_field_id = 0;
              FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                             field_id, cur_field_id);
              FmtAssert (!fld.Is_Null(), (""));
              WN_set_field_id(base, field_id);
              WN_offset(base) = FLD_ofst(fld);
            }
            // else don't need to do anything
          }
          // update offset
          WN * size = WN_kid1(ofst);
          FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
          WN_const_val(size) = TY_size(ty);

          WN_offset(wn) = 0;
          WN_set_ty(wn, Make_Pointer_Type(ty));
          WN_set_field_id(wn, 0);
        }
  }
  else if (TY_pointed(WN_ty(wn)) == IPA_Update_Struct &&
           // check if loading the whole struct or a field from it.
           WN_field_id(wn))
  {
    UINT field_id = WN_field_id(wn);
    FmtAssert (field_id, (""));
    if (field_id != candidate_fld_id)
    {
      UINT new_field_id = field_map_info[field_id-1].new_field_id;
      UINT cur_field_id = 0;
      FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
      FmtAssert (!fld.Is_Null(), (""));
      WN_set_field_id (wn, new_field_id);
      WN_offset(wn) = FLD_ofst(fld);
    }
    else
    {
      DevWarn ("Need to duplicate istore");
      handle_istore_assignment (block, wn);
    }
  }
}
#endif

// Input:
//   block: to insert any new statements generated.
//   wn is the kidid-th kid of parent.
//   field_id is the field-id being promoted from the parent.
//   lhs denotes if we are processing the lhs or rhs of the istore.
//
// Recursively traverses the tree and makes updates.
void handle_kid_of_istore (WN * block, WN * parent, WN * wn, INT kidid, UINT field_id, BOOL lhs)
{
  FmtAssert (!OPERATOR_is_stmt(WN_operator(wn)),
             ("ISTORE cannot have a statement as its kid"));

  if (!OPCODE_is_leaf (WN_opcode (wn)))
  {
      INT kidno;
      WN* kid;
      for (kidno=0; kidno<WN_kid_count(wn); kidno++)
      {
        kid = WN_kid (wn, kidno);
        if (kid)
        {
          UINT id = field_id;
          // Propagate the new field-id if required.
          if (WN_operator(wn) == OPR_ILOAD &&
              WN_ty(wn) == candidate_ty_idx &&
              WN_field_id(wn))
            id = WN_field_id(wn);
          handle_kid_of_istore (block, wn, kid, kidno, id, lhs);
        }
      }
  }

  if (WN_operator(wn) == OPR_ILOAD)
  {
    WN * addr = WN_kid0(wn);
    if (WN_ty(wn) == IPA_Update_Struct && WN_field_id(wn))
    {
      FmtAssert (WN_operator(addr) == OPR_LDID, ("NYI"));
      UINT id = WN_field_id(wn);
      UINT32 new_field_id = field_map_info[id-1].new_field_id;
      if (id == candidate_fld_id && field_id == 2)
        new_field_id++;

      UINT cur_field_id = 0;
      FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                         new_field_id, cur_field_id);
      FmtAssert (!fld.Is_Null(), ("Field not found"));
      WN_set_field_id(wn, new_field_id);
      WN_offset(wn) = FLD_ofst(fld);
    }
    else if (WN_ty(wn) == candidate_ty_idx && WN_field_id(wn))
    {
      FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
      FLD_HANDLE fld2 = FLD_next(fld1);
      TY_IDX ty = TY_IDX_ZERO;
      if (WN_field_id(wn) == 1)
      {
        ty = FLD_type(fld1);
      }
      else
      {
        ty = FLD_type(fld2);
      }
      // adjust type size if present
      if (WN_operator(WN_kid0(wn)) == OPR_ADD &&
          WN_operator(WN_kid1(WN_kid0(wn))) == OPR_MPY)
      {
        WN * size = WN_kid1(WN_kid1(WN_kid0(wn)));
        FmtAssert (WN_operator(size) == OPR_INTCONST &&
                   WN_const_val(size) == TY_size(candidate_ty_idx),
                   ("Error while updating type size under iload"));
        WN_const_val(size) = TY_size(ty);
      }

      WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), 0, ty, addr);
      WN_Delete(wn);
    }
  }
  else if (WN_operator(wn) == OPR_LDID &&
           lhs && // lhs of istore?
           TY_kind(WN_ty(wn)) == KIND_POINTER &&
           TY_pointed(WN_ty(wn)) == candidate_ty_idx)
  {
    FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
    FLD_HANDLE fld2 = FLD_next(fld1);

    ST * base_st = NULL;
    TY_IDX ty = TY_IDX_ZERO;

    if (field_id == 1)
    {
      base_st = fld1_st;
      ty = FLD_type(fld1);
    }
    else
    {
      base_st = fld2_st;
      ty = FLD_type(fld2);
    }

    WN_kid(parent, kidid) = WN_Ldid(WN_desc(wn),
                                    0,
                                    base_st,
                                    Make_Pointer_Type(ty));
    WN_Delete(wn);

    wn = WN_kid(parent, kidid);
    WN_set_field_id(wn,0);
    WN_offset(wn) = 0;
    WN_set_ty(wn, Make_Pointer_Type(ty));
  }
}

void handle_istore (WN * block, WN * parent, WN * wn)
{
  // handle lhs and rhs first
  handle_kid_of_istore(block, wn, WN_kid1(wn), 1, WN_field_id(wn), TRUE);
  handle_kid_of_istore(block, wn, WN_kid0(wn), 0, WN_field_id(wn), FALSE);

  // handle istore now
  if (TY_pointed(WN_ty(wn)) == candidate_ty_idx && WN_field_id(wn))
  {
    WN * addr = WN_kid1(wn);

    FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
    FLD_HANDLE fld2 = FLD_next(fld1);
    TY_IDX ty = TY_IDX_ZERO;
    if (WN_field_id(wn) == 1)
    {
      ty = FLD_type(fld1);
    }
    else
    {
      ty = FLD_type(fld2);
    }

    // Update the type size.
    if (WN_operator(addr) == OPR_ADD && WN_operator(WN_kid1(addr)) == OPR_MPY)
    {
      WN * size = WN_kid1(WN_kid1(addr));
      FmtAssert (WN_operator(size) == OPR_INTCONST &&
                 WN_const_val(size) == TY_size(candidate_ty_idx),
                 ("Error while updating type size under istore"));
      WN_const_val(size) = TY_size(ty);
    }
    WN_set_field_id(wn, 0);
    WN_offset(wn) = 0;
    WN_set_ty(wn, Make_Pointer_Type(ty));
  }
  else if (TY_pointed(WN_ty(wn)) == IPA_Update_Struct &&
           // check if loading the whole struct or a field from it.
           WN_field_id(wn))
  {
    UINT field_id = WN_field_id(wn);
    if (field_id != candidate_fld_id)
    {
      UINT new_field_id = field_map_info[field_id-1].new_field_id;
      UINT cur_field_id = 0;
      FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
      FmtAssert (!fld.Is_Null(), ("Field not found"));
      WN_set_field_id (wn, new_field_id);
      WN_offset(wn) = FLD_ofst(fld);
    }
    else
    {
      // Need to duplicate istore
      handle_istore_assignment (block, wn);
    }
  }
}

WN * traverse_wn_tree (WN * block, WN * grandparent, WN * parent, WN * wn, INT kidid)
{
  if (wn == NULL) return NULL;

  // recursive traversal
  if (!OPCODE_is_leaf (WN_opcode (wn)))
  {
    if (WN_opcode(wn) == OPC_BLOCK)
    {
      WN* kid = WN_first (wn);
      while (kid)
      {
        WN * out = WN_CreateBlock();
        kid = traverse_wn_tree (out, parent, wn, kid, 0);
        if (WN_last(out))
        {
          WN * ptr = kid;
          kid = WN_last(out);
          WN_INSERT_BlockAfter (wn, ptr, out);
        }
        kid = WN_next (kid);
      }
    }
    else if (WN_operator(wn) != OPR_ISTORE)
    {
      INT kidno;
      WN* kid;
      for (kidno=0; kidno<WN_kid_count(wn); kidno++)
      {
        kid = WN_kid (wn, kidno);
        if (kid)
          traverse_wn_tree (block, parent, wn, kid, kidno);
      }
    }
  }

  switch (WN_operator(wn))
  {
    case OPR_STID:
    {
      if (WN_ty(wn) == IPA_Update_Struct && WN_field_id(wn))
      {
        // We are storing into object of type struct that is being
        // updated, check what field is being accessed.
        if (WN_field_id(wn) == candidate_fld_id)
        {
      //      Fail_FmtAssertion ("NYI");
          // This should have been handled by now.
        }
        else if (WN_field_id(wn))
        { // update the field id
          UINT32 field_id = WN_field_id(wn);
          UINT32 new_field_id = field_map_info[field_id-1].new_field_id;
          UINT cur_field_id = 0;
          FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
          FmtAssert (!fld.Is_Null(), ("Field not found"));
          WN_set_field_id(wn, new_field_id);
          WN_offset(wn) = FLD_ofst(fld);
        }
      }
    }
    break;

    case OPR_LDID:
    {
      TY_IDX ty = WN_ty(wn);
      if (TY_kind(ty) == KIND_POINTER &&
          TY_pointed(ty) == candidate_ty_idx)
      {
        if (WN_st(wn) == Return_Val_Preg)
          handle_function_return (block, parent);
        else if (WN_operator(parent) == OPR_STID &&
                 WN_ty(parent) == IPA_Update_Struct)
          handle_assignment (block, parent);
        else if (WN_operator(parent) == OPR_ISTORE /*||
                 WN_operator(parent) == OPR_ILOAD ||
                 WN_operator(grandparent) == OPR_ISTORE ||
                 WN_operator(grandparent) == OPR_ILOAD*/)
        {
          Fail_FmtAssertion ("Should not reach here");
          //handle_istore_assignment(block, parent, wn, kidid);
        }
      }
      else if (TY_kind(ty) == KIND_POINTER &&
               TY_pointed(ty) == IPA_Update_Struct)
      {
	// ** Allocation of an object of such a type is not yet supported. **
	//
        // We are loading a pointer to a struct being updated, check
        // what fields of the struct are being accessed.
        // This is being handled later, and we should not need this.
      }
      else if (ty == IPA_Update_Struct)
      {
        // We are loading an object of type struct that is being
        // updated, check what field is being accessed.
        if (WN_field_id(wn) == candidate_fld_id)
        {
          if (WN_operator(parent) == OPR_PARM)
            duplicate_call(block, grandparent);
        }
        else if (WN_field_id(wn))
        { // update the field id
          UINT32 field_id = WN_field_id(wn);
          UINT32 new_field_id = field_map_info[field_id-1].new_field_id;
          UINT cur_field_id = 0;
          FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
          FmtAssert (!fld.Is_Null(), ("Field not found"));
          WN_set_field_id(wn, new_field_id);
          WN_offset(wn) = FLD_ofst(fld);
        }
      }
    }
    break;

    case OPR_ILOAD:
    {
      if (WN_ty(wn) == candidate_ty_idx)
      {
          WN * addr = WN_kid0(wn); // kid of iload

          FLD_HANDLE fld1 = TY_fld(candidate_ty_idx);
          FLD_HANDLE fld2 = FLD_next(fld1);

          if (WN_operator(addr) == OPR_LDID)
          {
            WN_OFFSET ofst = 0;
            TY_IDX ty = TY_IDX_ZERO;
            if (WN_field_id(wn) == 1)
            {
              ofst = FLD_ofst(fld1);
              ty = FLD_type(fld1);
            }
            else
            {
              ofst = FLD_ofst(fld2);
              ty = FLD_type(fld2);
            }
            INT index = (WN_load_offset(wn)-ofst) / TY_size(candidate_ty_idx);
            WN_kid0(parent) = WN_Iload(WN_desc(wn), index*TY_size(ty), ty, addr);
            // delete old kid
            WN_Delete(wn);
            wn = WN_kid0(parent);
          }
          else if (WN_operator(addr) == OPR_ADD && /* FIX THIS */
                   WN_operator(WN_kid0(addr)) == OPR_LDID &&
                   WN_ty(WN_kid0(addr)) == IPA_Update_Struct)
          {
            WN * base = WN_kid0(addr);
            WN * ofst = WN_kid1(addr);

            FmtAssert (WN_operator(base) == OPR_LDID &&
                       WN_operator(ofst) == OPR_MPY, ("NYI"));
            TY_IDX ty = TY_IDX_ZERO;
            UINT32 field_id = field_map_info[WN_field_id(base)-1].new_field_id;
            if (WN_field_id(wn) == 1)
            {
              ty = FLD_type(fld1);
            }
            else
            {
              ty = FLD_type(fld2);
              field_id++;
            }
            UINT cur_field_id = 0;
            FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                               field_id, cur_field_id);
            FmtAssert (!fld.Is_Null(), ("Field not found"));
            WN_set_field_id(base, field_id);
            WN_offset(base) = FLD_ofst(fld);

            // update offset
            WN * size = WN_kid1(ofst);
            FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
            WN_const_val(size) = TY_size(ty);
            // The offset may have been folded into the original iload, so
            // determine if we need the offset from it.
            UINT load_ofst = WN_load_offset(wn) >= 0 ? 0 : WN_load_offset(wn);
            WN_kid0(parent) = WN_Iload(WN_desc(wn), load_ofst, ty, addr);
            WN_Delete(wn);
            wn = WN_kid0(parent);
          }
          else if (WN_operator(addr) == OPR_ADD && /* FIX THIS */
                   WN_operator(WN_kid0(addr)) == OPR_LDID)
          {
            WN * base = WN_kid0(addr);
            WN * ofst = WN_kid1(addr);

            FmtAssert (WN_operator(base) == OPR_LDID &&
                       WN_operator(ofst) == OPR_MPY, ("NYI"));
            ST * base_st = NULL;
            TY_IDX ty = TY_IDX_ZERO;
            if (WN_field_id(wn) == 1)
            {
              base_st = fld1_st;
              ty = FLD_type(fld1);
            }
            else
            {
              base_st = fld2_st;
              ty = FLD_type(fld2);
            }
            // update offset
            WN * size = WN_kid1(ofst);
            FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
            WN_const_val(size) = TY_size(ty);
            // update base
            WN_kid0(addr) = WN_Ldid(WN_desc(base), 0, base_st, Make_Pointer_Type(ty));
            WN_kid0(parent) = WN_Iload(WN_desc(wn), 0, ty, addr);
            // delete old base ptr
            WN_DELETE_Tree(base);
            WN_Delete(wn);
            wn = WN_kid0(parent);
          }
          else if (WN_operator(addr) == OPR_ADD)
          {
            WN * ofst = WN_kid1(addr);
            FmtAssert (WN_operator(ofst) == OPR_MPY, ("Unexpected expression"));
            TY_IDX ty = TY_IDX_ZERO;
            if (WN_field_id(wn) == 1)
            {
              ty = FLD_type(fld1);
            }
            else
            {
              ty = FLD_type(fld2);
            }
            // update offset
            WN * size = WN_kid1(ofst);
            FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
            WN_const_val(size) = TY_size(ty);
            WN_kid0(parent) = WN_Iload(WN_desc(wn), 0, ty, addr);
            WN_Delete(wn);
            wn = WN_kid0(parent);
          }
          else if (WN_operator(addr) == OPR_ILOAD &&
                   WN_ty(addr) == IPA_Update_Struct)
          {
            // base will be updated later
            WN_OFFSET ofst = 0;
            TY_IDX ty = TY_IDX_ZERO;
            if (WN_field_id(wn) == 1)
            {
              ofst = FLD_ofst(fld1);
              ty = FLD_type(fld1);
            }
            else
            {
              ofst = FLD_ofst(fld2);
              ty = FLD_type(fld2);
            }
            INT index = (WN_load_offset(wn)-ofst) / TY_size(candidate_ty_idx);
            WN_kid0(parent) = WN_Iload(WN_desc(wn), index*TY_size(ty), ty, addr, 0);
            // delete old kid
            WN_Delete(wn);
            wn = WN_kid0(parent);
          }
          else Fail_FmtAssertion ("NYI");
      }
      else if (WN_ty(wn) == IPA_Update_Struct && WN_field_id(wn))
      {
        if (WN_operator(parent) == OPR_PARM &&
            WN_field_id(wn) == candidate_fld_id)
          duplicate_call(block, grandparent);
        else
        {
        UINT32 field_id = WN_field_id(wn);
        FmtAssert (field_id != 0, ("Non-zero field-id expected"));
        UINT32 new_field_id = field_map_info[field_id-1].new_field_id;
        WN * addr = WN_operator(parent) == OPR_ILOAD ? parent :
                    WN_operator(grandparent) == OPR_ILOAD ? grandparent :
                    NULL;
        if (addr &&
            WN_ty(addr) == candidate_ty_idx &&
            WN_field_id(addr) == 2)
          new_field_id++;
        else
        {
          addr = WN_operator(parent) == OPR_ISTORE ? parent :
                 WN_operator(grandparent) == OPR_ISTORE ? grandparent :
                 NULL;
          if (addr &&
              TY_pointed(WN_ty(addr)) == candidate_ty_idx &&
              WN_field_id(addr) == 2)
            new_field_id++;
        }
        UINT cur_field_id = 0;
        FLD_HANDLE fld = FLD_get_to_field (IPA_Update_Struct,
                                           new_field_id, cur_field_id);
        FmtAssert (!fld.Is_Null(), ("Field not found"));
        WN_set_field_id(wn, new_field_id);
        WN_offset(wn) = FLD_ofst(fld);
        }
      }
    }
    break;

    case OPR_ISTORE:
      handle_istore (block, parent, wn);
      break;

    case OPR_CALL:
    {
      if (!strcmp(ST_name(WN_st(wn)), "free") && WN_kid_count(wn) == 1)
      {
        WN * arg = WN_kid0(WN_kid0(wn));
        if (WN_operator(arg) == OPR_LDID &&
            TY_kind(WN_ty(arg)) == KIND_POINTER &&
            TY_pointed(WN_ty(arg)) == candidate_ty_idx)
          wn = handle_function_call (parent, wn);
      }
    }
    break;

    default: break;
  }

  return wn;
}

// Update field table before whirl update.
void IPO_Fld_Table_Update_For_Struct_Opt (TY_IDX ty)
{
  static int done=0; // clean this up
  if (done) return;
  done = 1;

  mUINT32 old_field_id, new_field_id;
  WN_OFFSET old_ofst, new_ofst;

  old_field_id = new_field_id = 1;
  old_ofst = new_ofst = 0;

  FmtAssert (TY_kind(ty) == KIND_STRUCT, ("struct type expected"));

  FLD_ITER fld_iter = Make_fld_iter(TY_fld(ty));
  FLD_IDX first_fld_idx = Fld_Table.size();
  FLD_HANDLE last_field;
  BOOL child_flattened = FALSE;

  UINT32 fld_count = 1; // 1 from the nested struct ??
  do
  {
    fld_count++;
  } while (!FLD_last_field(fld_iter++));

  FmtAssert (fld_count > 1, ("This struct should have > 1 field"));

  field_map_info = (FLD_MAP *) malloc (fld_count * sizeof(FLD_MAP));

  fld_iter = Make_fld_iter(TY_fld(ty));
  do
  {
    FLD_HANDLE fld(fld_iter);
    FLD_HANDLE new_fld = New_FLD();

    field_map_info[old_field_id-1].old_field_id = old_field_id;
    field_map_info[old_field_id-1].new_field_id = new_field_id;

    if (TY_kind(FLD_type(fld)) == KIND_POINTER &&
        TY_pointed(FLD_type(fld)) == IPA_Enable_Struct_Opt)
    {
      FmtAssert (!child_flattened, ("Unexpected struct-type field"));
      FmtAssert (old_field_id == new_field_id, ("Field update error"));
      candidate_fld_id = old_field_id;
      child_flattened = TRUE;
      UINT32 ofst = FLD_ofst(fld);
      FmtAssert (TY_kind(IPA_Enable_Struct_Opt) == KIND_STRUCT, ("struct expected"));
      FLD_HANDLE nested = TY_fld(IPA_Enable_Struct_Opt);
      memcpy (&Fld_Table[new_fld.Idx()], &Fld_Table[nested.Idx()], sizeof(FLD));
      FmtAssert (FLD_ofst(new_fld) == 0, ("Offset mismatch"));
      Set_FLD_ofst (new_fld, ofst);
      Set_FLD_type (new_fld, Make_Pointer_Type (FLD_type(new_fld)));

      new_fld = New_FLD();
      new_field_id++;
      memcpy (&Fld_Table[new_fld.Idx()], &Fld_Table[nested.Idx()+1], sizeof(FLD));
      Set_FLD_ofst (new_fld, ofst+Pointer_Size);
      Set_FLD_type (new_fld, Make_Pointer_Type (FLD_type(new_fld)));

      FmtAssert (FLD_last_field(new_fld), ("Last field flag missing"));
      Clear_FLD_last_field(new_fld);
      last_field = new_fld;
    }
    else
    {
      memcpy (&Fld_Table[new_fld.Idx()], &Fld_Table[fld.Idx()], sizeof(FLD));
      if (child_flattened) // we increased the size by a pointer size
        Set_FLD_ofst (new_fld, FLD_ofst(new_fld)+Pointer_Size);
      last_field = new_fld;
    }
    old_field_id++;
    new_field_id++;
  } while (!FLD_last_field(fld_iter++));

  Ty_Table[ty].Set_fld(first_fld_idx);
  Set_TY_size(ty, TY_size(ty)+Pointer_Size);
  Set_FLD_last_field(last_field);
}

// Top level routine for optimization
void IPO_WN_Update_For_Struct_Opt (IPA_NODE * node)
{
  WN * tree = node->Whirl_Tree();
  FmtAssert (tree, ("Null whirl tree"));

  PU_Parent_Map = node->Parent_Map();
  PU_Map_Tab = node->Map_Table();

  // Map callsites now before we introduce any new calls. If any new
  // calls are introduced here, they are guaranteed to not require any
  // new edge.
  IPA_Call_Graph->Map_Callsites(node);

  // parentize before
  WN_Parentize(tree, PU_Parent_Map, PU_Map_Tab);
  candidate_ty_idx = IPA_Enable_Struct_Opt;
  // Assign candidate_ty_idx here.
  FmtAssert (candidate_ty_idx != TY_IDX_ZERO, ("No TY to optimize"));
  if (IPA_Update_Struct)
    IPO_Fld_Table_Update_For_Struct_Opt (IPA_Update_Struct);
  traverse_wn_tree (NULL, NULL, tree, WN_func_body(tree), 0);
  // parentize after
  WN_Parentize(tree, PU_Parent_Map, PU_Map_Tab);
}
