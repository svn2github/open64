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


/* ====================================================================
 * ====================================================================
 *
 * Module: expand.c
 * $Revision: 1.28 $
 * $Date: 2006/05/17 06:58:34 $
 * $Author: weitang $
 * $Source: /depot/CVSROOT/javi/src/sw/cmplr/be/cg/MIPS/expand.cxx,v $
 *
 * Description:
 *
 * This file contains the internals of code expansion. Its interface
 * is 'Exp_OP', which takes an OP, expands it into a list of OPs which
 * are appended to the oplist passed in.
 *
 * It handles all the macro expansions, special handling during 
 * expansion and all the nitty gritty stuff that goes along with it.
 *
 * ====================================================================
 * ====================================================================
 */

#define __STDC_LIMIT_MACROS
#include <stdint.h>
#include "defs.h"
#include "config.h"
#include "erglob.h"
#include "ercg.h"
#include "glob.h"
#include "tracing.h"
#include "util.h"

#include "tn.h"
#include "cg_flags.h"
#include "bb.h"
#include "symtab.h"
#include "opcode.h"
#include "const.h"	/* needed to manipulate target/host consts */
#include "targ_const.h"	/* needed to manipulate target/host consts */
#include "op.h"
#include "data_layout.h"
#include "stblock.h"
#include "cgexp.h"
#include "cgexp_internals.h"
#include "w2op.h"
#include "label_util.h"
#include "cgtarget.h"
#include "whirl2ops.h"
#include "targ_sim.h"   /* To generate stores of param registers in builtin_apply_args */
#ifdef TARG_SL
#include "exp_intrn_info.h"
#include "exp_slintrn.h"
#include "printsrc.h" /* print source line for debugging */ 
extern void Set_OP_To_WN_Map(WN *wn);
#endif 

/* HD - for Build_LUT_Insn, I include the following */
#include <iostream>
#include <vector>
#include <stdlib.h>
#include <strings.h>
#include <map>
#include <fstream>
#include <string>
#include <ctype.h>
#include "glob.h"
#include "lib_phase_dir.h"

BOOL Reuse_Temp_TNs = FALSE;

BOOL Trace_Exp2 = FALSE;      /* extra cgexp trace*/

/* Disable conversion of constant integer multiplies into shift/adds:*/
static BOOL Disable_Const_Mult_Opt = FALSE;

/* Dup_TN won't dup a dedicated tn, but for our purposes we
 * can just re-use the dedicated tn.  Don't want to re-use a
 * symbolic tn or it will mess up live ranges. */
/* DOESN'T WORK:  causes problems in Create_lvs because it causes
 * a use of a parm reg at the call-site, so it looks like the
 * parm-reg is incoming at the call?  This probably should work,
 * but for now we can use other routine that create a real dup tn. */
#define DUP_TN(tn)	Dup_TN_Even_If_Dedicated(tn)

void
Expand_Copy (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  if (MTYPE_is_float(mtype))
    Build_OP (MTYPE_is_size_double(mtype)?TOP_mov_d: TOP_mov_s, 
	      result, src, ops);
  else
    Build_OP(TOP_or, result, src, Zero_TN, ops);            
    Set_OP_copy (OPS_last(ops));
}

//
//  Helper routine to do proper sign extension
//
static void
Fixup_32_Bit_Op(TN *result,TN *src, TYPE_ID dest_type, OPS *ops)
{
  if (dest_type == MTYPE_I8 || dest_type == MTYPE_U8) {
    Expand_Copy(result,src,dest_type,ops);
  } else {
    Expand_Convert_Length (result, src, Gen_Literal_TN(MTYPE_size_reg(dest_type), 4),
			   dest_type, MTYPE_is_signed(dest_type),ops);
  }
}

/* ====================================================================
 *
 * Expand_Convert_Length
 *
 * Generate code to expand an xCVTL operator.  The code generated is a
 * left shift to put the upper bit to be kept in the high bit of the
 * word or double-word, followed by a right shift back to either sign-
 * or zero-extend it as requested.
 *
 * ====================================================================
 */

void
Expand_Convert_Length ( TN *dest, TN *src, TN *length_tn, TYPE_ID mtype, BOOL signed_extension, OPS *ops)
{
	  TN *lit_tn;
	  FmtAssert (! MTYPE_float(mtype), ("Expand_Convert_Length: illegal data type\n"));
	  FmtAssert (TN_has_value(length_tn), ("Expand_Convert_Length: non-constant length\n"));
	  UINT64 val = TN_value(length_tn);
	  if (val <= 16 && ! signed_extension) 
            Build_OP(TOP_andi, dest, src, Gen_Literal_TN((1 << val) - 1, 4), ops);  
	  else if (MTYPE_is_size_double(mtype) || val == 32) {
	    if (val > 32) {
#if defined(TARG_SL)
	      Is_True(0,("generating 64 bit opcode %lld", val));
#endif
	    	TN *tmp = Build_TN_Of_Mtype(mtype);
	    	lit_tn = Gen_Literal_TN(64 - val, 4);
	   		Build_OP(TOP_dsll, tmp, src, lit_tn, ops);
	    	Build_OP(signed_extension ? TOP_dsra : TOP_dsrl, dest, tmp, lit_tn, ops);
	  	}
	 	else {
	 			if(Pointer_Size==8) {
			  	TN *tmp = Build_TN_Of_Mtype(mtype);
		    	lit_tn = Gen_Literal_TN(32 - val, 4);
		    	Build_OP(TOP_dsll32, tmp, src, lit_tn, ops);
		    	Build_OP(signed_extension ? TOP_dsra32 : TOP_dsrl32, dest, tmp, lit_tn, ops);	    	
	 			}
	  	}
	  }
	  else {
#ifdef TARG_SL
            TN *pos_tn = Gen_Literal_TN(val - 1,  4); // pos
            TN *width_tn = Gen_Literal_TN(val, 4); // width
            Build_OP(signed_extension ? TOP_extrbs : TOP_extrbu, dest, src, pos_tn, width_tn, ops);
#else
	    TN *tmp = Build_TN_Of_Mtype(mtype);
	    lit_tn = Gen_Literal_TN(32 - val, 4);
	    Build_OP(TOP_sll, tmp, src, lit_tn, ops);
	    Build_OP(signed_extension ? TOP_sra : TOP_srl, dest, tmp, lit_tn, ops);
#endif
	  }
 // #endif
}

static void
Exp_Immediate (TN *dest, TN *src, OPS *ops)
{
  INT64 val;
  TN *tmp = Build_TN_Like(dest);
  
  if ( TN_has_value(src) ) {
    val = TN_value(src);
  }
  else if ( TN_is_symbol(src) ) {
    ST *base;
    Base_Symbol_And_Offset_For_Addressing (TN_var(src), TN_offset(src), &base, 
		    &val);
  }
  else FmtAssert(FALSE,("unexpected constant in Exp_Immediate"));

  if (TN_is_symbol(src) && TN_relocs(src) == TN_RELOC_GPSUB) {
    Build_OP(TOP_lui, tmp, 
		    Gen_Symbol_TN(TN_var(src), 0, TN_RELOC_HI_GPSUB), ops);
    Build_OP(TOP_addiu, dest, tmp, Gen_Symbol_TN(TN_var(src), 0, 
			    TN_RELOC_LO_GPSUB), ops);
  }
  else if (ISA_LC_Value_In_Class (val, LC_simm16)) {
    Build_OP (TOP_addiu, dest, Zero_TN, src, ops);
  }
  else if (ISA_LC_Value_In_Class (val, LC_uimm16)) {
    Build_OP (TOP_ori, dest, Zero_TN, src, ops);
  }
  else if (val >= INT32_MIN && val <= INT32_MAX){
#if defined(TARG_SL)
    if ((val & 0xffff) == 0) {
      Build_OP(TOP_lui, dest, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);		
    } else {
#endif
    Build_OP (TOP_lui, tmp, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);
    Build_OP (TOP_ori, dest, tmp, Gen_Literal_TN(val & 0xffff, 4), ops);
#if defined(TARG_SL)	
    }
#endif	
  }
  else if ((UINT64)val <= UINT32_MAX) {
    if (TN_size(dest) == 4)
      Build_OP (TOP_lui, tmp, Gen_Literal_TN((val >> 16) & 0xffff, 4), ops);
    else {
      Build_OP (TOP_ori, tmp, Zero_TN, 
		Gen_Literal_TN((val >> 16) & 0xffff, 4), ops);
      Build_OP (TOP_dsll, tmp, tmp, Gen_Literal_TN(16, 4), ops);
    }
    Build_OP (TOP_ori, dest, tmp, Gen_Literal_TN(val & 0xffff, 4), ops);
  }
  else {
    TCON tcon = Host_To_Targ (MTYPE_I8, val);
    ST *sym = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl(MTYPE_I8));
    Allocate_Object(sym);
#if 0 // SC temp ifdef out for now to make kvm compile throug
    FmtAssert((ST_gprel(sym)), ("sym not gp_rel: handle this"));
#endif
		if(ST_gprel(sym)) {
 			 //Build_OP(TOP_ld, dest, GP_TN, Gen_Symbol_TN(sym, 0, TN_RELOC_GPREL16), ops);			
		     Build_OP(TOP_lw, dest, GP_TN, Gen_Symbol_TN(sym, 0, TN_RELOC_GPREL16), ops);
		     DevWarn("Long Long value is not supported, constant value has been truncated");
		}
		else {
			 Build_OP (TOP_lui, tmp, Gen_Literal_TN((val >> 48) & 0xffff, 8), ops);
			 Build_OP (TOP_ori, dest, tmp, Gen_Literal_TN((val >> 32) & 0xffff, 8), ops);
			 DevWarn("Long Long value is not supported, constant value has been truncated");		 	 			 
		}
  } 
} 

void
Exp_Immediate (TN *dest, TN *src, BOOL is_signed, OPS *ops)
{
  Expand_Immediate(dest, src, is_signed, ops);
}

/* 
 * Expand Immediate value.
 */
void
Expand_Immediate (TN *dest, TN *src, BOOL is_signed, OPS *ops)
{
  FmtAssert((TN_is_constant(src)),
	    ("unexpected non-constant in Expand_Immediate"));
  FmtAssert((TN_has_value(src) || TN_is_symbol(src)), 
	    ("expected value or const in Expand_Immediate"));
  Exp_Immediate (dest, src, ops);
}

TN*
Expand_Immediate_Into_Register (TN *src, BOOL is_64bit, OPS *ops)
{
  if (TN_value(src) == 0)
    return Zero_TN;
  /* load into reg and do reg case */
  TN *tmp = Build_TN_Of_Mtype (is_64bit ? MTYPE_I8 : MTYPE_I4);
  Expand_Immediate (tmp, src, TRUE, ops);
  return tmp;
}

void
Expand_Add (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Add: illegal result size\n"));
  TOP new_opcode;
  INT64 val;
  BOOL is_64bit = MTYPE_bit_size(mtype) == 64;
  if (TN_is_constant(src1)) {
    if (TN_has_value(src1)) {
      val = TN_value(src1);
      if (val == 0) {
	Expand_Copy (result, src2, mtype, ops);
	return;
      }
    } else if ( TN_is_symbol(src1) ) {
      /* symbolic constant, gp-relative or sp-relative */
      ST *base;
      INT64 val;
      TN *tmp = Build_TN_Of_Mtype (mtype);
      Base_Symbol_And_Offset_For_Addressing (TN_var(src1), TN_offset(src1), 
					     &base, &val);
      new_opcode = is_64bit ? TOP_daddiu : TOP_addiu;
      if (ISA_LC_Value_In_Class (val, LC_simm16) || 
	  ISA_LC_Value_In_Class (val, LC_uimm16)) {
	Build_OP (new_opcode, result, src2, src1, ops);
      } else if (val >= INT32_MIN && val <= INT32_MAX) {
	Build_OP (TOP_lui, tmp, Gen_Literal_TN((val >> 16)&0xffff, 4), ops);
	Build_OP (TOP_ori, tmp, tmp, Gen_Literal_TN(val & 0xffff, 4), ops);
	Build_OP (is_64bit ? TOP_daddu : TOP_addu, result, tmp, src2, ops);
      } else {
	TCON tcon = Host_To_Targ (MTYPE_I8, val);
	ST *sym = New_Const_Sym (Enter_tcon (tcon), Be_Type_Tbl(MTYPE_I8));
	Allocate_Object(sym);
	if (Use_32_Bit_Pointers)
	  Build_OP(TOP_lw, tmp, GP_TN,
		   Gen_Symbol_TN(sym, 0, TN_RELOC_GOT_DISP), ops);
	else {
	  Build_OP(TOP_ld, tmp, GP_TN,
		   Gen_Symbol_TN(sym, 0, TN_RELOC_GOT_DISP), ops);
	}
	Build_OP(TOP_ld, tmp, tmp, Gen_Literal_TN(0, 4), ops);
	Build_OP (is_64bit ? TOP_daddu : TOP_addu, result, tmp, src2, ops);
      }       
      return;
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Add"));
    
    if (ISA_LC_Value_In_Class ( val, LC_simm16)) {
      new_opcode = is_64bit ? TOP_daddiu : TOP_addiu;
      Build_OP (new_opcode, result, src2, Gen_Literal_TN(val,4), ops);
    } else {
      src1 = Expand_Immediate_Into_Register (src1, is_64bit, ops);
      new_opcode = is_64bit ? TOP_dadd : TOP_addu;
      Build_OP (new_opcode, result, src2, src1, ops);
    }
  } else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Add (result, src2, src1, mtype, ops);
  } else {
  	Build_OP (is_64bit ? TOP_daddu : TOP_addu, result, src1, src2, ops);
  }
}

void
Expand_Sub (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Sub: illegal result size\n"));
  TOP new_opcode;
  INT64 val;
  BOOL is_64bit = MTYPE_bit_size(mtype) == 64;
  if (TN_is_constant(src2)) {
	if (TN_has_value(src2)) {
		val = - TN_value(src2);
		if (val == 0) {
			Expand_Copy (result, src1, mtype, ops);
			return;
		}
	} 
	else if ( TN_is_symbol(src2) ) {
		/* symbolic constant, gp-relative or sp-relative */
		ST *base;
		INT64 val;
		Base_Symbol_And_Offset_For_Addressing (TN_var(src2), TN_offset(src2), &base, &val);
		val = - val;
	} 
	else FmtAssert(FALSE,("unexpected constant in Expand_Sub"));

	if (ISA_LC_Value_In_Class ( val, LC_simm16)) {
		new_opcode = is_64bit ? TOP_daddiu : TOP_addiu;
		Build_OP (new_opcode, result, src1, Gen_Literal_TN(val,4), ops);
	} else {
		src2 = Expand_Immediate_Into_Register (src2, is_64bit, ops);
		new_opcode = is_64bit ? TOP_dsubu : TOP_subu;
		Build_OP (new_opcode, result, src1, src2, ops);
	}
  }
  else if (TN_is_constant(src1)) {
    TN *tmp = Build_TN_Of_Mtype (mtype);
  	// switch order of src so immediate is first
	Expand_Sub (tmp, src2, src1, mtype, ops);
	// generate a negate
	Build_OP(is_64bit ? TOP_dsubu : TOP_subu, result, Zero_TN, tmp, ops);
  } 
  else {
  	Build_OP (is_64bit ? TOP_dsubu : TOP_subu, result, src1, src2, ops);
  }
}


void
Expand_Neg (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  BOOL is_64bit = MTYPE_bit_size(mtype) == 64;
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Neg: illegal result size\n"));
  Build_OP (is_64bit ? TOP_dsubu : TOP_subu, result, Zero_TN, src, ops);
}

#ifdef TARG_SL
void
Expand_Abs (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  BOOL is_double = MTYPE_is_size_double(mtype);  	
  if (!MTYPE_is_float(mtype) && !is_double) {
    Build_OP(TOP_mc_abs, dest, src, ops);
  }
  else {
	  TN *p1 = Build_TN_Of_Mtype(MTYPE_I4);
	  BOOL is_signed = MTYPE_is_signed(mtype);
    TN *tmp = Build_TN_Of_Mtype(mtype);
    Build_OP(is_double ? TOP_dsubu : TOP_subu, tmp, Zero_TN, src, ops);
    Build_OP(is_signed?TOP_slt:TOP_sltu, p1, src, Zero_TN, ops);
    Build_OP(TOP_movn, dest, tmp, p1, ops);
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF); 
  }
}
#else
void
Expand_Abs (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  TN *p1 = Build_TN_Of_Mtype(MTYPE_I4);
  BOOL is_signed = MTYPE_is_signed(mtype);
  BOOL is_double = MTYPE_is_size_double(mtype);
  if (src != dest) {
    Build_OP(is_double ? TOP_dsubu : TOP_subu, dest, Zero_TN, src, ops);
    Build_OP(is_signed?TOP_slt:TOP_sltu, p1, src, Zero_TN, ops);
    Build_OP(TOP_movz, dest, src, p1, ops);
  }
  else {
    TN *tmp = Build_TN_Of_Mtype(mtype);
    Build_OP(is_double ? TOP_dsubu : TOP_subu, tmp, Zero_TN, src, ops);
    Build_OP(is_signed?TOP_slt:TOP_sltu, p1, src, Zero_TN, ops);
    Build_OP(TOP_movn, dest, tmp, p1, ops);
  }
  Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_UNC_DEF);      
}
#endif

void
Expand_Shift (TN *result, TN *src1, TN *src2, TYPE_ID mtype, SHIFT_DIRECTION kind, OPS *ops)
{
  WN *tree;
  TOP top;  
  BOOL is_64bit = MTYPE_is_size_double(mtype);

#if defined(TARG_SL)
  // workaround for vla where we generate 64 bit inst from gcc
  if (is_64bit) {
    DevWarn("Shift result type is 64 bit, fixing to 32 bits");
    is_64bit = FALSE;
  }
#endif

  if (TN_is_constant(src1))
    src1 = Expand_Immediate_Into_Register(src1, MTYPE_is_size_double(mtype), ops);
  if (TN_has_value(src2)) {
    // In mips, only the low log2(wordsize) bits of the shift count are used. 
    UINT64 val = TN_value(src2);
    switch (kind) {
    case shift_left:
      if (! is_64bit)
	top = TOP_sll;
      else if (val < 32) 
	top = TOP_dsll;
      else top = TOP_dsll32;
      break;
    case shift_aright:
      if (! is_64bit)
	top = TOP_sra;
      else if (val < 32) 
	top = TOP_dsra;
      else top = TOP_dsra32;
      break;
    case shift_lright:
      if (! is_64bit)
	top = TOP_srl;
      else if (val < 32) 
	top = TOP_dsrl;
      else top = TOP_dsrl32;
      break;
    }
    Build_OP(top, result, src1, Gen_Literal_TN(val & 31, 4), ops);
  }
  else {
    switch (kind) {
    case shift_left:
      top = is_64bit ? TOP_dsllv : TOP_sllv;
      break;
  
    case shift_aright:
      top = is_64bit ? TOP_dsrav : TOP_srav;
      break;
  
    case shift_lright:
      top = is_64bit ? TOP_dsrlv : TOP_srlv;
      break;
    }
    Build_OP(top, result, src1, src2, ops);
  }
}

inline void
Expand_G_To_F (TN *ftn, TN *gtn, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }

inline void
Expand_F_To_G (TN *gtn, TN *ftn, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


/*
 *
 * Helper routine for Expand_Small_Multiply
 *
 */
static void shladd(TN *r, TN *x1, INT s, TN *x2, OPS *ops)
{
  FmtAssert(s <= 31,("shladd: shift amount too large: %d",s));
  if (x2 == Zero_TN) {
    Build_OP(TN_size(r) == 8 ? TOP_dsll : TOP_sll, r, x1, Gen_Literal_TN(s, 4),
	     ops);
  }
  else {
    TN *tmp_tn = Build_TN_Like(r);
    if (TN_size(r) == 8) {
      Build_OP(TOP_dsll, tmp_tn, x1, Gen_Literal_TN(s, 4), ops);
      Build_OP(TOP_daddu, r, tmp_tn, x2, ops);
    } else {
      Build_OP(TOP_sll, tmp_tn, x1, Gen_Literal_TN(s, 4), ops);
      Build_OP(TOP_addu, r, tmp_tn, x2, ops);
    }
  }
}


/*
 * Expand_Small_Multiply produces an optimized expansion of 
 * multiplication by any constant between -1 and 63. Multiplication is done for 64
 * bit quantities only. 
 *
 */
static void
Expand_Small_Multiply(TN *r,  // result
		      TN *x,  // source
		      INT16 val, // multiplicand
		      OPS * ops) // place to put the ops
{
  TN *r1;
  TN *r2; // Temps
  TN *Z=Zero_TN; // Makes it a little easier to write

#define ONE_TEMP r1=Build_TN_Like(r)
#define TWO_TEMPS ONE_TEMP; r2=Build_TN_Like(r)

  // Although ugly, a big case statement is I think the best way to express this
  switch (val) {
   case -1:
     Expand_Neg(r,x,MTYPE_I8,ops);
     break;
   case 0:
     Expand_Copy (r, Z, MTYPE_I8, ops);
     break;
   case  1 :
     Expand_Copy (r, x, MTYPE_I8, ops);
     break;
   case  2 :
     shladd(r,x,1,Z,ops);
     break;
   case  3 :
     shladd(r,x,1,x,ops);
     break;
   case  4 :
     shladd(r,x,2,Z,ops);
     break;
   case  5 :
     shladd(r,x,2,x,ops);
     break;
   case  6:
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  7 :
     ONE_TEMP;
     shladd(r1,x,1,x,ops);
     shladd(r,r1,1,x,ops);
     break;
   case  8 :
     shladd(r,x,3,Z,ops);
     break;
   case  9 :
     shladd(r,x,3,x,ops);
     break;
   case  10 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  11 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     shladd(r,x,1,r1,ops);
     break;
   case  12 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,4,ops);
     break;
   case  13 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     shladd(r,x,3,r1,ops);
     break;
   case  14 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r2,x,9,ops);
     Expand_Add(r,r1,r2,MTYPE_I8,ops);
     break;
   case  15 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,5,ops);
     break;
   case  16 :
     shladd(r,x,4,Z,ops);
     break;
   case  17 :
     shladd(r,x,4,x,ops);
     break;
   case  18 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  19 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     shladd(r,r1,1,x,ops);
     break;
   case  20 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r,r1,4,ops);
     break;
   case  21 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     shladd(r,x,4,r1,ops);
     break;
   case  22 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r2,x,5,ops);
     Expand_Add(r,r1,r2,MTYPE_I8,ops);
     break;
   case  23 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r2,x,3,ops);
     shladd(r,r2,1,r1,ops);
     break;
   case  24 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,8,ops);
     break;
   case  25 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r,r1,5,ops);
     break;
   case  26 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r2,x,9,ops);
     Expand_Add(r,r1,r2,MTYPE_I8,ops);
     break;
   case  27 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     Expand_Small_Multiply(r,r1,3,ops);
     break;
   case  28 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,4,ops);
     shladd(r,r1,3,r2,ops);  // 8*3+4
     break;
   case  29 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,5,ops);
     shladd(r,r1,3,r2,ops);  // 8*3+5
     break;
   case  30 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,15,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  31 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,16,ops);
     Expand_Small_Multiply(r2,x,-1,ops);
     shladd(r,r1,1,r2,ops);
     break;
   case  32 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,16,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  33 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,16,ops);
     shladd(r,r1,1,x,ops);
     break;
   case  34 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  35 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,17,ops);
     shladd(r,r1,1,x,ops);
     break;
   case  36 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     Expand_Small_Multiply(r,r1,4,ops);
     break;
   case  37 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     shladd(r,r1,2,x,ops);
     break;
   case  38 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r2,x,4,ops);
     shladd(r,r1,1,r2,ops);
     break;
   case  39 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,17,ops);
     Expand_Small_Multiply(r2,x,5,ops);
     shladd(r,r1,1,r2,ops);
     break;
   case  40 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r,r1,8,ops);
     break;
   case  41 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     shladd(r,r1,3,x,ops);
     break;
   case  42 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r2,x,2,ops);
     shladd(r,r1,3,r2,ops);
     break;
   case  43 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r2,x,3,ops);
     shladd(r,r1,3,r2,ops);
     break;
   case  44 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r2,x,4,ops);
     shladd(r,r1,3,r2,ops);
     break;
   case  45 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,5,ops);
     Expand_Small_Multiply(r,r1,9,ops);
     break;
   case  46 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,45,ops);
     Expand_Add(r,r1,x,MTYPE_I8,ops);
     break;
   case  47 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,-1,ops);
     Expand_Small_Multiply(r2,x,3,ops);
     shladd(r,r2,4,r1,ops);
     break;
   case  48 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,16,ops);
     break;
   case  49 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     shladd(r,r1,4,x,ops);
     break;
   case  50 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,2,ops);
     shladd(r,r1,4,r2,ops);
     break;
   case  51 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r,r1,17,ops);
     break;
   case  52 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,4,ops);
     shladd(r,r1,4,r2,ops);
     break;
   case  53 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,5,ops);
     shladd(r,r1,4,r2,ops);
     break;
   case  54 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,9,ops);
     Expand_Small_Multiply(r,r1,6,ops);
     break;
   case  55 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,11,ops);
     Expand_Small_Multiply(r,r1,5,ops);
     break;
   case  56 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,8,ops);
     shladd(r,r1,4,r2,ops);
     break;
   case  57 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,3,ops);
     Expand_Small_Multiply(r2,x,9,ops);
     shladd(r,r1,4,r2,ops);
     break;
   case  58 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,29,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  59 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,29,ops);
     shladd(r,r1,1,x,ops);
     break;
   case  60 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,12,ops);
     Expand_Small_Multiply(r,r1,5,ops);
     break;
   case  61 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,45,ops);
     shladd(r,x,4,r1,ops);
     break;
   case  62 :
     ONE_TEMP;
     Expand_Small_Multiply(r1,x,31,ops);
     Expand_Small_Multiply(r,r1,2,ops);
     break;
   case  63 :
     TWO_TEMPS;
     Expand_Small_Multiply(r1,x,-1,ops);
     Expand_Small_Multiply(r2,x,16,ops);
     shladd(r,r2,2,r1,ops);
     break;
   default:
     #pragma mips_frequency_hint NEVER
     FmtAssert(0,("Can't small multiply by %d",val));
     /*NOTREACHED*/
  }  
}


/* 
 * Expand the multiply into a series of shifts and adds,
 * unless the sequence is longer than "limit".
 */
static BOOL
Expand_Multiply_Into_Shifts (
  TN	   *result_tn,
  TN	   *var_tn,
  TARG_UINT constant,
  INT16	    limit,
  TYPE_ID   mtype,
  OPS 	*ops)
{ FmtAssert(FALSE,("Unimplemented")); }

/*
 *  Try to expand a multiply into a sequence of less expensive operations.
 */
#define NUM_FAST_MPYS 8
static INT fast_mpys[NUM_FAST_MPYS] = {17,16,9,8,5,4,3,2};

