/*
 * Copyright 2002, 2003, 2004 PathScale, Inc.  All Rights Reserved.
 */

/*

  Copyright (C) 2000, 2001 Silicon Graphics, Inc.  All Rights Reserved.

  This program is free software; you can redistribute it and/or modify it
  under the terms of version 2 of the GNU General Public License as
  published by the Free Software Foundation.

  This program is distributed in the hope that it would be useful, but
  WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  

  Further, this software is distributed without any warranty that it is
  free of the rightful claim of any third person regarding infringement 
  or the like.  Any license provided herein, whether implied or 
  otherwise, applies only to this software file.  Patent licenses, if 
  any, provided herein do not apply to combinations of this program with 
  other software, or any other product whatsoever.  

  You should have received a copy of the GNU General Public License along
  with this program; if not, write the Free Software Foundation, Inc., 59
  Temple Place - Suite 330, Boston MA 02111-1307, USA.

  Contact information:  Silicon Graphics, Inc., 1600 Amphitheatre Pky,
  Mountain View, CA 94043, or:

  http://www.sgi.com

  For further information regarding this notice, see:

  http://oss.sgi.com/projects/GenInfo/NoticeExplan

*/


/* CGEXP routines for loads and stores */
#include <elf.h>
#include <vector>
#include "defs.h"
#include "em_elf.h"
#include "erglob.h"
#include "ercg.h"
#include "tracing.h"
#include "config.h"
#include "config_TARG.h"
#include "config_debug.h"
#include "xstats.h"
#include "topcode.h"
#include "tn.h"
#include "cg_flags.h"
#include "targ_isa_lits.h"
#include "op.h"
#include "stblock.h"
#include "data_layout.h"
#include "strtab.h"
#include "symtab.h"
#include "cg.h"
#include "cgexp.h"
#include "cgexp_internals.h"
#include "cgemit.h"	// for CG_emit_non_gas_syntax

#define OFFSET_HI(offset) ((((offset) + 0x8000) >> 16) << 16)
#define OFFSET_LO(offset) ((((offset) + 0x8000) & 0xffff) - 0x8000)

void
Expand_Lda (TN *dest, TN *src, OPS *ops)
{
  FmtAssert(FALSE, ("NYI: Expand_Lda"));
}

static TOP
Pick_Load_Instruction (TYPE_ID rtype, TYPE_ID desc, TN *base)
{

  if (base == SP_TN) {
    switch (desc) {
    case MTYPE_I1:		return TOP_ldbsp3;
    case MTYPE_I2:		return TOP_ldhsp3;
    case MTYPE_I4:		return TOP_ldwsp3;
    default :    Is_True(0,("double st not in isa")); 
      return TOP_UNDEFINED;
    }
  }
  if (base == GP_TN) {
    switch (desc) {
    case MTYPE_I1:		return TOP_ldwgp3;
    case MTYPE_I2:		return TOP_ldwgp3;
    case MTYPE_I4:		return TOP_ldwgp3;
    default :    Is_True(0,("double st not in isa")); 
      return TOP_UNDEFINED;
    }
  }
  switch (desc) {
  case MTYPE_I1: return TOP_ldb;
  case MTYPE_U1: Is_True(0,("unsigned ld NYI")); return TOP_UNDEFINED;
  case MTYPE_I2: return TOP_ldh;
  case MTYPE_U2: Is_True(0,("unsigned ld NYI")); return TOP_UNDEFINED;
  case MTYPE_I4: return TOP_ldw;
  case MTYPE_U4: 
    if (MTYPE_is_size_double(rtype))
      Is_True(0,("unsigned ld NYI")); 
    else
      return TOP_ldw;
    break;
  case MTYPE_I8: case MTYPE_U8:	Is_True(0,("double ld NYI")); return TOP_UNDEFINED;
#ifndef TARG_PR
  case MTYPE_F4: 			return TOP_lwc1;
  case MTYPE_F8: 			return TOP_ldc1;
    
  case MTYPE_V:
    if (rtype != MTYPE_V)
      // use rtype to pick load (e.g. if lda)
      return Pick_Load_Instruction(rtype,rtype);
    // else fallthru
#endif
  default:  
    FmtAssert(FALSE, ("NYI: Pick_Load_Instruction mtype"));
    return TOP_UNDEFINED;
  }
}

