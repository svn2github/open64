/* 
   Copyright 2003, 2004 PathScale, Inc.  All Rights Reserved.
   File modified June 20, 2003 by PathScale, Inc. to update Open64 C/C++ 
   front-ends to GNU 3.2.2 release.
 */

/* Generated automatically by the program `genflags'
   from the machine description file `md'.  */

#ifndef GCC_INSN_FLAGS_H
#define GCC_INSN_FLAGS_H

#define HAVE_trap 1
#define HAVE_adddf3 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_addsf3 (TARGET_HARD_FLOAT)
#define HAVE_addsi3_internal (! TARGET_MIPS16 \
   && (TARGET_GAS \
       || GET_CODE (operands[2]) != CONST_INT \
       || INTVAL (operands[2]) != -32768))
#define HAVE_adddi3_internal_1 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_adddi3_internal_2 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (TARGET_GAS \
       || GET_CODE (operands[2]) != CONST_INT \
       || INTVAL (operands[2]) != -32768))
#define HAVE_adddi3_internal_3 (TARGET_64BIT \
   && !TARGET_MIPS16 \
   && (TARGET_GAS \
       || GET_CODE (operands[2]) != CONST_INT \
       || INTVAL (operands[2]) != -32768))
#define HAVE_addsi3_internal_2 (TARGET_64BIT \
   && !TARGET_MIPS16 \
   && (TARGET_GAS \
       || GET_CODE (operands[2]) != CONST_INT \
       || INTVAL (operands[2]) != -32768))
#define HAVE_subdf3 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_subsf3 (TARGET_HARD_FLOAT)
#define HAVE_subsi3_internal (!TARGET_MIPS16 \
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768))
#define HAVE_subdi3_internal (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_subdi3_internal_2 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && INTVAL (operands[2]) != -32768)
#define HAVE_subdi3_internal_3 (TARGET_64BIT && !TARGET_MIPS16 \
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768))
#define HAVE_subsi3_internal_2 (TARGET_64BIT && !TARGET_MIPS16 \
   && (GET_CODE (operands[2]) != CONST_INT || INTVAL (operands[2]) != -32768))
#define HAVE_muldf3_internal (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && !TARGET_MIPS4300)
#define HAVE_muldf3_r4300 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT && TARGET_MIPS4300)
#define HAVE_mulsf3_internal (TARGET_HARD_FLOAT && !TARGET_MIPS4300)
#define HAVE_mulsf3_r4300 (TARGET_HARD_FLOAT && TARGET_MIPS4300)
#define HAVE_mulsi3_mult3 (GENERATE_MULT3_SI \
   || TARGET_MAD)
