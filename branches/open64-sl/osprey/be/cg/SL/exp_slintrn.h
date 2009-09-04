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

#ifndef exp_slintrn_included
#define exp_slintrn_included  "exp_slintrn.h"
extern TN *Expand_C3_INIT_ACC (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_SAVE_ACC (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_MVFS(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_INIT_DACC (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_SAVE_DACC (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_INIT_ADDR (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_SAVE_ADDR (WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_PTR (WN *intrncall, TN *result, OPS *ops);
extern void Copy_Tn_MapInfo(TN *src_tn, TN *tgt_tn) ;
extern TN *Expand_SET_ADDRSIZE (WN *intrncall, TN *result, OPS *ops);
extern TN* Expand_Float64_Const(WN* intrncall, TN* result,  BOOL Is_high,  OPS *ops);
extern TN* Expand_Float32_Const(WN* intrncall, TN* result, OPS *ops);
extern TN* Expand_LONGLONG_Const(WN* intrncall, TN* result,  BOOL Is_high,  OPS *ops);
extern TN *Expand_Unsigned_Extract(WN *intrncall, TN *result, OPS *ops);
//new c3 instruction version
extern TN *Expand_Set_CircBuf(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_FFE(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_aadda(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_bitr(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_cs(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_dadd(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_Mode0(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode1(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums,  OPS *ops);
extern TN *Expand_C3_Mode2(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops);
extern TN *Expand_C3_revb(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_Mode3(TOP top, WN *intrncall, TN *result, UINT32 const_parm_numbers, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode4(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode5(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode6(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode7(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode8(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode9(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode10(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_Mode11(TOP top, WN *intrncall, TN *result, UINT32 const_parm_nums, OPS *ops, BOOL has_oper = TRUE);
extern TN *Expand_C3_lead(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_shlafa_i(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_saadda_a(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_subc(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_nega(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_C3_mul(TOP top, WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_Init_HI(WN *intrncall, TN *result, OPS *ops);
extern TN *Expand_Copy_HI(WN *intrncall, TN *result, OPS *ops);
// end
#endif