static BOOL
Expand_Constant_Multiply (TN *result, TN *var_tn, TARG_INT constant, TYPE_ID mtype, OPS *ops)
{
  BOOL did_do_fast;
  INT16 limit;	/* maximum number of operations to replace the multiply */
  TN *x = var_tn;
  TN *r1 = Build_TN_Like(result);
  INT64 c = constant; // I don't want to depend on TARG_INT
  BOOL needs_sign_extension;

  // fast special cases
  if (c == 0) {
    Expand_Copy (result, Zero_TN, mtype, ops);
    return TRUE;
  } else if (c == 1) {
    Expand_Copy (result, var_tn, mtype, ops);
    return TRUE;
  } else if (c == -1) {
    Expand_Neg(result, var_tn, mtype, ops);
    return TRUE;
  }

  if (c < 0) {
    c = -c;
    x = Build_TN_Like(var_tn);
    Expand_Neg(x, var_tn, mtype, ops);
  }


	/* SL specified expand
	 * constant = 2 to 5, handled by individual routine
	 * constant > 5, handles if and only if: 
	 * constant==2^x (x=3 to 31) 
	 * constant==2^x (x=3 to 31) +/- constant
	 * constant==2^x (x=3 to 31) +/- (2*constant)
	 */
#if defined(TARG_SL) 
	 	needs_sign_extension = MTYPE_size_reg(mtype) != 32;
		BOOL matched = FALSE;
		if(c<=5) {
			switch(c) {
				case 2:
					Expand_Shift(result, x, Gen_Literal_TN(1, 4), mtype, shift_left, ops);
					break;
				case 3:
				  Expand_Shift(r1, x, Gen_Literal_TN(1, 4), mtype, shift_left, ops);					
					Expand_Add(result, r1, x, mtype,ops);
					break;
				case 4:
					Expand_Shift(result, x, Gen_Literal_TN(2, 4), mtype, shift_left, ops);
					break;
				case 5:
					Expand_Shift(r1, x, Gen_Literal_TN(2, 4), mtype, shift_left, ops);
					Expand_Add(result, r1, x, mtype,ops);
					break;
			}
			matched = TRUE;
		}
		else {
			UINT shift_bit;
			UINT word_bit = HOST_WORD_SIZE * 8;
			for(shift_bit = 3; shift_bit<word_bit&&matched==FALSE; shift_bit++) {
				UINT sNumber = 1 << shift_bit;
				if(sNumber==c) {
				  Expand_Shift(result, x, Gen_Literal_TN(shift_bit, 4), mtype, shift_left, ops);
					matched = TRUE;					
				}
				else if(sNumber-1==c) {
				  Expand_Shift(r1, x, Gen_Literal_TN(shift_bit, 4), mtype, shift_left, ops);
					Expand_Sub(result, r1, x, mtype,ops);
					matched = TRUE;					
				}
				else if(sNumber+1==c) {
				  Expand_Shift(r1, x, Gen_Literal_TN(shift_bit, 4), mtype, shift_left, ops);					
					Expand_Add(result, r1, x, mtype,ops);
					matched = TRUE;					
				}
				else if(sNumber-2==c) {
				  Expand_Shift(r1, x, Gen_Literal_TN(shift_bit, 4), mtype, shift_left, ops);
					Expand_Sub(r1, r1, x,mtype,ops);	
					Expand_Sub(result, r1, x, mtype,ops);				
					matched = TRUE;					
				}
				else if(sNumber+2==c) {
				  Expand_Shift(r1, x, Gen_Literal_TN(shift_bit, 4), mtype, shift_left, ops);
					Expand_Add(r1, r1, x, mtype,ops);	
					Expand_Add(result, r1, x, mtype,ops);						
					matched = TRUE;					
				}												
			}
	  }
	  	if(matched==TRUE) {
		  	if (needs_sign_extension) {
		  		TN *r2 = Build_TN_Like(result);
		  		Expand_Copy (r2, result, mtype, ops);
		   		Fixup_32_Bit_Op(result,r2,mtype,ops);
		  	}
		  	return TRUE;	
	  	}
	  	else {
	  		return FALSE;
	  	}
	  	
	/*
	 * original expand  		
	 */
#else

  // Count the number of 1's in c and -c
  INT num_ones=0;
  UINT64 uc=c;
  while (uc) {num_ones += (uc&1); uc >>= 1;}
  uc = c;
  needs_sign_extension = MTYPE_size_reg(mtype) != 64;
  //
  // Small constants always make sense to use the optimized sequences
  //
  if (uc <= 63) {
    if (needs_sign_extension) {
      Expand_Small_Multiply(result,x,uc,ops);
    } else {
      TN *r1 = Build_TN_Of_Mtype(MTYPE_I8);
      Expand_Small_Multiply(r1,x,uc,ops);
      Fixup_32_Bit_Op(result, r1, mtype,ops);
    }
    return TRUE;
  }
  
  // 
  // We have |constant| > 63, with the fewest number of 1's
  // Find where the (least significant) 1 is located.
  // If there is exactly one 1 in it, we will use a shift to do the multiply. 
  //
  INT first_1 = 0;
  while ((uc & 1) == 0) {++first_1; uc >>= 1;}
  if (first_1 != 0) {
    if (num_ones == 1) {
      // Just do the shift
      Expand_Shift(result, x, Gen_Literal_TN(first_1, 4), mtype, shift_left, ops);
      return TRUE;
    } else {
      TN *x1 = Dup_TN(x);
      Expand_Shift(x1, x, Gen_Literal_TN(first_1, 4), MTYPE_I8, shift_left, ops);
      x = x1;
    }
  }
  //
  // Another special case, 2**N - 1
  // Note that num_ones can't be 64 (or we'd have been in the -1 case above)
  // So the shift and subtract test is safe here.
  // Also, we don't want to do this case if uc is small, because we can do better
  // with the optimized sequences.
  //
  if (uc == ((1<<num_ones)-1) && uc > 63) {
    TN *r1 = Dup_TN(result);
    Expand_Shift(r1, x, Gen_Literal_TN(num_ones, 4), MTYPE_I8, shift_left, ops);
    if (!needs_sign_extension) {
      Expand_Sub(result,r1,x,mtype,ops);
    } else {
      TN *r2 = Dup_TN(result);
      Expand_Sub(r2,r1,x,mtype,ops);
      Fixup_32_Bit_Op(result,r2,mtype,ops);
    }
    return TRUE;
  }
  
  //
  // Check for some cases we can do with a single-instruction multiply on top
  // of a small multiply.
  //
  INT i;
  for (i=0; i < NUM_FAST_MPYS; i++) {
    INT mpy=fast_mpys[i];
    if (uc%mpy == 0 && uc/mpy <= 63) {
      INT64 uc1;
      TN *r1 = Dup_TN(result);
      Expand_Small_Multiply(r1,x,uc/mpy,ops);
      Expand_Constant_Multiply(result,r1,mpy,mtype,ops);
      return TRUE;
    }
  }
  
  //
  // We put things in r to make the possible sign extension a bit easier
  //
  TN *r = result;
  if (needs_sign_extension) {
    r = Dup_TN(result);
  }
  // 
  // If the remaining number is less than 16 bits, we will do it by
  // breaking it into chunks and combining them. We also handle a few special cases.
  // For numbers greater than 16 bits, we break things up and combine recursively. 
  // This is implemented for completeness but probably shouldn't be done in practice.
  //
  if (uc <= 63) {
    Expand_Small_Multiply(r,x,uc,ops);
  } else if (uc <= 1023) {
    INT64 uc1,uc2;
    TN *r1 = Dup_TN(result);
    // Do in group of 4 and at most 6
    // Note that uc2 >= 4 (or we would have been in the above case)
    uc1 = uc & 15;
    uc2 = uc >> 4;
    
    Expand_Small_Multiply(r1,x,uc2,ops);
    if (uc1 == 0) {
      shladd(r,r1,4,Zero_TN,ops);
    } else if (uc1 == 1) {
      shladd(r,r1,4,x,ops);
    } else if (uc1 == uc2) {
      shladd(r,r1,4,r1,ops);
    } else {
      TN *r2 = Dup_TN(result);
      Expand_Small_Multiply(r2,x,uc1,ops);
      shladd(r,r1,4,r2,ops);
    }
  } else if (uc <= 65535) {
    // Do in two groups of 8. Note that uc2 >= 4 again.
    // Also not that because we are combining with 2 shladds, we have 
    // additional opportunities for optimizations
    // if the low part is a multiple of 16 or 17 (smaller multiplies
    // tend to be a bit faster), or the low part is 16 or 17x the high part
    // we get it for free. 
    //
    INT64 uc1,uc2;
    TN *r1 = Dup_TN(result);
    TN *r2 = Dup_TN(result);
    uc1 = uc & 255;
    uc2 = uc >> 8;
    Expand_Constant_Multiply (r1, x, uc2, MTYPE_I8, ops);
    if (uc1 == 0) {
      shladd(r2,r1,4,Zero_TN,ops);
      shladd(r,r2,4,Zero_TN,ops);
    } else if (uc1 == 1) {
      shladd(r2,r1,4,Zero_TN,ops);
      shladd(r,r2,4,x,ops);

    } else if (uc1 == 16) {
      shladd(r2,r1,4,x,ops);
      shladd(r,r2,4,Zero_TN,ops);

    } else if (uc1 == 17) {
      shladd(r2,r1,4,x,ops);
      shladd(r,r2,4,x,ops);

    } else if (uc1 == uc2) {
      shladd(r2,r1,4,Zero_TN,ops);
      shladd(r,r2,4,r1,ops);

    } else if (uc1 == 16*uc2) {
      shladd(r2,r1,4,r1,ops);
      shladd(r,r2,4,Zero_TN,ops);

    } else if (uc1 == 17*uc2) {
      shladd(r2,r1,4,r1,ops);
      shladd(r,r2,4,r1,ops);

    } else if (uc1%16 == 0) {
      TN *r3 = Dup_TN(result);
      uc1 /= 16;
      Expand_Constant_Multiply(r3,x,uc1,MTYPE_I8,ops);
      shladd(r2,r1,4,r3,ops);
      shladd(r,r2,4,Zero_TN,ops);

    } else if (uc1%17 == 0) {
      TN *r3 = Dup_TN(result);
      uc1 /= 17;
      Expand_Constant_Multiply(r3,x,uc1,MTYPE_I8,ops);
      shladd(r2,r1,4,r3,ops);
      shladd(r,r2,4,r3,ops);

    } else {
      TN *r3 = Dup_TN(result);
      Expand_Constant_Multiply(r3,x,uc1,MTYPE_I8,ops);
      shladd(r2,r1,4,Zero_TN,ops);
      shladd(r,r2,4,r3,ops);
    }
  } else if (uc <= ((1LL << 32)-1)) {
    // For completeness, although it's probably getting to be not worth it
    // for the sheer number of instructions generated, even if the latency is good
    // (latency <= 8, instructions <= 34)
    //
    INT64 uc1,uc2;
    TN *r1 = Dup_TN(result);
    TN *r2 = Dup_TN(result);
    TN *r3 = Dup_TN(result);
    uc1 = uc & 65535;
    uc2 = uc >> 16;
    Expand_Constant_Multiply(r1,x,uc1,MTYPE_I8,ops);
    Expand_Constant_Multiply(r2,x,uc2,MTYPE_I8,ops);
    Expand_Shift(r3,r2,Gen_Literal_TN(16, 4),MTYPE_I8,shift_left,ops);
    Expand_Add(r,r1,r3,MTYPE_I8,ops);
  } else {
    // Worst case, latency <= 11, instructions <= 70
    // You really don't want to do this, but we will just let Can_Do_Fast_Multiply stop it
    //
    // For completeness, although it's probably getting to be not worth it
    // for the sheer number of instructions generated, even if the latency is good
    // (latency <= 8, instructions <= 34)
    //
    INT64 uc1,uc2;
    TN *r1 = Dup_TN(result);
    TN *r2 = Dup_TN(result);
    TN *r3 = Dup_TN(result);
    uc1 = uc & 0xffffffff;
    uc2 = uc >> 32;
    Expand_Constant_Multiply(r1,x,uc1,MTYPE_I8,ops);
    Expand_Constant_Multiply(r2,x,uc2,MTYPE_I8,ops);
    Expand_Shift(r3,r2,Gen_Literal_TN(32, 4),MTYPE_I8,shift_left,ops);
    Expand_Add(r,r1,r3,MTYPE_I8,ops);
  }

  if (needs_sign_extension) {
    Fixup_32_Bit_Op(result,r,mtype,ops);
  }

  return TRUE;
#endif // TARG_SL
}

void
Expand_Multiply (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TOP top;
  INT64 constant;
  //
  // Check for two constants
  // 
  // TODO: check this portion of Exapnd_Multiply once divrem is retargeted.
  if ((TN_has_value(src1) || TN_is_rematerializable(src1)) &&
      (TN_has_value(src2) || TN_is_rematerializable(src2))) {
    // Two constants can sometimes occur because of DIVREM production in 
    TN *val_tn;
    constant = TN_has_value(src1) ? TN_value(src1) : WN_const_val(TN_home(src1));
    constant *= TN_has_value(src2) ? TN_value(src2) : WN_const_val(TN_home(src2));
    // Need to get the constant of the right length
    constant = Targ_To_Host(Host_To_Targ(mtype,constant));
    #if defined(TARG_SL) 
    	val_tn = Gen_Literal_TN(constant, 4);
    #else
        val_tn = Gen_Literal_TN(constant, 8);
	  #endif
    Exp_Immediate(result,val_tn,MTYPE_is_signed(mtype),ops);
    return;
  }

  if (!Disable_Const_Mult_Opt && (TN_has_value(src1) || TN_has_value(src2) ||
				  TN_is_rematerializable(src1) ||TN_is_rematerializable(src2))) {
    TN *var_tn;
    if ( TN_has_value(src1) || TN_is_rematerializable(src1) ) {
      constant = TN_has_value(src1) ? TN_value(src1) : WN_const_val(TN_home(src1));
      var_tn = src2;
    }
    else {
      constant = TN_has_value(src2) ? TN_value(src2) : WN_const_val(TN_home(src2));
      var_tn = src1;
    }
    
    if (Can_Do_Fast_Multiply (mtype, constant)) {
      if (Expand_Constant_Multiply (result, var_tn, constant, mtype, ops)) {
	/* able to convert multiply into shifts/adds/subs */
	return;
      }
    }
  }
  if (TN_has_value(src2)) {
    src2 = Expand_Immediate_Into_Register (src2, MTYPE_is_size_double(mtype), ops);
  }

  FmtAssert(!TN_is_constant(src1),("Expand_Multiply: unexpected constant operand"));
#if defined(TARG_SL)
   Is_True(!(MTYPE_is_size_double(mtype)), ("Expand_Multiply: unsupport 64-bit compute"));
 
   if (CG_sl2) {
   	top = TOP_c2_muls;
   } else {
       top = MTYPE_signed(mtype) ? TOP_c3_muls : TOP_c3_mulus;
   }
#else
   if (! MTYPE_is_size_double(mtype))
     top = MTYPE_signed(mtype) ? TOP_mult : TOP_multu;
   else top = MTYPE_signed(mtype) ? TOP_dmult : TOP_dmultu;
#endif

#if defined(TARG_SL)
  TN *zero_tn = Gen_Literal_TN(0, 4);
  if (CG_sl2) {
    TN* hi_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_cop_creg, 8, 0);
    Build_OP(top, result, hi_tn, src1, src2, zero_tn, Zero_TN, zero_tn, ops);	
  } else {
    Build_OP(top, HI_TN, result, src1, src2,zero_tn,ops);
  }
#else
  Build_OP(top, Hilo_TN(), src1, src2, ops);
  Build_OP(TOP_mflo, result, Hilo_TN(), ops);
#endif
}

/* return high part of multiply result */
void
Expand_High_Multiply (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TOP top;
  FmtAssert(!TN_is_constant(src1),("Expand_High_Multiply: unexpected constant operand"));

#if defined(TARG_SL)
   Is_True(!(MTYPE_is_size_double(mtype)), ("Expand_High_Multiply: unsupport 64-bit compute"));
   top = MTYPE_signed(mtype) ? TOP_c3_muls : TOP_c3_mulus;
#else
   if (!MTYPE_is_size_double(mtype))
     top = MTYPE_signed(mtype) ? TOP_mult : TOP_multu;
   else top = MTYPE_signed(mtype) ? TOP_dmult : TOP_dmultu;
#endif

 if (TN_is_constant(src2))
    src2 = Expand_Immediate_Into_Register(src2, MTYPE_is_size_double(mtype), ops);
  
#if defined(TARG_SL)
   TN *lo_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   TN *zero_tn = Gen_Literal_TN(0, 4);
   Build_OP(top, HI_TN, lo_tn, src1, src2, zero_tn, ops);
   Build_OP(TOP_c3_mvfs, result, HI_TN, zero_tn, ops);
#else
  Build_OP(top, Hilo_TN(), src1, src2, ops);
  Build_OP(TOP_mfhi, result, Hilo_TN(), ops);
#endif 
}

#if defined(TARG_SL)
void Expand_MulShift_Hi (TN *result, TN *src1, TN *src2, TN *src3, TYPE_ID mtype, OPS *ops)
{
   TOP top;
   TN *low_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   TN *zero_tn = Gen_Literal_TN(0, 4);
   Is_True(!TN_is_constant(src1),("Expand_High_Multiply: unexpected constant operand"));

   top = MTYPE_signed(mtype) ? TOP_c3_muls : TOP_c3_mulus;

  if (TN_is_constant(src2))
    src2 = Expand_Immediate_Into_Register(src2, MTYPE_is_size_double(mtype), ops);

  Is_True(TN_is_constant(src3) , ("shift value is constant"));
  Build_OP(top, HI_TN, low_tn, src1, src2, src3, ops);
  Build_OP(TOP_c3_mvfs, result, HI_TN,  zero_tn, ops);
}

void Expand_Unsigned_MulShift_Hi (TN *result, TN *src1, TN *src2, TN *src3, TYPE_ID mtype, OPS *ops)
{
   TOP top;
   TN *low_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
   TN *zero_tn = Gen_Literal_TN(0, 4);
   Is_True(!TN_is_constant(src1),("Expand_Unsigned_MulShift_Hi: unexpected constant operand"));
   Is_True(MTYPE_is_unsigned(mtype), ("Expand_Unsigned_MulShift_Hi: should be unsigned"));
   top = MTYPE_signed(mtype) ? TOP_c3_muls : TOP_c3_mulus;

  if (TN_is_constant(src2))
    src2 = Expand_Immediate_Into_Register(src2, MTYPE_is_size_double(mtype), ops);

  Is_True(TN_is_constant(src3) , ("shift value is constant"));
  Build_OP(top, HI_TN, low_tn, src1, src2, src3, ops);
  Build_OP(TOP_c3_mvfs, result, HI_TN,  zero_tn, ops);
}

void Expand_Mulshift (TN *result, TN *src1, TN *src2, TN *src3, TYPE_ID mtype, OPS *ops) {
  Is_True(TN_has_value(src3), ("Expand_Mulshift:: shift num must be immediate"));
  
  TOP top;
  INT64 constant;
  UINT shift = TN_value(src3);
  //
  // Check for two constants
  // 
  // TODO: check this portion of Exapnd_Multiply once divrem is retargeted.
  if ((TN_has_value(src1) || TN_is_rematerializable(src1)) &&
      (TN_has_value(src2) || TN_is_rematerializable(src2))) {
    // Two constants can sometimes occur because of DIVREM production in 
    TN *val_tn;
    constant = TN_has_value(src1) ? TN_value(src1) : WN_const_val(TN_home(src1));
    constant *= TN_has_value(src2) ? TN_value(src2) : WN_const_val(TN_home(src2));
    // Need to get the constant of the right length
    constant = Targ_To_Host(Host_To_Targ(mtype,constant));
    if (shift > 0) { 
      constant = (constant << shift);
    }
    val_tn = Gen_Literal_TN(constant, 4);
    Exp_Immediate(result,val_tn,MTYPE_is_signed(mtype),ops);
    return;
  }

  if (!Disable_Const_Mult_Opt && (TN_has_value(src1) || TN_has_value(src2) ||
				  TN_is_rematerializable(src1) ||TN_is_rematerializable(src2))) {
    TN *var_tn;
    if ( TN_has_value(src1) || TN_is_rematerializable(src1) ) {
      constant = TN_has_value(src1) ? TN_value(src1) : WN_const_val(TN_home(src1));
      var_tn = src2;
    }
    else {
      constant = TN_has_value(src2) ? TN_value(src2) : WN_const_val(TN_home(src2));
      var_tn = src1;
    }
    
    if (Can_Do_Fast_Multiply (mtype, constant)) {
      if (shift > 0) {
        TN *tmp = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
        if (Expand_Constant_Multiply(tmp, var_tn, constant, mtype, ops)) {
          Expand_Shift(result, tmp, src3, mtype, shift_left, ops);
          return;
        } 
      } else {
        if (Expand_Constant_Multiply (result, var_tn, constant, mtype, ops)) {
	/* able to convert multiply into shifts/adds/subs */
	  return;
        }
      }
    }
  }
  if (TN_has_value(src2)) {
    src2 = Expand_Immediate_Into_Register (src2, MTYPE_is_size_double(mtype), ops);
  }

  FmtAssert(!TN_is_constant(src1),("Expand_Multiply: unexpected constant operand"));
  Is_True(!(MTYPE_is_size_double(mtype)), ("Expand_Multiply: unsupport 64-bit compute"));

  top = MTYPE_signed(mtype) ? TOP_c3_muls : TOP_c3_mulus;
  Build_OP(top, HI_TN, result, src1, src2, src3, ops);
}

TN *Expand_Mul_Shift (WN *intrncall, TN *result, OPS *ops, BOOL highpart=FALSE) {
  Is_True( (WN_kid0(intrncall)!=NULL && WN_kid1(intrncall)!=NULL && WN_kid2(intrncall)!=NULL),
                 ("Expand_Mul_Shift:: one parameter is null"));

  TN *kid0_tn, *kid1_tn;
  TYPE_ID rtype0, rtype1, rtype;
  INT32 value;

  Is_True((WN_kid0(intrncall) && WN_kid1(intrncall) && WN_kid2(intrncall)),
   	          ("Expand_C3_SAVE_ACC:: operand is null"));
  
  kid0_tn = Expand_Expr (WN_kid0(intrncall), intrncall, NULL);
  kid1_tn = Expand_Expr(WN_kid1(intrncall), intrncall, NULL);
  value = WN_const_val(WN_kid0(WN_kid2(intrncall)));
  rtype0 = WN_rtype(WN_kid0(intrncall));
  rtype1 = WN_rtype(WN_kid1(intrncall));
  rtype = rtype1;
  if ((rtype0 == MTYPE_U4) && (rtype1 != MTYPE_U4)) {
       rtype = rtype0;
  }
  //Expand_High_Multiply( result, kid0_tn, kid1_tn, MTYPE_I4, ops);
  if (highpart)
     Expand_MulShift_Hi(result, kid0_tn, kid1_tn, Gen_Literal_TN(value, 4), rtype, ops);
  else
     Expand_Mulshift(result,  kid0_tn, kid1_tn, Gen_Literal_TN(value, 4), rtype, ops);
  return result;

}