void
Expand_Load (OPCODE opcode, TN *result, TN *base, TN *ofst, OPS *ops)
{
  TYPE_ID mtype = OPCODE_desc(opcode);
  TOP top = Pick_Load_Instruction (OPCODE_rtype(opcode), mtype, base);
  Is_True (TN_is_constant(ofst), ("Expand_Load: Illegal offset TN"));
  // Handle very large offsets (that consume greater than 16 bits).
  // Try and see if the base and offset can be merged.
  // An example is gcc.c-torture/compile/990617-1.c
  if (TN_is_rematerializable(base)) {
    WN *home = TN_home(base);
    if (WN_operator(home) == OPR_INTCONST) {
      INT64 val = WN_const_val(home);
      BOOL is_double = TN_size(base) == 8;
      TN *tmp_base = Gen_Literal_TN (val + TN_value(ofst), TN_size(base));
      tmp_base = Expand_Immediate_Into_Register(tmp_base, is_double, ops);
      Build_OP (top, result, tmp_base, Gen_Literal_TN (0, 2), ops);
      return;
    }
  }
  Build_OP (top, result, base, ofst, ops);
}

static TOP
Pick_Store_Instruction (TYPE_ID mtype, TN *base)
{
  if (base == SP_TN) {
    switch (mtype) {
    case MTYPE_I1:	case MTYPE_U1:	return TOP_stbsp3;
    case MTYPE_I2:	case MTYPE_U2:	return TOP_sthsp3;
    case MTYPE_I4:	case MTYPE_U4:	return TOP_stwsp3;
    default :    Is_True(0,("double st not in isa")); 
      return TOP_UNDEFINED;
    }
  }
  if (base == GP_TN) {
    switch (mtype) {
    case MTYPE_I1:	case MTYPE_U1:	return TOP_stwgp3;
    case MTYPE_I2:	case MTYPE_U2:	return TOP_stwgp3;
    case MTYPE_I4:	case MTYPE_U4:	return TOP_stwgp3;
    default :    Is_True(0,("double st not in isa")); 
      return TOP_UNDEFINED;
    }
  }

  switch (mtype) {
  case MTYPE_I1:	case MTYPE_U1:	return TOP_stb2;
  case MTYPE_I2:	case MTYPE_U2:	return TOP_sth2;
  case MTYPE_I4:	case MTYPE_U4:	return TOP_stw2;
  case MTYPE_I8: 	case MTYPE_U8:	
    Is_True(0,("double st not in isa")); 
    return TOP_UNDEFINED;
#ifndef TARG_PR
  case MTYPE_F4: 			return TOP_swc1;
  case MTYPE_F8: 			return TOP_sdc1;
#endif
  default:  FmtAssert(FALSE, ("NYI: Pick_Store_Instruction mtype"));
    return TOP_UNDEFINED;
  }
}

void
Expand_Store (TYPE_ID mtype, TN *src, TN *base, TN *ofst, OPS *ops)
{
  TOP top = Pick_Store_Instruction (mtype,base);
  Is_True (TN_is_constant(ofst), ("Expand_Store: Illegal offset TN"));
  if (!TN_has_value(ofst) || ISA_LC_Value_In_Class(TN_value(ofst), LC_pr_i4)) {
    DevWarn("should use 2 byte form");
    Build_OP (top, src, base, ofst, ops);
  }
  else if (!TN_has_value(ofst) || ISA_LC_Value_In_Class(TN_value(ofst), LC_pr_i15))
    Build_OP (top, src, base, ofst, ops);
  else {
    Is_True(0,(">15 bit offset"));
#ifndef TARG_PR
    TN *tmp_tn = Build_TN_Of_Mtype(Pointer_Mtype);
    Build_OP(TOP_lui, tmp_tn, Gen_Literal_TN(TN_value(ofst) >> 16, 4), ops);
    Build_OP(Use_32_Bit_Pointers ? TOP_addu : TOP_daddu, tmp_tn, 
	     tmp_tn, base, ops);
    Build_OP(top, src, tmp_tn, Gen_Literal_TN(TN_value(ofst)&0xffff, 4), ops);
#endif
  }
}

