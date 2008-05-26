////////////////////////////////////////////////////////////////////////////
//
// Copyright (C) 2007, 2008. PathScale, LLC. All Rights Reserved.
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
#include <math.h>

#include "defs.h"
#include "wn.h"
#include "wn_util.h"
#include "symtab.h"
#include "config_ipa.h"

#include "ipa_cg.h"
#include "ipo_parent.h"
#include "ipa_struct_opt.h"

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
// TY should have 2 fields only (being relaxed)
//
// An object of pointer-to-TY should not be present as a function parameter.
//
// It should be a local variable (being relaxed)
//
// An object of pointer-to-TY may appear as a field in another 'struct'
// type parent_TY, if there is only one such parent_TY, and parent_TY
// contains only one such field.

mUINT32 candidate_ty_idx = 0;
mUINT32 candidate_fld_id = 0;
mUINT32 Struct_split_candidate_index = 0;
mUINT32 Struct_update_index = 0;

static WN_MAP PU_Parent_Map = 0;
static WN_MAP_TAB * PU_Map_Tab = NULL;

// TODO:
//  * map should be always updated whenever the whirl is changed.
//  * change assertions to debug assertions later.
//  * we should find a better way to detect memory management routines,
//    like generating intrinsics for them and detecting these intrinsics.

ST * fld_st[10]; // TODO: dynamic memory allocation
TY_IDX Struct_split_types[20]; // TODO: dynamic memory allocation

WN_OFFSET preg_id = 0;

struct FLD_MAP
{
  mUINT32 old_field_id; // not required
  mUINT32 new_field_id;
  WN_OFFSET old_ofst; // unused
  WN_OFFSET new_ofst; // unused
};

static FLD_MAP * field_map_info;

// expr is a size expression, return the WN for the constant
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
  FmtAssert (WN_const_val(wn) >= TY_size(Ty_tab[candidate_ty_idx]),
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
      TY_IDX_index(WN_ty(ptr)) == Struct_update_index)
  {
    UINT field_id = WN_field_id(ptr);
    FmtAssert (field_id == candidate_fld_id, ("Unexpected field id in iload"));
    UINT cur_field_id = 0;
    FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8, ++field_id, cur_field_id);
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

  INT num_elements = WN_const_val(size) / TY_size(Ty_tab[candidate_ty_idx]);

  TY_IDX type = TY_IDX_ZERO;
  TY_IDX ptr_ty[10]; // TODO: dynamic mem alloc
  for (INT i=0; i<Struct_split_count; i++)
  {
      type = Struct_split_types[i];
      ptr_ty[i] = Make_Pointer_Type(type);
      fld_st[i] = Gen_Temp_Symbol (ptr_ty[i], "fld");
  }

  // allocation for first field
  WN_const_val(size) = num_elements * TY_size(Struct_split_types[0]);
  // wn is stid
  {
    // Sanity check, and track ST being replaced.
    ST * sym = WN_st(wn);
    FmtAssert (ST_class(sym) == CLASS_PREG,
               ("handle_function_return: Expected return store into preg"));
    preg_id = WN_offset(wn);
  }
  WN_st_idx(wn) = ST_st_idx(fld_st[0]);
  WN_offset(wn) = 0;
  WN_set_ty(wn, ptr_ty[0]);
  WN_set_ty(WN_kid0(wn), ptr_ty[0]);

  // allocation for second field
  if (!strcmp(ST_name(WN_st(new_call)), "realloc"))
  {
    // Fix up first argument of realloc for alloc of second field
    fixup_realloc_pointer(new_call);
  }

  WN * last_alloc = new_call;
  for (INT i=1; i<Struct_split_count; i++)
  {
    if (i < Struct_split_count-1)
      new_call = WN_COPY_Tree (new_call);
    size = size_expr(last_alloc);
    WN_const_val(size) = num_elements * TY_size(Struct_split_types[i]);
    WN * val = WN_Ldid(WN_desc(WN_kid0(wn)), -1, Return_Val_Preg, ptr_ty[i]);
    WN * stid = WN_Stid(WN_rtype(val), 0, fld_st[i], ST_type(fld_st[i]), val);
    WN_INSERT_BlockLast(block, last_alloc);
    WN_INSERT_BlockLast(block, stid);
    last_alloc = new_call;
  }
}

