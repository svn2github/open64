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


/* misc headers for target-specific CGEXP routines */

extern BOOL Trace_Exp;	/* general cgexp trace flag */
extern BOOL Trace_Exp2;	/* extra trace info */

/* in expand: */
extern void Expand_Immediate (TN *dest, TN *src, BOOL is_signed, OPS *ops);
extern void Expand_Const (TN *dest, TN *src, TYPE_ID mtype, OPS *ops);
extern void Expand_Copy (TN *result, TN *src, TYPE_ID mtype, OPS *ops);
extern void Expand_Add (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Sub (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Neg (TN *result, TN *src, TYPE_ID mtype, OPS *ops);
extern void Expand_Aux_Sign (TN *result, TN *x, TN *y, TYPE_ID mtype, OPS *ops);
extern void Expand_Abs (TN *result, TN *x, TYPE_ID mtype, OPS *ops);
extern void Expand_Multiply (TN *result, TN *x, TN *y, TYPE_ID mtype, OPS *ops);
extern void Expand_High_Multiply (TN *result, TN *x, TN *y, TYPE_ID mtype, OPS *ops);
extern void Expand_Sqrt (TN *result, TN *x, TYPE_ID mtype, OPS *ops);
extern void Expand_Binary_Complement (TN *dest, TN *src, TYPE_ID mtype, OPS *ops);
extern void Expand_Binary_And (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Binary_Or (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Binary_Xor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Binary_Nor (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Logical_Not (TN *dest, TN *src, VARIANT variant, OPS *ops);
extern void Expand_Logical_And (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops);
extern void Expand_Logical_Or (TN *dest, TN *src1, TN *src2, VARIANT variant, OPS *ops);
extern void Expand_Int_Less (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_Less_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_Greater (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_Greater_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_Not_Equal (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Bool_Equal (TN *dest, TN *src1, TN *src2, OPS *ops);
extern void Expand_Bool_Not_Equal (TN *dest, TN *src1, TN *src2, OPS *ops);
extern void Expand_Float_Less (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Less_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Greater (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Greater_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Not_Equal (TN *dest, TN *src1, TN *src2, VARIANT variant, TYPE_ID mtype, OPS *ops);
extern void Expand_Convert_Length (TN *dest, TN *src, TN *length, TYPE_ID mtype, BOOL signed_extension, OPS *ops);
extern void Expand_Float_To_Float (TN *dest, TN *src, TYPE_ID mtype, OPS *ops);
extern void Expand_Int_To_Float (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Float_To_Int_Cvt (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Float_To_Int_Round (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Float_To_Int_Trunc (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Float_To_Int_Ceil (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Float_To_Int_Floor (TN *dest, TN *src, TYPE_ID imtype, TYPE_ID fmtype, OPS *ops);
extern void Expand_Bool_To_Int (TN *dest, TN *src, TYPE_ID rtype, OPS *ops);
extern void Expand_Min (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Max (TN *dest, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_MinMax (TN *dest, TN *dest2, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Select (TN *dest_tn, TN *cond_tn, TN *true_tn, TN *false_tn, TYPE_ID mtype, BOOL float_cond, OPS *ops);
extern void Expand_Flop (OPCODE opcode, TN *result, TN *src1, TN *src2, TN *src3, OPS *ops);
extern TN* Expand_Immediate_Into_Register (TN *src, OPS *ops);
extern BOOL Expand_Special_And_Immed(TN *dest, TN *src1, INT64 imm, OPS *ops);

/* enumerate the different kinds of shifts */
typedef enum {shift_left, shift_aright, shift_lright} SHIFT_DIRECTION;
extern void Expand_Shift (TN *result, TN *src1, TN *src2, TYPE_ID mtype, SHIFT_DIRECTION kind, OPS *ops);

/* in exp_loadstore: */
extern void Expand_Lda (TN *dest, TN *src, OPS *ops);
extern void Expand_Load (OPCODE opcode, TN *result, TN *src1, TN *src2, VARIANT variant, OPS *ops);
extern void Expand_Store (TYPE_ID mtype, TN *src1, TN *src2, TN *src3, VARIANT variant, OPS *ops);
extern void Expand_Misaligned_Load (OPCODE op, TN *result, TN *base, TN *disp, VARIANT variant, OPS *ops);
extern void Expand_Misaligned_Store (TYPE_ID mtype, TN *obj_tn, TN *base_tn, TN *disp_tn, VARIANT variant, OPS *ops);
extern void Expand_Lda_Label (TN *dest, TN *lab, OPS *ops);

/* in exp_branch: */
extern void Initialize_Branch_Variants(void);
extern void Expand_Branch ( TN *targ, TN *src1, TN *src2, VARIANT variant, OPS *ops);
/* Check that compare is of proper form, and return TOP to use for 
 * the compare.  May modify the variant and src tns. */
extern TOP Pick_Compare_TOP (VARIANT *variant, TN **src1, TN **src2, OPS *ops);

/* in exp_divrem: */
extern TN* Expand_Divide (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_DivRem (TN *result, TN *result2, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Rem (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Mod (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Divide (TN *result, TN *src1, TN *src2, TYPE_ID mtype, OPS *ops);
extern void Expand_Float_Recip (TN *result, TN *src, TYPE_ID mtype, OPS *ops);