static OPCODE 
OPCODE_make_signed_op(OPERATOR op, TYPE_ID rtype, TYPE_ID desc, BOOL is_signed)
{
  if (MTYPE_is_signed(rtype) != is_signed)
	rtype = MTYPE_complement(rtype);
  if (MTYPE_is_signed(desc) != is_signed)
	desc =	MTYPE_complement(desc);

  return OPCODE_make_op(op, rtype, desc);
}

/* ====================================================================
 *
 * Adjust_Addr_TNs
 *
 * We have a memory reference operation, with a base and displacement,
 * where the displacement is literal.  We want to create another memop
 * with the displacement modified by a small amount.
 *
 * WARNING:  If an add operation is required, it will be expanded here.
 *
 * ====================================================================
 */

static void
Adjust_Addr_TNs (
  TOP	opcode,		/* The new memory operation */
  TN	**base_tn,	/* The base address -- may be modified */
  TN	**disp_tn,	/* The displacement -- may be modified */
  INT16	disp,		/* A displacement to add */
  OPS *ops)
{

  if ( Potential_Immediate_TN_Expr (opcode, *disp_tn, disp) )
  {
    if ( TN_has_value(*disp_tn) ) {
      *disp_tn = Gen_Literal_TN ( TN_value(*disp_tn) + disp, 4 );
    } else {
      *disp_tn = Gen_Symbol_TN ( TN_var(*disp_tn),
				 TN_offset(*disp_tn) + disp, 0);
    }
  } else {
    TN *tmp = Build_TN_Of_Mtype (Pointer_Mtype);
    // because disp may be symbolic reloc on base,
    // want to still add it with base and create new base and disp.
    Expand_Add (tmp, *disp_tn, *base_tn, Pointer_Mtype, ops);
    *base_tn = tmp;
    *disp_tn = Gen_Literal_TN (disp, 4);
  }
}

static void
Expand_Composed_Load ( OPCODE op, TN *result, TN *base, TN *disp, VARIANT variant, OPS *ops)
{
  TYPE_ID rtype= OPCODE_rtype(op);
  TYPE_ID desc = OPCODE_desc(op);
  TN *tmp;

  FmtAssert(0,("composed load NYI"));
  if (MTYPE_is_float(rtype)) {
    TN     *load;
    Is_True(0,("pr1 isa does not support float"));
#ifndef TARG_PR
    if (rtype == MTYPE_F4) {
      load = Build_TN_Of_Mtype(MTYPE_I4);
      Expand_Composed_Load ( OPC_I4I4LDID, load, base, disp, variant, ops);
      // mtc1 moves bits into fp reg.
      Build_OP ( TOP_mtc1, result, load, ops );
    } else {
      load = Build_TN_Of_Mtype(MTYPE_I8);
      Expand_Composed_Load ( OPC_I8I8LDID, load, base, disp, variant, ops);
      Build_OP ( TOP_dmtc1, result, load, ops );
    }
    Reset_TN_is_fpu_int(result);
    return;
#endif
  }

#ifndef TARG_PR
  switch (desc) {
    case MTYPE_I8:
    case MTYPE_U8:
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_ldl : TOP_ldr,
  		result, base, disp, ops);
      // The highest byte is at effective address + 7.
      Adjust_Addr_TNs (Target_Byte_Sex == BIG_ENDIAN ? TOP_ldr : TOP_ldl,
  		      &base, &disp, 7, ops);
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_ldr : TOP_ldl,
  		result, base, disp, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      return;
    case MTYPE_I4:
    case MTYPE_U4:
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_lwl : TOP_lwr,
  		result, base, disp, ops);
      // The highest byte is at effective address + 3.
      Adjust_Addr_TNs (Target_Byte_Sex == BIG_ENDIAN ? TOP_lwr : TOP_lwl,
  		      &base, &disp, 3, ops);
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_lwr : TOP_lwl,
  		result, base, disp, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      // Clear the top 32 bits for U8U4 load.
      if ((rtype == MTYPE_U8) && (desc == MTYPE_U4)) {
	Build_OP (TOP_dsll32, result, result, Gen_Literal_TN(0, 4), ops);
	Build_OP (TOP_dsrl32, result, result, Gen_Literal_TN(0, 4), ops);
      }
      return;
    case MTYPE_I2:
    case MTYPE_U2:
      if (Target_Byte_Sex == BIG_ENDIAN) {
        Build_OP (desc == MTYPE_I2 ? TOP_lb : TOP_lbu,
		  result, base, disp, ops);
	Build_OP (TOP_sll, result, result, Gen_Literal_TN(8, 4), ops);
        // The LSB is at effective address + 1.
        Adjust_Addr_TNs (TOP_lb, &base, &disp, 1, ops);
        tmp = Build_TN_Of_Mtype(rtype);
        Build_OP (TOP_lbu, tmp, base, disp, ops);
        Build_OP (TOP_or, result, result, tmp, ops);
      } else {
        tmp = Build_TN_Of_Mtype(rtype);
        Build_OP (TOP_lbu, tmp, base, disp, ops);
        // The MSB is at effective address + 1.
        Adjust_Addr_TNs (TOP_lb, &base, &disp, 1, ops);
        Build_OP (desc == MTYPE_I2 ? TOP_lb : TOP_lbu,
		  result, base, disp, ops);
	Build_OP (TOP_sll, result, result, Gen_Literal_TN(8, 4), ops);
        Build_OP (TOP_or, result, result, tmp, ops);
      }
      return;
    default:
      FmtAssert (FALSE, ("Expand_Composed_Load: unexpected operand size\n"));
  }