// Handle assignment statement
void handle_assignment (WN * block, WN * wn)
{
  FmtAssert (WN_operator(wn) == OPR_STID, ("Expected assignment stmt"));

  if (IPA_Enable_Struct_Opt == 2 &&
      TY_kind(WN_ty(wn)) == KIND_POINTER &&
      TY_IDX_index(TY_pointed(WN_ty(wn))) == candidate_ty_idx)
  { // pointer assignment
    // First, some sanity checks
    WN * kid = WN_kid0(wn);
    // Must be ldid of a preg
    Is_True (WN_operator(kid) == OPR_LDID &&
             ST_class(WN_st(kid)) == CLASS_PREG, ("NYI"));

    TY_IDX ptr_ty0 = Make_Pointer_Type(Struct_field_layout[0].u.new_ty);
    WN_set_ty(kid, ptr_ty0);
    WN_st_idx(kid) = ST_st_idx(fld_st[0]);
    WN_offset(kid) = 0; // reset offset
    WN_set_ty(wn, ptr_ty0);
    WN_st_idx(wn) = Struct_field_layout[0].st_idx;

    // Generate rest of assignments
    for (INT i=1; i<Struct_split_count; i++)
    {
      TY_IDX ptr_ty = Make_Pointer_Type(Struct_field_layout[i].u.new_ty);
      WN * stid = WN_Stid(WN_desc(wn),
                          0,
                          &St_Table[Struct_field_layout[i].st_idx],
                          ptr_ty,
                          WN_Ldid(WN_desc(wn), 0, fld_st[i], ptr_ty));
      WN_INSERT_BlockLast(block, stid);
    }
  }
  else if (TY_IDX_index(WN_ty(wn)) == Struct_update_index)
  {
    UINT32 field_id = WN_field_id(wn);
    FmtAssert (field_id != 0, ("Field-id should be non-zero"));
    UINT32 new_field_id = field_map_info[field_id-1].new_field_id;

    FmtAssert (new_field_id == candidate_fld_id, ("Unexpected field-id found"));

    UINT cur_field_id = 0;
    FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
                                           new_field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    // update assignment
    WN_set_field_id(wn, new_field_id);
    WN_offset(wn) = FLD_ofst(fld);
    WN_Delete(WN_kid0(wn));
    WN_kid0(wn) = WN_Ldid(WN_desc(wn), 0, fld_st[0], Make_Pointer_Type(FLD_type(fld)));
    // get next field
    // TODO: generalize
    cur_field_id = 0;
    fld = FLD_get_to_field (Struct_update_index<<8, ++new_field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));

    // generate assignment for next field
    WN * val = WN_Ldid(WN_desc(WN_kid0(wn)), 0, fld_st[1], Make_Pointer_Type(FLD_type(fld)));
    WN * stid = WN_Stid(WN_rtype(val), FLD_ofst(fld), WN_st(wn), WN_ty(wn), val, new_field_id);
    WN_INSERT_BlockLast(block, stid);
  }
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

    // free for first field
    WN_st_idx(ptr) = ST_st_idx(fld_st[0]);
    WN_offset(ptr) = 0;
    WN_set_ty(ptr, Make_Pointer_Type(Struct_split_types[0]));

    // free for remaining fields
    for (INT i=1; i<Struct_split_count; i++)
    {
      WN * new_call = WN_COPY_Tree (call);
      WN_st_idx(WN_kid0(WN_kid0(new_call))) = ST_st_idx(fld_st[i]);
      WN_set_ty(WN_kid0(WN_kid0(new_call)),
                Make_Pointer_Type(Struct_split_types[i]));

      WN_INSERT_BlockAfter(parent, wn, new_call);
      call = new_call;
    }
    return call;
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
  FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
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
  if (TY_IDX_index(TY_pointed(WN_ty(stmt))) == Struct_update_index)
  {
    // Handle LHS of istore.
    UINT field_id = WN_field_id(stmt);
    FmtAssert (field_id == candidate_fld_id,
               ("handle_istore_assignment: unexpected field id"));
    WN * new_istore = WN_COPY_Tree(stmt);
    UINT cur_field_id = 0;
    FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
                                           field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    FmtAssert (FLD_ofst(fld) == WN_offset(stmt),
               ("handle_istore_assignment: Unexpected offset in ISTORE"));
    FmtAssert (field_id == field_map_info[field_id-1].new_field_id,
               ("Error in field-id computation"));

    // Handle LHS of istore for next field.
    cur_field_id = 0;
    fld = FLD_get_to_field (Struct_update_index<<8,
                                           ++field_id, cur_field_id);
    FmtAssert (!fld.Is_Null(), ("Field not found"));
    WN_set_field_id(new_istore, field_id);
    WN_offset(new_istore) = FLD_ofst(fld);

    WN * rhs = WN_kid0(stmt);
    if (WN_operator(rhs) == OPR_LDID)
    {
      // Update RHS of both assignment statements.
      FmtAssert (TY_kind(WN_ty(rhs)) == KIND_POINTER &&
                 TY_IDX_index(TY_pointed(WN_ty(rhs))) == candidate_ty_idx,
                 ("Unexpected pointer"));

      TY_IDX ty = Struct_field_layout[0].u.new_ty;
      WN_kid0(stmt) = WN_Ldid(WN_desc(rhs),
                                    0,
                                    fld_st[0],
                                    Make_Pointer_Type(ty));
      WN_Delete(rhs);

      ty = Struct_field_layout[1].u.new_ty;
      rhs = WN_kid0(new_istore);
      WN_kid0(new_istore) = WN_Ldid(WN_desc(rhs),
                                    0,
                                    fld_st[1],
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
              TY_IDX_index(WN_ty(wn)) == candidate_ty_idx &&
              WN_field_id(wn))
            id = WN_field_id(wn);
          handle_kid_of_istore (block, wn, kid, kidno, id, lhs);
        }
      }
  }

  if (WN_operator(wn) == OPR_ILOAD)
  {
    WN * addr = WN_kid0(wn);
    if (TY_IDX_index(WN_ty(wn)) == Struct_update_index && WN_field_id(wn))
    {
      FmtAssert (WN_operator(addr) == OPR_LDID, ("NYI"));
      UINT id = WN_field_id(wn);
      UINT32 new_field_id = field_map_info[id-1].new_field_id;
      if (id == candidate_fld_id && field_id == 2)
        new_field_id++;

      UINT cur_field_id = 0;
      FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
                                         new_field_id, cur_field_id);
      FmtAssert (!fld.Is_Null(), ("Field not found"));
      WN_set_field_id(wn, new_field_id);
      WN_offset(wn) = FLD_ofst(fld);
    }
    else if (TY_IDX_index(WN_ty(wn)) == candidate_ty_idx && WN_field_id(wn))
    {
      INT field_id = WN_field_id(wn);
      TY_IDX ty = Struct_field_layout[field_id-1].u.new_ty;
      INT field_num = 0;

      if (TY_kind(ty) == KIND_STRUCT)
        field_num = Struct_field_layout[field_id-1].fld_id;

      // adjust type size if present
      if (WN_operator(WN_kid0(wn)) == OPR_ADD &&
          WN_operator(WN_kid1(WN_kid0(wn))) == OPR_MPY)
      {
        WN * size = WN_kid1(WN_kid1(WN_kid0(wn)));
        FmtAssert (WN_operator(size) == OPR_INTCONST &&
                   WN_const_val(size) == TY_size(Ty_tab[candidate_ty_idx]),
                   ("Error while updating type size under iload"));
        WN_const_val(size) = TY_size(ty);
      }

      WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), 0, ty, addr, field_num);
      WN_Delete(wn);
    }
  }
  else if (WN_operator(wn) == OPR_LDID &&
           (lhs ||
            IPA_Enable_Struct_Opt == 2) && // lhs of istore?
           TY_kind(WN_ty(wn)) == KIND_POINTER &&
           TY_IDX_index(TY_pointed(WN_ty(wn))) == candidate_ty_idx)
  {
    ST * base_st = fld_st[field_id - 1];
    TY_IDX ty = Struct_field_layout[field_id - 1].u.new_ty;

    if (IPA_Enable_Struct_Opt == 2 &&
        ST_class(WN_st(wn)) == CLASS_VAR &&
        Is_Global_Symbol(WN_st(wn)))
      base_st = &St_Table[Struct_field_layout[field_id - 1].st_idx];

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
  if (TY_IDX_index(TY_pointed(WN_ty(wn))) == candidate_ty_idx &&
      WN_field_id(wn))
  {
    WN * addr = WN_kid1(wn);
    const INT field_id = WN_field_id(wn);

    TY_IDX ty = Struct_field_layout[field_id - 1].u.new_ty;

    // Update the type size.
    if (WN_operator(addr) == OPR_ADD && WN_operator(WN_kid1(addr)) == OPR_MPY)
    {
      WN * size = WN_kid1(WN_kid1(addr));
      FmtAssert (WN_operator(size) == OPR_INTCONST &&
                 WN_const_val(size) == TY_size(Ty_tab[candidate_ty_idx]),
                 ("Error while updating type size under istore"));
      WN_const_val(size) = TY_size(ty);
    }
    if (TY_kind(ty) == KIND_STRUCT)
      WN_set_field_id(wn, Struct_field_layout[field_id - 1].fld_id);
    else
      WN_set_field_id(wn, 0);
    WN_offset(wn) = 0;
    WN_set_ty(wn, Make_Pointer_Type(ty));
  }
  else if (TY_IDX_index(TY_pointed(WN_ty(wn))) == Struct_update_index &&
           // check if loading the whole struct or a field from it.
           WN_field_id(wn))
  {
    UINT field_id = WN_field_id(wn);
    if (field_id != candidate_fld_id)
    {
      UINT new_field_id = field_map_info[field_id-1].new_field_id;
      UINT cur_field_id = 0;
      FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
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

// Analyze the expression containing the pointer to TY-being-split.
// WN is KIDID'th kid of PARENT.
WN * analyze_addressof_ty_being_split (WN * parent, WN * wn, WN * addr,
                                       INT kidid)
{
  Is_True (WN_operator(wn) == OPR_ILOAD && TY_IDX_index(WN_ty(wn)) == candidate_ty_idx,
           ("Expected ILOAD through pointer to TY being split"));

  FLD_HANDLE fld1 = TY_fld(Ty_tab[candidate_ty_idx]);
  FLD_HANDLE fld2 = FLD_next(fld1);

  switch (WN_operator(addr))
  {
    case OPR_LDID:
    {
      // Addr is a pointer to the TY being split, so update the LDID symbol
      // and any offset present in the iload.
      WN_OFFSET ofst = 0;
      TY_IDX ty = TY_IDX_ZERO;
      ST * base_st = NULL;
      if (WN_field_id(wn) == 1)
      {
        ofst = FLD_ofst(fld1);
        ty = FLD_type(fld1);
        base_st = fld_st[0];
      }
      else
      {
        Is_True (WN_field_id(wn) == 2, ("Unexpected field id"));
        ofst = FLD_ofst(fld2);
        ty = FLD_type(fld2);
        base_st = fld_st[1];
      }
      INT index = (WN_load_offset(wn)-ofst) / TY_size(Ty_tab[candidate_ty_idx]);
      WN * base = WN_Ldid(WN_desc(addr), 0, base_st, Make_Pointer_Type(ty));
      WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), index*TY_size(ty), ty, base);
      // delete old address expression
      WN_DELETE_Tree(wn);
      wn = WN_kid(parent, kidid);
    }
    break;

    case OPR_ADD:
    {
      WN * base = WN_kid0(addr);
      WN * ofst = WN_kid1(addr);

      FmtAssert (WN_operator(ofst) == OPR_MPY, ("Unexpected offset expression"));
      if (WN_operator(base) == OPR_LDID &&
          TY_IDX_index(WN_ty(base)) == Struct_update_index)
      {
        // Loading a struct that needs update because one of its fields is
        // a pointer to the type being split. Field-id gives the field being
        // loaded, and must be a pointer to candidate_ty_idx.
        TY_IDX ty = TY_IDX_ZERO;
        UINT32 field_id = field_map_info[WN_field_id(base)-1].new_field_id;
        if (WN_field_id(wn) == 1)
        {
          ty = Struct_split_types[0];
        }
        else
        {
          ty = Struct_split_types[1];
          field_id++;
        }
        UINT cur_field_id = 0;
        FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
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
        WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), load_ofst, ty, addr);
        WN_Delete(wn);
        wn = WN_kid(parent, kidid);
      }
      else if (WN_operator(base) == OPR_LDID)
      {
        const INT field_id = WN_field_id(wn);
        ST * base_st = fld_st[field_id - 1];
        TY_IDX ty = Struct_field_layout[field_id - 1].u.new_ty;

        if (IPA_Enable_Struct_Opt == 2 &&
            ST_class(WN_st(base)) == CLASS_VAR &&
            Is_Global_Symbol(WN_st(base)))
          base_st = &St_Table[Struct_field_layout[field_id - 1].st_idx];

        // update offset
        WN * size = WN_kid1(ofst);
        FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
        WN_const_val(size) = TY_size(ty);
        // update base
        WN_kid0(addr) = WN_Ldid(WN_desc(base), 0, base_st, Make_Pointer_Type(ty));
        WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), 0, ty, addr);
        // delete old base ptr
        WN_DELETE_Tree(base);
        WN_Delete(wn);
        wn = WN_kid(parent, kidid);
      }
      else
      {
        TY_IDX ty = Struct_field_layout[WN_field_id(wn) - 1].u.new_ty;
        // update offset
        WN * size = WN_kid1(ofst);
        FmtAssert (WN_operator(size) == OPR_INTCONST, ("NYI"));
        WN_const_val(size) = TY_size(ty);
        WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), 0, ty, addr);
        WN_Delete(wn);
        wn = WN_kid(parent, kidid);
      }
    }
    break;

    case OPR_ILOAD:
      if (TY_IDX_index(WN_ty(addr)) == Struct_update_index)
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
        INT index = (WN_load_offset(wn)-ofst) / TY_size(Ty_tab[candidate_ty_idx]);
        WN_kid(parent, kidid) = WN_Iload(WN_desc(wn), index*TY_size(ty), ty, addr, 0);
        // delete old kid
        WN_Delete(wn);
        wn = WN_kid(parent, kidid);
      }
      break;

    default: Fail_FmtAssertion ("NYI");
  }

  return wn;
}

