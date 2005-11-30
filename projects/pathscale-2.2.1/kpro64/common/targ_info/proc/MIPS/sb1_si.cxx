/*
 *
 * Sibyte SB1 scheduling information
 *
 * For documentation on the opcodes and pipelines, see
 * Section 3 of the SB-1 User Manual.
 *
 * Greg Lindahl, 27Nov2002
 *
 */

#include "si_gen.h"
#include "targ_isa_subset.h"
#include "topcode.h"

static RESOURCE res_IBox, res_EX, res_LS, res_FP; /* MDMX units */
static RESOURCE res_EX0, res_EX1, res_LS0, res_LS1, res_FP0, res_FP1;

int
main (int argc, char *argv[])
{
  Machine("sb1", ISA_SUBSET_MIPS4, argc, argv);

  res_IBox = RESOURCE_Create ("IBox", 4);
  res_EX = RESOURCE_Create ("Execution", 2);
  res_LS = RESOURCE_Create ("LoadStore", 2);
  res_FP = RESOURCE_Create ("Float", 2);
  res_EX0 = RESOURCE_Create ("Execution", 1);
  res_LS0 = RESOURCE_Create ("LoadStore", 1);
  res_FP0 = RESOURCE_Create ("Float", 1);
  res_EX1 = RESOURCE_Create ("Execution", 1);
  res_LS1 = RESOURCE_Create ("LoadStore", 1);
  res_FP1 = RESOURCE_Create ("Float", 1);

  /* instruction categories and units: Table 19 summarizes
   *
   * However, our model only allows an instruction to be in one
   * instruction group.
   *
   * (X) marks places where we leave off a unit because there
   * are multiple types of units involved (e.g. E0,E1 and LS1)
   *
   * (Y) marks places where we give too broad of a restriction
   * because only one of the pair can execute an instruction
   *
   * 1) Integer ADDs, SUBs, Logical Ops E0, E1, LS1(X) (different pipe)
   * 2) Shifts E0, E1
   * 3) LUI E0, E1, LS1(X)
   * 4) Branches/Jumps E0 (Y)
   * 5) CP1 Branches E0 (Y)
   * 6) Sets E0 (Y)
   * 7) Traps E0 (Y)
   * 8) CLZ/CLO E0 (Y)
   * 9) Conditional Moves E0, E1
   * 10) Integer Multiply/Divide E1 (note unusual latency) (Y)
   * 11) MT/MF HI/LO E1 (Y)
   * 12) MOVT, MOVF E0, E1
   * 13) MOVZ, MOVN E0, E1
   *
   * 14) Integer Loads, Stores, FP Loads, Stores LS0 LS1 (same pipeline)
   * 15) Indexed Loads, Stores LS1 (Y)
   * 16) TLB OPs LS1 (Y)
   * 17) MT/MF CP0 LS1 (Y)
   * 18) Cache Ops LS1 (Y)
   *
   * 19) Normal FP ops FP0, FP1
   * 20) C.cond FP0 (Y)
   * 21) CABS FP0 (this is a MIPS-3D instruction) (Y)
   * "The majority of MIPS-3D instructions can be issued to FP1 pipe only" (Y)
   */

  /* For this instruction group, ALU ops can co-issue, so let's pretend
     that the latency is zero. */

  Instruction_Group ("Load/Store", 
			  TOP_lb, /* type 14, lat 0 */
			  TOP_lbu, /* type 14, lat 0 */
			  TOP_lh, /* type 14, lat 0 */
			  TOP_lhu, /* type 14, lat 0 */
			  TOP_lw, /* type 14, lat 0 */
			  TOP_lwl, /* type 14, lat 0 */
			  TOP_lwr, /* type 14, lat 0 */
			  TOP_sb, /* type 14, lat 0 */
			  TOP_sh, /* type 14, lat 0 */
			  TOP_sw, /* type 14, lat 0 */
			  TOP_swl, /* type 14, lat 0 */
			  TOP_swr, /* type 14, lat 0 */
			  TOP_ll, /* type 14, lat ? */
			  TOP_sc, /* type 14, lat ? */
			  TOP_sync, /* type 14, lat ? */
			  TOP_lwu, /* type 14, lat 0 */
			  TOP_ld, /* type 14, lat 0 */
			  TOP_ldl, /* type 14, lat 0 */
			  TOP_ldr, /* type 14, lat 0 */
			  TOP_lld, /* type 14, lat 0 */
			  TOP_sd, /* type 14, lat 0 */
			  TOP_sdl, /* type 14, lat 0 */
			  TOP_sdr, /* type 14, lat 0 */
			  TOP_scd, /* type 14, lat 0 */
			  TOP_pref, /* type 14, lat ? */
			  TOP_prefx, /* type 14, lat ? */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_LS, 0);

		    /* Table 4: CPU (integer) Arithmetic Instructions */

  Instruction_Group ("Integer ALU group 1",
			  TOP_add, /* type 1, lat 1 */
			  TOP_addi, /* type 1, lat 1 */
			  TOP_addiu, /* type 1, lat 1 */
			  TOP_addu, /* type 1, lat 1 */
			  TOP_sub, /* type 1, lat 1 */
			  TOP_subu, /* type 1, lat 1 */
			  TOP_dadd, /* type 1, lat 1 */
			  TOP_daddi, /* type 1, lat 1 */
			  TOP_daddiu, /* type 1, lat 1 */
			  TOP_daddu, /* type 1, lat 1 */
			  TOP_dsub, /* type 1, lat 1 */
			  TOP_dsubu, /* type 1, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);

  Instruction_Group ("Integer ALU group 1a",
			  TOP_slt, /* type 6, lat 1 */
			  TOP_slti, /* type 6, lat 1 */
			  TOP_sltiu, /* type 6, lat 1 */
			  TOP_sltu, /* type 6, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX0, 0);

  Instruction_Group ("Integer ALU group 2",
			  TOP_div, /* type 10, lat 36 */ /* not pipelined */
			  TOP_divu, /* type 10, lat 36 */ /* not pipelined */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (36);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX1, 0);

  Instruction_Group ("Integer ALU group 3",
			  TOP_mult, /* type 10, lat 3 */
			  TOP_multu, /* type 10, lat 3 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (3);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX1, 0);

  Instruction_Group ("Integer ALU group 4",
			  TOP_ddiv, /* type 10, lat 68 */ /* not pipelined */
			  TOP_ddivu, /* type 10, lat 68 */ /* not pipelined */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (68);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX1, 0);

  Instruction_Group ("Integer ALU group 4",
			  TOP_dmult, /* type 10, lat 4 */ /* half pipelined */
			  TOP_dmultu, /* type 10, lat 4 */ /* half pipelined */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (4);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX1, 0);

		    /* Table 5: CPU Logical Instructions */

  Instruction_Group ("CPU Logical",
			  TOP_and, /* type 1, lat 1 */
			  TOP_andi, /* type 1, lat 1 */
			  TOP_lui, /* type 3, lat 1 */
			  TOP_nor, /* type 1, lat 1 */
			  TOP_or, /* type 1, lat 1 */
			  TOP_ori, /* type 1, lat 1 */
			  TOP_xor, /* type 1, lat 1 */
			  TOP_xori, /* type 1, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);

		    /* Table 6: CPU Move Instructions */

  Instruction_Group ("CPU move 1",
			  TOP_mfhi, /* type 11, lat 1 */ /* can not co-issue, so it's essentally lat 1 */
			  TOP_mflo, /* type 11, lat 1 */ /* can not co-issue, so it's essentally lat 1 */
			  TOP_mthi, /* type 11, lat 1 */ /* can not co-issue, so it's essentally lat 1 */
			  TOP_mtlo, /* type 11, lat 1 */ /* can not co-issue, so it's essentally lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX1, 0);

  Instruction_Group ("CPU move 2",
			  TOP_movf, /* type 12, lat 1 */
			  TOP_movn, /* type 13, lat 1 */
			  TOP_movt, /* type 12, lat 1 */
			  TOP_movz, /* type 13, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);

		    /* Table 7: CPU Shift Instructions */

  Instruction_Group ("CPU Shift",
			  TOP_sll, /* type 2, lat 1 */
			  TOP_sllv, /* type 2, lat 1 */
			  TOP_sra, /* type 2, lat 1 */
			  TOP_srav, /* type 2, lat 1 */
			  TOP_srl, /* type 2, lat 1 */
			  TOP_srlv, /* type 2, lat 1 */
			  TOP_dsll, /* type 2, lat 1 */
			  TOP_dsll32, /* type 2, lat 1 */
			  TOP_dsllv, /* type 2, lat 1 */
			  TOP_dsra, /* type 2, lat 1 */
			  TOP_dsra32, /* type 2, lat 1 */
			  TOP_dsrav, /* type 2, lat 1 */
			  TOP_dsrl, /* type 2, lat 1 */
			  TOP_dsrl32, /* type 2, lat 1 */
			  TOP_dsrlv, /* type 2, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);

		    /* Table 8: CPU Branch and Jump Instructions */

  Instruction_Group ("CPU Branch/Jump",
			  TOP_beq, /* type 4, lat 1 */
			  TOP_bgez, /* type 4, lat 1 */
			  TOP_bgezal, /* type 4, lat 1 */
			  TOP_bgtz, /* type 4, lat 1 */
			  TOP_blez, /* type 4, lat 1 */
			  TOP_bltz, /* type 4, lat 1 */
			  TOP_bltzal, /* type 4, lat 1 */
			  TOP_bne, /* type 4, lat 1 */
			  TOP_j, /* type 4, lat 1 */
			  TOP_jal, /* type 4, lat 1 */
			  TOP_jalr, /* type 4, lat 1 */
			  TOP_jr, /* type 4, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX0, 0);

		    /* Table 9: CPU Trap Instructions */

  Instruction_Group ("CPU Trap",
			  TOP_break, /* type 7, lat 1 */
			  TOP_syscall, /* type 7, lat 1 */
			  TOP_teq, /* type 7, lat 1 */
			  TOP_teqi, /* type 7, lat 1 */
			  TOP_tge, /* type 7, lat 1 */
			  TOP_tgei, /* type 7, lat 1 */
			  TOP_tgeiu, /* type 7, lat 1 */
			  TOP_tgeu, /* type 7, lat 1 */
			  TOP_tlt, /* type 7, lat 1 */
			  TOP_tlti, /* type 7, lat 1 */
			  TOP_tltiu, /* type 7, lat 1 */
			  TOP_tltu, /* type 7, lat 1 */
			  TOP_tne, /* type 7, lat 1 */
			  TOP_tnei, /* type 7, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX0, 0);

    /* FPU loads/stores, not listed in SB-1 manual, 6-9 MIPS R4000
     and table 3-14 MIPS64 Architecture Manual */

  Instruction_Group ("FPU Load/Store 1",
			  TOP_lwc1, /* type 14, lat 0 */
			  TOP_swc1, /* type 14, lat 0 */
			  TOP_ldc1, /* type 14, lat 0 */
			  TOP_sdc1, /* type 14, lat 0 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (0);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_LS, 0);

  Instruction_Group ("FPU Load/Store 2",
			  TOP_lwxc1, /* type 15, lat 0 */
			  TOP_ldxc1, /* type 15, lat 0 */
			  TOP_swxc1, /* type 15, lat 0 */
			  TOP_sdxc1, /* type 15, lat 0 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (0);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_LS, 0);
  Resource_Requirement (res_LS1, 0);

    /* Table 23: FPU Arithmetic Instructions (missing paired single) */

  Instruction_Group ("FPU Arithmatic group 0",
			  TOP_abs_s, /* type 19, lat 4 */
			  TOP_abs_d, /* type 19, lat 4 */
			  TOP_add_s, /* type 19, lat 4 */
			  TOP_add_d, /* type 19, lat 4 */

			  TOP_mul_s, /* type 19, lat 4 */
			  TOP_mul_d, /* type 19, lat 4 */
			  TOP_neg_s, /* type 19, lat 4 */
			  TOP_neg_d, /* type 19, lat 4 */
			  TOP_sub_s, /* type 19, lat 4 */
			  TOP_sub_d, /* type 19, lat 4 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (4);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

			  /* List of conditions table 6-13 MIPS R4000 User Manual */

  Instruction_Group ("FPU Arithmatic group 0a",
			  TOP_c_f_s, /* type 20, lat 4 */
			  TOP_c_f_d, /* type 20, lat 4 */
			  TOP_c_t_s, /* type 20, lat 4 */
			  TOP_c_t_d, /* type 20, lat 4 */
			  TOP_c_un_s, /* type 20, lat 4 */
			  TOP_c_un_d, /* type 20, lat 4 */
			  TOP_c_or_s, /* type 20, lat 4 */
			  TOP_c_or_d, /* type 20, lat 4 */
			  TOP_c_eq_s, /* type 20, lat 4 */
			  TOP_c_eq_d, /* type 20, lat 4 */
			  TOP_c_neq_s, /* type 20, lat 4 */
			  TOP_c_neq_d, /* type 20, lat 4 */
			  TOP_c_ueq_s, /* type 20, lat 4 */
			  TOP_c_ueq_d, /* type 20, lat 4 */
			  TOP_c_olg_s, /* type 20, lat 4 */
			  TOP_c_olg_d, /* type 20, lat 4 */
			  TOP_c_olt_s, /* type 20, lat 4 */
			  TOP_c_olt_d, /* type 20, lat 4 */
			  TOP_c_uge_s, /* type 20, lat 4 */
			  TOP_c_uge_d, /* type 20, lat 4 */
			  TOP_c_ult_s, /* type 20, lat 4 */
			  TOP_c_ult_d, /* type 20, lat 4 */
			  TOP_c_oge_s, /* type 20, lat 4 */
			  TOP_c_oge_d, /* type 20, lat 4 */
			  TOP_c_ole_s, /* type 20, lat 4 */
			  TOP_c_ole_d, /* type 20, lat 4 */
			  TOP_c_ugt_s, /* type 20, lat 4 */
			  TOP_c_ugt_d, /* type 20, lat 4 */
			  TOP_c_ule_s, /* type 20, lat 4 */
			  TOP_c_ule_d, /* type 20, lat 4 */
			  TOP_c_ogt_s, /* type 20, lat 4 */
			  TOP_c_ogt_d, /* type 20, lat 4 */
			  TOP_c_sf_s, /* type 20, lat 4 */
			  TOP_c_sf_d, /* type 20, lat 4 */
			  TOP_c_st_s, /* type 20, lat 4 */
			  TOP_c_st_d, /* type 20, lat 4 */
			  TOP_c_ngle_s, /* type 20, lat 4 */
			  TOP_c_ngle_d, /* type 20, lat 4 */
			  TOP_c_gle_s, /* type 20, lat 4 */
			  TOP_c_gle_d, /* type 20, lat 4 */
			  TOP_c_seq_s, /* type 20, lat 4 */
			  TOP_c_seq_d, /* type 20, lat 4 */
			  TOP_c_sne_s, /* type 20, lat 4 */
			  TOP_c_sne_d, /* type 20, lat 4 */
			  TOP_c_ngl_s, /* type 20, lat 4 */
			  TOP_c_ngl_d, /* type 20, lat 4 */
			  TOP_c_gl_s, /* type 20, lat 4 */
			  TOP_c_gl_d, /* type 20, lat 4 */
			  TOP_c_lt_s, /* type 20, lat 4 */
			  TOP_c_lt_d, /* type 20, lat 4 */
			  TOP_c_nlt_s, /* type 20, lat 4 */
			  TOP_c_nlt_d, /* type 20, lat 4 */
			  TOP_c_nge_s, /* type 20, lat 4 */
			  TOP_c_nge_d, /* type 20, lat 4 */
			  TOP_c_ge_s, /* type 20, lat 4 */
			  TOP_c_ge_d, /* type 20, lat 4 */
			  TOP_c_le_s, /* type 20, lat 4 */
			  TOP_c_le_d, /* type 20, lat 4 */
			  TOP_c_nle_s, /* type 20, lat 4 */
			  TOP_c_nle_d, /* type 20, lat 4 */
			  TOP_c_ngt_s, /* type 20, lat 4 */
			  TOP_c_ngt_d, /* type 20, lat 4 */
			  TOP_c_gt_s, /* type 20, lat 4 */
			  TOP_c_gt_d, /* type 20, lat 4 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (4);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);
  Resource_Requirement (res_FP0, 0);

  Instruction_Group ("FPU Arithmatic group 1",
			  TOP_madd_s, /* type 19, lat 8 */
			  TOP_madd_d, /* type 19, lat 8 */
			  TOP_msub_s, /* type 19, lat 8 */
			  TOP_msub_d, /* type 19, lat 8 */
			  TOP_nmadd_s, /* type 19, lat 8 */
			  TOP_nmadd_d, /* type 19, lat 8 */
			  TOP_nmsub_s, /* type 19, lat 8 */
			  TOP_nmsub_d, /* type 19, lat 8 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (8);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 2",
			  TOP_div_s, /* type 19, lat 24 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (24);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 3",
			  TOP_div_d, /* type 19, lat 32 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (32);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 4",
			  TOP_sqrt_s, /* type 19, lat 28 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (28);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 5",
			  TOP_sqrt_d, /* type 19, lat 40 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (40);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 6",
			  TOP_recip_s, /* type 19, lat 12 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (12);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 7",
			  TOP_recip_d, /* type 19, lat 20 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (20);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 8",
			  TOP_rsqrt_s, /* type 19, lat 16 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (16);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

  Instruction_Group ("FPU Arithmatic group 9",
			  TOP_rsqrt_d, /* type 19, lat 28 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (28);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

		    /* Table 24: FPU Move Instructions */

  Instruction_Group ("FPU Move From",
			  TOP_cfc1, /* type 19, lat 1 */
			  TOP_mfc1, /* type 19, lat 1 */
			  TOP_dmfc1, /* type 19, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0); /* ??? */

  Instruction_Group ("FPU Move To",
			  TOP_ctc1, /* type 19, lat 4 */
			  TOP_mtc1, /* type 19, lat 4 */
			  TOP_dmtc1, /* type 19, lat 4 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (4);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0); /* ??? */

  Instruction_Group ("FPU Move/Convert",
			  TOP_mov_s, /* type 19, lat 4 */ /* missing paired single */
			  TOP_mov_d, /* type 19, lat 4 */
			  TOP_movf_s, /* type 19, lat 4 */ /* missing paired single */
			  TOP_movf_d, /* type 19, lat 4 */
			  TOP_movn_s, /* type 19, lat 4 */
			  TOP_movn_d, /* type 19, lat 4 */
			  TOP_movt_s, /* type 19, lat 4 */ /* missing paired single */
			  TOP_movt_d, /* type 19, lat 4 */
			  TOP_movz_s, /* type 19, lat 4 */
			  TOP_movz_d, /* type 19, lat 4 */

			  /* Table 25: FPU Convert Instructions */

			  TOP_cvt_d_s, /* type 19, lat 4 */
			  TOP_cvt_d_w, /* type 19, lat 4 */
			  TOP_cvt_d_l, /* type 19, lat 4 */
			  TOP_cvt_l_s, /* type 19, lat 4 */
			  TOP_cvt_l_d, /* type 19, lat 4 */
			  TOP_cvt_s_d, /* type 19, lat 4 */
			  TOP_cvt_s_w, /* type 19, lat 4 */
			  TOP_cvt_s_l, /* type 19, lat 4 */
			  TOP_cvt_w_s, /* type 19, lat 4 */
			  TOP_cvt_w_d, /* type 19, lat 4 */
			  TOP_ceil_w_s, /* type 19, lat 4 */
			  TOP_ceil_w_d, /* type 19, lat 4 */
			  TOP_ceil_l_s, /* type 19, lat 4 */
			  TOP_ceil_l_d, /* type 19, lat 4 */
			  TOP_floor_w_s, /* type 19, lat 4 */
			  TOP_floor_w_d, /* type 19, lat 4 */
			  TOP_floor_l_s, /* type 19, lat 4 */
			  TOP_floor_l_d, /* type 19, lat 4 */
			  TOP_round_w_s, /* type 19, lat 4 */
			  TOP_round_w_d, /* type 19, lat 4 */
			  TOP_round_l_s, /* type 19, lat 4 */
			  TOP_round_l_d, /* type 19, lat 4 */
			  TOP_trunc_w_s, /* type 19, lat 4 */
			  TOP_trunc_w_d, /* type 19, lat 4 */
			  TOP_trunc_l_s, /* type 19, lat 4 */
			  TOP_trunc_l_d, /* type 19, lat 4 */
			  /* 6 paired single instructions skipped here */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (4);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_FP, 0);

    /* Table 26: FPU Branch Instructions */

  Instruction_Group ("FPU Branch",
			  TOP_bc1f, /* type 5, lat 1 */
			  TOP_bc1t, /* type 5, lat 1 */
			  TOP_UNDEFINED);
  Any_Operand_Access_Time (0);
  Any_Result_Available_Time (1);
  Resource_Requirement (res_IBox, 0);
  Resource_Requirement (res_EX, 0);
  Resource_Requirement (res_EX0, 0);

    /* Table 28: MIPS-3D instructions skipped */

    /* Dummy instructions */

  Instruction_Group ("Dummy",
			  TOP_asm,
			  TOP_intrncall,
			  TOP_spadjust,
			  TOP_begin_pregtn,
			  TOP_end_pregtn,
			  TOP_bwd_bar,
			  TOP_fwd_bar,
			  TOP_label,
			  TOP_nop,
			  TOP_noop,
			  TOP_UNDEFINED);
  Any_Operand_Access_Time(0);
  Any_Result_Available_Time(1);

  Machine_Done("sb1.c");
}