#endif
}

void
Expand_Misaligned_Load ( OPCODE op, TN *result, TN *base, TN *disp, VARIANT variant, OPS *ops)
{
  Expand_Composed_Load ( op, result, base, disp, variant, ops);
}


static void
Expand_Composed_Store (TYPE_ID mtype, TN *obj, TN *base, TN *disp, VARIANT variant, OPS *ops)
{
  FmtAssert(0,("composed store NYI"));
#ifndef TARG_PR
  if (MTYPE_is_float(mtype))
  {
	TN     *tmp;

	if (mtype == MTYPE_F4)
	{
		tmp = Build_TN_Of_Mtype(MTYPE_I4);
		Build_OP ( TOP_mfc1, tmp, obj, ops );
		Expand_Composed_Store (MTYPE_I4, tmp, base, disp, variant, ops);
	}
	else
	{
		tmp = Build_TN_Of_Mtype(MTYPE_I8);
		Build_OP ( TOP_dmfc1, tmp, obj, ops );
		Expand_Composed_Store (MTYPE_I8, tmp, base, disp, variant, ops);
	}
	return;
  }

  TN *tmp;
  switch (mtype) {
    case MTYPE_I8:
    case MTYPE_U8:
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_sdl : TOP_sdr,
		obj, base, disp, ops);
      // The highest byte is at effective address + 7.
      Adjust_Addr_TNs (Target_Byte_Sex == BIG_ENDIAN ? TOP_sdr : TOP_sdl,
		      &base, &disp, 7, ops);
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_sdr : TOP_sdl,
		obj, base, disp, ops);
      return;
    case MTYPE_I4:
    case MTYPE_U4:
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_swl : TOP_swr,
		obj, base, disp, ops);
      // The highest byte is at effective address + 3.
      Adjust_Addr_TNs (Target_Byte_Sex == BIG_ENDIAN ? TOP_swr : TOP_swl,
		      &base, &disp, 3, ops);
      Build_OP (Target_Byte_Sex == BIG_ENDIAN ? TOP_swr : TOP_swl,
		obj, base, disp, ops);
      return;
    case MTYPE_I2:
    case MTYPE_U2:
      if (Target_Byte_Sex == BIG_ENDIAN) {
        tmp = Build_TN_Of_Mtype(mtype);
	Build_OP (TOP_srl, tmp, obj, Gen_Literal_TN(8, 4), ops);
        Build_OP (TOP_sb, tmp, base, disp, ops);
        // The LSB is at effective address + 1.
        Adjust_Addr_TNs (TOP_lb, &base, &disp, 1, ops);
        Build_OP (TOP_sb, obj, base, disp, ops);
      } else {
        Build_OP (TOP_sb, obj, base, disp, ops);
        // The MSB is at effective address + 1.
        Adjust_Addr_TNs (TOP_lb, &base, &disp, 1, ops);
        tmp = Build_TN_Of_Mtype(mtype);
	Build_OP (TOP_srl, tmp, obj, Gen_Literal_TN(8, 4), ops);
        Build_OP (TOP_sb, tmp, base, disp, ops);
      }
      return;
    default:
      FmtAssert (FALSE, ("Expand_Composed_Load: unexpected operand size\n"));
  }
#endif
}