TN *Build_C3_Intrinsic_OP( INTRINSIC id, WN* intrncall, OPS *ops, TN* result ) 
 {
      switch(id)  {
   	 case INTRN_MUL_SHIFT_HI:
   	 case INTRN_MUL_SHIFT_HI_U:
             return Expand_Mul_Shift(intrncall, result, ops, TRUE);
         case INTRN_MUL_SHIFT:
         case INTRN_MUL_SHIFT_U:
	      return Expand_Mul_Shift(intrncall, result, ops, FALSE);
         case INTRN_C3_MAC:
	      return Expand_C3_MAC(intrncall, result, ops);	 
	 case INTRN_C3_MACN:
	      return Expand_C3_MAC(intrncall, result, ops, FALSE);	 
         case INTRN_C3_SAADDS:
	      return Expand_C3_SAADDS(intrncall, result, ops);
	 case INTRN_C3_SASUBS:
	      return Expand_C3_SAADDS(intrncall, result, ops, FALSE);
         case INTRN_C3_ROUND:
             return Expand_C3_ROUND(intrncall, result, ops);
         case INTRN_C3_MULA:
             return Expand_C3_MULA(intrncall, result, ops);		
	 case INTRN_C3_INIT_ACC:
	      return Expand_C3_INIT_ACC(intrncall, result, ops);
         case INTRN_C3_SAVE_ACC:
             return Expand_C3_SAVE_ACC(intrncall, result, ops);	
	 case INTRN_MPY_32_16:
	     return Expand_MPY_32_16(intrncall, result, ops);
         case INTRN_C3_MACD:
	     return Expand_C3_MACD(intrncall, result, ops);
	 case INTRN_C3_MVFS:
	     return Expand_C3_MVFS(intrncall, result, ops);
  	 case INTRN_C3_SAADDSH:
	     return Expand_C3_SAADDSH(intrncall, result, ops);
	 case INTRN_C3_SASUBSH:
	     return Expand_C3_SAADDSH(intrncall, result, ops, FALSE);
         case INTRN_C3_INIT_ADDR:
	     return Expand_INIT_ADDR(intrncall, result, ops);
         case INTRN_C3_SAVE_ADDR:
             return Expand_SAVE_ADDR(intrncall, result, ops); 
         case INTRN_C3_MAC_A:
             return Expand_C3_MAC_A(intrncall, result, ops);	
         case INTRN_C3_MACN_A:
             return Expand_C3_MAC_A(intrncall, result, ops, FALSE);	
         case INTRN_C3_INIT_DACC:
             return Expand_C3_INIT_DACC(intrncall, result, ops);
         case INTRN_C3_SAVE_DACC:
             return Expand_C3_SAVE_DACC(intrncall, result, ops);
         case INTRN_C3_DMAC_A:
             return Expand_C3_DMAC_A(intrncall, result, ops);
         case INTRN_C3_DMACN_A:
             return Expand_C3_DMAC_A(intrncall, result, ops, FALSE);
         case INTRN_C3_SAADDH_A:
             return Expand_C3_SAADDH_A(intrncall, result, ops);
         case INTRN_C3_SASUBH_A:
             return Expand_C3_SAADDH_A(intrncall, result, ops, FALSE);
         case INTRN_C3_SAMULSH:
             return Expand_C3_SAMULSH(intrncall, result, ops);
         case INTRN_C3_MULA_A:
             return Expand_C3_MULA_A(intrncall, result, ops);
         case INTRN_C3_SAMULH_A:
             return Expand_C3_SAMULH_A(intrncall, result, ops);
         case INTRN_C3_LEAD:
             return Expand_C3_LEAD(intrncall, result, ops);
         case INTRN_C3_PTR:
             return Expand_C3_PTR(intrncall, result, ops);	 
         case INTRN_C3_MAC_AR:
             return Expand_C3_MAC_AR(intrncall, result, ops);	
         case INTRN_C3_MACN_AR:
             return Expand_C3_MAC_AR(intrncall, result, ops, FALSE);
         case INTRN_C3_MULA_AR:
             return Expand_C3_MULA_AR(intrncall, result, ops);
         case INTRN_C3_INIT_PTR:
             return Build_C3_INIT_PTR(intrncall, result, ops);
         case INTRN_C3_TRBACK:
             return Build_C3_TRBACK(intrncall, result, ops);
         case INTRN_C3_VITERBI:
             return Build_C3_VITERBI(intrncall, result, ops);
         case INTRN_C3_DMULT_A:
             return Expand_C3_DMULT_A(intrncall, result, ops);
         case INTRN_C3_DMULTN_A:
             return Expand_C3_DMULT_A(intrncall, result, ops, FALSE);
         case INTRN_C3_DMULT:
             return Expand_C3_DMULA(intrncall, result, ops);
         case INTRN_C3_DMULTN:
             return Expand_C3_DMULA(intrncall, result, ops, FALSE);
         case INTRN_SET_CIRCBUF:
             return Expand_Set_CircBuf(intrncall, result, ops);
         case INTRN_C3_DADD:
             return Expand_C3_DADD(intrncall, result, ops);
         case INTRN_C3_DSUB:
             return Expand_C3_DADD(intrncall, result, ops, FALSE);
         case INTRN_C3_FFT:
             return Build_C3_FFT(intrncall, result, ops);
         case INTRN_C3_FFTLD:
             return Expand_C3_FFTLD(intrncall, result, ops);
         case INTRN_C3_FFTST:
             return Expand_C3_FFTST(intrncall, result, ops);
         case INTRN_DEPOSIT:
             return Expand_Deposit(intrncall, result,ops);
         case INTRN_EXTRACT:
             return Expand_Extract(intrncall, result, ops);
	 case INTRN_C3_LOAD:
             return Expand_C3_LD(intrncall, result, ops);
         case INTRN_C3_STORE:
	     return Expand_C3_ST(intrncall, result, ops);
	 case INTRN_C3_DMAC:
	     return Expand_C3_DMAC(intrncall, result, ops);
	 case INTRN_C3_DMACN:
	     return Expand_C3_DMAC(intrncall, result, ops, FALSE);
         case INTRN_C3_BITR:
             return Expand_C3_BITR(intrncall, result, ops);
         case INTRN_C3_REVB:
             return Expand_C3_REVB(intrncall, result, ops);
         case INTRN_C3_DSHL_I:
             return Expand_C3_DSHIFT_I(intrncall, result, ops); 
         case INTRN_C3_DSHR_I:
             return Expand_C3_DSHIFT_I(intrncall, result, ops, FALSE);
         case INTRN_C3_MAC_I:
             return Expand_C3_MAC_I(intrncall, result, ops);
         case INTRN_C3_MACN_I:
             return Expand_C3_MAC_I(intrncall, result, ops, FALSE);
         case INTRN_C3_MULA_I:
             return Expand_C3_MULA_I(intrncall, result, ops);
         case INTRN_C3_SAADD_A:
             return Expand_C3_SAADD_A(intrncall, result, ops);
         case INTRN_C3_SASUB_A:
             return Expand_C3_SAADD_A(intrncall, result, ops, FALSE);
         case INTRN_C3_SADDHA:
             return Expand_C3_SADDHA(intrncall, result, ops);
         case INTRN_C3_SAADDHA_A:
             return Expand_C3_SADDHA_A(intrncall, result, ops);
         case INTRN_C3_COPY_ADDR:
             return Expand_COPY_ADDR(intrncall, result, ops);
         case INTRN_C3_SET_ADDR:
             return Expand_SET_ADDRSIZE(intrncall, result, ops);
         case INTRN_CVT64_HIGH:
         case INTRN_CVT64_LOW:
             return Expand_Float64_Const(intrncall, result, id == INTRN_CVT64_HIGH, ops); 
         case INTRN_LONGLONG_CVT64_HIGH:
         case INTRN_LONGLONG_CVT64_LOW:
             return Expand_LONGLONG_Const(intrncall, result, id == INTRN_LONGLONG_CVT64_HIGH, ops); 
         case INTRN_CVT32:
             return Expand_Float32_Const(intrncall, result, ops);            
         case INTRN_EXTRACTU: 
             return Expand_Unsigned_Extract(intrncall, result, ops);
         // new C3                                                 
         case INTRN_C3AADDA:                                                          
             return Expand_C3_aadda(intrncall, result, ops);                          
         case INTRN_C3BITR:                                                           
             return Expand_C3_bitr(intrncall, result, ops);                           
         case INTRN_C3CS:                                                             
             return Expand_C3_cs(intrncall, result, ops);                             
         case INTRN_C3DADD:                                                           
             return Expand_C3_Mode0(TOP_C3_dadd, intrncall, result, 0, ops, TRUE);    
         case INTRN_C3SAADDS:                                                         
             return Expand_C3_Mode0(TOP_C3_saadds, intrncall, result, 1, ops, TRUE);  
         case INTRN_C3SAADDSH:                                                        
             return Expand_C3_Mode0(TOP_C3_saaddsh, intrncall, result, 1, ops, TRUE); 
         case INTRN_C3SAMULSH:                                                        
             return Expand_C3_Mode0(TOP_C3_samulsh, intrncall, result, 1, ops, FALSE);
         case INTRN_C3FFE:                                                            
             return Expand_C3_FFE(intrncall, result, ops);                            
         case INTRN_C3DMAC:                                                           
             return Expand_C3_Mode2(TOP_C3_dmac, intrncall, result, 3, ops);          
         case INTRN_C3DMULA:                                                          
             return Expand_C3_Mode2(TOP_C3_dmula, intrncall, result, 2, ops);         
         case INTRN_C3MAC:                                                            
             return Expand_C3_Mode1(TOP_C3_mac, intrncall, result, 1, ops);           
         case INTRN_C3MULA:                                                           
             return Expand_C3_Mode1(TOP_C3_mula, intrncall, result, 0, ops);          
         case INTRN_C3MAC_A:                                                          
             return Expand_C3_Mode3(TOP_C3_mac_a, intrncall, result, 1, ops, TRUE);   
         case INTRN_C3MULA_A:                                                         
             return Expand_C3_Mode3(TOP_C3_mula_a, intrncall, result, 0, ops, FALSE); 
         case INTRN_C3MAC_AR:                                                         
             return Expand_C3_Mode4(TOP_C3_mac_ar, intrncall, result, 1, ops, TRUE);  
         case INTRN_C3MULA_AR:                                                        
             return Expand_C3_Mode4(TOP_C3_mula_ar, intrncall, result, 0, ops, FALSE);
         case INTRN_C3MAC_I:                                                           
             return Expand_C3_Mode5(TOP_C3_mac_i, intrncall, result, 2, ops, TRUE);    
         case INTRN_C3SADDA:                                                           
             return Expand_C3_Mode5(TOP_C3_sadda, intrncall, result, 4, ops, FALSE);   
         case INTRN_C3SHAV:                                                            
             return Expand_C3_Mode5(TOP_C3_shav, intrncall, result, 1, ops, FALSE);    
         case INTRN_C3MULA_I:                                                          
             return Expand_C3_Mode5(TOP_C3_mula_i, intrncall, result, 1, ops, FALSE);  
         case INTRN_C3SHLATA_I:                                                        
             return Expand_C3_Mode5(TOP_C3_shlata_i, intrncall, result, 2, ops, TRUE); 
         case INTRN_C3ROUND:                                                           
             return Expand_C3_Mode6(TOP_C3_round, intrncall, result, 2, ops, FALSE);   
         case INTRN_C3SHLA_I:                                                          
             return Expand_C3_Mode6(TOP_C3_shla_i, intrncall, result, 2, ops, TRUE);   
         case INTRN_C3SAADD_A:                                                         
             return Expand_C3_Mode7(TOP_C3_saadd_a, intrncall, result, 0, ops, TRUE);  
         case INTRN_C3SAADDH_A:                                                        
             return Expand_C3_Mode7(TOP_C3_saaddh_a, intrncall, result, 0, ops, TRUE); 
         case INTRN_C3SAMULH_A:                                                        
             return Expand_C3_Mode7(TOP_C3_samulh_a, intrncall, result, 0, ops, FALSE);
         case INTRN_C3DMAC_A:                                                          
             return Expand_C3_Mode8(TOP_C3_dmac_a, intrncall, result, 2, ops, TRUE);   
         case INTRN_C3DMULA_A:                                                         
             return Expand_C3_Mode8(TOP_C3_dmula_a, intrncall, result, 1, ops, TRUE);  
         case INTRN_C3DSHLL_I:                                                         
             return Expand_C3_Mode9(TOP_C3_dshll_i, intrncall, result, 2, ops, TRUE);  
         case INTRN_C3REVB:                                                            
             return Expand_C3_Mode9(TOP_C3_revb, intrncall, result, 1, ops, FALSE);    
         case INTRN_C3LD:                                                              
             return Expand_C3_Mode10(TOP_C3_ld, intrncall, result, 0, ops, TRUE);      
         case INTRN_C3ST:                                                              
             return Expand_C3_Mode11(TOP_C3_st, intrncall, result, 0, ops, TRUE);      
         case INTRN_C3LEAD:                                                            
             return Expand_C3_lead(intrncall, result, ops);                            
         case INTRN_C3SHLAFA_I:                                                        
             return Expand_C3_shlafa_i(intrncall, result, ops);   
         case INTRN_C3SADDA_A:                                                               
             return Expand_C3_saadda_a(intrncall, result, ops);         
         case INTRN_C3SUBC:                                             
             return Expand_C3_subc(intrncall, result, ops);             
         case INTRN_C3NEGA:                                             
             return Expand_C3_nega(intrncall, result, ops);             
         case INTRN_C3MULS:                                             
             return Expand_C3_mul(TOP_c3_muls, intrncall, result, ops); 
         case INTRN_C3MULUS:                                            
             return Expand_C3_mul(TOP_C3_mulus, intrncall, result, ops);
         case INTRN_INIT_HI:                                            
             return Expand_Init_HI(intrncall, result, ops);             
         case INTRN_COPY_HI:                                            
             return Expand_Copy_HI(intrncall, result, ops);              
         // end
         default:
	     Is_True(0, ("Build_C3_Intrinsic_OP:: no such c3 intrinsic function"));
	}
}
#endif

void
Expand_Logical_Not (TN *dest, TN *src, VARIANT variant, OPS *ops)
{
  /* dest = (src == 0) ? 1 : 0 */
  Build_OP (TOP_xori, dest, src, Gen_Literal_TN(1, 4), ops);
}

void
Expand_Logical_And (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops)
{
  Build_OP (TOP_and, dest, src1, src2, ops);
}

void
Expand_Logical_Or (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops)
{
  Build_OP (TOP_or, dest, src1, src2, ops);
}


void
Expand_Binary_Complement (TN *dest, TN *src, TYPE_ID /* mtype */, OPS *ops)
{
  Build_OP(TOP_nor, dest, src, Zero_TN, ops);
}

void
Expand_Binary_And (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Binary_And: illegal result size\n"));
  if (TN_is_constant(src1)) {
    INT64 val;
    if (TN_has_value(src1)) {
	    val = TN_value(src1);
	    if (val == -1) {
		    Expand_Copy (dest, src2, mtype, ops);
		    return;
	    }
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Binary_And"));

    TOP new_opcode;
    if (ISA_LC_Value_In_Class ( val, LC_uimm16)) 
      new_opcode = TOP_andi;
    else {
      src1 = Expand_Immediate_Into_Register(src1, MTYPE_bit_size(mtype) == 64,
					    ops);
      new_opcode = TOP_and;
    }
    Build_OP (new_opcode, dest, src2, src1, ops);
  }
  else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_And (dest, src2, src1, mtype, ops);
  } 
  else {
    Build_OP (TOP_and, dest, src1, src2, ops);
  }
}

void
Expand_Binary_Or (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Binary_Or: illegal dest size\n"));
  if (TN_is_constant(src1)) {
    INT64 val;
    if (TN_has_value(src1)) {
	    val = TN_value(src1);
	    if (val == 0) {
		    Expand_Copy (dest, src2, mtype, ops);
		    return;
	    }
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Binary_Or"));

    TOP new_opcode;
    if (ISA_LC_Value_In_Class ( val, LC_uimm16)) 
      new_opcode = TOP_ori;
    else {
      src1 = Expand_Immediate_Into_Register(src1, MTYPE_bit_size(mtype) == 64,
					    ops);
      new_opcode = TOP_or;
    }
    Build_OP (new_opcode, dest, src2, src1, ops);
  }
  else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_Or (dest, src2, src1, mtype, ops);
  } 
  else {
    Build_OP (TOP_or, dest, src1, src2, ops);
  } 
}

void
Expand_Binary_Xor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Binary_Xor: illegal dest size\n"));
  if (TN_is_constant(src1)) {
    INT64 val;
    if (TN_has_value(src1)) 
      val = TN_value(src1);
    else FmtAssert(FALSE,("unexpected constant in Expand_Binary_Xor"));
    if (val == 0 && src1 == dest)
      return;

    TOP new_opcode;
    if (ISA_LC_Value_In_Class ( val, LC_uimm16)) 
      new_opcode = TOP_xori;
    else {
      src1 = Expand_Immediate_Into_Register(src1, MTYPE_bit_size(mtype) == 64,
					    ops);
      new_opcode = TOP_xor;
    }
    Build_OP (new_opcode, dest, src2, src1, ops);
  }
  else if (TN_is_constant(src2)) {
    // switch order of src so immediate is first
    Expand_Binary_Xor (dest, src2, src1, mtype, ops);
  } 
  else {
    Build_OP (TOP_xor, dest, src1, src2, ops);
  }
}

void
Expand_Binary_Nor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  Build_OP (TOP_nor, dest, src1, src2, ops);
}

void
Expand_Int_Less (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Int_Less: illegal dest size\n"));
  if (TN_is_constant(src2)) {
    INT64 val;
    if (TN_has_value(src2)) 
      val = TN_value(src2);
    else if ( TN_is_symbol(src2) ) {
      /* symbolic constant, gp-relative or sp-relative */
      ST *base;
      INT64 val;
      Base_Symbol_And_Offset_For_Addressing (TN_var(src2), TN_offset(src2), &base, &val);
    } 
    else FmtAssert(FALSE,("unexpected constant in Expand_Int_Less"));

    TOP new_opcode;
    if (ISA_LC_Value_In_Class ( val, LC_simm16)) 
      new_opcode = MTYPE_signed(mtype) ? TOP_slti : TOP_sltiu;
    else {
      src2 = Expand_Immediate_Into_Register(src2, MTYPE_bit_size(mtype) == 64,
					    ops);
      new_opcode = MTYPE_signed(mtype) ? TOP_slt : TOP_sltu;
    }
    Build_OP (new_opcode, dest, src1, src2, ops);
  }
  else 
    Build_OP (MTYPE_signed(mtype) ? TOP_slt : TOP_sltu, dest, src1, src2, ops);
}

void
Expand_Int_Less_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Int_Less_Equal: illegal dest size\n"));
  if (TN_is_constant(src2)) {
    INT64 val;
    if (TN_has_value(src2)) 
      val = TN_value(src2);
#if 0 // I doubt this case is working (fchow mar-12-03)
    else if ( TN_is_symbol(src2) ) {
      /* symbolic constant, gp-relative or sp-relative */
      ST *base;
      INT64 val;
      Base_Symbol_And_Offset_For_Addressing (TN_var(src2), TN_offset(src2), &base, &val);
    } 
#endif
    else FmtAssert(FALSE,("unexpected constant in Expand_Int_Less_Equal"));

    if (ISA_LC_Value_In_Class ( val+1, LC_simm16)) {
      Build_OP(MTYPE_signed(mtype) ? TOP_slti : TOP_sltiu, dest, src1,
	       Gen_Literal_TN(val+1, 4), ops);
    }
    else {
      INT size = MTYPE_byte_size(mtype);
      src2 = Expand_Immediate_Into_Register(Gen_Literal_TN(val+1, size), 
	      				    size == 8, ops);
      Build_OP(MTYPE_signed(mtype) ? TOP_slt : TOP_sltu, dest, src1, src2, ops);
    }
  }
  else { // i <= j => !(j < i)
    TN *tmp = Build_TN_Of_Mtype(mtype);   
    Build_OP (MTYPE_signed(mtype) ? TOP_slt : TOP_sltu, tmp, src2, src1, ops);
    Build_OP (TOP_xori, dest, tmp, Gen_Literal_TN(1, 4), ops);
  }
}

void
Expand_Int_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TN *tmp_tn;
  if ((TN_size(dest) == MTYPE_byte_size(mtype)) &&
      !TN_is_dedicated(dest))
    tmp_tn = dest;
  else tmp_tn  = Gen_Typed_Register_TN(mtype, MTYPE_byte_size(mtype));
  Expand_Binary_Xor(tmp_tn, src1, src2, mtype, ops);
  Build_OP (TOP_sltiu, dest, tmp_tn, Gen_Literal_TN(1, 4), ops);
}

void
Expand_Int_Not_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TN *tmp_tn;
  if ((TN_size(dest) == MTYPE_byte_size(mtype)) && 
      !TN_is_dedicated(dest))
    tmp_tn = dest;
  else tmp_tn  = Gen_Typed_Register_TN(mtype, MTYPE_byte_size(mtype));
  Expand_Binary_Xor(tmp_tn, src1, src2, mtype, ops);
  Build_OP (TOP_sltu, dest, Zero_TN, tmp_tn, ops);
}

void
Expand_Int_Greater_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  TN *tmp_tn;
  if ((TN_size(dest) == MTYPE_byte_size(mtype)) && 
      !TN_is_dedicated(dest))
    tmp_tn = dest;
  else tmp_tn  = Gen_Typed_Register_TN(mtype, MTYPE_byte_size(mtype));
  Expand_Int_Less(tmp_tn, src1, src2, mtype, ops);
  Build_OP (TOP_xori, dest, tmp_tn, Gen_Literal_TN(1, 4), ops);
}

void
Expand_Int_Greater (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  FmtAssert ((MTYPE_bit_size(mtype) == 32 || MTYPE_bit_size(mtype) == 64),
	               ("Expand_Int_Greater: illegal dest size\n"));
  if (TN_is_constant(src1)) 
    src1 = Expand_Immediate_Into_Register(src1, MTYPE_bit_size(mtype)==64, ops);
  if (TN_is_constant(src2)) 
    src2 = Expand_Immediate_Into_Register(src2, MTYPE_bit_size(mtype)==64, ops);
  Build_OP (MTYPE_signed(mtype) ? TOP_slt : TOP_sltu, dest, src2, src1, ops);
}

static void
Expand_Bool_Comparison (BOOL equals, TN *dest, TN *src1, TN *src2, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }

void
Expand_Bool_Equal (TN *dest, TN *src1, TN *src2, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }

void
Expand_Bool_Not_Equal (TN *dest, TN *src1, TN *src2, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }

void
Expand_Bool_To_Int (TN *dest, TN *src, TYPE_ID rtype, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }

typedef enum {
  ROUND_USER,
  ROUND_NEAREST,
  ROUND_CHOP,
  ROUND_NEG_INF,
  ROUND_PLUS_INF
} ROUND_MODE;

// TODO how do you trap on float val too big for [u]int32?
static void
Expand_Float_To_Int (ROUND_MODE rm, TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  TOP top;
  BOOL int_64bit = MTYPE_byte_size(imtype) == 8;
  if (fmtype == MTYPE_F4) {
    if (int_64bit || !(MTYPE_is_signed(imtype))) {
      switch (rm) {
      case ROUND_USER: top = TOP_cvt_l_s; break;
      case ROUND_NEAREST: top = TOP_round_l_s; break;
      case ROUND_CHOP: top = TOP_trunc_l_s; break;
      case ROUND_NEG_INF: top = TOP_floor_l_s; break;
      case ROUND_PLUS_INF: top = TOP_ceil_l_s; break;
      default: FmtAssert(FALSE,("Unimplemented rounding mode"));
      }
    }
    else {
      switch (rm) {
      case ROUND_USER: top = TOP_cvt_w_s; break;
      case ROUND_NEAREST: top = TOP_round_w_s; break;
      case ROUND_CHOP: top = TOP_trunc_w_s; break;
      case ROUND_NEG_INF: top = TOP_floor_w_s; break;
      case ROUND_PLUS_INF: top = TOP_ceil_w_s; break;
      default: FmtAssert(FALSE,("Unimplemented rounding mode"));
      }
    }
  }
  else if (fmtype == MTYPE_F8) {
    if (int_64bit || !(MTYPE_is_signed(imtype))) {
      switch (rm) {
      case ROUND_USER: top = TOP_cvt_l_d; break;
      case ROUND_NEAREST: top = TOP_round_l_d; break;
      case ROUND_CHOP: top = TOP_trunc_l_d; break;
      case ROUND_NEG_INF: top = TOP_floor_l_d; break;
      case ROUND_PLUS_INF: top = TOP_ceil_l_d; break;
      default: FmtAssert(FALSE,("Unimplemented rounding mode"));
      }
    }
    else {
      switch (rm) {
      case ROUND_USER: top = TOP_cvt_w_d; break;
      case ROUND_NEAREST: top = TOP_round_w_d; break;
      case ROUND_CHOP: top = TOP_trunc_w_d; break;
      case ROUND_NEG_INF: top = TOP_floor_w_d; break;
      case ROUND_PLUS_INF: top = TOP_ceil_w_d; break;
      default: FmtAssert(FALSE,("Unimplemented rounding mode"));
      }
    }
  }
  else FmtAssert(FALSE,("unsupported float size in Expand_Float_To_Int"));
  if (imtype == fmtype)  // no need to convert if result is float type
    return;
  TN *tmp = Build_TN_Of_Mtype (fmtype);
  Build_OP(top, tmp, src, ops);
  Build_OP(int_64bit ? TOP_dmfc1 : TOP_mfc1, dest, tmp, ops);
}

