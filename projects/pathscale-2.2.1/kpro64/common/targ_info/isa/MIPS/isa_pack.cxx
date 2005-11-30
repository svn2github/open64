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


//
// Group TOPS with similar packing format together. 
/////////////////////////////////////////////////////////
// The instructions are listed by category. The different categories of
// instructions are:
//
//   1. ALU
//   2. Integer
//   3. Memory
//   4. Branch
//   5. Float
//
// Within each Pack_Type instructions are listed in the order as shown
// in the IA-64 instructions formats manual
/////////////////////////////////////

#include <stddef.h>
#include "topcode.h"
#include "isa_pack_gen.h"
 
main()
{
  ISA_Pack_Begin("MIPS", 32);

  ISA_PACK_TYPE p1 = ISA_Pack_Type_Create("p1");
  Result(0, 12, 4);
  Operand(0, 0, 16, 4);
  Operand(1, 0, 20, 4);
  Instruction_Pack_Group(p1,
			 TOP_lb, 0x000000ff,
			 TOP_lbu, 0x000000ff,
			 TOP_lh, 0x000000ff,
			 TOP_lhu, 0x000000ff,
			 TOP_lw, 0x000000ff,
			 TOP_lwl, 0x000000ff,
			 TOP_lwr, 0x000000ff,
			 TOP_sb, 0x000000ff,
			 TOP_sh, 0x000000ff,
			 TOP_sw, 0x000000ff,
			 TOP_swl, 0x000000ff,
			 TOP_swr, 0x000000ff,
			 TOP_ll, 0x000000ff,
			 TOP_sc, 0x000000ff,
			 TOP_sync, 0x000000ff,
			 TOP_lwu, 0x000000ff,
			 TOP_ld, 0x000000ff,
			 TOP_ldl, 0x000000ff,
			 TOP_ldr, 0x000000ff,
			 TOP_lld, 0x000000ff,
			 TOP_sd, 0x000000ff,
			 TOP_sdl, 0x000000ff,
			 TOP_sdr, 0x000000ff,
			 TOP_scd, 0x000000ff,
			 TOP_pref, 0x000000ff,
			 TOP_prefx, 0x000000ff,
			 TOP_add, 0x000000ff,
			 TOP_addi, 0x000000ff,
			 TOP_addiu, 0x000000ff,
			 TOP_addu, 0x000000ff,
			 TOP_div, 0x000000ff,
			 TOP_divu, 0x000000ff,
			 TOP_mult, 0x000000ff,
			 TOP_multu, 0x000000ff,
			 TOP_slt, 0x000000ff,
			 TOP_slti, 0x000000ff,
			 TOP_sltiu, 0x000000ff,
			 TOP_sltu, 0x000000ff,
			 TOP_sub, 0x000000ff,
			 TOP_subu, 0x000000ff,
			 TOP_dadd, 0x000000ff,
			 TOP_daddi, 0x000000ff,
			 TOP_daddiu, 0x000000ff,
			 TOP_daddu, 0x000000ff,
			 TOP_ddiv, 0x000000ff,
			 TOP_ddivu, 0x000000ff,
			 TOP_dmult, 0x000000ff,
			 TOP_dmultu, 0x000000ff,
			 TOP_dsub, 0x000000ff,
			 TOP_dsubu, 0x000000ff,
			 TOP_and, 0x000000ff,
			 TOP_andi, 0x000000ff,
			 TOP_lui, 0x000000ff,
			 TOP_nor, 0x000000ff,
			 TOP_or, 0x000000ff,
			 TOP_ori, 0x000000ff,
			 TOP_xor, 0x000000ff,
			 TOP_xori, 0x000000ff,
			 TOP_mfhi, 0x000000ff,
			 TOP_mflo, 0x000000ff,
			 TOP_mthi, 0x000000ff,
			 TOP_mtlo, 0x000000ff,
			 TOP_movf, 0x000000ff,
			 TOP_movn, 0x000000ff,
			 TOP_movt, 0x000000ff,
			 TOP_movz, 0x000000ff,
			 TOP_sll, 0x000000ff,
			 TOP_sllv, 0x000000ff,
			 TOP_sra, 0x000000ff,
			 TOP_srav, 0x000000ff,
			 TOP_srl, 0x000000ff,
			 TOP_srlv, 0x000000ff,
			 TOP_dsll, 0x000000ff,
			 TOP_dsll32, 0x000000ff,
			 TOP_dsllv, 0x000000ff,
			 TOP_dsra, 0x000000ff,
			 TOP_dsra32, 0x000000ff,
			 TOP_dsrav, 0x000000ff,
			 TOP_dsrl, 0x000000ff,
			 TOP_dsrl32, 0x000000ff,
			 TOP_dsrlv, 0x000000ff,
			 TOP_beq, 0x000000ff,
			 TOP_bgez, 0x000000ff,
			 TOP_bgezal, 0x000000ff,
			 TOP_bgtz, 0x000000ff,
			 TOP_blez, 0x000000ff,
			 TOP_bltz, 0x000000ff,
			 TOP_bltzal, 0x000000ff,
			 TOP_bne, 0x000000ff,
			 TOP_j, 0x000000ff,
			 TOP_jal, 0x000000ff,
			 TOP_jalr, 0x000000ff,
			 TOP_jr, 0x000000ff,
			 TOP_break, 0x000000ff,
			 TOP_syscall, 0x000000ff,
			 TOP_teq, 0x000000ff,
			 TOP_teqi, 0x000000ff,
			 TOP_tge, 0x000000ff,
			 TOP_tgei, 0x000000ff,
			 TOP_tgeiu, 0x000000ff,
			 TOP_tgeu, 0x000000ff,
			 TOP_tlt, 0x000000ff,
			 TOP_tlti, 0x000000ff,
			 TOP_tltiu, 0x000000ff,
			 TOP_tltu, 0x000000ff,
			 TOP_tne, 0x000000ff,
			 TOP_tnei, 0x000000ff,
			 TOP_lwc1, 0x000000ff,
			 TOP_ldc1, 0x000000ff,
			 TOP_lwxc1, 0x000000ff,
			 TOP_ldxc1, 0x000000ff,
			 TOP_swc1, 0x000000ff,
			 TOP_sdc1, 0x000000ff,
			 TOP_swxc1, 0x000000ff,
			 TOP_sdxc1, 0x000000ff,
			 TOP_abs_s, 0x000000ff,
			 TOP_abs_d, 0x000000ff,
			 TOP_add_s, 0x000000ff,
			 TOP_add_d, 0x000000ff,
			 TOP_c_f_s, 0x000000ff,
			 TOP_c_f_d, 0x000000ff,
			 TOP_c_t_s, 0x000000ff,
			 TOP_c_t_d, 0x000000ff,
			 TOP_c_un_s, 0x000000ff,
			 TOP_c_un_d, 0x000000ff,
			 TOP_c_or_s, 0x000000ff,
			 TOP_c_or_d, 0x000000ff,
			 TOP_c_eq_s, 0x000000ff,
			 TOP_c_eq_d, 0x000000ff,
			 TOP_c_neq_s, 0x000000ff,
			 TOP_c_neq_d, 0x000000ff,
			 TOP_c_ueq_s, 0x000000ff,
			 TOP_c_ueq_d, 0x000000ff,
			 TOP_c_olg_s, 0x000000ff,
			 TOP_c_olg_d, 0x000000ff,
			 TOP_c_olt_s, 0x000000ff,
			 TOP_c_olt_d, 0x000000ff,
			 TOP_c_uge_s, 0x000000ff,
			 TOP_c_uge_d, 0x000000ff,
			 TOP_c_ult_s, 0x000000ff,
			 TOP_c_ult_d, 0x000000ff,
			 TOP_c_oge_s, 0x000000ff,
			 TOP_c_oge_d, 0x000000ff,
			 TOP_c_ole_s, 0x000000ff,
			 TOP_c_ole_d, 0x000000ff,
			 TOP_c_ugt_s, 0x000000ff,
			 TOP_c_ugt_d, 0x000000ff,
			 TOP_c_ule_s, 0x000000ff,
			 TOP_c_ule_d, 0x000000ff,
			 TOP_c_ogt_s, 0x000000ff,
			 TOP_c_ogt_d, 0x000000ff,
			 TOP_c_sf_s, 0x000000ff,
			 TOP_c_sf_d, 0x000000ff,
			 TOP_c_st_s, 0x000000ff,
			 TOP_c_st_d, 0x000000ff,
			 TOP_c_ngle_s, 0x000000ff,
			 TOP_c_ngle_d, 0x000000ff,
			 TOP_c_gle_s, 0x000000ff,
			 TOP_c_gle_d, 0x000000ff,
			 TOP_c_seq_s, 0x000000ff,
			 TOP_c_seq_d, 0x000000ff,
			 TOP_c_sne_s, 0x000000ff,
			 TOP_c_sne_d, 0x000000ff,
			 TOP_c_ngl_s, 0x000000ff,
			 TOP_c_ngl_d, 0x000000ff,
			 TOP_c_gl_s, 0x000000ff,
			 TOP_c_gl_d, 0x000000ff,
			 TOP_c_lt_s, 0x000000ff,
			 TOP_c_lt_d, 0x000000ff,
			 TOP_c_nlt_s, 0x000000ff,
			 TOP_c_nlt_d, 0x000000ff,
			 TOP_c_nge_s, 0x000000ff,
			 TOP_c_nge_d, 0x000000ff,
			 TOP_c_ge_s, 0x000000ff,
			 TOP_c_ge_d, 0x000000ff,
			 TOP_c_le_s, 0x000000ff,
			 TOP_c_le_d, 0x000000ff,
			 TOP_c_nle_s, 0x000000ff,
			 TOP_c_nle_d, 0x000000ff,
			 TOP_c_ngt_s, 0x000000ff,
			 TOP_c_ngt_d, 0x000000ff,
			 TOP_c_gt_s, 0x000000ff,
			 TOP_c_gt_d, 0x000000ff,
			 TOP_div_s, 0x000000ff,
			 TOP_div_d, 0x000000ff,
			 TOP_mul_s, 0x000000ff,
			 TOP_mul_d, 0x000000ff,
			 TOP_neg_s, 0x000000ff,
			 TOP_neg_d, 0x000000ff,
			 TOP_sub_s, 0x000000ff,
			 TOP_sub_d, 0x000000ff,
			 TOP_sqrt_s, 0x000000ff,
			 TOP_sqrt_d, 0x000000ff,
			 TOP_madd_s, 0x000000ff,
			 TOP_madd_d, 0x000000ff,
			 TOP_msub_s, 0x000000ff,
			 TOP_msub_d, 0x000000ff,
			 TOP_nmadd_s, 0x000000ff,
			 TOP_nmadd_d, 0x000000ff,
			 TOP_nmsub_s, 0x000000ff,
			 TOP_nmsub_d, 0x000000ff,
			 TOP_recip_s, 0x000000ff,
			 TOP_recip_d, 0x000000ff,
			 TOP_rsqrt_s, 0x000000ff,
			 TOP_rsqrt_d, 0x000000ff,
			 TOP_cfc1, 0x000000ff,
			 TOP_ctc1, 0x000000ff,
			 TOP_mfc1, 0x000000ff,
			 TOP_mtc1, 0x000000ff,
			 TOP_dmfc1, 0x000000ff,
			 TOP_dmtc1, 0x000000ff,
			 TOP_mov_s, 0x000000ff,
			 TOP_mov_d, 0x000000ff,
			 TOP_movf_s, 0x000000ff,
			 TOP_movf_d, 0x000000ff,
			 TOP_movn_s, 0x000000ff,
			 TOP_movn_d, 0x000000ff,
			 TOP_movt_s, 0x000000ff,
			 TOP_movt_d, 0x000000ff,
			 TOP_movz_s, 0x000000ff,
			 TOP_movz_d, 0x000000ff,
			 TOP_cvt_d_s, 0x000000ff,
			 TOP_cvt_d_w, 0x000000ff,
			 TOP_cvt_d_l, 0x000000ff,
			 TOP_cvt_l_s, 0x000000ff,
			 TOP_cvt_l_d, 0x000000ff,
			 TOP_cvt_s_d, 0x000000ff,
			 TOP_cvt_s_w, 0x000000ff,
			 TOP_cvt_s_l, 0x000000ff,
			 TOP_cvt_w_s, 0x000000ff,
			 TOP_cvt_w_d, 0x000000ff,
			 TOP_ceil_w_s, 0x000000ff,
			 TOP_ceil_w_d, 0x000000ff,
			 TOP_ceil_l_s, 0x000000ff,
			 TOP_ceil_l_d, 0x000000ff,
			 TOP_floor_w_s, 0x000000ff,
			 TOP_floor_w_d, 0x000000ff,
			 TOP_floor_l_s, 0x000000ff,
			 TOP_floor_l_d, 0x000000ff,
			 TOP_round_w_s, 0x000000ff,
			 TOP_round_w_d, 0x000000ff,
			 TOP_round_l_s, 0x000000ff,
			 TOP_round_l_d, 0x000000ff,
			 TOP_trunc_w_s, 0x000000ff,
			 TOP_trunc_w_d, 0x000000ff,
			 TOP_trunc_l_s, 0x000000ff,
			 TOP_trunc_l_d, 0x000000ff,
			 TOP_bc1f, 0x000000ff,
			 TOP_bc1t, 0x000000ff,
			 TOP_nop, 0x000000ff,
			 TOP_UNDEFINED);

  ISA_Pack_End();
}