void handle_compare (WN * g)
{
  if (preg_id == 0)
    return;

  WN * p = WN_kid0(g);
  WN * w = WN_kid0(p);

  Is_True (WN_operator(w) == OPR_LDID, (""));

  ST * sym = WN_st(w);

  if (ST_class(sym) != CLASS_PREG ||
      WN_offset(w) != preg_id)
    return;

  // TODO: generalize
  if (WN_operator(p) != OPR_EQ)
    Fail_FmtAssertion ("NYI");

  WN * kid1 = WN_kid1(p);
  Is_True (kid1 != w, (""));

  if (WN_operator(kid1) != OPR_INTCONST ||
      WN_const_val(kid1) != 0)
    return;

  WN * sym1 = WN_Ldid(WN_desc(w), 0, fld_st[0], ST_type(fld_st[0]));
  WN * sym2 = WN_Ldid(WN_desc(w), 0, fld_st[1], ST_type(fld_st[1]));

  WN * cond = WN_CIOR(WN_EQ(WN_desc(p), sym1, WN_Intconst(MTYPE_U4, 0)),
                      WN_EQ(WN_desc(p), sym2, WN_Intconst(MTYPE_U4, 0)));

  for (INT id=0; id<WN_kid_count(g); id++)
    if (WN_kid(g,id) == p)
    {
      WN_kid(g,id) = cond;
      break;
    }

  WN_DELETE_Tree(p);
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
      if (TY_IDX_index(WN_ty(wn)) == Struct_update_index && WN_field_id(wn))
      {
        // We are storing into object of type struct that is being
        // updated, check what field is being accessed.
        if (WN_field_id(wn) != candidate_fld_id)
        { // update the field id
          UINT32 field_id = WN_field_id(wn);
          UINT32 new_field_id = field_map_info[field_id-1].new_field_id;
          UINT cur_field_id = 0;
          FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
                                           new_field_id, cur_field_id);
          FmtAssert (!fld.Is_Null(), ("Field not found"));
          WN_set_field_id(wn, new_field_id);
          WN_offset(wn) = FLD_ofst(fld);
        }
      }
    }
    break;

    case OPR_IF:
    {
      // If there is a conditional checking the return value from a
      // memory allocation routine for NULL, we need to update the check.
      // At this point, we just assume this is such a conditional.
      WN * test = WN_if_test(wn);

      if (WN_operator(test) == OPR_EQ &&
          WN_operator(WN_kid0(test)) == OPR_LDID)
      {
        TY_IDX ty = WN_ty(WN_kid0(test));
        if (TY_kind(ty) == KIND_POINTER &&
            TY_IDX_index(TY_pointed(ty)) == candidate_ty_idx)
          handle_compare (wn);
      }
    }
    break;

    case OPR_LDID:
    {
      TY_IDX ty = WN_ty(wn);
      if (TY_kind(ty) == KIND_POINTER &&
          TY_IDX_index(TY_pointed(ty)) == candidate_ty_idx)
      {
        if (WN_st(wn) == Return_Val_Preg)
          handle_function_return (block, parent);
        else if (WN_operator(parent) == OPR_STID) //&&
                // TY_IDX_index(WN_ty(parent)) == Struct_update_index)
          handle_assignment (block, parent);
        else if (WN_operator(parent) == OPR_ISTORE)
        {
          Fail_FmtAssertion ("Should not reach here");
          //handle_istore_assignment(block, parent, wn, kidid);
        }
      }
      else if (TY_IDX_index(ty) == Struct_update_index)
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
          FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
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
      if (TY_IDX_index(WN_ty(wn)) == candidate_ty_idx)
      { // ILOAD <TY-being-split> <pointer-to-TY-being-split>
        wn = analyze_addressof_ty_being_split (parent, wn, WN_kid0(wn), kidid);
      }
      else if (TY_IDX_index(WN_ty(wn)) == Struct_update_index && WN_field_id(wn))
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
              TY_IDX_index(WN_ty(addr)) == candidate_ty_idx &&
              WN_field_id(addr) == 2)
            new_field_id++;
          else
          {
            addr = WN_operator(parent) == OPR_ISTORE ? parent :
                   WN_operator(grandparent) == OPR_ISTORE ? grandparent :
                   NULL;
            if (addr &&
                TY_IDX_index(TY_pointed(WN_ty(addr))) == candidate_ty_idx &&
                WN_field_id(addr) == 2)
              new_field_id++;
          }
          UINT cur_field_id = 0;
          FLD_HANDLE fld = FLD_get_to_field (Struct_update_index<<8,
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
            TY_IDX_index(TY_pointed(WN_ty(arg))) == candidate_ty_idx)
          wn = handle_function_call (parent, wn);
      }
    }
    break;

    default: break;
  }

  return wn;
}