void
Expand_Float_To_Int_Cvt (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
        Expand_Float_To_Int (ROUND_USER, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Int_Round (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
        Expand_Float_To_Int (ROUND_NEAREST, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Int_Trunc (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
#if !defined(TARG_SL)
        Expand_Float_To_Int (ROUND_CHOP, dest, src, imtype, fmtype, ops);
#else
        TN* tmp = Build_TN_Of_Mtype(MTYPE_I4);
	TN* tmp2 = Build_TN_Of_Mtype(MTYPE_I4);
	Build_OP(TOP_cfc1, tmp2, ops);
	Build_OP(TOP_ori, tmp, tmp2, Gen_Literal_TN(0x3, 4), ops);
	Build_OP(TOP_xori, tmp, tmp, Gen_Literal_TN(0x2, 4), ops);
	Build_OP(TOP_ctc1, tmp,ops);
       	Build_OP(fmtype == MTYPE_F4 ? TOP_cvt_w_s : TOP_cvt_w_d, src, src, ops);
	Build_OP(TOP_ctc1, tmp2, ops);	
	Build_OP(TOP_mfc1, dest, src, ops);
#endif
}


void
Expand_Float_To_Int_Floor (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
        Expand_Float_To_Int (ROUND_NEG_INF, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Int_Ceil (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
        Expand_Float_To_Int (ROUND_PLUS_INF, dest, src, imtype, fmtype, ops);
}

void
Expand_Float_To_Float (TN *dest, TN *src, TYPE_ID rtype, TYPE_ID desc, OPS *ops)
{
  TOP top = (rtype == MTYPE_F8) ? TOP_cvt_d_s : TOP_cvt_s_d;
  Build_OP(top, dest, src, ops);
}


void
Expand_Int_To_Float (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops)
{
  TOP top;
  BOOL int_64bit = MTYPE_byte_size(imtype) == 8;
  TN *tmp = Build_TN_Of_Mtype(fmtype);
  Build_OP(int_64bit ? TOP_dmtc1 : TOP_mtc1, tmp, src, ops);
  if (fmtype == MTYPE_F4) {    
    // See example gcc.c-torture/execute/conversion.c
    top = (MTYPE_is_signed(imtype)? TOP_cvt_s_w: TOP_cvt_s_l);
    if (MTYPE_is_size_double(imtype))
      top = TOP_cvt_s_l;
  }
  else if (fmtype == MTYPE_F8) {
    // See example gcc.c-torture/execute/conversion.c
    top = (MTYPE_is_signed(imtype)? TOP_cvt_d_w: TOP_cvt_d_l);
    if (MTYPE_is_size_double(imtype))
      top = TOP_cvt_d_l;
  }
  else FmtAssert(FALSE,("unsupported float size in Expand_Int_To_Float"));
  Build_OP(top, dest, tmp, ops);
}


static BOOL
Optimize_Select (
	TOP cmp,
  	TN *cond1, 
  	TN *cond2, 
  	TN *dest, 
  	TN *dest2,
  	TN *src1, 
  	TN *src2, 
	BOOL is_float,
	OPS *ops)
{
  return FALSE;
}

#if defined(TARG_SL)
/*
 * tn are equals if tn_registers_identical ||
 * they're const Tn and have the same value
 */
static BOOL tns_are_equals (TN *tn1, TN *tn2){
  if (tn_registers_identical(tn1, tn2)) {
    return TRUE;
  }
  else if (TN_is_constant(tn1)&&TN_is_constant(tn2)&&(TN_value(tn1)==TN_value(tn2))) {
    return TRUE;
  }
  return FALSE;
}

/*
 *  build conditional move op
 */
extern void Build_MC_OP (TOP mc_op, TN *result, TN *rs1, TN *rs2, int unsignedflag, OPS *ops,  OP_COND_DEF_KIND kind) {
  TN *flag_tn = Gen_Literal_TN(unsignedflag, 4);
  Build_OP(mc_op, result, rs1, rs2, flag_tn, ops);
  Set_OP_cond_def_kind(OPS_last(ops), kind);
  DevWarn("Conditional move::Build_MC_OP(1 instruction) ");
}

/*
 * expand unoptimized conditional move to 2 instructions
 * result = cond_tn cond 0 ? true_tn : false_tn
 * ==>  mc.z.cond  result, cond_tn, true_tn
 *      mc.z.!cond result, cond_tn, false_tn
 */
extern void Exp_2inst_MC_Zero ( 
     TOP mc_op,
     TN* dest_tn,
     TN* true_tn,
     TN* false_tn,
     TN* cond_tn, 
     int unsignedflag,
     OPS* ops )
{
  TOP op2;
  switch(mc_op){
    case TOP_mc_z_ne:
      op2 = TOP_mc_z_eq;
      break;
    case TOP_mc_z_eq:
      op2 = TOP_mc_z_ne;
      break;
    case TOP_mc_z_lt:
      op2 = TOP_mc_z_ge;
      break; 
    case TOP_mc_z_gt:
      op2 = TOP_mc_z_le;
      break;
    case TOP_mc_z_le:
      op2 = TOP_mc_z_gt;
      break;
    case TOP_mc_z_ge:
      op2 = TOP_mc_z_lt;
      break;
    default:
      FmtAssert(FALSE, ("Unknown opcode %s", mc_op));
  }

  Build_MC_OP(mc_op, dest_tn, cond_tn, true_tn, unsignedflag, ops, OP_ALWAYS_UNC_DEF);
  Build_MC_OP(op2, dest_tn, cond_tn, false_tn, unsignedflag, ops, OP_ALWAYS_UNC_DEF);	 
  return;
}

/*
 *  get TOP according the opr 
 *  cond_eq_true == TRUE means:
 *  result = cmp1 cond cmp2 ? cmp1 : cmp2
 *  cond_eq_true == FALSE means:
 *  result = cmp1 cond cmp2 ? cmp2 : cmp1
 */

static TOP Get_MC_R_TOP (OPERATOR opr, BOOL cond_eq_true= TRUE) {
  TOP mcr;
  switch (opr) {
    case OPR_LE:  
      if (cond_eq_true) 
        mcr = TOP_mc_r_le;
      else
        mcr = TOP_mc_r_gt;
      break;
    case OPR_GE:  
      if (cond_eq_true)	
        mcr = TOP_mc_r_ge;
      else 
        mcr = TOP_mc_r_lt;
      break;
    case OPR_LT:    
      if (cond_eq_true)
        mcr = TOP_mc_r_lt;
      else
        mcr = TOP_mc_r_ge;
      break;
    case OPR_GT: 
      if (cond_eq_true)
        mcr = TOP_mc_r_gt; 
      else
        mcr = TOP_mc_r_le;
      break;
    case OPR_EQ: 
      if (cond_eq_true)
        mcr = TOP_mc_r_eq;
      else
        mcr = TOP_mc_r_ne;
      break;
    case OPR_NE:   
      if (cond_eq_true)
        mcr = TOP_mc_r_ne;
      else 
        mcr = TOP_mc_r_eq;
      break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
  }
  return mcr;
}

/*
 * Get mc.z.cond according to operator
 * result_eq_true == TRUE means: 
 *                    result = cond_tn cond 0 ? result : false_tn
 * result_eq_true == FALSE means: 
 *                    result =  cond_tn cond 0 ? true_tn : result
 */
static TOP Get_MC_ZERO_TOP(OPERATOR opr, BOOL result_eq_true = TRUE)
{
  TOP mcz;
  switch (opr) {
    case OPR_LE:  
      if (result_eq_true)	
        mcz = TOP_mc_z_gt;
      else
        mcz = TOP_mc_z_le;
      break;
    case OPR_GE: 
      if (result_eq_true)	
        mcz = TOP_mc_z_lt;
      else
        mcz = TOP_mc_z_ge;
      break;
    case OPR_LT:  
      if (result_eq_true)	
        mcz = TOP_mc_z_ge;
      else
        mcz = TOP_mc_z_lt;
      break;
    case OPR_GT: 
      if (result_eq_true)	
        mcz = TOP_mc_z_le;
      else
        mcz = TOP_mc_z_gt;
      break;
    case OPR_EQ:
      if (result_eq_true)	
        mcz = TOP_mc_z_ne;
      else
        mcz = TOP_mc_z_eq;
      break;
    case OPR_NE:
      if (result_eq_true)	
        mcz = TOP_mc_z_gt;
      else
        mcz = TOP_mc_z_ne;
      break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
  }
  return mcz;
}

/*
 * Get mc.zc.cond according to operator
 * true_eq_zero == TRUE means:
 *      result = cond_tn cond 0 ? 0 : false_tn
 * true_eq_zero == FALSE means:
 *      result = cond_tn cond 0 ? true_tn : 0
 */
static TOP Get_MC_ZC_TOP(OPERATOR opr, BOOL true_eq_zero = TRUE) {
  TOP mczc;
  switch (opr) {
    case OPR_LE:  
      if (true_eq_zero) 
        mczc = TOP_mc_zc_gt;
      else
        mczc = TOP_mc_zc_le;
      break;
    case OPR_GE:  
      if (true_eq_zero)	
        mczc = TOP_mc_zc_lt;
      else 
        mczc = TOP_mc_zc_ge;
      break;
    case OPR_LT:    
      if (true_eq_zero)
        mczc = TOP_mc_zc_ge;
      else
        mczc = TOP_mc_zc_lt;
      break;
    case OPR_GT: 
      if (true_eq_zero)
        mczc = TOP_mc_zc_le; 
      else
        mczc = TOP_mc_zc_gt;
      break;
    case OPR_EQ: 
      if (true_eq_zero)
        mczc = TOP_mc_zc_ne;
      else
        mczc = TOP_mc_zc_eq;
      break;
    case OPR_NE:   
      if (true_eq_zero)
        mczc = TOP_mc_zc_eq;
      else 
        mczc = TOP_mc_zc_ne;
      break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
  }
  return mczc;
}

/*
  * expand compare
  */
void Exp_Compare(OPCODE compare,TN *p, TN *cmp_kid1, TN *cmp_kid2, OPS *ops) {

  TYPE_ID desc = OPCODE_desc(compare);
  OPERATOR compare_opr = OPCODE_operator(compare);

  switch(compare_opr) {
    case OPR_LT:
    {
      Expand_Int_Less(p, cmp_kid1, cmp_kid2, desc, ops);		
    }
    break;
    case OPR_LE:
    {
      Expand_Int_Less_Equal(p, cmp_kid1, cmp_kid2, desc, ops);
    }
    break;
    case OPR_EQ:
    {
      Expand_Int_Equal(p, cmp_kid1, cmp_kid2, desc, ops);
    }
    break;
    case OPR_NE:
    {
      Expand_Int_Not_Equal(p, cmp_kid1, cmp_kid2, desc, ops);
    }
    break;
    case OPR_GE:
    {
      Expand_Int_Greater_Equal(p, cmp_kid1, cmp_kid2, desc, ops);
    }
    break;
    case OPR_GT:
    {
      Expand_Int_Greater(p, cmp_kid1, cmp_kid2, desc, ops);
    }
    break;
    default:
      FmtAssert(FALSE, ("Unknown opcode"));
  }
}

/*
 *  optimize conditional move : result = cmp1 cond cmp2 ? true_tn : false_tn
 *  such cases could be optimized :
 *  1) true_tn == false_tn  --> addu result, true_tn, Zero_Tn 
 *  2) cmp1 == true_tn && cmp2 == false_tn  -->  mc.r.cond
 *     cmp1 == false_tn && cmp2 == true_tn  -->  mc.r.!cond
 *  3) true_tn == 0   --> mc.zc.!cond
 *     false_tn ==0   --> mc.zc.cond
 *  4) true_tn = false + 1  --> setltu/setltu.i tmp,cmp1,cmp2 ; add result, false_tn, tmp
 *  5) true_tn == result  --> mc.z.!cond
 *      false_tn == result  --> mc.z.cond
 *  default:    mc.z.cond ; mc.z.!cond
 */
extern BOOL Exp_Opt_Select_And_Condition (WN *select, 
       TN *result, TN *true_tn, TN *false_tn, TN *cmp_kid1, TN *cmp_kid2,  OPS *ops)
{

  WN *compare =  WN_kid0(select);;
  WN *true_wn = WN_kid1(select);
  WN *false_wn = WN_kid2(select);
  OPCODE select_opc =  WN_opcode (select);
  WN *cmp1_wn = WN_kid0(compare);
  WN *cmp2_wn =WN_kid1(compare);
  OPCODE compare_opc = WN_opcode(compare);
  OPERATOR compare_opr = OPCODE_operator(compare_opc);
  int unsignedflag = MTYPE_signed(OPCODE_desc(compare_opc)) ? 0 : 1;  
  OPS new_ops;
  OPS_Init(&new_ops);
  
  Is_True ((select_opc == OPC_U4SELECT || select_opc == OPC_I4SELECT),
  	           ("Handle_Select:: select must be OPC_U4SELECT ||OPC_I4SELECT ")) ;
    	
  /* TN compare */
  /* if ( true_tn eq false_tn)  
         copy true_tn to result_tn	
      if (cmp_kid1 == true_tn && cmp_kid2 ==  false_tn  )
         mc.r.cond (result, cmp_kid1, cmp_kid2)  
      if (cmp_kid1 == false_tn && cmp_kid2 == true_tn )   
         mc.r. !cond (result, cmp_kid1, cmp_kid2)
   */
  if (tns_are_equals (true_tn, false_tn)) {
    Build_OP(TOP_addu, result, true_tn,Zero_TN, &new_ops);
	
  } else if (tns_are_equals (cmp_kid1, true_tn) && tns_are_equals(cmp_kid2, false_tn) || 
             tns_are_equals (cmp_kid1, false_tn) && tns_are_equals(cmp_kid2, true_tn) ) {
    // result = cmp_kid1 cond cmp_kid2 ? cmp_kid1 : cmp_kid2
    // result = cmp_kid1 cond cmp_kid2 ? cmp_kid2 : cmp_kid1
    BOOL kid1_eq_truetn = tns_are_equals (cmp_kid1, true_tn) && tns_are_equals(cmp_kid2, false_tn) ? TRUE : FALSE;
    TOP mcr=Get_MC_R_TOP(compare_opr, kid1_eq_truetn);
    Build_MC_OP(mcr, result, cmp_kid1, cmp_kid2,unsignedflag, &new_ops, OP_ALWAYS_UNC_DEF);
     
  } else if (TN_is_constant(false_tn) && TN_value(false_tn) ==0 || tn_registers_identical(false_tn, Zero_TN)) {
    //  result = cmp_kid1 cond cmp_kid2 ? true_tn: 0
    BOOL kid2_is_zero = (TN_is_constant(cmp_kid2) && TN_value(cmp_kid2) == 0 || tn_registers_identical(cmp_kid2, Zero_TN));
    TN *cond_tn = kid2_is_zero ? cmp_kid1 : Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TOP mczc;
    if (!kid2_is_zero) {
      Exp_Compare(WN_opcode(compare), cond_tn, cmp_kid1, cmp_kid2, &new_ops);
      mczc = TOP_mc_zc_ne;
    } else {
      mczc = Get_MC_ZC_TOP(compare_opr, FALSE);
    }
      Build_MC_OP(mczc, result, cond_tn, true_tn, unsignedflag,&new_ops, OP_ALWAYS_UNC_DEF); 	
  } else if (TN_is_constant(true_tn) && TN_value(true_tn) == 0 || tn_registers_identical(true_tn, Zero_TN)) {
     //  result = cmp_kid1 cond cmp_kid2 ? 0 : false_tn
    BOOL kid2_is_zero = (TN_is_constant(cmp_kid2) && TN_value(cmp_kid2) == 0 || tn_registers_identical(cmp_kid2, Zero_TN));
    TN *cond_tn = kid2_is_zero ? cmp_kid1 : Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TOP mczc;
    if (!kid2_is_zero) {
        Exp_Compare(WN_opcode(compare), cond_tn, cmp_kid1, cmp_kid2, &new_ops);
	mczc = TOP_mc_zc_eq;
    } else {
        mczc = Get_MC_ZC_TOP(compare_opr, TRUE);
    }
    Build_MC_OP(mczc, result, cond_tn, false_tn, unsignedflag, &new_ops, OP_ALWAYS_UNC_DEF);	
  
  } else if (tns_are_equals(result, true_tn) || tns_are_equals(result, false_tn)) {
    // result = cmp_kid1 cond cmp_kid2 ? result : false_tn	
    // result = cmp_kid1 cond cmp_kid2 ? true_tn : result	
    BOOL result_eq_true = tns_are_equals(result, true_tn) ? TRUE : FALSE;
    BOOL kid2_is_zero = (TN_is_constant(cmp_kid2) && TN_value(cmp_kid2) == 0 || tn_registers_identical(cmp_kid2, Zero_TN));
    TN *cond_tn = kid2_is_zero ? cmp_kid1 : Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);

    if (!kid2_is_zero) {	
      Exp_Compare(WN_opcode(compare), cond_tn, cmp_kid1, cmp_kid2, &new_ops);
      if (result_eq_true)	
        Build_MC_OP(TOP_mc_z_eq, result, cond_tn, false_tn, unsignedflag, &new_ops, OP_ALWAYS_COND_DEF);
      else 
        Build_MC_OP(TOP_mc_z_ne, result, cond_tn, true_tn, unsignedflag, &new_ops, OP_ALWAYS_COND_DEF);  
     } else {
       TOP mcz = Get_MC_ZERO_TOP(compare_opr, result_eq_true);
       if (result_eq_true)
         Build_MC_OP(mcz, result, cond_tn, false_tn, unsignedflag, &new_ops, OP_ALWAYS_COND_DEF);
       else
         Build_MC_OP(mcz, result, cond_tn, true_tn, unsignedflag, &new_ops, OP_ALWAYS_COND_DEF);  
     }
  } 
  /*whirl node compare:  */
  /* case 1:  if (x > y)    y = x
     case 2:  if (x > y)    x = y 
   */
  else if (WN_Equiv(true_wn, cmp1_wn) && WN_Equiv(false_wn, cmp2_wn)) {
    TOP mcr=Get_MC_R_TOP(compare_opr, TRUE);
    Build_MC_OP(mcr, result, true_tn, false_tn, unsignedflag, &new_ops, OP_ALWAYS_UNC_DEF);
  } else if ( WN_Equiv(true_wn, cmp2_wn) && WN_Equiv(false_wn, cmp1_wn)) {
    TOP mcr=Get_MC_R_TOP(compare_opr, FALSE);
    Build_MC_OP(mcr, result, true_tn,false_tn, unsignedflag, &new_ops, OP_ALWAYS_UNC_DEF);
  } 
  /*
   * case 3:  if (x cond y) z=z+1   convert to 2 instruction
   */
  else if (WN_operator(true_wn) == OPR_ADD && (WN_kid_count(false_wn) == 1) && 
           (WN_operator(WN_kid0(true_wn)) == OPR_INTCONST && 
            WN_const_val(WN_kid0(true_wn)) == 1 &&
            WN_Equiv(WN_kid1(true_wn), false_wn) ||
            WN_operator(WN_kid1(true_wn)) == OPR_INTCONST &&
            WN_const_val(WN_kid1(true_wn)) == 1 &&
	    WN_Equiv(WN_kid0(true_wn), false_wn)) ) {
      TN *tmp = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
      Exp_Compare(WN_opcode(compare), tmp, cmp_kid1, cmp_kid2, &new_ops);
      Build_OP(TOP_addu, result, false_tn, tmp, &new_ops);
      DevWarn("Conditional move::Exp_Select_And_Condition (setlt) 2 instruction ");
  } else if (TN_is_constant(cmp_kid2) && (TN_value(cmp_kid2) == 0) || tn_registers_identical(cmp_kid2, Zero_TN)) {
    // cmp_kid2 eq 0            
      if (tns_are_equals(result, false_tn)) {
        // result == false_tn
        // result = cmp_kid1 cond 0 ? true_tn : result;
        TOP mcz = Get_MC_ZERO_TOP(compare_opr, FALSE);
        Build_MC_OP(mcz, result, cmp_kid1, true_tn, unsignedflag, &new_ops, OP_ALWAYS_UNC_DEF); 
      } else { 
        TOP mcz = Get_MC_ZERO_TOP(compare_opr, FALSE);
        Exp_2inst_MC_Zero(mcz, result, true_tn, false_tn, cmp_kid1,unsignedflag, &new_ops);
        DevWarn("Conditional move::Exp_Select_And_Condition (mc_zero) 2 instruction ");	   
      }
  }
     
  if (OPS_length(&new_ops) == 0) {
    return FALSE;
  }
  else {
    OPS_Append_Ops(ops, &new_ops);
    return TRUE;
  }

}

#endif  // TARG_SL


static void
Expand_Compare_And_Select (
	TOP cmp,
  	TN *cond1, 
  	TN *cond2, 
  	TN *dest, 
  	TN *opposite_dest, 
  	TN *true_tn, 
  	TN *false_tn, 
	BOOL is_float,
	OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


#ifdef TARG_SL
void
Expand_Select (
  TN *dest_tn, 
  TN *cond_tn, 
  TN *true_tn, 
  TN *false_tn, 
  TYPE_ID mtype, 
  BOOL float_cond,
  OPS *ops)
{
  const BOOL is_float = MTYPE_is_float(mtype);
  int unsignedflag = (mtype == MTYPE_U4) ? 1 : 0;
  Is_True((mtype == MTYPE_U4 || mtype==MTYPE_I4) , ("mtype must be MTYPE_I4 or MTYPE_U4" ));
  
  if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_fcc) {
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movt_d:TOP_movt_s, 
	       dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movf_d:TOP_movf_s, 
	       dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    } else {
      Build_OP(TOP_movt, dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(TOP_movf, dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    }
  } else if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_integer) {
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movn_d:TOP_movn_s, 
	       dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movz_d:TOP_movz_s, 
	       dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);      
    } else {
        if (tns_are_equals(true_tn, false_tn)) {
	  Build_OP(TOP_addu, dest_tn, true_tn, Zero_TN, ops);
	  DevWarn("Conditional move::  Expand_Select(1 instructions -copy) ");
        } else if (tns_are_equals(Zero_TN, true_tn)) {
	  Build_MC_OP(TOP_mc_zc_eq, dest_tn, cond_tn, false_tn,unsignedflag, ops, OP_ALWAYS_UNC_DEF);
        } else if (tns_are_equals(Zero_TN, false_tn)) {
          Build_MC_OP(TOP_mc_zc_ne, dest_tn, cond_tn, true_tn, unsignedflag, ops, OP_ALWAYS_UNC_DEF);
        } else if (tns_are_equals(dest_tn, false_tn)) {
          Build_MC_OP(TOP_mc_z_ne, dest_tn, cond_tn, true_tn, unsignedflag, ops, OP_ALWAYS_COND_DEF);
        } else if (tns_are_equals(dest_tn, true_tn)) {
          Build_MC_OP(TOP_mc_z_eq, dest_tn, cond_tn, false_tn, unsignedflag, ops, OP_ALWAYS_COND_DEF);
        } else {
	  Exp_2inst_MC_Zero (TOP_mc_z_ne, dest_tn, true_tn, false_tn, cond_tn, unsignedflag, ops);
          DevWarn("Conditional move::  Expand_Select(2 instructions) ");
        }
    }
  } else if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_float) {
    TN *tmp_tn = Gen_Typed_Register_TN(MTYPE_I4, 4);
    Build_OP(TOP_mfc1, tmp_tn, cond_tn, ops);
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movn_d:TOP_movn_s, 
	       dest_tn, true_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movz_d:TOP_movz_s, 
	       dest_tn, false_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);      
    } else {
        DevWarn("Conditional move::  Expand_Select (float) ");
        if (tns_are_equals(true_tn, false_tn)) {
          Build_OP(TOP_addu, dest_tn, true_tn, Zero_TN, ops);
	  DevWarn("Conditional move::  Expand_Select(float: 1 instructions -copy) ");
        } else if (tns_are_equals(Zero_TN, true_tn)) {
          Build_MC_OP(TOP_mc_zc_eq, dest_tn, tmp_tn, false_tn, unsignedflag, ops, OP_ALWAYS_UNC_DEF);
        } else if (tns_are_equals(Zero_TN, false_tn)) {
          Build_MC_OP(TOP_mc_zc_ne, dest_tn, tmp_tn, true_tn, unsignedflag, ops, OP_ALWAYS_UNC_DEF);
        } else {
  	  Exp_2inst_MC_Zero (TOP_mc_z_ne, dest_tn, true_tn, false_tn, tmp_tn,unsignedflag, ops);
          DevWarn("Conditional move::  Expand_Select(float: 2 instructions) ");
        }
    }
  } else {
    FmtAssert(FALSE, ("UNIMPLEMENTED"));
  }
}
#else

void
Expand_Select (
  TN *dest_tn, 
  TN *cond_tn, 
  TN *true_tn, 
  TN *false_tn, 
  TYPE_ID mtype, 
  BOOL float_cond,
  OPS *ops)
{
  const BOOL is_float = MTYPE_is_float(mtype);
  if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_fcc) {
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movt_d:TOP_movt_s, 
	       dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movf_d:TOP_movf_s, 
	       dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    } else {
      Build_OP(TOP_movt, dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(TOP_movf, dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    }
  } else if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_integer) {
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movn_d:TOP_movn_s, 
	       dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movz_d:TOP_movz_s, 
	       dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);      
    } else {
      Build_OP(TOP_movn, dest_tn, true_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(TOP_movz, dest_tn, false_tn, cond_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    }
  } else if (TN_register_class(cond_tn) == ISA_REGISTER_CLASS_float) {
    TN *tmp_tn = Gen_Typed_Register_TN(MTYPE_I4, 4);
    Build_OP(TOP_mfc1, tmp_tn, cond_tn, ops);
    if (is_float) {
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movn_d:TOP_movn_s, 
	       dest_tn, true_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(MTYPE_is_size_double(mtype)?TOP_movz_d:TOP_movz_s, 
	       dest_tn, false_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);      
    } else {
      Build_OP(TOP_movn, dest_tn, true_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
      Build_OP(TOP_movz, dest_tn, false_tn, tmp_tn, ops);
      Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    }
  } else {
    FmtAssert(FALSE, ("UNIMPLEMENTED"));
  }
}
#endif

#ifdef TARG_SL
void
Expand_Min (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  if (!MTYPE_is_float(mtype)) {
    int unsignedflag = (mtype == MTYPE_U4) ? 1 :0;
    Is_True(mtype == MTYPE_U4|| mtype == MTYPE_I4, ("Expand_Min:: mtype must be MTYPE_U4 or MTYPE_I4"));	
    Build_MC_OP(TOP_mc_r_le, dest, src1, src2, unsignedflag, ops, OP_ALWAYS_UNC_DEF);  	
    DevWarn("Conditional move::  Expand_Min(1 instruction) ");

  } else {
  	BOOL is_signed = MTYPE_is_signed(mtype);
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    if (src1 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src2, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
    else if (src2 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
    else {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	       dest, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
  }
 	Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_UNC_DEF);  
}
#else
void
Expand_Min (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  BOOL is_signed = MTYPE_is_signed(mtype);
  if (!MTYPE_is_float(mtype)) {
    TN *tmp_tn = Gen_Typed_Register_TN(MTYPE_I4, 4);
    if (src1 == dest) {
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src1, src2, ops);
      Build_OP(TOP_movz, dest, src2, tmp_tn, ops); 
    }
    else if (src2 == dest) {
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src2, src1, ops);
      Build_OP(TOP_movz, dest, src1, tmp_tn, ops); 
    }
    else {
      Build_OP(TOP_or, dest, src1, Zero_TN, ops);
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src1, src2, ops);
      Build_OP(TOP_movz, dest, src2, tmp_tn, ops); 
    }
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  } else {
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    if (src1 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src2, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
    else if (src2 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
    else {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	       dest, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  }
}
#endif

#ifdef TARG_SL
void
Expand_Max (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{     
  if (!MTYPE_is_float(mtype)) {
    int unsignedflag = (mtype == MTYPE_U4) ? 1 :0;
    Is_True(mtype == MTYPE_U4|| mtype == MTYPE_I4, 
            ("Expand_Max:: mtype must be MTYPE_U4 or MTYPE_I4"));
    Build_MC_OP(TOP_mc_r_ge, dest, src1, src2,unsignedflag, ops, OP_ALWAYS_UNC_DEF);  	
    DevWarn("Conditional move::  Expand_Max(1 instruction) ");
  } else {
  	BOOL is_signed = MTYPE_is_signed(mtype);
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    if (src1 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
    else if (src2 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src2, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
    else {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	       dest, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
  }
	//Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_UNC_DEF);	  
}
#else
void
Expand_Max (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{     
  BOOL is_signed = MTYPE_is_signed(mtype);
  if (!MTYPE_is_float(mtype)) {
    TN *tmp_tn = Gen_Typed_Register_TN(MTYPE_I4, 4);
    if (src1 == dest) {
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src2, src1, ops);
      Build_OP(TOP_movz, dest, src2, tmp_tn, ops); 
    }
    else if (src2 == dest) {
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src1, src2, ops);
      Build_OP(TOP_movz, dest, src1, tmp_tn, ops); 
    }
    else {
      Build_OP(TOP_or, dest, src2, Zero_TN, ops);
      Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src1, src2, ops);
      Build_OP(TOP_movz, dest, src1, tmp_tn, ops); 
    }
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  } else {
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    if (src1 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
    else if (src2 == dest) {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src2, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src1, tmp_fcc, ops);
    }
    else {
      Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	       dest, src1, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	       tmp_fcc, src1, src2, ops);
      Build_OP(MTYPE_is_size_double(mtype)? TOP_movt_d: TOP_movt_s,
	       dest, src2, tmp_fcc, ops);
    }
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  }
}
#endif

#ifdef TARG_SL
void
Expand_MinMax (TN *dest, TN *dest2, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{ 
  BOOL is_signed = MTYPE_is_signed(mtype);
  FmtAssert(dest != src1 && dest2 != src1 && dest != src2 && dest2 != src2,
	    ("Expand_MinMax: dest TN cannot be also src TN"));
  if (!MTYPE_is_float(mtype)) {
    int unsignedflag = (mtype == MTYPE_U4) ? 1 :0;
    Is_True(mtype == MTYPE_U4|| mtype == MTYPE_I4, 
            ("Expand_MinMax:: mtype must be MTYPE_U4 or MTYPE_I4"));	
    Build_MC_OP (TOP_mc_r_ge, dest, src1, src2,unsignedflag, ops, OP_ALWAYS_UNC_DEF); 
    Build_MC_OP (TOP_mc_r_le, dest2, src1, src2, unsignedflag, ops, OP_ALWAYS_UNC_DEF);
    DevWarn("Conditional move::  Expand_MinMax() ");
  } else {
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	     dest, src1, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	     dest2, src2, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_olt_s,
	     tmp_fcc, src1, src2, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_movf_d: TOP_movf_s,
	     dest, src2, tmp_fcc, ops);
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_movf_d: TOP_movf_s,
	     dest2, src1, tmp_fcc, ops);
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  }
}
#else
void
Expand_MinMax (TN *dest, TN *dest2, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{ 
  BOOL is_signed = MTYPE_is_signed(mtype);
  FmtAssert(dest != src1 && dest2 != src1 && dest != src2 && dest2 != src2,
	    ("Expand_MinMax: dest TN cannot be also src TN"));
  if (!MTYPE_is_float(mtype)) {
    TN *tmp_tn = Gen_Typed_Register_TN(MTYPE_I4, 4);
    Build_OP(TOP_or, dest, src1, Zero_TN, ops);
    Build_OP(TOP_or, dest2, src2, Zero_TN, ops);
    Build_OP(is_signed?TOP_slt:TOP_sltu, tmp_tn, src1, src2, ops);
    Build_OP(TOP_movz, dest, src2, tmp_tn, ops); 
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    Build_OP(TOP_movz, dest2, src1, tmp_tn, ops); 
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  } else {
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	     dest, src1, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_mov_d: TOP_mov_s,
	     dest2, src2, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_c_lt_d: TOP_c_lt_s,
	     tmp_fcc, src1, src2, ops);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_movf_d: TOP_movf_s,
	     dest, src2, tmp_fcc, ops);
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
    Build_OP(MTYPE_is_size_double(mtype)? TOP_movf_d: TOP_movf_s,
	     dest2, src1, tmp_fcc, ops);
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  }
}
#endif

/* check whether to eval condition before select */
extern BOOL
Check_Select_Expansion (OPCODE compare)
{
  // in order to get optimal code,
  // don't evaluate the condition first,
  // but pass the condition and kids to exp_select,
  // which will do the compare and use the predicate results.
  return FALSE;
}

#if defined(TARG_SL)
extern void 
Exp_Select_And_Condition (
        OPCODE select, TN *result, TN *true_tn, TN *false_tn,
        OPCODE compare, TN *cmp_kid1, TN *cmp_kid2, VARIANT variant, OPS *ops)
	{
	  TOP cmp1, cmp2;
	 
	  if (Trace_Exp) {
		fprintf(TFile, "expand %s: ", OPCODE_name(select));
		if (result) Print_TN(result,FALSE);
		fprintf(TFile, " :- (");
		if (cmp_kid1) Print_TN(cmp_kid1,FALSE);
		fprintf(TFile, " ");
		fprintf(TFile, OPCODE_name(compare));
		fprintf(TFile, " ");
		if (cmp_kid2) Print_TN(cmp_kid2,FALSE);
		fprintf(TFile, ") ? ");
		if (true_tn) Print_TN(true_tn,FALSE);
		fprintf(TFile, " : ");
		if (false_tn) Print_TN(false_tn,FALSE);
		fprintf(TFile, " ");
		if (variant) fprintf(TFile, "(0x%llx)", (INT64)variant);
		fprintf(TFile, "\n");
	  }
	
	  TYPE_ID desc = OPCODE_desc(compare);
	  OPERATOR compare_opr = OPCODE_operator(compare);
	  TN *p = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
	  int unsignedflag = (select == OPC_I4SELECT) ? 0 : 1  ;
	  
	  OPS new_ops;
	  OPS_Init(&new_ops);
	
	  Is_True(MTYPE_is_float(desc)==FALSE, ("Exp_Select_And_Condition: OPCODE_desc(compare) cannot be float typed"));
	  Is_True(select == OPC_U4SELECT || select == OPC_I4SELECT , 
	  	          ("Exp_Select_And_Condition:: select opr must be OPC_U4SELECT or OPC_I4SELECT"));

	  /*3 instructions	*/
	  Exp_Compare(compare,p, cmp_kid1, cmp_kid2,  &new_ops);    	  
	  Exp_2inst_MC_Zero (TOP_mc_z_ne, result, true_tn, false_tn, p, unsignedflag, &new_ops);
	  DevWarn("Conditional move::  Exp_Select_And_Condition (2 instructions) ");
	
	  if (Trace_Exp) {
           OP *op;
	    FOR_ALL_OPS_OPs (&new_ops, op) {
	      fprintf(TFile, " into "); Print_OP (op);
	    }
	  }
	  OPS_Append_Ops(ops, &new_ops);
	}  //Exp_Select_And_Condition 

#else
extern void 
Exp_Select_And_Condition (
        OPCODE select, TN *result, TN *true_tn, TN *false_tn,
        OPCODE compare, TN *cmp_kid1, TN *cmp_kid2, VARIANT variant, OPS *ops)
{
  TOP cmp1, cmp2;

  if (Trace_Exp) {
    fprintf(TFile, "expand %s: ", OPCODE_name(select));
    if (result) Print_TN(result,FALSE);
    fprintf(TFile, " :- (");
    if (cmp_kid1) Print_TN(cmp_kid1,FALSE);
    fprintf(TFile, " ");
    fprintf(TFile, OPCODE_name(compare));
    fprintf(TFile, " ");
    if (cmp_kid2) Print_TN(cmp_kid2,FALSE);
    fprintf(TFile, ") ? ");
    if (true_tn) Print_TN(true_tn,FALSE);
    fprintf(TFile, " : ");
    if (false_tn) Print_TN(false_tn,FALSE);
    fprintf(TFile, " ");
    if (variant) fprintf(TFile, "(0x%llx)", (INT64)variant);
    fprintf(TFile, "\n");
  }

  TYPE_ID desc = OPCODE_desc(compare);
  OPERATOR compare_opr = OPCODE_operator(compare);
  TN *p;
  OPS new_ops;
  OPS_Init(&new_ops);
  if (MTYPE_is_float(desc))
    p = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
  else p = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);

  if (compare_opr == OPR_NE) { // c_neq_[sd] not supported by assembler
    TN *tmp = true_tn;
    true_tn = false_tn;
    false_tn = tmp;
    compare_opr = OPR_EQ;
  }
  
  switch(compare_opr) {
  case OPR_LT:
    if (MTYPE_is_float(desc))
	Expand_Float_Less (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else
	Expand_Int_Less (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_LE:
    if (MTYPE_is_float(desc))
	Expand_Float_Less_Equal (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else
	Expand_Int_Less_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_EQ:
    if (MTYPE_is_float(desc))
	Expand_Float_Equal (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else if (desc == MTYPE_B)
	Expand_Bool_Equal (p, cmp_kid1, cmp_kid2, &new_ops);
    else
	Expand_Int_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
#if 0 // this case avoided by above transformation
  case OPR_NE:
    if (MTYPE_is_float(desc))
	Expand_Float_Not_Equal (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else if (desc == MTYPE_B)
	Expand_Bool_Not_Equal (p, cmp_kid1, cmp_kid2, &new_ops);
    else
	Expand_Int_Not_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
#endif
  case OPR_GE:
    if (MTYPE_is_float(desc))
	Expand_Float_Greater_Equal (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else
	Expand_Int_Greater_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_GT:
    if (MTYPE_is_float(desc))
	Expand_Float_Greater (p, cmp_kid1, cmp_kid2, variant, desc, &new_ops);
    else
	Expand_Int_Greater (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  default:
    FmtAssert(FALSE, ("Unknown opcode"));
  }

  if (result != true_tn && result != false_tn) {
    if (MTYPE_is_float(OPCODE_rtype(select))) {
      Build_OP (MTYPE_is_size_double(OPCODE_rtype(select))?TOP_mov_d:TOP_mov_s, 
	        result, true_tn, &new_ops);
    } else {
      Build_OP (TOP_or, result, Zero_TN, true_tn, &new_ops);
    }
  }

  if (MTYPE_is_float(OPCODE_rtype(select))) {
    if (result != false_tn) {
      if (MTYPE_is_float(desc))
	Build_OP (MTYPE_is_size_double(OPCODE_rtype(select))?TOP_movf_d:TOP_movf_s, 
		  result, false_tn, p, &new_ops);
      else Build_OP (MTYPE_is_size_double(OPCODE_rtype(select))?TOP_movz_d:TOP_movz_s,
		     result, false_tn, p, &new_ops);
    } else {
      if (MTYPE_is_float(desc))
	Build_OP (MTYPE_is_size_double(OPCODE_rtype(select))?TOP_movt_d:TOP_movt_s, 
		  result, true_tn, p, &new_ops);
      else Build_OP (MTYPE_is_size_double(OPCODE_rtype(select))?TOP_movn_d:TOP_movn_s,
		     result, true_tn, p, &new_ops);
    }
  } else {
    if (result != false_tn) {
      if (MTYPE_is_float(desc))
	Build_OP (TOP_movf, result, false_tn, p, &new_ops);
      else Build_OP (TOP_movz, result, false_tn, p, &new_ops);
    } else {
      if (MTYPE_is_float(desc))
	Build_OP (TOP_movt, result, true_tn, p, &new_ops);
      else Build_OP (TOP_movn, result, true_tn, p, &new_ops);
    }
  }
  Set_OP_cond_def_kind(OPS_last(&new_ops), OP_ALWAYS_COND_DEF); 
  if (Trace_Exp) {
    OP *op;
    FOR_ALL_OPS_OPs (&new_ops, op) {
	    fprintf(TFile, " into "); Print_OP (op);
    }
  }
  OPS_Append_Ops(ops, &new_ops);
}
#endif

#if defined(TARG_SL)
extern LABEL_IDX 
Exp_Select_Part1(
        OPCODE select, TN *result, TN *true_tn, TN *false_tn,
        OPCODE compare, TN *cmp_kid1, TN *cmp_kid2, OPS *ops)
{
  TOP cmp1, cmp2;

  if (Trace_Exp) {
    fprintf(TFile, "expand %s: ", OPCODE_name(select));
    if (result) Print_TN(result,FALSE);
    fprintf(TFile, " :- (");
    if (cmp_kid1) Print_TN(cmp_kid1,FALSE);
    fprintf(TFile, " ");
    fprintf(TFile, OPCODE_name(compare));
    fprintf(TFile, " ");
    if (cmp_kid2) Print_TN(cmp_kid2,FALSE);
    fprintf(TFile, ") ? ");
    if (true_tn) Print_TN(true_tn,FALSE);
    fprintf(TFile, " : ");
    if (false_tn) Print_TN(false_tn,FALSE);
    fprintf(TFile, "\n");
  }

  TYPE_ID desc = OPCODE_desc(compare);
  Is_True(MTYPE_is_float(desc)==FALSE, ("cannot handle floats"));

  OPERATOR compare_opr = OPCODE_operator(compare);
  TN *p;
  OPS new_ops;
  LABEL_IDX merge_lab;

  OPS_Init(&new_ops);
  p = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);

  if (compare_opr == OPR_NE) { // c_neq_[sd] not supported by assembler
    TN *tmp = true_tn;
    true_tn = false_tn;
    false_tn = tmp;
    compare_opr = OPR_EQ;
  }
  
  switch(compare_opr) {
  case OPR_LT:
    Expand_Int_Less (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_LE:
    Expand_Int_Less_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_EQ:
    if (desc == MTYPE_B)
	Expand_Bool_Equal (p, cmp_kid1, cmp_kid2, &new_ops);
    else
	Expand_Int_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
#if 0 // this case avoided by above transformation
  case OPR_NE:
    if (desc == MTYPE_B)
	Expand_Bool_Not_Equal (p, cmp_kid1, cmp_kid2, &new_ops);
    else
	Expand_Int_Not_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
#endif
  case OPR_GE:
    Expand_Int_Greater_Equal (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  case OPR_GT:
    Expand_Int_Greater (p, cmp_kid1, cmp_kid2, desc, &new_ops);
    break;
  default:
    FmtAssert(FALSE, ("Unknown opcode"));
  }

  if (result != true_tn) {
    Build_OP (TOP_or, result, Zero_TN, true_tn, &new_ops);
  }

  merge_lab = Gen_Temp_Label();
  TN *merge_lab_tn = Gen_Label_TN(merge_lab, 0);
  Build_OP (TOP_bne, p, Zero_TN, merge_lab_tn, &new_ops);

  if (Trace_Exp) {
    OP *op;
    FOR_ALL_OPS_OPs (&new_ops, op) {
	    fprintf(TFile, " into "); Print_OP (op);
    }
  }
  OPS_Append_Ops(ops, &new_ops);

  return merge_lab;
}
#endif // Expand_Select_Part1



#define RESET_COND_DEF_LAST(ops) Set_OP_cond_def_kind(OPS_last(ops),OP_ALWAYS_UNC_DEF)

static void
Expand_SGI_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  /*	(p0) frsqrta.s0 f6,p2=src	# y2 = ~1/sqrt(x)
   *
   *	(p2) ldfd	f4=half		# f4 = 0.5 (0x3fe0000000000000)
   *	(p2) ldfd	f7=ah		# f7 = 0x3fe0000000000001
   *
   *	(p2) fmpy.d.s1	f3=src,f6	# g = x*y2
   *	(p2) fmpy.d.s1	f2=f4,f6	# y = 0.5*y2
   *
   *	(p2) fnma.d.s1	f5=f3,f3,src	# d = x - g*g
   *
   *	(p2) fma.d.s1	f3=f2,f5,f3	# g = g + y*d # 16 bit approximation
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s1   f3=f2,f5,f3     # g = g + y*d # 32 bit approximation
   *	(p2) fadd.d.s1  f6=f3,f3        # y2 = y + y
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s1   f3=f2,f5,f3     # g = g + y*d # 64 bit approximation before rounding
   *	(p2) fadd.d.s1  f6=f3,f3        # y2 = y + y
   *
   *	(p2) fnma.d.s1	f8=f2,f3,f7	# e = ah - y*g
   *	(p2) fnma.d.s1	f5=f3,f3,src    # d = x - g*g
   *	(p2) fma.d.s1	f2=f8,f6,f2	# y = y + e*y2
   *
   *	(p2) fma.d.s0   f6=f2,f5,f3	# result = g + y*d
   */
  // 3-mar-00/ken: this doesn't work for MTYPE_F10!!!!
}

static void
Expand_Intel_F10_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_F8_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_F4_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Min_Lat_F8_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Min_Lat_F4_Sqrt(TN *result, TN *src, OPS *ops)
{ FmtAssert(FALSE,("Unimplemented")); }


static void
Expand_Intel_Max_Thr_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  switch (mtype) {
  case MTYPE_F4:
    Expand_Intel_Max_Thr_F4_Sqrt(result, src, ops);
    break;
  case MTYPE_F8:
    Expand_Intel_Max_Thr_F8_Sqrt(result, src, ops);
    break;
  case MTYPE_F10:
    Expand_Intel_F10_Sqrt(result, src, ops);
    break;
  default:
    FmtAssert(FALSE, ("Bad type in Expand_Intel_Max_Thr_Sqrt"));
    /*NOTREACHED*/
  }
}


static void
Expand_Intel_Min_Lat_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  switch (mtype) {
  case MTYPE_F4:
    Expand_Intel_Min_Lat_F4_Sqrt(result, src, ops);
    break;
  case MTYPE_F8:
    Expand_Intel_Min_Lat_F8_Sqrt(result, src, ops);
    break;
  case MTYPE_F10:
    Expand_Intel_F10_Sqrt(result, src, ops);
    break;
  default:
    FmtAssert(FALSE, ("Bad type in Expand_Intel_Min_Lat_Sqrt"));
    /*NOTREACHED*/
  }
}


void
Expand_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  FmtAssert(TN_register_class(result) == ISA_REGISTER_CLASS_float && 
	    TN_register_class(src) == ISA_REGISTER_CLASS_float, 
	    ("Unimplemented sqrt for integer src/dest"));  
  Build_OP(MTYPE_is_size_double(mtype)?TOP_sqrt_d:TOP_sqrt_s, 
	   result, src, ops);
}


static void
Expand_Float_Compares(TOP cmp_opcode, TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops)
{
  if (TN_register_class(dest) == ISA_REGISTER_CLASS_fcc) {
    FmtAssert(cmp_opcode != TOP_c_neq_d && cmp_opcode != TOP_c_neq_s,
	      ("Expand_Float_Compares: should not use c_neq_[sd] which is not supported by assembler"));  
    Build_OP(cmp_opcode, dest, src1, src2, ops);   
  } else {
    FmtAssert(TN_register_class(dest) == ISA_REGISTER_CLASS_integer,
	      ("Expand_Float_Compares: result must be fcc or integer"));  
    TN *tmp_fcc = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 1);
    Build_OP(MTYPE_is_size_double(mtype)?TOP_daddiu:TOP_addiu, 
	     dest, Zero_TN, Gen_Literal_TN(1, 4), ops);
    if (cmp_opcode == TOP_c_neq_d || cmp_opcode == TOP_c_neq_s) {
      Build_OP(cmp_opcode == TOP_c_neq_d ? TOP_c_eq_d : TOP_c_eq_s, 
	       tmp_fcc, src1, src2, ops);     
      Build_OP(TOP_movt, dest, Zero_TN, tmp_fcc, ops);
    }
    else {
      Build_OP(cmp_opcode, tmp_fcc, src1, src2, ops);     
      Build_OP(TOP_movf, dest, Zero_TN, tmp_fcc, ops);
    }
    Set_OP_cond_def_kind(OPS_last(ops), OP_ALWAYS_COND_DEF);
  }
}

void
Expand_Float_Less (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
#if defined(TARG_SL)
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_lt_d:TOP_c_olt_s,
#else 
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_lt_d:TOP_c_lt_s, 
#endif
			dest, src1, src2, mtype, ops);
}

void
Expand_Float_Greater (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
#if defined(TARG_SL)
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_lt_d:TOP_c_olt_s,
#else 
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_lt_d:TOP_c_lt_s, 
#endif
			dest, src2, src1, mtype, ops);
}

void
Expand_Float_Less_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
#if defined(TARG_SL)
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_le_d:TOP_c_ole_s, 
#else
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_le_d:TOP_c_le_s, 
#endif
			dest, src1, src2, mtype, ops);
}

