/*
 * Copyright (C) 2008 Advanced Micro Devices, Inc.  All Rights Reserved.
 */

/*
 *  Copyright (C) 2007, 2008 PathScale, LLC.  All Rights Reserved.
 */

/*
 *  Copyright (C) 2007 QLogic Corporation.  All Rights Reserved.
 */

/*
 * Copyright 2003, 2004, 2005, 2006 PathScale, Inc.  All Rights Reserved.
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


//  Opteron processor scheduling information
///////////////////////////////////////////////////////////////////
//  
//  Description:
//
//  Generate a scheduling description of an AMD Opteron processor
//  via the si_gen interface.
//
///////////////////////////////////////////////////////////////////


//  $Revision: 1.146 $
//  $Date: 05/11/10 18:45:11-08:00 $
//  $Author: tkong@hyalite.keyresearch $


#include "si_gen.h"
#include "targ_isa_subset.h"
#include "topcode.h"


int main (int argc, char *argv[])
{
  Machine( "opteron", ISA_SUBSET_x86_64, argc, argv );

  const RESOURCE res_issue  = RESOURCE_Create( "issue",  3 );
  const RESOURCE res_alu    = RESOURCE_Create( "alu",    3 );
  const RESOURCE res_agu    = RESOURCE_Create( "agu",    3 );
  const RESOURCE res_fmul   = RESOURCE_Create( "fmul",   1 );
  const RESOURCE res_fadd   = RESOURCE_Create( "fadd",   1 );
  const RESOURCE res_fstore = RESOURCE_Create( "fstore", 1 );
  const RESOURCE res_loadstore    = RESOURCE_Create( "loadstore",    2 );

  Instruction_Group( "opteron simple alu",
		     TOP_ijmpx,
		     TOP_icallx,
		     TOP_ijmpxx,
		     TOP_icallxx,
		     TOP_ijmpxxx,
		     TOP_icallxxx,
		     TOP_add32,
		     TOP_adc32,
		     TOP_add64,
		     TOP_addi32,
		     TOP_adci32,
		     TOP_addi64,
		     TOP_inc8,
		     TOP_inc16,
		     TOP_inc32,
		     TOP_inc64,
		     TOP_dec8,
		     TOP_dec16,
		     TOP_dec32,
		     TOP_dec64,
		     TOP_and8,
		     TOP_and16,
		     TOP_and32,
		     TOP_and64,
		     TOP_andi32,
		     TOP_andi64,
		     TOP_cmovb,
		     TOP_cmovae,
		     TOP_cmovp,
		     TOP_cmovnp,
		     TOP_cmove,
		     TOP_cmovne,
		     TOP_cmovbe,
		     TOP_cmova,
		     TOP_cmovl,
		     TOP_cmovge,
		     TOP_cmovle,
		     TOP_cmovg,
		     TOP_cmovs,
		     TOP_cmovns,
		     TOP_cmp8,
		     TOP_cmp16,
		     TOP_cmp32,
		     TOP_cmp64,
		     TOP_cmpi8,
		     TOP_cmpi16,
		     TOP_cmpi32,
		     TOP_cmpi64,
		     TOP_neg32,
		     TOP_neg64,
		     TOP_not32,
		     TOP_not64,
		     TOP_or8,
		     TOP_or16,
		     TOP_or32,
		     TOP_or64,
		     TOP_ori32,
		     TOP_ori64,
		     TOP_ror8,
		     TOP_ror16,
		     TOP_ror32,
		     TOP_ror64,
		     TOP_rori8,
		     TOP_rori16,
		     TOP_rori32,
		     TOP_rori64,
		     TOP_rol8,
		     TOP_rol16,
		     TOP_rol32,
		     TOP_rol64,
		     TOP_roli8,
		     TOP_roli16,
		     TOP_roli32,
		     TOP_roli64,
		     TOP_sar32,
		     TOP_sar64,
		     TOP_sari32,
		     TOP_sari64,
		     TOP_shl32,
		     TOP_shld32,
		     TOP_shrd32,
		     TOP_shl64,
		     TOP_shli32,
		     TOP_shldi32,
		     TOP_shrdi32,
		     TOP_shli64,
		     TOP_shr32,
		     TOP_shr64,
		     TOP_shri32,
		     TOP_shri64,
		     TOP_sub32,
		     TOP_sbb32,
		     TOP_sub64,
		     TOP_subi32,
		     TOP_sbbi32,
		     TOP_subi64,
		     TOP_xor8,
		     TOP_xor16,
		     TOP_xor32,
		     TOP_xor64,
		     TOP_xori32,
		     TOP_xori64,
		     TOP_zero32,
		     TOP_zero64,
		     TOP_test32,
		     TOP_test64,
		     TOP_testi32,
		     TOP_testi64,
		     TOP_setb,
		     TOP_setae,
		     TOP_setp,
		     TOP_setnp,
		     TOP_sete,
		     TOP_setne,
		     TOP_setbe,
		     TOP_seta,
		     TOP_setl,
		     TOP_setge,
		     TOP_setle,
		     TOP_setg,
		     TOP_mov32,
		     TOP_mov64,
		     TOP_movsbl,
		     TOP_movzbl,
		     TOP_movswl,
		     TOP_movzwl,
		     TOP_movsbq,
		     TOP_movzbq,
		     TOP_movswq,
		     TOP_movzwq,
		     TOP_movslq,
		     TOP_movzlq,
		     TOP_ldc32,
		     TOP_ldc64,
		     TOP_movabsq,
		     TOP_cltd,
		     TOP_cqto,
		     TOP_bsf32, // guess!
		     TOP_bsf64, // guess!
		     TOP_bsr32, // guess!
		     TOP_bsr64, // guess!
		     TOP_mov64_m,
		     TOP_cmpeqss,
		     TOP_cmpltss,
		     TOP_cmpless,
		     TOP_cmpunordss,
		     TOP_cmpneqss,
		     TOP_cmpnltss,
		     TOP_cmpnless,
		     TOP_cmpordss,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(1);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "simple alu w/ mem operand",
		     TOP_addxxx32,
		     TOP_addxxx64,
		     TOP_subxxx32,
		     TOP_subxxx64,
		     TOP_xorxxx8,
		     TOP_xorxxx16,
		     TOP_xorxxx32,
		     TOP_xorxxx64,
		     TOP_orxxx8,
		     TOP_orxxx16,
		     TOP_orxxx32,
		     TOP_orxxx64,
		     TOP_andxxx8,
		     TOP_andxxx16,
		     TOP_andxxx32,
		     TOP_addxxxss,
		     TOP_addxxxsd,
		     TOP_subxxxss,
		     TOP_subxxxsd,
		     TOP_andxxx64,
		     TOP_cmpxxx8,
		     TOP_cmpxxx16,
		     TOP_cmpxxx32,
		     TOP_cmpxxx64,
		     TOP_cmpxxxr8,
		     TOP_cmpxxxr16,
		     TOP_cmpxxxr32,
		     TOP_cmpxxxr64,
		     TOP_cmpxxxi8,
		     TOP_cmpxxxi16,
		     TOP_cmpxxxi32,
		     TOP_cmpxxxi64,
		     TOP_testxxx32,
		     TOP_testxxx64,
		     TOP_andx32,
		     TOP_andxx32,
		     TOP_orx32,
		     TOP_orxx32,
		     TOP_orx64,
		     TOP_orxx64,
		     TOP_xorx32,
		     TOP_xorxx32,
		     TOP_xorx64,
		     TOP_xorxx64,
		     TOP_addx32,
		     TOP_addx64,
		     TOP_addxx32,
		     TOP_addxx64,
		     TOP_subx32,
		     TOP_subx64,
		     TOP_subxx32,
		     TOP_subxx64,
		     TOP_testx32,
		     TOP_testxx32,
		     TOP_testx64,
		     TOP_testxx64,
		     TOP_cmpx8,
		     TOP_cmpxx8,
		     TOP_cmpxr8,
		     TOP_cmpxxr8,
		     TOP_cmpxi8,
		     TOP_cmpxxi8,
		     TOP_cmpx16,
		     TOP_cmpxx16,
		     TOP_cmpxr16,
		     TOP_cmpxxr16,
		     TOP_cmpxi16,
		     TOP_cmpxxi16,
		     TOP_cmpx32,
		     TOP_cmpxx32,
		     TOP_cmpxr32,
		     TOP_cmpxxr32,
		     TOP_cmpxi32,
		     TOP_cmpxxi32,
		     TOP_cmpx64,
		     TOP_cmpxx64,
		     TOP_cmpxr64,
		     TOP_cmpxxr64,
		     TOP_cmpxi64,
		     TOP_cmpxxi64,
		     TOP_xorx8,
		     TOP_xorx16,
		     TOP_xorxx8,
		     TOP_xorxx16,
		     TOP_orx8,
		     TOP_orx16,
		     TOP_orxx8,
		     TOP_orxx16,
		     TOP_andx8,
		     TOP_andx16,
		     TOP_andx64,
		     TOP_andxx8,
		     TOP_andxx16,
		     TOP_andxx64,
		     TOP_lock_add8,
		     TOP_lock_add16,
		     TOP_lock_add32,
		     TOP_lock_adc32,
		     TOP_lock_add64,
		     TOP_lock_and8,
		     TOP_lock_and16,
		     TOP_lock_and32,
		     TOP_lock_and64,
		     TOP_lock_or8,
		     TOP_lock_or16,
		     TOP_lock_or32,
		     TOP_lock_or64,
		     TOP_lock_xor8,
		     TOP_lock_xor16,
		     TOP_lock_xor32,
		     TOP_lock_xor64,
		     TOP_lock_sub8,
		     TOP_lock_sub16,
		     TOP_lock_sub32,
		     TOP_lock_sub64,
		     TOP_lock_xadd8,
		     TOP_lock_xadd16,
		     TOP_lock_xadd32,
		     TOP_lock_xadd64,
		     TOP_lock_cmpxchg8,
		     TOP_lock_cmpxchg16,
		     TOP_lock_cmpxchg32,
		     TOP_lock_cmpxchg64,
		     TOP_pextrw,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "packed insert",
                     TOP_pinsrw,
                     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "lea",
		     TOP_lea32,
		     TOP_lea64,
		     TOP_leax32,
		     TOP_leax64,
		     TOP_leaxx32,
		     TOP_leaxx64,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_agu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "push/pop",
		     TOP_pushl,
		     TOP_pushq,
		     TOP_popl,
		     TOP_popq,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "ret near",
		     TOP_ret,
		     TOP_reti,
		     TOP_fcmovb,
		     TOP_fcmovbe,
		     TOP_fcmovnb,
		     TOP_fcmovnbe,
		     TOP_fcmove,
		     TOP_fcmovne,
		     TOP_fcmovu,
		     TOP_fcmovnu,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "call",
		     TOP_call,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "indirect call/jump",
		     TOP_icall,
		     TOP_ijmp,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "imult32",
		     TOP_mul32,
		     TOP_imul32,
		     TOP_imulx32,
		     TOP_imuli32,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "imult64",
		     TOP_mulx64,
		     TOP_imul64,
		     TOP_imuli64,
		     TOP_imulx64,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("leave",
		    TOP_leave,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("enter",
		    TOP_enter,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(21);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("div32",
		    TOP_div32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(39);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("div64",
		    TOP_div64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(71);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("idiv32",
		    TOP_idiv32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(42);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("idiv64",
		    TOP_idiv64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(74);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("load8_16/32/64",
		    TOP_ld8_abs,
		    TOP_ld16_abs,
		    TOP_ld8_32_n32,
		    TOP_ldu8_32_n32,
		    TOP_ld16_32_n32,
		    TOP_ldu16_32_n32,
		    TOP_ld8_32,
		    TOP_ldx8_32,
		    TOP_ldxx8_32,
		    TOP_ldu8_32,
		    TOP_ldxu8_32,
		    TOP_ldxxu8_32,
		    TOP_ld16_32,
		    TOP_ldx16_32,
		    TOP_ldxx16_32,
		    TOP_ldu16_32,
		    TOP_ldxu16_32,
		    TOP_ldxxu16_32,
		    TOP_ld8_64,
		    TOP_ldx8_64,
		    TOP_ldxx8_64,
		    TOP_ld8_64_off,
		    TOP_ldu8_64,
		    TOP_ldxu8_64,
		    TOP_ldxxu8_64,
		    TOP_ldu8_64_off,
		    TOP_ld16_64,
		    TOP_ldx16_64,
		    TOP_ldxx16_64,
		    TOP_ld16_64_off,
		    TOP_ldu16_64,
		    TOP_ldxu16_64,
		    TOP_ldxxu16_64,
		    TOP_ldu16_64_off,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(4);

  Instruction_Group("load32/64",
		    TOP_ld64,
		    TOP_ld32,
		    TOP_ld32_n32,
		    TOP_ld32_64_off,
		    TOP_ld64_off,
		    TOP_ldx64,
		    TOP_ldxx64,
		    TOP_ldx32,
		    TOP_ldxx32,
		    TOP_ld32_64,
		    TOP_ldx32_64,
		    TOP_ldxx32_64,
		    TOP_ld32_abs,
		    TOP_ld64_abs,
		    TOP_ld64_2m,
		    TOP_ld64_2m_n32,
		    TOP_ld32_gs_seg_off,
		    TOP_ld64_fs_seg_off,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(3);

  Instruction_Group("store",
		    TOP_store8_n32,
		    TOP_store16_n32,
		    TOP_store32_n32,
		    TOP_store64_off,
		    TOP_store8,
		    TOP_storex8,
		    TOP_storexx8,
		    TOP_store16,
		    TOP_storex16,
		    TOP_storexx16,
		    TOP_store32,
		    TOP_store64,
		    TOP_storex32,
		    TOP_storex64,
		    TOP_storexx32,
		    TOP_storexx64,
		    TOP_storenti32,
		    TOP_storentix32,
		    TOP_storentixx32,
		    TOP_storenti64,
		    TOP_storentix64,
		    TOP_storentixx64,
		    TOP_store8_abs,
		    TOP_store16_abs,
		    TOP_store32_abs,
		    TOP_store64_abs,
		    TOP_store64_fm,
		    TOP_store64_fm_n32,
		    TOP_storent64_fm,
		    TOP_maskmovq,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(3);

  Instruction_Group("branch",
		    TOP_jb,
		    TOP_jae,
		    TOP_jp,
		    TOP_jnp,
		    TOP_je,
		    TOP_jne,
		    TOP_jbe,
		    TOP_ja,
		    TOP_jge,
		    TOP_jl,
		    TOP_jle,
		    TOP_jg,
		    TOP_jcxz,
		    TOP_jecxz,
		    TOP_jrcxz,
		    TOP_js,
		    TOP_jns,
		    TOP_jmp,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(1);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);

  Instruction_Group( "sqrtss",
		     TOP_sqrtss,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(19);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group( "sqrtsd",
		     TOP_sqrtsd,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(27);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group( "float-mov",
		     TOP_movsd,
		     TOP_movss,
		     TOP_movdq,
		     TOP_movapd,
		     TOP_movaps,
		     TOP_movhlps,
		     TOP_movlhps,
		     TOP_cmpsd,
		     TOP_cmpss,
		     TOP_fmov,
		     TOP_fchs,
		     TOP_fabs,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd,  0);

  Instruction_Group( "float-load",
		     TOP_ldss_n32,
		     TOP_ldsd_n32,
		     TOP_ldss,
		     TOP_ldsd,
		     TOP_ldssx,
		     TOP_ldssxx,
		     TOP_ldsdx,
		     TOP_ldsdxx,
		     TOP_lddqa,
		     TOP_lddqa_n32,
		     TOP_lddqax,
		     TOP_lddqaxx,
		     TOP_fld,
		     TOP_flds,
		     TOP_flds_n32,
		     TOP_fldl,
		     TOP_fldl_n32,
		     TOP_fldt,
		     TOP_fldt_n32,
		     TOP_fldcw,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(3);

  Instruction_Group( "float-load vector",
		     TOP_lddqu,
		     TOP_lddqu_n32,
		     TOP_lddqux,
		     TOP_lddquxx,
		     TOP_ldupd,
		     TOP_ldupdx,
		     TOP_ldupdxx,
		     TOP_ldupd_n32,
		     TOP_ldups,
		     TOP_ldups_n32,
		     TOP_ldmxcsr,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(7);

  Instruction_Group( "float-load vector II",
		     TOP_ldapd,
		     TOP_ldapd_n32,
		     TOP_ldapdx,
		     TOP_ldapdxx,
		     TOP_ldaps,
		     TOP_ldaps_n32,
		     TOP_ldapsx,
		     TOP_ldapsxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(2);

  Instruction_Group( "float-load vector low-high packed-single",
		     TOP_ldlps,
		     TOP_ldlps_n32,
		     TOP_ldlpsx,
		     TOP_ldlpsxx,
		     TOP_ldhps,
		     TOP_ldhps_n32,
		     TOP_ldhpsx,
		     TOP_ldhpsxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(2);

  Instruction_Group( "float-store vector low-high packed-single",
		     TOP_stlps,
		     TOP_stlps_n32,
		     TOP_stlpsx,
		     TOP_stlpsxx,
		     TOP_sthps,
		     TOP_sthps_n32,
		     TOP_sthpsx,
		     TOP_sthpsxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(2);

  Instruction_Group( "float-load vector low-high packed-double",
		     TOP_ldlpd,
		     TOP_ldlpd_n32,
		     TOP_ldlpdx,
		     TOP_ldlpdxx,
		     TOP_ldhpd,
		     TOP_ldhpd_n32,
		     TOP_ldhpdx,
		     TOP_ldhpdxx,
		     TOP_ld64_2sse,
		     TOP_ld64_2sse_n32,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);
  Load_Access_Time(4);

  Instruction_Group( "float-store vector low-high packed-double",
		     TOP_stlpd,
		     TOP_stlpd_n32,
		     TOP_stlpdx,
		     TOP_stlpdxx,
		     TOP_sthpd,
		     TOP_sthpd_n32,
		     TOP_sthpdx,
		     TOP_sthpdxx,
		     TOP_storelpd,
		     TOP_store64_fsse,
		     TOP_store64_fsse_n32,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(4);

  Instruction_Group( "float-store",
		     TOP_stss_n32,
		     TOP_stsd_n32,
		     TOP_stss,
		     TOP_stsd,
		     TOP_stntss,
		     TOP_stntsd,
		     TOP_stssx,
		     TOP_stssxx,
		     TOP_stntssx,
		     TOP_stntssxx,
		     TOP_stsdx,
		     TOP_stsdxx,
		     TOP_stntsdx,
		     TOP_stntsdxx,
		     TOP_stdqa,
		     TOP_stdqa_n32,
		     TOP_stdqax,
		     TOP_stdqaxx,
		     TOP_stntpd,
		     TOP_stntpdx,
		     TOP_stntpdxx,
		     TOP_stntps,
		     TOP_stntpsx,
		     TOP_stntpsxx,
		     TOP_fstp,
		     TOP_fst,
		     TOP_fstps,
		     TOP_fstps_n32,
		     TOP_fstpl,
		     TOP_fstpl_n32,
		     TOP_fstpt,
		     TOP_fstpt_n32,
		     TOP_fsts,
		     TOP_fsts_n32,
		     TOP_fstl,
		     TOP_fstl_n32,
		     TOP_fnstcw,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(2);

  Instruction_Group( "float-store vector",
		     TOP_stdqu,
		     TOP_stdqu_n32,
		     TOP_stdqux,
		     TOP_stdquxx,
		     TOP_stupd,
		     TOP_stups,
		     TOP_maskmovdqu,
		     TOP_stmxcsr,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(4);

  Instruction_Group( "float-store vector II",
		     TOP_staps,
		     TOP_staps_n32,
		     TOP_stapsx,
		     TOP_stapsxx,
		     TOP_stapd,
		     TOP_stapd_n32,
		     TOP_stapdx,
		     TOP_stapdxx,
		     TOP_storenti128,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);
  Store_Available_Time(3);

  Instruction_Group( "vector cvt I",
		     TOP_cvtdq2pd,
		     TOP_cvtdq2ps,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "vector cvt II",
		     TOP_cvtps2pd,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "vector cvt III",
		     TOP_cvtpd2ps,
		     TOP_cvtpd2dq,
		     TOP_cvttpd2dq,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(8);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "vector cvt IV",
		     TOP_cvtps2dq,
		     TOP_cvttps2dq,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "vector cvt I w/ memory operand",
		     TOP_cvtdq2pd_x,
		     TOP_cvtdq2ps_x,
		     TOP_cvtdq2pd_xx,
		     TOP_cvtdq2ps_xx,
		     TOP_cvtdq2pd_xxx,
		     TOP_cvtdq2ps_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "vector cvt II w/ memory operand",
		     TOP_cvtps2pd_x,
		     TOP_cvtps2pd_xx,
		     TOP_cvtps2pd_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "vector cvt III w/ memory operand",
		     TOP_cvtpd2ps_x,
		     TOP_cvttpd2dq_x,
		     TOP_cvtpd2ps_xx,
		     TOP_cvttpd2dq_xx,
		     TOP_cvtpd2ps_xxx,
		     TOP_cvttpd2dq_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "vector cvt IV w/ memory operand",
		     TOP_cvtps2dq_x,
		     TOP_cvtps2dq_xx,
		     TOP_cvtps2dq_xxx,
		     TOP_cvttps2dq_x,
		     TOP_cvttps2dq_xx,
		     TOP_cvttps2dq_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "int-2-float w/ mem",
		     TOP_cvtsi2ss_x,
		     TOP_cvtsi2ss_xx,
		     TOP_cvtsi2ss_xxx,
		     TOP_cvtsi2ssq_x,
		     TOP_cvtsi2ssq_xx,
		     TOP_cvtsi2ssq_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "int-2-float",
		     TOP_cvtsi2ss,
		     TOP_cvtsi2ssq,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(14);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "double-2-float",
		     TOP_cvtsd2ss,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(12);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "double-2-float w/ mem",
		     TOP_cvtsd2ss_x,
		     TOP_cvtsd2ss_xx,
		     TOP_cvtsd2ss_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "int-2-double",
		     TOP_cvtsi2sd,
		     TOP_cvtsi2sdq,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(11);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "int-2-double w/ mem",
		     TOP_cvtsi2sd_x,
		     TOP_cvtsi2sd_xx,
		     TOP_cvtsi2sd_xxx,
		     TOP_cvtsi2sdq_x,
		     TOP_cvtsi2sdq_xx,
		     TOP_cvtsi2sdq_xxx,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group( "int-2-float",
		     TOP_movg2x,
		     TOP_movg2x64,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "float-2-int",
		     TOP_movx2g,
		     TOP_movx2g64,
		     TOP_cvtss2sd,
		     TOP_cvtss2si,
		     TOP_cvtsd2si,
		     TOP_cvtss2siq,
		     TOP_cvtsd2siq,
		     TOP_cvttss2si,
		     TOP_cvttsd2si,
		     TOP_cvttss2siq,
		     TOP_cvttsd2siq,
		     TOP_pmovmskb128,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group("float-alu",
		    TOP_addss,
		    TOP_addsd,
		    TOP_subsd,
		    TOP_subss,
		    TOP_comisd,
		    TOP_comiss,
		    TOP_fadd,
		    TOP_faddp,
		    TOP_fsub,
		    TOP_fsubp,
		    TOP_fsubr,
		    TOP_fsubrp,
		    TOP_fmul,
		    TOP_fmulp,
		    TOP_fxch,
		    TOP_fucomi,
		    TOP_fucomip,
		    TOP_fistps,
		    TOP_fistpl,
		    TOP_fists,
		    TOP_fistl,
		    TOP_fistpll,
		    TOP_fisttps,
		    TOP_fisttpl,
		    TOP_fisttpll,
		    TOP_fldz,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class I",
		    // SSE3 instruction latencies are wild guesses!
		    TOP_faddsub128v32,
		    TOP_faddsub128v64,
		    TOP_fhadd128v32,
		    TOP_fhadd128v64,
		    TOP_fhsub128v32,
		    TOP_fhsub128v64,
		    TOP_fadd128v32,
		    TOP_fadd128v64,
		    TOP_fsub128v32,
		    TOP_fsub128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class I w/ memory operand",
		    // SSE3 instruction latencies are wild guesses!
		    TOP_faddsubx128v32,
		    TOP_faddsubx128v64,
		    TOP_fhaddx128v32,
		    TOP_fhaddx128v64,
		    TOP_fhsubx128v32,
		    TOP_fhsubx128v64,
		    TOP_faddsubxx128v32,
		    TOP_faddsubxx128v64,
		    TOP_fhaddxx128v32,
		    TOP_fhaddxx128v64,
		    TOP_fhsubxx128v32,
		    TOP_fhsubxx128v64,
		    TOP_faddsubxxx128v32,
		    TOP_faddsubxxx128v64,
		    TOP_fhaddxxx128v32,
		    TOP_fhaddxxx128v64,
		    TOP_fhsubxxx128v32,
		    TOP_fhsubxxx128v64,
		    TOP_faddx128v32,
		    TOP_faddx128v64,
		    TOP_fsubx128v32,
		    TOP_fsubx128v64,
		    TOP_faddxx128v32,
		    TOP_faddxx128v64,
		    TOP_fsubxx128v32,
		    TOP_fsubxx128v64,
		    TOP_faddxxx128v32,
		    TOP_faddxxx128v64,
		    TOP_fsubxxx128v32,
		    TOP_fsubxxx128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class II",
		    TOP_fand128v32,
		    TOP_fand128v64,
		    TOP_for128v32,
		    TOP_for128v64,
		    TOP_fxor128v32,
		    TOP_fxor128v64,
		    TOP_andps,
		    TOP_andpd,
		    TOP_xorps,
		    TOP_xorpd,
		    TOP_xzero32,
		    TOP_xzero64,
		    TOP_xzero128v32,
		    TOP_xzero128v64,
		    TOP_orps,
		    TOP_orpd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class II w/ memory operand",
		    TOP_fandx128v32,
		    TOP_fandx128v64,
		    TOP_forx128v32,
		    TOP_forx128v64,
		    TOP_fxorx128v32,
		    TOP_fxorx128v64,
		    TOP_fandxx128v32,
		    TOP_fandxx128v64,
		    TOP_forxx128v32,
		    TOP_forxx128v64,
		    TOP_fxorxx128v32,
		    TOP_fxorxx128v64,
		    TOP_fandxxx128v32,
		    TOP_fandxxx128v64,
		    TOP_forxxx128v32,
		    TOP_forxxx128v64,
		    TOP_fxorxxx128v32,
		    TOP_fxorxxx128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class III",
		    TOP_fmul128v32,
		    TOP_fmul128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class III w/memory operand",
		    TOP_fmulx128v32,
		    TOP_fmulx128v64,
		    TOP_fmulxx128v32,
		    TOP_fmulxx128v64,
		    TOP_fmulxxx128v32,
		    TOP_fmulxxx128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class IV",
		    TOP_fdiv128v32,
		    TOP_fsqrt,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(33);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("x87 cosine",
		    TOP_fcos,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(92);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("x87 sine",
		    TOP_fsin,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(93);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("float-alu for float vector class IV w/ memory operand",
		    TOP_fdivx128v32,
		    TOP_fdivxx128v32,
		    TOP_fdivxxx128v32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(35);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class V",
		    TOP_fdiv128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(37);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class V w/ memory operand",
		    TOP_fdivx128v64,
		    TOP_fdivxx128v64,
		    TOP_fdivxxx128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(39);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-vector fma4",
                    TOP_vfmaddss,
                    TOP_vfmaddsd,
                    TOP_vfnmaddss,
                    TOP_vfnmaddsd,
                    TOP_vfmaddps,
                    TOP_vfmaddpd,
                    TOP_vfnmaddps,
                    TOP_vfnmaddpd,
                    TOP_vfmsubss,
                    TOP_vfmsubsd,
                    TOP_vfnmsubss,
                    TOP_vfnmsubsd,
                    TOP_vfmsubps,
                    TOP_vfmsubpd,
                    TOP_vfnmsubps,
                    TOP_vfnmsubpd,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2); // faked for now until known
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-vector fma4 mem opnd",
                    TOP_vfmaddxss,
                    TOP_vfmaddxsd,
                    TOP_vfnmaddxss,
                    TOP_vfnmaddxsd,
                    TOP_vfmaddxps,
                    TOP_vfmaddxpd,
                    TOP_vfnmaddxps,
                    TOP_vfnmaddxpd,
                    TOP_vfmaddxrss,
                    TOP_vfmaddxrsd,
                    TOP_vfnmaddxrss,
                    TOP_vfnmaddxrsd,
                    TOP_vfmaddxrps,
                    TOP_vfmaddxrpd,
                    TOP_vfnmaddxrps,
                    TOP_vfnmaddxrpd,
                    TOP_vfmsubxss,
                    TOP_vfmsubxsd,
                    TOP_vfnmsubxss,
                    TOP_vfnmsubxsd,
                    TOP_vfmsubxps,
                    TOP_vfmsubxpd,
                    TOP_vfnmsubxps,
                    TOP_vfnmsubxpd,
                    TOP_vfmsubxrss,
                    TOP_vfmsubxrsd,
                    TOP_vfnmsubxrss,
                    TOP_vfnmsubxrsd,
                    TOP_vfmsubxrps,
                    TOP_vfmsubxrpd,
                    TOP_vfnmsubxrps,
                    TOP_vfnmsubxrpd,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4); // faked for now until known
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-vector fma4 mem opnd  w/ scaled index ",
                    TOP_vfmaddxxss,
                    TOP_vfmaddxxsd,
                    TOP_vfnmaddxxss,
                    TOP_vfnmaddxxsd,
                    TOP_vfmaddxxps,
                    TOP_vfmaddxxpd,
                    TOP_vfnmaddxxps,
                    TOP_vfnmaddxxpd,
                    TOP_vfmaddxxrss,
                    TOP_vfmaddxxrsd,
                    TOP_vfnmaddxxrss,
                    TOP_vfnmaddxxrsd,
                    TOP_vfmaddxxrps,
                    TOP_vfmaddxxrpd,
                    TOP_vfnmaddxxrps,
                    TOP_vfnmaddxxrpd,
                    TOP_vfmsubxxss,
                    TOP_vfmsubxxsd,
                    TOP_vfnmsubxxss,
                    TOP_vfnmsubxxsd,
                    TOP_vfmsubxxps,
                    TOP_vfmsubxxpd,
                    TOP_vfnmsubxxps,
                    TOP_vfnmsubxxpd,
                    TOP_vfmsubxxrss,
                    TOP_vfmsubxxrsd,
                    TOP_vfnmsubxxrss,
                    TOP_vfnmsubxxrsd,
                    TOP_vfmsubxxrps,
                    TOP_vfmsubxxrpd,
                    TOP_vfnmsubxxrps,
                    TOP_vfnmsubxxrpd,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4); // faked for now until known
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-vector fma4 mem opnd  w/ scaled index w/o base",
                    TOP_vfmaddxxxss,
                    TOP_vfmaddxxxsd,
                    TOP_vfnmaddxxxss,
                    TOP_vfnmaddxxxsd,
                    TOP_vfmaddxxxps,
                    TOP_vfmaddxxxpd,
                    TOP_vfnmaddxxxps,
                    TOP_vfnmaddxxxpd,
                    TOP_vfmaddxxxrss,
                    TOP_vfmaddxxxrsd,
                    TOP_vfnmaddxxxrss,
                    TOP_vfnmaddxxxrsd,
                    TOP_vfmaddxxxrps,
                    TOP_vfmaddxxxrpd,
                    TOP_vfnmaddxxxrps,
                    TOP_vfnmaddxxxrpd,
                    TOP_vfmsubxxxss,
                    TOP_vfmsubxxxsd,
                    TOP_vfnmsubxxxss,
                    TOP_vfnmsubxxxsd,
                    TOP_vfmsubxxxps,
                    TOP_vfmsubxxxpd,
                    TOP_vfnmsubxxxps,
                    TOP_vfnmsubxxxpd,
                    TOP_vfmsubxxxrss,
                    TOP_vfmsubxxxrsd,
                    TOP_vfnmsubxxxrss,
                    TOP_vfnmsubxxxrsd,
                    TOP_vfmsubxxxrps,
                    TOP_vfmsubxxxrpd,
                    TOP_vfnmsubxxxrps,
                    TOP_vfnmsubxxxrpd,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4); // faked for now until known
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class VI",
		    TOP_fmax128v32,
		    TOP_fmax128v64,
		    TOP_fmin128v32,
		    TOP_fmin128v64,
		    TOP_psadbw,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class VI w/ memory operand",
		    TOP_fmaxx128v32,
		    TOP_fmaxx128v64,
		    TOP_fminx128v32,
		    TOP_fminx128v64,
		    TOP_fmaxxx128v32,
		    TOP_fmaxxx128v64,
		    TOP_fminxx128v32,
		    TOP_fminxx128v64,
		    TOP_fmaxxxx128v32,
		    TOP_fmaxxxx128v64,
		    TOP_fminxxx128v32,
		    TOP_fminxxx128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class VII",
		    TOP_fsqrt128v32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(39);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class VIII",
		    TOP_fsqrt128v64,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(51);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class IX",
		    TOP_frsqrt128v32,
		    TOP_frcp128v32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class X",
		    TOP_unpcklpd,
		    TOP_unpckhpd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XI",
		    TOP_unpcklps,
		    TOP_unpckhps,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XII",
		    // SSE3 instruction latencies are wild guesses!
		    TOP_fmovsldup,
		    TOP_fmovshdup,
		    TOP_fmovddup,
		    TOP_shufps,
		    TOP_shufpd,
		    TOP_pshufd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XII w/ memory operand",
		    // SSE3 instruction latencies are wild guesses!
		    TOP_fmovsldupx,
		    TOP_fmovshdupx,
		    TOP_fmovddupx,
		    TOP_fmovsldupxx,
		    TOP_fmovshdupxx,
		    TOP_fmovddupxx,
		    TOP_fmovsldupxxx,
		    TOP_fmovshdupxxx,
		    TOP_fmovddupxxx,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for float vector class XIIa",
		    TOP_pshufw,
		    TOP_pshuflw,
		    TOP_pshufhw,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("mmx shuffle",
		    TOP_pshufw64v16,
		    TOP_psllw_mmx,
		    TOP_pslld_mmx,
		    TOP_psrlw_mmx,
		    TOP_psrld_mmx,
		    TOP_psraw_mmx,
		    TOP_psrad_mmx,
		    TOP_pand_mmx,
		    TOP_pandn_mmx,
		    TOP_por_mmx,
		    TOP_pxor_mmx,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XIII",
		    TOP_psrldq,
		    TOP_psrlq128v64,
		    TOP_pslldq,
		    TOP_psllw,
		    TOP_pslld,
		    TOP_psllq,
		    TOP_psrlw,
		    TOP_psrld,
		    TOP_psrlq,
		    TOP_psraw,
		    TOP_psrad,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XIV",
		    TOP_punpcklwd,
		    TOP_punpcklbw,
		    TOP_punpckldq,
		    TOP_punpckhbw,
		    TOP_punpckhwd,
		    TOP_punpckhdq,
		    TOP_punpckl64v8,
		    TOP_punpckl64v16,
		    TOP_punpckl64v32,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for float vector class XV",
		    TOP_cmpps,
		    TOP_cmppd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("sse parallel compares",
		    TOP_cmpeqps,
		    TOP_cmpltps,
		    TOP_cmpleps,
		    TOP_cmpunordps,
		    TOP_cmpneqps,
		    TOP_cmpnltps,
		    TOP_cmpnleps,
		    TOP_cmpordps,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class XVI",
		    TOP_cmpgt128v8,
		    TOP_cmpgt128v16,
		    TOP_cmpgt128v32,
		    TOP_cmpeq128v8,
		    TOP_cmpeq128v16,
		    TOP_cmpeq128v32,
		    TOP_pcmpeqb,
		    TOP_pcmpeqw,
		    TOP_pcmpeqd,
		    TOP_pcmpgtb,
		    TOP_pcmpgtw,
		    TOP_pcmpgtd,
		    TOP_max128v8,
		    TOP_max128v16,
		    TOP_max64v8,
		    TOP_max64v16,
		    TOP_min128v8,
		    TOP_min128v16,
		    TOP_min64v8,
		    TOP_min64v16,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for float vector class XVII",
		    TOP_cmpgtx128v8,
		    TOP_cmpgtx128v16,
		    TOP_cmpgtx128v32,
		    TOP_cmpeqx128v8,
		    TOP_cmpeqx128v16,
		    TOP_cmpeqx128v32,
		    TOP_maxx128v8,
		    TOP_maxx128v16,
		    TOP_minx128v8,
		    TOP_minx128v16,
		    TOP_cmpgtxx128v8,
		    TOP_cmpgtxx128v16,
		    TOP_cmpgtxx128v32,
		    TOP_cmpeqxx128v8,
		    TOP_cmpeqxx128v16,
		    TOP_cmpeqxx128v32,
		    TOP_maxxx128v8,
		    TOP_maxxx128v16,
		    TOP_minxx128v8,
		    TOP_minxx128v16,
		    TOP_cmpgtxxx128v8,
		    TOP_cmpgtxxx128v16,
		    TOP_cmpgtxxx128v32,
		    TOP_cmpeqxxx128v8,
		    TOP_cmpeqxxx128v16,
		    TOP_cmpeqxxx128v32,
		    TOP_maxxxx128v8,
		    TOP_maxxxx128v16,
		    TOP_minxxx128v8,
		    TOP_minxxx128v16,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu for int vector",
		    TOP_add128v8,
		    TOP_add128v16,
		    TOP_add128v32,
		    TOP_add128v64,
		    TOP_add64v8,
		    TOP_add64v16,
		    TOP_add64v32,
		    TOP_paddsb,
		    TOP_paddsw,
		    TOP_paddq,
		    TOP_psubsb,
		    TOP_psubsw,
		    TOP_paddusb,
		    TOP_paddusw,
		    TOP_psubusb,
		    TOP_psubusw,
		    TOP_sub128v8,
		    TOP_sub128v16,
		    TOP_sub128v32,
		    TOP_sub128v64,		    
		    TOP_sub64v8,
		    TOP_sub64v16,
		    TOP_sub64v32,
		    TOP_and128v8,
		    TOP_and128v16,
		    TOP_and128v32,
		    TOP_and128v64,		    
		    TOP_or128v8,
		    TOP_or128v16,
		    TOP_or128v32,
		    TOP_or128v64,		    
		    TOP_xor128v8,
		    TOP_xor128v16,
		    TOP_xor128v32,
		    TOP_xor128v64,		    
		    TOP_subus128v16,
		    TOP_packsswb,
		    TOP_packssdw,
		    TOP_packuswb,
		    TOP_pavgb,
		    TOP_pavgw,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-alu for int mpy vector",
		    TOP_mul128v16,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-alu for mmx int mpy vector",
		    TOP_pmullw,
		    TOP_pmulhw,
		    TOP_pmulhuw,
		    TOP_pmaddwd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
		    
  Instruction_Group("float-alu for int vector w/ memory operand",
		    TOP_addx128v8,
		    TOP_addx128v16,
		    TOP_addx128v32,
		    TOP_addx128v64,
		    TOP_subx128v8,
		    TOP_subx128v16,
		    TOP_subx128v32,
		    TOP_subx128v64,		    
		    TOP_andx128v8,
		    TOP_andx128v16,
		    TOP_andx128v32,
		    TOP_andx128v64,		    
		    TOP_orx128v8,
		    TOP_orx128v16,
		    TOP_orx128v32,
		    TOP_orx128v64,		    
		    TOP_xorx128v8,
		    TOP_xorx128v16,
		    TOP_xorx128v32,
		    TOP_xorx128v64,		    
		    TOP_addxx128v8,
		    TOP_addxx128v16,
		    TOP_addxx128v32,
		    TOP_addxx128v64,
		    TOP_subxx128v8,
		    TOP_subxx128v16,
		    TOP_subxx128v32,
		    TOP_subxx128v64,		    
		    TOP_andxx128v8,
		    TOP_andxx128v16,
		    TOP_andxx128v32,
		    TOP_andxx128v64,		    
		    TOP_orxx128v8,
		    TOP_orxx128v16,
		    TOP_orxx128v32,
		    TOP_orxx128v64,		    
		    TOP_xorxx128v8,
		    TOP_xorxx128v16,
		    TOP_xorxx128v32,
		    TOP_xorxx128v64,		    
		    TOP_addxxx128v8,
		    TOP_addxxx128v16,
		    TOP_addxxx128v32,
		    TOP_addxxx128v64,
		    TOP_subxxx128v8,
		    TOP_subxxx128v16,
		    TOP_subxxx128v32,
		    TOP_subxxx128v64,		    
		    TOP_andxxx128v8,
		    TOP_andxxx128v16,
		    TOP_andxxx128v32,
		    TOP_andxxx128v64,		    
		    TOP_orxxx128v8,
		    TOP_orxxx128v16,
		    TOP_orxxx128v32,
		    TOP_orxxx128v64,		    
		    TOP_xorxxx128v8,
		    TOP_xorxxx128v16,
		    TOP_xorxxx128v32,
		    TOP_xorxxx128v64,		    
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-alu w/ memory operand",
		    TOP_addxss,
		    TOP_addxsd,
		    TOP_addxxss,
		    TOP_addxxsd,
		    TOP_subxsd,
		    TOP_subxss,
		    TOP_subxxsd,
		    TOP_subxxss,
		    TOP_comixsd,
		    TOP_comixxsd,
		    TOP_comixss,
		    TOP_comixxss,
		    TOP_comixxxsd,
		    TOP_comixxxss,
		    TOP_filds,
		    TOP_fildl,
		    TOP_fildll,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-max/min",
		    TOP_maxsd,
		    TOP_maxss,
		    TOP_minsd,
		    TOP_minss,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("float-xorp",
		    TOP_andnps,
		    TOP_andnpd,
		    TOP_rcpss,
		    TOP_rsqrtss,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-mul",
		    TOP_mulsd,
		    TOP_mulss,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-mul w/ mem operand",
		    TOP_mulxsd,
		    TOP_mulxxsd,
		    TOP_mulxxxsd,
		    TOP_mulxss,
		    TOP_mulxxss,
		    TOP_mulxxxss,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-divide",
		    TOP_divss,
		    TOP_divsd,
		    TOP_fdiv,
		    TOP_fdivp,
		    TOP_fdivr,
		    TOP_fdivrp,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(20);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("float-divide w/ mem operand",
		    TOP_divxsd,
		    TOP_divxxsd,
		    TOP_divxss,
		    TOP_divxxss,
		    TOP_divxxxss,
		    TOP_divxxxsd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(22);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_loadstore, 0);

  Instruction_Group("float-others",
		    TOP_frndint,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);

  Instruction_Group("sync",
		    TOP_mfence,
		    TOP_lfence,
		    TOP_sfence,
		    TOP_UNDEFINED);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);

  Instruction_Group("prefetch",
		    TOP_prefetch,
		    TOP_prefetchw,
		    TOP_prefetcht0,
		    TOP_prefetcht1,
		    TOP_prefetchnta,
		    TOP_prefetchx,
		    TOP_prefetchwx,
		    TOP_prefetcht0x,
		    TOP_prefetcht1x,
		    TOP_prefetchntax,
		    TOP_prefetchxx,
		    TOP_prefetchwxx,
		    TOP_prefetcht0xx,
		    TOP_prefetcht1xx,
		    TOP_prefetchntaxx,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);

  Instruction_Group("nop",
		    TOP_nop,
		    TOP_UNDEFINED);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_alu, 0);

  Instruction_Group("emms",
                    TOP_emms,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group("zeroupper",
                    TOP_vzeroupper,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group("mov-int-2-mmx",
                    TOP_movi32_2m,
                    TOP_movi64_2m,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("mov-mmx-2-int",
                    TOP_movm_2i32,
                    TOP_movm_2i64,
		    TOP_pmovmskb,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("mov-mmx-2-sse",
                    TOP_movq2dq,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("mov-sse_2_mmx",
                    TOP_movdq2q,
                    TOP_UNDEFINED);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "vector cvt sse <-> mmx",
		     TOP_cvtpi2ps,
		     TOP_cvtps2pi,
		     TOP_cvttps2pi,
		     TOP_cvtpi2pd,
		     TOP_cvtpd2pi,
		     TOP_cvttpd2pi,
		     TOP_UNDEFINED );
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(8);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("SSE movmsk",
		    TOP_movmskps,
		    TOP_movmskpd,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(3);
  Resource_Requirement(res_issue, 0);

  Instruction_Group("SSE4A extract",
                    TOP_extrq,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fmul, 0);

  Instruction_Group("SSE4A insert",
                    TOP_insertq,
                    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);

  /* SSE3 monitor/mwait */
  Instruction_Group("monitor mwait",
                    TOP_monitor,
                    TOP_mwait,
                    TOP_UNDEFINED);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_agu, 0);

  /* SSSE3 instructions */
  Instruction_Group( "ssse3 misc reg opnd",
                        TOP_psign128v8,
                        TOP_psign128v16,
                        TOP_psign128v32,
                        TOP_pabs128v8,
                        TOP_pabs128v16,
                        TOP_pabs128v32,
                        TOP_palignr128,
                        TOP_pshuf128v8,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "ssse3 misc mem opnd",
                        TOP_psignx128v8,
                        TOP_psignxx128v8,
                        TOP_psignxxx128v8,
                        TOP_psignx128v16,
                        TOP_psignxx128v16,
                        TOP_psignxxx128v16,
                        TOP_psignx128v32,
                        TOP_psignxx128v32,
                        TOP_psignxxx128v32,
                        TOP_pabsx128v8,
                        TOP_pabsxx128v8,
                        TOP_pabsxxx128v8,
                        TOP_pabsx128v16,
                        TOP_pabsxx128v16,
                        TOP_pabsxxx128v16,
                        TOP_pabsx128v32,
                        TOP_pabsxx128v32,
                        TOP_pabsxxx128v32,
                        TOP_palignrx128,
                        TOP_palignrxx128,
                        TOP_palignrxxx128,
                        TOP_pshufx128v8,
                        TOP_pshufxx128v8,
                        TOP_pshufxxx128v8,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "ssse3 hadd reg opnd",
                        TOP_phsub128v16,
                        TOP_phsub128v32,
                        TOP_phsubs128v16,
                        TOP_phadd128v16,
                        TOP_phadd128v32,
                        TOP_phadds128v16,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "ssse3 hadd mem opnd",
                        TOP_phsubx128v16,
                        TOP_phsubxx128v16,
                        TOP_phsubxxx128v16,
                        TOP_phsubx128v32,
                        TOP_phsubxx128v32,
                        TOP_phsubxxx128v32,
                        TOP_phsubsx128v16,
                        TOP_phsubsxx128v16,
                        TOP_phsubsxxx128v16,
                        TOP_phaddx128v16,
                        TOP_phaddxx128v16,
                        TOP_phaddxxx128v16,
                        TOP_phaddx128v32,
                        TOP_phaddxx128v32,
                        TOP_phaddxxx128v32,
                        TOP_phaddsx128v16,
                        TOP_phaddsxx128v16,
                        TOP_phaddsxxx128v16,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "ssse3 mul reg opnd",
                        TOP_pmulhrs128,
                        TOP_pmaddubs128,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "ssse3 mul mem opnd",
                        TOP_pmulhrsx128,
                        TOP_pmulhrsxx128,
                        TOP_pmulhrsxxx128,
                        TOP_pmaddubsx128,
                        TOP_pmaddubsxx128,
                        TOP_pmaddubsxxx128,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  /* SSE4.1 instructions */
  Instruction_Group( "sse4.1 pmov reg opnd",
                        TOP_mins128v8,
                        TOP_maxs128v8,
                        TOP_minu128v16,
                        TOP_maxu128v16,
                        TOP_minu128v32,
                        TOP_maxu128v32,
                        TOP_mins128v32,
                        TOP_maxs128v32,
                        TOP_pmovsxbw,
                        TOP_pmovzxbw,
                        TOP_pmovsxbd,
                        TOP_pmovzxbd,
                        TOP_pmovsxbq,
                        TOP_pmovzxbq,
                        TOP_pmovsxwd,
                        TOP_pmovzxwd,
                        TOP_pmovsxwq,
                        TOP_pmovzxwq,
                        TOP_pmovsxdq,
                        TOP_pmovzxdq,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 pmov mem opnd",
                        TOP_minsx128v8,
                        TOP_minsxx128v8,
                        TOP_minsxxx128v8,
                        TOP_maxsx128v8,
                        TOP_maxsxx128v8,
                        TOP_maxsxxx128v8,
                        TOP_minux128v16,
                        TOP_minuxx128v16,
                        TOP_minuxxx128v16,
                        TOP_maxux128v16,
                        TOP_maxuxx128v16,
                        TOP_maxuxxx128v16,
                        TOP_minux128v32,
                        TOP_minuxx128v32,
                        TOP_minuxxx128v32,
                        TOP_maxux128v32,
                        TOP_maxuxx128v32,
                        TOP_maxuxxx128v32,
                        TOP_minsx128v32,
                        TOP_minsxx128v32,
                        TOP_minsxxx128v32,
                        TOP_maxsx128v32,
                        TOP_maxsxx128v32,
                        TOP_maxsxxx128v32,
                        TOP_pmovsxbwx,
                        TOP_pmovsxbwxx,
                        TOP_pmovsxbwxxx,
                        TOP_pmovzxbwx,
                        TOP_pmovzxbwxx,
                        TOP_pmovzxbwxxx,
                        TOP_pmovsxbdx,
                        TOP_pmovsxbdxx,
                        TOP_pmovsxbdxxx,
                        TOP_pmovzxbdx,
                        TOP_pmovzxbdxx,
                        TOP_pmovzxbdxxx,
                        TOP_pmovsxbqx,
                        TOP_pmovsxbqxx,
                        TOP_pmovsxbqxxx,
                        TOP_pmovzxbqx,
                        TOP_pmovzxbqxx,
                        TOP_pmovzxbqxxx,
                        TOP_pmovsxwdx,
                        TOP_pmovsxwdxx,
                        TOP_pmovsxwdxxx,
                        TOP_pmovzxwdx,
                        TOP_pmovzxwdxx,
                        TOP_pmovzxwdxxx,
                        TOP_pmovsxwqx,
                        TOP_pmovsxwqxx,
                        TOP_pmovsxwqxxx,
                        TOP_pmovzxwqx,
                        TOP_pmovzxwqxx,
                        TOP_pmovzxwqxxx,
                        TOP_pmovsxdqx,
                        TOP_pmovsxdqxx,
                        TOP_pmovsxdqxxx,
                        TOP_pmovzxdqx,
                        TOP_pmovzxdqxx,
                        TOP_pmovzxdqxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 misc reg opnd",
                        TOP_round128v32,
                        TOP_roundss,
                        TOP_round128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 misc mem opnd",
                        TOP_roundx128v32,
                        TOP_roundxx128v32,
                        TOP_roundxxx128v32,
                        TOP_roundssx,
                        TOP_roundssxx,
                        TOP_roundssxxx,
                        TOP_roundx128v64,
                        TOP_roundxx128v64,
                        TOP_roundxxx128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 blend reg opnd",
                        TOP_fblend128v32,
                        TOP_fblend128v64,
                        TOP_fblendv128v32,
                        TOP_fblendv128v64,
                        TOP_blendv128v8,
                        TOP_blend128v16,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 blend mem opnd",
                        TOP_fblendx128v32,
                        TOP_fblendxx128v32,
                        TOP_fblendxxx128v32,
                        TOP_fblendx128v64,
                        TOP_fblendxx128v64,
                        TOP_fblendxxx128v64,
                        TOP_fblendvx128v32,
                        TOP_fblendvxx128v32,
                        TOP_fblendvxxx128v32,
                        TOP_fblendvx128v64,
                        TOP_fblendvxx128v64,
                        TOP_fblendvxxx128v64,
                        TOP_blendvx128v8,
                        TOP_blendvxx128v8,
                        TOP_blendvxxx128v8,
                        TOP_blendx128v16,
                        TOP_blendxx128v16,
                        TOP_blendxxx128v16,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 insr extr reg opnd",
                        TOP_insr128v8,
                        TOP_insr128v16,
                        TOP_insr128v32,
                        TOP_insr128v64,
                        TOP_extr128v8,
                        TOP_extr128v16,
                        TOP_extr128v32,
                        TOP_extr128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 insr extr mem opnd",
                        TOP_insrx128v8,
                        TOP_insrxx128v8,
                        TOP_insrxxx128v8,
                        TOP_insrx128v16,
                        TOP_insrxx128v16,
                        TOP_insrxxx128v16,
                        TOP_insrx128v32,
                        TOP_insrxx128v32,
                        TOP_insrxxx128v32,
                        TOP_insrx128v64,
                        TOP_insrxx128v64,
                        TOP_insrxxx128v64,
                        TOP_extrx128v8,
                        TOP_extrxx128v8,
                        TOP_extrxxx128v8,
                        TOP_extrx128v16,
                        TOP_extrxx128v16,
                        TOP_extrxxx128v16,
                        TOP_extrx128v32,
                        TOP_extrxx128v32,
                        TOP_extrxxx128v32,
                        TOP_extrx128v64,
                        TOP_extrxx128v64,
                        TOP_extrxxx128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 misc reg opnd",
                        TOP_roundsd,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 misc mem opnd",
                        TOP_roundsdx,
                        TOP_roundsdxx,
                        TOP_roundsdxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 finsr fextr reg opnd",
                        TOP_finsr128v32,
                        TOP_fextr128v32,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 finsr fextr mem opnd",
                        TOP_finsrx128v32,
                        TOP_finsrxx128v32,
                        TOP_finsrxxx128v32,
                        TOP_fextrx128v32,
                        TOP_fextrxx128v32,
                        TOP_fextrxxx128v32,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_fadd, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 misc reg opnd",
                        TOP_mpsadbw,
                        TOP_muldq,
                        TOP_mul128v32,
                        TOP_fdp128v32,
                        TOP_fdp128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(4);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 misc mem opnd",
                        TOP_mpsadbwx,
                        TOP_mpsadbwxx,
                        TOP_mpsadbwxxx,
                        TOP_muldqx,
                        TOP_muldqxx,
                        TOP_muldqxxx,
                        TOP_mulx128v32,
                        TOP_mulxx128v32,
                        TOP_mulxxx128v32,
                        TOP_fdpx128v32,
                        TOP_fdpxx128v32,
                        TOP_fdpxxx128v32,
                        TOP_fdpx128v64,
                        TOP_fdpxx128v64,
                        TOP_fdpxxx128v64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(9);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 load ntdqa",
                        TOP_ldntdqa,
                        TOP_ldntdqax,
                        TOP_ldntdqaxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  
  Instruction_Group( "sse4.1 store ntdqa",
                        TOP_stntdqa,
                        TOP_stntdqax,
                        TOP_stntdqaxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 pmov reg opnd",
                        TOP_cmpeq128v64,
                        TOP_packusdw,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(2);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 pmov mem opnd",
                        TOP_cmpeqx128v64,
                        TOP_cmpeqxx128v64,
                        TOP_cmpeqxxx128v64,
                        TOP_packusdwx,
                        TOP_packusdwxx,
                        TOP_packusdwxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(7);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.1 ptest reg opnd",
                        TOP_ptest128,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.1 ptest mem opnd",
                        TOP_ptestx128,
                        TOP_ptestxx128,
                        TOP_ptestxxx128,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  /* SSE4.2 instructions */
  Instruction_Group( "sse4.2 crc reg opnd",
                        TOP_crc32b,
                        TOP_crc32w,
                        TOP_crc32d,
                        TOP_crc32q,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.2 crc mem opnd",
                        TOP_crcx32b,
                        TOP_crcxx32b,
                        TOP_crcxxx32b,
                        TOP_crcx32w,
                        TOP_crcxx32w,
                        TOP_crcxxx32w,
                        TOP_crcx32d,
                        TOP_crcxx32d,
                        TOP_crcxxx32d,
                        TOP_crcx32q,
                        TOP_crcxx32q,
                        TOP_crcxxx32q,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.2 pcmp reg opnd",
                        TOP_cmpestri,
                        TOP_cmpestrm,
                        TOP_cmpistri,
                        TOP_cmpistrm,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.2 pcmp mem opnd",
                        TOP_cmpestrix,
                        TOP_cmpestrixx,
                        TOP_cmpestrixxx,
                        TOP_cmpestrmx,
                        TOP_cmpestrmxx,
                        TOP_cmpestrmxxx,
                        TOP_cmpistrix,
                        TOP_cmpistrixx,
                        TOP_cmpistrixxx,
                        TOP_cmpistrmx,
                        TOP_cmpistrmxx,
                        TOP_cmpistrmxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(20);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group( "sse4.2 pcmp reg opnd",
                        TOP_cmpgt128v64,
                        TOP_popcnt16,
                        TOP_popcnt32,
                        TOP_popcnt64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(5);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "sse4.2 pcmp mem opnd",
                        TOP_cmpgtx128v64,
                        TOP_cmpgtxx128v64,
                        TOP_cmpgtxxx128v64,
                        TOP_popcntx16,
                        TOP_popcntxx16,
                        TOP_popcntxxx16,
                        TOP_popcntx32,
                        TOP_popcntxx32,
                        TOP_popcntxxx32,
                        TOP_popcntx64,
                        TOP_popcntxx64,
                        TOP_popcntxxx64,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_alu, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  /* AES instructions */
  Instruction_Group( "aes reg opnd",
                        TOP_vaesenc,
                        TOP_vaesenclast,
                        TOP_vaesdec,
                        TOP_vaesdeclast,
                        TOP_vaeskeygenassist,
                        TOP_vaesimc,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(10);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "aes mem opnd",
                        TOP_vaesencx,
                        TOP_vaesencxx,
                        TOP_vaesencxxx,
                        TOP_vaesenclastx,
                        TOP_vaesenclastxx,
                        TOP_vaesenclastxxx,
                        TOP_vaesdecx,
                        TOP_vaesdecxx,
                        TOP_vaesdecxxx,
                        TOP_vaesdeclastx,
                        TOP_vaesdeclastxx,
                        TOP_vaesdeclastxxx,
                        TOP_vaeskeygenassistx,
                        TOP_vaeskeygenassistxx,
                        TOP_vaeskeygenassistxxx,
                        TOP_vaesimcx,
                        TOP_vaesimcxx,
                        TOP_vaesimcxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(20);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  /* PCLMUL instructions */
  Instruction_Group( "pclmul reg opnd",
                        TOP_vpclmulqdq,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(6);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);

  Instruction_Group( "pclmul mem opnd",
                        TOP_vpclmulqdqx,
                        TOP_vpclmulqdqxx,
                        TOP_vpclmulqdqxxx,
                        TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(11);
  Resource_Requirement(res_fmul, 0);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_fstore, 0);

  Instruction_Group("dummy",
		    TOP_asm,
		    TOP_intrncall,
		    TOP_spadjust,
		    TOP_savexmms,
		    TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(1);
  Resource_Requirement(res_issue, 0);
  Resource_Requirement(res_alu, 0);

  Machine_Done("opteron.c");
}
