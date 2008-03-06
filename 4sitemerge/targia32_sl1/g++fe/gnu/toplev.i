# 1 "../../../kg++fe/gnu/toplev.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/toplev.c"
# 33 "../../../kg++fe/gnu/toplev.c"
# 1 "../../../kg++fe/gnu/MIPS/config.h" 1




# 1 "../../../kg++fe/gnu/MIPS/auto-host.h" 1
# 6 "../../../kg++fe/gnu/MIPS/config.h" 2





struct rtx_def;
typedef struct rtx_def *rtx;
struct rtvec_def;
typedef struct rtvec_def *rtvec;
union tree_node;
typedef union tree_node *tree;



# 1 "../../../include/gnu/ansidecl.h" 1
# 21 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/config/dbxelf.h" 1
# 22 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/config/elfos.h" 1
# 23 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/config/svr4.h" 1
# 24 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/MIPS/linux.h" 1
# 25 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/MIPS/mips.h" 1
# 29 "../../../kg++fe/gnu/MIPS/mips.h"
extern char *asm_file_name;
extern char call_used_regs[];
extern int may_call_alloca;
extern char **save_argv;
extern int target_flags;




enum cmp_type {
  CMP_SI,
  CMP_DI,
  CMP_SF,
  CMP_DF,
  CMP_MAX
};


enum delay_type {
  DELAY_NONE,
  DELAY_LOAD,
  DELAY_HILO,
  DELAY_FCMP
};






enum processor_type {
  PROCESSOR_DEFAULT,
  PROCESSOR_R3000,
  PROCESSOR_R3900,
  PROCESSOR_R6000,
  PROCESSOR_R4000,
  PROCESSOR_R4100,
  PROCESSOR_R4111,
  PROCESSOR_R4120,
  PROCESSOR_R4300,
  PROCESSOR_R4600,
  PROCESSOR_R4650,
  PROCESSOR_R5000,
  PROCESSOR_R5400,
  PROCESSOR_R5500,
  PROCESSOR_R8000,
  PROCESSOR_R4KC,
  PROCESSOR_R5KC,
  PROCESSOR_R20KC,
  PROCESSOR_SR71000,
  PROCESSOR_SB1
};
# 108 "../../../kg++fe/gnu/MIPS/mips.h"
enum mips_abicalls_type {
  MIPS_ABICALLS_NO,
  MIPS_ABICALLS_YES
};







enum block_move_type {
  BLOCK_MOVE_NORMAL,
  BLOCK_MOVE_NOT_LAST,
  BLOCK_MOVE_LAST
};



struct mips_cpu_info {



  const char *name;




  enum processor_type cpu;


  int isa;
};

extern char mips_reg_names[][8];
extern char mips_print_operand_punct[256];
extern const char *current_function_file;
extern int num_source_filenames;
extern int inside_function;
extern int ignore_line_number;
extern int file_in_function_warning;
extern int sdb_label_count;
extern int sdb_begin_function_line;
extern int mips_section_threshold;
extern int g_switch_value;
extern int g_switch_set;
extern int sym_lineno;
extern int set_noreorder;
extern int set_nomacro;
extern int set_noat;
extern int set_volatile;
extern int mips_branch_likely;
extern int mips_dbx_regno[];
extern rtx branch_cmp[2];
extern enum cmp_type branch_type;
extern enum processor_type mips_arch;
extern enum processor_type mips_tune;
extern enum mips_abicalls_type mips_abicalls;
extern int mips_isa;
extern int mips16;
extern int mips16_hard_float;
extern int mips_entry;
extern const char *mips_arch_string;
extern const char *mips_tune_string;
extern const char *mips_isa_string;
extern const char *mips_abi_string;
extern const char *mips_entry_string;
extern const char *mips_no_mips16_string;
extern const char *mips_cache_flush_func;
extern int mips_split_addresses;
extern int dslots_load_total;
extern int dslots_load_filled;
extern int dslots_jump_total;
extern int dslots_jump_filled;
extern int dslots_number_nops;
extern int num_refs[3];
extern rtx mips_load_reg;
extern rtx mips_load_reg2;
extern rtx mips_load_reg3;
extern rtx mips_load_reg4;
extern int mips_string_length;
extern const struct mips_cpu_info mips_cpu_info_table[];
extern const struct mips_cpu_info *mips_arch_info;
extern const struct mips_cpu_info *mips_tune_info;


extern void sdata_section (void);
extern void sbss_section (void);
# 970 "../../../kg++fe/gnu/MIPS/mips.h"
extern int mips_abi;
# 1912 "../../../kg++fe/gnu/MIPS/mips.h"
extern char mips_hard_regno_mode_ok[][176];
# 2027 "../../../kg++fe/gnu/MIPS/mips.h"
enum reg_class
{
  NO_REGS,
  M16_NA_REGS,
  M16_REGS,
  T_REG,
  M16_T_REGS,
  GR_REGS,
  FP_REGS,
  HI_REG,
  LO_REG,
  HILO_REG,
  MD_REGS,
  COP0_REGS,
  COP2_REGS,
  COP3_REGS,
  HI_AND_GR_REGS,
  LO_AND_GR_REGS,
  HILO_AND_GR_REGS,
  HI_AND_FP_REGS,
  COP0_AND_GR_REGS,
  COP2_AND_GR_REGS,
  COP3_AND_GR_REGS,
  ALL_COP_REGS,
  ALL_COP_AND_GR_REGS,
  ST_REGS,
  ALL_REGS,
  LIM_REG_CLASSES
};
# 2141 "../../../kg++fe/gnu/MIPS/mips.h"
extern const enum reg_class mips_regno_to_class[];
# 2224 "../../../kg++fe/gnu/MIPS/mips.h"
extern enum reg_class mips_char_to_class[256];
# 2730 "../../../kg++fe/gnu/MIPS/mips.h"
typedef struct mips_args {


  int gp_reg_found;


  unsigned int arg_number;




  unsigned int num_gprs;


  unsigned int num_fprs;


  unsigned int stack_words;
# 2760 "../../../kg++fe/gnu/MIPS/mips.h"
  int fp_code;


  int prototype;







  unsigned int num_adjusts;
  rtx adjust[8];
} CUMULATIVE_ARGS;
# 26 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/MIPS/linux.h" 1
# 27 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/defaults.h" 1
# 28 "../../../kg++fe/gnu/MIPS/config.h" 2





# 1 "../../../kg++fe/gnu/MIPS/insn-constants.h" 1
# 34 "../../../kg++fe/gnu/MIPS/config.h" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-flags.h" 1
# 421 "../../../kg++fe/gnu/MIPS/insn-flags.h"
extern rtx gen_trap (void);
extern rtx gen_adddf3 (rtx, rtx, rtx);
extern rtx gen_addsf3 (rtx, rtx, rtx);
extern rtx gen_addsi3_internal (rtx, rtx, rtx);
extern rtx gen_adddi3_internal_1 (rtx, rtx, rtx, rtx);
extern rtx gen_adddi3_internal_2 (rtx, rtx, rtx, rtx);
extern rtx gen_adddi3_internal_3 (rtx, rtx, rtx);
extern rtx gen_addsi3_internal_2 (rtx, rtx, rtx);
extern rtx gen_subdf3 (rtx, rtx, rtx);
extern rtx gen_subsf3 (rtx, rtx, rtx);
extern rtx gen_subsi3_internal (rtx, rtx, rtx);
extern rtx gen_subdi3_internal (rtx, rtx, rtx, rtx);
extern rtx gen_subdi3_internal_2 (rtx, rtx, rtx, rtx);
extern rtx gen_subdi3_internal_3 (rtx, rtx, rtx);
extern rtx gen_subsi3_internal_2 (rtx, rtx, rtx);
extern rtx gen_muldf3_internal (rtx, rtx, rtx);
extern rtx gen_muldf3_r4300 (rtx, rtx, rtx);
extern rtx gen_mulsf3_internal (rtx, rtx, rtx);
extern rtx gen_mulsf3_r4300 (rtx, rtx, rtx);
extern rtx gen_mulsi3_mult3 (rtx, rtx, rtx);
extern rtx gen_mulsi3_internal (rtx, rtx, rtx);
extern rtx gen_mulsi3_r4000 (rtx, rtx, rtx);
extern rtx gen_muldi3_internal (rtx, rtx, rtx);
extern rtx gen_muldi3_internal2 (rtx, rtx, rtx);
extern rtx gen_mulsidi3_internal (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_mulsidi3_64bit (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xmulsi3_highpart_internal (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_xmulsi3_highpart_mulhi (rtx, rtx, rtx, rtx, rtx, rtx);
extern rtx gen_smuldi3_highpart (rtx, rtx, rtx);
extern rtx gen_umuldi3_highpart (rtx, rtx, rtx);
extern rtx gen_madsi (rtx, rtx, rtx);
extern rtx gen_divdf3 (rtx, rtx, rtx);
extern rtx gen_divsf3 (rtx, rtx, rtx);
extern rtx gen_divmodsi4_internal (rtx, rtx, rtx, rtx);
extern rtx gen_divmoddi4_internal (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodsi4_internal (rtx, rtx, rtx, rtx);
extern rtx gen_udivmoddi4_internal (rtx, rtx, rtx, rtx);
extern rtx gen_div_trap_normal (rtx, rtx, rtx);
extern rtx gen_div_trap_mips16 (rtx, rtx, rtx);
extern rtx gen_divsi3_internal (rtx, rtx, rtx);
extern rtx gen_divdi3_internal (rtx, rtx, rtx);
extern rtx gen_modsi3_internal (rtx, rtx, rtx);
extern rtx gen_moddi3_internal (rtx, rtx, rtx);
extern rtx gen_udivsi3_internal (rtx, rtx, rtx);
extern rtx gen_udivdi3_internal (rtx, rtx, rtx);
extern rtx gen_umodsi3_internal (rtx, rtx, rtx);
extern rtx gen_umoddi3_internal (rtx, rtx, rtx);
extern rtx gen_sqrtdf2 (rtx, rtx);
extern rtx gen_sqrtsf2 (rtx, rtx);
extern rtx gen_abssi2 (rtx, rtx);
extern rtx gen_absdi2 (rtx, rtx);
extern rtx gen_absdf2 (rtx, rtx);
extern rtx gen_abssf2 (rtx, rtx);
extern rtx gen_ffssi2 (rtx, rtx);
extern rtx gen_ffsdi2 (rtx, rtx);
extern rtx gen_negsi2 (rtx, rtx);
extern rtx gen_negdi2_internal (rtx, rtx, rtx);
extern rtx gen_negdi2_internal_2 (rtx, rtx);
extern rtx gen_negdf2 (rtx, rtx);
extern rtx gen_negsf2 (rtx, rtx);
extern rtx gen_one_cmplsi2 (rtx, rtx);
extern rtx gen_one_cmpldi2 (rtx, rtx);
extern rtx gen_anddi3_internal1 (rtx, rtx, rtx);
extern rtx gen_xordi3_immed (rtx, rtx, rtx);
extern rtx gen_truncdfsf2 (rtx, rtx);
extern rtx gen_truncdisi2 (rtx, rtx);
extern rtx gen_truncdihi2 (rtx, rtx);
extern rtx gen_truncdiqi2 (rtx, rtx);
extern rtx gen_zero_extendsidi2_internal (rtx, rtx);
extern rtx gen_extendhidi2_internal (rtx, rtx);
extern rtx gen_extendhisi2_internal (rtx, rtx);
extern rtx gen_extendqihi2_internal (rtx, rtx);
extern rtx gen_extendqisi2_insn (rtx, rtx);
extern rtx gen_extendqidi2_insn (rtx, rtx);
extern rtx gen_extendsfdf2 (rtx, rtx);
extern rtx gen_fix_truncdfsi2_insn (rtx, rtx);
extern rtx gen_fix_truncdfsi2_macro (rtx, rtx);
extern rtx gen_fix_truncsfsi2_insn (rtx, rtx);
extern rtx gen_fix_truncsfsi2_macro (rtx, rtx);
extern rtx gen_fix_truncdfdi2 (rtx, rtx);
extern rtx gen_fix_truncsfdi2 (rtx, rtx);
extern rtx gen_floatsidf2 (rtx, rtx);
extern rtx gen_floatdidf2 (rtx, rtx);
extern rtx gen_floatsisf2 (rtx, rtx);
extern rtx gen_floatdisf2 (rtx, rtx);
extern rtx gen_movsi_ulw (rtx, rtx);
extern rtx gen_movsi_usw (rtx, rtx);
extern rtx gen_movdi_uld (rtx, rtx);
extern rtx gen_movdi_usd (rtx, rtx);
extern rtx gen_high (rtx, rtx);
extern rtx gen_low (rtx, rtx, rtx);
extern rtx gen_movdi_internal (rtx, rtx);
extern rtx gen_movdi_internal2 (rtx, rtx);
extern rtx gen_movsi_internal (rtx, rtx);
extern rtx gen_hilo_delay (rtx);
extern rtx gen_movcc (rtx, rtx);
extern rtx gen_movhi_internal (rtx, rtx);
extern rtx gen_movqi_internal (rtx, rtx);
extern rtx gen_movsf_internal1 (rtx, rtx);
extern rtx gen_movsf_internal2 (rtx, rtx);
extern rtx gen_movdf_internal1 (rtx, rtx);
extern rtx gen_movdf_internal1a (rtx, rtx);
extern rtx gen_movdf_internal2 (rtx, rtx);
extern rtx gen_loadgp (rtx, rtx);
extern rtx gen_movstrsi_internal (rtx, rtx, rtx, rtx);
extern rtx gen_movstrsi_internal2 (rtx, rtx, rtx, rtx);
extern rtx gen_movstrsi_internal3 (rtx, rtx, rtx, rtx);
extern rtx gen_ashlsi3_internal1 (rtx, rtx, rtx);
extern rtx gen_ashlsi3_internal2 (rtx, rtx, rtx);
extern rtx gen_ashldi3_internal (rtx, rtx, rtx, rtx);
extern rtx gen_ashldi3_internal2 (rtx, rtx, rtx, rtx);
extern rtx gen_ashldi3_internal3 (rtx, rtx, rtx, rtx);
extern rtx gen_ashldi3_internal4 (rtx, rtx, rtx);
extern rtx gen_ashrsi3_internal1 (rtx, rtx, rtx);
extern rtx gen_ashrsi3_internal2 (rtx, rtx, rtx);
extern rtx gen_ashrdi3_internal (rtx, rtx, rtx, rtx);
extern rtx gen_ashrdi3_internal2 (rtx, rtx, rtx, rtx);
extern rtx gen_ashrdi3_internal3 (rtx, rtx, rtx, rtx);
extern rtx gen_ashrdi3_internal4 (rtx, rtx, rtx);
extern rtx gen_lshrsi3_internal1 (rtx, rtx, rtx);
extern rtx gen_lshrsi3_internal2 (rtx, rtx, rtx);
extern rtx gen_lshrdi3_internal (rtx, rtx, rtx, rtx);
extern rtx gen_lshrdi3_internal2 (rtx, rtx, rtx, rtx);
extern rtx gen_lshrdi3_internal3 (rtx, rtx, rtx, rtx);
extern rtx gen_lshrdi3_internal4 (rtx, rtx, rtx);
extern rtx gen_rotrsi3 (rtx, rtx, rtx);
extern rtx gen_rotrdi3 (rtx, rtx, rtx);
extern rtx gen_branch_fp (rtx, rtx, rtx);
extern rtx gen_branch_fp_inverted (rtx, rtx, rtx);
extern rtx gen_branch_zero (rtx, rtx, rtx);
extern rtx gen_branch_zero_inverted (rtx, rtx, rtx);
extern rtx gen_branch_zero_di (rtx, rtx, rtx);
extern rtx gen_branch_zero_di_inverted (rtx, rtx, rtx);
extern rtx gen_branch_equality (rtx, rtx, rtx, rtx);
extern rtx gen_branch_equality_di (rtx, rtx, rtx, rtx);
extern rtx gen_branch_equality_inverted (rtx, rtx, rtx, rtx);
extern rtx gen_branch_equality_di_inverted (rtx, rtx, rtx, rtx);
extern rtx gen_seq_si_zero (rtx, rtx);
extern rtx gen_seq_di_zero (rtx, rtx);

extern rtx gen_seq_si (rtx, rtx, rtx);
extern rtx gen_seq_di (rtx, rtx, rtx);
extern rtx gen_sne_si (rtx, rtx, rtx);
extern rtx gen_sne_di (rtx, rtx, rtx);
extern rtx gen_sge_si (rtx, rtx, rtx);
extern rtx gen_sge_di (rtx, rtx, rtx);
extern rtx gen_sle_si_reg (rtx, rtx, rtx);
extern rtx gen_sle_di_reg (rtx, rtx, rtx);
extern rtx gen_sgeu_si (rtx, rtx, rtx);
extern rtx gen_sleu_si_reg (rtx, rtx, rtx);
extern rtx gen_sleu_di_reg (rtx, rtx, rtx);
extern rtx gen_sne_si_zero (rtx, rtx);
extern rtx gen_sne_di_zero (rtx, rtx);
extern rtx gen_sgt_si (rtx, rtx, rtx);
extern rtx gen_sgt_di (rtx, rtx, rtx);
extern rtx gen_slt_si (rtx, rtx, rtx);
extern rtx gen_slt_di (rtx, rtx, rtx);
extern rtx gen_sle_si_const (rtx, rtx, rtx);
extern rtx gen_sle_di_const (rtx, rtx, rtx);
extern rtx gen_sgtu_si (rtx, rtx, rtx);
extern rtx gen_sgtu_di (rtx, rtx, rtx);
extern rtx gen_sltu_si (rtx, rtx, rtx);
extern rtx gen_sltu_di (rtx, rtx, rtx);
extern rtx gen_sleu_si_const (rtx, rtx, rtx);
extern rtx gen_sleu_di_const (rtx, rtx, rtx);
# 710 "../../../kg++fe/gnu/MIPS/insn-flags.h"
extern rtx gen_sunordered_df (rtx, rtx, rtx);
extern rtx gen_sunlt_df (rtx, rtx, rtx);
extern rtx gen_suneq_df (rtx, rtx, rtx);
extern rtx gen_sunle_df (rtx, rtx, rtx);
extern rtx gen_seq_df (rtx, rtx, rtx);
extern rtx gen_slt_df (rtx, rtx, rtx);
extern rtx gen_sle_df (rtx, rtx, rtx);
extern rtx gen_sgt_df (rtx, rtx, rtx);
extern rtx gen_sge_df (rtx, rtx, rtx);
extern rtx gen_sunordered_sf (rtx, rtx, rtx);
extern rtx gen_sunlt_sf (rtx, rtx, rtx);
extern rtx gen_suneq_sf (rtx, rtx, rtx);
extern rtx gen_sunle_sf (rtx, rtx, rtx);
extern rtx gen_seq_sf (rtx, rtx, rtx);
extern rtx gen_slt_sf (rtx, rtx, rtx);
extern rtx gen_sle_sf (rtx, rtx, rtx);
extern rtx gen_sgt_sf (rtx, rtx, rtx);
extern rtx gen_sge_sf (rtx, rtx, rtx);
extern rtx gen_jump (rtx);
extern rtx gen_indirect_jump_internal1 (rtx);
extern rtx gen_indirect_jump_internal2 (rtx);
extern rtx gen_tablejump_internal1 (rtx, rtx);
extern rtx gen_tablejump_internal2 (rtx, rtx);
extern rtx gen_casesi_internal (rtx, rtx, rtx);
extern rtx gen_casesi_internal_di (rtx, rtx, rtx);
extern rtx gen_blockage (void);
extern rtx gen_return (void);
extern rtx gen_return_internal (rtx);
extern rtx gen_get_fnaddr (rtx, rtx);
extern rtx gen_eh_set_lr_si (rtx);
extern rtx gen_eh_set_lr_di (rtx);
extern rtx gen_exception_receiver (void);
extern rtx gen_call_internal1 (rtx, rtx, rtx);
extern rtx gen_call_internal2 (rtx, rtx, rtx);
extern rtx gen_call_internal3a (rtx, rtx, rtx);
extern rtx gen_call_internal3b (rtx, rtx, rtx);
extern rtx gen_call_internal3c (rtx, rtx, rtx);
extern rtx gen_call_internal4a (rtx, rtx, rtx);
extern rtx gen_call_internal4b (rtx, rtx, rtx);
extern rtx gen_call_value_internal1 (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal2 (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal3a (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal3b (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal3c (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal4a (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal4b (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_multiple_internal1 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_call_value_multiple_internal2 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_prefetch_si_address (rtx, rtx, rtx, rtx);
extern rtx gen_prefetch_si (rtx, rtx, rtx);
extern rtx gen_prefetch_di_address (rtx, rtx, rtx, rtx);
extern rtx gen_prefetch_di (rtx, rtx, rtx);
extern rtx gen_nop (void);
extern rtx gen_consttable_qi (rtx);
extern rtx gen_consttable_hi (rtx);
extern rtx gen_consttable_si (rtx);
extern rtx gen_consttable_di (rtx);
extern rtx gen_consttable_sf (rtx);
extern rtx gen_consttable_df (rtx);
extern rtx gen_align_2 (void);
extern rtx gen_align_4 (void);
extern rtx gen_align_8 (void);
extern rtx gen_leasi (rtx, rtx);
extern rtx gen_leadi (rtx, rtx);
extern rtx gen_conditional_trap (rtx, rtx);
extern rtx gen_addsi3 (rtx, rtx, rtx);
extern rtx gen_adddi3 (rtx, rtx, rtx);
extern rtx gen_subsi3 (rtx, rtx, rtx);
extern rtx gen_subdi3 (rtx, rtx, rtx);
extern rtx gen_muldf3 (rtx, rtx, rtx);
extern rtx gen_mulsf3 (rtx, rtx, rtx);
extern rtx gen_mulsi3 (rtx, rtx, rtx);
extern rtx gen_muldi3 (rtx, rtx, rtx);
extern rtx gen_mulsidi3 (rtx, rtx, rtx);
extern rtx gen_umulsidi3 (rtx, rtx, rtx);
extern rtx gen_smulsi3_highpart (rtx, rtx, rtx);
extern rtx gen_umulsi3_highpart (rtx, rtx, rtx);
extern rtx gen_divmodsi4 (rtx, rtx, rtx, rtx);
extern rtx gen_divmoddi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmodsi4 (rtx, rtx, rtx, rtx);
extern rtx gen_udivmoddi4 (rtx, rtx, rtx, rtx);
extern rtx gen_div_trap (rtx, rtx, rtx);
extern rtx gen_divsi3 (rtx, rtx, rtx);
extern rtx gen_divdi3 (rtx, rtx, rtx);
extern rtx gen_modsi3 (rtx, rtx, rtx);
extern rtx gen_moddi3 (rtx, rtx, rtx);
extern rtx gen_udivsi3 (rtx, rtx, rtx);
extern rtx gen_udivdi3 (rtx, rtx, rtx);
extern rtx gen_umodsi3 (rtx, rtx, rtx);
extern rtx gen_umoddi3 (rtx, rtx, rtx);
extern rtx gen_negdi2 (rtx, rtx);
extern rtx gen_andsi3 (rtx, rtx, rtx);
extern rtx gen_anddi3 (rtx, rtx, rtx);
extern rtx gen_iorsi3 (rtx, rtx, rtx);
extern rtx gen_iordi3 (rtx, rtx, rtx);
extern rtx gen_xorsi3 (rtx, rtx, rtx);
extern rtx gen_xordi3 (rtx, rtx, rtx);
extern rtx gen_zero_extendsidi2 (rtx, rtx);
extern rtx gen_zero_extendhisi2 (rtx, rtx);
extern rtx gen_zero_extendhidi2 (rtx, rtx);
extern rtx gen_zero_extendqihi2 (rtx, rtx);
extern rtx gen_zero_extendqisi2 (rtx, rtx);
extern rtx gen_zero_extendqidi2 (rtx, rtx);
extern rtx gen_extendsidi2 (rtx, rtx);
extern rtx gen_extendhidi2 (rtx, rtx);
extern rtx gen_extendhisi2 (rtx, rtx);
extern rtx gen_extendqihi2 (rtx, rtx);
extern rtx gen_extendqisi2 (rtx, rtx);
extern rtx gen_extendqidi2 (rtx, rtx);
extern rtx gen_fix_truncdfsi2 (rtx, rtx);
extern rtx gen_fix_truncsfsi2 (rtx, rtx);
extern rtx gen_fixuns_truncdfsi2 (rtx, rtx);
extern rtx gen_fixuns_truncdfdi2 (rtx, rtx);
extern rtx gen_fixuns_truncsfsi2 (rtx, rtx);
extern rtx gen_fixuns_truncsfdi2 (rtx, rtx);
extern rtx gen_extv (rtx, rtx, rtx, rtx);
extern rtx gen_extzv (rtx, rtx, rtx, rtx);
extern rtx gen_insv (rtx, rtx, rtx, rtx);
extern rtx gen_movdi (rtx, rtx);
extern rtx gen_reload_indi (rtx, rtx, rtx);
extern rtx gen_reload_outdi (rtx, rtx, rtx);
extern rtx gen_movsi (rtx, rtx);
extern rtx gen_reload_outsi (rtx, rtx, rtx);
extern rtx gen_reload_insi (rtx, rtx, rtx);
extern rtx gen_reload_incc (rtx, rtx, rtx);
extern rtx gen_reload_outcc (rtx, rtx, rtx);
extern rtx gen_movhi (rtx, rtx);
extern rtx gen_movqi (rtx, rtx);
extern rtx gen_movsf (rtx, rtx);
extern rtx gen_movdf (rtx, rtx);
extern rtx gen_movstrsi (rtx, rtx, rtx, rtx);
extern rtx gen_ashlsi3 (rtx, rtx, rtx);
extern rtx gen_ashldi3 (rtx, rtx, rtx);
extern rtx gen_ashrsi3 (rtx, rtx, rtx);
extern rtx gen_ashrdi3 (rtx, rtx, rtx);
extern rtx gen_lshrsi3 (rtx, rtx, rtx);
extern rtx gen_lshrdi3 (rtx, rtx, rtx);
extern rtx gen_cmpsi (rtx, rtx);
extern rtx gen_tstsi (rtx);
extern rtx gen_cmpdi (rtx, rtx);
extern rtx gen_tstdi (rtx);
extern rtx gen_cmpdf (rtx, rtx);
extern rtx gen_cmpsf (rtx, rtx);
extern rtx gen_bunordered (rtx);
extern rtx gen_bordered (rtx);
extern rtx gen_bunlt (rtx);
extern rtx gen_bunge (rtx);
extern rtx gen_buneq (rtx);
extern rtx gen_bltgt (rtx);
extern rtx gen_bunle (rtx);
extern rtx gen_bungt (rtx);
extern rtx gen_beq (rtx);
extern rtx gen_bne (rtx);
extern rtx gen_bgt (rtx);
extern rtx gen_bge (rtx);
extern rtx gen_blt (rtx);
extern rtx gen_ble (rtx);
extern rtx gen_bgtu (rtx);
extern rtx gen_bgeu (rtx);
extern rtx gen_bltu (rtx);
extern rtx gen_bleu (rtx);
extern rtx gen_seq (rtx);
extern rtx gen_sne (rtx);
extern rtx gen_sgt (rtx);
extern rtx gen_sge (rtx);
extern rtx gen_slt (rtx);
extern rtx gen_sle (rtx);
extern rtx gen_sgtu (rtx);
extern rtx gen_sgeu (rtx);
extern rtx gen_sltu (rtx);
extern rtx gen_sleu (rtx);
extern rtx gen_indirect_jump (rtx);
extern rtx gen_tablejump (rtx, rtx);
extern rtx gen_tablejump_internal3 (rtx, rtx);
extern rtx gen_tablejump_mips161 (rtx, rtx);
extern rtx gen_tablejump_mips162 (rtx, rtx);
extern rtx gen_tablejump_internal4 (rtx, rtx);
extern rtx gen_casesi (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_builtin_setjmp_setup (rtx);
extern rtx gen_builtin_setjmp_setup_32 (rtx);
extern rtx gen_builtin_setjmp_setup_64 (rtx);
extern rtx gen_builtin_longjmp (rtx);
extern rtx gen_prologue (void);
extern rtx gen_epilogue (void);
extern rtx gen_eh_return (rtx);

extern rtx gen_call (rtx, rtx, rtx, rtx);
extern rtx gen_call_internal0 (rtx, rtx, rtx);

extern rtx gen_call_value (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_internal0 (rtx, rtx, rtx, rtx);
extern rtx gen_call_value_multiple_internal0 (rtx, rtx, rtx, rtx, rtx);
extern rtx gen_untyped_call (rtx, rtx, rtx);
extern rtx gen_prefetch (rtx, rtx, rtx);
extern rtx gen_movsicc (rtx, rtx, rtx, rtx);
extern rtx gen_movdicc (rtx, rtx, rtx, rtx);
extern rtx gen_movsfcc (rtx, rtx, rtx, rtx);
extern rtx gen_movdfcc (rtx, rtx, rtx, rtx);
# 35 "../../../kg++fe/gnu/MIPS/config.h" 2
# 34 "../../../kg++fe/gnu/toplev.c" 2


# 1 "../../../kg++fe/gnu/system.h" 1
# 32 "../../../kg++fe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 43 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 105 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 33 "../../../kg++fe/gnu/system.h" 2
# 46 "../../../kg++fe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
# 47 "../../../kg++fe/gnu/system.h" 2


# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 323 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 313 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 314 "/usr/include/sys/cdefs.h" 2 3 4
# 324 "/usr/include/features.h" 2 3 4
# 346 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4



# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 5 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-32.h" 1 3 4
# 8 "/usr/include/gnu/stubs.h" 2 3 4
# 347 "/usr/include/features.h" 2 3 4
# 29 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 35 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 28 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 29 "/usr/include/bits/types.h" 2 3 4


# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 32 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;




__extension__ typedef signed long long int __int64_t;
__extension__ typedef unsigned long long int __uint64_t;







__extension__ typedef long long int __quad_t;
__extension__ typedef unsigned long long int __u_quad_t;
# 134 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 135 "/usr/include/bits/types.h" 2 3 4


__extension__ typedef __u_quad_t __dev_t;
__extension__ typedef unsigned int __uid_t;
__extension__ typedef unsigned int __gid_t;
__extension__ typedef unsigned long int __ino_t;
__extension__ typedef __u_quad_t __ino64_t;
__extension__ typedef unsigned int __mode_t;
__extension__ typedef unsigned int __nlink_t;
__extension__ typedef long int __off_t;
__extension__ typedef __quad_t __off64_t;
__extension__ typedef int __pid_t;
__extension__ typedef struct { int __val[2]; } __fsid_t;
__extension__ typedef long int __clock_t;
__extension__ typedef unsigned long int __rlim_t;
__extension__ typedef __u_quad_t __rlim64_t;
__extension__ typedef unsigned int __id_t;
__extension__ typedef long int __time_t;
__extension__ typedef unsigned int __useconds_t;
__extension__ typedef long int __suseconds_t;

__extension__ typedef int __daddr_t;
__extension__ typedef long int __swblk_t;
__extension__ typedef int __key_t;


__extension__ typedef int __clockid_t;


__extension__ typedef void * __timer_t;


__extension__ typedef long int __blksize_t;




__extension__ typedef long int __blkcnt_t;
__extension__ typedef __quad_t __blkcnt64_t;


__extension__ typedef unsigned long int __fsblkcnt_t;
__extension__ typedef __u_quad_t __fsblkcnt64_t;


__extension__ typedef unsigned long int __fsfilcnt_t;
__extension__ typedef __u_quad_t __fsfilcnt64_t;

__extension__ typedef int __ssize_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


__extension__ typedef int __intptr_t;


__extension__ typedef unsigned int __socklen_t;
# 37 "/usr/include/stdio.h" 2 3 4









typedef struct _IO_FILE FILE;





# 62 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 72 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 14 "/usr/include/_G_config.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 355 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 15 "/usr/include/_G_config.h" 2 3 4
# 24 "/usr/include/_G_config.h" 3 4
# 1 "/usr/include/wchar.h" 1 3 4
# 48 "/usr/include/wchar.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 49 "/usr/include/wchar.h" 2 3 4

# 1 "/usr/include/bits/wchar.h" 1 3 4
# 51 "/usr/include/wchar.h" 2 3 4
# 76 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 25 "/usr/include/_G_config.h" 2 3 4

typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 44 "/usr/include/_G_config.h" 3 4
# 1 "/usr/include/gconv.h" 1 3 4
# 28 "/usr/include/gconv.h" 3 4
# 1 "/usr/include/wchar.h" 1 3 4
# 48 "/usr/include/wchar.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 49 "/usr/include/wchar.h" 2 3 4
# 29 "/usr/include/gconv.h" 2 3 4


# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 32 "/usr/include/gconv.h" 2 3 4





enum
{
  __GCONV_OK = 0,
  __GCONV_NOCONV,
  __GCONV_NODB,
  __GCONV_NOMEM,

  __GCONV_EMPTY_INPUT,
  __GCONV_FULL_OUTPUT,
  __GCONV_ILLEGAL_INPUT,
  __GCONV_INCOMPLETE_INPUT,

  __GCONV_ILLEGAL_DESCRIPTOR,
  __GCONV_INTERNAL_ERROR
};



enum
{
  __GCONV_IS_LAST = 0x0001,
  __GCONV_IGNORE_ERRORS = 0x0002
};



struct __gconv_step;
struct __gconv_step_data;
struct __gconv_loaded_object;
struct __gconv_trans_data;



typedef int (*__gconv_fct) (struct __gconv_step *, struct __gconv_step_data *,
       __const unsigned char **, __const unsigned char *,
       unsigned char **, size_t *, int, int);


typedef wint_t (*__gconv_btowc_fct) (struct __gconv_step *, unsigned char);


typedef int (*__gconv_init_fct) (struct __gconv_step *);
typedef void (*__gconv_end_fct) (struct __gconv_step *);



typedef int (*__gconv_trans_fct) (struct __gconv_step *,
      struct __gconv_step_data *, void *,
      __const unsigned char *,
      __const unsigned char **,
      __const unsigned char *, unsigned char **,
      size_t *);


typedef int (*__gconv_trans_context_fct) (void *, __const unsigned char *,
       __const unsigned char *,
       unsigned char *, unsigned char *);


typedef int (*__gconv_trans_query_fct) (__const char *, __const char ***,
     size_t *);


typedef int (*__gconv_trans_init_fct) (void **, const char *);
typedef void (*__gconv_trans_end_fct) (void *);

struct __gconv_trans_data
{

  __gconv_trans_fct __trans_fct;
  __gconv_trans_context_fct __trans_context_fct;
  __gconv_trans_end_fct __trans_end_fct;
  void *__data;
  struct __gconv_trans_data *__next;
};



struct __gconv_step
{
  struct __gconv_loaded_object *__shlib_handle;
  __const char *__modname;

  int __counter;

  char *__from_name;
  char *__to_name;

  __gconv_fct __fct;
  __gconv_btowc_fct __btowc_fct;
  __gconv_init_fct __init_fct;
  __gconv_end_fct __end_fct;



  int __min_needed_from;
  int __max_needed_from;
  int __min_needed_to;
  int __max_needed_to;


  int __stateful;

  void *__data;
};



struct __gconv_step_data
{
  unsigned char *__outbuf;
  unsigned char *__outbufend;



  int __flags;



  int __invocation_counter;



  int __internal_use;

  __mbstate_t *__statep;
  __mbstate_t __state;



  struct __gconv_trans_data *__trans;
};



typedef struct __gconv_info
{
  size_t __nsteps;
  struct __gconv_step *__steps;
  __extension__ struct __gconv_step_data __data [];
} *__gconv_t;
# 45 "/usr/include/_G_config.h" 2 3 4
typedef union
{
  struct __gconv_info __cd;
  struct
  {
    struct __gconv_info __cd;
    struct __gconv_step_data __data;
  } __combined;
} _G_iconv_t;

typedef int _G_int16_t __attribute__ ((__mode__ (__HI__)));
typedef int _G_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int _G_uint16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int _G_uint32_t __attribute__ ((__mode__ (__SI__)));
# 33 "/usr/include/libio.h" 2 3 4
# 166 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 176 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 199 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 267 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 315 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 324 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};


typedef struct _IO_FILE _IO_FILE;


struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 360 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, __const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);




typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;


typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;

struct _IO_cookie_file;


extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);







extern int __underflow (_IO_FILE *) __attribute__ ((__nothrow__));
extern int __uflow (_IO_FILE *) __attribute__ ((__nothrow__));
extern int __overflow (_IO_FILE *, int) __attribute__ ((__nothrow__));
extern wint_t __wunderflow (_IO_FILE *) __attribute__ ((__nothrow__));
extern wint_t __wuflow (_IO_FILE *) __attribute__ ((__nothrow__));
extern wint_t __woverflow (_IO_FILE *, wint_t) __attribute__ ((__nothrow__));
# 450 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_putc (int __c, _IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_feof (_IO_FILE *__fp) __attribute__ ((__nothrow__));
extern int _IO_ferror (_IO_FILE *__fp) __attribute__ ((__nothrow__));

extern int _IO_peekc_locked (_IO_FILE *__fp) __attribute__ ((__nothrow__));





extern void _IO_flockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern void _IO_funlockfile (_IO_FILE *) __attribute__ ((__nothrow__));
extern int _IO_ftrylockfile (_IO_FILE *) __attribute__ ((__nothrow__));
# 480 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t) __attribute__ ((__nothrow__));
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t) __attribute__ ((__nothrow__));

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int) __attribute__ ((__nothrow__));
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int) __attribute__ ((__nothrow__));

extern void _IO_free_backup_area (_IO_FILE *) __attribute__ ((__nothrow__));
# 73 "/usr/include/stdio.h" 2 3 4
# 86 "/usr/include/stdio.h" 3 4


typedef _G_fpos_t fpos_t;





typedef _G_fpos64_t fpos64_t;
# 138 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 139 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (__const char *__filename) __attribute__ ((__nothrow__));

extern int rename (__const char *__old, __const char *__new) __attribute__ ((__nothrow__));




extern int renameat (int __oldfd, __const char *__old, int __newfd,
       __const char *__new) __attribute__ ((__nothrow__));








extern FILE *tmpfile (void);
# 179 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void);



extern char *tmpnam (char *__s) __attribute__ ((__nothrow__));





extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__));
# 201 "/usr/include/stdio.h" 3 4
extern char *tempnam (__const char *__dir, __const char *__pfx)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__));








extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);

# 226 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 236 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);









extern FILE *fopen (__const char *__restrict __filename,
      __const char *__restrict __modes);




extern FILE *freopen (__const char *__restrict __filename,
        __const char *__restrict __modes,
        FILE *__restrict __stream);
# 267 "/usr/include/stdio.h" 3 4


extern FILE *fopen64 (__const char *__restrict __filename,
        __const char *__restrict __modes);
extern FILE *freopen64 (__const char *__restrict __filename,
   __const char *__restrict __modes,
   FILE *__restrict __stream);




extern FILE *fdopen (int __fd, __const char *__modes) __attribute__ ((__nothrow__));





extern FILE *fopencookie (void *__restrict __magic_cookie,
     __const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__));


extern FILE *fmemopen (void *__s, size_t __len, __const char *__modes) __attribute__ ((__nothrow__));




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__));






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__));





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__));








extern int fprintf (FILE *__restrict __stream,
      __const char *__restrict __format, ...);




extern int printf (__const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      __const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (__const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, __const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));





extern int snprintf (char *__restrict __s, size_t __maxlen,
       __const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));






extern int vasprintf (char **__restrict __ptr, __const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));
extern int __asprintf (char **__restrict __ptr,
         __const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int asprintf (char **__restrict __ptr,
       __const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));







extern int vdprintf (int __fd, __const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, __const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));








extern int fscanf (FILE *__restrict __stream,
     __const char *__restrict __format, ...) ;




extern int scanf (__const char *__restrict __format, ...) ;

extern int sscanf (__const char *__restrict __s,
     __const char *__restrict __format, ...) __attribute__ ((__nothrow__));








extern int vfscanf (FILE *__restrict __s, __const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (__const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (__const char *__restrict __s,
      __const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__scanf__, 2, 0)));









extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);

# 458 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 469 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);











extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);

# 502 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);








extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;






extern char *gets (char *__s) ;

# 548 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 564 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;








extern int fputs (__const char *__restrict __s, FILE *__restrict __stream);





extern int puts (__const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (__const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) ;

# 625 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (__const char *__restrict __s,
      FILE *__restrict __stream);
# 636 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (__const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream) ;








extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);

# 672 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 691 "/usr/include/stdio.h" 3 4






extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, __const fpos_t *__pos);
# 714 "/usr/include/stdio.h" 3 4



extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, __const fpos64_t *__pos);




extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__)) ;




extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;








extern void perror (__const char *__s);






# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 27 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern __const char *__const sys_errlist[];


extern int _sys_nerr;
extern __const char *__const _sys_errlist[];
# 753 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__)) ;
# 772 "/usr/include/stdio.h" 3 4
extern FILE *popen (__const char *__command, __const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__));





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      __const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       __const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__));
# 842 "/usr/include/stdio.h" 3 4

# 50 "../../../kg++fe/gnu/system.h" 2
# 109 "../../../kg++fe/gnu/system.h"
# 1 "../../../include/gnu/safe-ctype.h" 1
# 44 "../../../include/gnu/safe-ctype.h"
enum {

  _sch_isblank = 0x0001,
  _sch_iscntrl = 0x0002,
  _sch_isdigit = 0x0004,
  _sch_islower = 0x0008,
  _sch_isprint = 0x0010,
  _sch_ispunct = 0x0020,
  _sch_isspace = 0x0040,
  _sch_isupper = 0x0080,
  _sch_isxdigit = 0x0100,


  _sch_isidst = 0x0200,
  _sch_isvsp = 0x0400,
  _sch_isnvsp = 0x0800,


  _sch_isalpha = _sch_isupper|_sch_islower,
  _sch_isalnum = _sch_isalpha|_sch_isdigit,
  _sch_isidnum = _sch_isidst|_sch_isdigit,
  _sch_isgraph = _sch_isalnum|_sch_ispunct,
  _sch_iscppsp = _sch_isvsp|_sch_isnvsp,
  _sch_isbasic = _sch_isprint|_sch_iscppsp

};


extern const unsigned short _sch_istable[256];
# 97 "../../../include/gnu/safe-ctype.h"
extern const unsigned char _sch_toupper[256];
extern const unsigned char _sch_tolower[256];
# 110 "../../../kg++fe/gnu/system.h" 2

# 1 "/usr/include/sys/types.h" 1 3 4
# 29 "/usr/include/sys/types.h" 3 4






typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;




typedef __loff_t loff_t;



typedef __ino_t ino_t;






typedef __ino64_t ino64_t;




typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __pid_t pid_t;




typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;
# 133 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 59 "/usr/include/time.h" 3 4


typedef __clock_t clock_t;



# 75 "/usr/include/time.h" 3 4


typedef __time_t time_t;



# 93 "/usr/include/time.h" 3 4
typedef __clockid_t clockid_t;
# 105 "/usr/include/time.h" 3 4
typedef __timer_t timer_t;
# 134 "/usr/include/sys/types.h" 2 3 4



typedef __useconds_t useconds_t;



typedef __suseconds_t suseconds_t;





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 148 "/usr/include/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
# 195 "/usr/include/sys/types.h" 3 4
typedef int int8_t __attribute__ ((__mode__ (__QI__)));
typedef int int16_t __attribute__ ((__mode__ (__HI__)));
typedef int int32_t __attribute__ ((__mode__ (__SI__)));
typedef int int64_t __attribute__ ((__mode__ (__DI__)));


typedef unsigned int u_int8_t __attribute__ ((__mode__ (__QI__)));
typedef unsigned int u_int16_t __attribute__ ((__mode__ (__HI__)));
typedef unsigned int u_int32_t __attribute__ ((__mode__ (__SI__)));
typedef unsigned int u_int64_t __attribute__ ((__mode__ (__DI__)));

typedef int register_t __attribute__ ((__mode__ (__word__)));
# 217 "/usr/include/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 37 "/usr/include/endian.h" 3 4
# 1 "/usr/include/bits/endian.h" 1 3 4
# 38 "/usr/include/endian.h" 2 3 4
# 218 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/select.h" 1 3 4
# 31 "/usr/include/sys/select.h" 3 4
# 1 "/usr/include/bits/select.h" 1 3 4
# 32 "/usr/include/sys/select.h" 2 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 23 "/usr/include/bits/sigset.h" 3 4
typedef int __sig_atomic_t;




typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
# 35 "/usr/include/sys/select.h" 2 3 4



typedef __sigset_t sigset_t;





# 1 "/usr/include/time.h" 1 3 4
# 121 "/usr/include/time.h" 3 4
struct timespec
  {
    __time_t tv_sec;
    long int tv_nsec;
  };
# 45 "/usr/include/sys/select.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 69 "/usr/include/bits/time.h" 3 4
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
  };
# 47 "/usr/include/sys/select.h" 2 3 4
# 55 "/usr/include/sys/select.h" 3 4
typedef long int __fd_mask;
# 67 "/usr/include/sys/select.h" 3 4
typedef struct
  {



    __fd_mask fds_bits[1024 / (8 * sizeof (__fd_mask))];





  } fd_set;






typedef __fd_mask fd_mask;
# 99 "/usr/include/sys/select.h" 3 4

# 109 "/usr/include/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 121 "/usr/include/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);



# 221 "/usr/include/sys/types.h" 2 3 4


# 1 "/usr/include/sys/sysmacros.h" 1 3 4
# 29 "/usr/include/sys/sysmacros.h" 3 4
__extension__
extern __inline unsigned int gnu_dev_major (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern __inline unsigned int gnu_dev_minor (unsigned long long int __dev)
     __attribute__ ((__nothrow__));
__extension__
extern __inline unsigned long long int gnu_dev_makedev (unsigned int __major,
       unsigned int __minor)
     __attribute__ ((__nothrow__));


__extension__ extern __inline unsigned int
__attribute__ ((__nothrow__)) gnu_dev_major (unsigned long long int __dev)
{
  return ((__dev >> 8) & 0xfff) | ((unsigned int) (__dev >> 32) & ~0xfff);
}

__extension__ extern __inline unsigned int
__attribute__ ((__nothrow__)) gnu_dev_minor (unsigned long long int __dev)
{
  return (__dev & 0xff) | ((unsigned int) (__dev >> 12) & ~0xff);
}

__extension__ extern __inline unsigned long long int
__attribute__ ((__nothrow__)) gnu_dev_makedev (unsigned int __major, unsigned int __minor)
{
  return ((__minor & 0xff) | ((__major & 0xfff) << 8)
   | (((unsigned long long int) (__minor & ~0xff)) << 12)
   | (((unsigned long long int) (__major & ~0xfff)) << 32));
}
# 224 "/usr/include/sys/types.h" 2 3 4




typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 262 "/usr/include/sys/types.h" 3 4
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;





# 1 "/usr/include/bits/pthreadtypes.h" 1 3 4
# 36 "/usr/include/bits/pthreadtypes.h" 3 4
typedef unsigned long int pthread_t;


typedef union
{
  char __size[36];
  long int __align;
} pthread_attr_t;


typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;




typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;


    int __kind;
    unsigned int __nusers;
    __extension__ union
    {
      int __spins;
      __pthread_slist_t __list;
    };
  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;

typedef union
{
  char __size[4];
  long int __align;
} pthread_mutexattr_t;




typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;

typedef union
{
  char __size[4];
  long int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;





typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;


    unsigned int __flags;
    int __writer;
  } __data;
  char __size[32];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[20];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 271 "/usr/include/sys/types.h" 2 3 4



# 112 "../../../kg++fe/gnu/system.h" 2

# 1 "/usr/include/errno.h" 1 3 4
# 32 "/usr/include/errno.h" 3 4




# 1 "/usr/include/bits/errno.h" 1 3 4
# 25 "/usr/include/bits/errno.h" 3 4
# 1 "/usr/include/linux/errno.h" 1 3 4



# 1 "/usr/include/asm/errno.h" 1 3 4






# 1 "/usr/include/asm-i386/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno.h" 1 3 4



# 1 "/usr/include/asm-generic/errno-base.h" 1 3 4
# 5 "/usr/include/asm-generic/errno.h" 2 3 4
# 5 "/usr/include/asm-i386/errno.h" 2 3 4
# 8 "/usr/include/asm/errno.h" 2 3 4
# 5 "/usr/include/linux/errno.h" 2 3 4
# 26 "/usr/include/bits/errno.h" 2 3 4
# 43 "/usr/include/bits/errno.h" 3 4
extern int *__errno_location (void) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 37 "/usr/include/errno.h" 2 3 4
# 55 "/usr/include/errno.h" 3 4
extern char *program_invocation_name, *program_invocation_short_name;




# 69 "/usr/include/errno.h" 3 4
typedef int error_t;
# 114 "../../../kg++fe/gnu/system.h" 2






# 1 "/usr/include/string.h" 1 3 4
# 28 "/usr/include/string.h" 3 4





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4




extern void *memcpy (void *__restrict __dest,
       __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, __const void *__src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memccpy (void *__restrict __dest, __const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memchr (__const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern void *rawmemchr (__const void *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


extern void *memrchr (__const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, __const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));






# 1 "/usr/include/xlocale.h" 1 3 4
# 28 "/usr/include/xlocale.h" 3 4
typedef struct __locale_struct
{

  struct locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
} *__locale_t;
# 119 "/usr/include/string.h" 2 3 4


extern int strcoll_l (__const char *__s1, __const char *__s2, __locale_t __l)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern size_t strxfrm_l (char *__dest, __const char *__src, size_t __n,
    __locale_t __l) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));




extern char *strdup (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (__const char *__string, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 165 "/usr/include/string.h" 3 4


extern char *strchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));

extern char *strrchr (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strchrnul (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strcspn (__const char *__s, __const char *__reject)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strpbrk (__const char *__s, __const char *__accept)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strstr (__const char *__haystack, __const char *__needle)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *strtok (char *__restrict __s, __const char *__restrict __delim)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));




extern char *__strtok_r (char *__restrict __s,
    __const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, __const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));




extern char *strcasestr (__const char *__haystack, __const char *__needle)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern void *memmem (__const void *__haystack, size_t __haystacklen,
       __const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)));



extern void *__mempcpy (void *__restrict __dest,
   __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        __const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));





extern size_t strlen (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern size_t strnlen (__const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));





extern char *strerror (int __errnum) __attribute__ ((__nothrow__));

# 281 "/usr/include/string.h" 3 4
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));





extern void __bzero (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern void bcopy (__const void *__src, void *__dest, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int bcmp (__const void *__s1, __const void *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *index (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));


extern char *rindex (__const char *__s, int __c)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));



extern int ffs (int __i) __attribute__ ((__nothrow__)) __attribute__ ((__const__));




extern int ffsl (long int __l) __attribute__ ((__nothrow__)) __attribute__ ((__const__));

__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));




extern int strcasecmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (__const char *__s1, __const char *__s2, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));





extern int strcasecmp_l (__const char *__s1, __const char *__s2,
    __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));

extern int strncasecmp_l (__const char *__s1, __const char *__s2,
     size_t __n, __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));





extern char *strsep (char **__restrict __stringp,
       __const char *__restrict __delim)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));




extern int strverscmp (__const char *__s1, __const char *__s2)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strsignal (int __sig) __attribute__ ((__nothrow__));


extern char *__stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, __const char *__restrict __src)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        __const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strfry (char *__string) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern char *basename (__const char *__filename) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 426 "/usr/include/string.h" 3 4

# 121 "../../../kg++fe/gnu/system.h" 2
# 1 "/usr/include/strings.h" 1 3 4
# 122 "../../../kg++fe/gnu/system.h" 2
# 133 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/stdlib.h" 1 3 4
# 33 "/usr/include/stdlib.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 34 "/usr/include/stdlib.h" 2 3 4








# 1 "/usr/include/bits/waitflags.h" 1 3 4
# 43 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/bits/waitstatus.h" 1 3 4
# 67 "/usr/include/bits/waitstatus.h" 3 4
union wait
  {
    int w_status;
    struct
      {

 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;







      } __wait_terminated;
    struct
      {

 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;






      } __wait_stopped;
  };
# 44 "/usr/include/stdlib.h" 2 3 4
# 68 "/usr/include/stdlib.h" 3 4
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS __attribute__ ((__transparent_union__));
# 96 "/usr/include/stdlib.h" 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;







__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;


# 140 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__)) ;




extern double atof (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





__extension__ extern long long int atoll (__const char *__nptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;





extern double strtod (__const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern float strtof (__const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern long double strtold (__const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern long int strtol (__const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern unsigned long int strtoul (__const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




__extension__
extern long long int strtoq (__const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtouq (__const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





__extension__
extern long long int strtoll (__const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

__extension__
extern unsigned long long int strtoull (__const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

# 240 "/usr/include/stdlib.h" 3 4
extern long int strtol_l (__const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     __locale_t __loc) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 4))) ;

extern unsigned long int strtoul_l (__const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 4))) ;

__extension__
extern long long int strtoll_l (__const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 4))) ;

__extension__
extern unsigned long long int strtoull_l (__const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 4))) ;

extern double strtod_l (__const char *__restrict __nptr,
   char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3))) ;

extern float strtof_l (__const char *__restrict __nptr,
         char **__restrict __endptr, __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3))) ;

extern long double strtold_l (__const char *__restrict __nptr,
         char **__restrict __endptr,
         __locale_t __loc)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3))) ;






extern double __strtod_internal (__const char *__restrict __nptr,
     char **__restrict __endptr, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
extern float __strtof_internal (__const char *__restrict __nptr,
    char **__restrict __endptr, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
extern long double __strtold_internal (__const char *__restrict __nptr,
           char **__restrict __endptr,
           int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;

extern long int __strtol_internal (__const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



extern unsigned long int __strtoul_internal (__const char *__restrict __nptr,
          char **__restrict __endptr,
          int __base, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




__extension__
extern long long int __strtoll_internal (__const char *__restrict __nptr,
      char **__restrict __endptr,
      int __base, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



__extension__
extern unsigned long long int __strtoull_internal (__const char *
         __restrict __nptr,
         char **__restrict __endptr,
         int __base, int __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 429 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__)) ;


extern long int a64l (__const char *__s)
     __attribute__ ((__nothrow__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;
# 445 "/usr/include/stdlib.h" 3 4
extern long int random (void) __attribute__ ((__nothrow__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));






extern int rand (void) __attribute__ ((__nothrow__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__));




extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__));







extern double drand48 (void) __attribute__ ((__nothrow__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    unsigned long long int __a;
  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));









extern void *malloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;







extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));

extern void free (void *__ptr) __attribute__ ((__nothrow__));




extern void cfree (void *__ptr) __attribute__ ((__nothrow__));



# 1 "/usr/include/alloca.h" 1 3 4
# 25 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 26 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__));






# 613 "/usr/include/stdlib.h" 2 3 4




extern void *valloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern void abort (void) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern void exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));






extern void _Exit (int __status) __attribute__ ((__nothrow__)) __attribute__ ((__noreturn__));






extern char *getenv (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;




extern char *__secure_getenv (__const char *__name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern int putenv (char *__string) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (__const char *__name, __const char *__value, int __replace)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (__const char *__name) __attribute__ ((__nothrow__));






extern int clearenv (void) __attribute__ ((__nothrow__));
# 698 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 709 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 719 "/usr/include/stdlib.h" 3 4
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 729 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;








extern int system (__const char *__command) ;







extern char *canonicalize_file_name (__const char *__name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 757 "/usr/include/stdlib.h" 3 4
extern char *realpath (__const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__)) ;






typedef int (*__compar_fn_t) (__const void *, __const void *);


typedef __compar_fn_t comparison_fn_t;






extern void *bsearch (__const void *__key, __const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;



extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));



extern int abs (int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;



__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;







extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;




__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__)) ;

# 822 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4, 5)));







extern int mblen (__const char *__s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int mbtowc (wchar_t *__restrict __pwc,
     __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__)) ;


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__)) ;



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   __const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__));

extern size_t wcstombs (char *__restrict __s,
   __const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__));








extern int rpmatch (__const char *__response) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 910 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *__const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;





extern void setkey (__const char *__key) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));







extern int posix_openpt (int __oflag) ;







extern int grantpt (int __fd) __attribute__ ((__nothrow__));



extern int unlockpt (int __fd) __attribute__ ((__nothrow__));




extern char *ptsname (int __fd) __attribute__ ((__nothrow__)) ;






extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));


extern int getpt (void);






extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 978 "/usr/include/stdlib.h" 3 4

# 134 "../../../kg++fe/gnu/system.h" 2
# 156 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/unistd.h" 1 3 4
# 28 "/usr/include/unistd.h" 3 4

# 171 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/bits/posix_opt.h" 1 3 4
# 172 "/usr/include/unistd.h" 2 3 4



# 1 "/usr/include/bits/environments.h" 1 3 4
# 176 "/usr/include/unistd.h" 2 3 4
# 195 "/usr/include/unistd.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 196 "/usr/include/unistd.h" 2 3 4
# 236 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;






typedef __socklen_t socklen_t;
# 256 "/usr/include/unistd.h" 3 4
extern int access (__const char *__name, int __type) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int euidaccess (__const char *__name, int __type)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int eaccess (__const char *__name, int __type)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int faccessat (int __fd, __const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2))) ;
# 299 "/usr/include/unistd.h" 3 4
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__));
# 310 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__));






extern int close (int __fd);






extern ssize_t read (int __fd, void *__buf, size_t __nbytes) ;





extern ssize_t write (int __fd, __const void *__buf, size_t __n) ;
# 341 "/usr/include/unistd.h" 3 4
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;






extern ssize_t pwrite (int __fd, __const void *__buf, size_t __n,
         __off_t __offset) ;
# 369 "/usr/include/unistd.h" 3 4
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) ;


extern ssize_t pwrite64 (int __fd, __const void *__buf, size_t __n,
    __off64_t __offset) ;







extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__)) ;
# 391 "/usr/include/unistd.h" 3 4
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__));
# 403 "/usr/include/unistd.h" 3 4
extern unsigned int sleep (unsigned int __seconds);






extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__));






extern int usleep (__useconds_t __useconds);
# 427 "/usr/include/unistd.h" 3 4
extern int pause (void);



extern int chown (__const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__)) ;




extern int lchown (__const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;






extern int fchownat (int __fd, __const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2))) ;



extern int chdir (__const char *__path) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



extern int fchdir (int __fd) __attribute__ ((__nothrow__)) ;
# 469 "/usr/include/unistd.h" 3 4
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__)) ;





extern char *get_current_dir_name (void) __attribute__ ((__nothrow__));






extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) ;




extern int dup (int __fd) __attribute__ ((__nothrow__)) ;


extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__));


extern char **__environ;

extern char **environ;





extern int execve (__const char *__path, char *__const __argv[],
     char *__const __envp[]) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int fexecve (int __fd, char *__const __argv[], char *__const __envp[])
     __attribute__ ((__nothrow__));




extern int execv (__const char *__path, char *__const __argv[])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int execle (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int execl (__const char *__path, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int execvp (__const char *__file, char *__const __argv[])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int execlp (__const char *__file, __const char *__arg, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int nice (int __inc) __attribute__ ((__nothrow__)) ;




extern void _exit (int __status) __attribute__ ((__noreturn__));





# 1 "/usr/include/bits/confname.h" 1 3 4
# 26 "/usr/include/bits/confname.h" 3 4
enum
  {
    _PC_LINK_MAX,

    _PC_MAX_CANON,

    _PC_MAX_INPUT,

    _PC_NAME_MAX,

    _PC_PATH_MAX,

    _PC_PIPE_BUF,

    _PC_CHOWN_RESTRICTED,

    _PC_NO_TRUNC,

    _PC_VDISABLE,

    _PC_SYNC_IO,

    _PC_ASYNC_IO,

    _PC_PRIO_IO,

    _PC_SOCK_MAXBUF,

    _PC_FILESIZEBITS,

    _PC_REC_INCR_XFER_SIZE,

    _PC_REC_MAX_XFER_SIZE,

    _PC_REC_MIN_XFER_SIZE,

    _PC_REC_XFER_ALIGN,

    _PC_ALLOC_SIZE_MIN,

    _PC_SYMLINK_MAX,

    _PC_2_SYMLINKS

  };


enum
  {
    _SC_ARG_MAX,

    _SC_CHILD_MAX,

    _SC_CLK_TCK,

    _SC_NGROUPS_MAX,

    _SC_OPEN_MAX,

    _SC_STREAM_MAX,

    _SC_TZNAME_MAX,

    _SC_JOB_CONTROL,

    _SC_SAVED_IDS,

    _SC_REALTIME_SIGNALS,

    _SC_PRIORITY_SCHEDULING,

    _SC_TIMERS,

    _SC_ASYNCHRONOUS_IO,

    _SC_PRIORITIZED_IO,

    _SC_SYNCHRONIZED_IO,

    _SC_FSYNC,

    _SC_MAPPED_FILES,

    _SC_MEMLOCK,

    _SC_MEMLOCK_RANGE,

    _SC_MEMORY_PROTECTION,

    _SC_MESSAGE_PASSING,

    _SC_SEMAPHORES,

    _SC_SHARED_MEMORY_OBJECTS,

    _SC_AIO_LISTIO_MAX,

    _SC_AIO_MAX,

    _SC_AIO_PRIO_DELTA_MAX,

    _SC_DELAYTIMER_MAX,

    _SC_MQ_OPEN_MAX,

    _SC_MQ_PRIO_MAX,

    _SC_VERSION,

    _SC_PAGESIZE,


    _SC_RTSIG_MAX,

    _SC_SEM_NSEMS_MAX,

    _SC_SEM_VALUE_MAX,

    _SC_SIGQUEUE_MAX,

    _SC_TIMER_MAX,




    _SC_BC_BASE_MAX,

    _SC_BC_DIM_MAX,

    _SC_BC_SCALE_MAX,

    _SC_BC_STRING_MAX,

    _SC_COLL_WEIGHTS_MAX,

    _SC_EQUIV_CLASS_MAX,

    _SC_EXPR_NEST_MAX,

    _SC_LINE_MAX,

    _SC_RE_DUP_MAX,

    _SC_CHARCLASS_NAME_MAX,


    _SC_2_VERSION,

    _SC_2_C_BIND,

    _SC_2_C_DEV,

    _SC_2_FORT_DEV,

    _SC_2_FORT_RUN,

    _SC_2_SW_DEV,

    _SC_2_LOCALEDEF,


    _SC_PII,

    _SC_PII_XTI,

    _SC_PII_SOCKET,

    _SC_PII_INTERNET,

    _SC_PII_OSI,

    _SC_POLL,

    _SC_SELECT,

    _SC_UIO_MAXIOV,

    _SC_IOV_MAX = _SC_UIO_MAXIOV,

    _SC_PII_INTERNET_STREAM,

    _SC_PII_INTERNET_DGRAM,

    _SC_PII_OSI_COTS,

    _SC_PII_OSI_CLTS,

    _SC_PII_OSI_M,

    _SC_T_IOV_MAX,



    _SC_THREADS,

    _SC_THREAD_SAFE_FUNCTIONS,

    _SC_GETGR_R_SIZE_MAX,

    _SC_GETPW_R_SIZE_MAX,

    _SC_LOGIN_NAME_MAX,

    _SC_TTY_NAME_MAX,

    _SC_THREAD_DESTRUCTOR_ITERATIONS,

    _SC_THREAD_KEYS_MAX,

    _SC_THREAD_STACK_MIN,

    _SC_THREAD_THREADS_MAX,

    _SC_THREAD_ATTR_STACKADDR,

    _SC_THREAD_ATTR_STACKSIZE,

    _SC_THREAD_PRIORITY_SCHEDULING,

    _SC_THREAD_PRIO_INHERIT,

    _SC_THREAD_PRIO_PROTECT,

    _SC_THREAD_PROCESS_SHARED,


    _SC_NPROCESSORS_CONF,

    _SC_NPROCESSORS_ONLN,

    _SC_PHYS_PAGES,

    _SC_AVPHYS_PAGES,

    _SC_ATEXIT_MAX,

    _SC_PASS_MAX,


    _SC_XOPEN_VERSION,

    _SC_XOPEN_XCU_VERSION,

    _SC_XOPEN_UNIX,

    _SC_XOPEN_CRYPT,

    _SC_XOPEN_ENH_I18N,

    _SC_XOPEN_SHM,


    _SC_2_CHAR_TERM,

    _SC_2_C_VERSION,

    _SC_2_UPE,


    _SC_XOPEN_XPG2,

    _SC_XOPEN_XPG3,

    _SC_XOPEN_XPG4,


    _SC_CHAR_BIT,

    _SC_CHAR_MAX,

    _SC_CHAR_MIN,

    _SC_INT_MAX,

    _SC_INT_MIN,

    _SC_LONG_BIT,

    _SC_WORD_BIT,

    _SC_MB_LEN_MAX,

    _SC_NZERO,

    _SC_SSIZE_MAX,

    _SC_SCHAR_MAX,

    _SC_SCHAR_MIN,

    _SC_SHRT_MAX,

    _SC_SHRT_MIN,

    _SC_UCHAR_MAX,

    _SC_UINT_MAX,

    _SC_ULONG_MAX,

    _SC_USHRT_MAX,


    _SC_NL_ARGMAX,

    _SC_NL_LANGMAX,

    _SC_NL_MSGMAX,

    _SC_NL_NMAX,

    _SC_NL_SETMAX,

    _SC_NL_TEXTMAX,


    _SC_XBS5_ILP32_OFF32,

    _SC_XBS5_ILP32_OFFBIG,

    _SC_XBS5_LP64_OFF64,

    _SC_XBS5_LPBIG_OFFBIG,


    _SC_XOPEN_LEGACY,

    _SC_XOPEN_REALTIME,

    _SC_XOPEN_REALTIME_THREADS,


    _SC_ADVISORY_INFO,

    _SC_BARRIERS,

    _SC_BASE,

    _SC_C_LANG_SUPPORT,

    _SC_C_LANG_SUPPORT_R,

    _SC_CLOCK_SELECTION,

    _SC_CPUTIME,

    _SC_THREAD_CPUTIME,

    _SC_DEVICE_IO,

    _SC_DEVICE_SPECIFIC,

    _SC_DEVICE_SPECIFIC_R,

    _SC_FD_MGMT,

    _SC_FIFO,

    _SC_PIPE,

    _SC_FILE_ATTRIBUTES,

    _SC_FILE_LOCKING,

    _SC_FILE_SYSTEM,

    _SC_MONOTONIC_CLOCK,

    _SC_MULTI_PROCESS,

    _SC_SINGLE_PROCESS,

    _SC_NETWORKING,

    _SC_READER_WRITER_LOCKS,

    _SC_SPIN_LOCKS,

    _SC_REGEXP,

    _SC_REGEX_VERSION,

    _SC_SHELL,

    _SC_SIGNALS,

    _SC_SPAWN,

    _SC_SPORADIC_SERVER,

    _SC_THREAD_SPORADIC_SERVER,

    _SC_SYSTEM_DATABASE,

    _SC_SYSTEM_DATABASE_R,

    _SC_TIMEOUTS,

    _SC_TYPED_MEMORY_OBJECTS,

    _SC_USER_GROUPS,

    _SC_USER_GROUPS_R,

    _SC_2_PBS,

    _SC_2_PBS_ACCOUNTING,

    _SC_2_PBS_LOCATE,

    _SC_2_PBS_MESSAGE,

    _SC_2_PBS_TRACK,

    _SC_SYMLOOP_MAX,

    _SC_STREAMS,

    _SC_2_PBS_CHECKPOINT,


    _SC_V6_ILP32_OFF32,

    _SC_V6_ILP32_OFFBIG,

    _SC_V6_LP64_OFF64,

    _SC_V6_LPBIG_OFFBIG,


    _SC_HOST_NAME_MAX,

    _SC_TRACE,

    _SC_TRACE_EVENT_FILTER,

    _SC_TRACE_INHERIT,

    _SC_TRACE_LOG,


    _SC_LEVEL1_ICACHE_SIZE,

    _SC_LEVEL1_ICACHE_ASSOC,

    _SC_LEVEL1_ICACHE_LINESIZE,

    _SC_LEVEL1_DCACHE_SIZE,

    _SC_LEVEL1_DCACHE_ASSOC,

    _SC_LEVEL1_DCACHE_LINESIZE,

    _SC_LEVEL2_CACHE_SIZE,

    _SC_LEVEL2_CACHE_ASSOC,

    _SC_LEVEL2_CACHE_LINESIZE,

    _SC_LEVEL3_CACHE_SIZE,

    _SC_LEVEL3_CACHE_ASSOC,

    _SC_LEVEL3_CACHE_LINESIZE,

    _SC_LEVEL4_CACHE_SIZE,

    _SC_LEVEL4_CACHE_ASSOC,

    _SC_LEVEL4_CACHE_LINESIZE,



    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,

    _SC_RAW_SOCKETS

  };


enum
  {
    _CS_PATH,


    _CS_V6_WIDTH_RESTRICTED_ENVS,


    _CS_GNU_LIBC_VERSION,

    _CS_GNU_LIBPTHREAD_VERSION,


    _CS_LFS_CFLAGS = 1000,

    _CS_LFS_LDFLAGS,

    _CS_LFS_LIBS,

    _CS_LFS_LINTFLAGS,

    _CS_LFS64_CFLAGS,

    _CS_LFS64_LDFLAGS,

    _CS_LFS64_LIBS,

    _CS_LFS64_LINTFLAGS,


    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,

    _CS_XBS5_ILP32_OFF32_LDFLAGS,

    _CS_XBS5_ILP32_OFF32_LIBS,

    _CS_XBS5_ILP32_OFF32_LINTFLAGS,

    _CS_XBS5_ILP32_OFFBIG_CFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,

    _CS_XBS5_ILP32_OFFBIG_LIBS,

    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,

    _CS_XBS5_LP64_OFF64_CFLAGS,

    _CS_XBS5_LP64_OFF64_LDFLAGS,

    _CS_XBS5_LP64_OFF64_LIBS,

    _CS_XBS5_LP64_OFF64_LINTFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,

    _CS_XBS5_LPBIG_OFFBIG_LIBS,

    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,


    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFF32_LIBS,

    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,

    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,

    _CS_POSIX_V6_LP64_OFF64_CFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,

    _CS_POSIX_V6_LP64_OFF64_LIBS,

    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,

    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS

  };
# 553 "/usr/include/unistd.h" 2 3 4


extern long int pathconf (__const char *__path, int __name)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__));


extern long int sysconf (int __name) __attribute__ ((__nothrow__)) __attribute__ ((__const__));



extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__));




extern __pid_t getpid (void) __attribute__ ((__nothrow__));


extern __pid_t getppid (void) __attribute__ ((__nothrow__));




extern __pid_t getpgrp (void) __attribute__ ((__nothrow__));
# 589 "/usr/include/unistd.h" 3 4
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__));

extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__));






extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__));
# 615 "/usr/include/unistd.h" 3 4
extern int setpgrp (void) __attribute__ ((__nothrow__));
# 632 "/usr/include/unistd.h" 3 4
extern __pid_t setsid (void) __attribute__ ((__nothrow__));



extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__));



extern __uid_t getuid (void) __attribute__ ((__nothrow__));


extern __uid_t geteuid (void) __attribute__ ((__nothrow__));


extern __gid_t getgid (void) __attribute__ ((__nothrow__));


extern __gid_t getegid (void) __attribute__ ((__nothrow__));




extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__)) ;



extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__));






extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__));




extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__));




extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__));






extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__));




extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__));




extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__));





extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__));



extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__));



extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__));



extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__));






extern __pid_t fork (void) __attribute__ ((__nothrow__));






extern __pid_t vfork (void) __attribute__ ((__nothrow__));





extern char *ttyname (int __fd) __attribute__ ((__nothrow__));



extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2))) ;



extern int isatty (int __fd) __attribute__ ((__nothrow__));





extern int ttyslot (void) __attribute__ ((__nothrow__));




extern int link (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int linkat (int __fromfd, __const char *__from, int __tofd,
     __const char *__to, int __flags)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4))) ;




extern int symlink (__const char *__from, __const char *__to)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern ssize_t readlink (__const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2))) ;




extern int symlinkat (__const char *__from, int __tofd,
        __const char *__to) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3))) ;


extern ssize_t readlinkat (int __fd, __const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3))) ;



extern int unlink (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int unlinkat (int __fd, __const char *__name, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));



extern int rmdir (__const char *__path) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__));


extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__));






extern char *getlogin (void);







extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));




extern int setlogin (__const char *__name) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
# 835 "/usr/include/unistd.h" 3 4
# 1 "../../../include/gnu/getopt.h" 1 3 4
# 40 "../../../include/gnu/getopt.h" 3 4
extern char *optarg;
# 54 "../../../include/gnu/getopt.h" 3 4
extern int optind;




extern int opterr;



extern int optopt;
# 86 "../../../include/gnu/getopt.h" 3 4
struct option
{

  const char *name;





  int has_arg;
  int *flag;
  int val;
};
# 117 "../../../include/gnu/getopt.h" 3 4
extern int getopt (int argc, char *const *argv, const char *shortopts);







extern int getopt_long (int argc, char *const *argv, const char *shortopts,
          const struct option *longopts, int *longind);
extern int getopt_long_only (int argc, char *const *argv,
        const char *shortopts,
               const struct option *longopts, int *longind);


extern int _getopt_internal (int argc, char *const *argv,
        const char *shortopts,
               const struct option *longopts, int *longind,
        int long_only);
# 836 "/usr/include/unistd.h" 2 3 4







extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int sethostname (__const char *__name, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



extern int sethostid (long int __id) __attribute__ ((__nothrow__)) ;





extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
extern int setdomainname (__const char *__name, size_t __len)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;





extern int vhangup (void) __attribute__ ((__nothrow__));


extern int revoke (__const char *__file) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;







extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int acct (__const char *__name) __attribute__ ((__nothrow__));



extern char *getusershell (void) __attribute__ ((__nothrow__));
extern void endusershell (void) __attribute__ ((__nothrow__));
extern void setusershell (void) __attribute__ ((__nothrow__));





extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__)) ;






extern int chroot (__const char *__path) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;



extern char *getpass (__const char *__prompt) __attribute__ ((__nonnull__ (1)));
# 921 "/usr/include/unistd.h" 3 4
extern int fsync (int __fd);






extern long int gethostid (void);


extern void sync (void) __attribute__ ((__nothrow__));




extern int getpagesize (void) __attribute__ ((__nothrow__)) __attribute__ ((__const__));




extern int getdtablesize (void) __attribute__ ((__nothrow__));




extern int truncate (__const char *__file, __off_t __length)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 958 "/usr/include/unistd.h" 3 4
extern int truncate64 (__const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1))) ;
# 968 "/usr/include/unistd.h" 3 4
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__)) ;
# 978 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__)) ;
# 988 "/usr/include/unistd.h" 3 4
extern int brk (void *__addr) __attribute__ ((__nothrow__)) ;





extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__));
# 1009 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__));
# 1032 "/usr/include/unistd.h" 3 4
extern int lockf (int __fd, int __cmd, __off_t __len) ;
# 1042 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) ;
# 1063 "/usr/include/unistd.h" 3 4
extern int fdatasync (int __fildes) __attribute__ ((__nothrow__));







extern char *crypt (__const char *__key, __const char *__salt)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern void encrypt (char *__block, int __edflag) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern void swab (__const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));







extern char *ctermid (char *__s) __attribute__ ((__nothrow__));
# 1101 "/usr/include/unistd.h" 3 4

# 157 "../../../kg++fe/gnu/system.h" 2



# 1 "/usr/include/sys/param.h" 1 3 4
# 22 "/usr/include/sys/param.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 11 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/syslimits.h" 1 3 4






# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 122 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 3 4
# 1 "/usr/include/limits.h" 1 3 4
# 145 "/usr/include/limits.h" 3 4
# 1 "/usr/include/bits/posix1_lim.h" 1 3 4
# 153 "/usr/include/bits/posix1_lim.h" 3 4
# 1 "/usr/include/bits/local_lim.h" 1 3 4
# 36 "/usr/include/bits/local_lim.h" 3 4
# 1 "/usr/include/linux/limits.h" 1 3 4
# 37 "/usr/include/bits/local_lim.h" 2 3 4
# 154 "/usr/include/bits/posix1_lim.h" 2 3 4
# 146 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/posix2_lim.h" 1 3 4
# 150 "/usr/include/limits.h" 2 3 4



# 1 "/usr/include/bits/xopen_lim.h" 1 3 4
# 34 "/usr/include/bits/xopen_lim.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 35 "/usr/include/bits/xopen_lim.h" 2 3 4
# 154 "/usr/include/limits.h" 2 3 4
# 123 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 2 3 4
# 8 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/syslimits.h" 2 3 4
# 12 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 2 3 4
# 23 "/usr/include/sys/param.h" 2 3 4

# 1 "/usr/include/linux/param.h" 1 3 4



# 1 "/usr/include/asm/param.h" 1 3 4






# 1 "/usr/include/asm-i386/param.h" 1 3 4
# 8 "/usr/include/asm/param.h" 2 3 4
# 5 "/usr/include/linux/param.h" 2 3 4
# 25 "/usr/include/sys/param.h" 2 3 4
# 161 "../../../kg++fe/gnu/system.h" 2





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 167 "../../../kg++fe/gnu/system.h" 2



# 1 "../../../kg++fe/gnu/hwint.h" 1
# 171 "../../../kg++fe/gnu/system.h" 2
# 199 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/sys/time.h" 1 3 4
# 27 "/usr/include/sys/time.h" 3 4
# 1 "/usr/include/time.h" 1 3 4
# 28 "/usr/include/sys/time.h" 2 3 4

# 1 "/usr/include/bits/time.h" 1 3 4
# 30 "/usr/include/sys/time.h" 2 3 4
# 39 "/usr/include/sys/time.h" 3 4

# 57 "/usr/include/sys/time.h" 3 4
struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };

typedef struct timezone *__restrict __timezone_ptr_t;
# 73 "/usr/include/sys/time.h" 3 4
extern int gettimeofday (struct timeval *__restrict __tv,
    __timezone_ptr_t __tz) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int settimeofday (__const struct timeval *__tv,
    __const struct timezone *__tz)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int adjtime (__const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__));




enum __itimer_which
  {

    ITIMER_REAL = 0,


    ITIMER_VIRTUAL = 1,



    ITIMER_PROF = 2

  };



struct itimerval
  {

    struct timeval it_interval;

    struct timeval it_value;
  };




typedef enum __itimer_which __itimer_which_t;






extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__));




extern int setitimer (__itimer_which_t __which,
        __const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__));




extern int utimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int lutimes (__const char *__file, __const struct timeval __tvp[2])
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int futimes (int __fd, __const struct timeval __tvp[2]) __attribute__ ((__nothrow__));






extern int futimesat (int __fd, __const char *__file,
        __const struct timeval __tvp[2]) __attribute__ ((__nothrow__));
# 191 "/usr/include/sys/time.h" 3 4

# 200 "../../../kg++fe/gnu/system.h" 2
# 1 "/usr/include/time.h" 1 3 4
# 31 "/usr/include/time.h" 3 4








# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 40 "/usr/include/time.h" 2 3 4



# 1 "/usr/include/bits/time.h" 1 3 4
# 44 "/usr/include/time.h" 2 3 4
# 132 "/usr/include/time.h" 3 4


struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;


  long int tm_gmtoff;
  __const char *tm_zone;




};








struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };


struct sigevent;
# 181 "/usr/include/time.h" 3 4



extern clock_t clock (void) __attribute__ ((__nothrow__));


extern time_t time (time_t *__timer) __attribute__ ((__nothrow__));


extern double difftime (time_t __time1, time_t __time0)
     __attribute__ ((__nothrow__)) __attribute__ ((__const__));


extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__));





extern size_t strftime (char *__restrict __s, size_t __maxsize,
   __const char *__restrict __format,
   __const struct tm *__restrict __tp) __attribute__ ((__nothrow__));





extern char *strptime (__const char *__restrict __s,
         __const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__));







extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     __const char *__restrict __format,
     __const struct tm *__restrict __tp,
     __locale_t __loc) __attribute__ ((__nothrow__));

extern char *strptime_l (__const char *__restrict __s,
    __const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) __attribute__ ((__nothrow__));






extern struct tm *gmtime (__const time_t *__timer) __attribute__ ((__nothrow__));



extern struct tm *localtime (__const time_t *__timer) __attribute__ ((__nothrow__));





extern struct tm *gmtime_r (__const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__));



extern struct tm *localtime_r (__const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__));





extern char *asctime (__const struct tm *__tp) __attribute__ ((__nothrow__));


extern char *ctime (__const time_t *__timer) __attribute__ ((__nothrow__));







extern char *asctime_r (__const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__));


extern char *ctime_r (__const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__));




extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;




extern char *tzname[2];



extern void tzset (void) __attribute__ ((__nothrow__));



extern int daylight;
extern long int timezone;





extern int stime (__const time_t *__when) __attribute__ ((__nothrow__));
# 312 "/usr/include/time.h" 3 4
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__));


extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__));


extern int dysize (int __year) __attribute__ ((__nothrow__)) __attribute__ ((__const__));
# 327 "/usr/include/time.h" 3 4
extern int nanosleep (__const struct timespec *__requested_time,
        struct timespec *__remaining);



extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__));


extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) __attribute__ ((__nothrow__));


extern int clock_settime (clockid_t __clock_id, __const struct timespec *__tp)
     __attribute__ ((__nothrow__));






extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       __const struct timespec *__req,
       struct timespec *__rem);


extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__));




extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__));


extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__));


extern int timer_settime (timer_t __timerid, int __flags,
     __const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__));


extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__));


extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__));
# 389 "/usr/include/time.h" 3 4
extern int getdate_err;
# 398 "/usr/include/time.h" 3 4
extern struct tm *getdate (__const char *__string);
# 412 "/usr/include/time.h" 3 4
extern int getdate_r (__const char *__restrict __string,
        struct tm *__restrict __resbufp);



# 201 "../../../kg++fe/gnu/system.h" 2
# 212 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/fcntl.h" 1 3 4
# 30 "/usr/include/fcntl.h" 3 4




# 1 "/usr/include/bits/fcntl.h" 1 3 4
# 27 "/usr/include/bits/fcntl.h" 3 4
# 1 "/usr/include/bits/uio.h" 1 3 4
# 44 "/usr/include/bits/uio.h" 3 4
struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
# 28 "/usr/include/bits/fcntl.h" 2 3 4
# 141 "/usr/include/bits/fcntl.h" 3 4
struct flock
  {
    short int l_type;
    short int l_whence;

    __off_t l_start;
    __off_t l_len;




    __pid_t l_pid;
  };


struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
# 208 "/usr/include/bits/fcntl.h" 3 4





extern ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__));



extern int sync_file_range (int __fd, __off64_t __from, __off64_t __to,
       unsigned int __flags);



extern int vmsplice (int __fdout, const struct iovec *__iov, size_t __count,
       unsigned int __flags);


extern int splice (int __fdin, __off64_t *__offin, int __fdout,
     __off64_t *__offout, size_t __len, unsigned int __flags)
    __attribute__ ((__nothrow__));


extern int tee (int __fdin, int __fdout, size_t __len, unsigned int __flags)
    __attribute__ ((__nothrow__));




# 35 "/usr/include/fcntl.h" 2 3 4



# 1 "/usr/include/sys/stat.h" 1 3 4
# 103 "/usr/include/sys/stat.h" 3 4


# 1 "/usr/include/bits/stat.h" 1 3 4
# 36 "/usr/include/bits/stat.h" 3 4
struct stat
  {
    __dev_t st_dev;
    unsigned short int __pad1;

    __ino_t st_ino;



    __mode_t st_mode;
    __nlink_t st_nlink;
    __uid_t st_uid;
    __gid_t st_gid;
    __dev_t st_rdev;
    unsigned short int __pad2;

    __off_t st_size;



    __blksize_t st_blksize;


    __blkcnt_t st_blocks;
# 70 "/usr/include/bits/stat.h" 3 4
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 85 "/usr/include/bits/stat.h" 3 4
    unsigned long int __unused4;
    unsigned long int __unused5;



  };


struct stat64
  {
    __dev_t st_dev;
    unsigned int __pad1;

    __ino_t __st_ino;
    __mode_t st_mode;
    __nlink_t st_nlink;
    __uid_t st_uid;
    __gid_t st_gid;
    __dev_t st_rdev;
    unsigned int __pad2;
    __off64_t st_size;
    __blksize_t st_blksize;

    __blkcnt64_t st_blocks;







    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
# 127 "/usr/include/bits/stat.h" 3 4
    __ino64_t st_ino;
  };
# 106 "/usr/include/sys/stat.h" 2 3 4
# 207 "/usr/include/sys/stat.h" 3 4
extern int stat (__const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));



extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
# 226 "/usr/include/sys/stat.h" 3 4
extern int stat64 (__const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));







extern int fstatat (int __fd, __const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
# 250 "/usr/include/sys/stat.h" 3 4
extern int fstatat64 (int __fd, __const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));






extern int lstat (__const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
# 272 "/usr/include/sys/stat.h" 3 4
extern int lstat64 (__const char *__restrict __file,
      struct stat64 *__restrict __buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));





extern int chmod (__const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int lchmod (__const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));




extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__));





extern int fchmodat (int __fd, __const char *__file, __mode_t mode, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2))) ;






extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__));




extern __mode_t getumask (void) __attribute__ ((__nothrow__));



extern int mkdir (__const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int mkdirat (int __fd, __const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));






extern int mknod (__const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int mknodat (int __fd, __const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));




extern int mkfifo (__const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));





extern int mkfifoat (int __fd, __const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2)));
# 380 "/usr/include/sys/stat.h" 3 4
extern int __fxstat (int __ver, int __fildes, struct stat *__stat_buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat (int __ver, __const char *__filename,
      struct stat *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat (int __ver, __const char *__filename,
       struct stat *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat (int __ver, int __fildes, __const char *__filename,
         struct stat *__stat_buf, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4)));
# 413 "/usr/include/sys/stat.h" 3 4
extern int __fxstat64 (int __ver, int __fildes, struct stat64 *__stat_buf)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3)));
extern int __xstat64 (int __ver, __const char *__filename,
        struct stat64 *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __lxstat64 (int __ver, __const char *__filename,
         struct stat64 *__stat_buf) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 3)));
extern int __fxstatat64 (int __ver, int __fildes, __const char *__filename,
    struct stat64 *__stat_buf, int __flag)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 4)));

extern int __xmknod (int __ver, __const char *__path, __mode_t __mode,
       __dev_t *__dev) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (2, 4)));

extern int __xmknodat (int __ver, int __fd, __const char *__path,
         __mode_t __mode, __dev_t *__dev)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (3, 5)));




extern __inline__ int
__attribute__ ((__nothrow__)) stat (__const char *__path, struct stat *__statbuf)
{
  return __xstat (3, __path, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) lstat (__const char *__path, struct stat *__statbuf)
{
  return __lxstat (3, __path, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) fstat (int __fd, struct stat *__statbuf)
{
  return __fxstat (3, __fd, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) fstatat (int __fd, __const char *__filename, struct stat *__statbuf, int __flag)

{
  return __fxstatat (3, __fd, __filename, __statbuf, __flag);
}



extern __inline__ int
__attribute__ ((__nothrow__)) mknod (__const char *__path, __mode_t __mode, __dev_t __dev)
{
  return __xmknod (1, __path, __mode, &__dev);
}



extern __inline__ int
__attribute__ ((__nothrow__)) mknodat (int __fd, __const char *__path, __mode_t __mode, __dev_t __dev)

{
  return __xmknodat (1, __fd, __path, __mode, &__dev);
}





extern __inline__ int
__attribute__ ((__nothrow__)) stat64 (__const char *__path, struct stat64 *__statbuf)
{
  return __xstat64 (3, __path, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) lstat64 (__const char *__path, struct stat64 *__statbuf)
{
  return __lxstat64 (3, __path, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) fstat64 (int __fd, struct stat64 *__statbuf)
{
  return __fxstat64 (3, __fd, __statbuf);
}


extern __inline__ int
__attribute__ ((__nothrow__)) fstatat64 (int __fd, __const char *__filename, struct stat64 *__statbuf, int __flag)

{
  return __fxstatat64 (3, __fd, __filename, __statbuf, __flag);
}







# 39 "/usr/include/fcntl.h" 2 3 4
# 76 "/usr/include/fcntl.h" 3 4
extern int fcntl (int __fd, int __cmd, ...);
# 85 "/usr/include/fcntl.h" 3 4
extern int open (__const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 95 "/usr/include/fcntl.h" 3 4
extern int open64 (__const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
# 109 "/usr/include/fcntl.h" 3 4
extern int openat (int __fd, __const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 120 "/usr/include/fcntl.h" 3 4
extern int openat64 (int __fd, __const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
# 130 "/usr/include/fcntl.h" 3 4
extern int creat (__const char *__file, __mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 140 "/usr/include/fcntl.h" 3 4
extern int creat64 (__const char *__file, __mode_t __mode) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise (int __fd, __off_t __offset, __off_t __len,
     int __advise) __attribute__ ((__nothrow__));
# 188 "/usr/include/fcntl.h" 3 4
extern int posix_fadvise64 (int __fd, __off64_t __offset, __off64_t __len,
       int __advise) __attribute__ ((__nothrow__));
# 198 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate (int __fd, __off_t __offset, __off_t __len);
# 209 "/usr/include/fcntl.h" 3 4
extern int posix_fallocate64 (int __fd, __off64_t __offset, __off64_t __len);




# 213 "../../../kg++fe/gnu/system.h" 2
# 250 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/sys/wait.h" 1 3 4
# 29 "/usr/include/sys/wait.h" 3 4


# 1 "/usr/include/signal.h" 1 3 4
# 31 "/usr/include/signal.h" 3 4


# 1 "/usr/include/bits/sigset.h" 1 3 4
# 103 "/usr/include/bits/sigset.h" 3 4
extern int __sigismember (__const __sigset_t *, int);
extern int __sigaddset (__sigset_t *, int);
extern int __sigdelset (__sigset_t *, int);
# 34 "/usr/include/signal.h" 2 3 4







typedef __sig_atomic_t sig_atomic_t;

# 58 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/signum.h" 1 3 4
# 59 "/usr/include/signal.h" 2 3 4
# 75 "/usr/include/signal.h" 3 4
typedef void (*__sighandler_t) (int);




extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));

extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));







extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));
# 104 "/usr/include/signal.h" 3 4





extern __sighandler_t bsd_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));






extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__));






extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__));




extern int raise (int __sig) __attribute__ ((__nothrow__));




extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__));




extern void psignal (int __sig, __const char *__s);
# 153 "/usr/include/signal.h" 3 4
extern int __sigpause (int __sig_or_mask, int __is_sig);
# 162 "/usr/include/signal.h" 3 4
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause");
# 181 "/usr/include/signal.h" 3 4
extern int sigblock (int __mask) __attribute__ ((__nothrow__)) __attribute__ ((__deprecated__));


extern int sigsetmask (int __mask) __attribute__ ((__nothrow__)) __attribute__ ((__deprecated__));


extern int siggetmask (void) __attribute__ ((__nothrow__)) __attribute__ ((__deprecated__));
# 196 "/usr/include/signal.h" 3 4
typedef __sighandler_t sighandler_t;




typedef __sighandler_t sig_t;
# 212 "/usr/include/signal.h" 3 4
# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 26 "/usr/include/bits/siginfo.h" 2 3 4







typedef union sigval
  {
    int sival_int;
    void *sival_ptr;
  } sigval_t;
# 51 "/usr/include/bits/siginfo.h" 3 4
typedef struct siginfo
  {
    int si_signo;
    int si_errno;

    int si_code;

    union
      {
 int _pad[((128 / sizeof (int)) - 3)];


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;


 struct
   {
     int si_tid;
     int si_overrun;
     sigval_t si_sigval;
   } _timer;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     sigval_t si_sigval;
   } _rt;


 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;


 struct
   {
     void *si_addr;
   } _sigfault;


 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
      } _sifields;
  } siginfo_t;
# 129 "/usr/include/bits/siginfo.h" 3 4
enum
{
  SI_ASYNCNL = -60,

  SI_TKILL = -6,

  SI_SIGIO,

  SI_ASYNCIO,

  SI_MESGQ,

  SI_TIMER,

  SI_QUEUE,

  SI_USER,

  SI_KERNEL = 0x80

};



enum
{
  ILL_ILLOPC = 1,

  ILL_ILLOPN,

  ILL_ILLADR,

  ILL_ILLTRP,

  ILL_PRVOPC,

  ILL_PRVREG,

  ILL_COPROC,

  ILL_BADSTK

};


enum
{
  FPE_INTDIV = 1,

  FPE_INTOVF,

  FPE_FLTDIV,

  FPE_FLTOVF,

  FPE_FLTUND,

  FPE_FLTRES,

  FPE_FLTINV,

  FPE_FLTSUB

};


enum
{
  SEGV_MAPERR = 1,

  SEGV_ACCERR

};


enum
{
  BUS_ADRALN = 1,

  BUS_ADRERR,

  BUS_OBJERR

};


enum
{
  TRAP_BRKPT = 1,

  TRAP_TRACE

};


enum
{
  CLD_EXITED = 1,

  CLD_KILLED,

  CLD_DUMPED,

  CLD_TRAPPED,

  CLD_STOPPED,

  CLD_CONTINUED

};


enum
{
  POLL_IN = 1,

  POLL_OUT,

  POLL_MSG,

  POLL_ERR,

  POLL_PRI,

  POLL_HUP

};
# 273 "/usr/include/bits/siginfo.h" 3 4
typedef struct sigevent
  {
    sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;

    union
      {
 int _pad[((64 / sizeof (int)) - 3)];



 __pid_t _tid;

 struct
   {
     void (*_function) (sigval_t);
     void *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;






enum
{
  SIGEV_SIGNAL = 0,

  SIGEV_NONE,

  SIGEV_THREAD,


  SIGEV_THREAD_ID = 4

};
# 213 "/usr/include/signal.h" 2 3 4



extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int sigismember (__const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));



extern int sigisemptyset (__const sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));


extern int sigandset (sigset_t *__set, __const sigset_t *__left,
        __const sigset_t *__right) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern int sigorset (sigset_t *__set, __const sigset_t *__left,
       __const sigset_t *__right) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2, 3)));




# 1 "/usr/include/bits/sigaction.h" 1 3 4
# 25 "/usr/include/bits/sigaction.h" 3 4
struct sigaction
  {


    union
      {

 __sighandler_t sa_handler;

 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;







    __sigset_t sa_mask;


    int sa_flags;


    void (*sa_restorer) (void);
  };
# 247 "/usr/include/signal.h" 2 3 4


extern int sigprocmask (int __how, __const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__));






extern int sigsuspend (__const sigset_t *__set) __attribute__ ((__nonnull__ (1)));


extern int sigaction (int __sig, __const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__));


extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));






extern int sigwait (__const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));






extern int sigwaitinfo (__const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));






extern int sigtimedwait (__const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    __const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));



extern int sigqueue (__pid_t __pid, int __sig, __const union sigval __val)
     __attribute__ ((__nothrow__));
# 304 "/usr/include/signal.h" 3 4
extern __const char *__const _sys_siglist[65];
extern __const char *__const sys_siglist[65];


struct sigvec
  {
    __sighandler_t sv_handler;
    int sv_mask;

    int sv_flags;

  };
# 328 "/usr/include/signal.h" 3 4
extern int sigvec (int __sig, __const struct sigvec *__vec,
     struct sigvec *__ovec) __attribute__ ((__nothrow__));



# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 28 "/usr/include/bits/sigcontext.h" 3 4
# 1 "/usr/include/asm/sigcontext.h" 1 3 4






# 1 "/usr/include/asm-i386/sigcontext.h" 1 3 4
# 19 "/usr/include/asm-i386/sigcontext.h" 3 4
struct _fpreg {
 unsigned short significand[4];
 unsigned short exponent;
};

struct _fpxreg {
 unsigned short significand[4];
 unsigned short exponent;
 unsigned short padding[3];
};

struct _xmmreg {
 unsigned long element[4];
};

struct _fpstate {

 unsigned long cw;
 unsigned long sw;
 unsigned long tag;
 unsigned long ipoff;
 unsigned long cssel;
 unsigned long dataoff;
 unsigned long datasel;
 struct _fpreg _st[8];
 unsigned short status;
 unsigned short magic;


 unsigned long _fxsr_env[6];
 unsigned long mxcsr;
 unsigned long reserved;
 struct _fpxreg _fxsr_st[8];
 struct _xmmreg _xmm[8];
 unsigned long padding[56];
};



struct sigcontext {
 unsigned short gs, __gsh;
 unsigned short fs, __fsh;
 unsigned short es, __esh;
 unsigned short ds, __dsh;
 unsigned long edi;
 unsigned long esi;
 unsigned long ebp;
 unsigned long esp;
 unsigned long ebx;
 unsigned long edx;
 unsigned long ecx;
 unsigned long eax;
 unsigned long trapno;
 unsigned long err;
 unsigned long eip;
 unsigned short cs, __csh;
 unsigned long eflags;
 unsigned long esp_at_signal;
 unsigned short ss, __ssh;
 struct _fpstate * fpstate;
 unsigned long oldmask;
 unsigned long cr2;
};
# 8 "/usr/include/asm/sigcontext.h" 2 3 4
# 29 "/usr/include/bits/sigcontext.h" 2 3 4
# 334 "/usr/include/signal.h" 2 3 4


extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__));
# 346 "/usr/include/signal.h" 3 4
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__));

# 1 "/usr/include/bits/sigstack.h" 1 3 4
# 26 "/usr/include/bits/sigstack.h" 3 4
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };



enum
{
  SS_ONSTACK = 1,

  SS_DISABLE

};
# 50 "/usr/include/bits/sigstack.h" 3 4
typedef struct sigaltstack
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
# 349 "/usr/include/signal.h" 2 3 4


# 1 "/usr/include/sys/ucontext.h" 1 3 4
# 23 "/usr/include/sys/ucontext.h" 3 4
# 1 "/usr/include/signal.h" 1 3 4
# 24 "/usr/include/sys/ucontext.h" 2 3 4



# 1 "/usr/include/bits/sigcontext.h" 1 3 4
# 28 "/usr/include/sys/ucontext.h" 2 3 4



typedef int greg_t;





typedef greg_t gregset_t[19];



enum
{
  REG_GS = 0,

  REG_FS,

  REG_ES,

  REG_DS,

  REG_EDI,

  REG_ESI,

  REG_EBP,

  REG_ESP,

  REG_EBX,

  REG_EDX,

  REG_ECX,

  REG_EAX,

  REG_TRAPNO,

  REG_ERR,

  REG_EIP,

  REG_CS,

  REG_EFL,

  REG_UESP,

  REG_SS

};



struct _libc_fpreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
};

struct _libc_fpstate
{
  unsigned long int cw;
  unsigned long int sw;
  unsigned long int tag;
  unsigned long int ipoff;
  unsigned long int cssel;
  unsigned long int dataoff;
  unsigned long int datasel;
  struct _libc_fpreg _st[8];
  unsigned long int status;
};


typedef struct _libc_fpstate *fpregset_t;


typedef struct
  {
    gregset_t gregs;


    fpregset_t fpregs;
    unsigned long int oldmask;
    unsigned long int cr2;
  } mcontext_t;


typedef struct ucontext
  {
    unsigned long int uc_flags;
    struct ucontext *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    __sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
  } ucontext_t;
# 352 "/usr/include/signal.h" 2 3 4





extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__)) __attribute__ ((__deprecated__));



extern int sigaltstack (__const struct sigaltstack *__restrict __ss,
   struct sigaltstack *__restrict __oss) __attribute__ ((__nothrow__));







extern int sighold (int __sig) __attribute__ ((__nothrow__));


extern int sigrelse (int __sig) __attribute__ ((__nothrow__));


extern int sigignore (int __sig) __attribute__ ((__nothrow__));


extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__));






# 1 "/usr/include/bits/sigthread.h" 1 3 4
# 31 "/usr/include/bits/sigthread.h" 3 4
extern int pthread_sigmask (int __how,
       __const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__));


extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__));
# 388 "/usr/include/signal.h" 2 3 4






extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__));

extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__));




# 32 "/usr/include/sys/wait.h" 2 3 4
# 1 "/usr/include/sys/resource.h" 1 3 4
# 25 "/usr/include/sys/resource.h" 3 4
# 1 "/usr/include/bits/resource.h" 1 3 4
# 33 "/usr/include/bits/resource.h" 3 4
enum __rlimit_resource
{

  RLIMIT_CPU = 0,



  RLIMIT_FSIZE = 1,



  RLIMIT_DATA = 2,



  RLIMIT_STACK = 3,



  RLIMIT_CORE = 4,






  __RLIMIT_RSS = 5,



  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,




  RLIMIT_AS = 9,



  __RLIMIT_NPROC = 6,



  __RLIMIT_MEMLOCK = 8,



  __RLIMIT_LOCKS = 10,



  __RLIMIT_SIGPENDING = 11,



  __RLIMIT_MSGQUEUE = 12,





  __RLIMIT_NICE = 13,




  __RLIMIT_RTPRIO = 14,


  __RLIMIT_NLIMITS = 15,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS


};
# 127 "/usr/include/bits/resource.h" 3 4
typedef __rlim_t rlim_t;




typedef __rlim64_t rlim64_t;


struct rlimit
  {

    rlim_t rlim_cur;

    rlim_t rlim_max;
  };


struct rlimit64
  {

    rlim64_t rlim_cur;

    rlim64_t rlim_max;
 };



enum __rusage_who
{

  RUSAGE_SELF = 0,



  RUSAGE_CHILDREN = -1

};


# 1 "/usr/include/bits/time.h" 1 3 4
# 167 "/usr/include/bits/resource.h" 2 3 4


struct rusage
  {

    struct timeval ru_utime;

    struct timeval ru_stime;

    long int ru_maxrss;


    long int ru_ixrss;

    long int ru_idrss;

    long int ru_isrss;


    long int ru_minflt;

    long int ru_majflt;

    long int ru_nswap;


    long int ru_inblock;

    long int ru_oublock;

    long int ru_msgsnd;

    long int ru_msgrcv;

    long int ru_nsignals;



    long int ru_nvcsw;


    long int ru_nivcsw;
  };







enum __priority_which
{
  PRIO_PROCESS = 0,

  PRIO_PGRP = 1,

  PRIO_USER = 2

};
# 26 "/usr/include/sys/resource.h" 2 3 4













typedef enum __rlimit_resource __rlimit_resource_t;
typedef enum __rusage_who __rusage_who_t;
typedef enum __priority_which __priority_which_t;
# 51 "/usr/include/sys/resource.h" 3 4
extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__));
# 62 "/usr/include/sys/resource.h" 3 4
extern int getrlimit64 (__rlimit_resource_t __resource,
   struct rlimit64 *__rlimits) __attribute__ ((__nothrow__));






extern int setrlimit (__rlimit_resource_t __resource,
        __const struct rlimit *__rlimits) __attribute__ ((__nothrow__));
# 82 "/usr/include/sys/resource.h" 3 4
extern int setrlimit64 (__rlimit_resource_t __resource,
   __const struct rlimit64 *__rlimits) __attribute__ ((__nothrow__));




extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__));





extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__));



extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__));


# 33 "/usr/include/sys/wait.h" 2 3 4
# 102 "/usr/include/sys/wait.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 116 "/usr/include/sys/wait.h" 3 4
extern __pid_t wait (__WAIT_STATUS __stat_loc);
# 139 "/usr/include/sys/wait.h" 3 4
extern __pid_t waitpid (__pid_t __pid, int *__stat_loc, int __options);



# 1 "/usr/include/bits/siginfo.h" 1 3 4
# 25 "/usr/include/bits/siginfo.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 26 "/usr/include/bits/siginfo.h" 2 3 4
# 144 "/usr/include/sys/wait.h" 2 3 4
# 155 "/usr/include/sys/wait.h" 3 4
extern int waitid (idtype_t __idtype, __id_t __id, siginfo_t *__infop,
     int __options);





struct rusage;






extern __pid_t wait3 (__WAIT_STATUS __stat_loc, int __options,
        struct rusage * __usage) __attribute__ ((__nothrow__));





struct rusage;


extern __pid_t wait4 (__pid_t __pid, __WAIT_STATUS __stat_loc, int __options,
        struct rusage *__usage) __attribute__ ((__nothrow__));




# 251 "../../../kg++fe/gnu/system.h" 2
# 301 "../../../kg++fe/gnu/system.h"
extern int getopt (int, char * const *, const char *);
# 317 "../../../kg++fe/gnu/system.h"
# 1 "/usr/include/malloc.h" 1 3 4
# 24 "/usr/include/malloc.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 25 "/usr/include/malloc.h" 2 3 4
# 46 "/usr/include/malloc.h" 3 4



extern void *malloc (size_t __size) __attribute__ ((__nothrow__)) __attribute__ ((__malloc__)) ;


extern void *calloc (size_t __nmemb, size_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__)) ;



extern void *realloc (void *__ptr, size_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__));


extern void free (void *__ptr) __attribute__ ((__nothrow__));


extern void cfree (void *__ptr) __attribute__ ((__nothrow__));


extern void *memalign (size_t __alignment, size_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__)) ;


extern void *valloc (size_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__)) ;



extern void * pvalloc (size_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__)) ;



extern void *(*__morecore) (ptrdiff_t __size);


extern void *__default_morecore (ptrdiff_t __size) __attribute__ ((__nothrow__))
       __attribute__ ((__malloc__));



struct mallinfo {
  int arena;
  int ordblks;
  int smblks;
  int hblks;
  int hblkhd;
  int usmblks;
  int fsmblks;
  int uordblks;
  int fordblks;
  int keepcost;
};


extern struct mallinfo mallinfo (void) __attribute__ ((__nothrow__));
# 128 "/usr/include/malloc.h" 3 4
extern int mallopt (int __param, int __val) __attribute__ ((__nothrow__));



extern int malloc_trim (size_t __pad) __attribute__ ((__nothrow__));



extern size_t malloc_usable_size (void *__ptr) __attribute__ ((__nothrow__));


extern void malloc_stats (void) __attribute__ ((__nothrow__));


extern void *malloc_get_state (void) __attribute__ ((__nothrow__));



extern int malloc_set_state (void *__ptr) __attribute__ ((__nothrow__));




extern void (*__malloc_initialize_hook) (void);

extern void (*__free_hook) (void *__ptr, __const void *);

extern void *(*__malloc_hook) (size_t __size, __const void *);

extern void *(*__realloc_hook) (void *__ptr, size_t __size, __const void *);

extern void *(*__memalign_hook) (size_t __alignment, size_t __size, __const void *);


extern void (*__after_morecore_hook) (void);


extern void __malloc_check_init (void) __attribute__ ((__nothrow__));



# 318 "../../../kg++fe/gnu/system.h" 2
# 497 "../../../kg++fe/gnu/system.h"
# 1 "../../../include/gnu/libiberty.h" 1
# 46 "../../../include/gnu/libiberty.h"
# 1 "../../../include/gnu/ansidecl.h" 1
# 47 "../../../include/gnu/libiberty.h" 2



# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 51 "../../../include/gnu/libiberty.h" 2







extern char **buildargv (const char *) __attribute__ ((__malloc__));



extern void freeargv (char **);




extern char **dupargv (char **) __attribute__ ((__malloc__));
# 90 "../../../include/gnu/libiberty.h"
extern const char *lbasename (const char *);





extern char *concat (const char *, ...) __attribute__ ((__malloc__));
# 105 "../../../include/gnu/libiberty.h"
extern char *reconcat (char *, const char *, ...) __attribute__ ((__malloc__));





extern unsigned long concat_length (const char *, ...);






extern char *concat_copy (char *, const char *, ...);






extern char *concat_copy2 (const char *, ...);



extern char *libiberty_concat_ptr;
# 141 "../../../include/gnu/libiberty.h"
extern int fdmatch (int fd1, int fd2);




extern char * getpwd (void);



extern long get_run_time (void);




extern char *make_relative_prefix (const char *, const char *, const char *);




extern char *choose_temp_base (void) __attribute__ ((__malloc__));



extern char *make_temp_file (const char *) __attribute__ ((__malloc__));



extern const char *spaces (int count);




extern int errno_max (void);




extern const char *strerrno (int);



extern int strtoerrno (const char *);



extern char *xstrerror (int);




extern int signo_max (void);
# 203 "../../../include/gnu/libiberty.h"
extern const char *strsigno (int);



extern int strtosigno (const char *);



extern int xatexit (void (*fn) (void));



extern void xexit (int status) __attribute__ ((__noreturn__));



extern void xmalloc_set_program_name (const char *);


extern void xmalloc_failed (size_t) __attribute__ ((__noreturn__));





extern void * xmalloc (size_t) __attribute__ ((__malloc__));





extern void * xrealloc (void *, size_t);




extern void * xcalloc (size_t, size_t) __attribute__ ((__malloc__));



extern char *xstrdup (const char *) __attribute__ ((__malloc__));



extern void * xmemdup (const void *, size_t, size_t) __attribute__ ((__malloc__));


extern double physmem_total (void);
extern double physmem_available (void);





extern const char _hex_value[256];
extern void hex_init (void);
# 274 "../../../include/gnu/libiberty.h"
extern int pexecute (const char *, char * const *, const char *, const char *, char **, char **, int);




extern int pwait (int, int *, int);





extern int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__nonnull__ (2)));
# 304 "../../../include/gnu/libiberty.h"
extern void * C_alloca (size_t) __attribute__ ((__malloc__));
# 498 "../../../kg++fe/gnu/system.h" 2
# 1 "../../../include/gnu/symcat.h" 1
# 499 "../../../kg++fe/gnu/system.h" 2
# 554 "../../../kg++fe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdbool.h" 1 3 4
# 555 "../../../kg++fe/gnu/system.h" 2
# 621 "../../../kg++fe/gnu/system.h"
        
# 641 "../../../kg++fe/gnu/system.h"
        
# 661 "../../../kg++fe/gnu/system.h"
        
# 676 "../../../kg++fe/gnu/system.h"
        
# 37 "../../../kg++fe/gnu/toplev.c" 2







# 1 "/usr/include/sys/times.h" 1 3 4
# 32 "/usr/include/sys/times.h" 3 4



struct tms
  {
    clock_t tms_utime;
    clock_t tms_stime;

    clock_t tms_cutime;
    clock_t tms_cstime;
  };






extern clock_t times (struct tms *__buffer) __attribute__ ((__nothrow__));


# 45 "../../../kg++fe/gnu/toplev.c" 2


# 1 "../../../kg++fe/gnu/input.h" 1
# 23 "../../../kg++fe/gnu/input.h"
extern const char *input_filename;


extern const char *main_input_filename;


extern int lineno;


extern FILE *finput;

struct file_stack
  {
    const char *name;
    struct file_stack *next;
    int line;
  };



extern struct file_stack *input_file_stack;


extern int input_file_stack_tick;

extern void push_srcloc (const char *name, int line);
extern void pop_srcloc (void);
# 48 "../../../kg++fe/gnu/toplev.c" 2


# 1 "../../../kg++fe/gnu/rtl.h" 1
# 25 "../../../kg++fe/gnu/rtl.h"
struct function;

# 1 "../../../kg++fe/gnu/machmode.h" 1
# 29 "../../../kg++fe/gnu/machmode.h"
enum machine_mode {
# 1 "../../../kg++fe/gnu/machmode.def" 1
# 74 "../../../kg++fe/gnu/machmode.def"
VOIDmode,

BImode,
QImode,
HImode,
SImode,
DImode,
TImode,
OImode,




PQImode,
PHImode,
PSImode,
PDImode,

QFmode,
HFmode,
TQFmode,
SFmode,
DFmode,
XFmode,
TFmode,


QCmode,
HCmode,
SCmode,
DCmode,
XCmode,
TCmode,

CQImode,
CHImode,
CSImode,
CDImode,
CTImode,
COImode,





V1DImode,
V2QImode,
V2HImode,
V2SImode,
V2DImode,

V4QImode,
V4HImode,
V4SImode,
V4DImode,

V8QImode,
V8HImode,
V8SImode,
V8DImode,

V16QImode,

V2SFmode,
V2DFmode,

V4SFmode,
V4DFmode,

V8SFmode,
V8DFmode,
V16SFmode,



BLKmode,
# 158 "../../../kg++fe/gnu/machmode.def"
CCmode,
# 31 "../../../kg++fe/gnu/machmode.h" 2
MAX_MACHINE_MODE };
# 41 "../../../kg++fe/gnu/machmode.h"
extern const char * const mode_name[(int) MAX_MACHINE_MODE];


enum mode_class { MODE_RANDOM, MODE_INT, MODE_FLOAT, MODE_PARTIAL_INT, MODE_CC,
    MODE_COMPLEX_INT, MODE_COMPLEX_FLOAT,
    MODE_VECTOR_INT, MODE_VECTOR_FLOAT,
    MAX_MODE_CLASS};




extern const enum mode_class mode_class[(int) MAX_MACHINE_MODE];
# 89 "../../../kg++fe/gnu/machmode.h"
extern const unsigned char mode_size[(int) MAX_MACHINE_MODE];




extern const unsigned char mode_unit_size[(int) MAX_MACHINE_MODE];
# 105 "../../../kg++fe/gnu/machmode.h"
extern const unsigned short mode_bitsize[(int) MAX_MACHINE_MODE];
# 115 "../../../kg++fe/gnu/machmode.h"
extern const unsigned long long mode_mask_array[(int) MAX_MACHINE_MODE];



extern const enum machine_mode inner_mode_array[(int) MAX_MACHINE_MODE];
# 132 "../../../kg++fe/gnu/machmode.h"
extern const unsigned char mode_wider_mode[(int) MAX_MACHINE_MODE];






extern enum machine_mode mode_for_size (unsigned int, enum mode_class, int);




extern enum machine_mode smallest_mode_for_size
    (unsigned int, enum mode_class);





extern enum machine_mode int_mode_for_mode (enum machine_mode);



extern enum machine_mode get_best_mode (int, int, unsigned int, enum machine_mode, int);




extern unsigned get_mode_alignment (enum machine_mode);





extern const enum machine_mode class_narrowest_mode[(int) MAX_MODE_CLASS];





extern enum machine_mode byte_mode;
extern enum machine_mode word_mode;
extern enum machine_mode ptr_mode;
# 28 "../../../kg++fe/gnu/rtl.h" 2
# 41 "../../../kg++fe/gnu/rtl.h"
enum rtx_code {


# 1 "../../../kg++fe/gnu/rtl.def" 1
# 70 "../../../kg++fe/gnu/rtl.def"
UNKNOWN ,



NIL ,




INCLUDE ,






EXPR_LIST ,



INSN_LIST ,
# 129 "../../../kg++fe/gnu/rtl.def"
MATCH_OPERAND ,






MATCH_SCRATCH ,




MATCH_DUP ,







MATCH_OPERATOR ,
# 158 "../../../kg++fe/gnu/rtl.def"
MATCH_PARALLEL ,




MATCH_OP_DUP ,




MATCH_PAR_DUP ,




MATCH_INSN ,
# 192 "../../../kg++fe/gnu/rtl.def"
DEFINE_INSN ,







DEFINE_PEEPHOLE ,
# 211 "../../../kg++fe/gnu/rtl.def"
DEFINE_SPLIT ,
# 239 "../../../kg++fe/gnu/rtl.def"
DEFINE_INSN_AND_SPLIT ,



DEFINE_PEEPHOLE2 ,



DEFINE_COMBINE ,
# 260 "../../../kg++fe/gnu/rtl.def"
DEFINE_EXPAND ,
# 276 "../../../kg++fe/gnu/rtl.def"
DEFINE_DELAY ,
# 317 "../../../kg++fe/gnu/rtl.def"
DEFINE_FUNCTION_UNIT ,


DEFINE_ASM_ATTRIBUTES ,
# 333 "../../../kg++fe/gnu/rtl.def"
DEFINE_COND_EXEC ,





SEQUENCE ,


ADDRESS ,
# 358 "../../../kg++fe/gnu/rtl.def"
DEFINE_CPU_UNIT ,





DEFINE_QUERY_CPU_UNIT ,
# 374 "../../../kg++fe/gnu/rtl.def"
EXCLUSION_SET ,
# 383 "../../../kg++fe/gnu/rtl.def"
PRESENCE_SET ,
# 393 "../../../kg++fe/gnu/rtl.def"
ABSENCE_SET ,
# 404 "../../../kg++fe/gnu/rtl.def"
DEFINE_BYPASS ,
# 413 "../../../kg++fe/gnu/rtl.def"
DEFINE_AUTOMATON ,
# 433 "../../../kg++fe/gnu/rtl.def"
AUTOMATA_OPTION ,
# 442 "../../../kg++fe/gnu/rtl.def"
DEFINE_RESERVATION ,
# 490 "../../../kg++fe/gnu/rtl.def"
DEFINE_INSN_RESERVATION ,
# 501 "../../../kg++fe/gnu/rtl.def"
DEFINE_ATTR ,


ATTR ,







SET_ATTR ,
# 527 "../../../kg++fe/gnu/rtl.def"
SET_ATTR_ALTERNATIVE ,




EQ_ATTR ,
# 542 "../../../kg++fe/gnu/rtl.def"
ATTR_FLAG ,
# 555 "../../../kg++fe/gnu/rtl.def"
INSN ,



JUMP_INSN ,






CALL_INSN ,


BARRIER ,







CODE_LABEL ,
# 586 "../../../kg++fe/gnu/rtl.def"
NOTE ,
# 599 "../../../kg++fe/gnu/rtl.def"
COND_EXEC ,


PARALLEL ,







ASM_INPUT ,
# 624 "../../../kg++fe/gnu/rtl.def"
ASM_OPERANDS ,
# 635 "../../../kg++fe/gnu/rtl.def"
UNSPEC ,


UNSPEC_VOLATILE ,



ADDR_VEC ,
# 667 "../../../kg++fe/gnu/rtl.def"
ADDR_DIFF_VEC ,
# 678 "../../../kg++fe/gnu/rtl.def"
PREFETCH ,
# 690 "../../../kg++fe/gnu/rtl.def"
SET ,




USE ,




CLOBBER ,





CALL ,



RETURN ,





TRAP_IF ,




RESX ,






CONST_INT ,




CONST_DOUBLE ,


CONST_VECTOR ,


CONST_STRING ,





CONST ,



PC ,


VALUE ,
# 761 "../../../kg++fe/gnu/rtl.def"
REG ,






SCRATCH ,
# 778 "../../../kg++fe/gnu/rtl.def"
SUBREG ,
# 791 "../../../kg++fe/gnu/rtl.def"
STRICT_LOW_PART ,





CONCAT ,




MEM ,





LABEL_REF ,





SYMBOL_REF ,






CC0 ,
# 830 "../../../kg++fe/gnu/rtl.def"
ADDRESSOF ,
# 848 "../../../kg++fe/gnu/rtl.def"
QUEUED ,
# 860 "../../../kg++fe/gnu/rtl.def"
IF_THEN_ELSE ,
# 869 "../../../kg++fe/gnu/rtl.def"
COND ,


COMPARE ,


PLUS ,


MINUS ,


NEG ,

MULT ,


DIV ,

MOD ,


UDIV ,
UMOD ,


AND ,

IOR ,

XOR ,

NOT ,




ASHIFT ,
ROTATE ,
ASHIFTRT ,
LSHIFTRT ,
ROTATERT ,





SMIN ,
SMAX ,
UMIN ,
UMAX ,
# 928 "../../../kg++fe/gnu/rtl.def"
PRE_DEC ,
PRE_INC ,
POST_DEC ,
POST_INC ,
# 945 "../../../kg++fe/gnu/rtl.def"
PRE_MODIFY ,
POST_MODIFY ,



NE ,
EQ ,
GE ,
GT ,
LE ,
LT ,
GEU ,
GTU ,
LEU ,
LTU ,


UNORDERED ,
ORDERED ,


UNEQ ,
UNGE ,
UNGT ,
UNLE ,
UNLT ,


LTGT ,




SIGN_EXTEND ,


ZERO_EXTEND ,


TRUNCATE ,


FLOAT_EXTEND ,
FLOAT_TRUNCATE ,


FLOAT ,







FIX ,


UNSIGNED_FLOAT ,




UNSIGNED_FIX ,


ABS ,


SQRT ,




FFS ,
# 1029 "../../../kg++fe/gnu/rtl.def"
SIGN_EXTRACT ,


ZERO_EXTRACT ,




HIGH ,



LO_SUM ,
# 1054 "../../../kg++fe/gnu/rtl.def"
RANGE_INFO ,
# 1069 "../../../kg++fe/gnu/rtl.def"
RANGE_REG ,





RANGE_VAR ,



RANGE_LIVE ,




CONSTANT_P_RTX ,
# 1105 "../../../kg++fe/gnu/rtl.def"
CALL_PLACEHOLDER ,






VEC_MERGE ,





VEC_SELECT ,




VEC_CONCAT ,





VEC_DUPLICATE ,


SS_PLUS ,


US_PLUS ,


SS_MINUS ,


US_MINUS ,


SS_TRUNCATE ,


US_TRUNCATE ,
# 1161 "../../../kg++fe/gnu/rtl.def"
PHI ,
# 45 "../../../kg++fe/gnu/rtl.h" 2


  LAST_AND_UNUSED_RTX_CODE};






extern const unsigned char rtx_length[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char * const rtx_name[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char * const rtx_format[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const char rtx_class[((int) LAST_AND_UNUSED_RTX_CODE)];


extern const unsigned char rtx_next[((int) LAST_AND_UNUSED_RTX_CODE)];



typedef struct
{

  unsigned min_align: 8;

  unsigned base_after_vec: 1;
  unsigned min_after_vec: 1;

  unsigned max_after_vec: 1;

  unsigned min_after_base: 1;

  unsigned max_after_base: 1;


  unsigned offset_unsigned: 1;
  unsigned : 2;
  unsigned scale : 8;
} addr_diff_vec_flags;
# 97 "../../../kg++fe/gnu/rtl.h"
typedef struct mem_attrs
{
  long long alias;
  tree expr;
  rtx offset;
  rtx size;
  unsigned int align;
} mem_attrs;



union rtunion_def
{
  long long rtwint;
  int rtint;
  unsigned int rtuint;
  const char *rtstr;
  rtx rtx;
  rtvec rtvec;
  enum machine_mode rttype;
  addr_diff_vec_flags rt_addr_diff_vec_flags;
  struct cselib_val_struct *rt_cselib;
  struct bitmap_head_def *rtbit;
  tree rttree;
  struct basic_block_def *bb;
  mem_attrs *rtmem;
};
typedef union rtunion_def rtunion;



struct rtx_def

{

  enum rtx_code code: 16;


  enum machine_mode mode : 8;






  unsigned int jump : 1;


  unsigned int call : 1;







  unsigned int unchanging : 1;
# 162 "../../../kg++fe/gnu/rtl.h"
  unsigned int volatil : 1;
# 180 "../../../kg++fe/gnu/rtl.h"
  unsigned int in_struct : 1;






  unsigned int used : 1;




  unsigned integrated : 1;
# 201 "../../../kg++fe/gnu/rtl.h"
  unsigned frame_related : 1;




  rtunion fld[1];

};
# 241 "../../../kg++fe/gnu/rtl.h"
struct rtvec_def {
  int num_elem;
  rtx elem[1];
};
# 604 "../../../kg++fe/gnu/rtl.h"
enum reg_note
{



  REG_DEAD = 1,


  REG_INC,
# 623 "../../../kg++fe/gnu/rtl.h"
  REG_EQUIV,




  REG_EQUAL,





  REG_WAS_0,





  REG_RETVAL,




  REG_LIBCALL,






  REG_NONNEG,



  REG_NO_CONFLICT,


  REG_UNUSED,
# 668 "../../../kg++fe/gnu/rtl.h"
  REG_CC_SETTER, REG_CC_USER,




  REG_LABEL,





  REG_DEP_ANTI, REG_DEP_OUTPUT,





  REG_BR_PROB,



  REG_NOALIAS,



  REG_SAVE_AREA,





  REG_BR_PRED,




  REG_FRAME_RELATED_EXPR,




  REG_EH_CONTEXT,





  REG_EH_REGION,


  REG_SAVE_NOTE,





  REG_MAYBE_DEAD,


  REG_NORETURN,



  REG_NON_LOCAL_GOTO,



  REG_SETJMP,


  REG_ALWAYS_RETURN,



  REG_VTABLE_REF
};
# 755 "../../../kg++fe/gnu/rtl.h"
extern const char * const reg_note_name[];
# 815 "../../../kg++fe/gnu/rtl.h"
enum insn_note
{

  NOTE_INSN_BIAS = -100,



  NOTE_INSN_DELETED,



  NOTE_INSN_BLOCK_BEG,
  NOTE_INSN_BLOCK_END,


  NOTE_INSN_LOOP_BEG,
  NOTE_INSN_LOOP_END,


  NOTE_INSN_LOOP_CONT,

  NOTE_INSN_LOOP_VTOP,





  NOTE_INSN_LOOP_END_TOP_COND,






  NOTE_INSN_FUNCTION_END,


  NOTE_INSN_PROLOGUE_END,


  NOTE_INSN_EPILOGUE_BEG,


  NOTE_INSN_DELETED_LABEL,




  NOTE_INSN_FUNCTION_BEG,



  NOTE_INSN_EH_REGION_BEG,
  NOTE_INSN_EH_REGION_END,




  NOTE_INSN_REPEATED_LINE_NUMBER,


  NOTE_INSN_BASIC_BLOCK,



  NOTE_INSN_EXPECTED_VALUE,


  NOTE_INSN_PREDICTION,

  NOTE_INSN_MAX
};



extern const char * const note_insn_name[NOTE_INSN_MAX - NOTE_INSN_BIAS];
# 905 "../../../kg++fe/gnu/rtl.h"
enum label_kind
{
  LABEL_NORMAL = 0,
  LABEL_STATIC_ENTRY,
  LABEL_GLOBAL_ENTRY,
  LABEL_WEAK_ENTRY
};
# 1032 "../../../kg++fe/gnu/rtl.h"
extern unsigned int subreg_lsb (rtx);
extern unsigned int subreg_regno_offset (unsigned int, enum machine_mode, unsigned int, enum machine_mode);



extern _Bool subreg_offset_representable_p (unsigned int, enum machine_mode, unsigned int, enum machine_mode);



extern unsigned int subreg_regno (rtx);
# 1339 "../../../kg++fe/gnu/rtl.h"
extern int rtx_equal_function_value_matters;


extern int generating_concat_p;




extern int ceil_log2 (unsigned long long);




extern rtx expand_builtin_expect_jump (tree, rtx, rtx);


extern void set_stack_check_libfunc (rtx);
extern long long trunc_int_for_mode (long long, enum machine_mode);

extern rtx plus_constant_wide (rtx, long long);
extern rtx plus_constant_for_output_wide (rtx, long long);
extern void optimize_save_area_alloca (rtx);


extern rtx gen_rtx (enum rtx_code, enum machine_mode, ...);

extern rtvec gen_rtvec (int, ...);
extern rtx copy_insn_1 (rtx);
extern rtx copy_insn (rtx);
extern rtx gen_int_mode (long long, enum machine_mode);

extern rtx emit_copy_of_insn_after (rtx, rtx);


extern rtx rtx_alloc (enum rtx_code);
extern rtvec rtvec_alloc (int);
extern rtx copy_rtx (rtx);


extern rtx copy_rtx_if_shared (rtx);


extern rtx copy_most_rtx (rtx, rtx);
extern rtx shallow_copy_rtx (rtx);
extern int rtx_equal_p (rtx, rtx);


extern rtvec gen_rtvec_v (int, rtx *);
extern rtx gen_reg_rtx (enum machine_mode);
extern rtx gen_label_rtx (void);
extern int subreg_hard_regno (rtx, int);
extern rtx gen_lowpart_common (enum machine_mode, rtx);
extern rtx gen_lowpart (enum machine_mode, rtx);


extern rtx gen_lowpart_if_possible (enum machine_mode, rtx);


extern rtx gen_highpart (enum machine_mode, rtx);
extern rtx gen_highpart_mode (enum machine_mode, enum machine_mode, rtx);

extern rtx gen_realpart (enum machine_mode, rtx);
extern rtx gen_imagpart (enum machine_mode, rtx);
extern rtx operand_subword (rtx, unsigned int, int, enum machine_mode);

extern rtx constant_subword (rtx, int, enum machine_mode);



extern rtx operand_subword_force (rtx, unsigned int, enum machine_mode);

extern int subreg_lowpart_p (rtx);
extern unsigned int subreg_lowpart_offset (enum machine_mode, enum machine_mode);

extern unsigned int subreg_highpart_offset (enum machine_mode, enum machine_mode);

extern rtx make_safe_from (rtx, rtx);
extern rtx convert_memory_address (enum machine_mode, rtx);
extern rtx get_insns (void);
extern const char *get_insn_name (int);
extern rtx get_last_insn (void);
extern rtx get_last_insn_anywhere (void);
extern rtx get_first_nonnote_insn (void);
extern rtx get_last_nonnote_insn (void);
extern void start_sequence (void);
extern void push_to_sequence (rtx);
extern void end_sequence (void);
extern void push_to_full_sequence (rtx, rtx);
extern void end_full_sequence (rtx*, rtx*);


extern rtx immed_double_const (long long, long long, enum machine_mode);
extern rtx mem_for_const_double (rtx);
extern rtx force_const_mem (enum machine_mode, rtx);


extern rtx get_pool_constant (rtx);
extern rtx get_pool_constant_mark (rtx, _Bool *);
extern enum machine_mode get_pool_mode (rtx);
extern rtx get_pool_constant_for_function (struct function *, rtx);
extern enum machine_mode get_pool_mode_for_function (struct function *, rtx);
extern int get_pool_offset (rtx);
extern rtx simplify_subtraction (rtx);


extern rtx assign_stack_local (enum machine_mode, long long, int);

extern rtx assign_stack_temp (enum machine_mode, long long, int);

extern rtx assign_stack_temp_for_type (enum machine_mode, long long, int, tree);

extern rtx assign_temp (tree, int, int, int);

extern rtx emit_insn_before (rtx, rtx);
extern rtx emit_insn_before_scope (rtx, rtx, tree);
extern rtx emit_jump_insn_before (rtx, rtx);
extern rtx emit_jump_insn_before_scope (rtx, rtx, tree);
extern rtx emit_call_insn_before (rtx, rtx);
extern rtx emit_call_insn_before_scope (rtx, rtx, tree);
extern rtx emit_barrier_before (rtx);
extern rtx emit_label_before (rtx, rtx);
extern rtx emit_note_before (int, rtx);
extern rtx emit_insn_after (rtx, rtx);
extern rtx emit_insn_after_scope (rtx, rtx, tree);
extern rtx emit_jump_insn_after (rtx, rtx);
extern rtx emit_jump_insn_after_scope (rtx, rtx, tree);
extern rtx emit_call_insn_after (rtx, rtx);
extern rtx emit_call_insn_after_scope (rtx, rtx, tree);
extern rtx emit_barrier_after (rtx);
extern rtx emit_label_after (rtx, rtx);
extern rtx emit_note_after (int, rtx);
extern rtx emit_line_note_after (const char *, int, rtx);
extern rtx emit_insn (rtx);
extern rtx emit_jump_insn (rtx);
extern rtx emit_call_insn (rtx);
extern rtx emit_label (rtx);
extern rtx emit_barrier (void);
extern rtx emit_line_note (const char *, int);
extern rtx emit_note (const char *, int);
extern rtx emit_line_note_force (const char *, int);
extern rtx make_insn_raw (rtx);
extern rtx previous_insn (rtx);
extern rtx next_insn (rtx);
extern rtx prev_nonnote_insn (rtx);
extern rtx next_nonnote_insn (rtx);
extern rtx prev_real_insn (rtx);
extern rtx next_real_insn (rtx);
extern rtx prev_active_insn (rtx);
extern rtx next_active_insn (rtx);
extern int active_insn_p (rtx);
extern rtx prev_label (rtx);
extern rtx next_label (rtx);
extern rtx next_cc0_user (rtx);
extern rtx prev_cc0_setter (rtx);


extern tree choose_inner_scope (tree, tree);


extern rtx next_nondeleted_insn (rtx);
extern enum rtx_code reverse_condition (enum rtx_code);
extern enum rtx_code reverse_condition_maybe_unordered (enum rtx_code);
extern enum rtx_code swap_condition (enum rtx_code);
extern enum rtx_code unsigned_condition (enum rtx_code);
extern enum rtx_code signed_condition (enum rtx_code);
extern void mark_jump_label (rtx, rtx, int);
extern void cleanup_barriers (void);


extern _Bool squeeze_notes (rtx *, rtx *);
extern rtx delete_related_insns (rtx);
extern void delete_jump (rtx);
extern void delete_barrier (rtx);
extern rtx get_label_before (rtx);
extern rtx get_label_after (rtx);
extern rtx follow_jumps (rtx);


extern rtx *find_constant_term_loc (rtx *);


extern rtx try_split (rtx, rtx, int);
extern int split_branch_probability;


extern rtx split_insns (rtx, rtx);


extern rtx simplify_unary_operation (enum rtx_code, enum machine_mode, rtx, enum machine_mode);


extern rtx simplify_binary_operation (enum rtx_code, enum machine_mode, rtx, rtx);


extern rtx simplify_ternary_operation (enum rtx_code, enum machine_mode, enum machine_mode, rtx, rtx, rtx);



extern rtx simplify_relational_operation (enum rtx_code, enum machine_mode, rtx, rtx);


extern rtx simplify_gen_binary (enum rtx_code, enum machine_mode, rtx, rtx);


extern rtx simplify_gen_unary (enum rtx_code, enum machine_mode, rtx, enum machine_mode);


extern rtx simplify_gen_ternary (enum rtx_code, enum machine_mode, enum machine_mode, rtx, rtx, rtx);



extern rtx simplify_gen_relational (enum rtx_code, enum machine_mode, enum machine_mode, rtx, rtx);



extern rtx simplify_subreg (enum machine_mode, rtx, enum machine_mode, unsigned int);



extern rtx simplify_gen_subreg (enum machine_mode, rtx, enum machine_mode, unsigned int);



extern rtx simplify_replace_rtx (rtx, rtx, rtx);
extern rtx simplify_rtx (rtx);
extern rtx avoid_constant_pool_reference (rtx);


extern rtx gen_mem_addressof (rtx, tree, int);


extern enum machine_mode choose_hard_reg_mode (unsigned int, unsigned int);



extern rtx set_unique_reg_note (rtx, enum reg_note, rtx);
# 1585 "../../../kg++fe/gnu/rtl.h"
extern int rtx_addr_can_trap_p (rtx);
extern int rtx_unstable_p (rtx);
extern int rtx_varies_p (rtx, int);
extern int rtx_addr_varies_p (rtx, int);
extern long long get_integer_term (rtx);
extern rtx get_related_value (rtx);
extern rtx get_jump_table_offset (rtx, rtx *);
extern int global_reg_mentioned_p (rtx);
extern int reg_mentioned_p (rtx, rtx);
extern int count_occurrences (rtx, rtx, int);
extern int reg_referenced_p (rtx, rtx);
extern int reg_used_between_p (rtx, rtx, rtx);
extern int reg_referenced_between_p (rtx, rtx, rtx);
extern int reg_set_between_p (rtx, rtx, rtx);
extern int regs_set_between_p (rtx, rtx, rtx);
extern int commutative_operand_precedence (rtx);
extern int swap_commutative_operands_p (rtx, rtx);
extern int modified_between_p (rtx, rtx, rtx);
extern int no_labels_between_p (rtx, rtx);
extern int no_jumps_between_p (rtx, rtx);
extern int modified_in_p (rtx, rtx);
extern int insn_dependent_p (rtx, rtx);
extern int reg_set_p (rtx, rtx);
extern rtx single_set_2 (rtx, rtx);
extern int multiple_sets (rtx);
extern int set_noop_p (rtx);
extern int noop_move_p (rtx);
extern rtx find_last_value (rtx, rtx *, rtx, int);
extern int refers_to_regno_p (unsigned int, unsigned int, rtx, rtx *);

extern int reg_overlap_mentioned_p (rtx, rtx);
extern rtx set_of (rtx, rtx);
extern void note_stores (rtx, void (*) (rtx, rtx, void *), void *);


extern void note_uses (rtx *, void (*) (rtx *, void *), void *);


extern rtx reg_set_last (rtx, rtx);
extern int dead_or_set_p (rtx, rtx);
extern int dead_or_set_regno_p (rtx, unsigned int);
extern rtx find_reg_note (rtx, enum reg_note, rtx);
extern rtx find_regno_note (rtx, enum reg_note, unsigned int);

extern rtx find_reg_equal_equiv_note (rtx);
extern int find_reg_fusage (rtx, enum rtx_code, rtx);
extern int find_regno_fusage (rtx, enum rtx_code, unsigned int);

extern int pure_call_p (rtx);
extern void remove_note (rtx, rtx);
extern int side_effects_p (rtx);
extern int volatile_refs_p (rtx);
extern int volatile_insn_p (rtx);
extern int may_trap_p (rtx);
extern int inequality_comparisons_p (rtx);
extern rtx replace_rtx (rtx, rtx, rtx);
extern rtx replace_regs (rtx, rtx *, unsigned int, int);

extern int computed_jump_p (rtx);
typedef int (*rtx_function) (rtx *, void *);
extern int for_each_rtx (rtx *, rtx_function, void *);
extern rtx regno_use_in (unsigned int, rtx);
extern int auto_inc_p (rtx);
extern int in_expr_list_p (rtx, rtx);
extern void remove_node_from_expr_list (rtx, rtx *);
extern int insns_safe_to_move_p (rtx, rtx, rtx *);
extern int loc_mentioned_in_p (rtx *, rtx);
extern rtx find_first_parameter_load (rtx, rtx);
extern _Bool keep_with_call_p (rtx);



extern rtx find_use_as_address (rtx, rtx, long long);



void free_EXPR_LIST_list (rtx *);
void free_INSN_LIST_list (rtx *);
void free_EXPR_LIST_node (rtx);
void free_INSN_LIST_node (rtx);
rtx alloc_INSN_LIST (rtx, rtx);
rtx alloc_EXPR_LIST (int, rtx, rtx);







extern int max_parallel;


extern void free_reg_info (void);


extern int asm_noperands (rtx);
extern const char *decode_asm_operands (rtx, rtx *, rtx **, const char **, enum machine_mode *);



extern enum reg_class reg_preferred_class (int);
extern enum reg_class reg_alternate_class (int);

extern rtx get_first_nonparm_insn (void);

extern void split_all_insns (int);
extern void split_all_insns_noflow (void);


extern rtx const_int_rtx[64 * 2 + 1];





extern rtx const_true_rtx;

extern rtx const_tiny_rtx[3][(int) MAX_MACHINE_MODE];
# 1725 "../../../kg++fe/gnu/rtl.h"
enum global_rtl_index
{
  GR_PC,
  GR_CC0,
  GR_STACK_POINTER,
  GR_FRAME_POINTER,
# 1740 "../../../kg++fe/gnu/rtl.h"
  GR_HARD_FRAME_POINTER,





  GR_ARG_POINTER,


  GR_VIRTUAL_INCOMING_ARGS,
  GR_VIRTUAL_STACK_ARGS,
  GR_VIRTUAL_STACK_DYNAMIC,
  GR_VIRTUAL_OUTGOING_ARGS,
  GR_VIRTUAL_CFA,

  GR_MAX
};


extern rtx global_rtl[GR_MAX];
# 1773 "../../../kg++fe/gnu/rtl.h"
extern rtx pic_offset_table_rtx;
extern rtx struct_value_rtx;
extern rtx struct_value_incoming_rtx;
extern rtx static_chain_rtx;
extern rtx static_chain_incoming_rtx;
extern rtx return_address_pointer_rtx;




# 1 "../../../kg++fe/gnu/MIPS/genrtl.h" 1





extern rtx gen_rtx_fmt_s (enum rtx_code, enum machine_mode mode, const char *arg0);

extern rtx gen_rtx_fmt_ee (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1);

extern rtx gen_rtx_fmt_ue (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1);

extern rtx gen_rtx_fmt_iss (enum rtx_code, enum machine_mode mode, int arg0, const char *arg1, const char *arg2);


extern rtx gen_rtx_fmt_is (enum rtx_code, enum machine_mode mode, int arg0, const char *arg1);

extern rtx gen_rtx_fmt_i (enum rtx_code, enum machine_mode mode, int arg0);

extern rtx gen_rtx_fmt_isE (enum rtx_code, enum machine_mode mode, int arg0, const char *arg1, rtvec arg2);


extern rtx gen_rtx_fmt_iE (enum rtx_code, enum machine_mode mode, int arg0, rtvec arg1);

extern rtx gen_rtx_fmt_Ess (enum rtx_code, enum machine_mode mode, rtvec arg0, const char *arg1, const char *arg2);


extern rtx gen_rtx_fmt_sEss (enum rtx_code, enum machine_mode mode, const char *arg0, rtvec arg1, const char *arg2, const char *arg3);


extern rtx gen_rtx_fmt_eE (enum rtx_code, enum machine_mode mode, rtx arg0, rtvec arg1);

extern rtx gen_rtx_fmt_E (enum rtx_code, enum machine_mode mode, rtvec arg0);

extern rtx gen_rtx_fmt_e (enum rtx_code, enum machine_mode mode, rtx arg0);

extern rtx gen_rtx_fmt_ss (enum rtx_code, enum machine_mode mode, const char *arg0, const char *arg1);

extern rtx gen_rtx_fmt_sies (enum rtx_code, enum machine_mode mode, const char *arg0, int arg1, rtx arg2, const char *arg3);


extern rtx gen_rtx_fmt_sse (enum rtx_code, enum machine_mode mode, const char *arg0, const char *arg1, rtx arg2);


extern rtx gen_rtx_fmt_sE (enum rtx_code, enum machine_mode mode, const char *arg0, rtvec arg1);

extern rtx gen_rtx_fmt_iuuBteiee (enum rtx_code, enum machine_mode mode, int arg0, rtx arg1, rtx arg2, struct basic_block_def *arg3, union tree_node *arg4, rtx arg5, int arg6, rtx arg7, rtx arg8);




extern rtx gen_rtx_fmt_iuuBteiee0 (enum rtx_code, enum machine_mode mode, int arg0, rtx arg1, rtx arg2, struct basic_block_def *arg3, union tree_node *arg4, rtx arg5, int arg6, rtx arg7, rtx arg8);




extern rtx gen_rtx_fmt_iuuBteieee (enum rtx_code, enum machine_mode mode, int arg0, rtx arg1, rtx arg2, struct basic_block_def *arg3, union tree_node *arg4, rtx arg5, int arg6, rtx arg7, rtx arg8, rtx arg9);





extern rtx gen_rtx_fmt_iuu000000 (enum rtx_code, enum machine_mode mode, int arg0, rtx arg1, rtx arg2);

extern rtx gen_rtx_fmt_iuuB00is (enum rtx_code, enum machine_mode mode, int arg0, rtx arg1, rtx arg2, struct basic_block_def *arg3, int arg4, const char *arg5);



extern rtx gen_rtx_fmt_ssiEEsi (enum rtx_code, enum machine_mode mode, const char *arg0, const char *arg1, int arg2, rtvec arg3, rtvec arg4, const char *arg5, int arg6);



extern rtx gen_rtx_fmt_Ei (enum rtx_code, enum machine_mode mode, rtvec arg0, int arg1);

extern rtx gen_rtx_fmt_eEee0 (enum rtx_code, enum machine_mode mode, rtx arg0, rtvec arg1, rtx arg2, rtx arg3);


extern rtx gen_rtx_fmt_eee (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1, rtx arg2);

extern rtx gen_rtx_fmt_ (enum rtx_code, enum machine_mode mode);
extern rtx gen_rtx_fmt_w (enum rtx_code, enum machine_mode mode, long long arg0);

extern rtx gen_rtx_fmt_www (enum rtx_code, enum machine_mode mode, long long arg0, long long arg1, long long arg2);



extern rtx gen_rtx_fmt_0 (enum rtx_code, enum machine_mode mode);
extern rtx gen_rtx_fmt_i0 (enum rtx_code, enum machine_mode mode, int arg0);

extern rtx gen_rtx_fmt_ei (enum rtx_code, enum machine_mode mode, rtx arg0, int arg1);

extern rtx gen_rtx_fmt_e0 (enum rtx_code, enum machine_mode mode, rtx arg0);

extern rtx gen_rtx_fmt_u00 (enum rtx_code, enum machine_mode mode, rtx arg0);

extern rtx gen_rtx_fmt_eit (enum rtx_code, enum machine_mode mode, rtx arg0, int arg1, union tree_node *arg2);


extern rtx gen_rtx_fmt_eeeee (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1, rtx arg2, rtx arg3, rtx arg4);


extern rtx gen_rtx_fmt_Ee (enum rtx_code, enum machine_mode mode, rtvec arg0, rtx arg1);

extern rtx gen_rtx_fmt_uuEiiiiiibbii (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1, rtvec arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, struct bitmap_head_def *arg9, struct bitmap_head_def *arg10, int arg11, int arg12);






extern rtx gen_rtx_fmt_iiiiiiiitt (enum rtx_code, enum machine_mode mode, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, union tree_node *arg8, union tree_node *arg9);





extern rtx gen_rtx_fmt_eti (enum rtx_code, enum machine_mode mode, rtx arg0, union tree_node *arg1, int arg2);


extern rtx gen_rtx_fmt_bi (enum rtx_code, enum machine_mode mode, struct bitmap_head_def *arg0, int arg1);


extern rtx gen_rtx_fmt_uuuu (enum rtx_code, enum machine_mode mode, rtx arg0, rtx arg1, rtx arg2, rtx arg3);
# 1784 "../../../kg++fe/gnu/rtl.h" 2







extern rtx gen_rtx_CONST_INT (enum machine_mode, long long);
extern rtx gen_rtx_CONST_VECTOR (enum machine_mode, rtvec);
extern rtx gen_raw_REG (enum machine_mode, int);
extern rtx gen_rtx_REG (enum machine_mode, unsigned);
extern rtx gen_rtx_SUBREG (enum machine_mode, rtx, int);
extern rtx gen_rtx_MEM (enum machine_mode, rtx);

extern rtx gen_lowpart_SUBREG (enum machine_mode, rtx);
# 1868 "../../../kg++fe/gnu/rtl.h"
extern rtx find_next_ref (rtx, rtx);

extern rtx output_constant_def (tree, int);
# 1880 "../../../kg++fe/gnu/rtl.h"
extern int flow2_completed;




extern int reload_completed;




extern int reload_in_progress;







extern int cse_not_expected;



extern int no_new_pseudos;





extern int rtx_to_tree_code (enum rtx_code);


struct obstack;
extern void gcc_obstack_init (struct obstack *);


struct cse_basic_block_data;
# 1926 "../../../kg++fe/gnu/rtl.h"
extern int rtx_cost (rtx, enum rtx_code);
extern int address_cost (rtx, enum machine_mode);
extern int delete_trivially_dead_insns (rtx, int);

extern int cse_main (rtx, int, int, FILE *);

extern void cse_end_of_basic_block (rtx, struct cse_basic_block_data *, int, int, int);




extern int comparison_dominates_p (enum rtx_code, enum rtx_code);
extern int condjump_p (rtx);
extern int any_condjump_p (rtx);
extern int any_uncondjump_p (rtx);
extern int safe_to_remove_jump_p (rtx);
extern rtx pc_set (rtx);
extern rtx condjump_label (rtx);
extern int simplejump_p (rtx);
extern int tablejump_p (rtx);
extern int returnjump_p (rtx);
extern int onlyjump_p (rtx);
extern int only_sets_cc0_p (rtx);
extern int sets_cc0_p (rtx);
extern int invert_jump_1 (rtx, rtx);
extern int invert_jump (rtx, rtx, int);
extern int rtx_renumbered_equal_p (rtx, rtx);
extern int true_regnum (rtx);
extern unsigned int reg_or_subregno (rtx);
extern int redirect_jump_1 (rtx, rtx);
extern int redirect_jump (rtx, rtx, int);
extern void rebuild_jump_labels (rtx);
extern enum rtx_code reversed_comparison_code (rtx, rtx);
extern enum rtx_code reversed_comparison_code_parts (enum rtx_code, rtx, rtx, rtx);

extern void delete_for_peephole (rtx, rtx);
extern int condjump_in_parallel_p (rtx);
extern void never_reached_warning (rtx, rtx);
extern void purge_line_number_notes (rtx);
extern void copy_loop_headers (rtx);


extern int max_reg_num (void);
extern int max_label_num (void);
extern int get_first_label_num (void);
extern void delete_insns_since (rtx);
extern void mark_reg_pointer (rtx, int);
extern void mark_user_reg (rtx);
extern void reset_used_flags (rtx);
extern void reorder_insns (rtx, rtx, rtx);
extern void reorder_insns_nobb (rtx, rtx, rtx);
extern int get_max_uid (void);
extern int in_sequence_p (void);
extern void force_next_line_note (void);
extern void init_emit (void);
extern void init_emit_once (int);
extern void push_topmost_sequence (void);
extern void pop_topmost_sequence (void);
extern int subreg_realpart_p (rtx);
extern void reverse_comparison (rtx);
extern void set_new_first_and_last_insn (rtx, rtx);
extern void set_new_first_and_last_label_num (int, int);
extern void set_new_last_label_num (int);
extern void unshare_all_rtl_again (rtx);
extern void set_first_insn (rtx);
extern void set_last_insn (rtx);
extern void link_cc0_insns (rtx);
extern void add_insn (rtx);
extern void add_insn_before (rtx, rtx);
extern void add_insn_after (rtx, rtx);
extern void remove_insn (rtx);
extern void reorder_insns_with_line_notes (rtx, rtx, rtx);
extern void emit_insn_after_with_line_notes (rtx, rtx, rtx);
extern enum rtx_code classify_insn (rtx);
extern rtx emit (rtx);



int force_line_numbers (void);
void restore_line_number_status (int old_value);
extern void renumber_insns (FILE *);
extern void remove_unnecessary_notes (void);
extern rtx delete_insn (rtx);
extern void delete_insn_chain (rtx, rtx);
extern rtx delete_insn_and_edges (rtx);
extern void delete_insn_chain_and_edges (rtx, rtx);


extern int combine_instructions (rtx, unsigned int);
extern unsigned int extended_count (rtx, enum machine_mode, int);
extern rtx remove_death (unsigned int, rtx);

extern void dump_combine_stats (FILE *);
extern void dump_combine_total_stats (FILE *);




extern void schedule_insns (FILE *);
extern void schedule_ebbs (FILE *);

extern void fix_sched_param (const char *, const char *);


extern const char *print_rtx_head;
extern void debug_rtx (rtx);
extern void debug_rtx_list (rtx, int);
extern void debug_rtx_range (rtx, rtx);
extern rtx debug_rtx_find (rtx, int);

extern void print_mem_expr (FILE *, tree);
extern void print_rtl (FILE *, rtx);
extern void print_simple_rtl (FILE *, rtx);
extern int print_rtl_single (FILE *, rtx);
extern void print_inline_rtx (FILE *, rtx, int);



extern void init_loop (void);
extern rtx libcall_other_reg (rtx, rtx);

extern void loop_optimize (rtx, FILE *, int);

extern void record_excess_regs (rtx, rtx, rtx *);


extern void reposition_prologue_and_epilogue_notes (rtx);
extern void thread_prologue_and_epilogue_insns (rtx);
extern int prologue_epilogue_contains (rtx);
extern int sibcall_epilogue_contains (rtx);
extern void preserve_rtl_expr_result (rtx);
extern void mark_temp_addr_taken (rtx);
extern void update_temp_slot_address (rtx, rtx);
extern void purge_addressof (rtx);
extern void purge_hard_subreg_sets (rtx);


extern void set_file_and_line_for_stmt (const char *, int);
extern void expand_null_return (void);
extern void emit_jump (rtx);
extern int preserve_subexpressions_p (void);


extern rtx move_by_pieces (rtx, rtx, unsigned long long, unsigned int, int);




extern void recompute_reg_usage (rtx, int);
extern int initialize_uninitialized_subregs (void);
extern void delete_dead_jumptables (void);

extern void print_rtl_with_bb (FILE *, rtx);
extern void dump_flow_info (FILE *);



extern void init_expmed (void);
extern void expand_inc (rtx, rtx);
extern void expand_dec (rtx, rtx);
extern rtx expand_mult_highpart (enum machine_mode, rtx, unsigned long long, rtx, int, int);





extern int gcse_main (rtx, FILE *);



extern void mark_elimination (int, int);

extern int global_alloc (FILE *);
extern void dump_global_regs (FILE *);





extern void build_insn_chain (rtx);


extern int reg_classes_intersect_p (enum reg_class, enum reg_class);
extern int reg_class_subset_p (enum reg_class, enum reg_class);
extern void globalize_reg (int);
extern void init_regs (void);
extern void init_fake_stack_mems (void);
extern void init_reg_sets (void);
extern void regset_release_memory (void);
extern void regclass_init (void);
extern void regclass (rtx, int, FILE *);
extern void reg_scan (rtx, unsigned int, int);
extern void reg_scan_update (rtx, rtx, unsigned int);
extern void fix_register (const char *, int, int);





extern _Bool invalid_mode_change_p (unsigned int, enum reg_class, enum machine_mode);



extern int delete_null_pointer_checks (rtx);



extern void regmove_optimize (rtx, int, FILE *);

extern void combine_stack_adjustments (void);



extern void dbr_schedule (rtx, FILE *);




extern void dump_local_alloc (FILE *);

extern int local_alloc (void);
extern int function_invariant_p (rtx);


extern void init_branch_prob (const char *);
extern void branch_prob (void);
extern void end_branch_prob (void);
extern void output_func_start_profiler (void);



extern void reg_to_stack (rtx, FILE *);



extern int add_double (unsigned long long, long long, unsigned long long, long long, unsigned long long *, long long *);



extern int neg_double (unsigned long long, long long, unsigned long long *, long long *);


extern int mul_double (unsigned long long, long long, unsigned long long, long long, unsigned long long *, long long *);




extern void lshift_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *, int);



extern void rshift_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *, int);



extern void lrotate_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *);



extern void rrotate_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *);





enum libcall_type
{
  LCT_NORMAL = 0,
  LCT_CONST = 1,
  LCT_PURE = 2,
  LCT_CONST_MAKE_BLOCK = 3,
  LCT_PURE_MAKE_BLOCK = 4,
  LCT_NORETURN = 5,
  LCT_THROW = 6,
  LCT_ALWAYS_RETURN = 7,
  LCT_RETURNS_TWICE = 8
};

extern void emit_library_call (rtx, enum libcall_type, enum machine_mode, int, ...);


extern rtx emit_library_call_value (rtx, rtx, enum libcall_type, enum machine_mode, int, ...);




extern int set_dominates_use (int, int, int, rtx, rtx);


extern int in_data_section (void);
extern void init_varasm_once (void);


extern void init_rtl (void);
extern void traverse_md_constants (int (*) (void **, void *), void *);

struct md_constant { char *name, *value; };


extern int read_skip_spaces (FILE *);
extern rtx read_rtx (FILE *);


extern const char *read_rtx_filename;
extern int read_rtx_lineno;







extern void fancy_abort (const char *, int, const char *)
    __attribute__ ((__noreturn__));



extern void clear_reg_alias_info (rtx);
extern rtx canon_rtx (rtx);
extern int true_dependence (rtx, enum machine_mode, rtx, int (*)(rtx, int));

extern rtx get_addr (rtx);
extern int canon_true_dependence (rtx, enum machine_mode, rtx, rtx, int (*)(rtx, int));

extern int read_dependence (rtx, rtx);
extern int anti_dependence (rtx, rtx);
extern int output_dependence (rtx, rtx);
extern void mark_constant_function (void);
extern void init_alias_once (void);
extern void init_alias_analysis (void);
extern void end_alias_analysis (void);
extern rtx addr_side_effect_eval (rtx, int, int);


typedef enum {
  sibcall_use_normal = 1,
  sibcall_use_tail_recursion,
  sibcall_use_sibcall
} sibcall_use_t;

extern void optimize_sibling_and_tail_recursive_calls (void);
extern void replace_call_placeholder (rtx, sibcall_use_t);






extern rtx stack_limit_rtx;


extern void regrename_optimize (void);
extern void copyprop_hardreg_forward (void);


extern void if_convert (int);


extern void invert_br_probabilities (rtx);
extern _Bool expensive_function_p (int);

extern void tracer (void);
# 51 "../../../kg++fe/gnu/toplev.c" 2

# 1 "../../../kg++fe/gnu/tree.h" 1
# 29 "../../../kg++fe/gnu/tree.h"
# 1 "../../../kg++fe/gnu/machmode.h" 1
# 30 "../../../kg++fe/gnu/tree.h" 2
# 1 "../../../kg++fe/gnu/version.h" 1


extern const char version_string[];
extern const char bug_report_url[];
# 31 "../../../kg++fe/gnu/tree.h" 2
# 1 "../../../kg++fe/gnu/location.h" 1
# 27 "../../../kg++fe/gnu/location.h"
struct location_s
{

  const char *file;


  int line;
};
typedef struct location_s location_t;
# 32 "../../../kg++fe/gnu/tree.h" 2





enum tree_code {
# 1 "../../../kg++fe/gnu/tree.def" 1
# 50 "../../../kg++fe/gnu/tree.def"
ERROR_MARK,





IDENTIFIER_NODE,





OP_IDENTIFIER,







TREE_LIST,


TREE_VEC,
# 95 "../../../kg++fe/gnu/tree.def"
BLOCK,
# 140 "../../../kg++fe/gnu/tree.def"
VOID_TYPE,
# 150 "../../../kg++fe/gnu/tree.def"
INTEGER_TYPE,



REAL_TYPE,



COMPLEX_TYPE,



VECTOR_TYPE,
# 175 "../../../kg++fe/gnu/tree.def"
ENUMERAL_TYPE,



BOOLEAN_TYPE,



CHAR_TYPE,



POINTER_TYPE,





OFFSET_TYPE,



REFERENCE_TYPE,






METHOD_TYPE,


FILE_TYPE,
# 218 "../../../kg++fe/gnu/tree.def"
ARRAY_TYPE,





SET_TYPE,
# 234 "../../../kg++fe/gnu/tree.def"
RECORD_TYPE,





UNION_TYPE,





QUAL_UNION_TYPE,







FUNCTION_TYPE,





LANG_TYPE,
# 271 "../../../kg++fe/gnu/tree.def"
INTEGER_CST,


REAL_CST,




COMPLEX_CST,


VECTOR_CST,




STRING_CST,
# 349 "../../../kg++fe/gnu/tree.def"
FUNCTION_DECL,
LABEL_DECL,
CONST_DECL,
TYPE_DECL,
VAR_DECL,
PARM_DECL,
RESULT_DECL,
FIELD_DECL,



NAMESPACE_DECL,






COMPONENT_REF,
# 376 "../../../kg++fe/gnu/tree.def"
BIT_FIELD_REF,


INDIRECT_REF,


BUFFER_REF,



ARRAY_REF,




ARRAY_RANGE_REF,






VTABLE_REF,
# 422 "../../../kg++fe/gnu/tree.def"
CONSTRUCTOR,
# 432 "../../../kg++fe/gnu/tree.def"
COMPOUND_EXPR,


MODIFY_EXPR,



INIT_EXPR,






TARGET_EXPR,
# 456 "../../../kg++fe/gnu/tree.def"
COND_EXPR,
# 479 "../../../kg++fe/gnu/tree.def"
BIND_EXPR,




CALL_EXPR,




METHOD_CALL_EXPR,
# 503 "../../../kg++fe/gnu/tree.def"
WITH_CLEANUP_EXPR,
# 520 "../../../kg++fe/gnu/tree.def"
CLEANUP_POINT_EXPR,
# 569 "../../../kg++fe/gnu/tree.def"
PLACEHOLDER_EXPR,





WITH_RECORD_EXPR,


PLUS_EXPR,
MINUS_EXPR,
MULT_EXPR,


TRUNC_DIV_EXPR,


CEIL_DIV_EXPR,


FLOOR_DIV_EXPR,


ROUND_DIV_EXPR,


TRUNC_MOD_EXPR,
CEIL_MOD_EXPR,
FLOOR_MOD_EXPR,
ROUND_MOD_EXPR,


RDIV_EXPR,



EXACT_DIV_EXPR,






FIX_TRUNC_EXPR,
FIX_CEIL_EXPR,
FIX_FLOOR_EXPR,
FIX_ROUND_EXPR,


FLOAT_EXPR,




EXPON_EXPR,



NEGATE_EXPR,

MIN_EXPR,
MAX_EXPR,





ABS_EXPR,

FFS_EXPR,
# 647 "../../../kg++fe/gnu/tree.def"
LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,


BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_ANDTC_EXPR,
BIT_NOT_EXPR,
# 668 "../../../kg++fe/gnu/tree.def"
TRUTH_ANDIF_EXPR,
TRUTH_ORIF_EXPR,
TRUTH_AND_EXPR,
TRUTH_OR_EXPR,
TRUTH_XOR_EXPR,
TRUTH_NOT_EXPR,







LT_EXPR,
LE_EXPR,
GT_EXPR,
GE_EXPR,
EQ_EXPR,
NE_EXPR,


UNORDERED_EXPR,
ORDERED_EXPR,


UNLT_EXPR,
UNLE_EXPR,
UNGT_EXPR,
UNGE_EXPR,
UNEQ_EXPR,


IN_EXPR,
SET_LE_EXPR,
CARD_EXPR,
RANGE_EXPR,




CONVERT_EXPR,


NOP_EXPR,


NON_LVALUE_EXPR,
# 726 "../../../kg++fe/gnu/tree.def"
VIEW_CONVERT_EXPR,





SAVE_EXPR,
# 741 "../../../kg++fe/gnu/tree.def"
UNSAVE_EXPR,
# 750 "../../../kg++fe/gnu/tree.def"
RTL_EXPR,



ADDR_EXPR,


REFERENCE_EXPR,



ENTRY_VALUE_EXPR,



FDESC_EXPR,



COMPLEX_EXPR,


CONJ_EXPR,



REALPART_EXPR,
IMAGPART_EXPR,




PREDECREMENT_EXPR,
PREINCREMENT_EXPR,
POSTDECREMENT_EXPR,
POSTINCREMENT_EXPR,


VA_ARG_EXPR,






TRY_CATCH_EXPR,
# 809 "../../../kg++fe/gnu/tree.def"
TRY_FINALLY_EXPR,






GOTO_SUBROUTINE_EXPR,







POPDHC_EXPR,




POPDCC_EXPR,
# 838 "../../../kg++fe/gnu/tree.def"
LABEL_EXPR,



GOTO_EXPR,






RETURN_EXPR,



EXIT_EXPR,




LOOP_EXPR,




LABELED_BLOCK_EXPR,




EXIT_BLOCK_EXPR,
# 877 "../../../kg++fe/gnu/tree.def"
EXPR_WITH_FILE_LOCATION,





SWITCH_EXPR,


EXC_PTR_EXPR,
# 39 "../../../kg++fe/gnu/tree.h" 2

  LAST_AND_UNUSED_TREE_CODE

};




typedef unsigned int LABEL_IDX;
struct mongoose_gcc_DST_IDX {unsigned int block; unsigned int offset; };



typedef struct st ST;
# 67 "../../../kg++fe/gnu/tree.h"
extern const char tree_code_type[];
# 78 "../../../kg++fe/gnu/tree.h"
extern const unsigned char tree_code_length[];




extern const char *const tree_code_name[];



enum built_in_class
{
  NOT_BUILT_IN = 0,
  BUILT_IN_FRONTEND,
  BUILT_IN_MD,
  BUILT_IN_NORMAL
};


extern const char *const built_in_class_names[4];





enum built_in_function
{
# 1 "../../../kg++fe/gnu/builtins.def" 1
# 166 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_ALLOCA,





BUILT_IN_ABS,


BUILT_IN_LABS,



BUILT_IN_FABS,


BUILT_IN_FABSF,


BUILT_IN_FABSL,



BUILT_IN_LLABS,



BUILT_IN_IMAXABS,



BUILT_IN_CONJ,



BUILT_IN_CONJF,



BUILT_IN_CONJL,



BUILT_IN_CREAL,



BUILT_IN_CREALF,



BUILT_IN_CREALL,



BUILT_IN_CIMAG,



BUILT_IN_CIMAGF,



BUILT_IN_CIMAGL,




BUILT_IN_DIV,
BUILT_IN_LDIV,
BUILT_IN_FFLOOR,
BUILT_IN_FCEIL,
BUILT_IN_FMOD,
BUILT_IN_FREM,




BUILT_IN_BZERO,






BUILT_IN_BCOPY,






BUILT_IN_BCMP,







BUILT_IN_FFS,



BUILT_IN_INDEX,



BUILT_IN_RINDEX,




BUILT_IN_MEMCPY,



BUILT_IN_MEMMOVE,



BUILT_IN_MEMCMP,



BUILT_IN_MEMSET,



BUILT_IN_MEMPCPY,




BUILT_IN_STRCAT,



BUILT_IN_STRNCAT,



BUILT_IN_STPCPY,



BUILT_IN_STRCPY,



BUILT_IN_STRNCPY,



BUILT_IN_STRCMP,



BUILT_IN_STRNCMP,



BUILT_IN_STRLEN,



BUILT_IN_STRSTR,



BUILT_IN_STRPBRK,



BUILT_IN_STRSPN,



BUILT_IN_STRCSPN,



BUILT_IN_STRCHR,



BUILT_IN_STRRCHR,




BUILT_IN_CVT64_LOW,




BUILT_IN_CVT64_HIGH,




BUILT_IN_CVT32,
# 377 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_PERIPHERAL_RW_BEGIN,




BUILT_IN_PERIPHERAL_RW_END,




BUILT_IN_VBUF_OFFSET,



BUILT_IN_SBUF_OFFSET,



BUILD_IN_MUL_SHIFT_HI,



BUILD_IN_MUL_SHIFT,



BUILD_IN_C3_LEAD,



BUILD_IN_C3_MAC,



BUILD_IN_C3_MACN,



BUILD_IN_C3_ROUND,



BUILD_IN_C3_SAADDS,



BUILD_IN_C3_SASUBS,



BUILD_IN_C3_MULA,



BUILD_IN_C3_INIT_ACC,



BUILD_IN_C3_SAVE_ACC,



BUILD_IN_MPY_32_16,



BUILD_IN_C3_MACD,



BUILD_IN_C3_MULAD,



BUILD_IN_C3_SAADDSH,



BUILD_IN_C3_SASUBSH,



BUILD_IN_C3_MVFS,



BUILD_IN_C3_INIT_ADDR,



BUILD_IN_C3_SAVE_ADDR,



BUILD_IN_C3_MAC_A,



BUILD_IN_C3_MACN_A,



BUILD_IN_C3_DMAC_A,



BUILD_IN_C3_DMACN_A,



BUILD_IN_C3_INIT_DACC,



BUILD_IN_C3_SAVE_DACC,



BUILD_IN_C3_SAADDH_A,



BUILD_IN_C3_SASUBH_A,



BUILD_IN_C3_SAMULSH,



BUILD_IN_C3_MULA_A,



BUILD_IN_C3_SAMULH_A,



BUILD_IN_C3_PTR,



BUILD_IN_C3_MAC_AR,



BUILD_IN_C3_MACN_AR,



BUILD_IN_C3_MULA_AR,



BUILD_IN_C3_INIT_PTR,



BUILD_IN_C3_TRBACK,



BUILD_IN_C3_VITERBI,



BUILD_IN_C3_DMULT,



BUILD_IN_C3_DMULT_A,



BUILD_IN_C3_DMULTN,



BUILD_IN_C3_DMULTN_A,



BUILD_IN_SET_CIRCBUF,



BUILD_IN_RESET_CIRCBUF,



BUILD_IN_C3_DADD,



BUILD_IN_C3_DSUB,



BUILD_IN_C3_FFT,



BUILD_IN_C3_FFTLD,



BUILD_IN_C3_FFTST,



BUILD_IN_DEPOSIT,



BUILD_IN_EXTRACT,



BUILD_IN_C3_BITR,



BUILD_IN_C3_DMAC,



BUILD_IN_C3_DMACN,



BUILD_IN_C3_LOAD,



BUILD_IN_C3_STORE,



BUILD_IN_C3_REVB,



BUILD_IN_C3_DSHL_I,



BUILD_IN_C3_DSHR_I,



BUILD_IN_C3_MAC_I,



BUILD_IN_C3_MACN_I,



BUILD_IN_C3_MULA_I,



BUILD_IN_C3_SAADD_A,



BUILD_IN_C3_SADDHA,



BUILD_IN_C3_SAADDHA_A,



BUILD_IN_C3_SASUB_A,



BUILD_IN_COPY_ADDR,



BUILD_IN_SET_ADDR,




BUILT_IN_C2_MVGR_G2R,




BUILT_IN_C2_MVGR_R2G,




BUILT_IN_C2_MVGR_G2S,




BUILT_IN_C2_MVGR_S2G,





BUILT_IN_C2_MVGC_C2G,




BUILT_IN_C2_MVGC_G2C,





BUILT_IN_C2_LD_V,




BUILT_IN_C2_LD_G,




BUILT_IN_C2_LD_S,




BUILT_IN_C2_ST_V,




BUILT_IN_C2_ST_G,




BUILT_IN_C2_LD_G_IMM,




BUILT_IN_C2_LD_C_IMM,




BUILT_IN_C2_LD_V_IMM,





BUILT_IN_C2_ST_V_IMM,




BUILT_IN_C2_ST_C_IMM,




BUILT_IN_C2_ST_G_IMM,




BUILT_IN_C2_VADDS,




BUILT_IN_C2_VSUBS,




BUILT_IN_C2_VMUL,




BUILT_IN_C2_VNEG,




BUILT_IN_C2_VSHFT,




BUILT_IN_C2_VCLP,




BUILT_IN_C2_VCLG,




BUILT_IN_C2_VCMOV,




BUILT_IN_C2_LCZERO,




BUILT_IN_C2_VRND,




BUILT_IN_C2_VSPAS,




BUILT_IN_C2_VSPEL,




BUILT_IN_C2_VSPEL_MAC,






BUILT_IN_C2_MMUL,




BUILT_IN_C2_VMOV,





BUILT_IN_C2_VCOPY,





BUILT_IN_C2_VCMPR,




BUILT_IN_C2_SAD,




BUILT_IN_C2_SAD_TMP,





BUILT_IN_C2_SATD,





BUILT_IN_C2_INTRA,




BUILT_IN_C2_MVSEL,




BUILT_IN_C2_BCST,




BUILT_IN_C2_VLCS_R,




BUILT_IN_C2_VLCS,





BUILT_IN_C2_ADDS,




BUILT_IN_C2_ADDS_R,





BUILT_IN_C2_SUBS,




BUILT_IN_C2_SUBS_R,






BUILT_IN_C2_MULS,





BUILT_IN_C2_MADS,




BUILT_IN_C2_SMADS,





BUILT_IN_C2_CMOV,




BUILT_IN_C2_MOV,




BUILT_IN_C2_MOV_R,




BUILT_IN_C2_CLP,




BUILT_IN_C2_CHKRNG,




BUILT_IN_C2_SCOND,




BUILT_IN_C2_SCOND_R_WB,




BUILT_IN_C2_SCOND_R,





BUILT_IN_C2_SCOND_BR,




BUILT_IN_C2_SCOND_BR_R,





BUILT_IN_C2_BOP,




BUILT_IN_C2_BDEP,




BUILT_IN_C2_WRAP,




BUILT_IN_C2_BXTR,




BUILT_IN_C2_SUM4,




BUILT_IN_C2_SUM3_SADDR,





BUILT_IN_C2_SUM4_R,




BUILT_IN_C2_MED,




BUILT_IN_C2_GSUMS,




BUILT_IN_C2_CLZOB,




BUILT_IN_C2_THCTRL,




BUILT_IN_C2_BR_F,




BUILT_IN_C2_BR_T,





BUILT_IN_C2_LD_V2G,




BUILT_IN_C2_LD_V2G_IMM,




BUILT_IN_C2_ST_G2V,




BUILT_IN_C2_ST_G2V_IMM,




BUILT_IN_C2_MVGR_R2S,




BUILT_IN_C2_FORK,




BUILT_IN_C2_JOINT,




BUILT_IN_C2_THREAD_MAJOR,




BUILT_IN_C2_THREAD_MINOR,
# 1096 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_FLOOR,






BUILT_IN_FLOORF,







BUILT_IN_FLOORL,







BUILT_IN_POW,







BUILT_IN_TAN,
# 1171 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_ACOS,




BUILT_IN_ACOSF,




BUILT_IN_ACOSH,




BUILT_IN_ACOSHF,




BUILT_IN_ACOSHL,




BUILT_IN_ACOSL,




BUILT_IN_ASIN,




BUILT_IN_ASINF,




BUILT_IN_ASINH,




BUILT_IN_ASINHF,




BUILT_IN_ASINHL,




BUILT_IN_ASINL,




BUILT_IN_ATAN,




BUILT_IN_ATAN2,




BUILT_IN_ATAN2F,




BUILT_IN_ATAN2L,




BUILT_IN_ATANF,




BUILT_IN_ATANH,




BUILT_IN_ATANHF,




BUILT_IN_ATANHL,




BUILT_IN_ATANL,




BUILT_IN_CEIL,




BUILT_IN_CEILF,




BUILT_IN_CEILL,




BUILT_IN_FMODF,




BUILT_IN_FMODL,




BUILT_IN_FREXP,




BUILT_IN_FREXPF,




BUILT_IN_FREXPL,




BUILT_IN_LDEXP,




BUILT_IN_LDEXPF,




BUILT_IN_LDEXPL,




BUILT_IN_LOG10,




BUILT_IN_LOG10F,




BUILT_IN_LOG10L,




BUILT_IN_MODF,




BUILT_IN_MODFF,




BUILT_IN_MODFL,




BUILT_IN_POWF,




BUILT_IN_POWL,




BUILT_IN_SINH,




BUILT_IN_SINHF,




BUILT_IN_SINHL,




BUILT_IN_TANF,




BUILT_IN_TANH,




BUILT_IN_TANHF,




BUILT_IN_TANHL,




BUILT_IN_TANL,




BUILT_IN_COSH,




BUILT_IN_COSHF,




BUILT_IN_COSHL,




BUILT_IN_POPCOUNT,




BUILT_IN_POPCOUNTL,




BUILT_IN_POPCOUNTLL,




BUILT_IN_CTZ,




BUILT_IN_CTZL,




BUILT_IN_CTZLL,






BUILT_IN_SQRT,






BUILT_IN_SIN,




BUILT_IN_COS,




BUILT_IN_EXP,






BUILT_IN_LOG,






BUILT_IN_SQRTF,






BUILT_IN_SINF,




BUILT_IN_COSF,




BUILT_IN_EXPF,






BUILT_IN_LOGF,






BUILT_IN_SQRTL,






BUILT_IN_SINL,




BUILT_IN_COSL,




BUILT_IN_EXPL,






BUILT_IN_LOGL,







BUILT_IN_INF,



BUILT_IN_INFF,



BUILT_IN_INFL,




BUILT_IN_HUGE_VAL,



BUILT_IN_HUGE_VALF,



BUILT_IN_HUGE_VALL,




BUILT_IN_NAN,



BUILT_IN_NANF,



BUILT_IN_NANL,




BUILT_IN_NANS,



BUILT_IN_NANSF,



BUILT_IN_NANSL,




BUILT_IN_SAVEREGS,



BUILT_IN_CLASSIFY_TYPE,



BUILT_IN_NEXT_ARG,



BUILT_IN_ARGS_INFO,



BUILT_IN_CONSTANT_P,



BUILT_IN_FRAME_ADDRESS,



BUILT_IN_RETURN_ADDRESS,



BUILT_IN_AGGREGATE_INCOMING_ADDRESS,



BUILT_IN_APPLY_ARGS,



BUILT_IN_APPLY,



BUILT_IN_RETURN,




BUILT_IN_SETJMP,



BUILT_IN_LONGJMP,
# 1667 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_TRAP,



BUILT_IN_PREFETCH,







BUILT_IN_PRINTF,
# 1689 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_PUTCHAR,



BUILT_IN_PUTS,



BUILT_IN_SNPRINTF,



BUILT_IN_SPRINTF,



BUILT_IN_SCANF,



BUILT_IN_SSCANF,



BUILT_IN_VPRINTF,



BUILT_IN_VSCANF,



BUILT_IN_VSSCANF,



BUILT_IN_VSNPRINTF,



BUILT_IN_VSPRINTF,
# 1742 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_FPUTC,



BUILT_IN_FPUTS,





BUILT_IN_FWRITE,




BUILT_IN_FPRINTF,
# 1770 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_PUTCHAR_UNLOCKED,


BUILT_IN_PUTS_UNLOCKED,


BUILT_IN_PRINTF_UNLOCKED,
# 1788 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_FPUTC_UNLOCKED,


BUILT_IN_FPUTS_UNLOCKED,





BUILT_IN_FWRITE_UNLOCKED,
# 1808 "../../../kg++fe/gnu/builtins.def"
BUILT_IN_ISGREATER,



BUILT_IN_ISGREATEREQUAL,



BUILT_IN_ISLESS,



BUILT_IN_ISLESSEQUAL,



BUILT_IN_ISLESSGREATER,



BUILT_IN_ISUNORDERED,





BUILT_IN_UNWIND_INIT,



BUILT_IN_DWARF_CFA,



BUILT_IN_DWARF_SP_COLUMN,



BUILT_IN_INIT_DWARF_REG_SIZES,



BUILT_IN_FROB_RETURN_ADDR,



BUILT_IN_EXTRACT_RETURN_ADDR,



BUILT_IN_EH_RETURN,



BUILT_IN_EH_RETURN_DATA_REGNO,





BUILT_IN_VA_START,



BUILT_IN_STDARG_START,



BUILT_IN_VA_END,



BUILT_IN_VA_COPY,




BUILT_IN_EXPECT,





BUILT_IN_EXTEND_POINTER,





BUILT_IN_NEW,
BUILT_IN_VEC_NEW,
BUILT_IN_DELETE,
BUILT_IN_VEC_DELETE,


BUILT_IN_ABORT,







BUILT_IN_EXIT,







BUILT_IN__EXIT,







BUILT_IN__EXIT2,
# 105 "../../../kg++fe/gnu/tree.h" 2


  END_BUILTINS
};



extern const char *const built_in_names[(int) END_BUILTINS];


extern tree built_in_decls[(int) END_BUILTINS];
# 139 "../../../kg++fe/gnu/tree.h"
struct tree_common
{
  tree chain;
  tree type;

  enum tree_code code : 8;

  unsigned side_effects_flag : 1;
  unsigned constant_flag : 1;
  unsigned addressable_flag : 1;
  unsigned volatile_flag : 1;
  unsigned readonly_flag : 1;
  unsigned unsigned_flag : 1;
  unsigned asm_written_flag: 1;

  unsigned not_emitted_by_gxx : 1;




  unsigned used_flag : 1;
  unsigned nothrow_flag : 1;
  unsigned static_flag : 1;
  unsigned public_flag : 1;
  unsigned private_flag : 1;
  unsigned protected_flag : 1;
  unsigned bounded_flag : 1;
  unsigned deprecated_flag : 1;

  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;

  unsigned lang_flag_7 : 1;




  unsigned sbuf : 1;
  unsigned sdram : 1;
  unsigned v1buf : 1;
  unsigned v2buf : 1;
  unsigned v4buf : 1;

};
# 382 "../../../kg++fe/gnu/tree.h"
# 1 "../../../kg++fe/gnu/MIPS/tree-check.h" 1
# 383 "../../../kg++fe/gnu/tree.h" 2
# 770 "../../../kg++fe/gnu/tree.h"
struct tree_int_cst
{
  struct tree_common common;
  rtx rtl;




  struct tree_int_cst_lowhi {
    unsigned long long low;
    long long high;
  } int_cst;
};
# 793 "../../../kg++fe/gnu/tree.h"
struct real_value;




struct tree_real_cst
{
  struct tree_common common;
  rtx rtl;
  struct real_value * real_cst_ptr;
};
# 818 "../../../kg++fe/gnu/tree.h"
struct tree_string
{
  struct tree_common common;
  rtx rtl;
  int length;
  const char *pointer;

  ST *st;

};





struct tree_complex
{
  struct tree_common common;
  rtx rtl;
  tree real;
  tree imag;
};
# 852 "../../../kg++fe/gnu/tree.h"
struct tree_vector
{
  struct tree_common common;
  rtx rtl;
  tree elements;
};

# 1 "../../../kg++fe/gnu/hashtable.h" 1
# 21 "../../../kg++fe/gnu/hashtable.h"
# 1 "../../../include/gnu/obstack.h" 1
# 161 "../../../include/gnu/obstack.h"
struct _obstack_chunk
{
  char *limit;
  struct _obstack_chunk *prev;
  char contents[4];
};

struct obstack
{
  long chunk_size;
  struct _obstack_chunk *chunk;
  char *object_base;
  char *next_free;
  char *chunk_limit;
  int temp;
  int alignment_mask;




  struct _obstack_chunk *(*chunkfun) (void *, long);
  void (*freefun) (void *, struct _obstack_chunk *);
  void *extra_arg;





  unsigned use_extra_arg:1;
  unsigned maybe_empty_object:1;



  unsigned alloc_failed:1;


};




extern void _obstack_newchunk (struct obstack *, int);
extern void _obstack_free (struct obstack *, void *);
extern int _obstack_begin (struct obstack *, int, int,
       void *(*) (long), void (*) (void *));
extern int _obstack_begin_1 (struct obstack *, int, int,
        void *(*) (void *, long),
        void (*) (void *, void *), void *);
extern int _obstack_memory_used (struct obstack *);
# 223 "../../../include/gnu/obstack.h"
void obstack_init (struct obstack *obstack);

void * obstack_alloc (struct obstack *obstack, int size);

void * obstack_copy (struct obstack *obstack, void *address, int size);
void * obstack_copy0 (struct obstack *obstack, void *address, int size);

void obstack_free (struct obstack *obstack, void *block);

void obstack_blank (struct obstack *obstack, int size);

void obstack_grow (struct obstack *obstack, void *data, int size);
void obstack_grow0 (struct obstack *obstack, void *data, int size);

void obstack_1grow (struct obstack *obstack, int data_char);
void obstack_ptr_grow (struct obstack *obstack, void *data);
void obstack_int_grow (struct obstack *obstack, int data);

void * obstack_finish (struct obstack *obstack);

int obstack_object_size (struct obstack *obstack);

int obstack_room (struct obstack *obstack);
void obstack_make_room (struct obstack *obstack, int size);
void obstack_1grow_fast (struct obstack *obstack, int data_char);
void obstack_ptr_grow_fast (struct obstack *obstack, void *data);
void obstack_int_grow_fast (struct obstack *obstack, int data);
void obstack_blank_fast (struct obstack *obstack, int size);

void * obstack_base (struct obstack *obstack);
void * obstack_next_free (struct obstack *obstack);
int obstack_alignment_mask (struct obstack *obstack);
int obstack_chunk_size (struct obstack *obstack);
int obstack_memory_used (struct obstack *obstack);
# 267 "../../../include/gnu/obstack.h"
extern void (*obstack_alloc_failed_handler) (void);





extern int obstack_exit_failure;
# 22 "../../../kg++fe/gnu/hashtable.h" 2



typedef struct ht_identifier ht_identifier;
struct ht_identifier
{
  const unsigned char *str;
  unsigned int len;
  unsigned int hash_value;
};
# 40 "../../../kg++fe/gnu/hashtable.h"
struct cpp_reader;
typedef struct ht hash_table;
typedef struct ht_identifier *hashnode;

enum ht_lookup_option {HT_NO_INSERT = 0, HT_ALLOC, HT_ALLOCED};


struct ht
{

  struct obstack stack;

  hashnode *entries;

  hashnode (*alloc_node) (hash_table *);

  unsigned int nslots;
  unsigned int nelements;


  struct cpp_reader *pfile;


  unsigned int searches;
  unsigned int collisions;
};

extern void gcc_obstack_init (struct obstack *);


extern hash_table *ht_create (unsigned int order);


extern void ht_destroy (hash_table *);

extern hashnode ht_lookup (hash_table *, const unsigned char *, unsigned int, enum ht_lookup_option);





typedef int (*ht_cb) (struct cpp_reader *, hashnode, const void *);
extern void ht_forall (hash_table *, ht_cb, const void *);


extern void ht_dump_statistics (hash_table *);



extern double approx_sqrt (double);
# 860 "../../../kg++fe/gnu/tree.h" 2
# 885 "../../../kg++fe/gnu/tree.h"
struct tree_identifier
{
  struct tree_common common;
  struct ht_identifier id;
};





struct tree_list
{
  struct tree_common common;
  tree purpose;
  tree value;
};
# 909 "../../../kg++fe/gnu/tree.h"
struct tree_vec
{
  struct tree_common common;
  int length;
  tree a[1];
};
# 979 "../../../kg++fe/gnu/tree.h"
struct tree_exp
{
  struct tree_common common;
  int complexity;
  tree

    operands[1];
};
# 1033 "../../../kg++fe/gnu/tree.h"
struct tree_block
{
  struct tree_common common;

  unsigned handler_block_flag : 1;
  unsigned abstract_flag : 1;
  unsigned block_num : 30;

  tree vars;
  tree subblocks;
  tree supercontext;
  tree abstract_origin;
  tree fragment_origin;
  tree fragment_chain;
};
# 1358 "../../../kg++fe/gnu/tree.h"
struct die_struct;

struct tree_type
{
  struct tree_common common;
  tree values;
  tree size;
  tree size_unit;
  tree attributes;
  unsigned int uid;

  unsigned int precision : 9;
  enum machine_mode mode : 7;

  unsigned string_flag : 1;
  unsigned no_force_blk_flag : 1;
  unsigned needs_constructing_flag : 1;
  unsigned transparent_union_flag : 1;
  unsigned packed_flag : 1;
  unsigned restrict_flag : 1;
  unsigned pointer_depth : 2;

  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;
  unsigned user_align : 1;

  unsigned int align;
  tree pointer_to;
  tree reference_to;
  union tree_type_symtab {
    int address;
    char * pointer;
    struct die_struct * die;
  } symtab;

  tree name;
  tree minval;
  tree maxval;
  tree next_variant;
  tree main_variant;
  tree binfo;
  tree context;
  long long alias_set;

  struct lang_type *lang_specific;

  unsigned int ty_idx;
  unsigned int field_ids_used;
  struct mongoose_gcc_DST_IDX dst_id;






  tree extra_methods;


};
# 1986 "../../../kg++fe/gnu/tree.h"
struct function;

struct tree_decl
{
  struct tree_common common;
  location_t locus;
  unsigned int uid;
  tree size;
  enum machine_mode mode : 8;

  unsigned external_flag : 1;
  unsigned nonlocal_flag : 1;
  unsigned regdecl_flag : 1;
  unsigned inline_flag : 1;
  unsigned bit_field_flag : 1;
  unsigned virtual_flag : 1;
  unsigned ignored_flag : 1;
  unsigned abstract_flag : 1;



  unsigned sbuf_flag : 1;
  unsigned sdram_flag : 1;
  unsigned v1buf_flag : 1;
  unsigned v2buf_flag : 1;
  unsigned v4buf_flag : 1;



  unsigned in_system_header_flag : 1;
  unsigned common_flag : 1;
  unsigned defer_output : 1;
  unsigned transparent_union : 1;
  unsigned static_ctor_flag : 1;
  unsigned static_dtor_flag : 1;
  unsigned artificial_flag : 1;
  unsigned weak_flag : 1;

  unsigned non_addr_const_p : 1;
  unsigned no_instrument_function_entry_exit : 1;
  unsigned comdat_flag : 1;
  unsigned malloc_flag : 1;
  unsigned no_limit_stack : 1;
  enum built_in_class built_in_class : 2;
  unsigned pure_flag : 1;

  unsigned pointer_depth : 2;
  unsigned non_addressable : 1;
  unsigned user_align : 1;
  unsigned uninlinable : 1;
  unsigned thread_local_flag : 1;
  unsigned inlined_function_flag : 1;

  unsigned threadprivate_flag : 1;


  unsigned lang_flag_0 : 1;
  unsigned lang_flag_1 : 1;
  unsigned lang_flag_2 : 1;
  unsigned lang_flag_3 : 1;
  unsigned lang_flag_4 : 1;
  unsigned lang_flag_5 : 1;
  unsigned lang_flag_6 : 1;
  unsigned lang_flag_7 : 1;


  unsigned syscall_linkage_flag : 1;
  unsigned widen_retval_flag : 1;


  unsigned emitted_by_gxx : 1;





  union tree_decl_u1 {


    enum built_in_function f;


    long long i;


    struct tree_decl_u1_a {
      unsigned int align : 24;
      unsigned int off_align : 8;
    } a;
  } u1;

  tree size_unit;
  tree name;
  tree context;
  tree arguments;
  tree result;
  tree initial;

  tree initial_2;
  tree alias_target;



  long long thunk_delta;

  tree abstract_origin;
  tree assembler_name;
  tree section_name;
  tree attributes;
  rtx rtl;
  rtx live_range_rtl;






  union tree_decl_u2 {
    struct function * f;
    rtx r;
    tree t;
    int i;
  } u2;


  tree saved_tree;



  tree inlined_fns;

  tree vindex;
  long long pointer_alias_set;

  struct lang_decl *lang_specific;


  unsigned symtab_idx : 8;
  unsigned label_defined : 1;

  union {
    ST *st;
    LABEL_IDX label_idx;
    unsigned int field_id;
  } sgi_u1;





  struct mongoose_gcc_DST_IDX decl_dst_id;



tree sl_model_name;


};


# 1 "../../../kg++fe/omp_types.h" 1
# 28 "../../../kg++fe/omp_types.h"
enum omp_tree_type
{
  parallel_dir_b,
  parallel_dir_e,
  for_dir_b,
  for_dir_e,
  sections_cons_b,
  sections_cons_e,
  section_cons_b,
  section_cons_e,
  single_cons_b,
  single_cons_e,
  par_for_cons_b,
  par_for_cons_e,
  par_sctn_cons_b,
  par_sctn_cons_e,
  master_cons_b,
  master_cons_e,
  critical_cons_b,
  critical_cons_e,
  barrier_dir,
  flush_dir,
  atomic_cons,
  atomic_cons_b,
  atomic_cons_e,
  thdprv_dir,
  ordered_cons_b,
  ordered_cons_e,
  options_dir,
  exec_freq_dir,

  sl2_sections_cons_b,
  sl2_minor_sections_cons_b,
  sl2_sections_cons_e,
  sl2_section_cons_b,
  sl2_section_cons_e,
  sl2_minor_section_cons_b,
  sl2_minor_section_cons_e


};


enum reduction_op_type
{
 REDUCTION_OPR_BAND,
 REDUCTION_OPR_BIOR,
 REDUCTION_OPR_BXOR,
 REDUCTION_OPR_ADD,
 REDUCTION_OPR_MPY,
 REDUCTION_OPR_SUB,
 REDUCTION_OPR_CAND,
 REDUCTION_OPR_CIOR
};

struct reduction
{
 enum reduction_op_type reduction_op;
 tree var_list;
};

enum default_type
{
 default_shared,
 default_none,
 no_default
};

enum parallel_clause_type
{
 p_if,
 p_num_threads,
 p_private,
 p_firstprivate,
 p_shared,
 p_default,
 p_reduction,
 p_copyin
};

union parallel_clause_node
{
 tree expr_no_commas;
 tree var_list;
 enum default_type defaulttype;
 struct reduction reduction_node;
};

struct parallel_clause_list
{
 enum parallel_clause_type type;
 union parallel_clause_node node;
 struct parallel_clause_list * next;
};

enum schedule_kind_type
{
    SK_STATIC,
    SK_DYNAMIC,
    SK_GUIDED,
    SK_RUNTIME,
    SK_NONE
};

struct schedule_2
{
 enum schedule_kind_type schedule_kind;
 tree chunk_size;
};

enum for_clause_type
{
 f_private,
 f_firstprivate,
 f_lastprivate,
 f_reduction,
 f_ordered,
 f_schedule_1,
 f_schedule_2,
 f_nowait
};

union for_clause_node
{
 tree var_list;
 tree expr_no_commas;
 struct reduction reduction_node;
 enum schedule_kind_type schedule_kind;
 struct schedule_2 schedule_node;
 int ordered_nowait;
};

struct for_clause_list
{
 enum for_clause_type type;
 union for_clause_node node;
 struct for_clause_list * next;
};

enum sections_clause_type
{
 sections_private,
 sections_firstprivate,
 sections_lastprivate,
 sections_reduction,
 sections_nowait
};

union sections_clause_node
{
 tree var_list;
 struct reduction reduction_node;
 int nowait;
};

struct sections_clause_list
{
 enum sections_clause_type type;
 union sections_clause_node node;
 struct sections_clause_list * next;
};

enum single_clause_type
{
 single_private,
 single_firstprivate,
 single_copyprivate,
 single_nowait
};

union single_clause_node
{
 tree var_list;
 int nowait;
};

struct single_clause_list
{
 enum single_clause_type type;
 union single_clause_node node;
 struct single_clause_list * next;
};

enum parallel_for_clause_type
{
 p_for_if,
 p_for_num_threads,
 p_for_private,
 p_for_copyprivate,
 p_for_firstprivate,
 p_for_lastprivate,
 p_for_shared,
 p_for_default,
 p_for_reduction,
 p_for_copyin,
 p_for_ordered,
 p_for_schedule_1,
 p_for_schedule_2
};

union parallel_for_clause_node
{
 tree expr_no_commas;
 tree var_list;
 enum default_type defaulttype;
 struct reduction reduction_node;
 enum schedule_kind_type schedule_kind;
 struct schedule_2 schedule_node;
 int ordered;
};

struct parallel_for_clause_list
{
 enum parallel_for_clause_type type;
 union parallel_for_clause_node node;
 struct parallel_for_clause_list * next;
};

enum parallel_sections_clause_type
{
 p_sections_if,
 p_sections_num_threads,
 p_sections_private,
 p_sections_copyprivate,
 p_sections_firstprivate,
 p_sections_lastprivate,
 p_sections_shared,
 p_sections_default,
 p_sections_reduction,
 p_sections_copyin
};

union parallel_sections_clause_node
{
 tree expr_no_commas;
 tree var_list;
 enum default_type defaulttype;
 struct reduction reduction_node;
};

struct parallel_sections_clause_list
{
 enum parallel_sections_clause_type type;
 union parallel_sections_clause_node node;
 struct parallel_sections_clause_list * next;
};
# 2147 "../../../kg++fe/gnu/tree.h" 2
struct tree_omp
{
  struct tree_common common;
  enum omp_tree_type choice;
  void * omp_clause_list;
};



enum tree_node_structure_enum {
  TS_COMMON,
  TS_INT_CST,
  TS_REAL_CST,
  TS_VECTOR,
  TS_STRING,
  TS_COMPLEX,
  TS_IDENTIFIER,
  TS_DECL,
  TS_TYPE,
  TS_LIST,
  TS_VEC,
  TS_EXP,
  TS_BLOCK,

  TS_OMP,

  LAST_TS_ENUM
};





union tree_node

{
  struct tree_common common;
  struct tree_int_cst int_cst;
  struct tree_real_cst real_cst;
  struct tree_vector vector;
  struct tree_string string;
  struct tree_complex complex;
  struct tree_identifier identifier;
  struct tree_decl decl;
  struct tree_type type;
  struct tree_list list;
  struct tree_vec vec;
  struct tree_exp exp;
  struct tree_block block;

  struct tree_omp omp;

 };



enum tree_index
{
  TI_ERROR_MARK,
  TI_INTQI_TYPE,
  TI_INTHI_TYPE,
  TI_INTSI_TYPE,
  TI_INTDI_TYPE,
  TI_INTTI_TYPE,

  TI_UINTQI_TYPE,
  TI_UINTHI_TYPE,
  TI_UINTSI_TYPE,
  TI_UINTDI_TYPE,
  TI_UINTTI_TYPE,

  TI_INTEGER_ZERO,
  TI_INTEGER_ONE,
  TI_INTEGER_MINUS_ONE,
  TI_NULL_POINTER,

  TI_FLOAT_PTR_TYPE,
  TI_DOUBLE_PTR_TYPE,
  TI_LONG_DOUBLE_PTR_TYPE,
  TI_INTEGER_PTR_TYPE,

  TI_SHORT_PTR_TYPE,

  TI_SIZE_ZERO,
  TI_SIZE_ONE,

  TI_BITSIZE_ZERO,
  TI_BITSIZE_ONE,
  TI_BITSIZE_UNIT,

  TI_COMPLEX_INTEGER_TYPE,
  TI_COMPLEX_FLOAT_TYPE,
  TI_COMPLEX_DOUBLE_TYPE,
  TI_COMPLEX_LONG_DOUBLE_TYPE,

  TI_FLOAT_TYPE,
  TI_DOUBLE_TYPE,
  TI_LONG_DOUBLE_TYPE,

  TI_VOID_TYPE,
  TI_PTR_TYPE,
  TI_CONST_PTR_TYPE,
  TI_SIZE_TYPE,
  TI_PTRDIFF_TYPE,
  TI_VA_LIST_TYPE,

  TI_VOID_LIST_NODE,

  TI_UV4SF_TYPE,
  TI_UV4SI_TYPE,
  TI_UV8HI_TYPE,
  TI_UV8QI_TYPE,
  TI_UV4HI_TYPE,
  TI_UV2HI_TYPE,
  TI_UV2SI_TYPE,
  TI_UV2SF_TYPE,
  TI_UV2DI_TYPE,
  TI_UV1DI_TYPE,
  TI_UV16QI_TYPE,

  TI_V4SF_TYPE,
  TI_V16SF_TYPE,
  TI_V4SI_TYPE,
  TI_V8HI_TYPE,
  TI_V8QI_TYPE,
  TI_V4HI_TYPE,
  TI_V2HI_TYPE,
  TI_V2SI_TYPE,
  TI_V2SF_TYPE,
  TI_V2DF_TYPE,
  TI_V2DI_TYPE,
  TI_V1DI_TYPE,
  TI_V16QI_TYPE,

  TI_MAIN_IDENTIFIER,

  TI_MAX
};

extern tree global_trees[TI_MAX];
# 2379 "../../../kg++fe/gnu/tree.h"
enum integer_type_kind
{
  itk_char,
  itk_signed_char,
  itk_unsigned_char,
  itk_short,
  itk_unsigned_short,
  itk_int,
  itk_unsigned_int,
  itk_long,
  itk_unsigned_long,
  itk_long_long,
  itk_unsigned_long_long,
  itk_none
};

typedef enum integer_type_kind integer_type_kind;



extern tree integer_types[itk_none];
# 2415 "../../../kg++fe/gnu/tree.h"
enum tls_model {
  TLS_MODEL_GLOBAL_DYNAMIC = 1,
  TLS_MODEL_LOCAL_DYNAMIC,
  TLS_MODEL_INITIAL_EXEC,
  TLS_MODEL_LOCAL_EXEC
};

extern enum tls_model flag_tls_default;



enum symbol_visibility
{
  VISIBILITY_DEFAULT,
  VISIBILITY_INTERNAL,
  VISIBILITY_HIDDEN,
  VISIBILITY_PROTECTED
};
# 2455 "../../../kg++fe/gnu/tree.h"
enum ptrmemfunc_vbit_where_t
{
  ptrmemfunc_vbit_in_pfn,
  ptrmemfunc_vbit_in_delta
};





extern double approx_sqrt (double);

extern tree decl_assembler_name (tree);




extern size_t tree_size (tree);





extern tree make_node (enum tree_code);



extern tree copy_node (tree);



extern tree copy_list (tree);



extern tree make_tree_vec (int);




extern tree get_identifier (const char *);
# 2507 "../../../kg++fe/gnu/tree.h"
extern tree get_identifier_with_length (const char *, unsigned int);





extern tree maybe_get_identifier (const char *);






extern tree build (enum tree_code, tree, ...);
extern tree build_nt (enum tree_code, ...);

extern tree build_int_2_wide (unsigned long long, long long);
extern tree build_vector (tree, tree);
extern tree build_real_from_int_cst (tree, tree);
extern tree build_complex (tree, tree, tree);
extern tree build_string (int, const char *);
extern tree build1 (enum tree_code, tree, tree);
extern tree build_tree_list (tree, tree);
extern tree build_decl (enum tree_code, tree, tree);
extern tree build_block (tree, tree, tree, tree, tree);
extern tree build_expr_wfl (tree, const char *, int, int);



extern tree make_signed_type (int);
extern tree make_unsigned_type (int);
extern void initialize_sizetypes (void);
extern void set_sizetype (tree);
extern void fixup_unsigned_type (tree);
extern tree build_pointer_type (tree);
extern tree build_reference_type (tree);
extern tree build_type_no_quals (tree);
extern tree build_index_type (tree);
extern tree build_index_2_type (tree, tree);
extern tree build_array_type (tree, tree);
extern tree build_function_type (tree, tree);
extern tree build_function_type_list (tree, ...);
extern tree build_method_type (tree, tree);
extern tree build_offset_type (tree, tree);
extern tree build_complex_type (tree);
extern tree array_type_nelts (tree);

extern tree value_member (tree, tree);
extern tree purpose_member (tree, tree);
extern tree binfo_member (tree, tree);
extern unsigned int attribute_hash_list (tree);
extern int attribute_list_equal (tree, tree);
extern int attribute_list_contained (tree, tree);
extern int tree_int_cst_equal (tree, tree);
extern int tree_int_cst_lt (tree, tree);
extern int tree_int_cst_compare (tree, tree);
extern int host_integerp (tree, int);
extern long long tree_low_cst (tree, int);
extern int tree_int_cst_msb (tree);
extern int tree_int_cst_sgn (tree);
extern int tree_expr_nonnegative_p (tree);
extern int rtl_expr_nonnegative_p (rtx);
extern int index_type_equal (tree, tree);
extern tree get_inner_array_type (tree);





extern tree make_tree (tree, rtx);







extern tree build_type_attribute_variant (tree, tree);
extern tree build_decl_attribute_variant (tree, tree);


struct attribute_spec
{


  const char *const name;

  const int min_length;


  const int max_length;







  const _Bool decl_required;


  const _Bool type_required;




  const _Bool function_type_required;
# 2628 "../../../kg++fe/gnu/tree.h"
  tree (*const handler) (tree *node, tree name, tree args, int flags, _Bool *no_add_attrs);

};



enum attribute_flags
{



  ATTR_FLAG_DECL_NEXT = 1,



  ATTR_FLAG_FUNCTION_NEXT = 2,



  ATTR_FLAG_ARRAY_NEXT = 4,


  ATTR_FLAG_TYPE_IN_PLACE = 8,



  ATTR_FLAG_BUILT_IN = 16
};



extern tree merge_decl_attributes (tree, tree);
extern tree merge_type_attributes (tree, tree);
struct cpp_reader;
extern void default_register_cpp_builtins (struct cpp_reader *);



extern void split_specs_attrs (tree, tree *, tree *);



extern tree strip_attrs (tree);



extern int valid_machine_attribute (tree, tree, tree, tree);




extern int is_attribute_p (const char *, tree);




extern tree lookup_attribute (const char *, tree);



extern tree merge_attributes (tree, tree);
# 2700 "../../../kg++fe/gnu/tree.h"
extern tree get_qualified_type (tree, int);




extern tree build_qualified_type (tree, int);
# 2719 "../../../kg++fe/gnu/tree.h"
extern tree build_type_copy (tree);





extern void layout_type (tree);
# 2734 "../../../kg++fe/gnu/tree.h"
typedef struct record_layout_info_s
{

  tree t;


  tree offset;

  unsigned int offset_align;

  tree bitpos;

  unsigned int record_align;

  unsigned int unpacked_align;


  unsigned int unpadded_align;

  tree prev_field;


  tree pending_statics;

  int remaining_in_alignment;
  int packed_maybe_necessary;
} *record_layout_info;

extern void set_lang_adjust_rli (void (*) (record_layout_info));

extern record_layout_info start_record_layout (tree);
extern tree bit_from_pos (tree, tree);
extern tree byte_from_pos (tree, tree);
extern void pos_from_byte (tree *, tree *, unsigned int, tree);

extern void pos_from_bit (tree *, tree *, unsigned int, tree);

extern void normalize_offset (tree *, tree *, unsigned int);

extern tree rli_size_unit_so_far (record_layout_info);
extern tree rli_size_so_far (record_layout_info);
extern void normalize_rli (record_layout_info);
extern void place_field (record_layout_info, tree);
extern void compute_record_mode (tree);
extern void finish_record_layout (record_layout_info, int);






extern tree type_hash_canon (unsigned int, tree);
# 2795 "../../../kg++fe/gnu/tree.h"
extern void layout_decl (tree, unsigned);






extern enum machine_mode mode_for_size_tree (tree, enum mode_class, int);




extern tree non_lvalue (tree);
extern tree pedantic_non_lvalue (tree);

extern tree convert (tree, tree);
extern unsigned int expr_align (tree);
extern tree size_in_bytes (tree);
extern long long int_size_in_bytes (tree);
extern tree bit_position (tree);
extern long long int_bit_position (tree);
extern tree byte_position (tree);
extern long long int_byte_position (tree);




enum size_type_kind
{
  SIZETYPE,
  SSIZETYPE,
  USIZETYPE,
  BITSIZETYPE,
  SBITSIZETYPE,
  UBITSIZETYPE,
  TYPE_KIND_LAST};

extern tree sizetype_tab[(int) TYPE_KIND_LAST];
# 2841 "../../../kg++fe/gnu/tree.h"
extern tree size_binop (enum tree_code, tree, tree);
extern tree size_diffop (tree, tree);
extern tree size_int_wide (long long, enum size_type_kind);

extern tree size_int_type_wide (long long, tree);







extern tree round_up (tree, int);
extern tree round_down (tree, int);
extern tree get_pending_sizes (void);
extern int is_pending_size (tree);
extern void put_pending_size (tree);
extern void put_pending_sizes (tree);
# 2868 "../../../kg++fe/gnu/tree.h"
extern unsigned int maximum_field_alignment;


extern unsigned int set_alignment;





extern tree chainon (tree, tree);



extern tree tree_cons (tree, tree, tree);



extern tree tree_last (tree);



extern tree nreverse (tree);







extern int list_length (tree);




extern int fields_length (tree);




extern _Bool initializer_zerop (tree);



extern int integer_zerop (tree);



extern int integer_onep (tree);




extern int integer_all_onesp (tree);




extern int integer_pow2p (tree);




extern int staticp (tree);




extern int lvalue_or_else (tree, const char *);





extern tree save_expr (tree);




extern int first_rtl_op (enum tree_code);



enum tree_node_structure_enum tree_node_structure (tree);





extern tree unsave_expr (tree);




extern void unsave_expr_1 (tree);




extern int unsafe_for_reeval (tree);







extern int contains_placeholder_p (tree);




extern int has_cleanups (tree);






extern tree substitute_in_expr (tree, tree, tree);







extern tree variable_size (tree);





extern tree stabilize_reference (tree);





extern tree stabilize_reference_1 (tree);






extern tree get_unwidened (tree, tree);






extern tree get_narrower (tree, int *);





extern tree get_inner_reference (tree, long long *, long long *, tree *, enum machine_mode *, int *, int *);






extern int handled_component_p (tree);




extern tree get_containing_scope (tree);



extern tree decl_function_context (tree);



extern tree decl_type_context (tree);






extern const char *function_cannot_inline_p (tree);


extern int real_zerop (tree);





extern const char *input_filename;


extern int lineno;




extern int pedantic_lvalues;




extern int immediate_size_expand;



extern tree current_function_decl;


extern tree current_function_func_begin_label;



extern int all_types_permanent;



extern tree builtin_function (const char *, tree, int, enum built_in_class, const char *, tree);




extern void clean_symbol_name (char *);
extern tree get_file_function_name_long (const char *);
extern tree get_set_constructor_bits (tree, char *, int);
extern tree get_set_constructor_bytes (tree, unsigned char *, int);

extern tree get_callee_fndecl (tree);
extern void set_decl_assembler_name (tree);
extern int type_num_arguments (tree);
extern tree lhd_unsave_expr_now (tree);




extern int in_control_zone_p (void);
extern void expand_fixups (rtx);
extern tree expand_start_stmt_expr (int);
extern tree expand_end_stmt_expr (tree);
extern void expand_expr_stmt (tree);
extern void expand_expr_stmt_value (tree, int, int);
extern int warn_if_unused_value (tree);
extern void expand_decl_init (tree);
extern void clear_last_expr (void);
extern void expand_label (tree);
extern void expand_goto (tree);
extern void expand_asm (tree, int);
extern void expand_start_cond (tree, int);
extern void expand_end_cond (void);
extern void expand_start_else (void);
extern void expand_start_elseif (tree);
extern struct nesting *expand_start_loop (int);
extern struct nesting *expand_start_loop_continue_elsewhere (int);
extern struct nesting *expand_start_null_loop (void);
extern void expand_loop_continue_here (void);
extern void expand_end_loop (void);
extern void expand_end_null_loop (void);
extern int expand_continue_loop (struct nesting *);
extern int expand_exit_loop (struct nesting *);
extern int expand_exit_loop_if_false (struct nesting *, tree);

extern int expand_exit_loop_top_cond (struct nesting *, tree);

extern int expand_exit_something (void);

extern void expand_return (tree);
extern int optimize_tail_recursion (tree, rtx);
extern void expand_start_bindings_and_block (int, tree);


extern void expand_end_bindings (tree, int, int);
extern void warn_about_unused_variables (tree);
extern void start_cleanup_deferral (void);
extern void end_cleanup_deferral (void);
extern int is_body_block (tree);

extern int conditional_context (void);
extern struct nesting * current_nesting_level (void);
extern tree last_cleanup_this_contour (void);
extern void expand_start_case (int, tree, tree, const char *);

extern void expand_end_case_type (tree, tree);

extern int add_case_node (tree, tree, tree, tree *);

extern int pushcase (tree, tree (*) (tree, tree), tree, tree *);


extern int pushcase_range (tree, tree, tree (*) (tree, tree), tree, tree *);


extern void using_eh_for_cleanups (void);
extern int stmt_loop_nest_empty (void);
# 3175 "../../../kg++fe/gnu/tree.h"
extern tree fold (tree);

extern int force_fit_type (tree, int);
extern int add_double (unsigned long long, long long, unsigned long long, long long, unsigned long long *, long long *);



extern int neg_double (unsigned long long, long long, unsigned long long *, long long *);


extern int mul_double (unsigned long long, long long, unsigned long long, long long, unsigned long long *, long long *);




extern void lshift_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *, int);



extern void rshift_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *, int);



extern void lrotate_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *);



extern void rrotate_double (unsigned long long, long long, long long, unsigned int, unsigned long long *, long long *);



extern int operand_equal_p (tree, tree, int);
extern tree invert_truthvalue (tree);

extern tree fold_builtin (tree);

extern tree build_range_type (tree, tree, tree);


extern void record_component_aliases (tree);
extern long long get_alias_set (tree);
extern int alias_sets_conflict_p (long long, long long);

extern int readonly_fields_p (tree);
extern int objects_must_conflict_p (tree, tree);

struct obstack;


extern int really_constant_p (tree);
extern int int_fits_type_p (tree, tree);
extern _Bool variably_modified_type_p (tree);
extern int tree_log2 (tree);
extern int tree_floor_log2 (tree);
extern int simple_cst_equal (tree, tree);
extern int compare_tree_int (tree, unsigned long long);

extern int type_list_equal (tree, tree);
extern int chain_member (tree, tree);
extern int chain_member_purpose (tree, tree);
extern int chain_member_value (tree, tree);
extern tree listify (tree);
extern tree type_hash_lookup (unsigned int, tree);
extern void type_hash_add (unsigned int, tree);
extern unsigned int type_hash_list (tree);
extern int simple_cst_list_equal (tree, tree);
extern void dump_tree_statistics (void);
extern void print_obstack_statistics (const char *, struct obstack *);


extern void print_obstack_name (char *, FILE *, const char *);


extern void expand_function_end (const char *, int, int);
extern void expand_function_start (tree, int);
extern void expand_pending_sizes (tree);

extern int real_onep (tree);
extern int real_twop (tree);
extern int real_minus_onep (tree);
extern void gcc_obstack_init (struct obstack *);
extern void init_ttree (void);
extern void build_common_tree_nodes (int);
extern void build_common_tree_nodes_2 (int);


extern void setjmp_protect_args (void);
extern void setjmp_protect (tree);
extern void expand_main_function (void);
extern void init_dummy_function_start (void);
extern void expand_dummy_function_end (void);
extern void init_function_for_compilation (void);
extern void init_function_start (tree, const char *, int);
extern void assign_parms (tree);
extern void put_var_into_stack (tree, int);
extern void flush_addressof (tree);
extern void uninitialized_vars_warning (tree);
extern void setjmp_args_warning (void);
extern void mark_all_temps_used (void);
extern void init_temp_slots (void);
extern void combine_temp_slots (void);
extern void free_temp_slots (void);
extern void pop_temp_slots (void);
extern void push_temp_slots (void);
extern void preserve_temp_slots (rtx);
extern void preserve_rtl_expr_temps (tree);
extern int aggregate_value_p (tree);
extern void free_temps_for_rtl_expr (tree);
extern void instantiate_virtual_regs (tree, rtx);
extern void unshare_all_rtl (tree, rtx);
extern int max_parm_reg_num (void);
extern void push_function_context (void);
extern void pop_function_context (void);
extern void push_function_context_to (tree);
extern void pop_function_context_from (tree);



extern void print_rtl (FILE *, rtx);



extern void debug_tree (tree);


extern void print_tree (FILE *, tree);

extern void print_node (FILE *, const char *, tree, int);

extern void print_node_brief (FILE *, const char *, tree, int);

extern void indent_to (FILE *, int);



extern int apply_args_register_offset (int);
extern rtx expand_builtin_return_addr
 (enum built_in_function, int, rtx);
extern void check_max_integer_computation_mode (tree);


extern void start_sequence_for_rtl_expr (tree);
extern rtx emit_line_note (const char *, int);



extern int setjmp_call_p (tree);
extern _Bool alloca_call_p (tree);
# 3334 "../../../kg++fe/gnu/tree.h"
extern tree decl_attributes (tree *, tree, int);


extern void save_for_inline (tree);
extern void set_decl_abstract_flags (tree, int);
extern void output_inline_function (tree);
extern void set_decl_origin_self (tree);


extern void fixup_signed_type (tree);
extern void internal_reference_types (void);


extern void make_decl_rtl (tree, const char *);
extern void make_decl_one_only (tree);
extern int supports_one_only (void);
extern void variable_section (tree, int);
enum tls_model decl_tls_model (tree);
enum symbol_visibility decl_visibility (tree);
extern void resolve_unique_section (tree, int, int);


extern int div_and_round_double (enum tree_code, int, unsigned long long, long long, unsigned long long, long long, unsigned long long *, long long *, unsigned long long *, long long *);
# 3367 "../../../kg++fe/gnu/tree.h"
extern void emit_nop (void);
extern void expand_computed_goto (tree);
extern _Bool parse_output_constraint (const char **, int, int, int, _Bool *, _Bool *, _Bool *);


extern void expand_asm_operands (tree, tree, tree, tree, int, const char *, int);

extern int any_pending_cleanups (int);
extern void init_stmt_for_function (void);
extern int drop_through_at_end_p (void);
extern void expand_start_target_temps (void);
extern void expand_end_target_temps (void);
extern void expand_elseif (tree);
extern void save_stack_pointer (void);
extern void expand_decl (tree);
extern int expand_decl_cleanup (tree, tree);
extern int expand_decl_cleanup_eh (tree, tree, int);
extern void expand_anon_union_decl (tree, tree, tree);
extern void move_cleanups_up (void);
extern void expand_start_case_dummy (void);
extern void expand_end_case_dummy (void);
extern tree case_index_expr_type (void);
extern long long all_cases_count (tree, int *);
extern void check_for_full_enumeration_handling (tree);
extern void declare_nonlocal_label (tree);
extern void default_flag_random_seed (void);



extern tree get_file_function_name (int);





extern char *dwarf2out_cfi_label (void);



extern void dwarf2out_def_cfa (const char *, unsigned, long);



extern void dwarf2out_window_save (const char *);




extern void dwarf2out_args_size (const char *, long);



extern void dwarf2out_reg_save (const char *, unsigned, long);



extern void dwarf2out_return_save (const char *, long);



extern void dwarf2out_return_reg (const char *, unsigned);



typedef tree (*walk_tree_fn) (tree *, int *, void *);





enum tree_dump_index
{
  TDI_all,
  TDI_class,
  TDI_original,
  TDI_optimized,
  TDI_inlined,

  TDI_end
};







typedef struct dump_info *dump_info_p;

extern int dump_flag (dump_info_p, int, tree);
extern int dump_enabled_p (enum tree_dump_index);
extern FILE *dump_begin (enum tree_dump_index, int *);
extern void dump_end (enum tree_dump_index, FILE *);
extern void dump_node (tree, int, FILE *);
extern int dump_switch_p (const char *);
extern const char *dump_flag_name (enum tree_dump_index);
# 3471 "../../../kg++fe/gnu/tree.h"
extern void fancy_abort (const char *, int, const char *)
    __attribute__ ((__noreturn__));
# 53 "../../../kg++fe/gnu/toplev.c" 2



# 1 "../../../kg++fe/gnu/MIPS/tm_p.h" 1

# 1 "../../../kg++fe/gnu/config/MIPS/mips-protos.h" 1
# 29 "../../../kg++fe/gnu/config/MIPS/mips-protos.h"
extern long long compute_frame_size (long long);
extern int mips_initial_elimination_offset (int, int);
extern void mips_asm_file_end (FILE *);
extern void mips_asm_file_start (FILE *);
extern void iris6_asm_file_start (FILE *);
extern void iris6_asm_file_end (FILE *);
extern void iris6_asm_output_align (FILE *, unsigned);
extern const char * current_section_name (void);
extern unsigned int current_section_flags (void);
extern int mips_can_use_return_insn (void);
extern void mips_output_aligned_decl_common
    (FILE *, tree, const char *, unsigned long long, unsigned int);


extern void mips_declare_object
    (FILE *, const char *, const char *, const char *, ...);

extern void mips_expand_epilogue (void);
extern void mips_expand_prologue (void);
extern void mips_output_filename (FILE *, const char *);
extern void mips_output_lineno (FILE *, int);
extern void mips_output_ascii (FILE *, const char *, size_t);

extern void mips_order_regs_for_local_alloc (void);
extern struct rtx_def * embedded_pic_fnaddr_reg (void);
extern struct rtx_def * mips16_gp_pseudo_reg (void);



extern struct rtx_def *mips_function_value (tree, tree, enum machine_mode);


extern unsigned int mips_hard_regno_nregs (int, enum machine_mode);

extern int mips_return_in_memory (tree);

extern struct rtx_def *function_arg (const CUMULATIVE_ARGS *, enum machine_mode, tree, int);

extern void function_arg_advance (CUMULATIVE_ARGS *, enum machine_mode, tree, int);


extern int function_arg_partial_nregs
    (const CUMULATIVE_ARGS *, enum machine_mode, tree, int);


extern int mips_setup_incoming_varargs
    (const CUMULATIVE_ARGS *, enum machine_mode, tree, int);


extern int function_arg_pass_by_reference
    (const CUMULATIVE_ARGS *, enum machine_mode, tree, int);

extern int mips16_constant_after_function_p (tree);
extern int mips_output_external (FILE *, tree, const char *);

extern tree mips_build_va_list (void);
extern void mips_va_start (tree, rtx);
extern struct rtx_def *mips_va_arg (tree, tree);

extern void expand_block_move (rtx *);
extern void final_prescan_insn (rtx, rtx *, int);
extern void init_cumulative_args (CUMULATIVE_ARGS *, tree, rtx);

extern void gen_conditional_move (rtx *);
extern void mips_gen_conditional_trap (rtx *);
extern void mips_emit_fcc_reload (rtx, rtx, rtx);
extern void mips_set_return_address (rtx, rtx);
extern void machine_dependent_reorg (rtx);
extern int mips_address_cost (rtx);
extern void mips_count_memory_refs (rtx, int);
extern long long mips_debugger_offset (rtx, long long);
extern int mips_check_split (rtx, enum machine_mode);
extern const char *mips_fill_delay_slot (const char *, enum delay_type, rtx *, rtx);


extern const char *mips_move_1word (rtx *, rtx, int);
extern const char *mips_move_2words (rtx *, rtx);
extern const char *mips_sign_extend (rtx, rtx, rtx);
extern const char *mips_emit_prefetch (rtx *);
extern const char *mips_restore_gp (rtx *, rtx);
extern const char *output_block_move (rtx, rtx *, int, enum block_move_type);

extern void override_options (void);
extern void mips_conditional_register_usage (void);
extern void print_operand_address (FILE *, rtx);
extern void print_operand (FILE *, rtx, int);
extern int double_memory_operand (rtx,enum machine_mode);
extern struct rtx_def * embedded_pic_offset (rtx);
extern struct rtx_def * mips16_gp_offset (rtx);
extern int mips16_gp_offset_p (rtx);
extern int mips16_constant (rtx, enum machine_mode, int, int);

extern int build_mips16_call_stub (rtx, rtx, rtx, int);
extern const char *mips_output_conditional_branch (rtx, rtx *, int, int, int, int);


extern int mips_adjust_insn_length (rtx, int);
extern enum reg_class mips_secondary_reload_class (enum reg_class, enum machine_mode, rtx, int);


extern _Bool mips_cannot_change_mode_class
     (enum machine_mode, enum machine_mode, enum reg_class);

extern int mips_class_max_nregs (enum reg_class, enum machine_mode);

extern int mips_register_move_cost (enum machine_mode, enum reg_class, enum reg_class);



extern int pic_address_needs_scratch (rtx);
extern int se_arith_operand (rtx, enum machine_mode);
extern int coprocessor_operand (rtx, enum machine_mode);
extern int coprocessor2_operand (rtx, enum machine_mode);
extern int symbolic_operand (rtx, enum machine_mode);
extern int mips_legitimate_address_p (enum machine_mode, rtx, int);

extern int mips_reg_mode_ok_for_base_p (rtx, enum machine_mode, int);


extern int m16_uimm3_b (rtx, enum machine_mode);
extern int m16_simm4_1 (rtx, enum machine_mode);
extern int m16_nsimm4_1 (rtx, enum machine_mode);
extern int m16_simm5_1 (rtx, enum machine_mode);
extern int m16_nsimm5_1 (rtx, enum machine_mode);
extern int m16_uimm5_4 (rtx, enum machine_mode);
extern int m16_nuimm5_4 (rtx, enum machine_mode);
extern int m16_simm8_1 (rtx, enum machine_mode);
extern int m16_nsimm8_1 (rtx, enum machine_mode);
extern int m16_uimm8_1 (rtx, enum machine_mode);
extern int m16_nuimm8_1 (rtx, enum machine_mode);
extern int m16_uimm8_m1_1 (rtx, enum machine_mode);
extern int m16_uimm8_4 (rtx, enum machine_mode);
extern int m16_nuimm8_4 (rtx, enum machine_mode);
extern int m16_simm8_8 (rtx, enum machine_mode);
extern int m16_nsimm8_8 (rtx, enum machine_mode);
extern int m16_usym8_4 (rtx, enum machine_mode);
extern int m16_usym5_4 (rtx, enum machine_mode);


extern rtx gen_int_relational (enum rtx_code, rtx, rtx, rtx,int *);

extern void gen_conditional_branch (rtx *, enum rtx_code);
# 3 "../../../kg++fe/gnu/MIPS/tm_p.h" 2

# 1 "../../../kg++fe/gnu/MIPS/tm-preds.h" 1







extern int uns_arith_operand (rtx, enum machine_mode);
extern int arith_operand (rtx, enum machine_mode);
extern int arith32_operand (rtx, enum machine_mode);
extern int reg_or_0_operand (rtx, enum machine_mode);
extern int true_reg_or_0_operand (rtx, enum machine_mode);
extern int small_int (rtx, enum machine_mode);
extern int large_int (rtx, enum machine_mode);
extern int mips_const_double_ok (rtx, enum machine_mode);
extern int const_float_1_operand (rtx, enum machine_mode);
extern int simple_memory_operand (rtx, enum machine_mode);
extern int equality_op (rtx, enum machine_mode);
extern int cmp_op (rtx, enum machine_mode);
extern int trap_cmp_op (rtx, enum machine_mode);
extern int pc_or_label_operand (rtx, enum machine_mode);
extern int call_insn_operand (rtx, enum machine_mode);
extern int move_operand (rtx, enum machine_mode);
extern int movdi_operand (rtx, enum machine_mode);
extern int se_register_operand (rtx, enum machine_mode);
extern int se_reg_or_0_operand (rtx, enum machine_mode);
extern int se_uns_arith_operand (rtx, enum machine_mode);
extern int se_arith_operand (rtx, enum machine_mode);
extern int se_nonmemory_operand (rtx, enum machine_mode);
extern int consttable_operand (rtx, enum machine_mode);
extern int fcc_register_operand (rtx, enum machine_mode);
extern int extend_operator (rtx, enum machine_mode);
extern int highpart_shift_operator (rtx, enum machine_mode);
# 4 "../../../kg++fe/gnu/MIPS/tm_p.h" 2
# 57 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/flags.h" 1
# 30 "../../../kg++fe/gnu/flags.h"
extern const char *main_input_filename;

enum debug_info_type
{
  NO_DEBUG,
  DBX_DEBUG,
  SDB_DEBUG,
  DWARF_DEBUG,
  DWARF2_DEBUG,
  XCOFF_DEBUG,
  VMS_DEBUG,
  VMS_AND_DWARF2_DEBUG

};


extern enum debug_info_type write_symbols;

enum debug_info_level
{
  DINFO_LEVEL_NONE,
  DINFO_LEVEL_TERSE,
  DINFO_LEVEL_NORMAL,
  DINFO_LEVEL_VERBOSE
};


extern enum debug_info_level debug_info_level;



extern int use_gnu_debug_info_extensions;



extern int optimize;



extern int optimize_size;




extern int quiet_flag;



extern int time_report;




extern int mem_report;



extern int inhibit_warnings;



extern int warn_system_headers;



extern int extra_warnings;





extern void set_Wunused (int setting);

extern int warn_unused_function;
extern int warn_unused_label;
extern int warn_unused_parameter;
extern int warn_unused_variable;
extern int warn_unused_value;



extern int warn_notreached;



extern int warn_inline;



extern int warn_uninitialized;







extern int warn_unknown_pragmas;



extern int warn_shadow;




extern int warn_switch;



extern int warn_switch_default;




extern int warn_switch_enum;




extern int warn_return_type;



extern int warn_missing_noreturn;





extern int warn_cast_align;





extern int warn_larger_than;
extern long long larger_than_size;




extern int warn_aggregate_return;



extern int warn_packed;



extern int warn_padded;



extern int warn_disabled_optimization;




extern int warn_deprecated_decl;




extern int warn_strict_aliasing;



extern int profile_flag;



extern int profile_arc_flag;



extern int flag_test_coverage;



extern int flag_branch_probabilities;



extern int flag_reorder_blocks;



extern int flag_reorder_functions;



extern int flag_rename_registers;




extern int pedantic;




extern int in_system_header;




extern int flag_print_asm_name;





extern int flag_signed_char;



extern int flag_short_enums;





extern int flag_caller_saves;



extern int flag_pcc_struct_return;




extern int flag_force_mem;




extern int flag_force_addr;




extern int flag_defer_pop;




extern int flag_float_store;



extern int flag_strength_reduce;






extern int flag_unroll_loops;




extern int flag_unroll_all_loops;




extern int flag_move_all_movables;



extern int flag_prefetch_loop_arrays;




extern int flag_reduce_all_givs;




extern int flag_cse_follow_jumps;




extern int flag_cse_skip_blocks;



extern int flag_expensive_optimizations;




extern int flag_writable_strings;





extern int flag_no_function_cse;




extern int flag_omit_frame_pointer;



extern int flag_no_peephole;



extern int flag_volatile;



extern int flag_volatile_global;



extern int flag_volatile_static;



extern int flag_optimize_sibling_calls;




extern int flag_errno_math;






extern int flag_unsafe_math_optimizations;



extern int flag_finite_math_only;





extern int flag_trapping_math;





extern int flag_complex_divide_method;



extern int flag_rerun_loop_opt;




extern int flag_inline_functions;





extern int flag_keep_inline_functions;







extern int flag_no_inline;




extern int flag_really_no_inline;



extern int flag_syntax_only;



extern int flag_gen_aux_info;



extern int flag_shared_data;






extern int flag_schedule_insns;
extern int flag_schedule_insns_after_reload;
# 445 "../../../kg++fe/gnu/flags.h"
extern int flag_schedule_interblock;
extern int flag_schedule_speculative;
extern int flag_schedule_speculative_load;
extern int flag_schedule_speculative_load_dangerous;



extern int flag_branch_on_count_reg;





extern int flag_single_precision_constant;



extern int flag_delayed_branch;




extern int flag_dump_unnumbered;




extern int flag_pedantic_errors;




extern int flag_pic;




extern int flag_pie;




extern int flag_shlib;




extern int flag_exceptions;



extern int key_exceptions;
extern int opt_regions;




extern int flag_unwind_tables;



extern int flag_asynchronous_unwind_tables;




extern int flag_no_common;





extern int flag_inhibit_size_directive;




extern int flag_function_sections;



extern int flag_data_sections;
# 535 "../../../kg++fe/gnu/flags.h"
extern int flag_verbose_asm;
# 544 "../../../kg++fe/gnu/flags.h"
extern int flag_debug_asm;

extern int flag_dump_rtl_in_asm;



extern int flag_gnu_linker;







extern int flag_bad_asm_constraint_kills_stmt;




extern int flag_pack_struct;
# 572 "../../../kg++fe/gnu/flags.h"
extern int flag_argument_noalias;





extern int flag_strict_aliasing;



extern int flag_stack_check;


extern int flag_regmove;


extern int flag_instrument_function_entry_exit;


extern int flag_peephole2;


extern int flag_guess_branch_prob;





extern int flag_bounds_check;




extern int flag_merge_constants;




extern int flag_renumber_insns;







extern int frame_pointer_needed;



extern int flag_trapv;




extern int flag_honor_shift;



extern int g_switch_value;
extern int g_switch_set;






extern int align_loops;
extern int align_loops_log;
extern int align_loops_max_skip;
extern int align_jumps;
extern int align_jumps_log;
extern int align_jumps_max_skip;
extern int align_labels;
extern int align_labels_log;
extern int align_labels_max_skip;
extern int align_functions;
extern int align_functions_log;



extern int force_align_functions_log;


extern int dump_for_graph;


enum graph_dump_types
{
  no_graph = 0,
  vcg
};
extern enum graph_dump_types graph_dump_format;





extern int flag_no_ident;



extern int flag_gcse_lm;



extern int flag_gcse_sm;




extern int flag_eliminate_dwarf2_dups;



extern int flag_detailed_statistics;


extern int flag_non_call_exceptions;


extern int flag_zero_initialized_in_bss;


extern int flag_signaling_nans;




extern const char *flag_random_seed;
# 58 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-attr.h" 1
# 10 "../../../kg++fe/gnu/MIPS/insn-attr.h"
enum attr_type {TYPE_UNKNOWN, TYPE_BRANCH, TYPE_JUMP, TYPE_CALL, TYPE_LOAD, TYPE_STORE, TYPE_MOVE, TYPE_XFER, TYPE_HILO, TYPE_ARITH, TYPE_DARITH, TYPE_IMUL, TYPE_IMADD, TYPE_IDIV, TYPE_ICMP, TYPE_FADD, TYPE_FMUL, TYPE_FMADD, TYPE_FDIV, TYPE_FABS, TYPE_FNEG, TYPE_FCMP, TYPE_FCVT, TYPE_FSQRT, TYPE_FRSQRT, TYPE_MULTI, TYPE_NOP};
extern enum attr_type get_attr_type (rtx);


enum attr_mode {MODE_UNKNOWN, MODE_NONE, MODE_QI, MODE_HI, MODE_SI, MODE_DI, MODE_SF, MODE_DF, MODE_FPSW};
extern enum attr_mode get_attr_mode (rtx);


extern int get_attr_length (rtx);
extern void shorten_branches (rtx);
extern int insn_default_length (rtx);
extern int insn_variable_length_p (rtx);
extern int insn_current_length (rtx);

# 1 "../../../kg++fe/gnu/insn-addr.h" 1
# 24 "../../../kg++fe/gnu/insn-addr.h"
# 1 "../../../kg++fe/gnu/varray.h" 1
# 36 "../../../kg++fe/gnu/varray.h"
struct const_equiv_data {
# 50 "../../../kg++fe/gnu/varray.h"
  struct rtx_def *rtx;



  unsigned age;
};




enum varray_data_enum {
  VARRAY_DATA_C,
  VARRAY_DATA_UC,
  VARRAY_DATA_S,
  VARRAY_DATA_US,
  VARRAY_DATA_I,
  VARRAY_DATA_U,
  VARRAY_DATA_L,
  VARRAY_DATA_UL,
  VARRAY_DATA_HINT,
  VARRAY_DATA_UHINT,
  VARRAY_DATA_GENERIC,
  VARRAY_DATA_CPTR,
  VARRAY_DATA_RTX,
  VARRAY_DATA_RTVEC,
  VARRAY_DATA_TREE,
  VARRAY_DATA_BITMAP,
  VARRAY_DATA_REG,
  VARRAY_DATA_CONST_EQUIV,
  VARRAY_DATA_BB,
  VARRAY_DATA_TE,
  NUM_VARRAY_DATA
};


typedef union varray_data_tag {
  char c[1];

  unsigned char uc[1];

  short s[1];

  unsigned short us[1];

  int i[1];

  unsigned int u[1];

  long l[1];

  unsigned long ul[1];

  long long hint[1];

  unsigned long long uhint[1];

  void * generic[1];

  char * cptr[1];

  struct rtx_def * rtx[1];

  struct rtvec_def * rtvec[1];

  union tree_node * tree[1];

  struct bitmap_head_def * bitmap[1];

  struct reg_info_def * reg[1];

  struct const_equiv_data const_equiv[1];

  struct basic_block_def * bb[1];

  struct elt_list * te[1];

} varray_data;


struct varray_head_tag {
  size_t num_elements;
  size_t elements_used;

  enum varray_data_enum type;
  const char *name;
  varray_data data;

};
typedef struct varray_head_tag *varray_type;



extern varray_type varray_init (size_t, enum varray_data_enum, const char *);
# 211 "../../../kg++fe/gnu/varray.h"
extern varray_type varray_grow (varray_type, size_t);
# 222 "../../../kg++fe/gnu/varray.h"
extern void varray_clear (varray_type);
# 25 "../../../kg++fe/gnu/insn-addr.h" 2

extern varray_type insn_addresses_;
extern int insn_current_address;
# 25 "../../../kg++fe/gnu/MIPS/insn-attr.h" 2


enum attr_cpu {CPU_DEFAULT, CPU_R3000, CPU_R3900, CPU_R6000, CPU_R4000, CPU_R4100, CPU_R4111, CPU_R4120, CPU_R4300, CPU_R4600, CPU_R4650, CPU_R5000, CPU_R5400, CPU_R5500, CPU_R8000, CPU_SR71000, CPU_R4KC, CPU_R5KC, CPU_R20KC};
extern enum attr_cpu get_attr_cpu (void);


enum attr_dslot {DSLOT_NO, DSLOT_YES};
extern enum attr_dslot get_attr_dslot (rtx);


enum attr_can_delay {CAN_DELAY_NO, CAN_DELAY_YES};
extern enum attr_can_delay get_attr_can_delay (rtx);


enum attr_branch_likely {BRANCH_LIKELY_NO, BRANCH_LIKELY_YES};
extern enum attr_branch_likely get_attr_branch_likely (void);


enum attr_abicalls {ABICALLS_NO, ABICALLS_YES};
extern enum attr_abicalls get_attr_abicalls (void);


extern int num_delay_slots (rtx);
extern int eligible_for_delay (rtx, int, rtx, int);

extern int const_num_delay_slots (rtx);


extern int eligible_for_annul_false (rtx, int, rtx, int);




extern int result_ready_cost (rtx);
extern int function_units_used (rtx);

extern const struct function_unit_desc
{
  const char *const name;
  const int bitmask;
  const int multiplicity;
  const int simultaneity;
  const int default_cost;
  const int max_issue_delay;
  int (*const ready_cost_function) (rtx);
  int (*const conflict_cost_function) (rtx, rtx);
  const int max_blockage;
  unsigned int (*const blockage_range_function) (rtx);
  int (*const blockage_function) (rtx, rtx);
} function_units[];
# 99 "../../../kg++fe/gnu/MIPS/insn-attr.h"
extern int max_dfa_issue_rate;
# 109 "../../../kg++fe/gnu/MIPS/insn-attr.h"
extern int insn_default_latency (rtx);



extern int bypass_p (rtx);




extern int insn_latency (rtx, rtx);




extern int insn_alts (rtx);



extern int max_insn_queue_index;


typedef void *state_t;


extern int state_size (void);



extern void state_reset (state_t);
# 147 "../../../kg++fe/gnu/MIPS/insn-attr.h"
extern int state_transition (state_t, rtx);
# 159 "../../../kg++fe/gnu/MIPS/insn-attr.h"
extern int min_issue_delay (state_t, rtx);


extern int state_dead_lock_p (state_t);






extern int min_insn_conflict_delay (state_t, rtx, rtx);



extern void print_reservation (FILE *, rtx);
# 188 "../../../kg++fe/gnu/MIPS/insn-attr.h"
extern void dfa_start (void);
extern void dfa_finish (void);
# 59 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 60 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-flags.h" 1
# 61 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/hard-reg-set.h" 1
# 41 "../../../kg++fe/gnu/hard-reg-set.h"
typedef unsigned long long HARD_REG_ELT_TYPE;
# 52 "../../../kg++fe/gnu/hard-reg-set.h"
typedef HARD_REG_ELT_TYPE HARD_REG_SET[((176 + (8 * 8) - 1) / (8 * 8))];
# 395 "../../../kg++fe/gnu/hard-reg-set.h"
extern char fixed_regs[176];



extern HARD_REG_SET fixed_reg_set;






extern char call_used_regs[176];


extern char call_really_used_regs[];




extern HARD_REG_SET call_used_reg_set;


extern HARD_REG_SET losing_caller_save_reg_set;







extern char call_fixed_regs[176];



extern HARD_REG_SET call_fixed_reg_set;






extern char global_regs[176];
# 445 "../../../kg++fe/gnu/hard-reg-set.h"
extern HARD_REG_SET regs_invalidated_by_call;




extern int reg_alloc_order[176];



extern int inv_reg_alloc_order[176];




extern HARD_REG_SET reg_class_contents[(int) LIM_REG_CLASSES];



extern unsigned int reg_class_size[(int) LIM_REG_CLASSES];



extern enum reg_class reg_class_superclasses[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];



extern enum reg_class reg_class_subclasses[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




extern enum reg_class reg_class_subunion[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




extern enum reg_class reg_class_superunion[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];



extern int n_non_fixed_regs;



extern const char * reg_names[176];
# 62 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/recog.h" 1
# 28 "../../../kg++fe/gnu/recog.h"
enum op_type {
  OP_IN,
  OP_OUT,
  OP_INOUT
};

struct operand_alternative
{


  const char *constraint;


  enum reg_class class;



  unsigned int reject;


  int matches;



  int matched;


  unsigned int earlyclobber:1;

  unsigned int memory_ok:1;

  unsigned int offmem_ok:1;

  unsigned int nonoffmem_ok:1;

  unsigned int decmem_ok:1;

  unsigned int incmem_ok:1;

  unsigned int is_address:1;


  unsigned int anything_ok:1;
};


extern void init_recog (void);
extern void init_recog_no_volatile (void);
extern int recog_memoized_1 (rtx);
extern int check_asm_operands (rtx);
extern int asm_operand_ok (rtx, const char *);
extern int validate_change (rtx, rtx *, rtx, int);
extern int insn_invalid_p (rtx);
extern int apply_change_group (void);
extern int num_validated_changes (void);
extern void cancel_changes (int);
extern int constrain_operands (int);
extern int constrain_operands_cached (int);
extern int memory_address_p (enum machine_mode, rtx);
extern int strict_memory_address_p (enum machine_mode, rtx);
extern int validate_replace_rtx_subexp (rtx, rtx, rtx, rtx *);
extern int validate_replace_rtx (rtx, rtx, rtx);
extern void validate_replace_rtx_group (rtx, rtx, rtx);
extern int validate_replace_src (rtx, rtx, rtx);
extern void validate_replace_src_group (rtx, rtx, rtx);
extern int num_changes_pending (void);



extern int reg_fits_class_p (rtx, enum reg_class, int, enum machine_mode);

extern rtx *find_single_use (rtx, rtx, rtx *);

extern int general_operand (rtx, enum machine_mode);
extern int address_operand (rtx, enum machine_mode);
extern int register_operand (rtx, enum machine_mode);
extern int pmode_register_operand (rtx, enum machine_mode);
extern int scratch_operand (rtx, enum machine_mode);
extern int immediate_operand (rtx, enum machine_mode);
extern int const_int_operand (rtx, enum machine_mode);
extern int const_double_operand (rtx, enum machine_mode);
extern int nonimmediate_operand (rtx, enum machine_mode);
extern int nonmemory_operand (rtx, enum machine_mode);
extern int push_operand (rtx, enum machine_mode);
extern int pop_operand (rtx, enum machine_mode);
extern int memory_operand (rtx, enum machine_mode);
extern int indirect_operand (rtx, enum machine_mode);
extern int mode_independent_operand (rtx, enum machine_mode);
extern int comparison_operator (rtx, enum machine_mode);

extern int offsettable_memref_p (rtx);
extern int offsettable_nonstrict_memref_p (rtx);
extern int offsettable_address_p (int, enum machine_mode, rtx);
extern int mode_dependent_address_p (rtx);

extern int recog (rtx, rtx, int *);
extern void add_clobbers (rtx, int);
extern int added_clobbers_hard_reg_p (int);
extern void insn_extract (rtx);
extern void extract_insn (rtx);
extern void extract_constrain_insn_cached (rtx);
extern void extract_insn_cached (rtx);
extern void preprocess_constraints (void);
extern rtx peep2_next_insn (int);
extern int peep2_regno_dead_p (int, int);
extern int peep2_reg_dead_p (int, rtx);

extern rtx peep2_find_free_register (int, int, const char *, enum machine_mode, HARD_REG_SET *);



extern void peephole2_optimize (FILE *);
extern rtx peephole2_insns (rtx, rtx, int *);

extern int store_data_bypass_p (rtx, rtx);
extern int if_test_bypass_p (rtx, rtx);


extern int volatile_ok;



extern int which_alternative;



struct recog_data
{







  rtx operand[30];


  rtx *operand_loc[30];


  const char *constraints[30];


  enum machine_mode operand_mode[30];


  enum op_type operand_type[30];



  rtx *dup_loc[2];



  char dup_num[2];
# 196 "../../../kg++fe/gnu/recog.h"
  char n_operands;


  char n_dups;


  char n_alternatives;


  rtx insn;
};

extern struct recog_data recog_data;



extern struct operand_alternative recog_op_alt[30][30];




typedef int (*insn_operand_predicate_fn) (rtx, enum machine_mode);
typedef const char * (*insn_output_fn) (rtx *, rtx);
typedef rtx (*insn_gen_fn) (rtx, ...);

struct insn_operand_data
{
  const insn_operand_predicate_fn predicate;

  const char *const constraint;

  const enum machine_mode mode : 16;

  const char strict_low;

  const char eliminable;
};
# 241 "../../../kg++fe/gnu/recog.h"
struct insn_data
{
  const char *const name;
  const void * output;
  const insn_gen_fn genfun;
  const struct insn_operand_data *const operand;

  const char n_operands;
  const char n_dups;
  const char n_alternatives;
  const char output_format;
};

extern const struct insn_data insn_data[];
# 63 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/output.h" 1
# 24 "../../../kg++fe/gnu/output.h"
extern void compute_alignments (void);


extern void init_final (const char *);



extern void end_final (const char *);



extern void app_enable (void);



extern void app_disable (void);




extern int dbr_sequence_length (void);


extern void init_insn_lengths (void);



extern int get_attr_length (rtx);



extern void shorten_branches (rtx);






extern void final_start_function (rtx, FILE *, int);




extern void final_end_function (void);


extern void final (rtx, FILE *, int, int);




extern rtx final_scan_insn (rtx, FILE *, int, int, int);



extern rtx alter_subreg (rtx *);



extern void output_operand_lossage (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2))) __attribute__ ((__nonnull__ (1)));



extern void output_asm_insn (const char *, rtx *);




extern int insn_current_reference_address (rtx);



extern int label_to_alignment (rtx);


extern void output_asm_label (rtx);



extern void output_address (rtx);




extern void output_addr_const (FILE *, rtx);



extern void asm_fprintf (FILE *file, const char *p, ...);



extern void split_double (rtx, rtx *, rtx *);


extern int leaf_function_p (void);




extern int final_forward_branch_p (rtx);



extern int only_leaf_regs_used (void);



extern void leaf_renumber_regs_insn (rtx);


extern const char *get_insn_template (int, rtx);



extern int add_weak (tree, const char *, const char *);


extern void allocate_for_life_analysis (void);
extern int regno_uninitialized (unsigned int);
extern int regno_clobbered_at_setjmp (int);
extern void find_basic_blocks (rtx, int, FILE *);
extern _Bool cleanup_cfg (int);
extern _Bool delete_unreachable_blocks (void);
extern void check_function_return_warnings (void);




extern void text_section (void);


extern void data_section (void);


extern void force_data_section (void);



extern void readonly_data_section (void);


extern int in_text_section (void);
# 177 "../../../kg++fe/gnu/output.h"
extern void bss_section (void);







extern void init_section (void);



extern void fini_section (void);
# 205 "../../../kg++fe/gnu/output.h"
extern void sdata_section (void);
# 216 "../../../kg++fe/gnu/output.h"
extern void named_section (tree, const char *, int);


extern void function_section (tree);


extern void mergeable_string_section (tree, unsigned long long, unsigned int);



extern void mergeable_constant_section (enum machine_mode, unsigned long long, unsigned int);




extern void declare_weak (tree);

extern void merge_weak (tree, tree);


extern void weak_finish (void);
# 245 "../../../kg++fe/gnu/output.h"
extern int decode_reg_name (const char *);



extern void make_var_volatile (tree);


extern void assemble_constant_align (tree);

extern void assemble_alias (tree, tree);

extern void default_assemble_visibility (tree, int);



extern void assemble_asm (tree);





extern void assemble_start_function (tree, const char *);



extern void assemble_end_function (tree, const char *);
# 281 "../../../kg++fe/gnu/output.h"
extern void assemble_variable (tree, int, int, int);




extern void assemble_external (tree);


extern void assemble_zeros (int);


extern void assemble_align (int);
extern void assemble_eh_align (int);


extern void assemble_string (const char *, int);


extern void assemble_external_libcall (rtx);


extern void assemble_label (const char *);
extern void assemble_eh_label (const char *);






extern void assemble_name (FILE *, const char *);
# 319 "../../../kg++fe/gnu/output.h"
extern const char *integer_asm_op (int, int);



extern void assemble_integer_with_op (const char *, rtx);


extern _Bool default_assemble_integer (rtx, unsigned int, int);





extern _Bool assemble_integer (rtx, unsigned, unsigned, int);
# 348 "../../../kg++fe/gnu/output.h"
extern void defer_addressed_constants (void);



extern void output_deferred_addressed_constants (void);


extern int get_pool_size (void);


extern rtx peephole (rtx);



extern void output_constant_pool (const char *, tree);
# 373 "../../../kg++fe/gnu/output.h"
extern tree initializer_constant_valid_p (tree, tree);
# 383 "../../../kg++fe/gnu/output.h"
extern void output_constant (tree, long long, unsigned int);
# 392 "../../../kg++fe/gnu/output.h"
extern rtx final_sequence;
# 404 "../../../kg++fe/gnu/output.h"
extern FILE *asm_out_file;



extern const char *first_global_object_name;


extern const char *weak_global_object_name;






extern int current_function_is_leaf;




extern int current_function_nothrow;





extern int current_function_sp_is_unchanging;





extern int current_function_uses_only_leaf_regs;




extern FILE *rtl_dump_file;



extern struct rtx_def *current_insn_predicate;


extern struct rtx_def *current_output_insn;




extern rtx this_is_asm_operands;



extern _Bool decl_readonly_section (tree, int);
extern _Bool decl_readonly_section_1 (tree, int, int);


extern const char *user_label_prefix;


extern void default_function_pro_epilogue (FILE *, long long);


extern void default_exception_section (void);


extern void default_eh_frame_section (void);


extern void no_asm_to_stream (FILE *);
# 491 "../../../kg++fe/gnu/output.h"
extern unsigned int get_named_section_flags (const char *);
extern _Bool set_named_section_flags (const char *, unsigned int);
extern void named_section_flags (const char *, unsigned int);
extern _Bool named_section_first_declaration (const char *);

union tree_node;
extern unsigned int default_section_type_flags (union tree_node *, const char *, int);

extern unsigned int default_section_type_flags_1 (union tree_node *, const char *, int, int);



extern void default_no_named_section (const char *, unsigned int);
extern void default_elf_asm_named_section (const char *, unsigned int);
extern void default_coff_asm_named_section (const char *, unsigned int);

extern void default_pe_asm_named_section (const char *, unsigned int);

extern void default_stabs_asm_out_destructor (struct rtx_def *, int);
extern void default_named_section_asm_out_destructor (struct rtx_def *, int);

extern void default_dtor_section_asm_out_destructor (struct rtx_def *, int);

extern void default_stabs_asm_out_constructor (struct rtx_def *, int);
extern void default_named_section_asm_out_constructor (struct rtx_def *, int);

extern void default_ctor_section_asm_out_constructor (struct rtx_def *, int);


extern void default_select_section (tree, int, unsigned long long);

extern void default_elf_select_section (tree, int, unsigned long long);

extern void default_elf_select_section_1 (tree, int, unsigned long long, int);

extern void default_unique_section (tree, int);
extern void default_unique_section_1 (tree, int, int);
extern void default_select_rtx_section (enum machine_mode, rtx, unsigned long long);

extern void default_elf_select_rtx_section (enum machine_mode, rtx, unsigned long long);

extern const char *default_strip_name_encoding (const char *);
extern _Bool default_binds_local_p (tree);
extern _Bool default_binds_local_p_1 (tree, int);
extern void default_globalize_label (FILE *, const char *);


extern void assemble_vtable_entry (struct rtx_def *, long long);
extern void assemble_vtable_inherit (struct rtx_def *, struct rtx_def *);
# 64 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/except.h" 1
# 37 "../../../kg++fe/gnu/except.h"
struct function;

struct inline_remap;



struct eh_status;


struct eh_region;


extern int doing_eh (int);




extern void expand_eh_region_start (void);



extern void expand_eh_region_end_cleanup (tree);



extern void expand_start_all_catch (void);




extern void expand_start_catch (tree);


extern void expand_end_catch (void);


extern void expand_end_all_catch (void);




extern void expand_eh_region_end_allowed (tree, tree);



extern void expand_eh_region_end_must_not_throw (tree);




extern void expand_eh_region_end_throw (tree);




extern void expand_eh_region_end_fixup (tree);



extern void note_eh_region_may_contain_throw (void);



extern void for_each_eh_label (void (*) (rtx));


extern _Bool can_throw_internal (rtx);
extern _Bool can_throw_external (rtx);


extern void set_nothrow_function_flags (void);



extern void finish_eh_generation (void);

extern void init_eh (void);
extern void init_eh_for_function (void);

extern rtx reachable_handlers (rtx);
extern void maybe_remove_eh_handler (rtx);

extern void convert_from_eh_region_ranges (void);
extern void convert_to_eh_region_ranges (void);
extern void find_exception_handler_labels (void);
extern _Bool current_function_has_exception_handlers (void);
extern void output_function_exception_table (void);

extern void expand_builtin_unwind_init (void);
extern rtx expand_builtin_eh_return_data_regno (tree);
extern rtx expand_builtin_extract_return_addr (tree);
extern void expand_builtin_init_dwarf_reg_sizes (tree);
extern rtx expand_builtin_frob_return_addr (tree);
extern rtx expand_builtin_dwarf_sp_column (void);
extern void expand_builtin_eh_return (tree, tree);
extern void expand_eh_return (void);

extern rtx expand_builtin_extend_pointer (tree);
extern rtx get_exception_pointer (struct function *);
extern int duplicate_eh_regions (struct function *, struct inline_remap *);


extern void sjlj_emit_function_exit_after (rtx);
# 148 "../../../kg++fe/gnu/except.h"
extern tree (*lang_protect_cleanup_actions) (void);


extern int (*lang_eh_type_covers) (tree a, tree b);


extern tree (*lang_eh_runtime_type) (tree);
# 65 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/function.h" 1
# 22 "../../../kg++fe/gnu/function.h"
struct var_refs_queue
{
  rtx modified;
  enum machine_mode promoted_mode;
  int unsignedp;
  struct var_refs_queue *next;
};






struct sequence_stack
{

  rtx first;
  rtx last;
  tree sequence_rtl_expr;
  struct sequence_stack *next;
};

extern struct sequence_stack *sequence_stack;



struct simple_obstack_stack
{
  struct obstack *obstack;
  struct simple_obstack_stack *next;
};

struct emit_status
{


  int x_reg_rtx_no;


  int x_first_label_num;






  rtx x_first_insn;
  rtx x_last_insn;




  tree sequence_rtl_expr;





  struct sequence_stack *sequence_stack;



  int x_cur_insn_uid;



  int x_last_linenum;
  const char *x_last_filename;





  int regno_pointer_align_length;




  unsigned char *
    regno_pointer_align;



  tree * regno_decl;






  rtx * x_regno_reg_rtx;
};
# 124 "../../../kg++fe/gnu/function.h"
struct expr_status
{


  int x_pending_stack_adjust;
# 145 "../../../kg++fe/gnu/function.h"
  int x_inhibit_defer_pop;





  int x_stack_pointer_delta;




  rtx x_saveregs_value;


  rtx x_apply_args_value;


  rtx x_forced_labels;


  rtx x_pending_chain;
};
# 179 "../../../kg++fe/gnu/function.h"
struct function
{
  struct eh_status *eh;
  struct stmt_status *stmt;
  struct expr_status *expr;
  struct emit_status *emit;
  struct varasm_status *varasm;




  const char *name;


  tree decl;


  struct function *outer;




  int pops_args;




  int args_size;




  int pretend_args_size;



  int outgoing_args_size;



  rtx arg_offset_rtx;



  CUMULATIVE_ARGS args_info;





  rtx return_rtx;


  rtx internal_arg_pointer;



  const char *cannot_inline;



  struct initial_value_struct *hard_reg_initial_vals;


  int x_function_call_count;




  tree x_nonlocal_labels;





  rtx x_nonlocal_goto_handler_slots;



  rtx x_nonlocal_goto_handler_labels;




  rtx x_nonlocal_goto_stack_level;





  rtx x_cleanup_label;




  rtx x_return_label;


  rtx computed_goto_common_label;
  rtx computed_goto_common_reg;



  rtx x_save_expr_regs;



  rtx x_stack_slot_list;


  tree x_rtl_expr_chain;



  rtx x_tail_recursion_label;


  rtx x_tail_recursion_reentry;





  rtx x_arg_pointer_save_area;




  rtx x_clobber_return_insn;




  long long x_frame_offset;




  tree x_context_display;
# 326 "../../../kg++fe/gnu/function.h"
  tree x_trampoline_list;


  rtx x_parm_birth_insn;



  rtx x_last_parm_insn;



  unsigned int x_max_parm_reg;





  rtx * x_parm_reg_stack_loc;


  struct temp_slot *x_temp_slots;


  int x_temp_slot_level;


  int x_var_temp_slot_level;





  int x_target_temp_slot_level;



  struct var_refs_queue *fixup_var_refs_queue;


  int inlinable;
  int no_debugging_symbols;
  rtvec original_arg_vector;
  tree original_decl_initial;


  rtx inl_last_parm_insn;

  int inl_max_label_num;


  int funcdef_no;




  struct machine_function * machine;

  int stack_alignment_needed;

  int preferred_stack_boundary;


  struct language_function * language;





  rtx epilogue_delay_list;





  unsigned int returns_struct : 1;



  unsigned int returns_pcc_struct : 1;


  unsigned int returns_pointer : 1;


  unsigned int needs_context : 1;


  unsigned int calls_setjmp : 1;


  unsigned int calls_longjmp : 1;



  unsigned int calls_alloca : 1;


  unsigned int calls_eh_return : 1;



  unsigned int has_nonlocal_label : 1;



  unsigned int has_nonlocal_goto : 1;


  unsigned int contains_functions : 1;


  unsigned int has_computed_jump : 1;




  unsigned int is_thunk : 1;






  unsigned int all_throwers_are_sibcalls : 1;



  unsigned int instrument_entry_exit : 1;


  unsigned int arc_profile : 1;


  unsigned int profile : 1;



  unsigned int limit_stack : 1;


  unsigned int stdarg : 1;





  unsigned int x_whole_function_mode_p : 1;
# 481 "../../../kg++fe/gnu/function.h"
  unsigned int x_dont_save_pending_sizes_p : 1;


  unsigned int uses_const_pool : 1;


  unsigned int uses_pic_offset_table : 1;


  unsigned int uses_eh_lsda : 1;


  unsigned int arg_pointer_save_area_init : 1;



  enum function_frequency {


    FUNCTION_FREQUENCY_UNLIKELY_EXECUTED,

    FUNCTION_FREQUENCY_NORMAL,


    FUNCTION_FREQUENCY_HOT
  } function_frequency;



  int max_jumptable_ents;
};


extern struct function *cfun;


extern int virtuals_instantiated;


extern int trampolines_created;
# 581 "../../../kg++fe/gnu/function.h"
extern tree inline_function_decl;



struct function *find_function_data (tree);


extern void identify_blocks (void);



extern void reorder_blocks (void);


extern void number_blocks (tree);




extern long long get_frame_size (void);

extern long long get_func_frame_size (struct function *);



extern struct machine_function * (*init_machine_status) (void);


extern void restore_emit_status (struct function *);
extern void free_after_parsing (struct function *);
extern void free_after_compilation (struct function *);

extern void init_varasm_status (struct function *);

extern rtx get_first_block_beg (void);


extern void diddle_return_value (void (*)(rtx, void*), void*);
extern void clobber_return_register (void);
extern void use_return_register (void);


extern rtx get_arg_pointer_save_area (struct function *);

extern void init_virtual_regs (struct emit_status *);


extern void init_function_once (void);
# 66 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/toplev.h" 1
# 33 "../../../kg++fe/gnu/toplev.h"
extern int toplev_main (int, char **);
extern int read_integral_parameter (const char *, const char *, const int);

extern void strip_off_ending (char *, int);
extern void print_time (const char *, long);
extern const char *trim_filename (const char *);
extern void internal_error (const char *, ...)
            __attribute__ ((__noreturn__));
extern void fatal_io_error (const char *, ...)
            __attribute__ ((__noreturn__));
extern void _fatal_insn_not_found (struct rtx_def *, const char *, int, const char *)


            __attribute__ ((__noreturn__));
extern void _fatal_insn (const char *, struct rtx_def *, const char *, int, const char *)



           __attribute__ ((__noreturn__));
# 61 "../../../kg++fe/gnu/toplev.h"
extern void warning (const char *, ...);
extern void error (const char *, ...);
extern void fatal_error (const char *, ...)
            __attribute__ ((__noreturn__));
extern void pedwarn (const char *, ...);
extern void pedwarn_with_file_and_line (const char *, int, const char *, ...);

extern void warning_with_file_and_line (const char *, int, const char *, ...);

extern void error_with_file_and_line (const char *, int, const char *, ...);

extern void sorry (const char *, ...);

extern void rest_of_decl_compilation (union tree_node *, const char *, int, int);

extern void rest_of_type_compilation (union tree_node *, int);
extern void rest_of_compilation (union tree_node *);

extern void pedwarn_with_decl (union tree_node *, const char *, ...);

extern void warning_with_decl (union tree_node *, const char *, ...);

extern void error_with_decl (union tree_node *, const char *, ...);


extern void announce_function (union tree_node *);

extern void error_for_asm (struct rtx_def *, const char *, ...);

extern void warning_for_asm (struct rtx_def *, const char *, ...);

extern void warn_deprecated_use (union tree_node *);

extern void output_clean_symbol_name (FILE *, const char *);

extern void output_quoted_string (FILE *, const char *);
extern void output_file_directive (FILE *, const char *);

extern void do_abort (void) __attribute__ ((__noreturn__));
extern void botch (const char *)
  __attribute__ ((__noreturn__));




extern void fnotice (FILE *, const char *, ...)
            __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__nonnull__ (2)));


extern int wrapup_global_declarations (union tree_node **, int);
extern void check_global_declarations (union tree_node **, int);

extern const char *progname;
extern const char *dump_base_name;
extern const char *aux_base_name;

extern int target_flags_explicit;


extern struct ht *ident_hash;




extern void set_fast_math_flags (int);


extern _Bool fast_math_flags_set_p (void);
# 137 "../../../kg++fe/gnu/toplev.h"
extern int exact_log2_wide (unsigned long long);
extern int floor_log2_wide (unsigned long long);


extern void dump_parse_tree (char *, union tree_node *);
# 67 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/expr.h" 1
# 57 "../../../kg++fe/gnu/expr.h"
enum expand_modifier {EXPAND_NORMAL = 0, EXPAND_STACK_PARM = 2, EXPAND_SUM,
        EXPAND_CONST_ADDRESS, EXPAND_INITIALIZER, EXPAND_WRITE,
        EXPAND_MEMORY};
# 75 "../../../kg++fe/gnu/expr.h"
struct args_size
{
  long long constant;
  tree var;
};
# 125 "../../../kg++fe/gnu/expr.h"
enum direction {none, upward, downward};
# 262 "../../../kg++fe/gnu/expr.h"
enum optab_methods
{
  OPTAB_DIRECT,
  OPTAB_LIB,
  OPTAB_WIDEN,
  OPTAB_LIB_WIDEN,
  OPTAB_MUST_WIDEN
};




extern rtx expand_simple_binop (enum machine_mode, enum rtx_code, rtx, rtx, rtx, int, enum optab_methods);

extern rtx expand_simple_unop (enum machine_mode, enum rtx_code, rtx, rtx, int);




extern int have_insn_for (enum rtx_code, enum machine_mode);


extern void emit_libcall_block (rtx, rtx, rtx, rtx);





extern rtx gen_add2_insn (rtx, rtx);
extern rtx gen_add3_insn (rtx, rtx, rtx);
extern rtx gen_sub2_insn (rtx, rtx);
extern rtx gen_sub3_insn (rtx, rtx, rtx);
extern rtx gen_move_insn (rtx, rtx);
extern int have_add2_insn (rtx, rtx);
extern int have_sub2_insn (rtx, rtx);



extern void emit_cmp_and_jump_insns (rtx, rtx, enum rtx_code, rtx, enum machine_mode, int, rtx);



extern void emit_indirect_jump (rtx);



rtx emit_conditional_move (rtx, enum rtx_code, rtx, rtx, enum machine_mode, rtx, rtx, enum machine_mode, int);




int can_conditionally_move_p (enum machine_mode mode);
# 322 "../../../kg++fe/gnu/expr.h"
extern rtx negate_rtx (enum machine_mode, rtx);


extern rtx expand_and (enum machine_mode, rtx, rtx, rtx);


extern rtx emit_store_flag (rtx, enum rtx_code, rtx, rtx, enum machine_mode, int, int);



extern rtx emit_store_flag_force (rtx, enum rtx_code, rtx, rtx, enum machine_mode, int, int);






extern rtx canonicalize_condition (rtx, rtx, int, rtx *, rtx);



extern rtx get_condition (rtx, rtx *);


extern rtx gen_cond_trap (enum rtx_code, rtx, rtx, rtx);


extern rtx expand_builtin (tree, rtx, rtx, enum machine_mode, int);
extern void std_expand_builtin_va_start (tree, rtx);
extern rtx std_expand_builtin_va_arg (tree, tree);
extern rtx expand_builtin_va_arg (tree, tree);
extern void default_init_builtins (void);
extern rtx default_expand_builtin (tree, rtx, rtx, enum machine_mode, int);

extern void expand_builtin_setjmp_setup (rtx, rtx);
extern void expand_builtin_setjmp_receiver (rtx);
extern void expand_builtin_longjmp (rtx, rtx);
extern rtx expand_builtin_saveregs (void);
extern void expand_builtin_trap (void);
extern long long get_varargs_alias_set (void);
extern long long get_frame_alias_set (void);
extern void record_base_value (unsigned int, rtx, int);
extern void record_alias_subset (long long, long long);

extern long long new_alias_set (void);
extern int can_address_p (tree);





extern void init_expr_once (void);


extern void init_expr (void);


extern void finish_expr_for_function (void);



extern rtx protect_from_queue (rtx, int);


extern void emit_queue (void);


extern int queued_subexp_p (rtx);



extern void convert_move (rtx, rtx, int);


extern rtx convert_to_mode (enum machine_mode, rtx, int);


extern rtx convert_modes (enum machine_mode, enum machine_mode, rtx, int);




enum block_op_methods
{
  BLOCK_OP_NORMAL,
  BLOCK_OP_NO_LIBCALL,
  BLOCK_OP_CALL_PARM
};

extern void init_block_move_fn (const char *);
extern void init_block_clear_fn (const char *);

extern rtx emit_block_move (rtx, rtx, rtx, enum block_op_methods);



extern void move_block_to_reg (int, rtx, int, enum machine_mode);



extern void move_block_from_reg (int, rtx, int, int);


extern rtx gen_group_rtx (rtx);



extern void emit_group_load (rtx, rtx, int);



extern void emit_group_move (rtx, rtx);



extern void emit_group_store (rtx, rtx, int);



extern rtx copy_blkmode_from_reg (rtx,rtx,tree);



extern void use_reg (rtx *, rtx);



extern void use_regs (rtx *, int, int);


extern void use_group_regs (rtx *, rtx);



extern rtx clear_storage (rtx, rtx);




extern int can_move_by_pieces (unsigned long long, unsigned int);






extern int can_store_by_pieces (unsigned long long, rtx (*) (void *, long long, enum machine_mode), void *, unsigned int);
# 478 "../../../kg++fe/gnu/expr.h"
extern rtx store_by_pieces (rtx, unsigned long long, rtx (*) (void *, long long, enum machine_mode), void *, unsigned int, int);





extern rtx emit_move_insn (rtx, rtx);


extern rtx emit_move_insn_1 (rtx, rtx);



extern rtx push_block (rtx, int, int);



extern void emit_push_insn (rtx, enum machine_mode, tree, rtx, unsigned int, int, rtx, int, rtx, rtx, int, rtx);




extern rtx expand_assignment (tree, tree, int, int);





extern rtx store_expr (tree, rtx, int);





extern rtx force_operand (rtx, rtx);
# 521 "../../../kg++fe/gnu/expr.h"
extern tree find_placeholder (tree, tree *);




extern rtx expand_expr (tree, rtx, enum machine_mode, enum expand_modifier);




extern void init_pending_stack_adjust (void);



extern void clear_pending_stack_adjust (void);


extern void do_pending_stack_adjust (void);




extern tree string_constant (tree, tree *);


extern void jumpifnot (tree, rtx);


extern void jumpif (tree, rtx);



extern void do_jump (tree, rtx, rtx);



extern rtx compare_from_rtx (rtx, rtx, enum rtx_code, int, enum machine_mode, rtx);

extern void do_compare_rtx_and_jump (rtx, rtx, enum rtx_code, int, enum machine_mode, rtx, rtx, rtx);




extern int try_casesi (tree, tree, tree, tree, rtx, rtx);
extern int try_tablejump (tree, tree, tree, tree, rtx, rtx);



extern unsigned int case_values_threshold (void);





extern rtx expr_size (tree);



extern long long int_expr_size (tree);

extern rtx lookup_static_chain (tree);



extern rtx fix_lexical_addr (rtx, tree);


extern rtx trampoline_address (tree);



extern rtx hard_function_value (tree, tree, int);

extern rtx prepare_call_address (rtx, tree, rtx *, int, int);

extern rtx expand_call (tree, rtx, int);

extern rtx expand_shift (enum tree_code, enum machine_mode, rtx, tree, rtx, int);

extern rtx expand_divmod (int, enum tree_code, enum machine_mode, rtx, rtx, rtx, int);

extern void locate_and_pad_parm (enum machine_mode, tree, int, tree, struct args_size *, struct args_size *, struct args_size *, struct args_size *);




extern rtx expand_inline_function (tree, tree, rtx, int, tree, rtx);


extern rtx label_rtx (tree);



extern rtx promoted_input_arg (unsigned int, enum machine_mode *, int *);





extern rtx eliminate_constant_term (rtx, rtx *);



extern rtx memory_address (enum machine_mode, rtx);


extern rtx memory_address_noforce (enum machine_mode, rtx);


extern void set_mem_alias_set (rtx, long long);


extern void set_mem_align (rtx, unsigned int);


extern void set_mem_expr (rtx, tree);


extern void set_mem_offset (rtx, rtx);


extern void set_mem_size (rtx, rtx);





extern rtx change_address (rtx, enum machine_mode, rtx);
# 669 "../../../kg++fe/gnu/expr.h"
extern rtx adjust_address_1 (rtx, enum machine_mode, long long, int, int);

extern rtx adjust_automodify_address_1 (rtx, enum machine_mode, rtx, long long, int);





extern rtx offset_address (rtx, rtx, long long);





extern rtx replace_equiv_address (rtx, rtx);


extern rtx replace_equiv_address_nv (rtx, rtx);



extern rtx widen_memory_access (rtx, enum machine_mode, long long);



extern rtx validize_mem (rtx);





extern void maybe_set_unchanging (rtx, tree);




extern void set_mem_attributes (rtx, tree, int);




extern void set_mem_attributes_minus_bitpos (rtx, tree, int, long long);




extern rtx assemble_trampoline_template (void);



extern rtx stabilize (rtx);



extern rtx copy_all_regs (rtx);


extern rtx copy_to_reg (rtx);


extern rtx copy_addr_to_reg (rtx);


extern rtx copy_to_mode_reg (enum machine_mode, rtx);


extern rtx copy_to_suggested_reg (rtx, rtx, enum machine_mode);



extern rtx force_reg (enum machine_mode, rtx);


extern rtx force_not_mem (rtx);



extern enum machine_mode promote_mode (tree, enum machine_mode, int *, int);




extern void adjust_stack (rtx);


extern void anti_adjust_stack (rtx);


enum save_level {SAVE_BLOCK, SAVE_FUNCTION, SAVE_NONLOCAL};


extern void emit_stack_save (enum save_level, rtx *, rtx);


extern void emit_stack_restore (enum save_level, rtx, rtx);



extern rtx allocate_dynamic_stack_space (rtx, rtx, int);






extern void probe_stack_range (long long, rtx);



extern rtx hard_libcall_value (enum machine_mode);



extern rtx round_push (rtx);





enum extraction_pattern { EP_insv, EP_extv, EP_extzv };
extern enum machine_mode
mode_for_extraction (enum extraction_pattern, int);

extern rtx store_bit_field (rtx, unsigned long long, unsigned long long, enum machine_mode, rtx, long long);


extern rtx extract_bit_field (rtx, unsigned long long, unsigned long long, int, rtx, enum machine_mode, enum machine_mode, long long);



extern rtx expand_mult (enum machine_mode, rtx, rtx, rtx, int);
extern _Bool const_mult_add_overflow_p (rtx, rtx, rtx, enum machine_mode, int);
extern rtx expand_mult_add (rtx, rtx, rtx, rtx,enum machine_mode, int);
extern rtx expand_mult_highpart_adjust (enum machine_mode, rtx, rtx, rtx, rtx, int);

extern rtx assemble_static_space (int);




extern rtx (*lang_expand_expr) (union tree_node *, rtx, enum machine_mode, enum expand_modifier modifier);



extern int safe_from_p (rtx, tree, int);



extern void init_optabs (void);
extern void init_all_optabs (void);


extern rtx init_one_libfunc (const char *);

extern void do_jump_by_parts_equality_rtx (rtx, rtx, rtx);
extern void do_jump_by_parts_greater_rtx (enum machine_mode, int, rtx, rtx, rtx, rtx);




extern void mark_seen_cases (tree, unsigned char *, long long, int);



extern int vector_mode_valid_p (enum machine_mode);
# 68 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/basic-block.h" 1
# 25 "../../../kg++fe/gnu/basic-block.h"
# 1 "../../../kg++fe/gnu/bitmap.h" 1
# 29 "../../../kg++fe/gnu/bitmap.h"
typedef unsigned long BITMAP_WORD;
# 51 "../../../kg++fe/gnu/bitmap.h"
typedef struct bitmap_element_def
{
  struct bitmap_element_def *next;
  struct bitmap_element_def *prev;
  unsigned int indx;
  BITMAP_WORD bits[((128 + (8 * 4) - 1) / (8 * 4))];
} bitmap_element;


typedef struct bitmap_head_def {
  bitmap_element *first;
  bitmap_element *current;
  unsigned int indx;
  int using_obstack;

} bitmap_head;
typedef struct bitmap_head_def *bitmap;


enum bitmap_bits {
  BITMAP_AND,
  BITMAP_AND_COMPL,
  BITMAP_IOR,
  BITMAP_XOR,
  BITMAP_IOR_COMPL
};


extern bitmap_element bitmap_zero_bits;


extern void bitmap_clear (bitmap);


extern void bitmap_copy (bitmap, bitmap);


extern int bitmap_equal_p (bitmap, bitmap);


extern int bitmap_operation (bitmap, bitmap, bitmap, enum bitmap_bits);



extern void bitmap_ior_and_compl (bitmap, bitmap, bitmap);


extern void bitmap_clear_bit (bitmap, int);


extern void bitmap_set_bit (bitmap, int);


extern int bitmap_bit_p (bitmap, int);


extern void debug_bitmap (bitmap);
extern void debug_bitmap_file (FILE *, bitmap);


extern void bitmap_print (FILE *, bitmap, const char *, const char *);



extern bitmap bitmap_initialize (bitmap head, int using_obstack);



extern void bitmap_release_memory (void);






extern int bitmap_union_of_diff (bitmap, bitmap, bitmap, bitmap);
extern int bitmap_first_set_bit (bitmap);
extern int bitmap_last_set_bit (bitmap);
# 26 "../../../kg++fe/gnu/basic-block.h" 2
# 1 "../../../kg++fe/gnu/sbitmap.h" 1
# 31 "../../../kg++fe/gnu/sbitmap.h"
typedef struct simple_bitmap_def
{
  unsigned int n_bits;
  unsigned int size;
  unsigned int bytes;
  unsigned long long elms[1];
} *sbitmap;

typedef unsigned long long *sbitmap_ptr;
# 119 "../../../kg++fe/gnu/sbitmap.h"
struct int_list;

extern void dump_sbitmap (FILE *, sbitmap);
extern void dump_sbitmap_file (FILE *, sbitmap);
extern void dump_sbitmap_vector (FILE *, const char *, const char *, sbitmap *, int);


extern sbitmap sbitmap_alloc (unsigned int);
extern sbitmap *sbitmap_vector_alloc (unsigned int, unsigned int);
extern sbitmap sbitmap_resize (sbitmap, unsigned int, int);
extern void sbitmap_copy (sbitmap, sbitmap);
extern int sbitmap_equal (sbitmap, sbitmap);
extern void sbitmap_zero (sbitmap);
extern void sbitmap_ones (sbitmap);
extern void sbitmap_vector_zero (sbitmap *, unsigned int);
extern void sbitmap_vector_ones (sbitmap *, unsigned int);

extern void sbitmap_union_of_diff (sbitmap, sbitmap, sbitmap, sbitmap);

extern _Bool sbitmap_union_of_diff_cg (sbitmap, sbitmap, sbitmap, sbitmap);

extern void sbitmap_difference (sbitmap, sbitmap, sbitmap);
extern void sbitmap_not (sbitmap, sbitmap);
extern void sbitmap_a_or_b_and_c (sbitmap, sbitmap, sbitmap, sbitmap);

extern _Bool sbitmap_a_or_b_and_c_cg (sbitmap, sbitmap, sbitmap, sbitmap);

extern void sbitmap_a_and_b_or_c (sbitmap, sbitmap, sbitmap, sbitmap);

extern _Bool sbitmap_a_and_b_or_c_cg (sbitmap, sbitmap, sbitmap, sbitmap);

extern void sbitmap_a_and_b (sbitmap, sbitmap, sbitmap);
extern _Bool sbitmap_a_and_b_cg (sbitmap, sbitmap, sbitmap);
extern void sbitmap_a_or_b (sbitmap, sbitmap, sbitmap);
extern _Bool sbitmap_a_or_b_cg (sbitmap, sbitmap, sbitmap);
extern void sbitmap_a_xor_b (sbitmap, sbitmap, sbitmap);
extern _Bool sbitmap_a_xor_b_cg (sbitmap, sbitmap, sbitmap);
extern _Bool sbitmap_a_subset_b_p (sbitmap, sbitmap);

extern int sbitmap_first_set_bit (sbitmap);
extern int sbitmap_last_set_bit (sbitmap);

extern void sbitmap_intersect_of_predsucc (sbitmap, sbitmap *, int, struct int_list **);




extern void sbitmap_union_of_predsucc (sbitmap, sbitmap *, int, struct int_list **);







extern void sbitmap_intersection_of_succs (sbitmap, sbitmap *, int);
extern void sbitmap_intersection_of_preds (sbitmap, sbitmap *, int);
extern void sbitmap_union_of_succs (sbitmap, sbitmap *, int);
extern void sbitmap_union_of_preds (sbitmap, sbitmap *, int);

extern void debug_sbitmap (sbitmap);
# 27 "../../../kg++fe/gnu/basic-block.h" 2

# 1 "../../../include/gnu/partition.h" 1
# 50 "../../../include/gnu/partition.h"
struct partition_elem
{


  int class_element;


  struct partition_elem* next;


  unsigned class_count;
};

typedef struct partition_def
{

  int num_elements;

  struct partition_elem elements[1];
} *partition;

extern partition partition_new (int);
extern void partition_delete (partition);
extern int partition_union (partition, int, int);


extern void partition_print (partition, FILE*);
# 29 "../../../kg++fe/gnu/basic-block.h" 2



typedef bitmap_head regset_head;

typedef bitmap regset;
# 75 "../../../kg++fe/gnu/basic-block.h"
extern void reg_set_to_hard_reg_set (HARD_REG_SET *, bitmap);
# 117 "../../../kg++fe/gnu/basic-block.h"
typedef long long gcov_type;


typedef struct edge_def {

  struct edge_def *pred_next, *succ_next;


  struct basic_block_def *src, *dest;


  rtx insns;


  void *aux;

  int flags;
  int probability;
  gcov_type count;

} *edge;
# 179 "../../../kg++fe/gnu/basic-block.h"
typedef struct basic_block_def {

  rtx head, end;


  tree head_tree;
  tree end_tree;


  edge pred, succ;




  regset local_set;



  regset cond_local_set;





  regset global_live_at_start;

  regset global_live_at_end;


  void *aux;


  int index;


  struct basic_block_def *prev_bb, *next_bb;


  int loop_depth;


  struct loop *loop_father;


  gcov_type count;


  int frequency;


  int flags;
} *basic_block;
# 242 "../../../kg++fe/gnu/basic-block.h"
extern int n_basic_blocks;



extern int last_basic_block;



extern int n_edges;



extern varray_type basic_block_info;
# 276 "../../../kg++fe/gnu/basic-block.h"
extern regset regs_live_at_setjmp;



extern rtx label_value_list;
extern rtx tail_recursion_label_list;

extern struct obstack flow_obstack;
# 313 "../../../kg++fe/gnu/basic-block.h"
extern struct basic_block_def entry_exit_blocks[2];






extern void compute_bb_for_insn (void);
extern void free_bb_for_insn (void);
extern void update_bb_for_insn (basic_block);

extern void free_basic_block_vars (int);

extern edge split_block (basic_block, rtx);
extern basic_block split_edge (edge);
extern void insert_insn_on_edge (rtx, edge);

extern void commit_edge_insertions (void);
extern void commit_edge_insertions_watch_calls (void);

extern void remove_fake_edges (void);
extern void add_noreturn_fake_exit_edges (void);
extern void connect_infinite_loops_to_exit (void);
extern int flow_call_edges_add (sbitmap);
extern edge cached_make_edge (sbitmap *, basic_block, basic_block, int);

extern edge unchecked_make_edge (basic_block, basic_block, int);

extern edge make_edge (basic_block, basic_block, int);

extern edge make_single_succ_edge (basic_block, basic_block, int);

extern void remove_edge (edge);
extern void redirect_edge_succ (edge, basic_block);
extern edge redirect_edge_succ_nodup (edge, basic_block);
extern void redirect_edge_pred (edge, basic_block);
extern basic_block create_basic_block_structure (rtx, rtx, rtx, basic_block);
extern basic_block create_basic_block (rtx, rtx, basic_block);
extern int flow_delete_block (basic_block);
extern int flow_delete_block_noexpunge (basic_block);
extern void clear_bb_flags (void);
extern void merge_blocks_nomove (basic_block, basic_block);
extern void tidy_fallthru_edge (edge, basic_block, basic_block);

extern void tidy_fallthru_edges (void);
extern void flow_reverse_top_sort_order_compute (int *);
extern int flow_depth_first_order_compute (int *, int *);
extern void flow_preorder_transversal_compute (int *);
extern void dump_edge_info (FILE *, edge, int);
extern void clear_edges (void);
extern void mark_critical_edges (void);
extern rtx first_insn_after_basic_block_note (basic_block);



typedef struct dominance_info *dominance_info;


struct loop
{

  int num;


  basic_block header;


  basic_block latch;


  basic_block pre_header;




  edge *pre_header_edges;


  int num_pre_header_edges;



  basic_block first;



  basic_block last;


  sbitmap nodes;


  int num_nodes;


  edge *entry_edges;


  int num_entries;


  edge *exit_edges;


  int num_exits;


  sbitmap exits_doms;


  int depth;


  struct loop **pred;



  int level;


  struct loop *outer;


  struct loop *inner;


  struct loop *next;


  int invalid;


  void *aux;





  rtx vtop;



  rtx cont;


  rtx start;


  rtx end;



  rtx top;


  rtx scan_start;


  rtx sink;
# 482 "../../../kg++fe/gnu/basic-block.h"
  rtx exit_labels;



  int exit_count;
};



struct loops
{

  int num;


  int levels;



  struct loop *array;




  struct loop **parray;


  struct loop *tree_root;


  struct cfg
  {

    dominance_info dom;


    int *dfs_order;



    int *rc_order;
  } cfg;


  sbitmap shared_headers;
};






typedef struct ce_if_block
{
  basic_block test_bb;
  basic_block then_bb;
  basic_block else_bb;
  basic_block join_bb;
  basic_block last_test_bb;
  int num_multiple_test_blocks;
  int num_and_and_blocks;
  int num_or_or_blocks;
  int num_multiple_test_insns;
  int and_and_p;
  int num_then_insns;
  int num_else_insns;
  int pass;





} ce_if_block_t;

extern int flow_loops_find (struct loops *, int flags);
extern int flow_loops_update (struct loops *, int flags);
extern void flow_loops_free (struct loops *);
extern void flow_loops_dump (const struct loops *, FILE *, void (*)(const struct loop *, FILE *, int), int);


extern void flow_loop_dump (const struct loop *, FILE *, void (*)(const struct loop *, FILE *, int), int);


extern int flow_loop_scan (struct loops *, struct loop *, int);
extern void flow_loop_tree_node_add (struct loop *, struct loop *);
extern void flow_loop_tree_node_remove (struct loop *);


struct edge_list
{
  int num_blocks;
  int num_edges;
  edge *index_to_edge;
};
# 613 "../../../kg++fe/gnu/basic-block.h"
struct edge_list * create_edge_list (void);
void free_edge_list (struct edge_list *);
void print_edge_list (FILE *, struct edge_list *);
void verify_edge_list (FILE *, struct edge_list *);
int find_edge_index (struct edge_list *, basic_block, basic_block);



enum update_life_extent
{
  UPDATE_LIFE_LOCAL = 0,
  UPDATE_LIFE_GLOBAL = 1,
  UPDATE_LIFE_GLOBAL_RM_NOTES = 2
};
# 668 "../../../kg++fe/gnu/basic-block.h"
extern void life_analysis (rtx, FILE *, int);
extern int update_life_info (sbitmap, enum update_life_extent, int);

extern int update_life_info_in_dirty_blocks (enum update_life_extent, int);

extern int count_or_remove_death_notes (sbitmap, int);
extern int propagate_block (basic_block, regset, regset, regset, int);


struct propagate_block_info;
extern rtx propagate_one_insn (struct propagate_block_info *, rtx);
extern struct propagate_block_info *init_propagate_block_info
  (basic_block, regset, regset, regset, int);
extern void free_propagate_block_info (struct propagate_block_info *);


extern struct edge_list *pre_edge_lcm (FILE *, int, sbitmap *, sbitmap *, sbitmap *, sbitmap *, sbitmap **, sbitmap **);



extern struct edge_list *pre_edge_rev_lcm (FILE *, int, sbitmap *, sbitmap *, sbitmap *, sbitmap *, sbitmap **, sbitmap **);



extern void compute_available (sbitmap *, sbitmap *, sbitmap *, sbitmap *);

extern int optimize_mode_switching (FILE *);


extern rtx emit_block_insn_after (rtx, rtx, basic_block);
extern rtx emit_block_insn_before (rtx, rtx, basic_block);


extern void estimate_probability (struct loops *);
extern void note_prediction_to_br_prob (void);
extern void expected_value_to_br_prob (void);
extern void note_prediction_to_br_prob (void);
extern _Bool maybe_hot_bb_p (basic_block);
extern _Bool probably_cold_bb_p (basic_block);
extern _Bool probably_never_executed_bb_p (basic_block);


extern void init_flow (void);
extern void reorder_basic_blocks (void);
extern void dump_bb (basic_block, FILE *);
extern void debug_bb (basic_block);
extern void debug_bb_n (int);
extern void dump_regset (regset, FILE *);
extern void debug_regset (regset);
extern void allocate_reg_life_data (void);
extern void allocate_bb_life_data (void);
extern void expunge_block (basic_block);
extern void link_block (basic_block, basic_block);
extern void unlink_block (basic_block);
extern void compact_blocks (void);
extern basic_block alloc_block (void);
extern void find_unreachable_blocks (void);
extern int delete_noop_moves (rtx);
extern basic_block redirect_edge_and_branch_force (edge, basic_block);
extern basic_block force_nonfallthru (edge);
extern _Bool redirect_edge_and_branch (edge, basic_block);
extern rtx block_label (basic_block);
extern _Bool forwarder_block_p (basic_block);
extern _Bool purge_all_dead_edges (int);
extern _Bool purge_dead_edges (basic_block);
extern void find_sub_basic_blocks (basic_block);
extern void find_many_sub_basic_blocks (sbitmap);
extern _Bool can_fallthru (basic_block, basic_block);
extern void flow_nodes_print (const char *, const sbitmap, FILE *);

extern void flow_edge_list_print (const char *, const edge *, int, FILE *);

extern void alloc_aux_for_block (basic_block, int);
extern void alloc_aux_for_blocks (int);
extern void clear_aux_for_blocks (void);
extern void free_aux_for_blocks (void);
extern void alloc_aux_for_edge (edge, int);
extern void alloc_aux_for_edges (int);
extern void clear_aux_for_edges (void);
extern void free_aux_for_edges (void);




extern void verify_flow_info (void);
extern _Bool flow_loop_outside_edge_p (const struct loop *, edge);
extern _Bool flow_loop_nested_p (const struct loop *, const struct loop *);

extern _Bool flow_bb_inside_loop_p (const struct loop *, const basic_block);

extern basic_block *get_loop_body (const struct loop *);
extern int dfs_enumerate_from (basic_block, int, _Bool (*)(basic_block, void *), basic_block *, int, void *);



extern edge loop_preheader_edge (struct loop *);
extern edge loop_latch_edge (struct loop *);

extern void add_bb_to_loop (basic_block, struct loop *);
extern void remove_bb_from_loops (basic_block);
extern struct loop * find_common_loop (struct loop *, struct loop *);

extern void verify_loop_structure (struct loops *, int);



typedef struct conflict_graph_def *conflict_graph;




typedef int (*conflict_graph_enum_fn) (int, int, void *);




extern conflict_graph conflict_graph_new
                                        (int);
extern void conflict_graph_delete (conflict_graph);
extern int conflict_graph_add (conflict_graph, int, int);

extern int conflict_graph_conflict_p (conflict_graph, int, int);

extern void conflict_graph_enum (conflict_graph, int, conflict_graph_enum_fn, void *);


extern void conflict_graph_merge_regs (conflict_graph, int, int);

extern void conflict_graph_print (conflict_graph, FILE*);
extern conflict_graph conflict_graph_compute
                                        (regset, partition);

extern _Bool mark_dfs_back_edges (void);
extern void set_edge_can_fallthru_flag (void);
extern void update_br_prob_note (basic_block);
extern void fixup_abnormal_edges (void);
extern _Bool can_hoist_insn_p (rtx, rtx, regset);
extern rtx hoist_insn_after (rtx, rtx, rtx, rtx);
extern rtx hoist_insn_to_edge (rtx, edge, rtx, rtx);
extern _Bool control_flow_insn_p (rtx);



enum cdi_direction
{
  CDI_DOMINATORS,
  CDI_POST_DOMINATORS
};

extern dominance_info calculate_dominance_info (enum cdi_direction);
extern void free_dominance_info (dominance_info);
extern basic_block nearest_common_dominator (dominance_info, basic_block, basic_block);

extern void set_immediate_dominator (dominance_info, basic_block, basic_block);

extern basic_block get_immediate_dominator (dominance_info, basic_block);

extern _Bool dominated_by_p (dominance_info, basic_block, basic_block);
extern int get_dominated_by (dominance_info, basic_block, basic_block **);
extern void add_to_dominance_info (dominance_info, basic_block);
extern void delete_from_dominance_info (dominance_info, basic_block);
basic_block recount_dominator (dominance_info, basic_block);
extern void redirect_immediate_dominators (dominance_info, basic_block, basic_block);

void iterate_fix_dominators (dominance_info, basic_block *, int);
extern void verify_dominators (dominance_info);
# 69 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/intl.h" 1
# 29 "../../../kg++fe/gnu/intl.h"
# 1 "/usr/include/locale.h" 1 3 4
# 29 "/usr/include/locale.h" 3 4
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 30 "/usr/include/locale.h" 2 3 4
# 1 "/usr/include/bits/locale.h" 1 3 4
# 27 "/usr/include/bits/locale.h" 3 4
enum
{
  __LC_CTYPE = 0,
  __LC_NUMERIC = 1,
  __LC_TIME = 2,
  __LC_COLLATE = 3,
  __LC_MONETARY = 4,
  __LC_MESSAGES = 5,
  __LC_ALL = 6,
  __LC_PAPER = 7,
  __LC_NAME = 8,
  __LC_ADDRESS = 9,
  __LC_TELEPHONE = 10,
  __LC_MEASUREMENT = 11,
  __LC_IDENTIFICATION = 12
};
# 31 "/usr/include/locale.h" 2 3 4


# 52 "/usr/include/locale.h" 3 4
struct lconv
{


  char *decimal_point;
  char *thousands_sep;





  char *grouping;





  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;

  char p_cs_precedes;

  char p_sep_by_space;

  char n_cs_precedes;

  char n_sep_by_space;






  char p_sign_posn;
  char n_sign_posn;


  char int_p_cs_precedes;

  char int_p_sep_by_space;

  char int_n_cs_precedes;

  char int_n_sep_by_space;






  char int_p_sign_posn;
  char int_n_sign_posn;
# 119 "/usr/include/locale.h" 3 4
};





extern char *setlocale (int __category, __const char *__locale) __attribute__ ((__nothrow__));


extern struct lconv *localeconv (void) __attribute__ ((__nothrow__));


# 148 "/usr/include/locale.h" 3 4
typedef __locale_t locale_t;





extern __locale_t newlocale (int __category_mask, __const char *__locale,
        __locale_t __base) __attribute__ ((__nothrow__));
# 189 "/usr/include/locale.h" 3 4
extern __locale_t duplocale (__locale_t __dataset) __attribute__ ((__nothrow__));



extern void freelocale (__locale_t __dataset) __attribute__ ((__nothrow__));






extern __locale_t uselocale (__locale_t __dataset) __attribute__ ((__nothrow__));








# 30 "../../../kg++fe/gnu/intl.h" 2
# 70 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/ggc.h" 1
# 26 "../../../kg++fe/gnu/ggc.h"
# 1 "../../../kg++fe/gnu/MIPS/gtype-desc.h" 1
# 24 "../../../kg++fe/gnu/MIPS/gtype-desc.h"
enum gt_types_enum {
 gt_ggc_e_13binding_level,
 gt_ggc_e_11align_stack,
 gt_ggc_e_4feed,
 gt_ggc_e_11token_chunk,
 gt_ggc_e_13unparsed_text,
 gt_ggc_e_16named_label_list,
 gt_ggc_e_20named_label_use_list,
 gt_ggc_e_11saved_scope,
 gt_ggc_e_11z_candidate,
 gt_ggc_e_8lang_id2,
 gt_ggc_e_15binding_entry_s,
 gt_ggc_e_15binding_table_s,
 gt_ggc_e_16cp_binding_level,
 gt_ggc_e_11cxx_binding,
 gt_ggc_e_17cxx_saved_binding,
 gt_ggc_e_15deferred_string,
 gt_ggc_e_24constant_descriptor_tree,
 gt_ggc_e_13pool_constant,
 gt_ggc_e_23constant_descriptor_rtx,
 gt_ggc_e_9type_hash,
 gt_ggc_e_10goto_fixup,
 gt_ggc_e_11label_chain,
 gt_ggc_e_7nesting,
 gt_ggc_e_9case_node,
 gt_ggc_e_9eh_region,
 gt_ggc_e_13ehl_map_entry,
 gt_ggc_e_12elt_loc_list,
 gt_ggc_e_17cselib_val_struct,
 gt_ggc_e_15varray_head_tag,
 gt_ggc_e_8elt_list,
 gt_ggc_e_12reg_info_def,
 gt_ggc_e_14lang_tree_node,
 gt_ggc_e_9lang_decl,
 gt_ggc_e_9lang_type,
 gt_ggc_e_10die_struct,
 gt_ggc_e_10real_value,
 gt_ggc_e_5optab,
 gt_ggc_e_15basic_block_def,
 gt_ggc_e_9mem_attrs,
 gt_ggc_e_17language_function,
 gt_ggc_e_16machine_function,
 gt_ggc_e_9temp_slot,
 gt_ggc_e_20initial_value_struct,
 gt_ggc_e_13varasm_status,
 gt_ggc_e_11stmt_status,
 gt_ggc_e_9eh_status,
 gt_ggc_e_8function,
 gt_ggc_e_11expr_status,
 gt_ggc_e_11emit_status,
 gt_ggc_e_14sequence_stack,
 gt_ggc_e_14var_refs_queue,
 gt_ggc_e_15bitmap_head_def,
 gt_ggc_e_18bitmap_element_def,
 gt_ggc_e_9tree_node,
 gt_ggc_e_9rtvec_def,
 gt_ggc_e_7rtx_def,
 gt_e_P15deferred_string4htab,
 gt_e_P9type_hash4htab,
 gt_e_P13ehl_map_entry4htab,
 gt_e_P9tree_node4htab,
 gt_e_P9mem_attrs4htab,
 gt_e_P7rtx_def4htab,
 gt_e_P17cselib_val_struct4htab,
 gt_types_enum_last
};





extern void gt_ggc_mx_binding_level (void *);



extern void gt_ggc_mx_align_stack (void *);



extern void gt_ggc_mx_feed (void *);



extern void gt_ggc_mx_token_chunk (void *);



extern void gt_ggc_mx_unparsed_text (void *);



extern void gt_ggc_mx_named_label_list (void *);



extern void gt_ggc_mx_named_label_use_list (void *);



extern void gt_ggc_mx_saved_scope (void *);



extern void gt_ggc_mx_z_candidate (void *);



extern void gt_ggc_mx_lang_id2 (void *);



extern void gt_ggc_mx_binding_entry_s (void *);



extern void gt_ggc_mx_binding_table_s (void *);



extern void gt_ggc_mx_cp_binding_level (void *);



extern void gt_ggc_mx_cxx_binding (void *);



extern void gt_ggc_mx_cxx_saved_binding (void *);



extern void gt_ggc_mx_deferred_string (void *);



extern void gt_ggc_mx_constant_descriptor_tree (void *);



extern void gt_ggc_mx_pool_constant (void *);



extern void gt_ggc_mx_constant_descriptor_rtx (void *);



extern void gt_ggc_mx_type_hash (void *);



extern void gt_ggc_mx_goto_fixup (void *);



extern void gt_ggc_mx_label_chain (void *);



extern void gt_ggc_mx_nesting (void *);



extern void gt_ggc_mx_case_node (void *);



extern void gt_ggc_mx_eh_region (void *);



extern void gt_ggc_mx_ehl_map_entry (void *);



extern void gt_ggc_mx_elt_loc_list (void *);



extern void gt_ggc_mx_cselib_val_struct (void *);



extern void gt_ggc_mx_varray_head_tag (void *);



extern void gt_ggc_mx_elt_list (void *);



extern void gt_ggc_mx_reg_info_def (void *);



extern void gt_ggc_mx_lang_tree_node (void *);



extern void gt_ggc_mx_lang_decl (void *);



extern void gt_ggc_mx_lang_type (void *);



extern void gt_ggc_mx_die_struct (void *);



extern void gt_ggc_mx_real_value (void *);



extern void gt_ggc_mx_optab (void *);



extern void gt_ggc_mx_basic_block_def (void *);



extern void gt_ggc_mx_mem_attrs (void *);



extern void gt_ggc_mx_language_function (void *);



extern void gt_ggc_mx_machine_function (void *);



extern void gt_ggc_mx_temp_slot (void *);



extern void gt_ggc_mx_initial_value_struct (void *);



extern void gt_ggc_mx_varasm_status (void *);



extern void gt_ggc_mx_stmt_status (void *);



extern void gt_ggc_mx_eh_status (void *);



extern void gt_ggc_mx_function (void *);



extern void gt_ggc_mx_expr_status (void *);



extern void gt_ggc_mx_emit_status (void *);



extern void gt_ggc_mx_sequence_stack (void *);



extern void gt_ggc_mx_var_refs_queue (void *);



extern void gt_ggc_mx_bitmap_head_def (void *);



extern void gt_ggc_mx_bitmap_element_def (void *);







extern void gt_ggc_mx_rtvec_def (void *);



extern void gt_ggc_mx_rtx_def (void *);
extern void gt_ggc_m_P15deferred_string4htab (void *);
extern void gt_ggc_m_P9type_hash4htab (void *);
extern void gt_ggc_m_P13ehl_map_entry4htab (void *);
extern void gt_ggc_m_P9tree_node4htab (void *);
extern void gt_ggc_m_P9mem_attrs4htab (void *);
extern void gt_ggc_m_P7rtx_def4htab (void *);
extern void gt_ggc_m_P17cselib_val_struct4htab (void *);
# 27 "../../../kg++fe/gnu/ggc.h" 2
# 35 "../../../kg++fe/gnu/ggc.h"
extern int ggc_p;



extern const char empty_string[];
extern const char digit_vector[];




extern void ggc_add_root (void *base, int nelt, int size, void (*)(void *));




struct ggc_root_tab {
  void *base;
  size_t nelt;
  size_t stride;
  void (*cb) (void *);
};


extern const struct ggc_root_tab * const gt_ggc_rtab[];
extern const struct ggc_root_tab * const gt_ggc_deletable_rtab[];


struct htab;
struct ggc_cache_tab {
  struct htab * *base;
  size_t nelt;
  size_t stride;
  void (*cb) (void *);
  int (*marked_p) (const void *);
};


extern const struct ggc_cache_tab * const gt_ggc_cache_rtab[];

extern void ggc_mark_roots (void);
# 94 "../../../kg++fe/gnu/ggc.h"
extern void init_ggc (void);
extern void init_stringpool (void);



extern void ggc_push_context (void);



extern void ggc_pop_context (void);




extern void *ggc_alloc (size_t);

extern void *ggc_alloc_cleared (size_t);

extern void *ggc_realloc (void *, size_t);

extern void *ggc_calloc (size_t, size_t);
# 132 "../../../kg++fe/gnu/ggc.h"
extern const char *ggc_alloc_string (const char *contents, int length);







extern void ggc_collect (void);






extern int ggc_set_mark (const void *);




extern int ggc_marked_p (const void *);





typedef struct ggc_statistics
{

  unsigned num_trees[256];


  size_t size_trees[256];

  unsigned num_rtxs[256];


  size_t size_rtxs[256];

  size_t total_size_trees;

  size_t total_size_rtxs;

  unsigned total_num_trees;

  unsigned total_num_rtxs;
} ggc_statistics;


extern size_t ggc_get_size (const void *);



extern void ggc_print_common_statistics (FILE *, ggc_statistics *);


extern void ggc_print_statistics (void);
extern void stringpool_statistics (void);


extern int ggc_min_expand_heuristic (void);
extern int ggc_min_heapsize_heuristic (void);
extern void init_ggc_heuristics (void);
# 71 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/graph.h" 1
# 24 "../../../kg++fe/gnu/graph.h"
extern void print_rtl_graph_with_bb (const char *, const char *, rtx);
extern void clean_graph_dump_file (const char *, const char *);
extern void finish_graph_dump_file (const char *, const char *);
# 72 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/loop.h" 1
# 66 "../../../kg++fe/gnu/loop.h"
enum g_types
{
  DEST_ADDR,
  DEST_REG
};





struct induction
{
  rtx insn;
  rtx new_reg;

  rtx src_reg;

  enum g_types giv_type;
  rtx dest_reg;



  rtx *location;



  enum machine_mode mode;
  rtx mem;
  rtx mult_val;
  rtx add_val;
  int benefit;
  rtx final_value;



  unsigned combined_with;


  unsigned replaceable : 1;




  unsigned not_replaceable : 1;





  unsigned ignore : 1;
  unsigned always_computable : 1;

  unsigned always_executed : 1;
  unsigned maybe_multiple : 1;


  unsigned cant_derive : 1;



  unsigned maybe_dead : 1;


  unsigned auto_inc_opt : 1;

  unsigned unrolled : 1;

  unsigned shared : 1;
  unsigned no_const_addval : 1;
  int lifetime;
  rtx derive_adjustment;



  rtx ext_dependent;

  struct induction *next_iv;



  struct induction *same;


  long long const_adjust;



  struct induction *same_insn;



  rtx last_use;

};




struct iv_class
{
  unsigned int regno;
  int biv_count;
  struct induction *biv;
  int giv_count;


  struct induction *giv;

  int total_benefit;
  rtx initial_value;
  rtx initial_test;
  rtx final_value;
  struct iv_class *next;
  rtx init_insn;
  rtx init_set;
  unsigned incremented : 1;
  unsigned eliminable : 1;

  unsigned nonneg : 1;

  unsigned reversed : 1;

  unsigned all_reduced : 1;

};



enum iv_mode
{
  UNKNOWN_INDUCT,
  BASIC_INDUCT,
  NOT_BASIC_INDUCT,
  GENERAL_INDUCT
};




struct iv
{
  enum iv_mode type;
  union
  {
    struct iv_class *class;
    struct induction *info;
  } iv;
};







struct loop_ivs
{


  struct iv *regs;


  unsigned int n_regs;



  struct iv_class *list;
};


typedef struct loop_mem_info
{
  rtx mem;
  rtx reg;
  int optimize;
} loop_mem_info;



struct loop_reg
{
# 257 "../../../kg++fe/gnu/loop.h"
  int set_in_loop;




  int n_times_set;



  rtx single_usage;



  char may_not_optimize;



  char moved_once;
};


struct loop_regs
{
  int num;
  int size;
  struct loop_reg *array;
  int multiple_uses;
};



struct loop_movables
{

  struct movable *head;

  struct movable *last;
};




struct loop_info
{

  int has_call;

  int has_libcall;

  int has_nonconst_call;

  int has_prefetch;


  int has_volatile;

  int has_tablejump;


  int has_multiple_exit_targets;

  int has_indirect_jump;


  int preconditioned;

  rtx initial_value;

  rtx comparison_value;

  rtx final_value;


  rtx initial_equiv_value;


  rtx final_equiv_value;

  rtx iteration_var;

  rtx increment;
  enum rtx_code comparison_code;





  unsigned long long n_iterations;

  unsigned int unroll_number;
  int used_count_register;

  struct iv_class *iv;

  rtx store_mems;





  loop_mem_info *mems;

  int mems_idx;

  int mems_allocated;




  int unknown_address_altered;


  int unknown_constant_address_altered;

  int num_mem_sets;

  rtx first_loop_store_insn;

  struct loop_movables movables;

  struct loop_regs regs;

  struct loop_ivs ivs;

  int pre_header_has_call;
};




extern int *uid_luid;
extern int max_uid_for_loop;
extern unsigned int max_reg_before_loop;
extern struct loop **uid_loop;
extern FILE *loop_dump_stream;




int loop_invariant_p (const struct loop *, rtx);
rtx get_condition_for_loop (const struct loop *, rtx);
void loop_iv_add_mult_hoist (const struct loop *, rtx, rtx, rtx, rtx);
void loop_iv_add_mult_sink (const struct loop *, rtx, rtx, rtx, rtx);
void loop_iv_add_mult_emit_before (const struct loop *, rtx, rtx, rtx, rtx, basic_block, rtx);


rtx express_from (struct induction *, struct induction *);
rtx extend_value_for_giv (struct induction *, rtx);

void unroll_loop (struct loop *, int, int);
rtx biv_total_increment (const struct iv_class *);
unsigned long long loop_iterations (struct loop *);
int precondition_loop_p (const struct loop *, rtx *, rtx *, rtx *, enum machine_mode *mode);


rtx final_biv_value (const struct loop *, struct iv_class *);
rtx final_giv_value (const struct loop *, struct induction *);
void emit_unrolled_add (rtx, rtx, rtx);
int back_branch_in_range_p (const struct loop *, rtx);

int loop_insn_first_p (rtx, rtx);
typedef rtx (*loop_insn_callback) (struct loop *, rtx, int, int);
void for_each_insn_in_loop (struct loop *, loop_insn_callback);
rtx loop_insn_emit_before (const struct loop *, basic_block, rtx, rtx);

rtx loop_insn_sink (const struct loop *, rtx);
rtx loop_insn_hoist (const struct loop *, rtx);


int doloop_optimize (const struct loop *);
# 73 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/regs.h" 1
# 44 "../../../kg++fe/gnu/regs.h"
extern int max_regno;


typedef struct reg_info_def
{
  int first_uid;
  int last_uid;
  int last_note_uid;


  int sets;


  int refs;
  int freq;
  int deaths;
  int live_length;
  int calls_crossed;
  int basic_block;
  char changes_mode;

} reg_info;

extern varray_type reg_n_info;

extern bitmap_head subregs_of_mode;
# 154 "../../../kg++fe/gnu/regs.h"
extern short *reg_renumber;




extern char regs_ever_live[176];



extern const char * reg_names[176];






extern enum machine_mode reg_raw_mode[176];
# 193 "../../../kg++fe/gnu/regs.h"
extern rtx regs_may_share;




extern int caller_save_needed;
# 227 "../../../kg++fe/gnu/regs.h"
extern void allocate_reg_info (size_t, int, int);
# 74 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/timevar.h" 1
# 53 "../../../kg++fe/gnu/timevar.h"
struct timevar_time_def
{

  float user;



  float sys;


  float wall;
};






typedef enum
{
# 1 "../../../kg++fe/gnu/timevar.def" 1
# 34 "../../../kg++fe/gnu/timevar.def"
TV_TOTAL,


TV_GC,


TV_DUMP,


TV_CFG,

TV_CLEANUP_CFG,
TV_DELETE_TRIVIALLY_DEAD,

TV_LIFE,
TV_LIFE_UPDATE,

TV_CPP,
TV_LEX,
TV_PARSE,
TV_NAME_LOOKUP,
TV_OVERLOAD,
TV_TEMPLATE_INSTANTIATION,
TV_EXPAND,
TV_VARCONST,
TV_INTEGRATION,
TV_JUMP,
TV_CSE,
TV_GCSE,
TV_LOOP,
TV_TRACER,
TV_CSE2,
TV_BRANCH_PROB,
TV_FLOW,
TV_COMBINE,
TV_IFCVT,
TV_REGMOVE,
TV_MODE_SWITCH,
TV_SCHED,
TV_LOCAL_ALLOC,
TV_GLOBAL_ALLOC,
TV_RELOAD_CSE_REGS,
TV_FLOW2,
TV_IFCVT2,
TV_PEEPHOLE2,
TV_RENAME_REGISTERS,
TV_SCHED2,
TV_MACH_DEP,
TV_DBR_SCHED,
TV_REORDER_BLOCKS,
TV_SHORTEN_BRANCH,
TV_REG_STACK,
TV_TO_SSA,
TV_SSA_CCP,
TV_SSA_DCE,
TV_FROM_SSA,
TV_FINAL,
TV_SYMOUT,


TV_REST_OF_COMPILATION,
# 74 "../../../kg++fe/gnu/timevar.h" 2
  TIMEVAR_LAST
}
timevar_id_t;





extern void init_timevar (void);
extern void timevar_push (timevar_id_t);
extern void timevar_pop (timevar_id_t);
extern void timevar_start (timevar_id_t);
extern void timevar_stop (timevar_id_t);
extern void timevar_get (timevar_id_t, struct timevar_time_def *);
extern void timevar_print (FILE *);


extern long get_run_time (void);
extern void print_time (const char *, long);
# 75 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/diagnostic.h" 1
# 30 "../../../kg++fe/gnu/diagnostic.h"
typedef struct
{
  const char *format_spec;
  va_list *args_ptr;
} text_info;


typedef enum
{

# 1 "../../../kg++fe/gnu/diagnostic.def" 1
DK_FATAL,
DK_ICE,
DK_SORRY,
DK_ERROR,
DK_WARNING,
DK_ANACHRONISM,
DK_NOTE,
DK_DEBUG,
# 41 "../../../kg++fe/gnu/diagnostic.h" 2

  DK_LAST_DIAGNOSTIC_KIND
} diagnostic_t;




typedef struct
{
  text_info message;
  location_t location;

  diagnostic_t kind;
} diagnostic_info;
# 63 "../../../kg++fe/gnu/diagnostic.h"
typedef enum
{
  DIAGNOSTICS_SHOW_PREFIX_ONCE = 0x0,
  DIAGNOSTICS_SHOW_PREFIX_NEVER = 0x1,
  DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE = 0x2
} diagnostic_prefixing_rule_t;


typedef struct
{

  const char *prefix;



  int maximum_length;



  int ideal_maximum_length;


  int indent_skip;


  _Bool emitted_prefix_p;


  _Bool need_newline_p;


  diagnostic_prefixing_rule_t prefixing_rule;
} output_state;




typedef struct output_buffer output_buffer;
typedef _Bool (*printer_fn) (output_buffer *, text_info *);



struct output_buffer
{

  output_state state;


  FILE* stream;


  struct obstack obstack;


  int line_length;



  char digit_buffer[128];
# 131 "../../../kg++fe/gnu/diagnostic.h"
  printer_fn format_decoder;
} ;
# 172 "../../../kg++fe/gnu/diagnostic.h"
typedef struct diagnostic_context diagnostic_context;
typedef void (*diagnostic_starter_fn) (diagnostic_context *, diagnostic_info *);

typedef diagnostic_starter_fn diagnostic_finalizer_fn;



struct diagnostic_context
{



  output_buffer buffer;


  int diagnostic_count[DK_LAST_DIAGNOSTIC_KIND];



  _Bool warnings_are_errors_message;
# 200 "../../../kg++fe/gnu/diagnostic.h"
  diagnostic_starter_fn begin_diagnostic;


  diagnostic_finalizer_fn end_diagnostic;


  void (*internal_error) (const char *, va_list *);




  tree last_function;


  int last_module;

  int lock;


  void *x_data;
};
# 265 "../../../kg++fe/gnu/diagnostic.h"
extern diagnostic_context *global_dc;
# 286 "../../../kg++fe/gnu/diagnostic.h"
extern void diagnostic_initialize (diagnostic_context *);
extern void diagnostic_report_current_module (diagnostic_context *);
extern void diagnostic_report_current_function (diagnostic_context *);
extern void diagnostic_flush_buffer (diagnostic_context *);
extern _Bool diagnostic_count_diagnostic (diagnostic_context *, diagnostic_t);

extern void diagnostic_report_diagnostic (diagnostic_context *, diagnostic_info *);

extern void diagnostic_set_info (diagnostic_info *, const char *, va_list *, const char *, int, diagnostic_t);



extern char *diagnostic_build_prefix (diagnostic_info *);


extern void init_output_buffer (output_buffer *, const char *, int);

extern void output_clear (output_buffer *);
extern const char *output_last_position (const output_buffer *);
extern void output_set_prefix (output_buffer *, const char *);

extern void output_destroy_prefix (output_buffer *);
extern void output_set_maximum_length (output_buffer *, int);
extern void output_emit_prefix (output_buffer *);
extern void output_add_newline (output_buffer *);
extern void output_add_space (output_buffer *);
extern int output_space_left (const output_buffer *);
extern void output_append (output_buffer *, const char *, const char *);

extern void output_add_character (output_buffer *, int);
extern void output_decimal (output_buffer *, int);
extern void output_add_string (output_buffer *, const char *);

extern void output_add_identifier (output_buffer *, tree);
extern const char *output_finalize_message (output_buffer *);
extern void output_clear_message_text (output_buffer *);
extern void output_printf (output_buffer *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__nonnull__ (2)));

extern void output_verbatim (output_buffer *, const char *, ...);

extern void verbatim (const char *, ...);
extern char *file_name_as_prefix (const char *);
extern void inform (const char *, ...);
# 76 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/ssa.h" 1
# 24 "../../../kg++fe/gnu/ssa.h"
extern void convert_to_ssa (void);
extern void convert_from_ssa (void);
typedef int (*successor_phi_fn) (rtx, int, int, void *);
extern int for_each_successor_phi (basic_block bb, successor_phi_fn, void *);


void compute_dominance_frontiers (sbitmap *frontiers, dominance_info idom);

extern int remove_phi_alternative (rtx, basic_block);




extern void ssa_eliminate_dead_code (void);


extern void ssa_const_prop (void);




extern int in_ssa_form;


extern varray_type ssa_definition;


extern varray_type ssa_uses;
# 77 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/params.h" 1
# 44 "../../../kg++fe/gnu/params.h"
typedef struct param_info
{


  const char *const option;

  int value;

  const char *const help;
} param_info;




extern param_info *compiler_params;



extern void add_params
  (const param_info params[], size_t n);



extern void set_param_value
  (const char *name, int value);




typedef enum compiler_param
{


# 1 "../../../kg++fe/gnu/params.def" 1
# 51 "../../../kg++fe/gnu/params.def"
PARAM_MAX_INLINE_INSNS_SINGLE,
# 63 "../../../kg++fe/gnu/params.def"
PARAM_MAX_INLINE_INSNS_AUTO,
# 82 "../../../kg++fe/gnu/params.def"
PARAM_MAX_INLINE_INSNS,
# 95 "../../../kg++fe/gnu/params.def"
PARAM_MAX_INLINE_SLOPE,
# 108 "../../../kg++fe/gnu/params.def"
PARAM_MIN_INLINE_INSNS,
# 118 "../../../kg++fe/gnu/params.def"
PARAM_MAX_INLINE_INSNS_RTL,
# 129 "../../../kg++fe/gnu/params.def"
PARAM_MAX_DELAY_SLOT_INSN_SEARCH,
# 140 "../../../kg++fe/gnu/params.def"
PARAM_MAX_DELAY_SLOT_LIVE_SEARCH,
# 150 "../../../kg++fe/gnu/params.def"
PARAM_MAX_PENDING_LIST_LENGTH,






PARAM_MAX_GCSE_MEMORY,




PARAM_MAX_GCSE_PASSES,






PARAM_MAX_UNROLLED_INSNS,




HOT_BB_COUNT_FRACTION,




HOT_BB_FREQUENCY_FRACTION,




TRACER_DYNAMIC_COVERAGE_FEEDBACK,




TRACER_DYNAMIC_COVERAGE,




TRACER_MAX_CODE_GROWTH,



TRACER_MIN_BRANCH_RATIO,




TRACER_MIN_BRANCH_PROBABILITY_FEEDBACK,




TRACER_MIN_BRANCH_PROBABILITY,






PARAM_MAX_CROSSJUMP_EDGES,
# 228 "../../../kg++fe/gnu/params.def"
GGC_MIN_EXPAND,





GGC_MIN_HEAPSIZE,
# 78 "../../../kg++fe/gnu/params.h" 2

  LAST_PARAM
} compiler_param;
# 78 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/reload.h" 1
# 47 "../../../kg++fe/gnu/reload.h"
extern int memory_move_secondary_cost (enum machine_mode, enum reg_class, int);
# 76 "../../../kg++fe/gnu/reload.h"
enum reload_type
{
  RELOAD_FOR_INPUT, RELOAD_FOR_OUTPUT, RELOAD_FOR_INSN,
  RELOAD_FOR_INPUT_ADDRESS, RELOAD_FOR_INPADDR_ADDRESS,
  RELOAD_FOR_OUTPUT_ADDRESS, RELOAD_FOR_OUTADDR_ADDRESS,
  RELOAD_FOR_OPERAND_ADDRESS, RELOAD_FOR_OPADDR_ADDR,
  RELOAD_OTHER, RELOAD_FOR_OTHER_ADDRESS
};
# 167 "../../../kg++fe/gnu/reload.h"
extern rtx *reg_equiv_constant;
extern rtx *reg_equiv_memory_loc;
extern rtx *reg_equiv_address;
extern rtx *reg_equiv_mem;



extern int n_earlyclobbers;
extern rtx reload_earlyclobbers[30];


extern int reload_n_operands;



extern int reload_first_uid;





extern char indirect_symref_ok;


extern char double_reg_address_ok;

extern int num_not_at_initial_offset;

struct needs
{

  short regs[2][(int) LIM_REG_CLASSES];
  short groups[(int) LIM_REG_CLASSES];
};





struct insn_chain
{

  struct insn_chain *next, *prev;



  struct insn_chain *next_need_reload;


  int block;

  rtx insn;


  regset_head live_throughout;
  regset_head dead_or_set;


  struct reload *rld;
  int n_reloads;


  HARD_REG_SET used_spill_regs;


  struct needs need;


  unsigned int need_reload:1;


  unsigned int need_operand_change:1;

  unsigned int need_elim:1;

  unsigned int is_caller_save_insn:1;
};



extern struct insn_chain *reload_insn_chain;


extern struct insn_chain *new_insn_chain (void);

extern void compute_use_by_pseudos (HARD_REG_SET *, regset);







extern rtx get_secondary_mem (rtx, enum machine_mode, int, enum reload_type);



extern void clear_secondary_mem (void);



extern void transfer_replacements (int, int);





extern int remove_address_replacements (rtx in_rtx);




extern int operands_match_p (rtx, rtx);


extern int safe_from_earlyclobber (rtx, rtx);




extern int find_reloads (rtx, int, int, int, short *);





extern rtx form_sum (rtx, rtx);



extern void subst_reloads (rtx);




extern void copy_replacements (rtx, rtx);


extern void move_replacements (rtx *x, rtx *y);



extern rtx find_replacement (rtx *);




extern int refers_to_regno_for_reload_p (unsigned int, unsigned int, rtx, rtx *);



extern int reg_overlap_mentioned_for_reload_p (rtx, rtx);



extern int refers_to_mem_for_reload_p (rtx);



extern rtx find_equiv_reg (rtx, rtx, enum reg_class, int, short *, int, enum machine_mode);



extern int regno_clobbered_p (unsigned int, rtx, enum machine_mode, int);



extern int earlyclobber_operand_p (rtx);


extern int push_reload (rtx, rtx, rtx *, rtx *, enum reg_class, enum machine_mode, enum machine_mode, int, int, int, enum reload_type);





extern void reload_cse_regs (rtx);
extern int reloads_conflict (int, int);


extern void init_reload (void);


extern int reload (rtx, int);



extern void mark_home_live (int);



extern rtx eliminate_regs (rtx, enum machine_mode, rtx);




extern rtx gen_reload (rtx, rtx, int, enum reload_type);


extern void deallocate_reload_reg (int r);




extern void init_caller_save (void);


extern void init_save_areas (void);


extern void setup_save_areas (void);


extern void save_call_clobbered_regs (void);


extern void cleanup_subreg_operands (rtx);


extern void debug_reload_to_stream (FILE *);
extern void debug_reload (void);
# 79 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/dwarf2asm.h" 1
# 22 "../../../kg++fe/gnu/dwarf2asm.h"
extern void dw2_assemble_integer (int, rtx);

extern void dw2_asm_output_data (int, unsigned long long, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_delta (int, const char *, const char *, const char *, ...)


     __attribute__ ((__format__ (__printf__, 4, 5)));

extern void dw2_asm_output_offset (int, const char *, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_pcrel (int, const char *, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_addr (int, const char *, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_addr_rtx (int, rtx, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_encoded_addr_rtx (int, rtx, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_nstring (const char *, size_t, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_data_uleb128 (unsigned long long, const char *, ...)

     __attribute__ ((__format__ (__printf__, 2, 3)));

extern void dw2_asm_output_data_sleb128 (long long, const char *, ...)

     __attribute__ ((__format__ (__printf__, 2, 3)));

extern void dw2_asm_output_delta_uleb128 (const char *, const char *, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern void dw2_asm_output_delta_sleb128 (const char *, const char *, const char *, ...)

     __attribute__ ((__format__ (__printf__, 3, 4)));

extern int size_of_uleb128 (unsigned long long);
extern int size_of_sleb128 (long long);
extern int size_of_encoded_value (int);
extern const char *eh_data_format_name (int);

extern void dw2_output_indirect_constants (void);
# 80 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/integrate.h" 1
# 35 "../../../kg++fe/gnu/integrate.h"
struct inline_remap
{



  int integrating;

  union tree_node *fndecl;

  rtx insns_at_start;

  varray_type block_map;


  rtx *reg_map;






  rtx *label_map;





  rtx *insn_map;
  int min_insnno, max_insnno;
# 78 "../../../kg++fe/gnu/integrate.h"
  varray_type const_equiv_varray;






  unsigned int const_age;


  rtx inline_target;



  rtvec orig_asm_operands_vector;



  rtvec copy_asm_operands_vector;

  rtvec copy_asm_constraints_vector;


  rtx local_return_label;


  unsigned char *regno_pointer_align;
  rtx *x_regno_reg_rtx;



  int num_sets;
  struct equiv_table
    {
      rtx dest;
      rtx equiv;
    } equiv_sets[30];


  rtx last_pc_value;






  rtx compare_src;
  enum machine_mode compare_mode;
};



extern rtx copy_rtx_and_substitute (rtx, struct inline_remap *, int);




extern rtx get_hard_reg_initial_val (enum machine_mode, int);


extern rtx get_func_hard_reg_initial_val (struct function *, rtx);

extern rtx has_func_hard_reg_initial_val (struct function *, rtx);

extern rtx has_hard_reg_initial_val (enum machine_mode, int);


extern rtx get_hard_reg_initial_reg (struct function *, rtx);

extern void emit_initial_value_sets (void);
extern void allocate_initial_values (rtx *);



extern union tree_node *copy_decl_for_inlining (union tree_node *, union tree_node *, union tree_node *);






extern _Bool function_attribute_inlinable_p (union tree_node *);

extern void try_constants (rtx, struct inline_remap *);


extern rtx get_label_from_map (struct inline_remap *, int);
# 173 "../../../kg++fe/gnu/integrate.h"
extern varray_type global_const_equiv_varray;
# 81 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/real.h" 1
# 29 "../../../kg++fe/gnu/real.h"
# 1 "../../../kg++fe/gnu/machmode.h" 1
# 30 "../../../kg++fe/gnu/real.h" 2




enum real_value_class {
  rvc_zero,
  rvc_normal,
  rvc_inf,
  rvc_nan
};







struct real_value
{




  enum real_value_class class : 2;

  unsigned int sign : 1;
  signed int exp : (32 - 3);
  unsigned long sig[((128 + (8 * 4)) / (8 * 4))];
};
# 75 "../../../kg++fe/gnu/real.h"
extern char test_real_width
  [sizeof(struct real_value) <= (((128 + (8 * 4)) + 32)/(8 * 8) + (((128 + (8 * 4)) + 32)%(8 * 8) ? 1 : 0))*sizeof(long long) ? 1 : -1];
# 113 "../../../kg++fe/gnu/real.h"
struct real_format
{

  void (*encode) (const struct real_format *, long *, const struct real_value *);

  void (*decode) (const struct real_format *, struct real_value *, const long *);



  int b;


  int log2_b;


  int p;


  int emin;


  int emax;


  _Bool has_nans;
  _Bool has_inf;
  _Bool has_denorm;
  _Bool has_signed_zero;
  _Bool qnan_msb_set;
};




extern const struct real_format *real_format_for_mode[TFmode - QFmode + 1];





extern void real_arithmetic (struct real_value *, int, const struct real_value *, const struct real_value *);




extern _Bool real_compare (int, const struct real_value *, const struct real_value *);



extern _Bool real_isinf (const struct real_value *);


extern _Bool real_isnan (const struct real_value *);


extern _Bool real_isneg (const struct real_value *);


extern _Bool real_isnegzero (const struct real_value *);


extern _Bool real_identical (const struct real_value *, const struct real_value *);



extern void real_convert (struct real_value *, enum machine_mode, const struct real_value *);




extern _Bool exact_real_truncate (enum machine_mode, const struct real_value *);



extern void real_to_decimal (char *, const struct real_value *, size_t, size_t, int);



extern void real_to_hexadecimal (char *, const struct real_value *, size_t, size_t, int);



extern long long real_to_integer (const struct real_value *);
extern void real_to_integer2 (long long *, long long *, const struct real_value *);



extern void real_from_string (struct real_value *, const char *);


extern void real_from_integer (struct real_value *, enum machine_mode, unsigned long long, long long, int);




extern long real_to_target_fmt (long *, const struct real_value *, const struct real_format *);

extern long real_to_target (long *, const struct real_value *, enum machine_mode);


extern void real_from_target_fmt (struct real_value *, const long *, const struct real_format *);

extern void real_from_target (struct real_value *, const long *, enum machine_mode);


extern void real_inf (struct real_value *);

extern _Bool real_nan (struct real_value *, const char *, int, enum machine_mode);


extern void real_2expN (struct real_value *, int);

extern unsigned int real_hash (const struct real_value *);



extern const struct real_format ieee_single_format;
extern const struct real_format ieee_double_format;
extern const struct real_format ieee_extended_motorola_format;
extern const struct real_format ieee_extended_intel_96_format;
extern const struct real_format ieee_extended_intel_96_round_53_format;
extern const struct real_format ieee_extended_intel_128_format;
extern const struct real_format ibm_extended_format;
extern const struct real_format ieee_quad_format;
extern const struct real_format vax_f_format;
extern const struct real_format vax_d_format;
extern const struct real_format vax_g_format;
extern const struct real_format i370_single_format;
extern const struct real_format i370_double_format;
extern const struct real_format c4x_single_format;
extern const struct real_format c4x_extended_format;
extern const struct real_format real_internal_format;
# 287 "../../../kg++fe/gnu/real.h"
extern struct real_value real_value_truncate (enum machine_mode, struct real_value);





extern struct real_value real_arithmetic2 (int, const struct real_value *, const struct real_value *);
# 302 "../../../kg++fe/gnu/real.h"
extern int significand_size (enum machine_mode);

extern struct real_value real_from_string2 (const char *, enum machine_mode);
# 323 "../../../kg++fe/gnu/real.h"
extern int real_exponent (const struct real_value *);


extern void real_ldexp (struct real_value *, const struct real_value *, int);






extern struct real_value dconst0;
extern struct real_value dconst1;
extern struct real_value dconst2;
extern struct real_value dconstm1;



struct real_value real_value_from_int_cst (union tree_node *, union tree_node *);
# 350 "../../../kg++fe/gnu/real.h"
extern rtx const_double_from_real_value (struct real_value, enum machine_mode);



extern _Bool exact_real_inverse (enum machine_mode, struct real_value *);


extern tree build_real (tree, struct real_value);
# 82 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/debug.h" 1
# 24 "../../../kg++fe/gnu/debug.h"
struct gcc_debug_hooks
{


  void (* init) (const char *main_filename);


  void (* finish) (const char *main_filename);


  void (* define) (unsigned int line, const char *text);


  void (* undef) (unsigned int line, const char *macro);



  void (* start_source_file) (unsigned int line, const char *file);



  void (* end_source_file) (unsigned int line);



  void (* begin_block) (unsigned int line, unsigned int n);


  void (* end_block) (unsigned int line, unsigned int n);






  _Bool (* ignore_block) (tree);


  void (* source_line) (unsigned int line, const char *file);




  void (* begin_prologue) (unsigned int line, const char *file);



  void (* end_prologue) (unsigned int line, const char *file);


  void (* end_epilogue) (unsigned int line, const char *file);


  void (* begin_function) (tree decl);


  void (* end_function) (unsigned int line);





  void (* function_decl) (tree decl);



  void (* global_decl) (tree decl);



  void (* deferred_inline_function) (tree decl);




  void (* outlining_inline_function) (tree decl);



  void (* label) (rtx);
};

extern const struct gcc_debug_hooks *debug_hooks;


extern void debug_nothing_void
  (void);
extern void debug_nothing_charstar
  (const char *);
extern void debug_nothing_int_charstar
  (unsigned int, const char *);
extern void debug_nothing_int
  (unsigned int);
extern void debug_nothing_int_int
  (unsigned int, unsigned int);
extern void debug_nothing_tree
  (tree);
extern _Bool debug_true_tree
  (tree);
extern void debug_nothing_rtx
  (rtx);


extern const struct gcc_debug_hooks do_nothing_debug_hooks;
extern const struct gcc_debug_hooks dbx_debug_hooks;
extern const struct gcc_debug_hooks sdb_debug_hooks;
extern const struct gcc_debug_hooks xcoff_debug_hooks;
extern const struct gcc_debug_hooks dwarf_debug_hooks;
extern const struct gcc_debug_hooks dwarf2_debug_hooks;
extern const struct gcc_debug_hooks vmsdbg_debug_hooks;



extern void dwarf2out_begin_prologue (unsigned int, const char *);
extern void dwarf2out_end_epilogue (unsigned int, const char *);
extern void dwarf2out_frame_init (void);
extern void dwarf2out_frame_finish (void);


extern int dwarf2out_do_frame (void);
# 83 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/target.h" 1
# 47 "../../../kg++fe/gnu/target.h"
struct gcc_target
{

  struct asm_out
  {

    const char *open_paren, *close_paren;


    const char *byte_op;
    struct asm_int_op
    {
      const char *hi;
      const char *si;
      const char *di;
      const char *ti;
    } aligned_op, unaligned_op;






    _Bool (* integer) (rtx x, unsigned int size, int aligned_p);


    void (* globalize_label) (FILE *, const char *);



    void (* visibility) (tree, int);


    void (* function_prologue) (FILE *, long long);


    void (* function_end_prologue) (FILE *);


    void (* function_begin_epilogue) (FILE *);


    void (* function_epilogue) (FILE *, long long);



    void (* named_section) (const char *, unsigned int);


    void (* exception_section) (void);


    void (* eh_frame_section) (void);






    void (* select_section) (tree, int, unsigned long long);



    void (* select_rtx_section) (enum machine_mode, rtx, unsigned long long);




    void (* unique_section) (tree, int);


    void (* constructor) (rtx, int);


    void (* destructor) (rtx, int);






    void (* output_mi_thunk) (FILE *file, tree thunk_decl, long long delta, long long vcall_offset, tree function_decl);
# 139 "../../../kg++fe/gnu/target.h"
    _Bool (* can_output_mi_thunk) (tree thunk_decl, long long delta, long long vcall_offset, tree function_decl);



  } asm_out;


  struct sched
  {



    int (* adjust_cost) (rtx insn, rtx link, rtx def_insn, int cost);



    int (* adjust_priority) (rtx, int);




    int (* issue_rate) (void);



    int (* variable_issue) (FILE *, int, rtx, int);


    void (* md_init) (FILE *, int, int);


    void (* md_finish) (FILE *, int);



    int (* reorder) (FILE *, int, rtx *, int *, int);
    int (* reorder2) (FILE *, int, rtx *, int *, int);




    int (* use_dfa_pipeline_interface) (void);
# 194 "../../../kg++fe/gnu/target.h"
    void (* init_dfa_pre_cycle_insn) (void);
    rtx (* dfa_pre_cycle_insn) (void);
    void (* init_dfa_post_cycle_insn) (void);
    rtx (* dfa_post_cycle_insn) (void);







    int (* first_cycle_multipass_dfa_lookahead) (void);
# 216 "../../../kg++fe/gnu/target.h"
    void (* init_dfa_bubbles) (void);
    rtx (* dfa_bubble) (int);
  } sched;


  tree (* merge_decl_attributes) (tree, tree);


  tree (* merge_type_attributes) (tree, tree);



  const struct attribute_spec *attribute_table;




  int (* comp_type_attributes) (tree type1, tree type2);


  void (* set_default_type_attributes) (tree type);


  void (* insert_attributes) (tree decl, tree *attributes);



  _Bool (* function_attribute_inlinable_p) (tree fndecl);



  _Bool (* ms_bitfield_layout_p) (tree record_type);


  void (* init_builtins) (void);


  rtx (* expand_builtin) (tree exp, rtx target, rtx subtarget, enum machine_mode mode, int ignore);





  unsigned int (* section_type_flags) (tree, const char *, int);



  _Bool (* cannot_modify_jumps_p) (void);


  _Bool (* cannot_force_const_mem) (rtx);


  _Bool (* in_small_data_p) (tree);



  _Bool (* binds_local_p) (tree);



  void (* encode_section_info) (tree, int);


  const char * (* strip_name_encoding) (const char *);




  _Bool have_named_sections;



  _Bool have_ctors_dtors;


  _Bool have_tls;


  _Bool have_srodata_section;


  _Bool terminate_dw2_eh_frame_info;
};

extern struct gcc_target targetm;
# 84 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/langhooks.h" 1
# 26 "../../../kg++fe/gnu/langhooks.h"
struct diagnostic_context;


typedef void (*lang_print_tree_hook) (FILE *, tree, int indent);




struct lang_hooks_for_tree_inlining
{
  union tree_node *(*walk_subtrees) (union tree_node **, int *, union tree_node *(*) (union tree_node **, int *, void *), void *, void *);




  int (*cannot_inline_tree_fn) (union tree_node **);
  int (*disregard_inline_limits) (union tree_node *);
  union tree_node *(*add_pending_fn_decls) (void *, union tree_node *);

  int (*tree_chain_matters_p) (union tree_node *);
  int (*auto_var_in_fn_p) (union tree_node *, union tree_node *);
  union tree_node *(*copy_res_decl_for_inlining) (union tree_node *, union tree_node *, union tree_node *, void *, int *, void *);




  int (*anon_aggr_type_p) (union tree_node *);
  _Bool (*var_mod_type_p) (union tree_node *);
  int (*start_inlining) (union tree_node *);
  void (*end_inlining) (union tree_node *);
  union tree_node *(*convert_parm_for_inlining) (union tree_node *, union tree_node *, union tree_node *);


};



struct lang_hooks_for_functions
{

  void (*init) (struct function *);


  void (*final) (struct function *);


  void (*enter_nested) (struct function *);


  void (*leave_nested) (struct function *);
};



struct lang_hooks_for_tree_dump
{


  int (*dump_tree) (void *, tree);


  int (*type_quals) (tree);
};



struct lang_hooks_for_types
{


  tree (*make_type) (enum tree_code);



  tree (*type_for_mode) (enum machine_mode, int);



  tree (*type_for_size) (unsigned, int);



  tree (*unsigned_type) (tree);



  tree (*signed_type) (tree);



  tree (*signed_or_unsigned_type) (int, tree);





  tree (*type_promotes_to) (tree);





  void (*incomplete_type_error) (tree value, tree type);
};



struct lang_hooks_for_decls
{


  void (*pushlevel) (int);






  tree (*poplevel) (int, int, int);



  int (*global_bindings_p) (void);




  void (*insert_block) (tree);


  void (*set_block) (tree);





  tree (*pushdecl) (tree);


  tree (*getdecls) (void);



  _Bool (*warn_unused_global) (tree);



  void (*final_write_globals) (void);


  _Bool (*ok_for_sibcall) (tree);
};



struct lang_hooks
{

  const char *name;



  size_t identifier_size;



  void (*init_options) (void);
# 202 "../../../kg++fe/gnu/langhooks.h"
  int (*decode_option) (int, char **);
# 214 "../../../kg++fe/gnu/langhooks.h"
  _Bool (*post_options) (void);







  const char * (*init) (const char *);


  void (*finish) (void);



  void (*parse_file) (int);


  void (*clear_binding_stack) (void);



  long long (*get_alias_set) (tree);




  tree (*expand_constant) (tree);



  rtx (*expand_expr) (tree, rtx, enum machine_mode, int);
# 258 "../../../kg++fe/gnu/langhooks.h"
  tree (*truthvalue_conversion) (tree);



  void (*insert_default_attributes) (tree);
# 271 "../../../kg++fe/gnu/langhooks.h"
  int (*safe_from_p) (rtx, tree);



  void (*finish_incomplete_decl) (tree);




  int (*unsafe_for_reeval) (tree);




  _Bool (*mark_addressable) (tree);


  int (*staticp) (tree);



  void (*dup_lang_specific_decl) (tree);




  tree (*unsave_expr_now) (tree);



  tree (*maybe_build_cleanup) (tree);






  void (*set_decl_assembler_name) (tree);



  _Bool (*can_use_bit_fields_p) (void);


  _Bool honor_readonly;



  void (*print_statistics) (void);



  lang_print_tree_hook print_xnode;



  lang_print_tree_hook print_decl;
  lang_print_tree_hook print_type;
  lang_print_tree_hook print_identifier;







  const char *(*decl_printable_name) (tree decl, int verbosity);


  void (*print_error_function) (struct diagnostic_context *, const char *);






  tree (*expr_size) (tree);






  const struct attribute_spec *attribute_table;
  const struct attribute_spec *common_attribute_table;
  const struct attribute_spec *format_attribute_table;


  struct lang_hooks_for_functions function;

  struct lang_hooks_for_tree_inlining tree_inlining;

  struct lang_hooks_for_tree_dump tree_dump;

  struct lang_hooks_for_decls decls;

  struct lang_hooks_for_types types;



};


extern const struct lang_hooks lang_hooks;
# 85 "../../../kg++fe/gnu/toplev.c" 2
# 1 "../../../kg++fe/gnu/cfglayout.h" 1
# 22 "../../../kg++fe/gnu/cfglayout.h"
typedef struct reorder_block_def
{
  rtx header;
  rtx footer;
  basic_block next;
  basic_block original;


  int visited;
} *reorder_block_def;



extern void cfg_layout_initialize (void);
extern void cfg_layout_finalize (void);
extern _Bool cfg_layout_can_duplicate_bb_p (basic_block);
extern basic_block cfg_layout_duplicate_bb (basic_block, edge);
extern void scope_to_insns_initialize (void);
extern void scope_to_insns_finalize (void);
extern void cfg_layout_redirect_edge (edge, basic_block);
# 86 "../../../kg++fe/gnu/toplev.c" 2


# 1 "../../../kg++fe/gnu/defaults.h" 1
# 89 "../../../kg++fe/gnu/toplev.c" 2



# 1 "../../../kg++fe/gnu/dwarf2out.h" 1
# 21 "../../../kg++fe/gnu/dwarf2out.h"
extern void dwarf2out_decl (tree);
extern void dwarf2out_frame_debug (rtx);

extern void debug_dwarf (void);
struct die_struct;
extern void debug_dwarf_die (struct die_struct *);
extern void dwarf2out_set_demangle_name_func (const char *(*) (const char *));
extern void dwarf2out_add_library_unit_info (const char *, const char *);
# 93 "../../../kg++fe/gnu/toplev.c" 2



# 1 "../../../kg++fe/gnu/dbxout.h" 1
# 21 "../../../kg++fe/gnu/dbxout.h"
extern int dbxout_symbol (tree, int);
extern void dbxout_parms (tree);
extern void dbxout_reg_parms (tree);
extern int dbxout_syms (tree);
# 97 "../../../kg++fe/gnu/toplev.c" 2
# 111 "../../../kg++fe/gnu/toplev.c"
extern int size_directive_output;
extern tree last_assemble_variable_decl;

extern void reg_alloc (void);

static void general_init (char *);
static void parse_options_and_default_flags (int, char **);
static void do_compile (void);
static void process_options (void);
static void backend_init (void);
static int lang_dependent_init (const char *);
static void init_asm_output (const char *);
static void finalize (void);

static void set_target_switch (const char *);

static void crash_signal (int) __attribute__ ((__noreturn__));


extern void mark_referenced_funcs (tree);
extern void gxx_emits_decl (tree);

void compile_file (char *);
int parse_tree_dump = 0;



static void display_help (void);
static void display_target_options (void);

static void decode_d_option (const char *);
static int decode_f_option (const char *);
static int decode_W_option (const char *);
static int decode_g_option (const char *);
static unsigned int independent_decode_option (int, char **);

static void print_version (FILE *, const char *);
static int print_single_switch (FILE *, int, int, const char *, const char *, const char *, const char *, const char *);


static void print_switch_values (FILE *, int, int, const char *, const char *, const char *);



static int set_yydebug;






const char *progname;


int save_argc;
char **save_argv;




const char *input_filename;





const char *main_input_filename;



int lineno;


int no_new_pseudos;



struct file_stack *input_file_stack;


int input_file_stack_tick;



const char *dump_base_name;



const char *aux_base_name;
# 210 "../../../kg++fe/gnu/toplev.c"
extern int target_flags;




int target_flags_explicit;



const struct gcc_debug_hooks *debug_hooks = &do_nothing_debug_hooks;



struct dump_file_info
{

  const char *const extension;


  char const debug_switch;


  char const graph_dump_p;


  char enabled;


  char initialized;
};



enum dump_file_index
{
  DFI_rtl,
  DFI_sibling,
  DFI_eh,
  DFI_jump,
  DFI_ssa,
  DFI_ssa_ccp,
  DFI_ssa_dce,
  DFI_ussa,
  DFI_null,
  DFI_cse,
  DFI_addressof,
  DFI_gcse,
  DFI_loop,
  DFI_cfg,
  DFI_bp,
  DFI_ce1,
  DFI_tracer,
  DFI_cse2,
  DFI_life,
  DFI_combine,
  DFI_ce2,
  DFI_regmove,
  DFI_sched,
  DFI_lreg,
  DFI_greg,
  DFI_postreload,
  DFI_flow2,
  DFI_peephole2,
  DFI_rnreg,
  DFI_ce3,
  DFI_sched2,
  DFI_stack,
  DFI_bbro,
  DFI_mach,
  DFI_dbr,

  DFI_sgi_parse_tree,

  DFI_MAX
};
# 295 "../../../kg++fe/gnu/toplev.c"
static struct dump_file_info dump_file[DFI_MAX] =
{
  { "rtl", 'r', 0, 0, 0 },
  { "sibling", 'i', 0, 0, 0 },
  { "eh", 'h', 0, 0, 0 },
  { "jump", 'j', 0, 0, 0 },
  { "ssa", 'e', 1, 0, 0 },
  { "ssaccp", 'W', 1, 0, 0 },
  { "ssadce", 'X', 1, 0, 0 },
  { "ussa", 'e', 1, 0, 0 },
  { "null", 'u', 0, 0, 0 },
  { "cse", 's', 0, 0, 0 },
  { "addressof", 'F', 0, 0, 0 },
  { "gcse", 'G', 1, 0, 0 },
  { "loop", 'L', 1, 0, 0 },
  { "cfg", 'f', 1, 0, 0 },
  { "bp", 'b', 1, 0, 0 },
  { "ce1", 'C', 1, 0, 0 },
  { "tracer", 'T', 1, 0, 0 },
  { "cse2", 't', 1, 0, 0 },
  { "life", 'f', 1, 0, 0 },
  { "combine", 'c', 1, 0, 0 },
  { "ce2", 'C', 1, 0, 0 },
  { "regmove", 'N', 1, 0, 0 },
  { "sched", 'S', 1, 0, 0 },
  { "lreg", 'l', 1, 0, 0 },
  { "greg", 'g', 1, 0, 0 },
  { "postreload", 'o', 1, 0, 0 },
  { "flow2", 'w', 1, 0, 0 },
  { "peephole2", 'z', 1, 0, 0 },
  { "rnreg", 'n', 1, 0, 0 },
  { "ce3", 'E', 1, 0, 0 },
  { "sched2", 'R', 1, 0, 0 },
  { "stack", 'k', 1, 0, 0 },
  { "bbro", 'B', 1, 0, 0 },
  { "mach", 'M', 1, 0, 0 },
  { "dbr", 'd', 0, 0, 0 },


  { "tree", 'P', 0, 0, 0 },




};

static int open_dump_file (enum dump_file_index, tree);
static void close_dump_file (enum dump_file_index, void (*) (FILE *, rtx), rtx);




int rtl_dump_and_exit;
int flag_print_asm_name;
static int version_flag;
static char *filename;
enum graph_dump_types graph_dump_format;



char *asm_file_name;


int g_switch_value;
int g_switch_set;




enum debug_info_type write_symbols = NO_DEBUG;



enum debug_info_level debug_info_level = DINFO_LEVEL_NONE;





int use_gnu_debug_info_extensions = 0;
# 383 "../../../kg++fe/gnu/toplev.c"
int optimize = 0;






int optimize_size = 0;


static int exit_after_options = 0;



tree current_function_decl;



tree current_function_func_begin_label;



int flag_eliminate_dwarf2_dups = 0;



int profile_flag = 0;



int profile_arc_flag = 0;



int flag_test_coverage = 0;



int flag_branch_probabilities = 0;



int flag_reorder_blocks = 0;



int flag_reorder_functions = 0;



int flag_rename_registers = 0;
int flag_cprop_registers = 0;




int pedantic = 0;




int in_system_header = 0;




int quiet_flag = 1;






int pstatic_as_global = 1;







int time_report = 0;




int mem_report = 0;



int flag_detailed_statistics = 0;






int flag_signed_char;



int flag_short_enums;
# 493 "../../../kg++fe/gnu/toplev.c"
int flag_caller_saves = 0;
# 507 "../../../kg++fe/gnu/toplev.c"
int flag_pcc_struct_return = 1;




int flag_force_mem = 0;




int flag_force_addr = 0;




int flag_defer_pop = 0;




int flag_float_store = 0;




int flag_cse_follow_jumps;



int flag_cse_skip_blocks;



int flag_expensive_optimizations;




int flag_thread_jumps;



int flag_strength_reduce = 0;






int flag_unroll_loops;




int flag_unroll_all_loops;



int flag_prefetch_loop_arrays;




int flag_move_all_movables = 0;




int flag_reduce_all_givs = 0;




int flag_regmove = 0;




int flag_writable_strings = 0;





int flag_no_function_cse = 0;




int flag_omit_frame_pointer = 0;




int flag_function_sections = 0;



int flag_data_sections = 0;



int flag_no_peephole = 0;



int flag_optimize_sibling_calls = 0;




int flag_errno_math = 1;






int flag_unsafe_math_optimizations = 0;



int flag_finite_math_only = 0;







int flag_trapping_math = 1;





int flag_signaling_nans = 0;





int flag_complex_divide_method = 0;



int flag_volatile;



int flag_volatile_global;



int flag_volatile_static;



int flag_syntax_only = 0;



static int flag_gcse;



static int flag_loop_optimize;



static int flag_crossjumping;



static int flag_if_conversion;



static int flag_if_conversion2;




static int flag_delete_null_pointer_checks;





int flag_gcse_lm = 1;





int flag_gcse_sm = 1;




static int flag_rerun_cse_after_loop;



int flag_rerun_loop_opt;




int flag_inline_functions;





int flag_keep_inline_functions;




int flag_no_inline = 1;







int flag_really_no_inline = 2;



int flag_openmp = 0;





int flag_keep_static_consts = 1;



int flag_gen_aux_info = 0;



static char *aux_info_file_name;



int flag_shared_data;



int flag_delayed_branch;





int flag_pic;





int flag_pie;




int flag_shlib;



enum tls_model flag_tls_default = TLS_MODEL_GLOBAL_DYNAMIC;




int flag_exceptions;


int key_exceptions;
int opt_regions;




int flag_unwind_tables = 0;



int flag_asynchronous_unwind_tables = 0;




int flag_no_common;




int flag_pedantic_errors = 0;






int flag_schedule_insns = 0;
int flag_schedule_insns_after_reload = 0;
# 830 "../../../kg++fe/gnu/toplev.c"
int flag_schedule_interblock = 1;
int flag_schedule_speculative = 1;
int flag_schedule_speculative_load = 0;
int flag_schedule_speculative_load_dangerous = 0;

int flag_single_precision_constant;



int flag_branch_on_count_reg = 1;





int flag_inhibit_size_directive = 0;
# 854 "../../../kg++fe/gnu/toplev.c"
int flag_verbose_asm = 0;
# 863 "../../../kg++fe/gnu/toplev.c"
int flag_debug_asm = 0;







int flag_bad_asm_constraint_kills_stmt = 0;





int flag_dump_rtl_in_asm = 0;







int flag_gnu_linker = 1;



int flag_zero_initialized_in_bss = 1;


int flag_ssa = 0;


int flag_ssa_ccp = 0;


int flag_ssa_dce = 0;


int flag_pack_struct = 0;



int flag_stack_check;
# 914 "../../../kg++fe/gnu/toplev.c"
rtx stack_limit_rtx;







int flag_argument_noalias = 0;





int flag_strict_aliasing = 0;


int flag_instrument_function_entry_exit = 0;





int flag_no_ident = 0;


int flag_peephole2 = 0;


int flag_guess_branch_prob = 0;





int flag_bounds_check = 0;




int flag_merge_constants = 1;




int flag_renumber_insns = 1;


int flag_new_regalloc = 0;




int flag_honor_shift = 1;




int flag_tracer = 0;






int align_loops;
int align_loops_log;
int align_loops_max_skip;
int align_jumps;
int align_jumps_log;
int align_jumps_max_skip;
int align_labels;
int align_labels_log;
int align_labels_max_skip;
int align_functions;
int align_functions_log;



int force_align_functions_log;


static const struct
{
  const char *const arg;


  const enum debug_info_type debug_type;
  const int use_extensions_p;
  const char *const description;
} *da,
debug_args[] =
{
  { "", NO_DEBUG, 1,
    ("Generate debugging info in default format") },
  { "gdb", NO_DEBUG, 1, ("Generate debugging info in default extended format") },

  { "stabs", DBX_DEBUG, 0, ("Generate STABS format debug info") },
  { "stabs+", DBX_DEBUG, 1, ("Generate extended STABS format debug info") },


  { "dwarf", DWARF_DEBUG, 0, ("Generate DWARF-1 format debug info") },
  { "dwarf+", DWARF_DEBUG, 1,
    ("Generate extended DWARF-1 format debug info") },


  { "dwarf-2", DWARF2_DEBUG, 0, ("Generate DWARF-2 debug info") },
# 1032 "../../../kg++fe/gnu/toplev.c"
  { 0, 0, 0, 0 }
};

typedef struct
{
  const char *const string;
  int *const variable;
  const int on_value;
  const char *const description;
}
lang_independent_options;

int flag_trapv = 0;


int flag_leading_underscore = -1;


const char *user_label_prefix;

static const param_info lang_independent_params[] = {


# 1 "../../../kg++fe/gnu/params.def" 1
# 51 "../../../kg++fe/gnu/params.def"
{ "max-inline-insns-single", 300, "The maximum number of instructions in a single function eligible for inlining" },
# 63 "../../../kg++fe/gnu/params.def"
{ "max-inline-insns-auto", 300, "The maximum number of instructions when automatically inlining" },
# 82 "../../../kg++fe/gnu/params.def"
{ "max-inline-insns", 600, "The maximum number of instructions by repeated inlining before gcc starts to throttle inlining" },
# 95 "../../../kg++fe/gnu/params.def"
{ "max-inline-slope", 32, "The slope of the linear function throttling inlining after the recursive inlining limit has been reached is given by the negative reciprocal value of this parameter" },
# 108 "../../../kg++fe/gnu/params.def"
{ "min-inline-insns", 130, "The number of instructions in a single functions still eligible to inlining after a lot recursive inlining" },
# 118 "../../../kg++fe/gnu/params.def"
{ "max-inline-insns-rtl", 600, "The maximum number of instructions for the RTL inliner" },
# 129 "../../../kg++fe/gnu/params.def"
{ "max-delay-slot-insn-search", 100, "The maximum number of instructions to consider to fill a delay slot" },
# 140 "../../../kg++fe/gnu/params.def"
{ "max-delay-slot-live-search", 333, "The maximum number of instructions to consider to find accurate live register information" },
# 150 "../../../kg++fe/gnu/params.def"
{ "max-pending-list-length", 32, "The maximum length of scheduling's pending operations list" },






{ "max-gcse-memory", 50 * 1024 * 1024, "The maximum amount of memory to be allocated by GCSE" },




{ "max-gcse-passes", 1, "The maximum number of passes to make when doing GCSE" },






{ "max-unrolled-insns", 100, "The maximum number of instructions to consider to unroll in a loop" },




{ "hot-bb-count-fraction", 10000, "Select fraction of the maximal count of repetitions of basic block in program given basic block needs to have to be considered hot" },




{ "hot-bb-frequency-fraction", 1000, "Select fraction of the maximal frequency of executions of basic block in function given basic block needs to have to be considered hot" },




{ "tracer-dynamic-coverage-feedback", 95, "The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is available" },




{ "tracer-dynamic-coverage", 75, "The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is not available" },




{ "tracer-max-code-growth", 100, "Maximal code growth caused by tail duplication (in percents)" },



{ "tracer-min-branch-ratio", 10, "Stop reverse growth if the reverse probability of best edge is less than this threshold (in percents)" },




{ "tracer-min-branch-probability-feedback", 30, "Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is available" },




{ "tracer-min-branch-probability", 50, "Stop forward growth if the probability of best edge is less than this threshold (in percents). Used when profile feedback is not available" },






{ "max-crossjump-edges", 100, "The maximum number of incoming edges to consider for crossjumping" },
# 228 "../../../kg++fe/gnu/params.def"
{ "ggc-min-expand", 30, "Minimum heap expansion to trigger garbage collection, as a percentage of the total size of the heap." },





{ "ggc-min-heapsize", 4096, "Minimum heap size before we start collecting garbage, in kilobytes." },
# 1056 "../../../kg++fe/gnu/toplev.c" 2

  { ((void *)0), 0, ((void *)0) }
};







static const lang_independent_options f_options[] =
{
  {"eliminate-dwarf2-dups", &flag_eliminate_dwarf2_dups, 1,
   ("Perform DWARF2 duplicate elimination") },
  {"float-store", &flag_float_store, 1,
   ("Do not store floats in registers") },
  {"volatile", &flag_volatile, 1,
   ("Consider all mem refs through pointers as volatile") },
  {"volatile-global", &flag_volatile_global, 1,
   ("Consider all mem refs to global data to be volatile") },
  {"volatile-static", &flag_volatile_static, 1,
   ("Consider all mem refs to static data to be volatile") },
  {"defer-pop", &flag_defer_pop, 1,
   ("Defer popping functions args from stack until later") },
  {"omit-frame-pointer", &flag_omit_frame_pointer, 1,
   ("When possible do not generate stack frames") },
  {"optimize-sibling-calls", &flag_optimize_sibling_calls, 1,
   ("Optimize sibling and tail recursive calls") },
  {"tracer", &flag_tracer, 1,
   ("Perform superblock formation via tail duplication") },
  {"cse-follow-jumps", &flag_cse_follow_jumps, 1,
   ("When running CSE, follow jumps to their targets") },
  {"cse-skip-blocks", &flag_cse_skip_blocks, 1,
   ("When running CSE, follow conditional jumps") },
  {"expensive-optimizations", &flag_expensive_optimizations, 1,
   ("Perform a number of minor, expensive optimizations") },
  {"thread-jumps", &flag_thread_jumps, 1,
   ("Perform jump threading optimizations") },
  {"strength-reduce", &flag_strength_reduce, 1,
   ("Perform strength reduction optimizations") },
  {"unroll-loops", &flag_unroll_loops, 1,
   ("Perform loop unrolling when iteration count is known") },
  {"unroll-all-loops", &flag_unroll_all_loops, 1,
   ("Perform loop unrolling for all loops") },
  {"prefetch-loop-arrays", &flag_prefetch_loop_arrays, 1,
   ("Generate prefetch instructions, if available, for arrays in loops") },
  {"move-all-movables", &flag_move_all_movables, 1,
   ("Force all loop invariant computations out of loops") },
  {"reduce-all-givs", &flag_reduce_all_givs, 1,
   ("Strength reduce all loop general induction variables") },
  {"writable-strings", &flag_writable_strings, 1,
   ("Store strings in writable data section") },
  {"peephole", &flag_no_peephole, 0,
   ("Enable machine specific peephole optimizations") },
  {"force-mem", &flag_force_mem, 1,
   ("Copy memory operands into registers before using") },
  {"force-addr", &flag_force_addr, 1,
   ("Copy memory address constants into regs before using") },
  {"function-cse", &flag_no_function_cse, 0,
   ("Allow function addresses to be held in registers") },
  {"inline-functions", &flag_inline_functions, 1,
   ("Integrate simple functions into their callers") },
  {"keep-inline-functions", &flag_keep_inline_functions, 1,
   ("Generate code for funcs even if they are fully inlined") },
  {"inline", &flag_no_inline, 0,
   ("Pay attention to the 'inline' keyword") },
  {"keep-static-consts", &flag_keep_static_consts, 1,
   ("Emit static const variables even if they are not used") },
  {"syntax-only", &flag_syntax_only, 1,
   ("Check for syntax errors, then stop") },
  {"shared-data", &flag_shared_data, 1,
   ("Mark data as shared rather than private") },
  {"caller-saves", &flag_caller_saves, 1,
   ("Enable saving registers around function calls") },
  {"pcc-struct-return", &flag_pcc_struct_return, 1,
   ("Return 'short' aggregates in memory, not registers") },
  {"reg-struct-return", &flag_pcc_struct_return, 0,
   ("Return 'short' aggregates in registers") },
  {"delayed-branch", &flag_delayed_branch, 1,
   ("Attempt to fill delay slots of branch instructions") },
  {"gcse", &flag_gcse, 1,
   ("Perform the global common subexpression elimination") },
  {"gcse-lm", &flag_gcse_lm, 1,
   ("Perform enhanced load motion during global subexpression elimination") },
  {"gcse-sm", &flag_gcse_sm, 1,
   ("Perform store motion after global subexpression elimination") },
  {"loop-optimize", &flag_loop_optimize, 1,
   ("Perform the loop optimizations") },
  {"crossjumping", &flag_crossjumping, 1,
   ("Perform cross-jumping optimization") },
  {"if-conversion", &flag_if_conversion, 1,
   ("Perform conversion of conditional jumps to branchless equivalents") },
  {"if-conversion2", &flag_if_conversion2, 1,
   ("Perform conversion of conditional jumps to conditional execution") },
  {"rerun-cse-after-loop", &flag_rerun_cse_after_loop, 1,
   ("Run CSE pass after loop optimizations") },
  {"rerun-loop-opt", &flag_rerun_loop_opt, 1,
   ("Run the loop optimizer twice") },
  {"delete-null-pointer-checks", &flag_delete_null_pointer_checks, 1,
   ("Delete useless null pointer checks") },
  {"schedule-insns", &flag_schedule_insns, 1,
   ("Reschedule instructions before register allocation") },
  {"schedule-insns2", &flag_schedule_insns_after_reload, 1,
   ("Reschedule instructions after register allocation") },
  {"sched-interblock",&flag_schedule_interblock, 1,
   ("Enable scheduling across basic blocks") },
  {"sched-spec",&flag_schedule_speculative, 1,
   ("Allow speculative motion of non-loads") },
  {"sched-spec-load",&flag_schedule_speculative_load, 1,
   ("Allow speculative motion of some loads") },
  {"sched-spec-load-dangerous",&flag_schedule_speculative_load_dangerous, 1,
   ("Allow speculative motion of more loads") },
  {"branch-count-reg",&flag_branch_on_count_reg, 1,
   ("Replace add,compare,branch with branch on count reg") },
  {"pic", &flag_pic, 1,
   ("Generate position independent code, if possible") },
  {"PIC", &flag_pic, 2, ""},
  {"pie", &flag_pie, 1,
   ("Generate position independent code for executables, if possible") },
  {"PIE", &flag_pie, 2, ""},




  {"exceptions", &key_exceptions, 1,
   ("Enable exception handling") },
  {"optimize-regions", &opt_regions, 1,
   ("Optimize EH region formation") },

  {"unwind-tables", &flag_unwind_tables, 1,
   ("Just generate unwind tables for exception handling") },
  {"asynchronous-unwind-tables", &flag_asynchronous_unwind_tables, 1,
   ("Generate unwind tables exact at each instruction boundary") },
  {"non-call-exceptions", &flag_non_call_exceptions, 1,
   ("Support synchronous non-call exceptions") },
  {"profile-arcs", &profile_arc_flag, 1,
   ("Insert arc based program profiling code") },
  {"test-coverage", &flag_test_coverage, 1,
   ("Create data files needed by gcov") },
  {"branch-probabilities", &flag_branch_probabilities, 1,
   ("Use profiling information for branch probabilities") },
  {"profile", &profile_flag, 1,
   ("Enable basic program profiling code") },
  {"reorder-blocks", &flag_reorder_blocks, 1,
   ("Reorder basic blocks to improve code placement") },
  {"reorder-functions", &flag_reorder_functions, 1,
   ("Reorder functions to improve code placement") },
  {"rename-registers", &flag_rename_registers, 1,
   ("Do the register renaming optimization pass") },
  {"cprop-registers", &flag_cprop_registers, 1,
   ("Do the register copy-propagation optimization pass") },
  {"common", &flag_no_common, 0,
   ("Do not put uninitialized globals in the common section") },
  {"inhibit-size-directive", &flag_inhibit_size_directive, 1,
   ("Do not generate .size directives") },
  {"function-sections", &flag_function_sections, 1,
   ("place each function into its own section") },
  {"data-sections", &flag_data_sections, 1,
   ("place data items into their own section") },
  {"verbose-asm", &flag_verbose_asm, 1,
   ("Add extra commentary to assembler output") },
  {"gnu-linker", &flag_gnu_linker, 1,
   ("Output GNU ld formatted global initializers") },
  {"regmove", &flag_regmove, 1,
   ("Enables a register move optimization") },
  {"optimize-register-move", &flag_regmove, 1,
   ("Do the full regmove optimization pass") },
  {"pack-struct", &flag_pack_struct, 1,
   ("Pack structure members together without holes") },
  {"stack-check", &flag_stack_check, 1,
   ("Insert stack checking code into the program") },
  {"argument-alias", &flag_argument_noalias, 0,
   ("Specify that arguments may alias each other & globals") },
  {"argument-noalias", &flag_argument_noalias, 1,
   ("Assume arguments may alias globals but not each other") },
  {"argument-noalias-global", &flag_argument_noalias, 2,
   ("Assume arguments do not alias each other or globals") },
  {"strict-aliasing", &flag_strict_aliasing, 1,
   ("Assume strict aliasing rules apply") },
  {"align-loops", &align_loops, 0,
   ("Align the start of loops") },
  {"align-jumps", &align_jumps, 0,
   ("Align labels which are only reached by jumping") },
  {"align-labels", &align_labels, 0,
   ("Align all labels") },
  {"align-functions", &align_functions, 0,
   ("Align the start of functions") },
  {"merge-constants", &flag_merge_constants, 1,
   ("Attempt to merge identical constants across compilation units") },
  {"merge-all-constants", &flag_merge_constants, 2,
   ("Attempt to merge identical constants and constant variables") },
  {"dump-unnumbered", &flag_dump_unnumbered, 1,
   ("Suppress output of instruction numbers and line number notes in debugging dumps") },
  {"instrument-functions", &flag_instrument_function_entry_exit, 1,
   ("Instrument function entry/exit with profiling calls") },
  {"zero-initialized-in-bss", &flag_zero_initialized_in_bss, 1,
   ("Put zero initialized data in the bss section") },
  {"ssa", &flag_ssa, 1,
   ("Enable SSA optimizations") },
  {"ssa-ccp", &flag_ssa_ccp, 1,
   ("Enable SSA conditional constant propagation") },
  {"ssa-dce", &flag_ssa_dce, 1,
   ("Enable aggressive SSA dead code elimination") },
  {"leading-underscore", &flag_leading_underscore, 1,
   ("External symbols have a leading underscore") },
  {"ident", &flag_no_ident, 0,
   ("Process #ident directives") },
  { "peephole2", &flag_peephole2, 1,
   ("Enables an rtl peephole pass run before sched2") },
  {"finite-math-only", &flag_finite_math_only, 1,
   ("Assume no NaNs or +-Infs are generated") },
  { "guess-branch-probability", &flag_guess_branch_prob, 1,
   ("Enables guessing of branch probabilities") },
  {"math-errno", &flag_errno_math, 1,
   ("Set errno after built-in math functions") },
  {"trapping-math", &flag_trapping_math, 1,
   ("Floating-point operations can trap") },
  {"unsafe-math-optimizations", &flag_unsafe_math_optimizations, 1,
   ("Allow math optimizations that may violate IEEE or ANSI standards") },
  {"signaling-nans", &flag_signaling_nans, 1,
   ("Disable optimizations observable by IEEE signaling NaNs") },
  {"bounds-check", &flag_bounds_check, 1,
   ("Generate code to check bounds before indexing arrays") },
  {"single-precision-constant", &flag_single_precision_constant, 1,
   ("Convert floating point constant to single precision constant") },
  {"time-report", &time_report, 1,
   ("Report time taken by each compiler pass at end of run") },
  {"mem-report", &mem_report, 1,
   ("Report on permanent memory allocation at end of run") },
  { "trapv", &flag_trapv, 1,
   ("Trap for signed overflow in addition / subtraction / multiplication") },
  { "new-ra", &flag_new_regalloc, 1,
   ("Use graph coloring register allocation.") },


  { "honor-shift", &flag_honor_shift, 1,
   ("Retain shift operation as specified by the user.") },

};



static const struct lang_opt
{
  const char *const option;
  const char *const description;
}
documented_lang_options[] =
{




  { "-ansi",
    ("Compile just for ISO C90") },
  { "-std= ",
    ("Determine language standard") },

  { "-fsigned-bitfields", "" },
  { "-funsigned-bitfields",
    ("Make bit-fields by unsigned by default") },
  { "-fno-signed-bitfields", "" },
  { "-fno-unsigned-bitfields","" },
  { "-fsigned-char",
    ("Make 'char' be signed by default") },
  { "-funsigned-char",
    ("Make 'char' be unsigned by default") },
  { "-fno-signed-char", "" },
  { "-fno-unsigned-char", "" },

  { "-fasm", "" },
  { "-fno-asm",
    ("Do not recognize the 'asm' keyword") },
  { "-fbuiltin", "" },
  { "-fno-builtin",
    ("Do not recognize any built in functions") },
  { "-fhosted",
    ("Assume normal C execution environment") },
  { "-fno-hosted", "" },
  { "-ffreestanding",
    ("Assume that standard libraries & main might not exist") },
  { "-fno-freestanding", "" },
  { "-fcond-mismatch",
    ("Allow different types as args of ? operator") },
  { "-fno-cond-mismatch", "" },
  { "-fdollars-in-identifiers",
    ("Allow the use of $ inside identifiers") },
  { "-fno-dollars-in-identifiers", "" },
  { "-fpreprocessed", "" },
  { "-fno-preprocessed", "" },
  { "-fshort-double",
    ("Use the same size for double as for float") },
  { "-fno-short-double", "" },
  { "-fshort-enums",
    ("Use the smallest fitting integer to hold enums") },
  { "-fno-short-enums", "" },
  { "-fshort-wchar",
    ("Override the underlying type for wchar_t to `unsigned short'") },
  { "-fno-short-wchar", "" },

  { "-Wall",
    ("Enable most warning messages") },
  { "-Wbad-function-cast",
    ("Warn about casting functions to incompatible types") },
  { "-Wno-bad-function-cast", "" },
  { "-Wmissing-format-attribute",
    ("Warn about functions which might be candidates for format attributes") },
  { "-Wno-missing-format-attribute", "" },
  { "-Wcast-qual",
    ("Warn about casts which discard qualifiers") },
  { "-Wno-cast-qual", "" },
  { "-Wchar-subscripts",
    ("Warn about subscripts whose type is 'char'") },
  { "-Wno-char-subscripts", "" },
  { "-Wcomment",
    ("Warn if nested comments are detected") },
  { "-Wno-comment", "" },
  { "-Wcomments",
    ("Warn if nested comments are detected") },
  { "-Wno-comments", "" },
  { "-Wconversion",
    ("Warn about possibly confusing type conversions") },
  { "-Wno-conversion", "" },
  { "-Wdeclaration-after-statement",
    ("Warn when a declaration is found after a statement") },
  { "-Wno-declaration-after-statement", "" },
  { "-Wdiv-by-zero", "" },
  { "-Wno-div-by-zero",
    ("Do not warn about compile-time integer division by zero") },
  { "-Wfloat-equal",
    ("Warn about testing equality of floating point numbers") },
  { "-Wno-float-equal", "" },
  { "-Wformat",
    ("Warn about printf/scanf/strftime/strfmon format anomalies") },
  { "-Wno-format", "" },
  { "-Wformat-extra-args", "" },
  { "-Wno-format-extra-args",
    ("Don't warn about too many arguments to format functions") },
  { "-Wformat-nonliteral",
    ("Warn about non-string-literal format strings") },
  { "-Wno-format-nonliteral", "" },
  { "-Wformat-security",
    ("Warn about possible security problems with format functions") },
  { "-Wno-format-security", "" },
  { "-Wformat-y2k", "" },
  { "-Wno-format-y2k",
    ("Don't warn about strftime formats yielding 2 digit years") },
  { "-Wimplicit-function-declaration",
    ("Warn about implicit function declarations") },
  { "-Wno-implicit-function-declaration", "" },
  { "-Werror-implicit-function-declaration", "" },
  { "-Wimplicit-int",
    ("Warn when a declaration does not specify a type") },
  { "-Wno-implicit-int", "" },
  { "-Wimplicit", "" },
  { "-Wno-implicit", "" },
  { "-Wimport",
    ("Warn about the use of the #import directive") },
  { "-Wno-import", "" },
  { "-Wlong-long","" },
  { "-Wno-long-long",
    ("Do not warn about using 'long long' when -pedantic") },
  { "-Wmain",
    ("Warn about suspicious declarations of main") },
  { "-Wno-main", "" },
  { "-Wmissing-braces",
    ("Warn about possibly missing braces around initializers") },
  { "-Wno-missing-braces", "" },
  { "-Wmissing-declarations",
    ("Warn about global funcs without previous declarations") },
  { "-Wno-missing-declarations", "" },
  { "-Wmissing-prototypes",
    ("Warn about global funcs without prototypes") },
  { "-Wno-missing-prototypes", "" },
  { "-Wmultichar",
    ("Warn about use of multicharacter literals") },
  { "-Wno-multichar", "" },
  { "-Wnested-externs",
    ("Warn about externs not at file scope level") },
  { "-Wno-nested-externs", "" },
  { "-Wparentheses",
    ("Warn about possible missing parentheses") },
  { "-Wno-parentheses", "" },
  { "-Wpointer-arith",
    ("Warn about function pointer arithmetic") },
  { "-Wno-pointer-arith", "" },
  { "-Wredundant-decls",
    ("Warn about multiple declarations of the same object") },
  { "-Wno-redundant-decls", "" },
  { "-Wreturn-type",
    ("Warn whenever a function's return-type defaults to int") },
  { "-Wno-return-type", "" },
  { "-Wsequence-point",
    ("Warn about possible violations of sequence point rules") },
  { "-Wno-sequence-point", "" },
  { "-Wsign-compare",
    ("Warn about signed/unsigned comparisons") },
  { "-Wno-sign-compare", "" },
  { "-Wstrict-prototypes",
    ("Warn about non-prototyped function decls") },
  { "-Wno-strict-prototypes", "" },
  { "-Wtraditional",
    ("Warn about constructs whose meanings change in ISO C") },
  { "-Wno-traditional", "" },
  { "-Wtrigraphs",
    ("Warn when trigraphs are encountered") },
  { "-Wno-trigraphs", "" },
  { "-Wundef", "" },
  { "-Wno-undef", "" },
  { "-Wunknown-pragmas",
    ("Warn about unrecognized pragmas") },
  { "-Wno-unknown-pragmas", "" },
  { "-Wwrite-strings",
    ("Mark strings as 'const char *'") },
  { "-Wno-write-strings", "" },



# 1 "../../../kg++fe/gnu/MIPS/options.h" 1
# 1 "../../../kg++fe/gnu/cp/lang-options.h" 1
# 22 "../../../kg++fe/gnu/cp/lang-options.h"
{ ((void *)0), "C++" },




  { "-faccess-control", "" },
  { "-fno-access-control",
    ("Do not obey access control semantics") },
  { "-falt-external-templates",
    ("Change when template instances are emitted") },
  { "-fno-alt-external-templates", "" },
  { "-fansi-overloading", "" },
  { "-fno-ansi-overloading", "" },
  { "-fcheck-new",
    ("Check the return value of new") },
  { "-fno-check-new", "" },
  { "-fconserve-space",
    ("Reduce size of object files") },
  { "-fno-conserve-space", "" },
  { "-fconst-strings", "" },
  { "-fno-const-strings",
    ("Make string literals `char[]' instead of `const char[]'") },
  { "-fdefault-inline", "" },
  { "-fdump-translation-unit-",
    ("Dump the entire translation unit to a file") },
  { "-fno-default-inline",
    ("Do not inline member functions by default") },
  { "-frtti", "" },
  { "-fno-rtti",
    ("Do not generate run time type descriptor information") },
  { "-felide-constructors", "" },
  { "-fno-elide-constructors", "" },
  { "-fenforce-eh-specs", "" },
  { "-fno-enforce-eh-specs",
    ("Do not generate code to check exception specifications") },
  { "-fexternal-templates", "" },
  { "-fno-external-templates", "" },
  { "-ffor-scope", "" },
  { "-fno-for-scope",
    ("Scope of for-init-statement vars extends outside") },
  { "-fgnu-keywords", "" },
  { "-fno-gnu-keywords",
    ("Do not recognize GNU defined keywords") },
  { "-fhandle-exceptions", "" },
  { "-fno-handle-exceptions", "" },
  { "-fhuge-objects",
    ("Enable support for huge objects") },
  { "-fno-huge-objects", "" },
  { "-fimplement-inlines", "" },
  { "-fno-implement-inlines",
    ("Export functions even if they can be inlined") },
  { "-fimplicit-templates", "" },
  { "-fno-implicit-templates",
    ("Only emit explicit template instantiations") },
  { "-fimplicit-inline-templates", "" },
  { "-fno-implicit-inline-templates",
    ("Only emit explicit instantiations of inline templates") },
  { "-finit-priority", "" },
  { "-fno-init-priority", "" },
  { "-fmemoize-lookups", "" },
  { "-fno-memoize-lookups", "" },
  { "-fms-extensions",
    ("Don't pedwarn about uses of Microsoft extensions") },
  { "-fno-ms-extensions", "" },
  { "-foperator-names",
    ("Recognize and/bitand/bitor/compl/not/or/xor") },
  { "-fno-operator-names", "" },
  { "-foptional-diags", "" },
  { "-fno-optional-diags",
    ("Disable optional diagnostics") },
  { "-fpermissive",
    ("Downgrade conformance errors to warnings") },
  { "-fno-permissive", "" },
  { "-frepo",
    ("Enable automatic template instantiation") },
  { "-fno-repo", "" },
  { "-fsave-memoized", "" },
  { "-fno-save-memoized", "" },
  { "-fstats",
    ("Display statistics accumulated during compilation") },
  { "-fno-stats", "" },
  { "-ftemplate-depth-",
    ("Specify maximum template instantiation depth") },
  { "-fuse-cxa-atexit",
    ("Use __cxa_atexit to register destructors") },
  { "-fno-use-cxa-atexit", "" },
  { "-fvtable-gc",
    ("Discard unused virtual functions") },
  { "-fno-vtable-gc", "" },
  { "-fvtable-thunks",
    ("Implement vtables using thunks") },
  { "-fno-vtable-thunks", "" },
  { "-fweak",
    ("Emit common-like symbols as weak symbols") },
  { "-fno-weak", "" },
  { "-fxref",
    ("Emit cross referencing information") },
  { "-fno-xref", "" },

  { "-Wreturn-type",
    ("Warn about inconsistent return types") },
  { "-Wno-return-type", "" },
  { "-Woverloaded-virtual",
    ("Warn about overloaded virtual function names") },
  { "-Wno-overloaded-virtual", "" },
  { "-Wctor-dtor-privacy", "" },
  { "-Wno-ctor-dtor-privacy",
    ("Don't warn when all ctors/dtors are private") },
  { "-Wnon-virtual-dtor",
    ("Warn about non virtual destructors") },
  { "-Wno-non-virtual-dtor", "" },
  { "-Wextern-inline",
    ("Warn when a function is declared extern, then inline") },
  { "-Wno-extern-inline", "" },
  { "-Wreorder",
    ("Warn when the compiler reorders code") },
  { "-Wno-reorder", "" },
  { "-Wsynth",
    ("Warn when synthesis behavior differs from Cfront") },
  { "-Wno-synth", "" },
  { "-Wpmf-conversions", "" },
  { "-Wno-pmf-conversions",
    ("Don't warn when type converting pointers to member functions") },
  { "-Weffc++",
    ("Warn about violations of Effective C++ style rules") },
  { "-Wno-effc++", "" },
  { "-Wsign-promo",
    ("Warn when overload promotes from unsigned to signed") },
  { "-Wno-sign-promo", "" },
  { "-Wold-style-cast",
    ("Warn if a C style cast is used in a program") },
  { "-Wno-old-style-cast", "" },
  { "-Wnon-template-friend", "" },
  { "-Wno-non-template-friend",
    ("Don't warn when non-templatized friend functions are declared within a template") },
  { "-Wdeprecated", "" },
  { "-Wno-deprecated",
    ("Don't announce deprecation of compiler features") },
# 1 "../../../kg++fe/gnu/MIPS/options.h" 2
# 1475 "../../../kg++fe/gnu/toplev.c" 2

};







static const struct
{
  const char *const name;
  const int value;
  const char *const description;
}
target_switches[] = { {"no-crt0", 0, ("No default crt0.o") }, {"int64", 0x00000001 | 0x00000002, ("Use 64-bit int type")}, {"long64", 0x00000002, ("Use 64-bit long type")}, {"long32", -(0x00000002 | 0x00000001), ("Use 32-bit long type")}, {"split-addresses", 0x00000004, ("Optimize lui/addiu address loads")}, {"no-split-addresses", -0x00000004, ("Don't optimize lui/addiu address loads")}, {"mips-as", -0x00000010, ("Use MIPS as")}, {"gas", 0x00000010, ("Use GNU as")}, {"rnames", 0x00000020, ("Use symbolic register names")}, {"no-rnames", -0x00000020, ("Don't use symbolic register names")}, {"gpOPT", 0x00000008, ("Use GP relative sdata/sbss sections")}, {"gpopt", 0x00000008, ("Use GP relative sdata/sbss sections")}, {"no-gpOPT", -0x00000008, ("Don't use GP relative sdata/sbss sections")}, {"no-gpopt", -0x00000008, ("Don't use GP relative sdata/sbss sections")}, {"stats", 0x00000040, ("Output compiler statistics")}, {"no-stats", -0x00000040, ("Don't output compiler statistics")}, {"memcpy", 0x00000080, ("Don't optimize block moves")}, {"no-memcpy", -0x00000080, ("Optimize block moves")}, {"mips-tfile", 0, ("Use mips-tfile asm postpass")}, {"no-mips-tfile", -0, ("Don't use mips-tfile asm postpass")}, {"soft-float", 0x00000100, ("Use software floating point")}, {"hard-float", -0x00000100, ("Use hardware floating point")}, {"fp64", 0x00000200, ("Use 64-bit FP registers")}, {"fp32", -0x00000200, ("Use 32-bit FP registers")}, {"gp64", 0x00002000, ("Use 64-bit general registers")}, {"gp32", -0x00002000, ("Use 32-bit general registers")}, {"abicalls", 0x00000400, ("Use Irix PIC")}, {"no-abicalls", -0x00000400, ("Don't use Irix PIC")}, {"long-calls", 0x00001000, ("Use indirect calls")}, {"no-long-calls", -0x00001000, ("Don't use indirect calls")}, {"embedded-pic", 0x00004000, ("Use embedded PIC")}, {"no-embedded-pic", -0x00004000, ("Don't use embedded PIC")}, {"embedded-data", 0x00008000, ("Use ROM instead of RAM")}, {"no-embedded-data", -0x00008000, ("Don't use ROM instead of RAM")}, {"uninit-const-in-rodata", 0x00800000, ("Put uninitialized constants in ROM (needs -membedded-data)")}, {"no-uninit-const-in-rodata", -0x00800000, ("Don't put uninitialized constants in ROM")}, {"eb", 0x00010000, ("Use big-endian byte order")}, {"el", -0x00010000, ("Use little-endian byte order")}, {"single-float", 0x00020000, ("Use single (32-bit) FP only")}, {"double-float", -0x00020000, ("Don't use single (32-bit) FP only")}, {"mad", 0x00040000, ("Use multiply accumulate")}, {"no-mad", -0x00040000, ("Don't use multiply accumulate")}, {"no-fused-madd", 0x01000000, ("Don't generate fused multiply/add instructions")}, {"fused-madd", -0x01000000, ("Generate fused multiply/add instructions")}, {"fix4300", 0x00080000, ("Work around early 4300 hardware bug")}, {"no-fix4300", -0x00080000, ("Don't work around early 4300 hardware bug")}, {"check-zero-division",-0x00200000, ("Trap on integer divide by zero")}, {"no-check-zero-division", 0x00200000, ("Don't trap on integer divide by zero")}, {"check-range-division",0x00400000, ("Trap on integer divide overflow")}, {"no-check-range-division",-0x00400000, ("Don't trap on integer divide overflow")}, { "branch-likely", 0x02000000, ("Use Branch Likely instructions, overriding default for arch")}, { "no-branch-likely", -0x02000000, ("Don't use Branch Likely instructions, overriding default for arch")}, {"debug", 0, ((void *)0)}, {"debuga", 0, ((void *)0)}, {"debugb", 0, ((void *)0)}, {"debugc", 0, ((void *)0)}, {"debugd", 0, ((void *)0)}, {"debuge", 0, ((void *)0)}, {"debugf", 0, ((void *)0)}, {"debugg", 0, ((void *)0)}, {"debugi", 0, ((void *)0)}, {"", ((0x00000400|0x00000010) | (0x00000010) | 0), ((void *)0)}, };




static const struct
{
  const char *const prefix;
  const char **const variable;
  const char *const description;
}
target_options[] = { { "tune=", &mips_tune_string, ("Specify CPU for scheduling purposes")}, { "arch=", &mips_arch_string, ("Specify CPU for code generation purposes")}, { "abi=", &mips_abi_string, ("Specify an ABI")}, { "ips", &mips_isa_string, ("Specify a Standard MIPS ISA")}, { "entry", &mips_entry_string, ("Use mips16 entry/exit psuedo ops")}, { "no-mips16", &mips_no_mips16_string, ("Don't use MIPS16 instructions")}, { "no-flush-func", &mips_cache_flush_func, ("Don't call any cache flush functions")}, { "flush-func=", &mips_cache_flush_func, ("Specify cache flush function")}, };






int inhibit_warnings = 0;



int warn_system_headers = 0;



int extra_warnings = 0;



int warnings_are_errors = 0;



int warn_unused_function;
int warn_unused_label;
int warn_unused_parameter;
int warn_unused_variable;
int warn_unused_value;



int warn_notreached;



int warn_uninitialized;



int warn_shadow;




int warn_switch;



int warn_switch_default;




int warn_switch_enum;




int warn_return_type;





int warn_cast_align;





int warn_larger_than;
long long larger_than_size;



int warn_inline;




int warn_aggregate_return;



int warn_packed;



int warn_padded;



int warn_disabled_optimization;



int warn_missing_noreturn;




int warn_deprecated_decl = 1;




int warn_strict_aliasing;



static const lang_independent_options W_options[] =
{
  {"unused-function", &warn_unused_function, 1,
   ("Warn when a function is unused") },
  {"unused-label", &warn_unused_label, 1,
   ("Warn when a label is unused") },
  {"unused-parameter", &warn_unused_parameter, 1,
   ("Warn when a function parameter is unused") },
  {"unused-variable", &warn_unused_variable, 1,
   ("Warn when a variable is unused") },
  {"unused-value", &warn_unused_value, 1,
   ("Warn when an expression value is unused") },
  {"system-headers", &warn_system_headers, 1,
   ("Do not suppress warnings from system headers") },
  {"error", &warnings_are_errors, 1,
   ("Treat all warnings as errors") },
  {"shadow", &warn_shadow, 1,
   ("Warn when one local variable shadows another") },
  {"switch", &warn_switch, 1,
   ("Warn about enumerated switches, with no default, missing a case") },
  {"switch-default", &warn_switch_default, 1,
   ("Warn about enumerated switches missing a default case") },
  {"switch-enum", &warn_switch_enum, 1,
   ("Warn about all enumerated switches missing a specific case") },
  {"aggregate-return", &warn_aggregate_return, 1,
   ("Warn about returning structures, unions or arrays") },
  {"cast-align", &warn_cast_align, 1,
   ("Warn about pointer casts which increase alignment") },
  {"unreachable-code", &warn_notreached, 1,
   ("Warn about code that will never be executed") },
  {"uninitialized", &warn_uninitialized, 1,
   ("Warn about uninitialized automatic variables") },
  {"inline", &warn_inline, 1,
   ("Warn when an inlined function cannot be inlined") },
  {"packed", &warn_packed, 1,
   ("Warn when the packed attribute has no effect on struct layout") },
  {"padded", &warn_padded, 1,
   ("Warn when padding is required to align struct members") },
  {"disabled-optimization", &warn_disabled_optimization, 1,
   ("Warn when an optimization pass is disabled") },
  {"deprecated-declarations", &warn_deprecated_decl, 1,
   ("Warn about uses of __attribute__((deprecated)) declarations") },
  {"missing-noreturn", &warn_missing_noreturn, 1,
   ("Warn about functions which might be candidates for attribute noreturn") },
  {"strict-aliasing", &warn_strict_aliasing, 1,
   ("Warn about code which might break the strict aliasing rules") }
};

void
set_Wunused (setting)
     int setting;
{
  warn_unused_function = setting;
  warn_unused_label = setting;



  if (!setting)
    warn_unused_parameter = 0;
  else if (!warn_unused_parameter)
    warn_unused_parameter = -1;
  warn_unused_variable = setting;
  warn_unused_value = setting;
}




void
set_fast_math_flags (set)
     int set;
{
  flag_trapping_math = !set;
  flag_unsafe_math_optimizations = set;
  flag_finite_math_only = set;
  flag_errno_math = !set;
  if (set)
    flag_signaling_nans = 0;
}


_Bool
fast_math_flags_set_p ()
{
  return (!flag_trapping_math
   && flag_unsafe_math_optimizations
   && flag_finite_math_only
   && !flag_errno_math);
}





FILE *asm_out_file;
FILE *aux_info_file;
FILE *rtl_dump_file = ((void *)0);


FILE *tree_dump_file = ((void *)0);







int
read_integral_parameter (p, pname, defval)
     const char *p;
     const char *pname;
     const int defval;
{
  const char *endp = p;

  while (*endp)
    {
      if ((_sch_istable[(*endp) & 0xff] & (unsigned short)(_sch_isdigit)))
 endp++;
      else
 break;
    }

  if (*endp != 0)
    {
      if (pname != 0)
 error ("invalid option `%s'", pname);
      return defval;
    }

  return atoi (p);
}



void
dump_parse_tree (char *msg, tree node)
{
  if (parse_tree_dump) {

        fprintf (rtl_dump_file, "%s:\n", msg);
        print_tree (rtl_dump_file, node);




  }
}





void
do_abort ()
{
  fancy_abort ("../../../kg++fe/gnu/toplev.c", 1767, __FUNCTION__);
}




void
botch (s)
     const char *s __attribute__ ((__unused__));
{
  fancy_abort ("../../../kg++fe/gnu/toplev.c", 1777, __FUNCTION__);
}






int
exact_log2_wide (x)
     unsigned long long x;
{
  int log = 0;

  if (x == 0 || x != (x & -x))
    return -1;
  while ((x >>= 1) != 0)
    log++;
  return log;
}






int
floor_log2_wide (x)
     unsigned long long x;
{
  int log = -1;
  while (x != 0)
    log++,
    x >>= 1;
  return log;
}




static void
crash_signal (signo)
     int signo;
{
  internal_error ("%s", strsignal (signo));
}






void
strip_off_ending (name, len)
     char *name;
     int len;
{
  int i;
  for (i = 2; i < 6 && len > i; i++)
    {
      if (name[len - i] == '.')
 {
   name[len - i] = '\0';
   break;
 }
    }
}



void
output_quoted_string (asm_file, string)
     FILE *asm_file;
     const char *string;
{



  char c;

  putc_unlocked ('\"', asm_file);
  while ((c = *string++) != 0)
    {
      if ((_sch_istable[(c) & 0xff] & (unsigned short)(_sch_isprint)))
 {
   if (c == '\"' || c == '\\')
     putc_unlocked ('\\', asm_file);
   putc_unlocked (c, asm_file);
 }
      else
 fprintf (asm_file, "\\%03o", (unsigned char) c);
    }
  putc_unlocked ('\"', asm_file);

}



void
output_clean_symbol_name (file, name)
     FILE *file;
     const char *name;
{

  char *id = xstrdup (name);


  clean_symbol_name (id);

  fputs_unlocked (id, file);
  free (id);
}




void
output_file_directive (asm_file, input_name)
     FILE *asm_file;
     const char *input_name;
{
  int len = strlen (input_name);
  const char *na = input_name + len;


  while (na > input_name)
    {
      if (((na[-1]) == '/'))
 break;
      na--;
    }





  mips_output_filename (asm_file, na);






}



static int
open_dump_file (index, decl)
     enum dump_file_index index;
     tree decl;
{
  char *dump_name;
  const char *open_arg;
  char seq[16];

  if (! dump_file[index].enabled)
    return 0;

  timevar_push (TV_DUMP);
  if (rtl_dump_file != ((void *)0))
    fclose (rtl_dump_file);

  sprintf (seq, ".%02d.", index);

  if (! dump_file[index].initialized)
    {

      if (graph_dump_format != no_graph
   && dump_file[index].graph_dump_p)
 {
   dump_name = concat (seq, dump_file[index].extension, ((void *)0));
   clean_graph_dump_file (dump_base_name, dump_name);
   free (dump_name);
 }
      dump_file[index].initialized = 1;
      open_arg = "w";
    }
  else
    open_arg = "a";

  dump_name = concat (dump_base_name, seq,
        dump_file[index].extension, ((void *)0));

  rtl_dump_file = fopen (dump_name, open_arg);
  if (rtl_dump_file == ((void *)0))
    fatal_io_error ("can't open %s", dump_name);

  free (dump_name);

  if (decl)
    fprintf (rtl_dump_file, "\n;; Function %s%s\n\n",
      (*lang_hooks.decl_printable_name) (decl, 2),
      cfun->function_frequency == FUNCTION_FREQUENCY_HOT
      ? " (hot)"
      : cfun->function_frequency == FUNCTION_FREQUENCY_UNLIKELY_EXECUTED
      ? " (unlikely executed)"
      : "");

  timevar_pop (TV_DUMP);
  return 1;
}



static void
close_dump_file (index, func, insns)
     enum dump_file_index index;
     void (*func) (FILE *, rtx);
     rtx insns;
{
  if (! rtl_dump_file)
    return;

  timevar_push (TV_DUMP);
  if (insns
      && graph_dump_format != no_graph
      && dump_file[index].graph_dump_p)
    {
      char seq[16];
      char *suffix;

      sprintf (seq, ".%02d.", index);
      suffix = concat (seq, dump_file[index].extension, ((void *)0));
      print_rtl_graph_with_bb (dump_base_name, suffix, insns);
      free (suffix);
    }

  if (func && insns)
    func (rtl_dump_file, insns);

  fflush (rtl_dump_file);
  fclose (rtl_dump_file);

  rtl_dump_file = ((void *)0);
  timevar_pop (TV_DUMP);
}






int
wrapup_global_declarations (vec, len)
     tree *vec;
     int len;
{
  tree decl;
  int i;
  int reconsider;
  int output_something = 0;

  for (i = 0; i < len; i++)
    {
      decl = vec[i];



      if (((decl)->decl.defer_output) != 0)
 ((decl)->decl.defer_output) = 0;

      if (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->decl.size) == 0)
 (*lang_hooks.finish_incomplete_decl) (decl);
    }




  do
    {
      reconsider = 0;
      for (i = 0; i < len; i++)
 {
   decl = vec[i];

   if (((decl)->common.asm_written_flag) || ((decl)->decl.external_flag))
     continue;
# 2081 "../../../kg++fe/gnu/toplev.c"
   if (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->common.static_flag))
     {
       _Bool needed = 1;

       if (((decl_assembler_name (decl))->common.static_flag))
              ;
       else if (((decl)->decl.comdat_flag))
  needed = 0;
       else if (((decl)->common.readonly_flag) && !((decl)->common.public_flag)
         && (optimize || !flag_keep_static_consts
      || ((decl)->decl.artificial_flag)))
  needed = 0;

       if (needed)
  {
    reconsider = 1;
    rest_of_decl_compilation (decl, ((void *)0), 1, 1);
  }
     }

   if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
       && ((decl)->decl.initial) != 0
       && ((decl)->decl.u2.f) != 0
       && (flag_keep_inline_functions
    || (((decl)->common.public_flag) && !((decl)->decl.comdat_flag))
    || ((decl_assembler_name (decl))->common.static_flag)))
     {
       reconsider = 1;
       output_inline_function (decl);
     }
 }

      if (reconsider)
 output_something = 1;
    }
  while (reconsider);

  return output_something;
}




void
check_global_declarations (vec, len)
     tree *vec;
     int len;
{
  tree decl;
  int i;

  for (i = 0; i < len; i++)
    {
      decl = vec[i];

      if (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->common.static_flag)
   && ! ((decl)->common.asm_written_flag))



 ((decl)->decl.rtl = ((rtx) 0));






      if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
   && (warn_unused_function
       || ((decl_assembler_name (decl))->common.static_flag))
   && ((decl)->decl.initial) == 0
   && ((decl)->decl.external_flag)
   && ! ((decl)->decl.artificial_flag)
   && ! ((decl)->common.public_flag))
 {
   if (((decl_assembler_name (decl))->common.static_flag))
     pedwarn_with_decl (decl,
          "`%s' used but never defined");
   else
     warning_with_decl (decl,
          "`%s' declared `static' but never defined");

   ((decl)->common.public_flag) = 1;
   assemble_external (decl);
 }


      if (((warn_unused_function && ((enum tree_code) (decl)->common.code) == FUNCTION_DECL)


    || (warn_unused_variable
        && ((enum tree_code) (decl)->common.code) == VAR_DECL && ! ((decl)->common.readonly_flag)))
   && ! ((decl)->decl.in_system_header_flag)
   && ! ((decl)->common.used_flag)


   && ! ((((decl)->decl.name))->common.used_flag)
   && ! ((decl)->decl.external_flag)
   && ! ((decl)->common.public_flag)

   && ! (((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->decl.regdecl_flag))

   && (*lang_hooks.decls.warn_unused_global) (decl))
 warning_with_decl (decl, "`%s' defined but not used");



      if ((global_dc)->diagnostic_count[(int) (DK_ERROR)] == 0 && (global_dc)->diagnostic_count[(int) (DK_SORRY)] == 0)
 {
   timevar_push (TV_SYMOUT);



   timevar_pop (TV_SYMOUT);
 }
    }
}





void
push_srcloc (file, line)
     const char *file;
     int line;
{
  struct file_stack *fs;

  if (input_file_stack)
    {
      input_file_stack->name = input_filename;
      input_file_stack->line = lineno;
    }

  fs = (struct file_stack *) xmalloc (sizeof (struct file_stack));
  fs->name = input_filename = file;
  fs->line = lineno = line;
  fs->next = input_file_stack;
  input_file_stack = fs;
  input_file_stack_tick++;
}





void
pop_srcloc ()
{
  struct file_stack *fs;

  fs = input_file_stack;
  input_file_stack = fs->next;
  free (fs);
  input_file_stack_tick++;

  if (!input_file_stack)
    fancy_abort ("../../../kg++fe/gnu/toplev.c", 2239, __FUNCTION__);
  input_filename = input_file_stack->name;
  lineno = input_file_stack->line;
}
# 2251 "../../../kg++fe/gnu/toplev.c"
void
compile_file (name)
     char *name;

{



  if (aux_base_name == 0)
        aux_base_name = name ? name : "gccaux";


  init_final (main_input_filename);
  init_branch_prob (aux_base_name);

  timevar_push (TV_PARSE);



  (*lang_hooks.parse_file) (set_yydebug);



  (*lang_hooks.clear_binding_stack) ();


  if (parse_tree_dump)
    {
      close_dump_file (DFI_sgi_parse_tree, ((void *)0), (rtx) 0);
    }




  timevar_pop (TV_PARSE);

  if (flag_syntax_only)
    return;

  (*lang_hooks.decls.final_write_globals)();
# 2299 "../../../kg++fe/gnu/toplev.c"
    output_func_start_profiler ();



  weak_finish ();
# 2320 "../../../kg++fe/gnu/toplev.c"
  dw2_output_indirect_constants ();

  end_final (aux_base_name);

  if (profile_arc_flag || flag_test_coverage || flag_branch_probabilities)
    {
      timevar_push (TV_DUMP);
      open_dump_file (DFI_bp, ((void *)0));

      end_branch_prob ();

      close_dump_file (DFI_bp, ((void *)0), (rtx) 0);
      timevar_pop (TV_DUMP);
    }
# 2345 "../../../kg++fe/gnu/toplev.c"
  if (!flag_no_ident)
    fprintf (asm_out_file, "%s\"GCC: (GNU) %s\"\n",
      "\t.ident\t", version_string);


  if (optimize > 0 && open_dump_file (DFI_combine, ((void *)0)))
    {
      timevar_push (TV_DUMP);
      dump_combine_total_stats (rtl_dump_file);
      close_dump_file (DFI_combine, ((void *)0), (rtx) 0);
      timevar_pop (TV_DUMP);
    }






  finalize ();


  timevar_stop (TV_TOTAL);
  timevar_print (stderr);

}
# 2384 "../../../kg++fe/gnu/toplev.c"
void
rest_of_decl_compilation (decl, asmspec, top_level, at_end)
     tree decl;
     const char *asmspec;
     int top_level;
     int at_end;
{
# 2401 "../../../kg++fe/gnu/toplev.c"
  {
    tree alias;
    alias = lookup_attribute ("alias", ((decl)->decl.attributes));
    if (alias)
      {
 alias = ((((alias)->list.value))->list.value);
 alias = (__builtin_constant_p (((alias)->string.pointer)) ? get_identifier_with_length ((((alias)->string.pointer)), (unsigned) strlen (((alias)->string.pointer))) : (get_identifier) (((alias)->string.pointer)));
 assemble_alias (decl, alias);





 gxx_emits_decl (decl);

      }
  }



  if (((decl)->common.static_flag) || ((decl)->decl.external_flag)
      || ((enum tree_code) (decl)->common.code) == FUNCTION_DECL)
    {
      timevar_push (TV_VARCONST);

      if (asmspec)
 make_decl_rtl (decl, asmspec);



      if (at_end || !((decl)->decl.defer_output))
 assemble_variable (decl, top_level, at_end, 0);
      if (decl == last_assemble_variable_decl)
 {
   do { const char *name = ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx))->fld[0]).rtstr); long long size; if (!flag_inhibit_size_directive && ((decl)->decl.size) && ! at_end && top_level && ((decl)->decl.initial) == global_trees[TI_ERROR_MARK] && !size_directive_output) { size_directive_output = 1; size = int_size_in_bytes (((decl)->common.type)); do { long long size_ = (size); fputs_unlocked ("\t.size\t", asm_out_file); assemble_name (asm_out_file, name); fputs_unlocked (", ", asm_out_file); fprintf (asm_out_file, "%lld", size_); putc_unlocked ('\n', asm_out_file); } while (0); } } while (0);

 }

      timevar_pop (TV_VARCONST);
    }
  else if (((decl)->decl.regdecl_flag) && asmspec != 0)
    {
      if (decode_reg_name (asmspec) >= 0)
 {
   ((decl)->decl.rtl = ((rtx) 0));
   make_decl_rtl (decl, asmspec);




          ((decl)->decl.thunk_delta) = decode_reg_name (asmspec) + 1;




 }
      else
 {
   error ("invalid register name `%s' for register variable", asmspec);
   ((decl)->decl.regdecl_flag) = 0;
   if (!top_level)
     expand_decl (decl);
 }
    }

  else if ((write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
    && ((enum tree_code) (decl)->common.code) == TYPE_DECL)
    {
      timevar_push (TV_SYMOUT);
      dbxout_symbol (decl, 0);
      timevar_pop (TV_SYMOUT);
    }
# 2484 "../../../kg++fe/gnu/toplev.c"
  else if ((write_symbols == DWARF2_DEBUG
    || write_symbols == VMS_AND_DWARF2_DEBUG)
    && top_level
    && ((enum tree_code) (decl)->common.code) == TYPE_DECL)
    {
      timevar_push (TV_SYMOUT);
      dwarf2out_decl (decl);
      timevar_pop (TV_SYMOUT);
    }

}



void
rest_of_type_compilation (type, toplev)

     tree type;
     int toplev;




{


  if ((global_dc)->diagnostic_count[(int) (DK_ERROR)] != 0 || (global_dc)->diagnostic_count[(int) (DK_SORRY)] != 0)
    return;

  timevar_push (TV_SYMOUT);

  if (write_symbols == DBX_DEBUG || write_symbols == XCOFF_DEBUG)
    dbxout_symbol (((type)->common.chain), !toplev);






  if ((write_symbols == DWARF2_DEBUG
       || write_symbols == VMS_AND_DWARF2_DEBUG)
      && toplev)
    dwarf2out_decl (((type)->common.chain));

  timevar_pop (TV_SYMOUT);
}







void
rest_of_compilation (decl)
     tree decl;
{
  rtx insns;
  int tem;
  int failure = 0;
  int rebuild_label_notes_after_reload;
  int register_life_up_to_date;

  timevar_push (TV_REST_OF_COMPILATION);



  generating_concat_p = 0;



  cse_not_expected = ! optimize;



  if (!cfun->x_whole_function_mode_p)
    identify_blocks ();



  if (cfun->x_whole_function_mode_p)
    reorder_blocks ();

  init_flow ();




  if (((decl)->decl.u2.f) == 0)
    {
      int inlinable = 0;
      tree parent;
      const char *lose;





      for (parent = ((current_function_decl)->decl.context);
    parent != (tree) ((void *)0);
    parent = get_containing_scope (parent))
 if (((enum tree_code) (parent)->common.code) == FUNCTION_DECL
     && ((parent)->decl.inline_flag) && ((parent)->decl.external_flag))
   {
     ((decl)->decl.initial) = 0;
     goto exit_rest_of_compilation;
   }
 else if ((tree_code_type[(int) (((enum tree_code) (parent)->common.code))] == 't'))

   break;


      if ((((decl)->decl.inline_flag) && !flag_no_inline)
   || flag_inline_functions)
 {
   timevar_push (TV_INTEGRATION);
   lose = function_cannot_inline_p (decl);
   timevar_pop (TV_INTEGRATION);
   if (lose || ! optimize)
     {
       if (warn_inline && ((decl)->decl.inline_flag))
  warning_with_decl (decl, lose);
       ((decl)->decl.abstract_origin) = 0;



       if (((decl)->decl.external_flag))
  {
    ((decl)->decl.initial) = 0;
    goto exit_rest_of_compilation;
  }
     }
          else
            {





       if (!((decl)->decl.inline_flag))
  ((decl)->decl.inlined_function_flag) = 1;
       inlinable = ((decl)->decl.inline_flag) = 1;
     }
 }

      insns = get_insns ();



      if (open_dump_file (DFI_rtl, decl))
 {
   if (((decl)->decl.u2.f))
     fprintf (rtl_dump_file, ";; (integrable)\n\n");
   close_dump_file (DFI_rtl, print_rtl, insns);
 }




      convert_from_eh_region_ranges ();
# 2652 "../../../kg++fe/gnu/toplev.c"
      if (inlinable
   || (((decl)->decl.inline_flag)
       && ((! ((decl)->common.public_flag) && ! ((decl)->common.addressable_flag)
     && ! ((decl_assembler_name (decl))->common.static_flag)
     && ! flag_keep_inline_functions)
    || ((decl)->decl.external_flag))))
 ((decl)->decl.defer_output) = 1;

      if (((decl)->decl.inline_flag))





 (*debug_hooks->deferred_inline_function) (decl);

      if (((decl)->decl.defer_output))
 {




   if (warn_return_type)
     {
       int saved_optimize = optimize;

       optimize = 0;
       rebuild_jump_labels (insns);
       find_exception_handler_labels ();
       find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
       cleanup_cfg (8 | 16);
       optimize = saved_optimize;


       free_bb_for_insn ();
     }

   set_nothrow_function_flags ();
   if (current_function_nothrow)


     ((current_function_decl)->common.nothrow_flag) = 1;

   timevar_push (TV_INTEGRATION);
   save_for_inline (decl);
   timevar_pop (TV_INTEGRATION);
   ((decl)->decl.u2.f)->inlinable = inlinable;
   goto exit_rest_of_compilation;
 }




      if (((decl)->decl.external_flag))
 goto exit_rest_of_compilation;
    }



  {
    tree parent;
    for (parent = ((current_function_decl)->decl.context);
  parent != (tree) ((void *)0);
  parent = get_containing_scope (parent))
      if (((enum tree_code) (parent)->common.code) == FUNCTION_DECL)
 ((decl_assembler_name (parent))->common.static_flag) = 1;
  }




  if (((decl)->decl.inline_flag))
    (*debug_hooks->outlining_inline_function) (decl);




  remove_unnecessary_notes ();
  reorder_blocks ();

  ggc_collect ();


  init_function_for_compilation ();

  if (! ((decl)->decl.defer_output))
    ((decl)->common.asm_written_flag) = 1;







  rtx_equal_function_value_matters = 0;
  purge_hard_subreg_sets (get_insns ());


  goto turn_rtl_into_assembler_code;





  if (((rtl_dump_and_exit || flag_syntax_only)





      ) || (global_dc)->diagnostic_count[(int) (DK_ERROR)] || (global_dc)->diagnostic_count[(int) (DK_SORRY)])
    goto exit_rest_of_compilation;

  timevar_push (TV_JUMP);
  open_dump_file (DFI_sibling, decl);
  insns = get_insns ();
  rebuild_jump_labels (insns);
  find_exception_handler_labels ();
  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);

  delete_unreachable_blocks ();



  check_function_return_warnings ();


  if (flag_guess_branch_prob)
    {
      timevar_push (TV_BRANCH_PROB);
      note_prediction_to_br_prob ();
      timevar_pop (TV_BRANCH_PROB);
    }



  if (flag_optimize_sibling_calls)
    {
      rtx insn;
      optimize_sibling_and_tail_recursive_calls ();


      free_bb_for_insn ();
      find_exception_handler_labels ();
      rebuild_jump_labels (insns);
      find_basic_blocks (insns, max_reg_num (), rtl_dump_file);







      for (insn = get_insns (); insn; insn = (((insn)->fld[2]).rtx))
 if (((enum rtx_code) (insn)->code) == NOTE
     && (((insn)->fld[5]).rtint) == NOTE_INSN_PREDICTION)
   delete_insn (insn);
    }
  close_dump_file (DFI_sibling, print_rtl, get_insns ());
  timevar_pop (TV_JUMP);

  scope_to_insns_initialize ();

  if (doing_eh (0))
    {
      timevar_push (TV_JUMP);
      open_dump_file (DFI_eh, decl);

      finish_eh_generation ();

      close_dump_file (DFI_eh, print_rtl, get_insns ());
      timevar_pop (TV_JUMP);
    }



  emit_initial_value_sets ();
# 2839 "../../../kg++fe/gnu/toplev.c"
  insns = get_insns ();


  unshare_all_rtl (current_function_decl, insns);
# 2854 "../../../kg++fe/gnu/toplev.c"
  instantiate_virtual_regs (current_function_decl, insns);

  open_dump_file (DFI_jump, decl);





  timevar_push (TV_JUMP);


  if (flag_guess_branch_prob)
    expected_value_to_br_prob ();

  reg_scan (insns, max_reg_num (), 0);
  rebuild_jump_labels (insns);
  find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
  delete_trivially_dead_insns (insns, max_reg_num ());
  if (rtl_dump_file)
    dump_flow_info (rtl_dump_file);
  cleanup_cfg ((optimize ? 1 : 0) | 16
        | (flag_thread_jumps ? 64 : 0));


  if (optimize)
    {
      free_bb_for_insn ();
      copy_loop_headers (insns);
      find_basic_blocks (insns, max_reg_num (), rtl_dump_file);
    }
  purge_line_number_notes (insns);

  timevar_pop (TV_JUMP);
  close_dump_file (DFI_jump, print_rtl, insns);


  if (rtl_dump_and_exit || flag_syntax_only || ((decl)->decl.defer_output))
    {
      goto exit_rest_of_compilation;
    }




  if (optimize > 0 && flag_ssa)
    {


      timevar_push (TV_TO_SSA);
      open_dump_file (DFI_ssa, decl);

      cleanup_cfg (1 | 16);
      convert_to_ssa ();

      close_dump_file (DFI_ssa, print_rtl_with_bb, insns);
      timevar_pop (TV_TO_SSA);


      if (flag_ssa_ccp)
 {
   timevar_push (TV_SSA_CCP);
   open_dump_file (DFI_ssa_ccp, decl);

   ssa_const_prop ();

   close_dump_file (DFI_ssa_ccp, print_rtl_with_bb, get_insns ());
   timevar_pop (TV_SSA_CCP);
 }
# 2932 "../../../kg++fe/gnu/toplev.c"
      if (flag_ssa_dce)
 {


   timevar_push (TV_SSA_DCE);
   open_dump_file (DFI_ssa_dce, decl);

   insns = get_insns ();
   ssa_eliminate_dead_code ();

   close_dump_file (DFI_ssa_dce, print_rtl_with_bb, insns);
   timevar_pop (TV_SSA_DCE);
 }



      timevar_push (TV_FROM_SSA);
      open_dump_file (DFI_ussa, decl);

      convert_from_ssa ();

      reg_scan (insns, max_reg_num (), 1);

      close_dump_file (DFI_ussa, print_rtl_with_bb, insns);
      timevar_pop (TV_FROM_SSA);

      ggc_collect ();
    }

  timevar_push (TV_JUMP);
  if (optimize)
    cleanup_cfg (1 | 16);


  if (flag_delete_null_pointer_checks)
    {
      open_dump_file (DFI_null, decl);
      if (rtl_dump_file)
 dump_flow_info (rtl_dump_file);

      if (delete_null_pointer_checks (insns))
        cleanup_cfg (1 | 16);

      close_dump_file (DFI_null, print_rtl_with_bb, insns);
    }






  renumber_insns (rtl_dump_file);
  timevar_pop (TV_JUMP);

  close_dump_file (DFI_jump, print_rtl_with_bb, insns);

  ggc_collect ();






  if (optimize > 0)
    {
      open_dump_file (DFI_cse, decl);
      if (rtl_dump_file)
 dump_flow_info (rtl_dump_file);
      timevar_push (TV_CSE);

      reg_scan (insns, max_reg_num (), 1);

      tem = cse_main (insns, max_reg_num (), 0, rtl_dump_file);
      if (tem)
 rebuild_jump_labels (insns);
      purge_all_dead_edges (0);

      delete_trivially_dead_insns (insns, max_reg_num ());



      cse_not_expected = !flag_rerun_cse_after_loop && !flag_gcse;

      if (tem || optimize > 1)
 cleanup_cfg (1 | 16);

      if (flag_delete_null_pointer_checks)
 {
   timevar_push (TV_JUMP);

   if (delete_null_pointer_checks (insns))
     cleanup_cfg (1 | 16);
   timevar_pop (TV_JUMP);
 }



      renumber_insns (rtl_dump_file);

      timevar_pop (TV_CSE);
      close_dump_file (DFI_cse, print_rtl_with_bb, insns);
    }

  open_dump_file (DFI_addressof, decl);

  purge_addressof (insns);
  if (optimize && purge_all_dead_edges (0))
    delete_unreachable_blocks ();
  reg_scan (insns, max_reg_num (), 1);

  close_dump_file (DFI_addressof, print_rtl, insns);

  ggc_collect ();



  if (optimize > 0 && flag_gcse)
    {
      int save_csb, save_cfj;
      int tem2 = 0;

      timevar_push (TV_GCSE);
      open_dump_file (DFI_gcse, decl);

      tem = gcse_main (insns, rtl_dump_file);
      rebuild_jump_labels (insns);
      delete_trivially_dead_insns (insns, max_reg_num ());

      save_csb = flag_cse_skip_blocks;
      save_cfj = flag_cse_follow_jumps;
      flag_cse_skip_blocks = flag_cse_follow_jumps = 0;



      if (flag_expensive_optimizations)
 {
   timevar_push (TV_CSE);
   reg_scan (insns, max_reg_num (), 1);
   tem2 = cse_main (insns, max_reg_num (), 0, rtl_dump_file);
   purge_all_dead_edges (0);
   delete_trivially_dead_insns (insns, max_reg_num ());
   timevar_pop (TV_CSE);
   cse_not_expected = !flag_rerun_cse_after_loop;
 }



      while (tem || tem2)
 {
   tem = tem2 = 0;
   timevar_push (TV_JUMP);
   rebuild_jump_labels (insns);
   cleanup_cfg (1 | 16);
   timevar_pop (TV_JUMP);

   if (flag_expensive_optimizations)
     {
       timevar_push (TV_CSE);
       reg_scan (insns, max_reg_num (), 1);
       tem2 = cse_main (insns, max_reg_num (), 0, rtl_dump_file);
       purge_all_dead_edges (0);
       delete_trivially_dead_insns (insns, max_reg_num ());
       timevar_pop (TV_CSE);
     }
 }

      close_dump_file (DFI_gcse, print_rtl_with_bb, insns);
      timevar_pop (TV_GCSE);

      ggc_collect ();
      flag_cse_skip_blocks = save_csb;
      flag_cse_follow_jumps = save_cfj;



    }



  if (optimize > 0 && flag_loop_optimize)
    {
      int do_unroll, do_prefetch;

      timevar_push (TV_LOOP);
      delete_dead_jumptables ();
      cleanup_cfg (1 | 16);
      open_dump_file (DFI_loop, decl);

      free_bb_for_insn ();

      do_unroll = flag_unroll_loops ? 1 : 8;
      do_prefetch = flag_prefetch_loop_arrays ? 4 : 0;
      if (flag_rerun_loop_opt)
 {
   cleanup_barriers ();


   loop_optimize (insns, rtl_dump_file, do_unroll);
   do_unroll = 0;





   delete_trivially_dead_insns (insns, max_reg_num ());



   reg_scan (insns, max_reg_num (), 1);
 }
      cleanup_barriers ();
      loop_optimize (insns, rtl_dump_file, do_unroll | 2 | do_prefetch);


      delete_trivially_dead_insns (insns, max_reg_num ());
      close_dump_file (DFI_loop, print_rtl, insns);
      timevar_pop (TV_LOOP);
      find_basic_blocks (insns, max_reg_num (), rtl_dump_file);

      ggc_collect ();
    }




  timevar_push (TV_FLOW);
  open_dump_file (DFI_cfg, decl);
  if (rtl_dump_file)
    dump_flow_info (rtl_dump_file);
  if (optimize)
    cleanup_cfg (1
   | (flag_thread_jumps ? 64 : 0));
# 3172 "../../../kg++fe/gnu/toplev.c"
  if (optimize)
    mark_constant_function ();

  close_dump_file (DFI_cfg, print_rtl_with_bb, insns);


  if (optimize > 0 || cfun->arc_profile || flag_branch_probabilities)
    {
      struct loops loops;

      timevar_push (TV_BRANCH_PROB);
      open_dump_file (DFI_bp, decl);
      if (cfun->arc_profile || flag_branch_probabilities)
 branch_prob ();



      flow_loops_find (&loops, 1);

      if (rtl_dump_file)
 flow_loops_dump (&loops, rtl_dump_file, ((void *)0), 0);


      if (flag_guess_branch_prob)
 estimate_probability (&loops);

      flow_loops_free (&loops);
      close_dump_file (DFI_bp, print_rtl_with_bb, insns);
      timevar_pop (TV_BRANCH_PROB);
    }
  if (optimize > 0)
    {
      open_dump_file (DFI_ce1, decl);
      if (flag_if_conversion)
 {
   timevar_push (TV_IFCVT);
   if (rtl_dump_file)
     dump_flow_info (rtl_dump_file);
   cleanup_cfg (1);
   reg_scan (insns, max_reg_num (), 0);
   if_convert (0);
   timevar_pop (TV_IFCVT);
 }
      timevar_push (TV_JUMP);
      cleanup_cfg (1);
      reg_scan (insns, max_reg_num (), 0);
      timevar_pop (TV_JUMP);
      close_dump_file (DFI_ce1, print_rtl_with_bb, get_insns ());
    }
  if (flag_tracer)
    {
      timevar_push (TV_TRACER);
      open_dump_file (DFI_tracer, decl);
      if (rtl_dump_file)
 dump_flow_info (rtl_dump_file);
      tracer ();
      cleanup_cfg (1);
      reg_scan (insns, max_reg_num (), 0);
      close_dump_file (DFI_tracer, print_rtl_with_bb, get_insns ());
      timevar_pop (TV_TRACER);
    }

  if (flag_rerun_cse_after_loop)
    {
      timevar_push (TV_CSE2);
      open_dump_file (DFI_cse2, decl);
      if (rtl_dump_file)
 dump_flow_info (rtl_dump_file);

      tem = cse_main (insns, max_reg_num (), 1, rtl_dump_file);
      purge_all_dead_edges (0);
      delete_trivially_dead_insns (insns, max_reg_num ());

      if (tem)
 {
   timevar_push (TV_JUMP);
   rebuild_jump_labels (insns);
   cleanup_cfg (1);
   timevar_pop (TV_JUMP);
 }
      reg_scan (insns, max_reg_num (), 0);
      close_dump_file (DFI_cse2, print_rtl_with_bb, insns);
      ggc_collect ();
      timevar_pop (TV_CSE2);
    }

  cse_not_expected = 1;

  open_dump_file (DFI_life, decl);
  regclass_init ();




  life_analysis (insns, rtl_dump_file, (1 | 2 | 4 | 8 | 16 | 64 | 32 | 256));
  if (optimize)
    cleanup_cfg ((optimize ? 1 : 0) | 32
   | (flag_thread_jumps ? 64 : 0));
  timevar_pop (TV_FLOW);

  if (warn_uninitialized || extra_warnings)
    {
      uninitialized_vars_warning (((decl)->decl.initial));
      if (extra_warnings)
 setjmp_args_warning ();
    }

  if (optimize)
    {
      if (!flag_new_regalloc && initialize_uninitialized_subregs ())
 {


   insns = get_insns ();
   allocate_reg_life_data ();
   update_life_info (((void *)0), UPDATE_LIFE_GLOBAL_RM_NOTES,
       2 | 4 | 1);
 }
    }

  no_new_pseudos = 1;

  close_dump_file (DFI_life, print_rtl_with_bb, insns);

  ggc_collect ();



  if (optimize > 0)
    {
      int rebuild_jump_labels_after_combine = 0;

      timevar_push (TV_COMBINE);
      open_dump_file (DFI_combine, decl);

      rebuild_jump_labels_after_combine
 = combine_instructions (insns, max_reg_num ());




      if (rebuild_jump_labels_after_combine)
 {
   timevar_push (TV_JUMP);
   rebuild_jump_labels (insns);
   timevar_pop (TV_JUMP);

   cleanup_cfg (1 | 32);
 }

      close_dump_file (DFI_combine, print_rtl_with_bb, insns);
      timevar_pop (TV_COMBINE);

      ggc_collect ();
    }



  if (flag_if_conversion)
    {
      timevar_push (TV_IFCVT);
      open_dump_file (DFI_ce2, decl);

      no_new_pseudos = 0;
      if_convert (1);
      no_new_pseudos = 1;

      close_dump_file (DFI_ce2, print_rtl_with_bb, insns);
      timevar_pop (TV_IFCVT);
    }



  if (optimize > 0 && (flag_regmove || flag_expensive_optimizations))
    {
      timevar_push (TV_REGMOVE);
      open_dump_file (DFI_regmove, decl);

      regmove_optimize (insns, max_reg_num (), rtl_dump_file);

      cleanup_cfg (1 | 32);
      close_dump_file (DFI_regmove, print_rtl_with_bb, insns);
      timevar_pop (TV_REGMOVE);

      ggc_collect ();
    }



  split_all_insns (1);



  register_life_up_to_date = 0;
# 3377 "../../../kg++fe/gnu/toplev.c"
  timevar_push (TV_SCHED);





  if (optimize > 0 && flag_schedule_insns)
    {
      open_dump_file (DFI_sched, decl);




      schedule_insns (rtl_dump_file);

      close_dump_file (DFI_sched, print_rtl_with_bb, insns);



      register_life_up_to_date = 1;
    }

  timevar_pop (TV_SCHED);

  ggc_collect ();




  current_function_is_leaf = leaf_function_p ();

  timevar_push (TV_LOCAL_ALLOC);
  open_dump_file (DFI_lreg, decl);






  if (! register_life_up_to_date)
    recompute_reg_usage (insns, ! optimize_size);

  if (flag_new_regalloc)
    {
      delete_trivially_dead_insns (insns, max_reg_num ());
      reg_alloc ();

      timevar_pop (TV_LOCAL_ALLOC);
      if (dump_file[DFI_lreg].enabled)
        {
          timevar_push (TV_DUMP);

          close_dump_file (DFI_lreg, ((void *)0), ((void *)0));
          timevar_pop (TV_DUMP);
        }


      timevar_push (TV_GLOBAL_ALLOC);
      open_dump_file (DFI_greg, decl);

      build_insn_chain (insns);
      failure = reload (insns, 0);

      timevar_pop (TV_GLOBAL_ALLOC);

      if (dump_file[DFI_greg].enabled)
        {
          timevar_push (TV_DUMP);

          dump_global_regs (rtl_dump_file);

          close_dump_file (DFI_greg, print_rtl_with_bb, insns);
          timevar_pop (TV_DUMP);
        }

      if (failure)
        goto exit_rest_of_compilation;
      reload_completed = 1;
      rebuild_label_notes_after_reload = 0;
    }
  else
    {

      allocate_reg_info (max_regno, 0, 1);


      reg_equiv_memory_loc = (rtx *) xcalloc (max_regno, sizeof (rtx));

      allocate_initial_values (reg_equiv_memory_loc);

      regclass (insns, max_reg_num (), rtl_dump_file);
      rebuild_label_notes_after_reload = local_alloc ();

      timevar_pop (TV_LOCAL_ALLOC);

      if (dump_file[DFI_lreg].enabled)
 {
   timevar_push (TV_DUMP);

   dump_flow_info (rtl_dump_file);
   dump_local_alloc (rtl_dump_file);

   close_dump_file (DFI_lreg, print_rtl_with_bb, insns);
   timevar_pop (TV_DUMP);
 }

      ggc_collect ();

      timevar_push (TV_GLOBAL_ALLOC);
      open_dump_file (DFI_greg, decl);




      if (optimize)
 failure = global_alloc (rtl_dump_file);
      else
 {
   build_insn_chain (insns);
   failure = reload (insns, 0);
 }

      timevar_pop (TV_GLOBAL_ALLOC);

      if (dump_file[DFI_greg].enabled)
 {
   timevar_push (TV_DUMP);

   dump_global_regs (rtl_dump_file);

   close_dump_file (DFI_greg, print_rtl_with_bb, insns);
   timevar_pop (TV_DUMP);
 }

      if (failure)
 goto exit_rest_of_compilation;
    }

  ggc_collect ();

  open_dump_file (DFI_postreload, decl);


  if (optimize > 0)
    {
      timevar_push (TV_RELOAD_CSE_REGS);
      reload_cse_regs (insns);
      timevar_pop (TV_RELOAD_CSE_REGS);
    }




  if (rebuild_label_notes_after_reload)
    {
      timevar_push (TV_JUMP);

      rebuild_jump_labels (insns);
      purge_all_dead_edges (0);

      timevar_pop (TV_JUMP);
    }

  close_dump_file (DFI_postreload, print_rtl_with_bb, insns);


  timevar_push (TV_FLOW2);
  open_dump_file (DFI_flow2, decl);







  if (optimize > 0)

    split_all_insns (0);

  if (optimize)
    cleanup_cfg (1);





  thread_prologue_and_epilogue_insns (insns);

  if (optimize)
    {
      life_analysis (insns, rtl_dump_file, (1 | 2 | 4 | 8 | 16 | 64 | 32 | 256));
      cleanup_cfg (1 | 32
     | (flag_crossjumping ? 2 : 0));






      if (!1)

 combine_stack_adjustments ();

      ggc_collect ();
    }

  flow2_completed = 1;

  close_dump_file (DFI_flow2, print_rtl_with_bb, insns);
  timevar_pop (TV_FLOW2);
# 3601 "../../../kg++fe/gnu/toplev.c"
  if (optimize > 0 && (flag_rename_registers || flag_cprop_registers))
    {
      timevar_push (TV_RENAME_REGISTERS);
      open_dump_file (DFI_rnreg, decl);

      if (flag_rename_registers)
 regrename_optimize ();
      if (flag_cprop_registers)
 copyprop_hardreg_forward ();

      close_dump_file (DFI_rnreg, print_rtl_with_bb, insns);
      timevar_pop (TV_RENAME_REGISTERS);
    }

  if (flag_if_conversion2)
    {
      timevar_push (TV_IFCVT2);
      open_dump_file (DFI_ce3, decl);

      if_convert (1);

      close_dump_file (DFI_ce3, print_rtl_with_bb, insns);
      timevar_pop (TV_IFCVT2);
    }


  if (optimize > 0 && flag_schedule_insns_after_reload)
    {
      timevar_push (TV_SCHED2);
      open_dump_file (DFI_sched2, decl);




      split_all_insns (1);

      schedule_insns (rtl_dump_file);

      close_dump_file (DFI_sched2, print_rtl_with_bb, insns);
      timevar_pop (TV_SCHED2);

      ggc_collect ();
    }
# 3680 "../../../kg++fe/gnu/toplev.c"
  if (optimize > 0)
    {
      timevar_push (TV_REORDER_BLOCKS);
      open_dump_file (DFI_bbro, decl);





      cleanup_cfg (1 | 4
     | (flag_crossjumping ? 2 : 0));
      if (flag_reorder_blocks)
 {
   reorder_basic_blocks ();
   cleanup_cfg (1 | 4);
 }

      close_dump_file (DFI_bbro, print_rtl_with_bb, insns);
      timevar_pop (TV_REORDER_BLOCKS);
    }
  compute_alignments ();


  free_bb_for_insn ();



  timevar_push (TV_MACH_DEP);
  open_dump_file (DFI_mach, decl);

  machine_dependent_reorg (insns);

  close_dump_file (DFI_mach, print_rtl, insns);
  timevar_pop (TV_MACH_DEP);

  ggc_collect ();


  purge_line_number_notes (insns);
  cleanup_barriers ();





  if (optimize > 0 && flag_delayed_branch)
    {
      timevar_push (TV_DBR_SCHED);
      open_dump_file (DFI_dbr, decl);

      dbr_schedule (insns, rtl_dump_file);

      close_dump_file (DFI_dbr, print_rtl, insns);
      timevar_pop (TV_DBR_SCHED);

      ggc_collect ();
    }



  timevar_push (TV_SHORTEN_BRANCH);
  split_all_insns_noflow ();
  timevar_pop (TV_SHORTEN_BRANCH);


  convert_to_eh_region_ranges ();


  timevar_push (TV_SHORTEN_BRANCH);
  shorten_branches (get_insns ());
  timevar_pop (TV_SHORTEN_BRANCH);

  set_nothrow_function_flags ();
  if (current_function_nothrow)


    ((current_function_decl)->common.nothrow_flag) = 1;







  turn_rtl_into_assembler_code:
# 3783 "../../../kg++fe/gnu/toplev.c"
  gxx_emits_decl (decl);




  timevar_push (TV_FINAL);
  {
    rtx x;
    const char *fnname;




    x = ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl));
    if (((enum rtx_code) (x)->code) != MEM)
      fancy_abort ("../../../kg++fe/gnu/toplev.c", 3798, __FUNCTION__);
    x = (((x)->fld[0]).rtx);
    if (((enum rtx_code) (x)->code) != SYMBOL_REF)
      fancy_abort ("../../../kg++fe/gnu/toplev.c", 3801, __FUNCTION__);
    fnname = (((x)->fld[0]).rtstr);

    assemble_start_function (decl, fnname);
    final_start_function (insns, asm_out_file, optimize);
    final (insns, asm_out_file, optimize, 0);
    final_end_function ();







    assemble_end_function (decl, fnname);



    output_function_exception_table ();


    if (! quiet_flag)
      fflush (asm_out_file);


    goto exit_rest_of_compilation;



    free_basic_block_vars (0);


    regset_release_memory ();
  }
  timevar_pop (TV_FINAL);

  ggc_collect ();
# 3850 "../../../kg++fe/gnu/toplev.c"
  timevar_push (TV_SYMOUT);
  (*debug_hooks->function_decl) (decl);
  timevar_pop (TV_SYMOUT);

 exit_rest_of_compilation:
# 3864 "../../../kg++fe/gnu/toplev.c"
  reload_completed = 0;
  flow2_completed = 0;
  no_new_pseudos = 0;

  timevar_push (TV_FINAL);



  init_insn_lengths ();


  init_temp_slots ();

  free_basic_block_vars (0);
  free_bb_for_insn ();

  timevar_pop (TV_FINAL);
# 3891 "../../../kg++fe/gnu/toplev.c"
  init_recog_no_volatile ();


  free_after_parsing (cfun);
  if (! ((decl)->decl.defer_output))
    {
      free_after_compilation (cfun);



      ((decl)->decl.u2.f) = 0;
    }
  cfun = 0;

  ggc_collect ();

  timevar_pop (TV_REST_OF_COMPILATION);
}

static void
display_help ()
{
  int undoc;
  unsigned long i;
  const char *lang;

  printf (("  -ffixed-<register>      Mark <register> as being unavailable to the compiler\n"));
  printf (("  -fcall-used-<register>  Mark <register> as being corrupted by function calls\n"));
  printf (("  -fcall-saved-<register> Mark <register> as being preserved across functions\n"));
  printf (("  -finline-limit=<number> Limits the size of inlined functions to <number>\n"));
  printf (("  -fmessage-length=<number> Limits diagnostics messages lengths to <number> characters per line.  0 suppresses line-wrapping\n"));
  printf (("  -fdiagnostics-show-location=[once | every-line] Indicates how often source location information should be emitted, as prefix, at the beginning of diagnostics when line-wrapping\n"));
  printf (("  -ftls-model=[global-dynamic | local-dynamic | initial-exec | local-exec] Indicates the default thread-local storage code generation model\n"));
  printf (("  -fstack-limit-register=<register>  Trap if the stack goes past <register>\n"));
  printf (("  -fstack-limit-symbol=<name>  Trap if the stack goes past symbol <name>\n"));
  printf (("  -frandom-seed=<string>  Make compile reproducible using <string>\n"));


  for (i = (sizeof (f_options) / sizeof ((f_options)[0])); i--;)
    {
      const char *description = f_options[i].description;

      if (description != ((void *)0) && *description != 0)
 printf ("  -f%-21s %s\n",
  f_options[i].string, (description));
    }

  printf (("  -O[number]              Set optimization level to [number]\n"));
  printf (("  -Os                     Optimize for space rather than speed\n"));
  for (i = LAST_PARAM; i--;)
    {
      const char *description = compiler_params[i].help;
      const int length = 21 - strlen (compiler_params[i].option);

      if (description != ((void *)0) && *description != 0)
 printf ("  --param %s=<value>%.*s%s\n",
  compiler_params[i].option,
  length > 0 ? length : 1, "                     ",
  (description));
    }
  printf (("  -pedantic               Issue warnings needed by strict compliance to ISO C\n"));
  printf (("  -pedantic-errors        Like -pedantic except that errors are produced\n"));
  printf (("  -w                      Suppress warnings\n"));
  printf (("  -W                      Enable extra warnings\n"));

  for (i = (sizeof (W_options) / sizeof ((W_options)[0])); i--;)
    {
      const char *description = W_options[i].description;

      if (description != ((void *)0) && *description != 0)
 printf ("  -W%-21s %s\n",
  W_options[i].string, (description));
    }

  printf (("  -Wunused                Enable unused warnings\n"));
  printf (("  -Wlarger-than-<number>  Warn if an object is larger than <number> bytes\n"));
  printf (("  -p                      Enable function profiling\n"));
  printf (("  -o <file>               Place output into <file> \n"));
  printf (("  -G <number>             Put global and static data smaller than <number>\n                          bytes into a special section (on some targets)\n"));



  for (i = (sizeof (debug_args) / sizeof ((debug_args)[0])); i--;)
    {
      if (debug_args[i].description != ((void *)0))
 printf ("  -g%-21s %s\n",
  debug_args[i].arg, (debug_args[i].description));
    }

  printf (("  -aux-info <file>        Emit declaration info into <file>\n"));
  printf (("  -quiet                  Do not display functions compiled or elapsed time\n"));
  printf (("  -version                Display the compiler's version\n"));
  printf (("  -d[letters]             Enable dumps from specific passes of the compiler\n"));
  printf (("  -dumpbase <file>        Base name to be used for dumps from specific passes\n"));

  printf (("  -fsched-verbose=<number> Set the verbosity level of the scheduler\n"));

  printf (("  --help                  Display this information\n"));

  undoc = 0;
  lang = "language";
# 4001 "../../../kg++fe/gnu/toplev.c"
  if ((sizeof (documented_lang_options) / sizeof ((documented_lang_options)[0])) > 1)
    {
      printf (("\nLanguage specific options:\n"));

      for (i = 0; i < (sizeof (documented_lang_options) / sizeof ((documented_lang_options)[0])); i++)
 {
   const char *description = documented_lang_options[i].description;
   const char *option = documented_lang_options[i].option;

   if (description == ((void *)0))
     {
       undoc = 1;

       if (extra_warnings)
  printf (("  %-23.23s [undocumented]\n"), option);
     }
   else if (*description == 0)
     continue;
   else if (option == ((void *)0))
     {
       if (undoc)
  printf
    (("\nThere are undocumented %s specific options as well.\n"),
   lang);
       undoc = 0;

       printf (("\n Options for %s:\n"), description);

       lang = description;
     }
   else
     printf ("  %-23.23s %s\n", option, (description));
 }
    }

  if (undoc)
    printf (("\nThere are undocumented %s specific options as well.\n"),
     lang);

  display_target_options ();
}

static void
display_target_options ()
{
  int undoc, i;
  static _Bool displayed = 0;


  if (displayed)
    return;
  displayed = 1;

  if ((sizeof (target_switches) / sizeof ((target_switches)[0])) > 1

      || (sizeof (target_options) / sizeof ((target_options)[0])) > 1

      )
    {
      int doc = 0;

      undoc = 0;

      printf (("\nTarget specific options:\n"));

      for (i = (sizeof (target_switches) / sizeof ((target_switches)[0])); i--;)
 {
   const char *option = target_switches[i].name;
   const char *description = target_switches[i].description;

   if (option == ((void *)0) || *option == 0)
     continue;
   else if (description == ((void *)0))
     {
       undoc = 1;

       if (extra_warnings)
  printf (("  -m%-23.23s [undocumented]\n"), option);
     }
   else if (*description != 0)
     doc += printf ("  -m%-23.23s %s\n", option, (description));
 }


      for (i = (sizeof (target_options) / sizeof ((target_options)[0])); i--;)
 {
   const char *option = target_options[i].prefix;
   const char *description = target_options[i].description;

   if (option == ((void *)0) || *option == 0)
     continue;
   else if (description == ((void *)0))
     {
       undoc = 1;

       if (extra_warnings)
  printf (("  -m%-23.23s [undocumented]\n"), option);
     }
   else if (*description != 0)
     doc += printf ("  -m%-23.23s %s\n", option, (description));
 }

      if (undoc)
 {
   if (doc)
     printf (("\nThere are undocumented target specific options as well.\n"));
   else
     printf (("  They exist, but they are not documented.\n"));
 }
    }
}



static void
decode_d_option (arg)
     const char *arg;
{
  int i, c, matched;

  while (*arg)
    switch (c = *arg++)
      {
      case 'a':
 for (i = 0; i < (int) DFI_MAX; ++i)
   dump_file[i].enabled = 1;
 break;
      case 'A':
 flag_debug_asm = 1;
 break;

      case 'C':
        flag_bad_asm_constraint_kills_stmt = 1;
        break;

      case 'p':
 flag_print_asm_name = 1;
 break;

      case 'P':
        parse_tree_dump = 1;

        dump_file[DFI_sgi_parse_tree].enabled = 1;

        break;






      case 'v':
 graph_dump_format = vcg;
 break;
      case 'x':
 rtl_dump_and_exit = 1;
 break;
      case 'y':
 set_yydebug = 1;
 break;
      case 'D':
      case 'I':
 break;

      default:
 matched = 0;
 for (i = 0; i < (int) DFI_MAX; ++i)
   if (c == dump_file[i].debug_switch)
     {
       dump_file[i].enabled = 1;
       matched = 1;
     }

 if (! matched)
   warning ("unrecognized gcc debugging option: %c", c);
 break;
      }
}





static int
decode_f_option (arg)
     const char *arg;
{
  int j;
  const char *option_value = ((void *)0);


  for (j = (sizeof (f_options) / sizeof ((f_options)[0])); j--;)
    {
      if (!strcmp (arg, f_options[j].string))
 {
   *f_options[j].variable = f_options[j].on_value;
   return 1;
 }

      if (arg[0] == 'n' && arg[1] == 'o' && arg[2] == '-'
   && ! strcmp (arg + 3, f_options[j].string))
 {
   *f_options[j].variable = ! f_options[j].on_value;
   return 1;
 }
    }

  if (!strcmp (arg, "fast-math"))
    set_fast_math_flags (1);
  else if (!strcmp (arg, "no-fast-math"))
    set_fast_math_flags (0);
  else if ((option_value = (strncmp (arg, "inline-limit-", strlen ("inline-limit-")) ? ((void *)0) : arg + strlen ("inline-limit-")))
    || (option_value = (strncmp (arg, "inline-limit=", strlen ("inline-limit=")) ? ((void *)0) : arg + strlen ("inline-limit="))))
    {
      int val =
 read_integral_parameter (option_value, arg - 2,
     (compiler_params[(int) PARAM_MAX_INLINE_INSNS].value));
      set_param_value ("max-inline-insns", val);
      set_param_value ("max-inline-insns-single", val/2);
      set_param_value ("max-inline-insns-auto", val/2);
      set_param_value ("max-inline-insns-rtl", val);
      if (val/4 < (compiler_params[(int) PARAM_MIN_INLINE_INSNS].value))
 {
   if (val/4 > 10)
     set_param_value ("min-inline-insns", val/4);
   else
     set_param_value ("min-inline-insns", 10);
 }
    }
  else if ((option_value = (strncmp (arg, "tls-model=", strlen ("tls-model=")) ? ((void *)0) : arg + strlen ("tls-model="))))
    {
      if (strcmp (option_value, "global-dynamic") == 0)
 flag_tls_default = TLS_MODEL_GLOBAL_DYNAMIC;
      else if (strcmp (option_value, "local-dynamic") == 0)
 flag_tls_default = TLS_MODEL_LOCAL_DYNAMIC;
      else if (strcmp (option_value, "initial-exec") == 0)
 flag_tls_default = TLS_MODEL_INITIAL_EXEC;
      else if (strcmp (option_value, "local-exec") == 0)
 flag_tls_default = TLS_MODEL_LOCAL_EXEC;
      else
 warning ("`%s': unknown tls-model option", arg - 2);
    }

  else if ((option_value = (strncmp (arg, "sched-verbose=", strlen ("sched-verbose=")) ? ((void *)0) : arg + strlen ("sched-verbose="))))
    fix_sched_param ("verbose", option_value);

  else if ((option_value = (strncmp (arg, "fixed-", strlen ("fixed-")) ? ((void *)0) : arg + strlen ("fixed-"))))
    fix_register (option_value, 1, 1);
  else if ((option_value = (strncmp (arg, "call-used-", strlen ("call-used-")) ? ((void *)0) : arg + strlen ("call-used-"))))
    fix_register (option_value, 0, 1);
  else if ((option_value = (strncmp (arg, "call-saved-", strlen ("call-saved-")) ? ((void *)0) : arg + strlen ("call-saved-"))))
    fix_register (option_value, 0, 0);
  else if ((option_value = (strncmp (arg, "align-loops=", strlen ("align-loops=")) ? ((void *)0) : arg + strlen ("align-loops="))))
    align_loops = read_integral_parameter (option_value, arg - 2, align_loops);
  else if ((option_value = (strncmp (arg, "align-functions=", strlen ("align-functions=")) ? ((void *)0) : arg + strlen ("align-functions="))))
    align_functions
      = read_integral_parameter (option_value, arg - 2, align_functions);
  else if ((option_value = (strncmp (arg, "align-jumps=", strlen ("align-jumps=")) ? ((void *)0) : arg + strlen ("align-jumps="))))
    align_jumps = read_integral_parameter (option_value, arg - 2, align_jumps);
  else if ((option_value = (strncmp (arg, "align-labels=", strlen ("align-labels=")) ? ((void *)0) : arg + strlen ("align-labels="))))
    align_labels
      = read_integral_parameter (option_value, arg - 2, align_labels);
  else if ((option_value
     = (strncmp (arg, "stack-limit-register=", strlen ("stack-limit-register=")) ? ((void *)0) : arg + strlen ("stack-limit-register="))))
    {
      int reg = decode_reg_name (option_value);
      if (reg < 0)
 error ("unrecognized register name `%s'", option_value);
      else
 stack_limit_rtx = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), reg);
    }
  else if ((option_value
     = (strncmp (arg, "stack-limit-symbol=", strlen ("stack-limit-symbol=")) ? ((void *)0) : arg + strlen ("stack-limit-symbol="))))
    {
      const char *nm;
      nm = ggc_alloc_string((option_value), -1);
      stack_limit_rtx = gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (nm));
    }
  else if ((option_value
     = (strncmp (arg, "message-length=", strlen ("message-length=")) ? ((void *)0) : arg + strlen ("message-length="))))
    output_set_maximum_length
      (&global_dc->buffer, read_integral_parameter
       (option_value, arg - 2, (&(global_dc)->buffer)->state.ideal_maximum_length));
  else if ((option_value
     = (strncmp (arg, "diagnostics-show-location=", strlen ("diagnostics-show-location=")) ? ((void *)0) : arg + strlen ("diagnostics-show-location="))))
    {
      if (!strcmp (option_value, "once"))
 (&(global_dc)->buffer)->state.prefixing_rule = DIAGNOSTICS_SHOW_PREFIX_ONCE;
      else if (!strcmp (option_value, "every-line"))
 (&(global_dc)->buffer)->state.prefixing_rule
   = DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE;
      else
 error ("unrecognized option `%s'", arg - 2);
    }
  else if (!strcmp (arg, "no-stack-limit"))
    stack_limit_rtx = (rtx) 0;
  else if ((option_value = (strncmp (arg, "random-seed=", strlen ("random-seed=")) ? ((void *)0) : arg + strlen ("random-seed="))))
    flag_random_seed = option_value;
  else if (!strcmp (arg, "no-random-seed"))
    flag_random_seed = ((void *)0);
  else if (!strcmp (arg, "preprocessed"))


    ;
  else
    return 0;

  return 1;
}





static int
decode_W_option (arg)
     const char *arg;
{
  const char *option_value = ((void *)0);
  int j;



  for (j = (sizeof (W_options) / sizeof ((W_options)[0])); j--;)
    {
      if (!strcmp (arg, W_options[j].string))
 {
   *W_options[j].variable = W_options[j].on_value;
   return 1;
 }

      if (arg[0] == 'n' && arg[1] == 'o' && arg[2] == '-'
   && ! strcmp (arg + 3, W_options[j].string))
 {
   *W_options[j].variable = ! W_options[j].on_value;
   return 1;
 }
    }

  if ((option_value = (strncmp (arg, "id-clash-", strlen ("id-clash-")) ? ((void *)0) : arg + strlen ("id-clash-"))))
    warning ("-Wid-clash-LEN is no longer supported");
  else if ((option_value = (strncmp (arg, "larger-than-", strlen ("larger-than-")) ? ((void *)0) : arg + strlen ("larger-than-"))))
    {
      larger_than_size = read_integral_parameter (option_value, arg - 2, -1);

      warn_larger_than = larger_than_size != -1;
    }
  else if (!strcmp (arg, "unused"))
    {
      set_Wunused (1);
    }
  else if (!strcmp (arg, "no-unused"))
    {
      set_Wunused (0);
    }
  else
    return 0;

  return 1;
}





static int
decode_g_option (arg)
     const char *arg;
{
  static unsigned level = 0;





  static enum debug_info_type selected_debug_type = NO_DEBUG;



  static int type_explicitly_set_p = 0;

  static const char *const debug_type_names[] =
  {
    "none", "stabs", "coff", "dwarf-1", "dwarf-2", "xcoff", "vms"
  };


  static const unsigned max_debug_level = 3;


  for (da = debug_args; da->arg; da++)
    {
      const int da_len = strlen (da->arg);

      if (da_len == 0 || ! strncmp (arg, da->arg, da_len))
 {
   enum debug_info_type type = da->debug_type;
   const char *p = arg + da_len;

   if (*p && ! (_sch_istable[(*p) & 0xff] & (unsigned short)(_sch_isdigit)))
     continue;
# 4411 "../../../kg++fe/gnu/toplev.c"
   if (*p)
     level = read_integral_parameter (p, 0, max_debug_level + 1);
   else
     level = (level == 0) ? 2 : level;

   if (da_len > 1 && *p && !strncmp (arg, "dwarf", da_len))
     {
       error ("use -gdwarf -g%d for DWARF v1, level %d",
       level, level);
       if (level == 2)
  error ("use -gdwarf-2   for DWARF v2");
     }

   if (level > max_debug_level)
     {
       warning ("ignoring option `%s' due to invalid debug level specification",

         arg - 2);
       level = debug_info_level;
     }

   if (type == NO_DEBUG)
     {
       type = NO_DEBUG;

       if (da_len > 1 && strncmp (arg, "gdb", da_len) == 0)
  {

    type = DWARF2_DEBUG;





  }
     }
# 4456 "../../../kg++fe/gnu/toplev.c"
   if (type_explicitly_set_p

       && da->debug_type != NO_DEBUG
       && type != selected_debug_type)
     warning ("`%s' ignored, conflicts with `-g%s'",
       arg - 2, debug_type_names[(int) selected_debug_type]);
   else
     {


       if (type_explicitly_set_p && da->debug_type == NO_DEBUG)

  ;
       else
  {
    selected_debug_type = type;
    type_explicitly_set_p = da->debug_type != NO_DEBUG;
  }


              write_symbols = NO_DEBUG;





       use_gnu_debug_info_extensions = da->use_extensions_p;
       debug_info_level = (enum debug_info_level) level;
     }

   break;
 }
    }

  if (! da->arg)
    return 0;

  return 1;
}




static unsigned int
independent_decode_option (argc, argv)
     int argc;
     char **argv;
{
  char *arg = argv[0];

  if (arg[0] != '-' || arg[1] == 0)
    {
      if (arg[0] == '+')
 return 0;

      filename = arg;

      return 1;
    }

  arg++;

  if (!strcmp (arg, "-help"))
    {
      display_help ();
      exit_after_options = 1;
      return 1;
    }

  if (!strcmp (arg, "-target-help"))
    {
      display_target_options ();
      exit_after_options = 1;
      return 1;
    }

  if (!strcmp (arg, "-version"))
    {
      print_version (stderr, "");
      exit_after_options = 1;
      return 1;
    }


  if (strcmp (arg, "-param") == 0)
    {
      char *equal;

      if (argc == 1)
 {
   error ("-param option missing argument");
   return 1;
 }


      arg = argv[1];

      equal = strchr (arg, '=');
      if (!equal)
 error ("invalid --param option: %s", arg);
      else
 {
   int val;


   *equal = '\0';

   val = read_integral_parameter (equal + 1, ((void *)0), (-1));
   if (val != (-1))
     set_param_value (arg, val);
   else
     error ("invalid parameter value `%s'", equal + 1);
 }

      return 2;
    }


  if (!strcmp (arg, "mp"))
  {
    flag_openmp = 1;
    return 1;
  }


  if (*arg == 'Y')
    arg++;

  switch (*arg)
    {
    default:
      return 0;

    case 'O':

      break;

    case 'm':
      set_target_switch (arg + 1);
      break;

    case 'f':
      return decode_f_option (arg + 1);

    case 'g':
      return decode_g_option (arg + 1);

    case 'd':
      if (!strcmp (arg, "dumpbase"))
 {
   if (argc == 1)
     return 0;

   if (argv[1][0])
     dump_base_name = argv[1];

   return 2;
 }
      else
 decode_d_option (arg + 1);
      break;

    case 'p':
      if (!strcmp (arg, "pedantic"))
 pedantic = 1;
      else if (!strcmp (arg, "pedantic-errors"))
 flag_pedantic_errors = pedantic = 1;

      else if (!strcmp (arg, "pstatic_as_global"))
        pstatic_as_global = 1;

      else if (arg[1] == 0)
 profile_flag = 1;
      else
 return 0;
      break;

    case 'q':
      if (!strcmp (arg, "quiet"))
 quiet_flag = 1;
      else
 return 0;
      break;

    case 'v':
      if (!strcmp (arg, "version"))
 version_flag = 1;
      else
 return 0;
      break;

    case 'w':
      if (arg[1] == 0)
 inhibit_warnings = 1;
      else
 return 0;
      break;

    case 'W':
      if (arg[1] == 0)
 {
   extra_warnings = 1;



   if (warn_uninitialized != 1)
     warn_uninitialized = 2;
 }
      else
 return decode_W_option (arg + 1);
      break;

    case 'a':
      if (!strncmp (arg, "aux-info", 8))
 {
   if (arg[8] == '\0')
     {
       if (argc == 1)
  return 0;

       aux_info_file_name = argv[1];
       flag_gen_aux_info = 1;
       return 2;
     }
   else if (arg[8] == '=')
     {
       aux_info_file_name = arg + 9;
       flag_gen_aux_info = 1;
     }
   else
     return 0;
 }
      else if (!strcmp (arg, "auxbase"))
 {
   if (argc == 1)
     return 0;

   if (argv[1][0])
     aux_base_name = argv[1];

   return 2;
 }
      else if (!strcmp (arg, "auxbase-strip"))
 {
   if (argc == 1)
     return 0;

   if (argv[1][0])
     {
       strip_off_ending (argv[1], strlen (argv[1]));
       if (argv[1][0])
  aux_base_name = argv[1];
     }

   return 2;
 }
      else
 return 0;
      break;

    case 'o':
      if (arg[1] == 0)
 {
   if (argc == 1)
     return 0;

   asm_file_name = argv[1];
   return 2;
 }
      return 0;

    case 'G':
      {
 int g_switch_val;
 int return_val;

 if (arg[1] == 0)
   {
     if (argc == 1)
       return 0;

     g_switch_val = read_integral_parameter (argv[1], 0, -1);
     return_val = 2;
   }
 else
   {
     g_switch_val = read_integral_parameter (arg + 1, 0, -1);
     return_val = 1;
   }

 if (g_switch_val == -1)
   return_val = 0;
 else
   {
     g_switch_set = 1;
     g_switch_value = g_switch_val;
   }

 return return_val;
      }
    }

  return 1;
}



void
check_gnu_errors (int *error_count, int *sorry_count)
{
  *error_count = (global_dc)->diagnostic_count[(int) (DK_ERROR)];
  *sorry_count = (global_dc)->diagnostic_count[(int) (DK_SORRY)];
}





static void
set_target_switch (name)
     const char *name;
{
  size_t j;
  int valid_target_option = 0;

  for (j = 0; j < (sizeof (target_switches) / sizeof ((target_switches)[0])); j++)
    if (!strcmp (target_switches[j].name, name))
      {
 if (target_switches[j].value < 0)
   target_flags &= ~-target_switches[j].value;
 else
   target_flags |= target_switches[j].value;
 if (name[0] != 0)
   {
     if (target_switches[j].value < 0)
       target_flags_explicit |= -target_switches[j].value;
     else
       target_flags_explicit |= target_switches[j].value;
   }
 valid_target_option = 1;
      }


  if (!valid_target_option)
    for (j = 0; j < (sizeof (target_options) / sizeof ((target_options)[0])); j++)
      {
 int len = strlen (target_options[j].prefix);
 if (!strncmp (target_options[j].prefix, name, len))
   {
     *target_options[j].variable = name + len;
     valid_target_option = 1;
   }
      }


  if (!valid_target_option)
    error ("invalid option `%s'", name);
}





static void
print_version (file, indent)
     FILE *file;
     const char *indent;
{



  fnotice (file,

    "%s%s%s version %s (%s)\n%s\tcompiled by GNU C version %s.\n"



    , indent, *indent != 0 ? " " : "",
    lang_hooks.name, version_string, "sl-linux",
    indent, "4.1.2 (Ubuntu 4.1.2-0ubuntu4)");


  fnotice (file, "%s%sGGC heuristics: --param ggc-min-expand=%d --param ggc-min-heapsize=%d\n",
    indent, *indent != 0 ? " " : "",
    (compiler_params[(int) GGC_MIN_EXPAND].value), (compiler_params[(int) GGC_MIN_HEAPSIZE].value));
}





static int
print_single_switch (file, pos, max, indent, sep, term, type, name)
     FILE *file;
     int pos, max;
     const char *indent, *sep, *term, *type, *name;
{


  int len = strlen (sep) + strlen (type) + strlen (name);

  if (pos != 0
      && pos + len > max)
    {
      fprintf (file, "%s", term);
      pos = 0;
    }
  if (pos == 0)
    {
      fprintf (file, "%s", indent);
      pos = strlen (indent);
    }
  fprintf (file, "%s%s%s", sep, type, name);
  pos += len;
  return pos;
}






static void
print_switch_values (file, pos, max, indent, sep, term)
     FILE *file;
     int pos, max;
     const char *indent, *sep, *term;
{
  size_t j;
  char **p;





  default_flag_random_seed ();



  pos = print_single_switch (file, pos, max, indent, *indent ? " " : "", term,
        ("options passed: "), "");

  for (p = &save_argv[1]; *p != ((void *)0); p++)
    if (**p == '-')
      {

 if (strcmp (*p, "-o") == 0)
   {
     if (p[1] != ((void *)0))
       p++;
     continue;
   }
 if (strcmp (*p, "-quiet") == 0)
   continue;
 if (strcmp (*p, "-version") == 0)
   continue;
 if ((*p)[1] == 'd')
   continue;

 pos = print_single_switch (file, pos, max, indent, sep, term, *p, "");
      }
  if (pos > 0)
    fprintf (file, "%s", term);





  pos = print_single_switch (file, 0, max, indent, *indent ? " " : "", term,
        ("options enabled: "), "");

  for (j = 0; j < (sizeof (f_options) / sizeof ((f_options)[0])); j++)
    if (*f_options[j].variable == f_options[j].on_value)
      pos = print_single_switch (file, pos, max, indent, sep, term,
     "-f", f_options[j].string);



  for (j = 0; j < (sizeof (target_switches) / sizeof ((target_switches)[0])); j++)
    if (target_switches[j].name[0] != '\0'
 && target_switches[j].value > 0
 && ((target_switches[j].value & target_flags)
     == target_switches[j].value))
      {
 pos = print_single_switch (file, pos, max, indent, sep, term,
       "-m", target_switches[j].name);
      }


  for (j = 0; j < (sizeof (target_options) / sizeof ((target_options)[0])); j++)
    if (*target_options[j].variable != ((void *)0))
      {
 char prefix[256];
 sprintf (prefix, "-m%s", target_options[j].prefix);
 pos = print_single_switch (file, pos, max, indent, sep, term,
       prefix, *target_options[j].variable);
      }


  fprintf (file, "%s", term);
}





static void
init_asm_output (name)
     const char *name;
{

  asm_out_file = fopen ("/dev/null", "w");
  return;



  asm_out_file = ((void *)0);
# 5020 "../../../kg++fe/gnu/toplev.c"
}




static void
general_init (argv0)
     char *argv0;
{
  char *p;

  p = argv0 + strlen (argv0);
  while (p != argv0 && !((p[-1]) == '/'))
    --p;
  progname = p;

  xmalloc_set_program_name (progname);

  hex_init ();

  ;



  signal (11, crash_signal);


  signal (4, crash_signal);


  signal (7, crash_signal);


  signal (6, crash_signal);





  signal (8, crash_signal);




  diagnostic_initialize (global_dc);



  init_ggc ();
  init_stringpool ();
  init_ttree ();
}


extern int Opt_Level;
# 5083 "../../../kg++fe/gnu/toplev.c"
static void
parse_options_and_default_flags (argc, argv)
     int argc;
     char **argv;
{
  int i;


  save_argc = argc;
  save_argv = argv;


  init_reg_sets ();


  add_params (lang_independent_params, LAST_PARAM);


  init_ggc_heuristics();


  (*lang_hooks.init_options) ();



  for (i = 1; i < argc; i++)
    {
      if (!strcmp (argv[i], "-O"))
 {
   optimize = 1;
   optimize_size = 0;
 }
      else if (argv[i][0] == '-' && argv[i][1] == 'O')
 {

   char *p = &argv[i][2];


          if (!strncmp(p, "PT:", 3))
            {
            }
          else

   if ((p[0] == 's') && (p[1] == 0))
     {
       optimize_size = 1;


       optimize = 2;
     }
   else
     {
       const int optimize_val = read_integral_parameter (p, p - 2, -1);
       if (optimize_val != -1)
  {
    optimize = optimize_val;
    optimize_size = 0;
  }
     }
 }
    }


  Opt_Level = optimize;


  if (!optimize)
    {
      flag_merge_constants = 0;
    }

  if (optimize >= 1)
    {
      flag_defer_pop = 1;
      flag_thread_jumps = 1;

      flag_delayed_branch = 1;


      flag_omit_frame_pointer = 1;

      flag_guess_branch_prob = 1;
      flag_cprop_registers = 1;
      flag_loop_optimize = 1;
      flag_crossjumping = 1;
      flag_if_conversion = 1;
      flag_if_conversion2 = 1;
    }

  if (optimize >= 2)
    {






      flag_cse_follow_jumps = 1;
      flag_cse_skip_blocks = 1;
      flag_gcse = 1;
      flag_expensive_optimizations = 1;
      flag_strength_reduce = 1;
      flag_rerun_cse_after_loop = 1;
      flag_rerun_loop_opt = 1;
      flag_caller_saves = 1;
      flag_force_mem = 1;
      flag_peephole2 = 1;

      flag_schedule_insns = 1;
      flag_schedule_insns_after_reload = 1;

      flag_regmove = 1;
      flag_strict_aliasing = 1;
      flag_delete_null_pointer_checks = 1;
      flag_reorder_blocks = 1;
      flag_reorder_functions = 1;
    }

  if (optimize >= 3)
    {
      flag_inline_functions = 1;
      flag_rename_registers = 1;
    }

  if (optimize < 2 || optimize_size)
    {
      align_loops = 1;
      align_jumps = 1;
      align_labels = 1;
      align_functions = 1;
# 5221 "../../../kg++fe/gnu/toplev.c"
      flag_reorder_blocks = 0;
    }


  flag_signed_char = 1;







  target_flags = 0;
  set_target_switch ("");
# 5248 "../../../kg++fe/gnu/toplev.c"
  for (i = 1; i < argc;)
    {
      int lang_processed;
      int indep_processed;


      lang_processed = (*lang_hooks.decode_option) (argc - i, argv + i);

      if (lang_processed >= 0)



 indep_processed = independent_decode_option (argc - i, argv + i);
      else
 {
   lang_processed = -lang_processed;
   indep_processed = 0;
 }

      if (lang_processed || indep_processed)
 i += ((lang_processed) > (indep_processed) ? (lang_processed) : (indep_processed));
      else
 {
   const char *option = ((void *)0);
   const char *lang = ((void *)0);
   unsigned int j;
# 5282 "../../../kg++fe/gnu/toplev.c"
   for (j = 0; j < (sizeof (documented_lang_options) / sizeof ((documented_lang_options)[0])); j++)
     {
       option = documented_lang_options[j].option;

       if (option == ((void *)0))
  lang = documented_lang_options[j].description;
       else if (! strncmp (argv[i], option, strlen (option)))
  break;
     }

   if (j != (sizeof (documented_lang_options) / sizeof ((documented_lang_options)[0])))
     {
       if (extra_warnings)
  {
    warning ("ignoring command line option '%s'", argv[i]);
    if (lang)
      warning
        ("(it is valid for %s but not the selected language)",
         lang);
  }
     }
   else if (argv[i][0] == '-' && argv[i][1] == 'g')
     warning ("`%s': unknown or unsupported -g option", &argv[i][2]);
   else
     error ("unrecognized option `%s'", argv[i]);

   i++;
 }
    }
# 5322 "../../../kg++fe/gnu/toplev.c"
  if (flag_pie)
    flag_pic = flag_pie;
  if (flag_pic && !flag_pie)
    flag_shlib = 1;

  if (flag_no_inline == 2)
    flag_no_inline = 0;
  else
    flag_really_no_inline = flag_no_inline;






  if (optimize == 0)
    {


      flag_no_inline = 1;
      warn_inline = 0;




      if (warn_uninitialized == 1)
 warning ("-Wuninitialized is not supported without -O");
    }

  if (flag_really_no_inline == 2)
    flag_really_no_inline = flag_no_inline;
}


static void
process_options ()
{


  override_options ();




  if (align_loops <= 0) align_loops = 1;
  if (align_loops_max_skip > align_loops || !align_loops)
    align_loops_max_skip = align_loops - 1;
  align_loops_log = floor_log2_wide ((unsigned long long) (align_loops * 2 - 1));
  if (align_jumps <= 0) align_jumps = 1;
  if (align_jumps_max_skip > align_jumps || !align_jumps)
    align_jumps_max_skip = align_jumps - 1;
  align_jumps_log = floor_log2_wide ((unsigned long long) (align_jumps * 2 - 1));
  if (align_labels <= 0) align_labels = 1;
  align_labels_log = floor_log2_wide ((unsigned long long) (align_labels * 2 - 1));
  if (align_labels_max_skip > align_labels || !align_labels)
    align_labels_max_skip = align_labels - 1;
  if (align_functions <= 0) align_functions = 1;
  align_functions_log = floor_log2_wide ((unsigned long long) (align_functions * 2 - 1));



  if (flag_unroll_all_loops)
    flag_unroll_loops = 1;




  if (flag_unroll_loops)
    {
      flag_strength_reduce = 1;
      flag_rerun_cse_after_loop = 1;
    }

  if (flag_non_call_exceptions)
    flag_asynchronous_unwind_tables = 1;
  if (flag_asynchronous_unwind_tables)
    flag_unwind_tables = 1;
# 5410 "../../../kg++fe/gnu/toplev.c"
  user_label_prefix = "";
  if (flag_leading_underscore != -1)
    {


      if (user_label_prefix[0] == 0 ||
   (user_label_prefix[0] == '_' && user_label_prefix[1] == 0))
 {
   user_label_prefix = flag_leading_underscore ? "_" : "";
 }
      else
 warning ("-f%sleading-underscore not supported on this target machine",
   flag_leading_underscore ? "" : "no-");
    }



  if (version_flag)
    {
      print_version (stderr, "");
      if (! quiet_flag)
 print_switch_values (stderr, 0, 75, "", " ", "\n");
    }

  if (! quiet_flag || flag_detailed_statistics)
    time_report = 1;

  if (flag_syntax_only)
    {
      write_symbols = NO_DEBUG;
      profile_flag = 0;
    }




  if (write_symbols == DBX_DEBUG)
    debug_hooks = &dbx_debug_hooks;
# 5458 "../../../kg++fe/gnu/toplev.c"
  if (write_symbols == DWARF_DEBUG)
    debug_hooks = &dwarf_debug_hooks;


  if (write_symbols == DWARF2_DEBUG)
    debug_hooks = &dwarf2_debug_hooks;
# 5473 "../../../kg++fe/gnu/toplev.c"
  if (flag_gen_aux_info)
    {
      aux_info_file = fopen (aux_info_file_name, "w");
      if (aux_info_file == 0)
 fatal_io_error ("can't open %s", aux_info_file_name);
    }

  if (! targetm.have_named_sections)
    {
      if (flag_function_sections)
 {
   warning ("-ffunction-sections not supported for this target");
   flag_function_sections = 0;
 }
      if (flag_data_sections)
 {
   warning ("-fdata-sections not supported for this target");
   flag_data_sections = 0;
 }
    }

  if (flag_function_sections && profile_flag)
    {
      warning ("-ffunction-sections disabled; it makes profiling impossible");
      flag_function_sections = 0;
    }
# 5507 "../../../kg++fe/gnu/toplev.c"
  if (flag_prefetch_loop_arrays && !((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000))))
    {
      warning ("-fprefetch-loop-arrays not supported for this target (try -march switches)");
      flag_prefetch_loop_arrays = 0;
    }




  if (flag_prefetch_loop_arrays && optimize_size)
    {
      warning ("-fprefetch-loop-arrays is not supported with -Os");
      flag_prefetch_loop_arrays = 0;
    }







    if (flag_signaling_nans)
      flag_trapping_math = 1;
}


static void
backend_init ()
{


  if (parse_tree_dump) {
    open_dump_file (DFI_sgi_parse_tree, ((void *)0));
  }




  init_regs ();
  init_emit_once (debug_info_level == DINFO_LEVEL_NORMAL
    || debug_info_level == DINFO_LEVEL_VERBOSE




      || flag_test_coverage
      || warn_notreached);
  init_fake_stack_mems ();
  init_alias_once ();
  init_loop ();
  init_reload ();
  init_function_once ();
  init_varasm_once ();



  init_dummy_function_start ();
  init_expmed ();
  if (flag_caller_saves)
    init_caller_save ();
  expand_dummy_function_end ();
}


static int
lang_dependent_init (name)
     const char *name;
{
  if (dump_base_name == 0)
    dump_base_name = name ? name : "gccdump";





  name = (*lang_hooks.init) (name);
  if (name == ((void *)0))
    return 0;


  name = ggc_alloc_string((name), -1);
  main_input_filename = input_filename = name;
  init_asm_output (name);



  init_eh ();
  init_optabs ();



  init_dummy_function_start ();
  init_expr_once ();
  expand_dummy_function_end ();


  push_srcloc (input_filename, 0);
# 5622 "../../../kg++fe/gnu/toplev.c"
  return 1;
}



static void
finalize ()
{

  if (flag_gen_aux_info)
    {
      fclose (aux_info_file);
      if ((global_dc)->diagnostic_count[(int) (DK_ERROR)])
 unlink (aux_info_file_name);
    }
# 5653 "../../../kg++fe/gnu/toplev.c"
  if (graph_dump_format != no_graph)
    {
      int i;

      for (i = 0; i < (int) DFI_MAX; ++i)
 if (dump_file[i].initialized && dump_file[i].graph_dump_p)
   {
     char seq[16];
     char *suffix;

     sprintf (seq, ".%02d.", i);
     suffix = concat (seq, dump_file[i].extension, ((void *)0));
     finish_graph_dump_file (dump_base_name, suffix);
     free (suffix);
   }
    }

  if (mem_report)
    {
      ggc_print_statistics ();
      stringpool_statistics ();
      dump_tree_statistics ();
    }


  free_reg_info ();


  (*lang_hooks.finish) ();
}




static const char *
do_init_compile ()
{


  _Bool no_backend = (*lang_hooks.post_options) ();


  process_options ();



  init_timevar ();
  timevar_start (TV_TOTAL);




  backend_init ();





  if (lang_dependent_init (filename))
    return main_input_filename;
}


static void
do_compile ()
{


  _Bool no_backend = (*lang_hooks.post_options) ();


  process_options ();


  if ((global_dc)->diagnostic_count[(int) (DK_ERROR)])
    return;

  if (aux_base_name)
           ;
  else if (filename)
    {
      char *name = xstrdup (lbasename (filename));

      aux_base_name = name;
      strip_off_ending (name, strlen (name));
    }
  else
    aux_base_name = "gccaux";



  init_timevar ();
  timevar_start (TV_TOTAL);


  if (!no_backend)
    backend_init ();


  if (lang_dependent_init (filename))




  ;


  finalize ();


  timevar_stop (TV_TOTAL);
  timevar_print (stderr);
}
# 5775 "../../../kg++fe/gnu/toplev.c"
const char *
gnu_init (argc, argv)
     int argc;
     char **argv;






{

  general_init (argv[0]);



  parse_options_and_default_flags (argc, argv);


  if (!exit_after_options)



  return do_init_compile();


  if ((global_dc)->diagnostic_count[(int) (DK_ERROR)] || (global_dc)->diagnostic_count[(int) (DK_SORRY)])
    return (const char *)(1);

  return (const char *)(0);
}