void
Expand_Float_Greater_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
#if defined(TARG_SL)
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_le_d:TOP_c_ole_s, 
#else
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_le_d:TOP_c_le_s, 
#endif
			dest, src2, src1, mtype, ops);
}

void
Expand_Float_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_eq_d:TOP_c_eq_s, 
			dest, src1, src2, mtype, ops);
}

void
Expand_Float_Not_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops)
{
  Expand_Float_Compares(MTYPE_is_size_double(mtype)?TOP_c_neq_d:TOP_c_neq_s, 
			dest, src1, src2, mtype, ops);
}

void
Expand_Recip_Sqrt (TN *result, TN *src, TYPE_ID mtype, OPS *ops)
{
  /*	(p0) frsqrta.s0 f2,p2=src	# y = ~1/sqrt(x)
   *
   *	(p2) ldfd	f4=half		# f4 = 0.5
   *	(p2) fmpy.d.s1	f5=f4,src	# hx = 0.5*x
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s1   f2=f2,f6,f2	# y = y + y*z
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s1   f2=f2,f6,f2	# y = y + y*z
   *
   *	(p2) fmpy.d.s1	f3=f2,f2	# y2 = y*y
   *	(p2) fnma.d.s1	f6=f5,f3,f4	# z = 0.5 - 0.5*x*y*y
   *	(p2) fma.d.s0   f2=f2,f6,f2	# result = y + y*z
   */
}

void
Expand_Flop (OPCODE opcode, TN *result, TN *src1, TN *src2, TN *src3, OPS *ops)
{
  TOP opc;

  switch (opcode) {
  case OPC_F4ADD:
    opc = TOP_add_s;
    break;
  case OPC_F8ADD:
    opc = TOP_add_d;
    break;
  case OPC_F4SUB:
    opc = TOP_sub_s;
    break;
  case OPC_F8SUB:
    opc = TOP_sub_d;
    break;
  case OPC_F4MPY:
    opc = TOP_mul_s;
    break;
  case OPC_F8MPY:
    opc = TOP_mul_d;
    break;
  case OPC_F4MADD:	// (src2 * src3) + src1
    opc = TOP_madd_s;
    break;
  case OPC_F4NMADD:	// -((src2 * src3) + src1)
    opc = TOP_nmadd_s;
    break;
  case OPC_F4MSUB:	// (src2 * src3) - src1
    opc = TOP_msub_s;
    break;
  case OPC_F4NMSUB:	// -((src2 * src3) - src1)
    opc = TOP_nmsub_s;
    break;
  case OPC_F8MADD:	// (src2 * src3) + src1
    opc = TOP_madd_d;
    break;
  case OPC_F8NMADD:	// -((src2 * src3) + src1)
    opc = TOP_nmadd_d;
    break;
  case OPC_F8MSUB:	// (src2 * src3) - src1
    opc = TOP_msub_d;
    break;
  case OPC_F8NMSUB:	// -((src2 * src3) - src1)
    opc = TOP_nmsub_d;
    break;
  case OPC_F4DIV:
    opc = TOP_div_s;
    break;
  case OPC_F8DIV:
    opc = TOP_div_d;
    break;
  case OPC_F4RECIP:
    opc = TOP_recip_s;
    break;
  case OPC_F8RECIP:
    opc = TOP_recip_d;
    break;
  case OPC_F4RSQRT:
    opc = TOP_rsqrt_s;
    break;
  case OPC_F8RSQRT:
    opc = TOP_rsqrt_d;
    break;
  default:
    #pragma mips_frequency_hint NEVER
    FmtAssert(FALSE, ("unexpected opcode %s", OPCODE_name(opcode)));
    /*NOTREACHED*/
  }
  if (TOP_is_madd(opc)) {
    Build_OP(opc, result, src1, src2, src3, ops);
  } else {
    Build_OP(opc, result, src1, src2, ops);
  }
}

extern void
Init_CG_Expand (void)
{
  static BOOL Initialized = FALSE;

  // per PU:
  Trace_Exp = Get_Trace (TP_CGEXP, 1);
  /* whirl2ops uses -ttexp:2 */
  Trace_Exp2 = Get_Trace (TP_CGEXP, 4);
  Disable_Const_Mult_Opt = Get_Trace (TP_CGEXP, 32);
  
  if (Initialized) return;
  Initialized = TRUE;
  // once per file:
  Initialize_Branch_Variants();
}


/* ======================================================================
 * Exp_COPY
 * 
 * Generate a register transfer copy from 'src_tn' to 'tgt_tn'. 
 * ======================================================================*/
void 
Exp_COPY (TN *tgt_tn, TN *src_tn, OPS *ops)
{
  if( TN_is_constant(src_tn) )
  {
    FmtAssert (TN_has_value(src_tn), ("Exp_COPY: illegal source tn"));
    /* expansion for INTCONST doesn't depend on size */
    Exp_OP1 (OPC_I4INTCONST, tgt_tn, src_tn, ops);
  }
  else
  {
#if defined(TARG_SL)
    /* if src tn is map to a special register, the tgt_tn need to be mapped to same special register*/
    Copy_Tn_MapInfo(src_tn, tgt_tn); 
#endif

    ISA_REGISTER_CLASS tgt_rc = TN_register_class(tgt_tn);
    ISA_REGISTER_CLASS src_rc = TN_register_class(src_tn);

    if (tgt_rc == src_rc && tgt_rc == ISA_REGISTER_CLASS_integer) {
      Build_OP( TOP_or, tgt_tn, src_tn, Zero_TN, ops );
      Set_OP_copy (OPS_last(ops));
    }
    else if (src_tn == tgt_tn)
    {
      /* We don't know how to do this copy, but since the source and
         target are the same, we can just return a nop (we must return
         some op). */
      Build_OP(TOP_noop, ops);
    }
    else if (tgt_rc == src_rc && tgt_rc == ISA_REGISTER_CLASS_float) {
      /* dedicated TNs always have size 8, so need to check both TNs */
      BOOL is_double = (TN_size(tgt_tn) == 8 && TN_size(src_tn) == 8);
      Build_OP(is_double ? TOP_mov_d : TOP_mov_s, tgt_tn, src_tn, ops);
      Set_OP_copy (OPS_last(ops));
    }
#if defined(TARG_SL)
    else if (src_rc == ISA_REGISTER_CLASS_control) {
      if (src_rc == tgt_rc) {
        TN *tmp_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer, 4);
          Build_OP(TOP_mvfc, tmp_tn, src_tn, ops);
          Build_OP(TOP_mvtc, tgt_tn, tmp_tn, ops);
      } else if (tgt_rc == ISA_REGISTER_CLASS_integer) {
          Build_OP(TOP_mvfc, tgt_tn, src_tn, ops);
      }
    }
    else if (tgt_rc == ISA_REGISTER_CLASS_control) {
      Is_True(src_rc == ISA_REGISTER_CLASS_integer, ("not supported reg class save"));
      Build_OP(TOP_mvtc, tgt_tn, src_tn, ops);
    }
    else if (src_rc == ISA_REGISTER_CLASS_accum) {
	 if (src_rc == tgt_rc) {
        TN *tmp_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer, 4);
          Build_OP(TOP_c3_mvfacc, tmp_tn, src_tn, ops);
          Build_OP(TOP_c3_mvtacc, tgt_tn, tmp_tn, ops);
      } else if (tgt_rc == ISA_REGISTER_CLASS_integer) {
          Build_OP(TOP_c3_mvfacc, tgt_tn, src_tn, ops);
      }	
    } else if (tgt_rc == ISA_REGISTER_CLASS_accum) {
        Is_True(src_rc == ISA_REGISTER_CLASS_integer, ("not supported reg class save"));
        Build_OP(TOP_c3_mvtacc, tgt_tn, src_tn, ops); 
    }
    else if (src_rc == ISA_REGISTER_CLASS_addr) {
	 if (src_rc == tgt_rc) {
        TN *tmp_tn = Gen_Register_TN (ISA_REGISTER_CLASS_integer, 4);
          Build_OP(TOP_c3_mvfadd, tmp_tn, src_tn, ops);
          Build_OP(TOP_c3_mvtadd, tgt_tn, tmp_tn, ops);
      } else if (tgt_rc == ISA_REGISTER_CLASS_integer) {
          Build_OP(TOP_c3_mvfadd, tgt_tn, src_tn, ops);
      }	
    } else if (tgt_rc == ISA_REGISTER_CLASS_addr) {
        Is_True(src_rc == ISA_REGISTER_CLASS_integer, ("not supported reg class save"));
        Build_OP(TOP_c3_mvtadd, tgt_tn, src_tn, ops); 
    }	
#endif

    else
    {
      /* dedicated TNs always have size 8, so need to check both TNs */
      BOOL is_double = (TN_size(tgt_tn) == 8 && TN_size(src_tn) == 8); 
      if (src_rc == ISA_REGISTER_CLASS_integer) { // tgt_tc is float class
	Build_OP(is_double ? TOP_dmtc1 : TOP_mtc1, tgt_tn, src_tn, ops);
      } else if (src_rc == ISA_REGISTER_CLASS_float) { // tgt_tc is integer class
	Build_OP(is_double ? TOP_dmfc1 : TOP_mfc1, tgt_tn, src_tn, ops);
      } else {
	FmtAssert(FALSE, ("Unimplemented Copy.\n"));
      }
    }
  }
}

static ST *tmp_apply_arg = NULL;
void
Generate_Temp_Apply_Arg ( )
{
  TY_IDX tyi;
  TY& ty = New_TY(tyi);
  TY_Init(ty, 144, KIND_STRUCT, MTYPE_M,
          Save_Str("__apply_arg"));
  Set_TY_align(tyi, 8);
  tmp_apply_arg = New_ST(CURRENT_SYMTAB);
  ST_Init(tmp_apply_arg, TY_name_idx(ty),
          CLASS_VAR, SCLASS_AUTO, EXPORT_LOCAL, tyi);
  Set_ST_is_temp_var(tmp_apply_arg);
  Allocate_Object(tmp_apply_arg);
}

void
Exp_Intrinsic_Op (INTRINSIC id, TN *result, TN *op0, TN *op1, TYPE_ID mtype, OPS *ops)
{
  FmtAssert(FALSE, ("Exp_Intrinsic_Op NYI"));
  return; // if you can
}

/* ======================================================================
 * Expand_TOP_intrncall
 * 
 * Given a TOP_intrncall <op>, expand it into the sequence of instructions 
 * that must be generated. If <get_sequence_length> is TRUE, return only
 * the number of instructions in the sequence and don't actually do the 
 * expansion.
 * ======================================================================*/
static INT
Expand_TOP_intrncall (
  const OP *op, 
  OPS *ops, 
  BOOL get_sequence_length,
  INT pc_value)
{
  FmtAssert(FALSE, ("Expand_TOP_intrncall NYI"));
  return 0;
}

static TYPE_ID
Get_Intrinsic_Size_Mtype (INTRINSIC id)
{
  switch (id) {
  case INTRN_COMPARE_AND_SWAP_I4:
  case INTRN_LOCK_TEST_AND_SET_I4:
  case INTRN_LOCK_RELEASE_I4:
  case INTRN_FETCH_AND_ADD_I4:
  case INTRN_ADD_AND_FETCH_I4:
  case INTRN_SUB_AND_FETCH_I4:
  case INTRN_OR_AND_FETCH_I4:
  case INTRN_XOR_AND_FETCH_I4:
  case INTRN_AND_AND_FETCH_I4:
  case INTRN_NAND_AND_FETCH_I4:
  case INTRN_FETCH_AND_SUB_I4:
  case INTRN_FETCH_AND_OR_I4:
  case INTRN_FETCH_AND_XOR_I4:
  case INTRN_FETCH_AND_AND_I4:
  case INTRN_FETCH_AND_NAND_I4:
	return MTYPE_I4;
  case INTRN_COMPARE_AND_SWAP_I8:
  case INTRN_LOCK_TEST_AND_SET_I8:
  case INTRN_LOCK_RELEASE_I8:
  case INTRN_FETCH_AND_ADD_I8:
  case INTRN_ADD_AND_FETCH_I8:
  case INTRN_SUB_AND_FETCH_I8:
  case INTRN_OR_AND_FETCH_I8:
  case INTRN_XOR_AND_FETCH_I8:
  case INTRN_AND_AND_FETCH_I8:
  case INTRN_NAND_AND_FETCH_I8:
  case INTRN_FETCH_AND_SUB_I8:
  case INTRN_FETCH_AND_OR_I8:
  case INTRN_FETCH_AND_XOR_I8:
  case INTRN_FETCH_AND_AND_I8:
  case INTRN_FETCH_AND_NAND_I8:
  case INTRN_SYNCHRONIZE:
	return MTYPE_I8;
  default:
  	FmtAssert(FALSE, ("Unexpected intrinsic %d", id));
	return MTYPE_UNKNOWN;
  }
}

static BOOL
Intrinsic_Returns_New_Value (INTRINSIC id)
{
  switch (id) {
  case INTRN_ADD_AND_FETCH_I4:
  case INTRN_SUB_AND_FETCH_I4:
  case INTRN_OR_AND_FETCH_I4:
  case INTRN_XOR_AND_FETCH_I4:
  case INTRN_AND_AND_FETCH_I4:
  case INTRN_NAND_AND_FETCH_I4:
  case INTRN_ADD_AND_FETCH_I8:
  case INTRN_SUB_AND_FETCH_I8:
  case INTRN_OR_AND_FETCH_I8:
  case INTRN_XOR_AND_FETCH_I8:
  case INTRN_AND_AND_FETCH_I8:
  case INTRN_NAND_AND_FETCH_I8:
	return TRUE;
  default:
	return FALSE;
  }
}

#if defined(TARG_SL2) || defined(TARG_SL2)

/* Get assembly instruction using instrinsic id and some conditions */
#define INVALID_CONST -1 