#define HAVE_mulsi3_internal (!TARGET_MIPS4000 || TARGET_MIPS16)
#define HAVE_mulsi3_r4000 (TARGET_MIPS4000 && !TARGET_MIPS16)
#define HAVE_muldi3_internal (TARGET_64BIT && !TARGET_MIPS4000 && !TARGET_MIPS16)
#define HAVE_muldi3_internal2 (TARGET_64BIT && (GENERATE_MULT3_DI || TARGET_MIPS4000 || TARGET_MIPS16))
#define HAVE_mulsidi3_internal (!TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4]))
#define HAVE_mulsidi3_64bit (TARGET_64BIT && GET_CODE (operands[3]) == GET_CODE (operands[4]))
#define HAVE_xmulsi3_highpart_internal (GET_CODE (operands[3]) == GET_CODE (operands[4]))
#define HAVE_smuldi3_highpart (TARGET_64BIT)
#define HAVE_umuldi3_highpart (TARGET_64BIT)
#define HAVE_madsi (TARGET_MAD)
#define HAVE_divdf3 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_divsf3 (TARGET_HARD_FLOAT)
#define HAVE_divmodsi4_internal (optimize)
#define HAVE_divmoddi4_internal (TARGET_64BIT && optimize)
#define HAVE_udivmodsi4_internal (optimize)
#define HAVE_udivmoddi4_internal (TARGET_64BIT && optimize)
#define HAVE_div_trap_normal (!TARGET_MIPS16)
#define HAVE_div_trap_mips16 (TARGET_MIPS16)
#define HAVE_divsi3_internal (!optimize)
#define HAVE_divdi3_internal (TARGET_64BIT && !optimize)
#define HAVE_modsi3_internal (!optimize)
#define HAVE_moddi3_internal (TARGET_64BIT && !optimize)
#define HAVE_udivsi3_internal (!optimize)
#define HAVE_udivdi3_internal (TARGET_64BIT && !optimize)
#define HAVE_umodsi3_internal (!optimize)
#define HAVE_umoddi3_internal (TARGET_64BIT && !optimize)
#define HAVE_sqrtdf2 (TARGET_HARD_FLOAT && HAVE_SQRT_P() && TARGET_DOUBLE_FLOAT)
#define HAVE_sqrtsf2 (TARGET_HARD_FLOAT && HAVE_SQRT_P())
#define HAVE_abssi2 (!TARGET_MIPS16)
#define HAVE_absdi2 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_absdf2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_abssf2 (TARGET_HARD_FLOAT)
#define HAVE_ffssi2 (!TARGET_MIPS16)
#define HAVE_ffsdi2 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_negsi2 1
#define HAVE_negdi2_internal (! TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_negdi2_internal_2 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_negdf2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_negsf2 (TARGET_HARD_FLOAT)
#define HAVE_one_cmplsi2 1
#define HAVE_one_cmpldi2 1
#define HAVE_anddi3_internal1 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_xordi3_immed (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_truncdfsf2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_truncdisi2 (TARGET_64BIT)
#define HAVE_truncdihi2 (TARGET_64BIT)
#define HAVE_truncdiqi2 (TARGET_64BIT)
#define HAVE_zero_extendsidi2_internal (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_extendsidi2 (TARGET_64BIT)
#define HAVE_extendhidi2_internal (TARGET_64BIT)
#define HAVE_extendhisi2_internal 1
#define HAVE_extendqihi2_internal 1
#define HAVE_extendqisi2_insn 1
#define HAVE_extendqidi2_insn (TARGET_64BIT)
#define HAVE_extendsfdf2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_fix_truncdfsi2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_fix_truncsfsi2 (TARGET_HARD_FLOAT)
#define HAVE_fix_truncdfdi2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_fix_truncsfdi2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_floatsidf2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_floatdidf2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_floatsisf2 (TARGET_HARD_FLOAT)
#define HAVE_floatdisf2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_movsi_ulw (!TARGET_MIPS16)
#define HAVE_movsi_usw (!TARGET_MIPS16)
#define HAVE_movdi_uld 1
#define HAVE_movdi_usd 1
#define HAVE_high (mips_split_addresses && !TARGET_MIPS16)
#define HAVE_low (mips_split_addresses && !TARGET_MIPS16)
#define HAVE_movdi_internal (!TARGET_64BIT && !TARGET_MIPS16 \
   && (register_operand (operands[0], DImode) \
       || register_operand (operands[1], DImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (DImode)))
#define HAVE_movdi_internal2 (TARGET_64BIT && !TARGET_MIPS16 \
   && (register_operand (operands[0], DImode) \
       || se_register_operand (operands[1], DImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (DImode)))