void
Expand_Misaligned_Store (TYPE_ID mtype, TN *obj_tn, TN *base_tn, TN *disp_tn, VARIANT variant, OPS *ops)
{
  Expand_Composed_Store (mtype, obj_tn, base_tn, disp_tn, variant, ops);
}

BOOL Is_Stack_Used(void)
{
  return FALSE;
}

static void
Exp_Ldst (
  OPCODE opcode,
  TN *tn,
  ST *sym,
  INT64 ofst,
  BOOL indirect_call,
  BOOL is_store,
  BOOL is_load,
  OPS *ops,
  VARIANT variant)
{
  ST *base_sym;
  INT64 base_ofst;
  TN *base_tn;
  TN *ofst_tn;
  TN *tmp_tn;
  BOOL is_lda = (!is_load && !is_store);
  OPS newops;
  OP *op;
  OPS_Init(&newops);

  if (Trace_Exp2) {
    fprintf(TFile, "exp_ldst %s: ", OPCODE_name(opcode));
    if (tn) Print_TN(tn,FALSE);
    if (is_store) fprintf(TFile, " -> ");
    else fprintf(TFile, " <- ");
    if (ST_class(sym) != CLASS_CONST)
      fprintf(TFile, "%lld (%s)\n", ofst, ST_name(sym));
    else
      fprintf(TFile, "%lld ()\n", ofst);
  }
  
  Allocate_Object(sym);         /* make sure sym is allocated */
  
  Base_Symbol_And_Offset_For_Addressing (sym, ofst, &base_sym, &base_ofst);

  if (base_sym == SP_Sym || base_sym == FP_Sym) {
    base_tn = (base_sym == SP_Sym) ? SP_TN : FP_TN;
    if (sym == base_sym) {
      // can have direct reference to SP or FP,
      // e.g. if actual stored to stack.
      if (ISA_LC_Value_In_Class(base_ofst, LC_pr_i15))
	ofst_tn = Gen_Literal_TN (base_ofst, 4);
      else {
	FmtAssert(((is_store + is_load) == 1), ("exactly one is set"));
	DevWarn("long load");
	tmp_tn = Build_TN_Of_Mtype(Pointer_Mtype);
	Build_OP(TOP_movi, tmp_tn, Gen_Symbol_TN(sym, base_ofst, TN_RELOC_PR_32), &newops);
	base_tn = tmp_tn;
	ofst_tn = Zero_TN;
      }
    }
    else {
      /* Because we'd like to see symbol name in .s file, 
       * still reference the symbol rather than the sp/fp base.  
       * Do put in the offset from the symbol.  
       * We put the symbol in the TN and then
       * let cgemit replace symbol with the final offset.
       * We generate a SW reg, <sym>, <SP> rather than SW reg,<sym>
       * because cgemit and others expect a separate tn for the
       * offset and base. 
       */
      if (ISA_LC_Value_In_Class(base_ofst, LC_pr_i15))
	ofst_tn = Gen_Symbol_TN (sym, ofst, 0);
      else {
	DevWarn("long load");
	tmp_tn = Build_TN_Of_Mtype(Pointer_Mtype);
	Build_OP(TOP_movi, tmp_tn, Gen_Symbol_TN(sym, ofst, TN_RELOC_PR_32), &newops);
	base_tn = tmp_tn;
	ofst_tn = Zero_TN;
      }
    }
  }
  else if ((ST_class(base_sym) == CLASS_BLOCK || ST_class(base_sym)==CLASS_VAR)
	   && ST_gprel(base_sym)) 
    {
      // gp-relative reference
      PU_References_GP = TRUE;
      if (ISA_LC_Value_In_Class(base_ofst, LC_pr_i15)) {
	base_tn = GP_TN;
	ofst_tn = Gen_Symbol_TN (sym, ofst, TN_RELOC_PR_GPREL);
      } 
      else {
	FmtAssert(FALSE, ("gp-relative offset doesn't fit in 16 bits"));
      }
    }
  else if (! Gen_PIC_Shared) {
    DevWarn("long load");
    tmp_tn = Build_TN_Of_Mtype(Pointer_Mtype);
    Build_OP(TOP_movi, tmp_tn, Gen_Symbol_TN(sym, base_ofst, TN_RELOC_PR_32), &newops);
    base_tn = tmp_tn;
    ofst_tn = Zero_TN;
  }
  else if (Guaranteed_Small_GOT) {
    TN *tmp2;
    if (! ST_is_export_local(base_sym) &&
	! ISA_LC_Value_In_Class(base_ofst, LC_pr_i15)) { // use %got_page and %got_offset
      tmp2 = Build_TN_Of_Mtype (Pointer_Mtype); //to store loaded sym addr 
      Expand_Load (
	    // load is of address, not of result type
	    OPCODE_make_signed_op(OPR_LDID, Pointer_Mtype, Pointer_Mtype, FALSE),
	    tmp2, GP_TN, Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_GOT_PAGE), 
	    &newops);
      // got address should not alias
      Set_OP_no_alias(OPS_last(&newops));
      base_tn = tmp2;
      // add offset to address
      ofst_tn = Gen_Symbol_TN(base_sym, base_ofst, TN_RELOC_GOT_OFST);
    }
    else {
      if (is_lda && OFFSET_LO(base_ofst) == 0) {
        // want to stop at address
        tmp2 = tn;
        is_lda = FALSE;	// to save the additional add
      }
      else tmp2 = Build_TN_Of_Mtype (Pointer_Mtype); //to store loaded sym addr 
      Expand_Load (
	    // load is of address, not of result type
	    OPCODE_make_signed_op(OPR_LDID, Pointer_Mtype, Pointer_Mtype, FALSE),
	    tmp2, GP_TN, 
	    Gen_Symbol_TN(base_sym, OFFSET_HI(base_ofst), TN_RELOC_GOT_DISP), 
	    &newops);
      // got address should not alias
      Set_OP_no_alias(OPS_last(&newops));
      base_tn = tmp2;
      // add offset to address
      ofst_tn = Gen_Literal_TN(OFFSET_LO(base_ofst), 4);
    }
  }
  else {
    FmtAssert(FALSE, ("NYI: Exp_Ldst"));
  }
  
  if (is_store) {
    if (variant == 0)
      Expand_Store (OPCODE_desc(opcode), tn, base_tn, ofst_tn, &newops);
    else 
      Expand_Misaligned_Store (OPCODE_desc(opcode), tn, 
			       base_tn, ofst_tn, variant, &newops);
  }
  else if (is_load) {
    if (variant == 0)
      Expand_Load (opcode, tn, base_tn, ofst_tn, &newops);
    else 
      Expand_Misaligned_Load (opcode, tn, 
			      base_tn, ofst_tn, variant, &newops);
  }
  else if (is_lda) {
    Expand_Add (tn, ofst_tn, base_tn, OPCODE_rtype(opcode), &newops);
  }
  
  FOR_ALL_OPS_OPs (&newops, op) {
    if (is_load && ST_is_constant(sym) && OP_load(op)) {
      // If we expanded a load of a constant, 
      // nothing else can alias with the loads 
      // we have generated.
      Set_OP_no_alias(op);
    }
    if (Trace_Exp2) {
      fprintf(TFile, "exp_ldst into "); Print_OP (op);
    }
  }
  /* Add the new OPs to the end of the list passed in */
  OPS_Append_Ops(ops, &newops);
}