TOP
Analyze_SL2_Intrinsic( INTRINSIC id, WN* intrncall ) {

  UINT32 op_type, sign;
   
  INT32 opnds[15];  
    
  UINT32 opnds_num = WN_kid_count(intrncall);


  /* get all kids of  intrncall */
  for(int i = 0; i < opnds_num; i++) {
    WN* ith_parm = WN_kid(intrncall, i); 
    WN* kid0 = WN_kid0(ith_parm); 
    if(WN_operator(kid0)==OPR_INTCONST)
      opnds[i] = WN_const_val(WN_kid0(WN_kid(intrncall, i)));
    else  
      opnds[i] = INVALID_CONST; //for assertion 
  }
   
  switch (id) {
    case  INTRN_C2_MVGR_R2G:  //mode: opnds[2]   sign:opnds[3]
      if(opnds[2]==0 && opnds[4]<2 && opnds[3]==0)
        return TOP_c2_mvgr_r2g_h_u_i;
      else  if(opnds[2]==0 && opnds[4]<2 && opnds[3]==1)
        return TOP_c2_mvgr_r2g_h_i;
      else  if(opnds[2]==0 && opnds[4]>=2)
        return TOP_c2_mvgr_r2g_w_i;
      else  if(opnds[2]==1 && opnds[4]<2 && opnds[3]==0)
        return TOP_c2_mvgr_r2g_h_u;
      else  if(opnds[2]==1 && opnds[4]<2 && opnds[3]==1)
        return TOP_c2_mvgr_r2g_h;
      else  if(opnds[2]==1 && opnds[4]>=2)
        return TOP_c2_mvgr_r2g_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_mvgr_r2g"));
      }
    break;
    case  INTRN_C2_MVGR_G2R: 
    // op_mode:opnds[3]   dir:opnds[4]   sign:opnds[5]   size:opnds[6]  immed_bank:opnds[7]
      if(opnds[3]==0 && opnds[6]==0)
        return TOP_c2_mvgr_g2r_ba_lh;
      else  if(opnds[3]==0 && opnds[6]==1)
        return TOP_c2_mvgr_g2r_ba_hh;
      else  if(opnds[3]==0 && opnds[6]==2)
        return TOP_c2_mvgr_g2r_ba_w;
      else  if(opnds[3]==1 && opnds[6]==0 && opnds[7] == 1)
        return TOP_c2_mvgr_g2r_lh_i;
      else  if(opnds[3]==1 && opnds[6]==1 && opnds[7] == 1)
        return TOP_c2_mvgr_g2r_hh_i;
      else  if(opnds[3]==1 && opnds[6]==2 && opnds[7] == 1)
        return TOP_c2_mvgr_g2r_w_i;
      else  if(opnds[3]==1 && opnds[6]==0 && opnds[7] == 0)
        return TOP_c2_mvgr_g2r_lh;
      else  if(opnds[3]==1 && opnds[6]==1 && opnds[7] == 0)
        return TOP_c2_mvgr_g2r_hh;
      else  if(opnds[3]==1 && opnds[6]==2 && opnds[7] == 0)
        return TOP_c2_mvgr_g2r_w;
      else  if(opnds[3]==2 && opnds[4]==0 && opnds[5]==1)
        return TOP_c2_mvgr_g2r_bh;
      else  if(opnds[3]==2 && opnds[4]==0 && opnds[5]==0)
        return TOP_c2_mvgr_g2r_bh_u;
      else  if(opnds[3]==2 && opnds[4]==1 && opnds[5]==1)
        return TOP_c2_mvgr_g2r_bv;
      else  if(opnds[3]==2 && opnds[4]==1 && opnds[5]==0)
        return TOP_c2_mvgr_g2r_bv_u;
      else  if(opnds[3]==3 && opnds[7] == 1)
        return TOP_c2_mvgr_g2r_b4_i;
      else  if(opnds[3]==3 && opnds[7] == 0)
        return TOP_c2_mvgr_g2r_b4;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_mvgr_g2r"));
      }
    break;
    case  INTRN_C2_MVGC_C2G:
      return TOP_c2_mvgc_c2g;
    break;
    case  INTRN_C2_MVGC_G2C:
      return TOP_c2_mvgc_g2c;
    break;
    case  INTRN_C2_LD_V:
      if(opnds[3]==0 && opnds[2]==0 && opnds[5]>=2 && opnds[4]==0)
        return TOP_c2_ld_v_b_u;
      else  if(opnds[3]==0 && opnds[2]==0 && opnds[5]>=2 && opnds[4]==1)
        return TOP_c2_ld_v_b;
      else  if(opnds[3]==0 && opnds[2]==0 && opnds[5]==0)
        return TOP_c2_ld_v_h;
      else  if(opnds[3]==0 && opnds[2]==0 && opnds[5]==1)
        return TOP_c2_ld_v_w;
      else  if(opnds[3]==0 && opnds[2]==1)
        return TOP_c2_ld_v_sw;
      else  if(opnds[3]==1 && opnds[5]>=2 && opnds[4]==0)
        return TOP_c2_ld_v_m_b_u;
      else  if(opnds[3]==1 && opnds[5]>=2 && opnds[4]==1)
        return TOP_c2_ld_v_m_b;
      else  if(opnds[3]==1 && opnds[5]==0)
        return TOP_c2_ld_v_m_h;
      else  if(opnds[3]==1 && opnds[5]==1)
        return TOP_c2_ld_v_m_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_v"));
      }
    break;
    case  INTRN_C2_LD_G:
      if(opnds[3]==0 && opnds[2]==0 && opnds[1]==1)
        return TOP_c2_ld_s_h_u_p;
      else  if(opnds[3]==0 && opnds[2]==0 && opnds[1]==0)
        return TOP_c2_ld_s_h_u;
      else  if(opnds[3]==0 && opnds[2]==1 && opnds[1]==1)
        return TOP_c2_ld_s_h_p;
      else  if(opnds[3]==0 && opnds[2]==1 && opnds[1]==0)
        return TOP_c2_ld_s_h;
      else  if(opnds[3]==1 && opnds[1]==1)
        return TOP_c2_ld_s_w_p;
      else  if(opnds[3]==1 && opnds[1]==0)
        return TOP_c2_ld_s_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_g"));
      }
    break;
    case  INTRN_C2_ST_V:
      if(opnds[2]==0 && opnds[3]>=2)
        return TOP_c2_st_v_b;
      else  if(opnds[2]==0 && opnds[3]==0)
        return TOP_c2_st_v_h;
      else  if(opnds[2]==0 && opnds[3]==1)
        return TOP_c2_st_v_w;
      else  if(opnds[2]==1 && opnds[3]>=2)
        return TOP_c2_st_v_m_b;
      else  if(opnds[2]==1 && opnds[3]==0)
        return TOP_c2_st_v_m_h;
      else  if(opnds[2]==1 && opnds[3]==1)
        return TOP_c2_st_v_m_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_v"));
      }
    break;
    case  INTRN_C2_ST_G:
      if(opnds[3]==0 && opnds[2]==0)
        return TOP_c2_st_s_h;
      else  if(opnds[3]==0 && opnds[2]==1)
        return TOP_c2_st_s_h_p;
      else  if(opnds[3]==1 && opnds[2]==0)
        return TOP_c2_st_s_w;
      else  if(opnds[3]==1 && opnds[2]==1)
        return TOP_c2_st_s_w_p;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_g"));
      }
    break;
    case  INTRN_C2_LD_G_IMM:
      if(opnds[1]==0 && opnds[0]==0)
        return TOP_c2_ldi_s_h_u;
      else  if(opnds[1]==0 && opnds[0]==1)
        return TOP_c2_ldi_s_h;
      else  if(opnds[1]==1)
        return TOP_c2_ldi_s_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_g_imm"));
      }
    break;
    case  INTRN_C2_LD_C_IMM:
        return TOP_c2_ldi_c;
    break;
    case  INTRN_C2_LD_V_IMM:
      if(opnds[1]==0 && opnds[3]>=2 && opnds[2]==0)
        return TOP_c2_ldi_v_b_u;
      else  if(opnds[1]==0 && opnds[3]>=2 && opnds[2]==1)
        return TOP_c2_ldi_v_b;
      else  if(opnds[1]==0 && opnds[3]==0)
        return TOP_c2_ldi_v_h;
      else  if(opnds[1]==0 && opnds[3]==1)
        return TOP_c2_ldi_v_w;
      else  if(opnds[1]==1 && opnds[3]>=2 && opnds[2]==0)
        return TOP_c2_ldi_v_m_b_u;
      else  if(opnds[1]==1 && opnds[3]>=2 && opnds[2]==1)
        return TOP_c2_ldi_v_m_b;
      else  if(opnds[1]==1 && opnds[3]==0)
        return TOP_c2_ldi_v_m_h;
      else  if(opnds[1]==1 && opnds[3]==1)
        return TOP_c2_ldi_v_m_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_v_imm"));
      }
    break;
    case  INTRN_C2_ST_V_IMM:
      if(opnds[2]==0 && opnds[1]>=2)
        return TOP_c2_sti_v_b;
      else  if(opnds[2]==0 && opnds[1]==0)
        return TOP_c2_sti_v_h;
      else  if(opnds[2]==0 && opnds[1]==1)
        return TOP_c2_sti_v_w;
      else  if(opnds[2]==1 && opnds[1]>=2)
        return TOP_c2_sti_v_m_b;
      else  if(opnds[2]==1 && opnds[1]==0)
        return TOP_c2_sti_v_m_h;
      else  if(opnds[2]==1 && opnds[1]==1)
        return TOP_c2_sti_v_m_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_v_imm"));
      }
    break;
    case  INTRN_C2_ST_C_IMM:
      return TOP_c2_sti_c;
    break;
    case  INTRN_C2_ST_G_IMM:
      if(opnds[1]==0)
        return TOP_c2_sti_s_h;
      else  if(opnds[1]==1)
        return TOP_c2_sti_s_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_g_imm"));
      }
    break;
    case  INTRN_C2_VADDS:
      if( opnds[4]==0 && opnds[3]==0 && (opnds[6]&6)==6)  
        return TOP_c2_vadds_h_mode6;
      else if (opnds[4]==0 && opnds[3]==0 && (opnds[6]&6)==2) 
        return TOP_c2_vadds_h_mode2; 
      else if( opnds[4]==0 && opnds[3]==0)  
        return TOP_c2_vadds_h;
      else if( opnds[4]==0 && opnds[3]==1 && (opnds[6]&6)==6)  
        return TOP_c2_vadds_w_mode6;
      else if(opnds[4]==0 && opnds[3]==1 && (opnds[6]&6)==2)  
        return TOP_c2_vadds_w_mode2;
      else if( opnds[4]==0 && opnds[3]==1)
        return TOP_c2_vadds_w;
      else if( opnds[4]==1 && (opnds[6]&6)==6)
        return TOP_c2_vadds_p_mode6;
      else if( opnds[4]==1 && (opnds[6]&6)==2)
        return TOP_c2_vadds_p_mode2;  
      else if( opnds[4]==1)
        return TOP_c2_vadds_p;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vadds"));
      }
    break;
    case  INTRN_C2_VSUBS:
      if(opnds[4]==0 && opnds[3]==0 && opnds[5]==0 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_h_sm;
      else if(opnds[4]==0 && opnds[3]==0 && opnds[5]==0 )
        return TOP_c2_vsubs_h;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==1 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_h_abs_sm;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==1)
        return TOP_c2_vsubs_h_abs;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==2 && (opnds[7]&0x2)==2)
        return TOP_c2_vabs_h_sm;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==2)
        return TOP_c2_vabs_h;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==0 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_w_sm;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==0)
        return TOP_c2_vsubs_w;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==1 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_w_abs_sm;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==1)
        return TOP_c2_vsubs_w_abs;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==2 && (opnds[7]&0x2)==2)
        return TOP_c2_vabs_w_sm;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==2)
        return TOP_c2_vabs_w;
      else  if(opnds[4]==1 && opnds[5]==0 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_p_sm;
      else  if(opnds[4]==1 && opnds[5]==0)
        return TOP_c2_vsubs_p;
      else  if(opnds[4]==1 && opnds[5]==1 && (opnds[7]&0x2)==2)
        return TOP_c2_vsubs_p_abs_sm;
      else  if(opnds[4]==1 && opnds[5]==1)
        return TOP_c2_vsubs_p_abs;
      else  if(opnds[4]==1 && opnds[5]==2 && (opnds[7]&0x2)==2)
        return TOP_c2_vabs_p_sm;
      else  if(opnds[4]==1 && opnds[5]==2)
        return TOP_c2_vabs_p;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vsubs"));
      }
    break;
    case  INTRN_C2_VMUL:
      if(opnds[3]==0)
        return TOP_c2_vmul_h;
      else  if(opnds[3]==1)
        return TOP_c2_vmul_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vmul"));
      }
    break;
    case  INTRN_C2_VNEG:
      if(opnds[4]==0 && opnds[3]==0)
        return TOP_c2_vneg_h;
      else  if(opnds[4]==0 && opnds[3]==1)
        return TOP_c2_vneg_w;
      else  if(opnds[4]==1)
        return TOP_c2_vneg_p;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vneg"));
      }
    break;
    case  INTRN_C2_VSHFT:
      if(opnds[4]==0 && opnds[3]==1)
        return TOP_c2_vshr_p;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[2]==0)
        return TOP_c2_vshr_h;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[2]==1)
        return TOP_c2_vshr_w;
      else  if(opnds[4]==1 && opnds[3]==1)
        return TOP_c2_vshl_p;
      else  if(opnds[4]==1 && opnds[3]==0 && opnds[2]==0)
        return TOP_c2_vshl_h;
      else  if(opnds[4]==1 && opnds[3]==0 && opnds[2]==1)
        return TOP_c2_vshl_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vshft"));
      }
    break;
    case  INTRN_C2_VCLP:
      if(opnds[4]==0 && opnds[3]==0)
        return TOP_c2_vclp;
      else  if(opnds[4]==0 && opnds[3]==1)
        return TOP_c2_vclp_p;
      else  if(opnds[4]==1)
        return TOP_c2_vclp_a;
      else  if(opnds[4]==2)
        return TOP_c2_vclp_s;
      else  if(opnds[4]==3)
        return TOP_c2_vclp_2;
      else  if(opnds[4]==4)
        return TOP_c2_vclp_n;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vclp"));
      }
    break;
    case  INTRN_C2_VCLG:  // size: opnds[3]   pair: opnds[4]    op_mode:opnds[5]
      if(opnds[4]==0 && opnds[3]==0 && opnds[5]==0)
        return TOP_c2_vclg_h_lt_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==1)
        return TOP_c2_vclg_h_lt_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==2)
        return TOP_c2_vclg_h_le_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==3)
        return TOP_c2_vclg_h_le_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==4)
        return TOP_c2_vclg_h_eq_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==5)
        return TOP_c2_vclg_h_eq_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==6)
        return TOP_c2_vclg_h_ge_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==7)
        return TOP_c2_vclg_h_ge_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==8)
        return TOP_c2_vclg_h_gt_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==9)
        return TOP_c2_vclg_h_gt_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==10)
        return TOP_c2_vclg_h_and;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==11)
        return TOP_c2_vclg_h_or;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==12)
        return TOP_c2_vclg_h_le;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==13)
        return TOP_c2_vclg_h_lt;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==14)
        return TOP_c2_vclg_h_ge;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[5]==15)
        return TOP_c2_vclg_h_gt;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==0)
        return TOP_c2_vclg_w_lt_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==1)
        return TOP_c2_vclg_w_lt_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==2)
        return TOP_c2_vclg_w_le_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==3)
        return TOP_c2_vclg_w_le_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==4)
        return TOP_c2_vclg_w_eq_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==5)
        return TOP_c2_vclg_w_eq_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==6)
        return TOP_c2_vclg_w_ge_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==7)
        return TOP_c2_vclg_w_ge_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==8)
        return TOP_c2_vclg_w_gt_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==9)
        return TOP_c2_vclg_w_gt_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==10)
        return TOP_c2_vclg_w_and;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==11)
        return TOP_c2_vclg_w_or;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==12)
        return TOP_c2_vclg_w_le;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==13)
        return TOP_c2_vclg_w_lt;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==14)
        return TOP_c2_vclg_w_ge;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[5]==15)
        return TOP_c2_vclg_w_gt;
      else  if(opnds[4]==1 && opnds[5]==12)
        return TOP_c2_vclg_p_le;
      else  if(opnds[4]==1 && opnds[5]==13)
        return TOP_c2_vclg_p_eq;
      else  if(opnds[4]==1 && opnds[5]==14)
        return TOP_c2_vclg_p_ge;
      else  if(opnds[4]==1 && opnds[5]==15)
        return TOP_c2_vclg_p_gt;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vclg"));
      }
    break;
    case  INTRN_C2_VCMOV:
      if(opnds[3]==0 && opnds[4]==0)
        return TOP_c2_vcmov_h_f;
      else  if(opnds[3]==0 && opnds[4]==1)
        return TOP_c2_vcmov_h_t;
      else  if(opnds[3]==1 && opnds[4]==0)
        return TOP_c2_vcmov_w_f;
      else  if(opnds[3]==1 && opnds[4]==1)
        return TOP_c2_vcmov_w_t;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vcmov"));
      }
    break;
    case  INTRN_C2_LCZERO:
      if(opnds[3] == 1 )  // zero: opnds[3]   dir: opnds[2]
        return TOP_c2_lczero_z;
      else if (opnds[3] == 0 && opnds[2] == 1) 
        return TOP_c2_lczero_nz_fw;
      else if (opnds[3] == 0 && opnds[2] == 0) 
        return TOP_c2_lczero_nz_bw;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_lczero"));
      }
    break;
    case  INTRN_C2_VRND:
      if(opnds[2]==0)
        return TOP_c2_vrnd_h;
      else  if(opnds[2]==1)
        return TOP_c2_vrnd_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vrnd"));
      }
    break;
    case  INTRN_C2_VSPAS:
      return TOP_c2_vspas;
    break;
    case  INTRN_C2_VSPEL:
      if(opnds[2]==0 && opnds[3] == 0) // op_mode: opnds[2]   size: opnds[3] 
        return TOP_c2_vspel_mul_h;
      else if(opnds[2] == 0 && opnds[3] == 1) 
        return TOP_c2_vspel_mul_w;
      else  if(opnds[2]==1 )
        return TOP_c2_vspel_adds;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vspel"));
      }
    break;

    case  INTRN_C2_VSPEL_MAC:
      if(opnds[3] == 0) // size: opnds[3] 
        return TOP_c2_vspel_mac_h;
      else if(opnds[3] == 1) 
        return TOP_c2_vspel_mac_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vspel"));
      }
      break;
    case  INTRN_C2_MMUL:
      if(opnds[3]==0) // size: opnds[3] 
        return TOP_c2_mmul_h;
      else  if(opnds[3]==1)
        return TOP_c2_mmul_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_mmul_s4"));
      }
    break;
    case  INTRN_C2_VMOV:
      if(opnds[3]==0)
        return TOP_c2_vmov;
      else  if(opnds[3]==1)
        return TOP_c2_vmov_swin;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vmov"));
      }
    break;
    case INTRN_C2_VCOPY:
      return TOP_c2_vcopy;
    case  INTRN_C2_VCMPR:
      if(opnds[3]==0 && opnds[4]==1)
        return TOP_c2_vcmpr_h_eq;
      else  if(opnds[3]==0 && opnds[4]==2)
        return TOP_c2_vcmpr_h_lt;
      else  if(opnds[3]==0 && opnds[4]==3)
        return TOP_c2_vcmpr_h_le;
      else  if(opnds[3]==0 && opnds[4]==4)
        return TOP_c2_vcmpr_h_gt;
      else  if(opnds[3]==0 && opnds[4]==5)
        return TOP_c2_vcmpr_h_ge;
      else  if(opnds[3]==1 && opnds[4]==1)
        return TOP_c2_vcmpr_w_eq;
      else  if(opnds[3]==1 && opnds[4]==2)
        return TOP_c2_vcmpr_w_lt;
      else  if(opnds[3]==1 && opnds[4]==3)
        return TOP_c2_vcmpr_w_le;
      else  if(opnds[3]==1 && opnds[4]==4)
        return TOP_c2_vcmpr_w_gt;
      else  if(opnds[3]==1 && opnds[4]==5)
        return TOP_c2_vcmpr_w_ge;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_vcmpr"));
      }
    break;
    case  INTRN_C2_SAD:
       return TOP_c2_sad;
    break;
    case INTRN_C2_SATD:
      return TOP_c2_satd;  
    break;
    case  INTRN_C2_INTRA:
      switch(opnds[2]) 
      {
        case 0:
        case 1:
	case 9:
	case 14:
	case 16:
          return TOP_c2_intra_0_1_9_14_16;
        break;
        case 2:
        case 3:
        case 8:
        case 10:
	  return TOP_c2_intra_2_3_8_10;
        break;
        case 4:
          return TOP_c2_intra_4;
        break;
	case 5:
	case 11:
	  return TOP_c2_intra_5_11;
        break;
        case 6:
          return TOP_c2_intra_6;
          break;
        case 7:
          return TOP_c2_intra_7;
          break;
        case 12:
        case 13:
          return TOP_c2_intra_12_13;
          break;
        case 15:
        case 17:
          return TOP_c2_intra_15_17;
        default:
          FmtAssert(FALSE, ("invalid op_mode in function c2_intra"));
        }
    break;
    case  INTRN_C2_MVSEL:
    {
      switch (opnds[2]) {
        case 0: 
          return TOP_c2_mvsel_mode0; 
        case 1:
          return TOP_c2_mvsel_mode1;
        case 2:
          return TOP_c2_mvsel_mode2; 
        case 3:
        case 4:
        case 5: 
          return TOP_c2_mvsel_mode345; 
        default:
          FmtAssert(FALSE, ("invalid op_mode in function c2_mvsel"));
        }
    }           
    break;
    case  INTRN_C2_BCST:
      if(opnds[1]==0)
        return TOP_c2_bcst_q;
      else  if(opnds[1]==1)
        return TOP_c2_bcst_i;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_bcst"));
      }
    break;
    case  INTRN_C2_VLCS:
      return TOP_c2_vlcs_wb;
    case  INTRN_C2_VLCS_R:
      if(opnds[2]==0)    // op_mode: opnds[2] 
        return TOP_c2_vlcs_dc;
      else  if(opnds[2]==2)
        return TOP_c2_vlcs_ac;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_vlcs"));
    break;
    case  INTRN_C2_ADDS:
      if(opnds[2]==1 && opnds[6] == 1)  // immed: opnds[2]  dir: opnds[6]
        return TOP_c2_add_shl_g_i;
      else  if(opnds[2]==1 && opnds[6] == 0)
        return TOP_c2_add_shr_g_i;
      else if(opnds[2] == 0 && opnds[6]== 1)
        return TOP_c2_add_shl_g;
      else if(opnds[2] == 0 && opnds[6] == 0) 
        return TOP_c2_add_shr_g;
      else 		
        FmtAssert(FALSE, ("invalid parameter in function c2_adds"));
    break;		
    case  INTRN_C2_ADDS_R:	    
      // immed: opnds[4]   size: opnds[3]  dir: opnds[8]
      if(opnds[4]==1 && opnds[3]==0 && opnds[8] == 1) 
        return TOP_c2_add_shl_r_h_i;
      else  if(opnds[4]==1 && opnds[3]==0 && opnds[8] == 0 )
        return TOP_c2_add_shr_r_h_i;
      else  if(opnds[4]==1 && opnds[3]==1 && opnds[8] == 1 )
        return TOP_c2_add_shl_r_w_i;
      else  if(opnds[4]==1 && opnds[3]==1 && opnds[8] == 0 )
        return TOP_c2_add_shr_r_w_i;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[8] == 1 )
        return TOP_c2_add_shl_r_h;
      else  if(opnds[4]==0 && opnds[3]==0 && opnds[8] == 0 )
        return TOP_c2_add_shr_r_h;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[8] == 1 )
        return TOP_c2_add_shl_r_w;
      else  if(opnds[4]==0 && opnds[3]==1 && opnds[8] == 0 )
        return TOP_c2_add_shr_r_w;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_adds_r"));
    break;
    case  INTRN_C2_SUBS:
      if(opnds[2]==1 && opnds[3]==1)
        return TOP_c2_sub_g_abs_i;
      else  if(opnds[2]==1 && opnds[3]==0)
        return TOP_c2_subs_g_i;
      else  if(opnds[2]==0 && opnds[3]==1)
        return TOP_c2_sub_g_abs;
      else  if(opnds[2]==0 && opnds[3]==0)
        return TOP_c2_subs_g;
      else {
        FmtAssert(FALSE, ("invalid parameter in function c2_sub"));
      }
    break;
    case INTRN_C2_SUBS_R:		
      if( opnds[4]==1 && opnds[5]==0 && opnds[3]==0)
        return TOP_c2_subs_r_h_i;
      else  if(  opnds[4]==1 && opnds[5]==0 && opnds[3]==1)
        return TOP_c2_subs_r_w_i;
      else  if( opnds[4]==1 && opnds[5]==1 && opnds[3]==0)
        return TOP_c2_sub_r_abs_h_i;
      else  if( opnds[4]==1 && opnds[5]==1 && opnds[3]==1)
        return TOP_c2_sub_r_abs_w_i;
      else  if( opnds[4]==0 && opnds[5]==0 && opnds[3]==0)
        return TOP_c2_subs_r_h;
      else  if( opnds[4]==0 && opnds[5]==0 && opnds[3]==1)
        return TOP_c2_subs_r_w;
      else  if( opnds[4]==0 && opnds[5]==1 && opnds[3]==0)
        return TOP_c2_sub_r_abs_h;
      else  if( opnds[4]==0 && opnds[5]==1 && opnds[3]==1)
        return TOP_c2_sub_r_abs_w;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_sub"));
      }
    break;
    case  INTRN_C2_MULS:
      return TOP_c2_muls;
    case  INTRN_C2_MADS:
      return TOP_c2_mads;
    break;
    case  INTRN_C2_SMADS:
      return TOP_c2_smads;
    break;
    case  INTRN_C2_MINMAX:
      if(opnds[2]==0)
        return TOP_c2_min;
      else  if(opnds[2]==1)
        return TOP_c2_max;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_minmax"));
      }
    break;
    case  INTRN_C2_CMOV:
      return TOP_c2_cmov;
    case  INTRN_C2_MOV:
      return TOP_c2_mov_g;
    case  INTRN_C2_MOV_R:
      switch(opnds[4]) { //opnds[4] : op_mode
        case 1: 
          return TOP_c2_mov_r;
        case 2:
          return TOP_c2_mov_c_i;
        case 3:
          return TOP_c2_mov_c;
        case 4:
	  return TOP_c2_mov_s_i;
        case 5:
	  return TOP_c2_mov_s;
        default:
          FmtAssert(FALSE, ("invalid parameter in function c2_mov"));
        } //switch
    break;
    case  INTRN_C2_CLP:
      if(opnds[3] == 0)   // immed:  opnds[3] 
        return TOP_c2_clp;
      else if(opnds[3] == 1)
        return TOP_c2_clp_i;
      else { 
         FmtAssert(FALSE, ("invalid parameter in function c2_clp"));
      }
    break;
    case  INTRN_C2_CHKRNG:
      return TOP_c2_chkrng;
    break;
    case  INTRN_C2_SCOND:
      if(opnds[2]==0 && opnds[3]==1)
        return TOP_c2_scond_eq;
      else  if(opnds[2]==0 && opnds[3]==2)
        return TOP_c2_scond_lt;
      else  if(opnds[2]==0 && opnds[3]==3)
        return TOP_c2_scond_le;
      else  if( opnds[2]==0 && opnds[3]==4)
        return TOP_c2_scond_gt;
      else  if( opnds[2]==0 && opnds[3]==5)
        return TOP_c2_scond_ge;
      else  if( opnds[2]==1 && opnds[3]==1)
        return TOP_c2_scond_eq_i;
      else  if( opnds[2]==1 && opnds[3]==2)
        return TOP_c2_scond_lt_i;
      else  if(  opnds[2]==1 && opnds[3]==3)
        return TOP_c2_scond_le_i;
      else  if( opnds[2]==1 && opnds[3]==4)
        return TOP_c2_scond_gt_i;
      else  if( opnds[2]==1 && opnds[3]==5)
        return TOP_c2_scond_ge_i;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_scond"));
      }
    break;
    case INTRN_C2_SCOND_R:
      if( opnds[2]==0 && opnds[3]==1 && opnds[4] == 0)
        return TOP_c2_scond_r_h_eq;
      else  if( opnds[2]==0 && opnds[3]==2 && opnds[4] == 0)
        return TOP_c2_scond_r_h_lt;
      else  if( opnds[2]==0 && opnds[3]==3 && opnds[4] == 0)
        return TOP_c2_scond_r_h_le;
      else  if( opnds[2]==0 && opnds[3]==4 && opnds[4] == 0)
        return TOP_c2_scond_r_h_gt;
      else  if( opnds[2]==0 && opnds[3]==5 && opnds[4] == 0)
        return TOP_c2_scond_r_h_ge;
      else  if( opnds[2]==1 && opnds[3]==1 && opnds[4] == 0)
        return TOP_c2_scond_r_h_eq_i;
      else  if( opnds[2]==1 && opnds[3]==2 && opnds[4] == 0)
        return TOP_c2_scond_r_h_lt_i;
      else  if( opnds[2]==1 && opnds[3]==3 && opnds[4] == 0)
        return TOP_c2_scond_r_h_le_i;
      else  if( opnds[2]==1 && opnds[3]==4 && opnds[4] == 0)
        return TOP_c2_scond_r_h_gt_i;
      else  if( opnds[2]==1 && opnds[3]==5 && opnds[4] == 0)
        return TOP_c2_scond_r_h_ge_i;
      else  if( opnds[2]==0 && opnds[3]==1 && opnds[4] == 1)
        return TOP_c2_scond_r_w_eq;
      else  if( opnds[2]==0 && opnds[3]==2 && opnds[4] == 1)
        return TOP_c2_scond_r_w_lt;
      else  if( opnds[2]==0 && opnds[3]==3 && opnds[4] == 1)
        return TOP_c2_scond_r_w_le;
      else  if( opnds[2]==0 && opnds[3]==4 && opnds[4] == 1)
        return TOP_c2_scond_r_w_gt;
      else  if( opnds[2]==0 && opnds[3]==5 && opnds[4] == 1)
        return TOP_c2_scond_r_w_ge;
      else  if( opnds[2]==1 && opnds[3]==1 && opnds[4] == 1)
        return TOP_c2_scond_r_w_eq_i;
      else  if( opnds[2]==1 && opnds[3]==2 && opnds[4] == 1)
        return TOP_c2_scond_r_w_lt_i;
      else  if( opnds[2]==1 && opnds[3]==3 && opnds[4] == 1)
        return TOP_c2_scond_r_w_le_i;
      else  if( opnds[2]==1 && opnds[3]==4 && opnds[4] == 1)
        return TOP_c2_scond_r_w_gt_i;
      else  if( opnds[2]==1 && opnds[3]==5 && opnds[4] == 1)
        return TOP_c2_scond_r_w_ge_i;
      else { 
        FmtAssert(FALSE, ("invalid parameter in function c2_scond"));
      }
    break;
    case INTRN_C2_SCOND_R_WB:
      if( opnds[2]==0 && opnds[3]==1 && opnds[4] == 0)
        return TOP_c2_scond_r_h_wb_eq;
      else  if( opnds[2]==0 && opnds[3]==2 && opnds[4] == 0)
        return TOP_c2_scond_r_h_wb_lt;
      else  if( opnds[2]==0 && opnds[3]==3 && opnds[4] == 0)
        return TOP_c2_scond_r_h_wb_le;
      else  if( opnds[2]==0 && opnds[3]==4 && opnds[4] == 0)
        return TOP_c2_scond_r_h_wb_gt;
      else  if( opnds[2]==0 && opnds[3]==5 && opnds[4] == 0)
        return TOP_c2_scond_r_h_wb_ge;
      else if( opnds[2]==0 && opnds[3]==1 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_eq;
      else  if( opnds[2]==0 && opnds[3]==2 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_lt;
      else  if( opnds[2]==0 && opnds[3]==3 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_le;
      else  if( opnds[2]==0 && opnds[3]==4 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_gt;
      else  if( opnds[2]==0 && opnds[3]==5 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_ge;
      else  if( opnds[2]==1 && opnds[3]==1 && opnds[4] == 0)
        return TOP_c2_scond_r_wb_eq_i;
      else  if( opnds[2]==1 && opnds[3]==2 && opnds[4] == 0)
        return TOP_c2_scond_r_wb_lt_i;
      else  if( opnds[2]==1 && opnds[3]==3 && opnds[4] == 0)
        return TOP_c2_scond_r_wb_le_i;
      else  if( opnds[2]==1 && opnds[3]==4 && opnds[4] == 0)
        return TOP_c2_scond_r_wb_gt_i;
      else  if( opnds[2]==1 && opnds[3]==5 && opnds[4] == 0)
        return TOP_c2_scond_r_wb_ge_i;
      else  if( opnds[2]==1 && opnds[3]==1 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_eq_i;
      else  if( opnds[2]==1 && opnds[3]==2 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_lt_i;
      else  if( opnds[2]==1 && opnds[3]==3 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_le_i;
      else  if( opnds[2]==1 && opnds[3]==4 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_gt_i;
      else  if( opnds[2]==1 && opnds[3]==5 && opnds[4] == 1)
        return TOP_c2_scond_r_w_wb_ge_i;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_scond"));
    break;
    case  INTRN_C2_BOP:
      if(opnds[2]==0 && opnds[4]==0 && opnds[3]==1)
        return TOP_c2_bop_ls;
      else  if(opnds[2]==0 && opnds[4]==0 && opnds[3]==0)
        return TOP_c2_bop_rs;
      else  if(opnds[2]==0 && opnds[4]==1)
        return TOP_c2_bop_and;
      else  if(opnds[2]==0 && opnds[4]==2)
        return TOP_c2_bop_or;
      else  if(opnds[2]==0 && opnds[4]==3)
        return TOP_c2_bop_xor;
      else  if(opnds[2]==1 && opnds[4]==0 && opnds[3]==1)
        return TOP_c2_bop_ls_i;
      else  if(opnds[2]==1 && opnds[4]==0 && opnds[3]==0)
        return TOP_c2_bop_rs_i;
      else  if(opnds[2]==1 && opnds[4]==1)
        return TOP_c2_bop_and_i;
      else  if(opnds[2]==1 && opnds[4]==2)
        return TOP_c2_bop_or_i;
      else  if(opnds[2]==1 && opnds[4]==3)
        return TOP_c2_bop_xor_i;
      else  if(opnds[4] == 4)
        return TOP_c2_bop_andxor; 
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_bop"));
    break;
    case  INTRN_C2_BDEP:
      if(opnds[3]==1)
        return TOP_c2_bdep_l;
      else  if(opnds[3]==0)
        return TOP_c2_bdep_m;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_bdep"));
    break;
    case  INTRN_C2_BXTR:
      if(opnds[4]==0 && opnds[3]==1)
        return TOP_c2_bxtr_u_l;
      else  if(opnds[4]==1 && opnds[3]==1)
        return TOP_c2_bxtr_s_l;
      else  if(opnds[4]==0 && opnds[3]==0)
        return TOP_c2_bxtr_u_m;
      else  if(opnds[4]==1 && opnds[3]==0)
        return TOP_c2_bxtr_s_m;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_bxtr"));
    break;
    case INTRN_C2_BXTRR48:
      if(opnds[3] == 0)
        return TOP_c2_bxtrr48; 
      else if(opnds[3] == 1)
        return TOP_c2_bxtrr48_i; 
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_bxtrr48"));
    case  INTRN_C2_SUM4_R:
      if(opnds[4]==0)
        return TOP_c2_sum4_c;
      else  if(opnds[4]==3)
        return TOP_c2_sum4_r;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_sum4"));
    break;  
    case  INTRN_C2_SUM4:
      if(opnds[2]==1)
        return TOP_c2_sum4_g;
      else  if(opnds[2]==2)
        return TOP_c2_sum4_sw;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_sum4"));
    break;  
    case  INTRN_C2_SUM3_SADDR:
      return TOP_c2_sum4_saddr; 
    case INTRN_C2_MED:
      return TOP_c2_med;
    case INTRN_C2_LD_V2G:
      if(opnds[2] >= 2 && opnds[1] == 0 )
        return TOP_c2_ld_v2g_b_u;
      else if(opnds[2] >= 2 && opnds[1] == 1 )
        return TOP_c2_ld_v2g_b;
      else if(opnds[2] == 0 && opnds[1] == 0 )
        return TOP_c2_ld_v2g_h_u;
      else if(opnds[2] == 0 && opnds[1] == 1 )
        return TOP_c2_ld_v2g_h;
      else if(opnds[2] == 1)	 
        return TOP_c2_ld_v2g_w;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_v2g"));	 	
    case INTRN_C2_LD_V2G_IMM:
      if(opnds[1] >= 2 && opnds[0] == 0) 
        return TOP_c2_ldi_v2g_b_u;
      else if(opnds[1] >= 2 && opnds[0] == 1) 
        return TOP_c2_ldi_v2g_b;
      else if(opnds[1] == 0 && opnds[0] == 0)
        return TOP_c2_ldi_v2g_h_u;
      else if(opnds[1] == 0 && opnds[0] == 1)
        return TOP_c2_ldi_v2g_h;
      else if(opnds[1] == 1)
        return TOP_c2_ldi_v2g_w;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_ld_v2g_imm"));
    case INTRN_C2_ST_G2V:
      if(opnds[2] >= 2) 
        return TOP_c2_st_g2v_b;
      else if (opnds[2] == 0) 
        return TOP_c2_st_g2v_h;
      else if (opnds[2] == 1)
        return TOP_c2_st_g2v_w;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_g2v"));	
    case INTRN_C2_ST_G2V_IMM:
      if(opnds[1] >= 2) 
        return TOP_c2_sti_g2v_b;
      else if (opnds[1] == 0) 
        return TOP_c2_sti_g2v_h;
      else if (opnds[1] == 1)
        return TOP_c2_sti_g2v_w;
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_st_g2v_imm"));	 
    case INTRN_C2_GSUMS:
      return TOP_c2_gsums;
    case INTRN_C2_WRAP:
      return TOP_c2_wrap;
    case INTRN_C2_CLZOB:
      if(opnds[2] == 0) {  //immed 
        switch(opnds[3]) {
          case 0:
            return TOP_c2_clzob_zd;
          case 1:
            return TOP_c2_clzob_od;
          default:
            FmtAssert(FALSE, ("invalid parameter in function c2_clzob"));	 
        };
      }
      else if(opnds[2] == 1) {
        switch(opnds[3]) {
          case 0:
            return TOP_c2_clzob_zd_i;
          case 1:
            return TOP_c2_clzob_od_i;
          default:
            FmtAssert(FALSE, ("invalid parameter in function c2_clzob"));	 
        };
      }
      else 
        FmtAssert(FALSE, ("invalid parameter in function c2_clzob"));	 
    case INTRN_C2_THCTRL:
      switch(opnds[0]) {
        case 0: 
          return TOP_c2_thctrl_lock; 
        case 1:
          return TOP_c2_thctrl_unlock;
        case 2:
          return TOP_c2_thctrl_deact; 
        case 3: 
          return TOP_c2_thctrl_act;
        case 4:
          return TOP_c2_thctrl_mode4;
        case 5:
          return TOP_c2_thctrl_mode5;
        case 6:
          return TOP_c2_thctrl_mode6;
        case 7:
          return TOP_c2_thctrl_mode7;
        default:
          FmtAssert(FALSE, ("invalid op_mode in function c2_thctrl"));	 
      };   
    case INTRN_C2_JOINT:
      return TOP_c2_joint;
    case INTRN_PERIPHERAL_RW_BEGIN:
      return TOP_peripheral_rw_begin; 
    case INTRN_PERIPHERAL_RW_END:
      return TOP_peripheral_rw_end; 
    default:
      FmtAssert(FALSE, ("SL2 intrinsic NYI")); 
  }
}


/*
 * This function is used to decide if the operand on the position opnd_pos of 
 * current instruction needs relocation corresponding vbuf/sbuf section.
 * In this case we need call Allocate_Object to assign section for 
 * the symbol variable and calculate offset  
 */
BOOL 
Need_Relocation(TOP opcode, UINT opnd_pos) {
  switch (opcode) {
    case TOP_c2_ldi_c:
    case TOP_c2_sti_c:
      if(opnd_pos == 1) return TRUE;
        return FALSE;
    case TOP_c2_sti_s_h:
    case TOP_c2_sti_s_w:
    case TOP_c2_ldi_s_h_u:
    case TOP_c2_ldi_s_h:
    case TOP_c2_ldi_s_w:
    case TOP_c2_ldi_v2g_b_u:
    case TOP_c2_ldi_v2g_b: 
    case TOP_c2_ldi_v2g_h:
    case TOP_c2_ldi_v2g_h_u:
    case TOP_c2_ldi_v2g_w:
    case TOP_c2_sti_g2v_b:
    case TOP_c2_sti_g2v_h:
    case TOP_c2_sti_g2v_w:	 
      if(opnd_pos == 2) return TRUE;
      return FALSE;
    case TOP_c2_sti_v_b:
    case TOP_c2_sti_v_h:
    case TOP_c2_sti_v_w:
    case TOP_c2_sti_v_m_b:
    case TOP_c2_sti_v_m_h:
    case TOP_c2_sti_v_m_w:
      if(opnd_pos == 3)  return TRUE;
      return FALSE;
    case TOP_c2_ldi_v_b_u:
    case TOP_c2_ldi_v_b:
    case TOP_c2_ldi_v_h:
    case TOP_c2_ldi_v_w:
    case TOP_c2_ldi_v_m_b_u:
    case TOP_c2_ldi_v_m_b:
    case TOP_c2_ldi_v_m_h:
    case TOP_c2_ldi_v_m_w:
      if(opnd_pos == 4) return TRUE;
      return FALSE;
    default:
      return FALSE;
  }
}

TN_RELOCS
Get_TN_Rel_From_Opcode(TOP opcode) {
  switch (opcode) {
    case TOP_c2_ldi_s_h_u:
    case TOP_c2_ldi_s_h:
    case TOP_c2_ldi_s_w:
    case TOP_c2_ldi_c:
    case TOP_c2_sti_c:
    case TOP_c2_sti_s_h:
    case TOP_c2_sti_s_w:
      return TN_RELOC_GPREL_S;
    case TOP_c2_ldi_v_b_u:
    case TOP_c2_ldi_v_b:
    case TOP_c2_ldi_v_h:
    case TOP_c2_ldi_v_w:
    case TOP_c2_ldi_v_m_b_u:
    case TOP_c2_ldi_v_m_b:
    case TOP_c2_ldi_v_m_h:
    case TOP_c2_ldi_v_m_w:
    case TOP_c2_sti_v_b:
    case TOP_c2_sti_v_h:
    case TOP_c2_sti_v_w:
    case TOP_c2_sti_v_m_b:
    case TOP_c2_sti_v_m_h:
    case TOP_c2_sti_v_m_w:
      return TN_RELOC_GPREL_SL2_V11;
    case TOP_c2_ldi_v2g_b_u:
    case TOP_c2_ldi_v2g_b:
    case TOP_c2_ldi_v2g_h:
    case TOP_c2_ldi_v2g_h_u:
    case TOP_c2_ldi_v2g_w:
    case TOP_c2_sti_g2v_b:
    case TOP_c2_sti_g2v_h:
    case TOP_c2_sti_g2v_w:
      return TN_RELOC_GPREL_SL2_V15;
    default:
      return TN_RELOC_NONE;
  }
}

/***************************************************************************
  * following function used to decide if the opcode has scalar destionation operand 
  *
  ***************************************************************************/
BOOL
Is_SL2_Scond_With_Scalar_Destination(TOP opcode) {
  switch (opcode) {
    case TOP_c2_scond_eq:
    case TOP_c2_scond_lt:
    case TOP_c2_scond_le:
    case TOP_c2_scond_gt:
    case TOP_c2_scond_ge:
    case TOP_c2_scond_eq_i:
    case TOP_c2_scond_lt_i:
    case TOP_c2_scond_le_i:
    case TOP_c2_scond_gt_i:
    case TOP_c2_scond_ge_i:
    case TOP_c2_scond_r_h_wb_eq:
    case TOP_c2_scond_r_h_wb_lt:
    case TOP_c2_scond_r_h_wb_le:
    case TOP_c2_scond_r_h_wb_gt:
    case TOP_c2_scond_r_h_wb_ge:
    case TOP_c2_scond_r_wb_eq_i:
    case TOP_c2_scond_r_wb_lt_i:
    case TOP_c2_scond_r_wb_le_i:
    case TOP_c2_scond_r_wb_gt_i:
    case TOP_c2_scond_r_wb_ge_i:
    case TOP_c2_scond_r_w_wb_eq:
    case TOP_c2_scond_r_w_wb_lt:
    case TOP_c2_scond_r_w_wb_le:
    case TOP_c2_scond_r_w_wb_gt:
    case TOP_c2_scond_r_w_wb_ge:
    case TOP_c2_scond_r_w_wb_eq_i:
    case TOP_c2_scond_r_w_wb_lt_i:
    case TOP_c2_scond_r_w_wb_le_i:
    case TOP_c2_scond_r_w_wb_gt_i:
    case TOP_c2_scond_r_w_wb_ge_i:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL
Is_SL2_Scond_Without_Scalar_Destination(TOP opcode) {
  switch(opcode) {
    case TOP_c2_scond_r_h_eq:
    case TOP_c2_scond_r_h_lt:
    case TOP_c2_scond_r_h_le:
    case TOP_c2_scond_r_h_gt:
    case TOP_c2_scond_r_h_ge:
    case TOP_c2_scond_r_h_eq_i:
    case TOP_c2_scond_r_h_lt_i:
    case TOP_c2_scond_r_h_le_i:
    case TOP_c2_scond_r_h_gt_i:
    case TOP_c2_scond_r_h_ge_i:
    case TOP_c2_scond_r_w_eq:
    case TOP_c2_scond_r_w_lt:
    case TOP_c2_scond_r_w_le:
    case TOP_c2_scond_r_w_gt:
    case TOP_c2_scond_r_w_ge:
    case TOP_c2_scond_r_w_eq_i:
    case TOP_c2_scond_r_w_lt_i:
    case TOP_c2_scond_r_w_le_i:
    case TOP_c2_scond_r_w_gt_i:
    case TOP_c2_scond_r_w_ge_i:
      return TRUE;
    default:
      return FALSE;
  }
}

BOOL 
Is_C2_Scond_Instruction(TOP  opcode) {
	return (Is_SL2_Scond_With_Scalar_Destination(opcode) ||
			Is_SL2_Scond_Without_Scalar_Destination(opcode));
}				

INT32
SL2_Intrn_Results_Count(  INTRINSIC id) {
  switch(id) {  
    case INTRN_C2_MVGR_R2G:
    case INTRN_C2_MVGR_S2G:
    case INTRN_C2_MVGC_C2G:
    case INTRN_C2_LD_G:
    case INTRN_C2_LD_V2G:
    case INTRN_C2_LD_V2G_IMM:
    case INTRN_C2_LD_G_IMM:
    case INTRN_C2_BCST:
    case INTRN_C2_ADDS:		 	
    case INTRN_C2_SUBS:		 	
    case INTRN_C2_MADS:
    case INTRN_C2_SMADS:
    case INTRN_C2_MINMAX:		
    case INTRN_C2_MULS:
    case INTRN_C2_SUM4:
    case INTRN_C2_SUM3_SADDR:
    case INTRN_C2_MOV:	
    case INTRN_C2_CHKRNG:
    case INTRN_C2_BXTR:
    case INTRN_C2_CMOV:
    case INTRN_C2_MED:	
    case INTRN_C2_CLP:
    case INTRN_C2_SCOND:
    case INTRN_C2_SCOND_R_WB:		 	
    case INTRN_C2_BOP:
    case INTRN_C2_SAD:		
    case INTRN_C2_SATD:
    case INTRN_C2_GSUMS:
    case INTRN_C2_CLZOB:		 	
    case INTRN_C2_WRAP:		 	
      return 1; 
    case INTRN_C2_MVSEL:
    case INTRN_C2_VLCS:
      return 2;
    default: 
      return 0;
  }
}


//=========================================================================
// Decide_Number_Of_Multi_Mode
//
// To decide the actual source/destination vector registers in the
// multi mode c2.load or c2.store. The worst case is 31
//
// To compute the register number, I have to compute the real value
// of $c6. The normal pattern of computing $c6 is as follows:
//    TN419($1) :- mvup.i (0x7) ;
//    TN418($1) :- or.i TN419($1) (0xffff) ;
//    TN64($c6) :- c2.mvgc.g2c TN418($1) ;
//    TN132($v10) :- c2.ldi.v.m.b.u (sym:Subpel_Temp_Array+256) TN64($c6) ;
//=========================================================================
static
int Decide_Number_Of_Multi_Mode( TN* tn_c6, OPS *ops )
{
  int number = 31;
  BOOL found = FALSE;

  // According to the pattern, there should be one and only one
  // c2.mvgc.g2c defining c6
  OP *defop_c6 = NULL;
  OP *op = OPS_last(ops);
  while( op && !found ){
    INT32 res_num = OP_results(op);
    for(INT32 i=0; i < res_num; i++ ){
      if( TN_number(tn_c6) == TN_number(OP_result(op, i)) ){
        defop_c6 = op;
        found = TRUE;
        break;
      }
    }
    op = OP_prev(op);
  }

  if( !defop_c6 || (OP_code(defop_c6) != TOP_c2_mvgc_g2c) ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing c2.mvgc.g2c for mutli mode c2.ld/st" );
    return number;
  }

  // Now I got the defop of tn_c6, which is a c2.mvgc.g2c,
  // then I need to get the general register number, whose value
  // is copied to c6
  TN* tn_gpr = OP_opnd( defop_c6, 0 );
  if( !TN_is_register(tn_gpr) ){
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing gpr in c2.mvgc.g2c for mutli mode c2.ld/st" );
    return number;
  }

  // Go to find the define OP of tn_gpr
  OP *defop_gpr = NULL ;
  found = FALSE;
  op = OP_prev( defop_c6 );
  while( op && !found ){
    INT32 res_num = OP_results(op);
    for(INT32 i=0; i < res_num; i++ ){
      if( TN_number(tn_gpr) == TN_number(OP_result(op, i)) ){
        defop_gpr = op;
        found = TRUE;
        break;
      }
    }
    op = OP_prev(op);
  }

  // I need to check the register number, of operand and destination,
  // of or.i
  if( !defop_gpr || (OP_code(defop_gpr) != TOP_ori) ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing or.i for mutli mode c2.ld/st" );
    return number;
  }

  TN* tn_or_gpr = OP_opnd( defop_gpr, 0 );
  TN* tn_or_immd = OP_opnd( defop_gpr, 1 );

  /* I need to make sure the immediate number. If it is larger than
   * 0xffff, than things are out of my control
   */
  if( !TN_is_constant(tn_or_immd) || TN_value(tn_or_immd) > 0xffff ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing, immediate number of or.i is not suitable for mutli mode c2.ld/st" );
    return number;
  }

  /* To get the mvup.i, which defines tn_or_gpr */
  OP* defop_or_i_gpr = NULL;
  found = FALSE;
  op = OP_prev( defop_gpr );
  while( op && !found ){
    INT32 res_num = OP_results(op);
    for(INT32 i=0; i < res_num; i++ ){
      if( TN_number(tn_or_gpr) == TN_number(OP_result(op, i)) ){
        defop_or_i_gpr = op;
        found = TRUE;
        break;
      }
    }
    op = OP_prev(op);
  }

  if( !defop_or_i_gpr || (OP_code(defop_or_i_gpr) != TOP_lui) ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing mvup.i for mutli mode c2.ld/st" );
    return number;
  }

  TN* tn_mvup_immd = OP_opnd( defop_or_i_gpr, 0 );
  if( !TN_is_constant(tn_mvup_immd) ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "Missing mvup.i operand is not immediate for mutli mode c2.ld/st" );
    return number;
  }

  number = TN_value( tn_mvup_immd );

  /* the number cannot be larger than 31 */
  if( number > 31 ) {
    DevWarn( "In Decide_Number_Of_Multi_Mode()" );
    DevWarn( "The multi mode number is larger than 31" );
    number = 31;
  }

  return number;
}

/* Build_Multi_Mode_Ldst
 *
 * In sl2, there is a kind of mutli mode load/store operations, its
 * destination register number or source register number is decided
 * by the control register: $c6. Use this function to return row_count
 * for build latency later.
 *
 */
static
INT Build_Multi_Mode_Ldst( OP* op, OPS *ops )
{
  /* If op has already created its extra_operand, then just skip.
   * This is because CG_DEP_Compute_Graph will be invoked many times,
   * and we should only create extra_operand ONCE.
   * Fortunately, LUT-op only has extra-operands with LUT, and multi mode
   * op only has extra-operands with multi mode. So I can do the following
   * check.
   */
  if( op->extra_operand || op->extra_result )
    return 0;

  TOP opcode = OP_code( op );
  TN* tn_c6;

  /* This contains the actual number of source vector registers, or
   * destination vector registers
   * The worst case is 31.
   */
  int multi_num;

  /* I need to get the tn_c6 at first.
   * For c2.ld, the control register is always the second operands
   * For c2.st, the control register is always the third operands
   *
   * As I have said in the Build_SL_Intrinsic_.., the multimode
   * store is treated as word size mode store, so both multimode
   * and word size mode have two source vector registers as their
   * operands.
   */
    tn_c6 = OP_opnd( op, TOP_Find_Operand_Use(opcode, OU_ls_ctrl));
    multi_num = Decide_Number_Of_Multi_Mode( tn_c6, ops );
  DevWarn("muti number is :%i", multi_num );

  if( opcode == TOP_c2_ldi_v_m_w ) {

    TN* first_dest_tn = OP_result( op, 0 );
    Is_True( TN_is_register(first_dest_tn), ("dest tn is not a register tn, of top_c2_ldi_v_m") );
    int reg_num = TN_register( first_dest_tn ) - 1;
    DevWarn("register number is :%i", reg_num );

    if( 2*(multi_num+1) - 1 + reg_num > 31 ) {
      DevWarn( "in word size mode load, multimode number is too big" );
      multi_num = (32-reg_num)/2 - 1;
    }

    for( int i=1; i < 2*(multi_num+1); i++ ) {
      TN* tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_vreg,
                                   reg_num+1+i,
                                   0 );
      op->extra_result = TN_LIST_Push( tn,
                                       op->extra_result,
                                       &MEM_pu_pool );
    }

  } else if ( opcode == TOP_c2_sti_v_m_w ) {

    TN* first_src_tn = OP_opnd( op, 0 );
    Is_True( TN_is_register(first_src_tn), ("source tn is not a register tn, of top_c2_sti_v_m") );
    int reg_num = TN_register( first_src_tn ) - 1;
    DevWarn("register number is :%i", reg_num );

    if( 2*(multi_num+1)+reg_num-1 > 31 ) {
      DevWarn( "in word size mode store, multimode number is too big" );
      multi_num = (32-reg_num)/2 - 1;
    }

    for( int i=1; i < 2*(multi_num+1); i++ ) {
      TN* tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_vreg,
                                   reg_num+1+i,
                                   0 );
      op->extra_operand = TN_LIST_Push( tn,
                                        op->extra_operand,
                                        &MEM_pu_pool );
    }

  } else {
    if( TOP_is_c2_multi_mode_load(opcode) ) {

      TN* first_dest_tn = OP_result( op, 0 );
      Is_True( TN_is_register(first_dest_tn), ("dest tn is not a register tn, of top_c2_ldi_v_m") );
      int reg_num = TN_register( first_dest_tn ) -1;
      DevWarn("register number is :%i", reg_num );

      if( multi_num+reg_num > 31 ) {
        DevWarn( "in non word size mode load, multimode number > 31" );
        multi_num = 31 - reg_num;
      }

      for( int i=1; i < multi_num+1; i++ ) {
        TN* tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_vreg,
                                          reg_num+1+i,
                                          0 );
        op->extra_result = TN_LIST_Push( tn,
                                         op->extra_result,
                                         &MEM_pu_pool );
      }

    } else if( TOP_is_c2_multi_mode_store(opcode) ) {

      TN* first_src_tn = OP_opnd( op, 0 );
      Is_True( TN_is_register(first_src_tn), ("dest tn is not a register tn, of top_c2_ldi_v_m") );
      int reg_num = TN_register( first_src_tn ) - 1;
      DevWarn("register number is :%i", reg_num );

      if( multi_num + reg_num > 31 ) {
        DevWarn( "in non word size mode store, multimode number > 31" );
        multi_num = 31 - reg_num;
      }

      for( int i=1; i < multi_num+1; i++ ) {
        TN* tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_vreg,
                                     reg_num+1+i,
                                     0 );
        op->extra_operand = TN_LIST_Push( tn,
                                          op->extra_operand,
                                          &MEM_pu_pool );
      }

    } else
      Is_True(0, ("un-recognizable opcode, in Build_Multi_Mode_Ldst"));
  }

  return multi_num;
}

/* Build_LUT_Insn
 *
 * This is to add the extra operands of those instructions, who need to
 * access extra operands through LUT. It uses the lut-index in its opnd
 * tn, to access that LUT entry.
 *
 * The first field of the entry is index, the next following 16 fields
 * are the source operands
 */

/* since the used entries in the table are not many, so I won't use
 * a array of total 512 rows, and I use a vector to save space
 */
static std::map< int, std::vector<int> > lut_table;

static void
Build_LUT_Insn( OP* op )
{
  /* If op has already created its extra_operand, then just skip.
   * This is because CG_DEP_Compute_Graph will be invoked many times,
   * and we should only create extra_operand ONCE.
   * Fortunately, LUT-op only has extra-operands with LUT, and multi mode
   * op only has extra-operands with multi mode. So I can do the following
   * check.
   */
  if( op->extra_operand )
    return;

  static bool lut_created = false;

  /* read the lut file, and initialize the LUT */
  if( ! lut_created ){
    //char * toolroot = getenv("COMP_TARGET_ROOT");
      std::string filename;
    if (App_Name[0] == '/') { // absolute path defined by user
      filename = App_Name;
      filename.append("/lut");
    } else {
      filename = (getenv("COMP_TARGET_ROOT"));
      Is_True( App_Name, ("In Build_LUT_Insn, app name is not specified for lut"));
      filename = filename + "/usr/libsl2/" + App_Name + "/lut";
    }
    std::ifstream lut_file( filename.c_str() );
    Is_True(lut_file, ("LUT file: %s is not set", filename.c_str()) );

    /* read the total 512 lines */
    for( int i = 0; i < 512; i++ ) {
      char temp[1024];
      lut_file.getline( temp, 1024 );
      std::string line(temp);

      /* the first field is index, so to get it*/
      int comma = line.find(',');
      std::string temp_str = line.substr( 0, comma );
      int index = atoi( temp_str.c_str() );
      std::vector<int> reg_num;

      line = line.substr( comma+1 );
      bool used = false;  /* whether this row is used for extra opnd */

      /* the next 16 fields are extra opnds */
      for( int j = 0; j < 16; j++ ){
        comma = line.find(',');
        temp_str = line.substr( 0, comma );
        Is_True( temp_str.length() <= 2 , ("Wrong Reg Num in LUT, in line %d", index+1));
        Is_True( isdigit(temp_str[0])                         ||
                 ( temp_str[0] >= 'a' && temp_str[0] <= 'f' ) ||
                 ( temp_str[0] == 'x' || temp_str[0] == 'X' ),
                 (" Wrong Reg Num in LUT, in line %d", index+1) );
        Is_True( temp_str[1] == 0                             ||
                 isdigit(temp_str[1])                         ||
                 ( temp_str[1] >= 'a' && temp_str[1] <= 'f' ),
                 (" Wrong Reg Num in LUT, in line %d", index+1) );

        if( temp_str[0] == 'x'    ||
            temp_str[0] == 'X' ) {
          /* -1 means unused */
          reg_num.push_back(-1);
        } else {
          int reg ;
          if( isdigit(temp_str[0]) ) {
            reg = temp_str[0] - '0';
          } else {
            reg = temp_str[0] - 'a' + 10;
          }
          /* two characters in the register number field */
          if( temp_str.length() == 2 ) {
            int t2;
            if( isdigit(temp_str[1]) ) {
              t2 = temp_str[1] - '0';
            } else {
              t2 = temp_str[1] - 'a' + 10;
            }
            reg = reg*16 + t2;
          }
          Is_True( reg >= 0 && reg <= 31, ("invalid register number"));

          /* check if the register is already in the vector */
          std::vector<int>::iterator reg_it = reg_num.begin();
          bool existed = false;
          for( ; reg_it != reg_num.end(); reg_it++ ) {
            if( reg == *reg_it ) {
              existed = true;
              break;
            }
          }

          /* it is a new register */
          if( ! existed ) {
            reg_num.push_back(reg);
            used = true;
          }
        }
        /* shift the line */
        line = line.substr( comma + 1 );
      }

      if( used ){
        lut_table[index] = reg_num;
      }
    }

    lut_created = true;
  }

  /* get the lut index, from the instruction */
  int lut_idx = -1;
  TN* tn;
  TOP opc = OP_code(op); 

  tn = OP_opnd(op, TOP_Find_Operand_Use(opc, OU_lut_idx)); 

  Is_True( TN_is_constant(tn), ("not a constant tn, for lut idx"));
  lut_idx = TN_value( tn );

  /* check the index validity */
  if( lut_idx > 511 || lut_idx < 0 )
    return;

  /* get the extra operands, by lut index */
  std::map< int, std::vector<int> >::iterator it;
  it = lut_table.find( lut_idx );
  if( it != lut_table.end() ) {
    /* append the extra operands to op */
    std::vector<int> extra_opnds = (*it).second;
    std::vector<int>::iterator opnd_it = extra_opnds.begin();
    for( ; opnd_it != extra_opnds.end(); opnd_it++ ) {
      int i = *opnd_it;
      if( i >= 0 && i <= 31 ) {
        TN* tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_vreg,
                                   1+i, 0 );
        op->extra_operand = TN_LIST_Push( tn, op->extra_operand,
                                        &MEM_pu_pool );
      }
    }
  }

  return;
}


inline INT64 
reg_num(WN* node)
{ 
  return (WN_const_val(node) + REGISTER_MIN); 
}

inline INT64 
reg_pair_num(WN* node)
{
  return (WN_const_val(node) + REGISTER_MIN + 1); 
}

TN* 
Generate_TN(TOP opcode,  SL_OPND_INFO* info, WN* intrncall)
{
  TN* tmp_tn; 
  ST* st; 
  INT64 ofst; 
  WN* wn_node; 
  OPND_ATTR_TYPE type = SL_OPND_INFO_Type(info); 
  UINT32 pos = SL_OPND_INFO_Pos(info); 

  if(WN_kid_count(intrncall) > 0) {
    Is_True(pos <WN_kid_count(intrncall),  
      ("position number greater than kids count in function Generate_TN")); 
    wn_node = WN_kid0(WN_kid(intrncall, pos)); 
  }

  switch(type) {
    case attr_undef:
      return NULL; 
    case attr_lit:
      tmp_tn = Gen_Literal_TN(WN_const_val(wn_node), 4 /*size:4byte */); 
    break;
    case attr_cop_creg:
      tmp_tn = Build_Dedicated_TN( ISA_REGISTER_CLASS_cop_creg, 
                 reg_num(wn_node), 0);	
    break;
    case attr_cop_vreg:
      tmp_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_cop_vreg, reg_num(wn_node), 0);
    break;
    case attr_pair_cop_vreg:
      if(reg_pair_num(wn_node) > 32) {
        Print_Src_Line(current_srcpos, stderr); 
        Fail_FmtAssertion("register v%d cannot have pair register",  WN_const_val(wn_node)); 
      }
      tmp_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_cop_vreg, reg_pair_num(wn_node), 0); 
    break;
    case attr_integer_reg:
      tmp_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    break;
    case attr_expr:
      tmp_tn = Expand_Expr(wn_node, intrncall, NULL, WN_intrinsic(intrncall));
    break;
    case attr_sym:
    {
      st = WN_st(WN_kid0(WN_kid(intrncall, pos)));
      ofst = WN_lda_offset(WN_kid0(WN_kid(intrncall, pos)));
      Is_True(st,  ("cannot calculate address including a variable at line %d\n", 
        WN_linenum(intrncall))); 
      TN_RELOCS rel_type =  Get_TN_Rel_From_Opcode(opcode); 
      tmp_tn = Gen_Symbol_TN(st, ofst, rel_type);
    }
    break;
    case attr_c2sum_acc:
      tmp_tn = sum_acc_tn; 
    break;
    case attr_c2cond:
      tmp_tn = c2_cond_tn; 
    break;
    case attr_c2mvsel_internals:
      tmp_tn = mvsel_internals_tn; 
    break;
    case attr_c2vlcs_internals:
      tmp_tn = vlcs_internals_tn; 
    break;
    case attr_c2movpat_internals:
      tmp_tn = mvpat_internals_tn; 
    break;
    case attr_c2vadd_shft:
      tmp_tn = vadd_shft_tn; 
    break;
    case attr_c2dcac_shft:
      tmp_tn = dcac_shft_tn; 
    break;
    case attr_c2add_ctrl:
      tmp_tn = add_ctrl_tn; 
    break;
    case attr_c2mvsel:  
      tmp_tn = mvsel_tn; 
    break;
    case attr_c2sum_ctrl:
      tmp_tn = sum_ctrl_tn; 
    break;
    case attr_c2ls_sw:
      tmp_tn = ls_sw_tn; 
    break;
    case attr_c2ls_ctrl:
      tmp_tn = ls_ctrl_tn; 
    break;
    case attr_c2mult_hi:
      tmp_tn = mult_hi_tn; 
    break;
    case attr_ofst_zero:
      tmp_tn = ofst_zero_tn; 
    break; 
    default:
      FmtAssert(FALSE, ("illegal opnd type in SL intrinsic expansion"));
  }
  return tmp_tn; 
}

BOOL 
SL2_Intrn_Has_Return(  INTRINSIC id) {
  switch(id) {  
    case INTRN_C2_MVGR_R2G:
    case INTRN_C2_MVGR_S2G:
    case INTRN_C2_MVGC_C2G:
    case INTRN_C2_LD_G:
    case INTRN_C2_LD_V2G:
    case INTRN_C2_LD_V2G_IMM:
    case INTRN_C2_LD_G_IMM:
    case INTRN_C2_BCST:
    case INTRN_C2_BDEP:
    case INTRN_C2_ADDS:		 	
    case INTRN_C2_SUBS:		 	
    case INTRN_C2_MADS:
    case INTRN_C2_SMADS:
    case INTRN_C2_MINMAX:		
    case INTRN_C2_MULS:
    case INTRN_C2_SUM4:
    case INTRN_C2_SUM3_SADDR:
    case INTRN_C2_MOV:	
    case INTRN_C2_CHKRNG:
    case INTRN_C2_BXTR:
    case INTRN_C2_BXTRR48:
    case INTRN_C2_CMOV:
    case INTRN_C2_MED:	
    case INTRN_C2_CLP:
    case INTRN_C2_SCOND:
    case INTRN_C2_SCOND_R_WB:		 	
    case INTRN_C2_BOP:
    case INTRN_C2_SAD:		
    case INTRN_C2_SATD:
    case INTRN_C2_GSUMS:
    case INTRN_C2_CLZOB:		 	
    case INTRN_C2_WRAP:		 	
    case INTRN_C2_MVSEL:
    case INTRN_C2_VLCS:
      return TRUE; 
    default: 
      return FALSE;
  }
}



/* function used to handle kinds of sl intrinsic and some interface 
 * functions usd in this function defined in file exp_intrn_info.h */ 
TN* 
Build_SL_Intrinsic_OP( INTRINSIC id, WN* intrncall, OPS *ops, TN* result ) 
{
  TOP opcode;
  UINT32 opnds[15];
  TN* tmp;
  TN* result_tn = NULL; 
  TN* arg[15];
  TN* res_tn[10], *opnd_tn[10]; 
  TN_RELOCS rel_type;
   
  if( id >= INTRN_SL2_BEGIN && id <= INTRN_SL2_END ) {
    opcode =  Analyze_SL2_Intrinsic(id, intrncall);
  } 	
 
  SL_INTRN_EXP_INFO * info = SL_Intrn_Info(opcode);           

  Is_True((opcode == SL_INTRN_INFO_Opcode(info)), 
        ("Opcode and expansion information mismatch ")); 

  OPNDS_INFO_IDX*  res_opnd_info = SL_INTRN_INFO_Idx_Array(info); 
    
  UINT32 res_count = TOP_fixed_results(opcode);
    
  UINT32 opnds_count = TOP_fixed_opnds(opcode);

  for(INT32  i = 0; i < res_count; i++) {
    SL_OPND_INFO* info_entry = SL_Opnd_Info(SL_INTRN_INFO_Res_Opnd_Info(res_opnd_info[i])); 
    res_tn[i] = Generate_TN(opcode, info_entry, intrncall);
  }

  for(INT32 i = 0; i < opnds_count; i++) {
    SL_OPND_INFO* info_entry = SL_Opnd_Info(SL_INTRN_INFO_Res_Opnd_Info
                                               (res_opnd_info[i+res_count])); 
    opnd_tn[i] = Generate_TN(opcode, info_entry, intrncall); 
  }

  if(WN_intrinsic(intrncall) == INTRN_C2_BDEP) {
    if(TN_is_zero_reg(res_tn[0])) {
      TN* tmp = Build_TN_Like(res_tn[0]);
      Build_OP(TOP_add,  tmp,  Zero_TN,  Zero_TN,  ops);
      res_tn[0] = tmp;			   
    }
/* bdep has same TN for result and operand 2 */ 
    opnd_tn[2] = res_tn[0]; 
  }

  if(WN_intrinsic(intrncall) == INTRN_C2_SATD) { 
    res_tn[2] = opnd_tn[1]; 
  } 

  OP* op = Mk_VarOP(opcode, res_count, opnds_count, res_tn, opnd_tn);

  OPS_Append_Op(ops, op);

/* vspel instruction need to lookup LUT */ 
  if(WN_intrinsic(intrncall) == INTRN_C2_VSPEL || 
     WN_intrinsic(intrncall) == INTRN_C2_VSPEL_MAC) {
    Build_LUT_Insn(op);
  }

  if( TOP_is_c2_multi_mode_load(OP_code(op)) ||
      TOP_is_c2_multi_mode_store(OP_code(op)) ){
    Build_Multi_Mode_Ldst(op, ops);
  }

  if(OP_c2_load(op) || OP_c2_store(op))
    Set_OP_To_WN_Map(intrncall);

  if(SL2_Intrn_Has_Return(id)) 
    result_tn = OP_result(op, 0); 

  return result_tn; 
}

/* Expansion of co-processor instructions */
TN * Exp_SL_Intrinsic_Call (INTRINSIC id, WN *intrncall, 
			      OPS *ops, LABEL_IDX *label, OPS *loop_ops, TN* result_tn)
{
  UINT32 bank, row, op_type, imm5, ext_op, c_type, sign;
  TN *result, *result_0, *result_1, *result_2, *result_3, *opnd_0, *opnd_1;
  result = NULL;
  if( (id >= INTRN_SL_INTRN_BGN) && (id <= INTRN_SL_INTRN_END )) {
    result = Build_SL_Intrinsic_OP(id, intrncall, ops, result_tn);
    return result;
  } else if ((id >= INTRN_C3_INTRINSIC_BEGIN) && (id <= INTRN_C3_INTRINSIC_END)) {
    result = Build_C3_Intrinsic_OP(id, intrncall, ops, result_tn);
    return result;	
  }  else {
    FmtAssert(FALSE, ("Exp_SL_Intrinsic_Call: unhandled SL intrinsic"));
    return NULL; // if you can
  }
}
#endif

// initial expansion of intrinsic call (may not be complete lowering).
// return result TN (if set).
// If the intrinsic requires a label and loop (2 bb's)
// then ops is for first bb and ops2 is for bb after the label.
// Otherwise only ops is filled in.
TN *
Exp_Intrinsic_Call (INTRINSIC id, TN *op0, TN *op1, TN *op2, OPS *ops,
	LABEL_IDX *label, OPS *loop_ops)
{
  switch (id) {
  case INTRN_APPLY_ARGS: 
    {
      static ST *last_PU = NULL;
      static TN *return_tn;
      ST *current_pu_st = Get_Current_PU_ST();
      if (last_PU == current_pu_st)
	return return_tn;
      else {
	Generate_Temp_Apply_Arg();
	last_PU = current_pu_st;
	INT par;
	INT ofst = 16;
	TN *ded_tn;

	// We always store the varargs immediately after FP
	// Store the address of vararg_temp_0 into new struct
	TN *vararg_ptr_tn = Build_TN_Of_Mtype(MTYPE_I8);
	Build_OP(TOP_addiu, vararg_ptr_tn, FP_TN, Gen_Literal_TN(-56, 4), ops);
	Exp_Store (MTYPE_I4, vararg_ptr_tn, tmp_apply_arg, 8, ops, 0);

	// Now, store all parameters into the new structure
	for (par = 0; par < MAX_NUMBER_OF_REGISTER_PARAMETERS; par ++) {
	  ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer,
				      par+5,
				      8 /* assume 64 bit registers */);
	  Exp_Store (MTYPE_I8, ded_tn, tmp_apply_arg, ofst, ops, 0);
	  ofst+= 8;
	}
	for (par = 0; par < MAX_NUMBER_OF_REGISTER_PARAMETERS; par ++) {
	  ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_float,
				      par+13,
				      8 /* assume 64 bit registers */);
	  Exp_Store (MTYPE_F8, ded_tn, tmp_apply_arg, ofst, ops, 0);
	  ofst+= 8;
	}

	// return the pointer to the new structure
	return_tn = Build_TN_Of_Mtype(MTYPE_I8);
	TN *base_tn, *ofst_tn;
	base_tn = FP_TN;
	ofst_tn = Gen_Symbol_TN (tmp_apply_arg, 8, 0);
	Exp_OP2( Pointer_Size == 4 ? OPC_I4ADD : OPC_I8ADD,
		 return_tn, base_tn, ofst_tn, ops );

	// store the first argument (function); can not see how this is 
	// useful. builtin_apply always has the name of the function as the
	// first argument, so why store it again here?
	ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer, 5,
				    8 /* assume 64 bit registers */);
	Exp_Store (MTYPE_I4, ded_tn, tmp_apply_arg, 0, ops, 0);
	return return_tn;
      }
    }
  case INTRN_APPLY:  
    {
      if (CG_opt_level > 0) {
	char asm_string[256];
	sprintf(asm_string, "__asm_builtin_apply_load");
	TN *opnd[1];
	opnd[0] = op1;
	OP *asm_op = Mk_VarOP(TOP_asm, 0, 1, NULL, opnd);
	Set_OP_volatile(asm_op);
	ASM_OP_ANNOT* asm_info = TYPE_PU_ALLOC(ASM_OP_ANNOT);
	bzero(asm_info, sizeof(ASM_OP_ANNOT));
	WN *asm_wn = WN_CreateAsm_Stmt (0, asm_string);
	ASM_OP_wn(asm_info) = asm_wn;
	OP_MAP_Set(OP_Asm_Map, asm_op, asm_info);
	OPS_Append_Op(ops, asm_op);
      } else {
	INT par;
	INT ofst = 8;
	TN *ded_tn;
	for (par = 0; par < MAX_NUMBER_OF_REGISTER_PARAMETERS; par ++) {
	  ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer,
				      par+5,
				      8 /* assume 64 bit registers */);
	  Build_OP(TOP_ld, ded_tn, op1, Gen_Literal_TN(ofst, 4), ops);
	  ofst+= 8;
	}
	for (par = 0; par < MAX_NUMBER_OF_REGISTER_PARAMETERS; par ++) {
	  ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_float,
				      par+13,
				      8 /* assume 64 bit registers */);
	  Build_OP(TOP_ldc1, ded_tn, op1, Gen_Literal_TN(ofst, 4), ops);
	  ofst+= 8;
	}      
      }
      return NULL;
    }
  case INTRN_RETURN:
    {
      TN *ded_tn;
      ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_integer,
		      		  3, 8);
      Build_OP(TOP_ld, ded_tn, op0, Gen_Literal_TN(0, 4), ops);
      ded_tn = Build_Dedicated_TN(ISA_REGISTER_CLASS_float,
		      		  1, 8);
      Build_OP(TOP_ldc1, ded_tn, op0, Gen_Literal_TN(8, 4), ops);
      return NULL;
    }
    return NULL;	
  default:
    FmtAssert(FALSE, ("Exp_Intrinsic_Call NYI"));
    return NULL; // if you can
  }
}