extern INT struct_field_count(TY_IDX);
static BOOL new_types_created = FALSE;

void IPO_generate_new_types (mUINT32 ty)
{
  TY_IDX orig_ty = ty << 8;
  new_types_created = TRUE;

  INT field_count = struct_field_count (orig_ty);

  INT idx = 0;
  INT type_count = 0;

  while (idx < field_count)
  {
    const INT struct_id = Struct_field_layout[idx].u.struct_id;
    BOOL create_new_ty = TRUE;
    FLD_HANDLE last_fld = FLD_HANDLE();
    INT offset = 0;
    TY_IDX new_ty = TY_IDX_ZERO;

    // Get the current field from the original struct that is to be
    // inserted first in the new struct, or to be handled as a separate
    // field by itself.
    UINT cur_field_id = 0;
    FLD_HANDLE orig = FLD_get_to_field (orig_ty, idx+1, cur_field_id);

    for (INT i=idx+1; i<field_count; i++)
    {
      if (struct_id == Struct_field_layout[i].u.struct_id)
      {
        // Got multiple fields together, so create a struct TY if not
        // already done.
        if (create_new_ty)
        {
          // Create first field
          FLD_HANDLE fld = New_FLD();
          memcpy (fld.Entry(), orig.Entry(), sizeof(FLD));
          Is_True (offset == 0, ("First field should have offset zero"));
          Set_FLD_ofst (fld, offset);
          offset += TY_size(FLD_type(fld));
          // Create new struct TY
          // The name of the new type ends in a number which is the
          // field-id of the field in the original struct (this number
          // is just for readability purposes).
          TY_Init (New_TY(new_ty), sizeof(int) /* dummy size */,
                   KIND_STRUCT, MTYPE_M,
                   Save_Str2i(TY_name(orig_ty), "..", idx+1));
          Set_TY_fld(new_ty, fld);
          create_new_ty = FALSE;
        }
        cur_field_id = 0;
        orig = FLD_get_to_field (orig_ty, i+1, cur_field_id);
        // Create current field
        FLD_HANDLE fld = New_FLD();
        memcpy (fld.Entry(), orig.Entry(), sizeof(FLD));
        INT align = TY_align(FLD_type(fld));
        offset = (INT)ceil(((double)offset)/align)*align;
        Set_FLD_ofst (fld, offset);
        offset += TY_size(FLD_type(fld));
        last_fld = fld; // last field in new struct
      }
    }

    if (create_new_ty)
    {
      // New struct TY has not been created. So this will be a single field
      // by itself.
      new_ty = FLD_type(orig);
    }
    else
    {
      // Struct TY
      Is_True (new_ty != TY_IDX_ZERO, (""));
      Is_True (TY_kind(new_ty) == KIND_STRUCT, (""));
      Is_True (!last_fld.Is_Null(), (""));
      Set_FLD_last_field (last_fld);
      Set_TY_size (new_ty, offset);
    }

    ST * st = NULL;
    if (IPA_Enable_Struct_Opt == 2)
    {
      st = New_ST(GLOBAL_SYMTAB);
      ST_Init (st, Save_Str2i("aa", "..", idx), CLASS_VAR, SCLASS_COMMON, EXPORT_PREEMPTIBLE, Make_Pointer_Type(new_ty));
    }

    while (idx < field_count &&
           struct_id == Struct_field_layout[idx].u.struct_id)
    {
      if (IPA_Enable_Struct_Opt == 2)
        Struct_field_layout[idx].st_idx = ST_st_idx(st);
      Struct_field_layout[idx++].u.new_ty = new_ty;
    }

    Struct_split_types[type_count++] = new_ty;
  }

  FmtAssert (type_count == Struct_split_count, (""));
  Struct_split_types[type_count] = TY_IDX_ZERO;
}