void Exp_Lda ( 
  TYPE_ID mtype, 
  TN *tgt_tn, 
  ST *sym, 
  INT64 ofst, 
  OPERATOR call_opr,
  OPS *ops)
{
  OPCODE opcode = OPCODE_make_op(OPR_LDA, mtype, MTYPE_V);
  Exp_Ldst (opcode, tgt_tn, sym, ofst, 
	(call_opr == OPR_ICALL),
	FALSE, FALSE, ops, 0);
}

void
Exp_Load (
  TYPE_ID rtype, 
  TYPE_ID desc, 
  TN *tgt_tn, 
  ST *sym, 
  INT64 ofst, 
  OPS *ops, 
  VARIANT variant)
{
  OPCODE opcode = OPCODE_make_op (OPR_LDID, rtype, desc);
  Exp_Ldst (opcode, tgt_tn, sym, ofst, FALSE, FALSE, TRUE, ops, variant);
}

void
Exp_Store (
  TYPE_ID mtype, 
  TN *src_tn, 
  ST *sym, 
  INT64 ofst, 
  OPS *ops, 
  VARIANT variant)
{
  OPCODE opcode = OPCODE_make_op(OPR_STID, MTYPE_V, mtype);
  Exp_Ldst (opcode, src_tn, sym, ofst, FALSE, TRUE, FALSE, ops, variant);
}