/* ======================================================================
 * Exp_Simulated_Op
 *
 * Given a simulated <op>, expand it into the sequence of instructions
 * supported by the target.
 * ======================================================================*/
void Exp_Simulated_Op(const OP *op, OPS *ops, INT pc_value)
{
  TOP top = OP_code(op);

  switch (top)
  {
  default:
    FmtAssert(FALSE, ("simulated OP %s not handled", TOP_Name(top)));
  }
}


/* ======================================================================
 * Simulated_Op_Real_Ops
 *
 * Return the number of instructions that will be generated by Exp_Simulated_Op
 * ======================================================================*/
INT
Simulated_Op_Real_Ops(const OP *op)
{
  switch (OP_code(op)) {
  case TOP_intrncall:
    return Expand_TOP_intrncall (op, NULL, TRUE, 0);
  case TOP_spadjust:
    return 1;
  default:

    /* Anything other than the above is presumed to be removed by
     * emit time, therefore we just say the expansion generates 0 ops.
     * (we used to assert, but that isn't a good solution -- see pv 652898).
     */
    return 0;
  }
}


/* ======================================================================
 * Simulated_Op_Real_Inst_Words
 *
 * Return the number of instruction words that will ultimately be emitted
 * for the expansion generated by Exp_Simulated_Op
 * ======================================================================*/