#define HAVE_movsi_internal1 (TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], SImode) \
       || register_operand (operands[1], SImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movsi_internal2 (!TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], SImode) \
       || register_operand (operands[1], SImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movcc (ISA_HAS_8CC && TARGET_HARD_FLOAT)
#define HAVE_movhi_internal1 (TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], HImode) \
       || register_operand (operands[1], HImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movhi_internal2 (!TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], HImode) \
       || register_operand (operands[1], HImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movqi_internal1 (TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], QImode) \
       || register_operand (operands[1], QImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movqi_internal2 (!TARGET_DEBUG_H_MODE && !TARGET_MIPS16 \
   && (register_operand (operands[0], QImode) \
       || register_operand (operands[1], QImode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0)))
#define HAVE_movsf_internal1 (TARGET_HARD_FLOAT \
   && (register_operand (operands[0], SFmode) \
       || register_operand (operands[1], SFmode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (SFmode)))
#define HAVE_movsf_internal2 (TARGET_SOFT_FLOAT && !TARGET_MIPS16 \
   && (register_operand (operands[0], SFmode) \
       || register_operand (operands[1], SFmode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (SFmode)))
#define HAVE_movdf_internal1 (TARGET_HARD_FLOAT && !(TARGET_FLOAT64 && !TARGET_64BIT) \
   && TARGET_DOUBLE_FLOAT \
   && (register_operand (operands[0], DFmode) \
       || register_operand (operands[1], DFmode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (DFmode)))
#define HAVE_movdf_internal1a (TARGET_HARD_FLOAT && (TARGET_FLOAT64 && !TARGET_64BIT) \
   && TARGET_DOUBLE_FLOAT \
   && (register_operand (operands[0], DFmode) \
       || register_operand (operands[1], DFmode) \
       || (GET_CODE (operands [0]) == MEM \
	   && ((GET_CODE (operands[1]) == CONST_INT \
		&& INTVAL (operands[1]) == 0) \
	       || operands[1] == CONST0_RTX (DFmode)))))
#define HAVE_movdf_internal2 ((TARGET_SOFT_FLOAT || TARGET_SINGLE_FLOAT) && !TARGET_MIPS16 \
   && (register_operand (operands[0], DFmode) \
       || register_operand (operands[1], DFmode) \
       || (GET_CODE (operands[1]) == CONST_INT && INTVAL (operands[1]) == 0) \
       || operands[1] == CONST0_RTX (DFmode)))
#define HAVE_loadgp 1
#define HAVE_movstrsi_internal 1
#define HAVE_movstrsi_internal2 1
#define HAVE_movstrsi_internal3 1
#define HAVE_ashlsi3_internal1 (!TARGET_MIPS16)
#define HAVE_ashlsi3_internal2 (TARGET_MIPS16)
#define HAVE_ashldi3_internal (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_ashldi3_internal2 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (INTVAL (operands[2]) & 32) != 0)
#define HAVE_ashldi3_internal3 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (INTVAL (operands[2]) & 63) < 32 \
   && (INTVAL (operands[2]) & 63) != 0)
#define HAVE_ashldi3_internal4 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_ashrsi3_internal1 (!TARGET_MIPS16)
#define HAVE_ashrsi3_internal2 (TARGET_MIPS16)
#define HAVE_ashrdi3_internal (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_ashrdi3_internal2 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && (INTVAL (operands[2]) & 32) != 0)
#define HAVE_ashrdi3_internal3 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (INTVAL (operands[2]) & 63) < 32 \
   && (INTVAL (operands[2]) & 63) != 0)
#define HAVE_ashrdi3_internal4 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_lshrsi3_internal1 (!TARGET_MIPS16)
#define HAVE_lshrsi3_internal2 (TARGET_MIPS16)
#define HAVE_lshrdi3_internal (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16)
#define HAVE_lshrdi3_internal2 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (INTVAL (operands[2]) & 32) != 0)
#define HAVE_lshrdi3_internal3 (!TARGET_64BIT && !TARGET_DEBUG_G_MODE && !TARGET_MIPS16 \
   && (INTVAL (operands[2]) & 63) < 32 \
   && (INTVAL (operands[2]) & 63) != 0)