#ifndef TARG_PR
static ISA_ENUM_CLASS_VALUE
Pick_Prefetch_Hint (VARIANT variant)
{
  UINT32 pf_flags = V_pf_flags(variant);
  if (PF_GET_READ(pf_flags)) {
    if (PF_GET_STRIDE_1L(pf_flags))
      return ECV_pfhint_L1_load;
    else return ECV_pfhint_L2_load;
  }
  else {
    if (PF_GET_STRIDE_1L(pf_flags))
      return ECV_pfhint_L1_store;
    else return ECV_pfhint_L2_store;
  }
}
#endif

void Exp_Prefetch (TOP opc, TN* src1, TN* src2, VARIANT variant, OPS* ops)
{
#ifndef TARG_PR
  ISA_ENUM_CLASS_VALUE pfhint;
  FmtAssert(opc == TOP_UNDEFINED,
            ("Prefetch opcode should be selected in Exp_Prefetch"));
  pfhint = Pick_Prefetch_Hint(variant);
  Build_OP(TOP_pref, Gen_Enum_TN(pfhint), src1, src2, ops);
#else
  Is_True(0,("Pref not in ISA"));
#endif
}

/* ======================================================================
 * Exp_Extract_Bits
 * ======================================================================*/
void
Exp_Extract_Bits (TYPE_ID rtype, TYPE_ID desc, UINT bit_offset, UINT bit_size,
		  TN *tgt_tn, TN *src_tn, OPS *ops)
{
  TOP extr_op;
  if (!MTYPE_signed(rtype))
    Is_True(0,("Extr.u not supported"));
  else
    extr_op = TOP_extr;
  UINT pos =   Target_Byte_Sex == BIG_ENDIAN
	     ? MTYPE_bit_size(desc)-bit_offset-bit_size : bit_offset;
  Build_OP(extr_op, tgt_tn, True_TN, src_tn, 
	   Gen_Literal_TN(pos, 4), Gen_Literal_TN(bit_size, 4), ops);
}

/* ======================================================================
 * Exp_Deposit_Bits - deposit src2_tn into a field of src1_tn returning
 * the result in tgt_tn.
 * ======================================================================*/
void
Exp_Deposit_Bits (TYPE_ID rtype, TYPE_ID desc, UINT bit_offset, UINT bit_size,
		  TN *tgt_tn, TN *src1_tn, TN *src2_tn, OPS *ops)
{
  FmtAssert(bit_size != 0, ("size of bit field cannot be 0"));

  UINT targ_bit_offset = bit_offset;
  if (Target_Byte_Sex == BIG_ENDIAN) {
    targ_bit_offset = MTYPE_bit_size(desc) - bit_offset - bit_size;
  }
  if (bit_size <= 16) {
    Build_OP(TOP_dep, tgt_tn, src2_tn, src1_tn,
	     Gen_Literal_TN(targ_bit_offset, 4), Gen_Literal_TN(bit_size, 4), ops);
  }
  // bit_size > 16 requires 3 instructions
  TN *tmp1_tn = Build_TN_Like (src1_tn);
  TN *tmp2_tn = Build_TN_Like (src1_tn);
  Build_OP(TOP_depi, tmp1_tn, True_TN, Gen_Literal_TN(0, 4), src1_tn,
	   Gen_Literal_TN(targ_bit_offset, 4), Gen_Literal_TN(bit_size, 4), ops);
  DevWarn(("Dep_z not supported?"));
  Build_OP(TOP_dep, tmp2_tn, True_TN, src2_tn,
	   Gen_Literal_TN(targ_bit_offset, 4), Gen_Literal_TN(bit_size, 4), ops);
  Build_OP(TOP_or3, tgt_tn, True_TN, tmp1_tn, tmp2_tn, ops);
}

void 
Expand_Lda_Label (TN *dest, TN *lab, OPS *ops)
{
  Set_TN_is_reloc_got_disp(lab);
  if (Use_32_Bit_Pointers)
    Build_OP(TOP_ldw, dest, GP_TN, lab, ops);
  else {
    Is_True(0,("pr1 isa not support long data"));
    //Build_OP(TOP_ld, dest, GP_TN, lab, ops);
  }
}