INT
Simulated_Op_Real_Inst_Words(const OP *op)
{
  INT num_bytes = 0;
  TOP top = OP_code(op);

  switch (top)
  {
  case TOP_spadjust:
    return 1;
  case TOP_asm:
#ifdef TARG_SL
   
    if (CG_check_quadword) {
       extern int Compute_Asm_Num (const char *asm_string, BOOL emit_phase) ;
	extern char* Generate_Asm_String(OP* asm_op, BB *bb);
	Is_True(((OP *)op)->bb, ("Simulated_Op_Real_Inst_Words:: bb is null"));
       char *asm_string = Generate_Asm_String((OP *)op, op->bb);
	num_bytes = Compute_Asm_Num((const char *)asm_string, FALSE);
	if (0) {
	  fprintf(stdout, "%s --%d\n", asm_string, num_bytes);
	}
    } else {
       num_bytes = 3;
    }
   	
#else
    /* We don't know how many instructions are "within" the asm, so we
       just assume 3 bytes. */
    num_bytes = 3;
#endif
    break;

  default:
    FmtAssert(FALSE, ("simulated OP %s not handled", TOP_Name(OP_code(op))));
  }

  return num_bytes;
}


/* ======================================================================
 * Exp_Is_Large_Stack_Sym
 *
 * determine if a given symbol is a stack relative reference that will
 * require multiple instructions to load or store.
 * ======================================================================*/
BOOL
Exp_Is_Large_Stack_Sym(ST* sym,  INT64 ofst)
{
  ST *base_sym;
  INT64 base_ofst;
  
  if (sym == NULL)
    return FALSE;

  Allocate_Object(sym);
  Base_Symbol_And_Offset_For_Addressing (sym, ofst, &base_sym, &base_ofst);

  /* We can assume that 'sym' is a spill location for an integer
     register, so we can check for l32i/s32i range. */
  
  if ((base_sym == SP_Sym || base_sym == FP_Sym) &&
      !ISA_LC_Value_In_Class(base_ofst, LC_simm16)) {
    return TRUE;
  }

  return FALSE;
}

void
Exp_Noop (OPS *ops)
{
  Build_OP (CGTARG_Noop_Top(), ops);
}

void Expand_Const (TN *dest, TN *src, TYPE_ID mtype, OPS *ops)
{
  FmtAssert( TN_is_symbol(src), ("Expand_Const: src not a symbol TN"));

  TCON tcon = STC_val(TN_var(src));
  if (TCON_ty(tcon) == MTYPE_F4 && TCON_fval(tcon) == 0.0) {
    FmtAssert(TCON_ty(tcon) == mtype, ("Expand_Const: inconsistent mtypes"));
    Build_OP(TOP_mtc1, dest, Zero_TN, ops);
    return;
  }
  if (TCON_ty(tcon) == MTYPE_F8 && TCON_dval(tcon) == 0.0) {
    FmtAssert(TCON_ty(tcon) == mtype, ("Expand_Const: inconsistent mtypes"));
    Build_OP(TOP_dmtc1, dest, Zero_TN, ops);
    return;
  }
  Exp_Load(mtype, mtype, dest, TN_var(src), 0, ops, 0);
}

static BB* last_bb = NULL;
static TN *last_true_tn = NULL, *last_false_tn = NULL;
void
HB_Reinit_Pred ()
{
  last_true_tn = NULL;
  last_false_tn = NULL;
  last_bb = NULL;
}

void
Exp_True_False_Preds_For_Block(BB *bb, TN* &true_tn, TN * &false_tn)
{ 
  if (last_bb != bb)
    last_bb = bb;
  else {
    true_tn = last_true_tn;
    false_tn = last_false_tn;
    return;
  }
  OP* br_op = BB_branch_op(bb);
  if (!br_op)
    return;
  if (OP_code(br_op) == TOP_beq || OP_code(br_op) == TOP_bne) {
    OPS new_ops;
    OPS_Init(&new_ops);
    true_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    false_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TN *tmp_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TN *tmp1_tn;
    Build_OP(TOP_xor, tmp_tn, OP_opnd(br_op, 0), OP_opnd(br_op, 1), 
	     &new_ops);
    Build_OP(TOP_sltiu, false_tn, tmp_tn, Gen_Literal_TN(1, 4), &new_ops);
    Build_OP(TOP_sltu, true_tn, Zero_TN, tmp_tn, &new_ops);
    if (OP_code(br_op) == TOP_bne) {
      tmp1_tn = true_tn;
      true_tn = false_tn;
      false_tn = tmp1_tn;
    }
    BB_Insert_Ops_Before(bb, br_op, &new_ops);
    last_true_tn = true_tn;
    last_false_tn = false_tn;
    return;       
  } else if (OP_code(br_op) == TOP_bc1f || OP_code(br_op) == TOP_bc1t) {
    OPS new_ops;
    OPS_Init(&new_ops);
    true_tn = OP_opnd(br_op, 0);
    false_tn = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 4);
    // search backwards for the instruction that sets the conditon bit;
    // The false TN would be obtained by inverting that condition.
    OP *op;
    BOOL found_cond_set = FALSE;
    FOR_ALL_BB_OPs_REV(bb,op) {
      if (OP_results(op) && 
	  (OP_result(op, 0) == OP_opnd(br_op, 0))) {
	found_cond_set = TRUE;
	break;
      }
    }
    FmtAssert((found_cond_set==TRUE), 
	       ("Did not find instruction setting condition bit in BB"));    
    switch (OP_code(op)) {
    case TOP_c_le_d:
      Build_OP(TOP_c_lt_d, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
      break;
    case TOP_c_le_s:
#if defined(TARG_SL)
      Build_OP(TOP_c_olt_s, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
#else
      Build_OP(TOP_c_lt_s, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
#endif
      break;
    case TOP_c_lt_d:
      Build_OP(TOP_c_le_d, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
      break;
    case TOP_c_lt_s:
#if defined(TARG_SL)
      Build_OP(TOP_c_ole_s, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
#else
      Build_OP(TOP_c_le_s, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), &new_ops);
#endif
      break;
    case TOP_c_eq_d:
      Build_OP(TOP_c_neq_d, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), 
	       &new_ops);
      break;
    case TOP_c_eq_s:
      Build_OP(TOP_c_neq_s, false_tn, OP_opnd(op, 1), OP_opnd(op, 0), 
	       &new_ops);
      break;      
    default:
      FmtAssert(FALSE, ("Handle this case"));
      break;
    }
    TN *tmp_tn = Gen_Register_TN(ISA_REGISTER_CLASS_fcc, 4);
    if (OP_code(br_op) == TOP_bc1t) {
      tmp_tn = true_tn;
      true_tn = false_tn;
      false_tn = tmp_tn;
    }
    BB_Insert_Ops_Before(bb, br_op, &new_ops);
    last_true_tn = true_tn;
    last_false_tn = false_tn;
    return;           
  } else if (OP_code(br_op) == TOP_bgez || OP_code(br_op) == TOP_bltz) {
    OPS new_ops;
    OPS_Init(&new_ops);
    true_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    false_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TN *tmp_tn = Gen_Register_TN(ISA_REGISTER_CLASS_integer, 4);
    TN *tmp1_tn;
    Build_OP(TOP_slt, tmp_tn, OP_opnd(br_op, 0), Zero_TN,
	     &new_ops);
    Build_OP(TOP_xori, true_tn, tmp_tn, Gen_Literal_TN(1, 4), &new_ops);
    Build_OP(TOP_slti, false_tn, OP_opnd(br_op, 0), Gen_Literal_TN(0, 4), 
	     &new_ops);
    if (OP_code(br_op) == TOP_bgez) {
      tmp1_tn = true_tn;
      true_tn = false_tn;
      false_tn = tmp1_tn;
    }
    BB_Insert_Ops_Before(bb, br_op, &new_ops);
    last_true_tn = true_tn;
    last_false_tn = false_tn;
    return;       
  }
  FmtAssert(FALSE, ("HANDLE THIS CASE"));
  true_tn = false_tn = Zero_TN;
}

BOOL
Target_Has_Immediate_Operand (WN *parent, WN *expr)
{
  OPERATOR opr = WN_operator(parent);
  return opr == OPR_ADD || opr == OPR_SUB || 
         opr == OPR_BAND || opr == OPR_BIOR || opr == OPR_BXOR ||
         opr == OPR_LT || opr == OPR_LE || opr == OPR_GT || opr == OPR_GE ||
         opr == OPR_LSHR || opr == OPR_ASHR || opr == OPR_SHL;
}

void 
Exp_Spadjust (TN *dest, TN *size, VARIANT variant, OPS *ops)
{
  Build_OP (TOP_spadjust, dest, SP_TN, size, ops);
  OP_variant(OPS_last(ops)) = variant;
}

/* Return a unique name for a symbol representing a literal. */
char *
Exp_Unique_Literal_Name (void)
{
  static int unique;
  static char name[32];

  sprintf(name, ".LC%d", unique);
  unique++;
  return name;
}

void
Exp_Generic_Pred_Calc(TN* result1, TN *result2, COMPARE_TYPE ctype,
                      TN *qual_pred, OPS* ops)
{ FmtAssert(FALSE,("Unimplemented")); }
  
  
void
Exp_Pred_Calc(TN* result, OP* cmp_op, COMPARE_TYPE ctype, BOOL false_result,
	      OPS* ops)
{ FmtAssert(FALSE,("Unimplemented")); }