#define HAVE_lshrdi3_internal4 (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_branch_fp (TARGET_HARD_FLOAT)
#define HAVE_branch_fp_inverted (TARGET_HARD_FLOAT)
#define HAVE_branch_zero (!TARGET_MIPS16)
#define HAVE_branch_zero_inverted (!TARGET_MIPS16)
#define HAVE_branch_zero_di (!TARGET_MIPS16)
#define HAVE_branch_zero_di_inverted (!TARGET_MIPS16)
#define HAVE_branch_equality (!TARGET_MIPS16)
#define HAVE_branch_equality_di (!TARGET_MIPS16)
#define HAVE_branch_equality_inverted (!TARGET_MIPS16)
#define HAVE_branch_equality_di_inverted (!TARGET_MIPS16)
#define HAVE_seq_si_zero (!TARGET_MIPS16)
#define HAVE_seq_di_zero (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_seq_si (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_seq_di (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sne_si_zero (!TARGET_MIPS16)
#define HAVE_sne_di_zero (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_sne_si (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sne_di (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sgt_si (!TARGET_MIPS16)
#define HAVE_sgt_di (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_sge_si (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sge_di (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_slt_si (!TARGET_MIPS16)
#define HAVE_slt_di (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_sle_si_const (!TARGET_MIPS16 && INTVAL (operands[2]) < 32767)
#define HAVE_sle_di_const (TARGET_64BIT && !TARGET_MIPS16 && INTVAL (operands[2]) < 32767)
#define HAVE_sle_si_reg (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sle_di_reg (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sgtu_si 1
#define HAVE_sgtu_di (TARGET_64BIT)
#define HAVE_sgeu_si (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sgeu_di (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sltu_si (!TARGET_MIPS16)
#define HAVE_sltu_di (TARGET_64BIT && !TARGET_MIPS16)
#define HAVE_sleu_si_const (!TARGET_MIPS16 && INTVAL (operands[2]) < 32767)
#define HAVE_sleu_di_const (TARGET_64BIT && !TARGET_MIPS16 && INTVAL (operands[2]) < 32767)
#define HAVE_sleu_si_reg (TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_sleu_di_reg (TARGET_64BIT && TARGET_DEBUG_C_MODE && !TARGET_MIPS16)
#define HAVE_seq_df (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_slt_df (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_sle_df (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_sgt_df (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_sge_df (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_seq_sf (TARGET_HARD_FLOAT)
#define HAVE_slt_sf (TARGET_HARD_FLOAT)
#define HAVE_sle_sf (TARGET_HARD_FLOAT)
#define HAVE_sgt_sf (TARGET_HARD_FLOAT)
#define HAVE_sge_sf (TARGET_HARD_FLOAT)
#define HAVE_jump (!TARGET_MIPS16)
#define HAVE_indirect_jump_internal1 (!(Pmode == DImode))
#define HAVE_indirect_jump_internal2 (Pmode == DImode)
#define HAVE_tablejump_internal1 (!(Pmode == DImode))
#define HAVE_tablejump_internal2 (Pmode == DImode)
#define HAVE_casesi_internal (TARGET_EMBEDDED_PIC)
#define HAVE_casesi_internal_di (TARGET_EMBEDDED_PIC)
#define HAVE_blockage 1
#define HAVE_return (mips_can_use_return_insn ())
#define HAVE_return_internal 1
#define HAVE_get_fnaddr (TARGET_EMBEDDED_PIC \
   && GET_CODE (operands[1]) == SYMBOL_REF)