static BOOL fld_table_updated = FALSE;

// Update field table before whirl update.
void IPO_Fld_Table_Update_For_Struct_Opt (mUINT32 ty)
{
  fld_table_updated = TRUE;

  mUINT32 old_field_id, new_field_id;
  WN_OFFSET old_ofst, new_ofst;

  old_field_id = new_field_id = 1;
  old_ofst = new_ofst = 0;

  FmtAssert (TY_kind(Ty_tab[ty]) == KIND_STRUCT, ("struct type expected"));

  FLD_ITER fld_iter = Make_fld_iter(TY_fld(Ty_tab[ty]));
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

  fld_iter = Make_fld_iter(TY_fld(Ty_tab[ty]));
  do
  {
    FLD_HANDLE fld(fld_iter);
    FLD_HANDLE new_fld = New_FLD();

    field_map_info[old_field_id-1].old_field_id = old_field_id;
    field_map_info[old_field_id-1].new_field_id = new_field_id;

    if (TY_kind(FLD_type(fld)) == KIND_POINTER &&
        TY_IDX_index(TY_pointed(FLD_type(fld))) == candidate_ty_idx)
    {
      FmtAssert (!child_flattened, ("Unexpected struct-type field"));
      FmtAssert (old_field_id == new_field_id, ("Field update error"));
      candidate_fld_id = old_field_id;
      child_flattened = TRUE;
      UINT32 ofst = FLD_ofst(fld);
      FmtAssert (TY_kind(Ty_tab[candidate_ty_idx]) == KIND_STRUCT, ("struct expected"));
      FLD_HANDLE nested = TY_fld(Ty_tab[candidate_ty_idx]);
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

  Ty_tab[ty].Set_fld(first_fld_idx);
  Set_TY_size(Ty_tab[ty], TY_size(Ty_tab[ty])+Pointer_Size);
  Set_FLD_last_field(last_field);
}

// Top level routine for optimization
void IPO_WN_Update_For_Struct_Opt (IPA_NODE * node)
{
  if (IPA_Update_Struct)
  {
    // This option will soon be removed, and is kept as a workaround that
    // the user can use to specify the 2 type IDs.
    Struct_split_candidate_index = IPA_Enable_Struct_Opt;
    Struct_update_index = IPA_Update_Struct;
  }

  if (!Struct_split_candidate_index)
    return;

  WN * tree = node->Whirl_Tree();
  preg_id = 0;
  FmtAssert (tree, ("Null whirl tree"));

  PU_Parent_Map = node->Parent_Map();
  PU_Map_Tab = node->Map_Table();

  // Map callsites now before we introduce any new calls. If any new
  // calls are introduced here, they are guaranteed to not require any
  // new edge.
  IPA_Call_Graph->Map_Callsites(node);

  // parentize before
  WN_Parentize(tree, PU_Parent_Map, PU_Map_Tab);
  candidate_ty_idx = Struct_split_candidate_index;
  // Assign candidate_ty_idx here.
  FmtAssert (candidate_ty_idx != 0, ("No TY to optimize"));
  if (Struct_update_index && !fld_table_updated)
    IPO_Fld_Table_Update_For_Struct_Opt (Struct_update_index);

  if (!new_types_created)
    IPO_generate_new_types (Struct_split_candidate_index);
  traverse_wn_tree (NULL, NULL, tree, WN_func_body(tree), 0);
  // parentize after
  WN_Parentize(tree, PU_Parent_Map, PU_Map_Tab);
}