#define HAVE_eh_set_lr_si (! TARGET_64BIT)
#define HAVE_eh_set_lr_di (TARGET_64BIT)
#define HAVE_exception_receiver (TARGET_ABICALLS && (mips_abi == ABI_32 || mips_abi == ABI_O64))
#define HAVE_call_internal1 (!TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_call_internal2 (TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_call_internal3a (!TARGET_MIPS16 \
   && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_internal3b (!TARGET_MIPS16 \
   && Pmode == DImode && !TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_internal3c (TARGET_MIPS16 && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS \
   && GET_CODE (operands[2]) == REG && REGNO (operands[2]) == 31)
#define HAVE_call_internal4a (!(Pmode == DImode) && TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_internal4b (Pmode == DImode && TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_value_internal1 (!TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_call_value_internal2 (TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_call_value_internal3a (!TARGET_MIPS16 \
   && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_value_internal3b (!TARGET_MIPS16 \
   && Pmode == DImode && !TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_value_internal3c (TARGET_MIPS16 && !(Pmode == DImode) && !TARGET_ABICALLS && TARGET_LONG_CALLS \
   && GET_CODE (operands[3]) == REG && REGNO (operands[3]) == 31)
#define HAVE_call_value_internal4a (!(Pmode == DImode) && TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_value_internal4b (Pmode == DImode && TARGET_ABICALLS && TARGET_LONG_CALLS)
#define HAVE_call_value_multiple_internal1 (!TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_call_value_multiple_internal2 (TARGET_ABICALLS && !TARGET_LONG_CALLS)
#define HAVE_nop 1
#define HAVE_consttable_qi (TARGET_MIPS16)
#define HAVE_consttable_hi (TARGET_MIPS16)
#define HAVE_consttable_si (TARGET_MIPS16)
#define HAVE_consttable_di (TARGET_MIPS16)
#define HAVE_consttable_sf (TARGET_MIPS16)
#define HAVE_consttable_df (TARGET_MIPS16)
#define HAVE_align_2 (TARGET_MIPS16)
#define HAVE_align_4 (TARGET_MIPS16)
#define HAVE_align_8 (TARGET_MIPS16)
#define HAVE_leasi (Pmode == SImode)
#define HAVE_leadi (Pmode == DImode)
#define HAVE_conditional_trap (ISA_HAS_COND_TRAP)
#define HAVE_addsi3 1
#define HAVE_adddi3 (TARGET_64BIT || (!TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
#define HAVE_subsi3 1
#define HAVE_subdi3 (TARGET_64BIT || (!TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
#define HAVE_muldf3 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_mulsf3 (TARGET_HARD_FLOAT)
#define HAVE_mulsi3 1
#define HAVE_muldi3 (TARGET_64BIT)
#define HAVE_mulsidi3 1
#define HAVE_umulsidi3 1
#define HAVE_smulsi3_highpart 1
#define HAVE_umulsi3_highpart 1
#define HAVE_divmodsi4 (optimize)
#define HAVE_divmoddi4 (TARGET_64BIT && optimize)
#define HAVE_udivmodsi4 (optimize)
#define HAVE_udivmoddi4 (TARGET_64BIT && optimize)
#define HAVE_div_trap 1
#define HAVE_divsi3 (!optimize)
#define HAVE_divdi3 (TARGET_64BIT && !optimize)
#define HAVE_modsi3 (!optimize)
#define HAVE_moddi3 (TARGET_64BIT && !optimize)
#define HAVE_udivsi3 (!optimize)
#define HAVE_udivdi3 (TARGET_64BIT && !optimize)
#define HAVE_umodsi3 (!optimize)
#define HAVE_umoddi3 (TARGET_64BIT && !optimize)
#define HAVE_negdi2 ((TARGET_64BIT || !TARGET_DEBUG_G_MODE) && !TARGET_MIPS16)
#define HAVE_andsi3 1
#define HAVE_anddi3 (TARGET_64BIT || !TARGET_DEBUG_G_MODE)
#define HAVE_iorsi3 1
#define HAVE_iordi3 (TARGET_64BIT || !TARGET_DEBUG_G_MODE)
#define HAVE_xorsi3 1
#define HAVE_xordi3 (TARGET_64BIT || !TARGET_DEBUG_G_MODE)
#define HAVE_zero_extendsidi2 (TARGET_64BIT)
#define HAVE_zero_extendhisi2 1
#define HAVE_zero_extendhidi2 (TARGET_64BIT)
#define HAVE_zero_extendqihi2 1
#define HAVE_zero_extendqisi2 1
#define HAVE_zero_extendqidi2 (TARGET_64BIT)
#define HAVE_extendhidi2 (TARGET_64BIT)
#define HAVE_extendhisi2 1
#define HAVE_extendqihi2 1
#define HAVE_extendqisi2 1
#define HAVE_extendqidi2 (TARGET_64BIT)
#define HAVE_fixuns_truncdfsi2 (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_fixuns_truncdfdi2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_fixuns_truncsfsi2 (TARGET_HARD_FLOAT)
#define HAVE_fixuns_truncsfdi2 (TARGET_HARD_FLOAT && TARGET_64BIT && TARGET_DOUBLE_FLOAT)
#define HAVE_extv (!TARGET_MIPS16)
#define HAVE_extzv (!TARGET_MIPS16)
#define HAVE_insv (!TARGET_MIPS16)
#define HAVE_movdi 1
#define HAVE_reload_indi (TARGET_64BIT)
#define HAVE_reload_outdi (TARGET_64BIT)
#define HAVE_movsi 1
#define HAVE_reload_outsi (TARGET_64BIT || TARGET_MIPS16)
#define HAVE_reload_insi (TARGET_MIPS16)
#define HAVE_reload_incc (ISA_HAS_8CC && TARGET_HARD_FLOAT)
#define HAVE_reload_outcc (ISA_HAS_8CC && TARGET_HARD_FLOAT)
#define HAVE_movhi 1
#define HAVE_movqi 1
#define HAVE_movsf 1
#define HAVE_movdf 1
#define HAVE_movstrsi (!TARGET_MIPS16)
#define HAVE_ashlsi3 1
#define HAVE_ashldi3 (TARGET_64BIT || (!TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
#define HAVE_ashrsi3 1
#define HAVE_ashrdi3 (TARGET_64BIT || (!TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
#define HAVE_lshrsi3 1
#define HAVE_lshrdi3 (TARGET_64BIT || (!TARGET_DEBUG_G_MODE && !TARGET_MIPS16))
#define HAVE_cmpsi 1
#define HAVE_tstsi 1
#define HAVE_cmpdi (TARGET_64BIT)
#define HAVE_tstdi (TARGET_64BIT)
#define HAVE_cmpdf (TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
#define HAVE_cmpsf (TARGET_HARD_FLOAT)
#define HAVE_beq 1
#define HAVE_bne 1
#define HAVE_bgt 1
#define HAVE_bge 1
#define HAVE_blt 1
#define HAVE_ble 1
#define HAVE_bgtu 1
#define HAVE_bgeu 1
#define HAVE_bltu 1
#define HAVE_bleu 1
#define HAVE_seq 1
#define HAVE_sne (!TARGET_MIPS16)
#define HAVE_sgt 1
#define HAVE_sge 1
#define HAVE_slt 1
#define HAVE_sle 1
#define HAVE_sgtu 1
#define HAVE_sgeu 1
#define HAVE_sltu 1
#define HAVE_sleu 1
#define HAVE_indirect_jump 1
#define HAVE_tablejump 1
#define HAVE_tablejump_internal3 1
#define HAVE_tablejump_mips161 (TARGET_MIPS16 && !(Pmode == DImode))
#define HAVE_tablejump_mips162 (TARGET_MIPS16 && Pmode == DImode)
#define HAVE_tablejump_internal4 1
#define HAVE_casesi (TARGET_EMBEDDED_PIC)
#define HAVE_builtin_setjmp_setup (TARGET_ABICALLS)
#define HAVE_builtin_setjmp_setup_32 (TARGET_ABICALLS && ! (Pmode == DImode))
#define HAVE_builtin_setjmp_setup_64 (TARGET_ABICALLS && Pmode == DImode)
#define HAVE_builtin_longjmp (TARGET_ABICALLS)
#define HAVE_prologue 1
#define HAVE_epilogue 1
#define HAVE_eh_return 1
#define HAVE_call 1
#define HAVE_call_internal0 1
#define HAVE_call_value 1
#define HAVE_call_value_internal0 1
#define HAVE_call_value_multiple_internal0 1
#define HAVE_untyped_call 1
#define HAVE_movsicc (ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE)
#define HAVE_movdicc ((ISA_HAS_CONDMOVE || ISA_HAS_INT_CONDMOVE) && TARGET_64BIT)
#define HAVE_movsfcc (ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT)
#define HAVE_movdfcc (ISA_HAS_CONDMOVE && TARGET_HARD_FLOAT && TARGET_DOUBLE_FLOAT)
struct rtx_def;
extern struct rtx_def *gen_trap                          PARAMS ((void));
extern struct rtx_def *gen_adddf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_addsf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_addsi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_adddi3_internal_1             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_adddi3_internal_2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_adddi3_internal_3             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_addsi3_internal_2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subdf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subsf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subsi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subdi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subdi3_internal_2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subdi3_internal_3             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subsi3_internal_2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldf3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldf3_r4300                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsf3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsf3_r4300                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsi3_mult3                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsi3_r4000                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldi3_internal2              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsidi3_internal             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsidi3_64bit                PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_xmulsi3_highpart_internal     PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_smuldi3_highpart              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umuldi3_highpart              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_madsi                         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divdf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divsf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divmodsi4_internal            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divmoddi4_internal            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivmodsi4_internal           PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivmoddi4_internal           PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_div_trap_normal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_div_trap_mips16               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divsi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divdi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_modsi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_moddi3_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivsi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivdi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umodsi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umoddi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sqrtdf2                       PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sqrtsf2                       PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_abssi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_absdi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_absdf2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_abssf2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ffssi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ffsdi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negsi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negdi2_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negdi2_internal_2             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negdf2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negsf2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_one_cmplsi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_one_cmpldi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_anddi3_internal1              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_xordi3_immed                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_truncdfsf2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_truncdisi2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_truncdihi2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_truncdiqi2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendsidi2_internal     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendsidi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendhidi2_internal          PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendhisi2_internal          PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqihi2_internal          PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqisi2_insn              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqidi2_insn              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendsfdf2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fix_truncdfsi2                PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fix_truncsfsi2                PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fix_truncdfdi2                PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fix_truncsfdi2                PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_floatsidf2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_floatdidf2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_floatsisf2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_floatdisf2                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsi_ulw                     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsi_usw                     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdi_uld                     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdi_usd                     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_high                          PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_low                           PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdi_internal                PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdi_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsi_internal1               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsi_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movcc                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movhi_internal1               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movhi_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movqi_internal1               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movqi_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsf_internal1               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsf_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdf_internal1               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdf_internal1a              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdf_internal2               PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_loadgp                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movstrsi_internal             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movstrsi_internal2            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movstrsi_internal3            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashlsi3_internal1             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashlsi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashldi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashldi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashldi3_internal3             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashldi3_internal4             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrsi3_internal1             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrsi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrdi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrdi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrdi3_internal3             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrdi3_internal4             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrsi3_internal1             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrsi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrdi3_internal              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrdi3_internal2             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrdi3_internal3             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrdi3_internal4             PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_fp                     PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_fp_inverted            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_zero                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_zero_inverted          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_zero_di                PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_zero_di_inverted       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_equality               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_equality_di            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_equality_inverted      PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_branch_equality_di_inverted   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_si_zero                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_di_zero                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_si                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_di                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sne_si_zero                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sne_di_zero                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sne_si                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sne_di                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgt_si                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgt_di                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sge_si                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sge_di                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_slt_si                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_slt_di                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_si_const                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_di_const                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_si_reg                    PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_di_reg                    PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgtu_si                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgtu_di                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgeu_si                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgeu_di                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sltu_si                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sltu_di                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sleu_si_const                 PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sleu_di_const                 PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sleu_si_reg                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sleu_di_reg                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_df                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_slt_df                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_df                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgt_df                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sge_df                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_seq_sf                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_slt_sf                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sle_sf                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sgt_sf                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_sge_sf                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_jump                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_indirect_jump_internal1       PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_indirect_jump_internal2       PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_tablejump_internal1           PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tablejump_internal2           PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_casesi_internal               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_casesi_internal_di            PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_blockage                      PARAMS ((void));
extern struct rtx_def *gen_return                        PARAMS ((void));
extern struct rtx_def *gen_return_internal               PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_get_fnaddr                    PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_eh_set_lr_si                  PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_eh_set_lr_di                  PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_exception_receiver            PARAMS ((void));
extern struct rtx_def *gen_call_internal1                PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal2                PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal3a               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal3b               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal3c               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal4a               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal4b               PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal1          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal2          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal3a         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal3b         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal3c         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal4a         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal4b         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_multiple_internal1 PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_multiple_internal2 PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_nop                           PARAMS ((void));
extern struct rtx_def *gen_consttable_qi                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_consttable_hi                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_consttable_si                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_consttable_di                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_consttable_sf                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_consttable_df                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_align_2                       PARAMS ((void));
extern struct rtx_def *gen_align_4                       PARAMS ((void));
extern struct rtx_def *gen_align_8                       PARAMS ((void));
extern struct rtx_def *gen_leasi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_leadi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_conditional_trap              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_addsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_adddi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_subdi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsf3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_muldi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_mulsidi3                      PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umulsidi3                     PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_smulsi3_highpart              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umulsi3_highpart              PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divmodsi4                     PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divmoddi4                     PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivmodsi4                    PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivmoddi4                    PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_div_trap                      PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_divdi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_modsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_moddi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivsi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_udivdi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umodsi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_umoddi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_negdi2                        PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_andsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_anddi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_iorsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_iordi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_xorsi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_xordi3                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendsidi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendhisi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendhidi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendqihi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendqisi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_zero_extendqidi2              PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendhidi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendhisi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqihi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqisi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extendqidi2                   PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fixuns_truncdfsi2             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fixuns_truncdfdi2             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fixuns_truncsfsi2             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_fixuns_truncsfdi2             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extv                          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_extzv                         PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_insv                          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_indi                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_outdi                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_outsi                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_insi                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_incc                   PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_reload_outcc                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movhi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movqi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsf                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdf                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movstrsi                      PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashlsi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashldi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrsi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_ashrdi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrsi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_lshrdi3                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_cmpsi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tstsi                         PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_cmpdi                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tstdi                         PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_cmpdf                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_cmpsf                         PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_beq                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bne                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bgt                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bge                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_blt                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_ble                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bgtu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bgeu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bltu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_bleu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_seq                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sne                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sgt                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sge                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_slt                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sle                           PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sgtu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sgeu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sltu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_sleu                          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_indirect_jump                 PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_tablejump                     PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tablejump_internal3           PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tablejump_mips161             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tablejump_mips162             PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_tablejump_internal4           PARAMS ((struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_casesi                        PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_builtin_setjmp_setup          PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_builtin_setjmp_setup_32       PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_builtin_setjmp_setup_64       PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_builtin_longjmp               PARAMS ((struct rtx_def *));
extern struct rtx_def *gen_prologue                      PARAMS ((void));
extern struct rtx_def *gen_epilogue                      PARAMS ((void));
extern struct rtx_def *gen_eh_return                     PARAMS ((struct rtx_def *, struct rtx_def *));
#define GEN_CALL(A, B, C, D) gen_call ((A), (B), (C), (D))
extern struct rtx_def *gen_call                          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_internal0                PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
#define GEN_CALL_VALUE(A, B, C, D, E) gen_call_value ((A), (B), (C), (D))
extern struct rtx_def *gen_call_value                    PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_internal0          PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_call_value_multiple_internal0 PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_untyped_call                  PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsicc                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdicc                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movsfcc                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));
extern struct rtx_def *gen_movdfcc                       PARAMS ((struct rtx_def *, struct rtx_def *, struct rtx_def *, struct rtx_def *));

#endif /* GCC_INSN_FLAGS_H */
