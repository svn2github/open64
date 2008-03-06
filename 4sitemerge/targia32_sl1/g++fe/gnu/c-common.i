# 1 "../../../kg++fe/gnu/c-common.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/c-common.c"
# 26 "../../../kg++fe/gnu/c-common.c"
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
# 27 "../../../kg++fe/gnu/c-common.c" 2
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
        
# 28 "../../../kg++fe/gnu/c-common.c" 2


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
# 31 "../../../kg++fe/gnu/c-common.c" 2

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
# 33 "../../../kg++fe/gnu/c-common.c" 2
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
# 34 "../../../kg++fe/gnu/c-common.c" 2
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
# 35 "../../../kg++fe/gnu/c-common.c" 2
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
# 36 "../../../kg++fe/gnu/c-common.c" 2
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
# 342 "../../../kg++fe/gnu/output.h"
extern void assemble_real (struct real_value, enum machine_mode, unsigned);





extern void defer_addressed_constants (void);



extern void output_deferred_addressed_constants (void);


extern int get_pool_size (void);






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
# 37 "../../../kg++fe/gnu/c-common.c" 2
# 1 "../../../kg++fe/gnu/c-pragma.h" 1
# 31 "../../../kg++fe/gnu/c-pragma.h"
extern int yydebug;

struct cpp_reader;
extern struct cpp_reader* parse_in;
# 52 "../../../kg++fe/gnu/c-pragma.h"
extern tree weak_decls;
# 61 "../../../kg++fe/gnu/c-pragma.h"
extern void init_pragma (void);




typedef struct cpp_reader cpp_reader;

extern void cpp_register_pragma (cpp_reader *, const char *, const char *, void (*) (cpp_reader *));




extern void maybe_apply_pragma_weak (tree);
extern tree maybe_apply_renaming_pragma (tree, tree);
extern void add_to_renaming_pragma_list (tree, tree);

extern int c_lex (tree *);
# 38 "../../../kg++fe/gnu/c-common.c" 2



# 1 "../../../kg++fe/gnu/ggc.h" 1
# 25 "../../../kg++fe/gnu/ggc.h"
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
# 26 "../../../kg++fe/gnu/ggc.h" 2
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
# 42 "../../../kg++fe/gnu/c-common.c" 2
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
# 43 "../../../kg++fe/gnu/c-common.c" 2
# 1 "../../../kg++fe/gnu/c-common.h" 1
# 29 "../../../kg++fe/gnu/c-common.h"
# 1 "../../../include/gnu/splay-tree.h" 1
# 47 "../../../include/gnu/splay-tree.h"
typedef unsigned long int splay_tree_key;
typedef unsigned long int splay_tree_value;


typedef struct splay_tree_node_s *splay_tree_node;



typedef int (*splay_tree_compare_fn) (splay_tree_key, splay_tree_key);



typedef void (*splay_tree_delete_key_fn) (splay_tree_key);



typedef void (*splay_tree_delete_value_fn) (splay_tree_value);


typedef int (*splay_tree_foreach_fn) (splay_tree_node, void*);





typedef void *(*splay_tree_allocate_fn) (int, void *);





typedef void (*splay_tree_deallocate_fn) (void *, void *);


struct splay_tree_node_s
{

  splay_tree_key key;


  splay_tree_value value;


  splay_tree_node left;
  splay_tree_node right;
};


typedef struct splay_tree_s
{

  splay_tree_node root;


  splay_tree_compare_fn comp;


  splay_tree_delete_key_fn delete_key;


  splay_tree_delete_value_fn delete_value;


  splay_tree_allocate_fn allocate;
  splay_tree_deallocate_fn deallocate;
  void *allocate_data;

} *splay_tree;

extern splay_tree splay_tree_new (splay_tree_compare_fn, splay_tree_delete_key_fn, splay_tree_delete_value_fn);


extern splay_tree splay_tree_new_with_allocator
                                        (splay_tree_compare_fn, splay_tree_delete_key_fn, splay_tree_delete_value_fn, splay_tree_allocate_fn, splay_tree_deallocate_fn, void *);





extern void splay_tree_delete (splay_tree);
extern splay_tree_node splay_tree_insert
                          (splay_tree, splay_tree_key, splay_tree_value);


extern void splay_tree_remove (splay_tree, splay_tree_key);

extern splay_tree_node splay_tree_lookup
                                        (splay_tree, splay_tree_key);

extern splay_tree_node splay_tree_predecessor
                                        (splay_tree, splay_tree_key);

extern splay_tree_node splay_tree_successor
                                        (splay_tree, splay_tree_key);

extern splay_tree_node splay_tree_max
                                        (splay_tree);
extern splay_tree_node splay_tree_min
                                        (splay_tree);
extern int splay_tree_foreach (splay_tree, splay_tree_foreach_fn, void*);


extern int splay_tree_compare_ints (splay_tree_key, splay_tree_key);

extern int splay_tree_compare_pointers (splay_tree_key, splay_tree_key);
# 30 "../../../kg++fe/gnu/c-common.h" 2
# 1 "../../../kg++fe/gnu/cpplib.h" 1
# 32 "../../../kg++fe/gnu/cpplib.h"
# 1 "../../../kg++fe/gnu/line-map.h" 1
# 31 "../../../kg++fe/gnu/line-map.h"
enum lc_reason {LC_ENTER = 0, LC_LEAVE, LC_RENAME};
# 41 "../../../kg++fe/gnu/line-map.h"
struct line_map
{
  const char *to_file;
  unsigned int to_line;
  unsigned int from_line;
  int included_from;
  enum lc_reason reason : 8;
  unsigned char sysp;
};


struct line_maps
{
  struct line_map *maps;
  unsigned int allocated;
  unsigned int used;




  int last_listed;


  unsigned int depth;


  _Bool trace_includes;
};


extern void init_line_maps
  (struct line_maps *);


extern void free_line_maps
  (struct line_maps *);
# 87 "../../../kg++fe/gnu/line-map.h"
extern const struct line_map *add_line_map
  (struct line_maps *, enum lc_reason, unsigned int sysp, unsigned int from_line, const char *to_file, unsigned int to_line);




extern const struct line_map *lookup_line
  (struct line_maps *, unsigned int);




extern void print_containing_files
  (struct line_maps *, const struct line_map *);
# 33 "../../../kg++fe/gnu/cpplib.h" 2
# 42 "../../../kg++fe/gnu/cpplib.h"
typedef struct cpp_buffer cpp_buffer;
typedef struct cpp_options cpp_options;
typedef struct cpp_token cpp_token;
typedef struct cpp_string cpp_string;
typedef struct cpp_hashnode cpp_hashnode;
typedef struct cpp_macro cpp_macro;
typedef struct cpp_callbacks cpp_callbacks;

struct answer;
struct file_name_map_list;
# 150 "../../../kg++fe/gnu/cpplib.h"
enum cpp_ttype
{
  CPP_EQ = 0, CPP_NOT, CPP_GREATER, CPP_LESS, CPP_PLUS, CPP_MINUS, CPP_MULT, CPP_DIV, CPP_MOD, CPP_AND, CPP_OR, CPP_XOR, CPP_RSHIFT, CPP_LSHIFT, CPP_MIN, CPP_MAX, CPP_COMPL, CPP_AND_AND, CPP_OR_OR, CPP_QUERY, CPP_COLON, CPP_COMMA, CPP_OPEN_PAREN, CPP_CLOSE_PAREN, CPP_EOF, CPP_EQ_EQ, CPP_NOT_EQ, CPP_GREATER_EQ, CPP_LESS_EQ, CPP_PLUS_EQ, CPP_MINUS_EQ, CPP_MULT_EQ, CPP_DIV_EQ, CPP_MOD_EQ, CPP_AND_EQ, CPP_OR_EQ, CPP_XOR_EQ, CPP_RSHIFT_EQ, CPP_LSHIFT_EQ, CPP_MIN_EQ, CPP_MAX_EQ, CPP_HASH, CPP_PASTE, CPP_OPEN_SQUARE, CPP_CLOSE_SQUARE, CPP_OPEN_BRACE, CPP_CLOSE_BRACE, CPP_SEMICOLON, CPP_ELLIPSIS, CPP_PLUS_PLUS, CPP_MINUS_MINUS, CPP_DEREF, CPP_DOT, CPP_SCOPE, CPP_DEREF_STAR, CPP_DOT_STAR, CPP_ATSIGN, CPP_NAME, CPP_NUMBER, CPP_CHAR, CPP_WCHAR, CPP_OTHER, CPP_STRING, CPP_WSTRING, CPP_HEADER_NAME, CPP_COMMENT, CPP_MACRO_ARG, CPP_PADDING,
  N_TTYPES
};




enum c_lang {CLK_GNUC89 = 0, CLK_GNUC99, CLK_STDC89, CLK_STDC94, CLK_STDC99,
      CLK_GNUCXX, CLK_CXX98, CLK_ASM};


struct cpp_string
{
  unsigned int len;
  const unsigned char *text;
};
# 180 "../../../kg++fe/gnu/cpplib.h"
struct cpp_token
{
  unsigned int line;
  unsigned short col;
  enum cpp_ttype type : 8;
  unsigned char flags;

  union
  {
    cpp_hashnode *node;
    const cpp_token *source;
    struct cpp_string str;
    unsigned int arg_no;
    unsigned char c;
  } val;
};
# 212 "../../../kg++fe/gnu/cpplib.h"
typedef unsigned int cppchar_t;
typedef int cppchar_signed_t;
# 222 "../../../kg++fe/gnu/cpplib.h"
enum { dump_none = 0, dump_only, dump_names, dump_definitions };



struct cpp_options
{

  unsigned int tabstop;


  struct cpp_pending *pending;


  struct search_path *quote_include;
  struct search_path *bracket_include;



  struct file_name_map_list *map_list;



  const char *include_prefix;
  unsigned int include_prefix_len;


  enum c_lang lang;


  unsigned char verbose;


  unsigned char cplusplus;


  unsigned char cplusplus_comments;



  unsigned char objc;


  unsigned char discard_comments;



  unsigned char discard_comments_in_macro_exp;


  unsigned char trigraphs;


  unsigned char digraphs;


  unsigned char extended_numbers;


  unsigned char print_include_names;


  unsigned char pedantic_errors;


  unsigned char inhibit_warnings;


  unsigned char warn_deprecated;


  unsigned char warn_system_headers;



  unsigned char inhibit_errors;


  unsigned char warn_comments;


  unsigned char warn_trigraphs;


  unsigned char warn_import;


  unsigned char warn_multichar;



  unsigned char warn_traditional;


  unsigned char warn_long_long;


  unsigned char warn_endif_labels;



  unsigned char warn_num_sign_change;


  unsigned char warnings_are_errors;



  unsigned char no_output;



  unsigned char remap;


  unsigned char no_line_commands;



  unsigned char ignore_srcdir;


  unsigned char dollars_in_ident;


  unsigned char warn_undef;


  unsigned char warn_unused_macros;


  unsigned char c99;


  unsigned char std;


  unsigned char pedantic;



  unsigned char preprocessed;


  unsigned char no_standard_includes;


  unsigned char no_standard_cplusplus_includes;


  unsigned char dump_macros;


  unsigned char dump_includes;


  unsigned char show_column;


  unsigned char operator_names;


  unsigned char traditional;


  struct
  {

    enum {DEPS_NONE = 0, DEPS_USER, DEPS_SYSTEM } style;


    _Bool missing_files;



    _Bool phony_targets;


    _Bool ignore_main_file;
  } deps;





  size_t precision, char_precision, int_precision, wchar_precision;


  _Bool unsigned_char, unsigned_wchar;


  unsigned char stdc_0_in_system_headers;
};


struct cpp_callbacks
{

  void (*line_change) (cpp_reader *, const cpp_token *, int);
  void (*file_change) (cpp_reader *, const struct line_map *);
  void (*include) (cpp_reader *, unsigned int, const unsigned char *, const cpp_token *);

  void (*define) (cpp_reader *, unsigned int, cpp_hashnode *);
  void (*undef) (cpp_reader *, unsigned int, cpp_hashnode *);
  void (*ident) (cpp_reader *, unsigned int, const cpp_string *);
  void (*def_pragma) (cpp_reader *, unsigned int);


  void (*register_builtins) (cpp_reader *);
};


extern const char *progname;
# 455 "../../../kg++fe/gnu/cpplib.h"
enum node_type
{
  NT_VOID = 0,
  NT_MACRO,
  NT_ASSERTION
};



enum builtin_type
{
  BT_SPECLINE = 0,
  BT_DATE,
  BT_FILE,
  BT_BASE_FILE,
  BT_INCLUDE_LEVEL,
  BT_TIME,
  BT_STDC,
  BT_PRAGMA
};
# 484 "../../../kg++fe/gnu/cpplib.h"
struct cpp_hashnode
{
  struct ht_identifier ident;
  unsigned short arg_index;
  unsigned char directive_index;
  unsigned char rid_code;
  enum node_type type : 8;
  unsigned char flags;

  union
  {
    cpp_macro *macro;
    struct answer *answers;

    enum cpp_ttype operator_code;



    enum builtin_type builtin;
  } value;
};


extern cpp_reader *cpp_create_reader (enum c_lang);



extern void cpp_set_lang (cpp_reader *, enum c_lang);





extern void cpp_add_dependency_target (cpp_reader *, const char * target, int quote);
# 526 "../../../kg++fe/gnu/cpplib.h"
extern cpp_options *cpp_get_options (cpp_reader *);
extern const struct line_maps *cpp_get_line_maps (cpp_reader *);
extern cpp_callbacks *cpp_get_callbacks (cpp_reader *);
extern void cpp_set_callbacks (cpp_reader *, cpp_callbacks *);






extern int cpp_handle_options (cpp_reader *, int, char **);
extern int cpp_handle_option (cpp_reader *, int, char **);
# 549 "../../../kg++fe/gnu/cpplib.h"
extern const char *cpp_read_main_file (cpp_reader *, const char *, struct ht *);







extern void cpp_finish_options (cpp_reader *);






extern int cpp_finish (cpp_reader *, FILE *deps_stream);




extern void cpp_destroy (cpp_reader *);


extern unsigned int cpp_errors (cpp_reader *);

extern unsigned int cpp_token_len (const cpp_token *);
extern unsigned char *cpp_token_as_text (cpp_reader *, const cpp_token *);

extern unsigned char *cpp_spell_token (cpp_reader *, const cpp_token *, unsigned char *);

extern void cpp_register_pragma (cpp_reader *, const char *, const char *, void (*) (cpp_reader *));



extern int cpp_avoid_paste (cpp_reader *, const cpp_token *, const cpp_token *);

extern const cpp_token *cpp_get_token (cpp_reader *);
extern const unsigned char *cpp_macro_definition (cpp_reader *, const cpp_hashnode *);

extern void _cpp_backup_tokens (cpp_reader *, unsigned int);


extern cppchar_t
cpp_interpret_charconst (cpp_reader *, const cpp_token *, unsigned int *, int *);




extern void cpp_define (cpp_reader *, const char *);
extern void cpp_assert (cpp_reader *, const char *);
extern void cpp_undef (cpp_reader *, const char *);
extern void cpp_unassert (cpp_reader *, const char *);

extern cpp_buffer *cpp_push_buffer (cpp_reader *, const unsigned char *, size_t, int, int);


extern int cpp_defined (cpp_reader *, const unsigned char *, int);



typedef unsigned long long cpp_num_part;
typedef struct cpp_num cpp_num;
struct cpp_num
{
  cpp_num_part high;
  cpp_num_part low;
  _Bool unsignedp;
  _Bool overflow;
};
# 646 "../../../kg++fe/gnu/cpplib.h"
extern unsigned cpp_classify_number (cpp_reader *, const cpp_token *);


extern cpp_num cpp_interpret_integer (cpp_reader *, const cpp_token *, unsigned int type);




cpp_num cpp_num_sign_extend (cpp_num, size_t);
# 684 "../../../kg++fe/gnu/cpplib.h"
extern void cpp_error (cpp_reader *, int, const char *msgid, ...)
  __attribute__ ((__format__ (__printf__, 3, 4))) __attribute__ ((__nonnull__ (3)));



extern void cpp_errno (cpp_reader *, int level, const char *msg);




extern void cpp_error_with_line (cpp_reader *, int, unsigned, unsigned, const char *msgid, ...)
  __attribute__ ((__format__ (__printf__, 5, 6))) __attribute__ ((__nonnull__ (5)));


extern int cpp_ideq (const cpp_token *, const char *);

extern void cpp_output_line (cpp_reader *, FILE *);
extern void cpp_output_token (const cpp_token *, FILE *);
extern const char *cpp_type2name (enum cpp_ttype);





extern cppchar_t cpp_parse_escape (cpp_reader *, const unsigned char ** pstr, const unsigned char *limit, int wide);
# 717 "../../../kg++fe/gnu/cpplib.h"
extern cpp_hashnode *cpp_lookup (cpp_reader *, const unsigned char *, unsigned int);



typedef int (*cpp_cb) (cpp_reader *, cpp_hashnode *, void *);
extern void cpp_forall_identifiers (cpp_reader *, cpp_cb, void *);



extern void cpp_scan_nooutput (cpp_reader *);
extern int cpp_sys_macro_p (cpp_reader *);
extern unsigned char *cpp_quote_string (unsigned char *, const unsigned char *, unsigned int);




extern int cpp_included (cpp_reader *, const char *);
extern void cpp_make_system_header (cpp_reader *, int, int);


extern void cpp_preprocess_file (cpp_reader *, const char *, FILE *);
# 31 "../../../kg++fe/gnu/c-common.h" 2
# 58 "../../../kg++fe/gnu/c-common.h"
enum rid
{


  RID_STATIC = 0,
  RID_UNSIGNED, RID_LONG, RID_CONST, RID_EXTERN,
  RID_REGISTER, RID_TYPEDEF, RID_SHORT, RID_INLINE,
  RID_VOLATILE, RID_SIGNED, RID_AUTO, RID_RESTRICT,




  RID_SBUF,
  RID_V1BUF, RID_V2BUF, RID_V4BUF,


  RID_BOUNDED, RID_UNBOUNDED, RID_COMPLEX, RID_THREAD,


  RID_FRIEND, RID_VIRTUAL, RID_EXPLICIT, RID_EXPORT, RID_MUTABLE,


  RID_IN, RID_OUT, RID_INOUT, RID_BYCOPY, RID_BYREF, RID_ONEWAY,


  RID_INT, RID_CHAR, RID_FLOAT, RID_DOUBLE, RID_VOID,
  RID_ENUM, RID_STRUCT, RID_UNION, RID_IF, RID_ELSE,
  RID_WHILE, RID_DO, RID_FOR, RID_SWITCH, RID_CASE,
  RID_DEFAULT, RID_BREAK, RID_CONTINUE, RID_RETURN, RID_GOTO,
  RID_SIZEOF,


  RID_ASM, RID_TYPEOF, RID_ALIGNOF, RID_ATTRIBUTE, RID_VA_ARG,
  RID_EXTENSION, RID_IMAGPART, RID_REALPART, RID_LABEL, RID_PTRBASE,
  RID_PTREXTENT, RID_PTRVALUE, RID_CHOOSE_EXPR, RID_TYPES_COMPATIBLE_P,


  RID_FUNCTION_NAME, RID_PRETTY_FUNCTION_NAME, RID_C99_FUNCTION_NAME,


  RID_BOOL, RID_WCHAR, RID_CLASS,
  RID_PUBLIC, RID_PRIVATE, RID_PROTECTED,
  RID_TEMPLATE, RID_NULL, RID_CATCH,
  RID_DELETE, RID_FALSE, RID_NAMESPACE,
  RID_NEW, RID_OFFSETOF, RID_OPERATOR, RID_THIS,
  RID_THROW, RID_TRUE, RID_TRY,
  RID_TYPENAME, RID_TYPEID, RID_USING,


  RID_CONSTCAST, RID_DYNCAST, RID_REINTCAST, RID_STATCAST,


  RID_ID, RID_AT_ENCODE, RID_AT_END,
  RID_AT_CLASS, RID_AT_ALIAS, RID_AT_DEFS,
  RID_AT_PRIVATE, RID_AT_PROTECTED, RID_AT_PUBLIC,
  RID_AT_PROTOCOL, RID_AT_SELECTOR, RID_AT_INTERFACE,
  RID_AT_IMPLEMENTATION,


  RID_MAX,

  RID_FIRST_MODIFIER = RID_STATIC,
  RID_LAST_MODIFIER = RID_ONEWAY,

  RID_FIRST_AT = RID_AT_ENCODE,
  RID_LAST_AT = RID_AT_IMPLEMENTATION,
  RID_FIRST_PQ = RID_IN,
  RID_LAST_PQ = RID_ONEWAY
};
# 138 "../../../kg++fe/gnu/c-common.h"
extern tree *ridpointers;



enum c_tree_index
{
    CTI_WCHAR_TYPE,
    CTI_SIGNED_WCHAR_TYPE,
    CTI_UNSIGNED_WCHAR_TYPE,
    CTI_WINT_TYPE,
    CTI_SIGNED_SIZE_TYPE,
    CTI_UNSIGNED_PTRDIFF_TYPE,
    CTI_INTMAX_TYPE,
    CTI_UINTMAX_TYPE,
    CTI_WIDEST_INT_LIT_TYPE,
    CTI_WIDEST_UINT_LIT_TYPE,

    CTI_CHAR_ARRAY_TYPE,
    CTI_WCHAR_ARRAY_TYPE,
    CTI_INT_ARRAY_TYPE,
    CTI_STRING_TYPE,
    CTI_CONST_STRING_TYPE,


    CTI_BOOLEAN_TYPE,
    CTI_BOOLEAN_TRUE,
    CTI_BOOLEAN_FALSE,

    CTI_C_BOOL_TYPE,
    CTI_C_BOOL_TRUE,
    CTI_C_BOOL_FALSE,
    CTI_DEFAULT_FUNCTION_TYPE,

    CTI_G77_INTEGER_TYPE,
    CTI_G77_UINTEGER_TYPE,
    CTI_G77_LONGINT_TYPE,
    CTI_G77_ULONGINT_TYPE,


    CTI_FUNCTION_NAME_DECL,
    CTI_PRETTY_FUNCTION_NAME_DECL,
    CTI_C99_FUNCTION_NAME_DECL,
    CTI_SAVED_FUNCTION_NAME_DECLS,

    CTI_VOID_ZERO,

    CTI_MAX
};





struct c_common_identifier
{
  struct tree_common common;
  struct cpp_hashnode node;
};
# 238 "../../../kg++fe/gnu/c-common.h"
extern tree c_global_trees[CTI_MAX];
# 248 "../../../kg++fe/gnu/c-common.h"
typedef enum c_language_kind
{
  clk_c = 0,
  clk_cplusplus
}
c_language_kind;



struct stmt_tree_s {

  tree x_last_stmt;


  tree x_last_expr_type;

  const char *x_last_expr_filename;
# 279 "../../../kg++fe/gnu/c-common.h"
  int stmts_are_full_exprs_p;
};

typedef struct stmt_tree_s *stmt_tree;




struct c_language_function {


  struct stmt_tree_s x_stmt_tree;

  tree x_scope_stmt_stack;
};
# 322 "../../../kg++fe/gnu/c-common.h"
extern int (*lang_statement_code_p) (enum tree_code);
extern void (*lang_expand_stmt) (tree);
extern void (*lang_expand_decl_stmt) (tree);
extern void (*lang_expand_function_end) (void);
extern tree gettags (void);



extern int (*lang_missing_noreturn_ok_p) (tree);

extern int yyparse (void);
extern void free_parser_stacks (void);

extern stmt_tree current_stmt_tree (void);
extern tree *current_scope_stmt_stack (void);
extern void begin_stmt_tree (tree *);
extern tree add_stmt (tree);
extern void add_decl_stmt (tree);
extern tree add_scope_stmt (int, int);
extern void finish_stmt_tree (tree *);

extern int statement_code_p (enum tree_code);
extern tree walk_stmt_tree (tree *, walk_tree_fn, void *);


extern void prep_stmt (tree);
extern void expand_stmt (tree);
extern void shadow_warning (const char *, tree, tree);

extern tree c_begin_if_stmt (void);
extern tree c_begin_while_stmt (void);
extern void c_finish_while_stmt_cond (tree, tree);







struct c_lang_decl {
  unsigned declared_inline : 1;
};
# 375 "../../../kg++fe/gnu/c-common.h"
extern c_language_kind c_language;




extern int flag_preprocess_only;



extern int flag_iso;


extern int flag_objc;



extern int flag_undef;



extern int flag_no_builtin;




extern int flag_no_nonansi_builtin;



extern int flag_short_double;



extern int flag_short_wchar;


extern int flag_ms_extensions;



extern int flag_no_asm;




extern int flag_const_strings;



extern int dollars_in_ident;



extern int flag_signed_bitfields;
extern int explicit_flag_signed_bitfields;




extern int warn_cast_qual;



extern int warn_missing_format_attribute;




extern int warn_pointer_arith;




extern int warn_missing_prototypes;



extern int warn_parentheses;



extern int warn_missing_braces;




extern int warn_sign_compare;



extern int warn_long_long;




extern int warn_write_strings;




extern int warn_redundant_decls;



extern int warn_float_equal;



extern int warn_char_subscripts;



extern int warn_conversion;



extern int warn_unknown_pragmas;




extern int warn_format;



extern int warn_format_y2k;



extern int warn_format_extra_args;



extern int warn_format_zero_length;



extern int warn_format_nonliteral;



extern int warn_format_security;
# 525 "../../../kg++fe/gnu/c-common.h"
extern int mesg_implicit_function_declaration;




extern int flag_cond_mismatch;



extern int flag_isoc94;



extern int flag_isoc99;



extern int flag_hosted;




extern int flag_noniso_default_format_attributes;





extern int warn_bad_function_cast;



extern int warn_traditional;



extern int warn_declaration_after_statement;




extern int warn_strict_prototypes;




extern int warn_missing_declarations;







extern int warn_nested_externs;



extern int warn_main;



extern int warn_sequence_point;


extern int warn_div_by_zero;



extern int warn_implicit_int;




extern int warn_nonnull;
# 608 "../../../kg++fe/gnu/c-common.h"
extern int flag_gen_declaration;



extern int flag_next_runtime;





extern int print_struct_values;



extern const char *constant_string_class_name;





extern int warn_selector;






extern int warn_undeclared_selector;





extern int warn_protocol;







extern int flag_no_gnu_keywords;




extern int flag_implement_inlines;




extern int flag_external_templates;





extern int flag_alt_external_templates;



extern int flag_implicit_templates;





extern int flag_implicit_inline_templates;




extern int flag_use_repository;




extern int flag_optional_diags;



extern int flag_elide_constructors;




extern int flag_default_inline;




extern int flag_rtti;






extern int flag_conserve_space;



extern int flag_access_control;




extern int flag_check_new;
# 724 "../../../kg++fe/gnu/c-common.h"
extern int flag_new_for_scope;





extern int flag_weak;




extern int flag_use_cxa_atexit;



extern int flag_vtable_gc;




extern int flag_permissive;






extern int flag_enforce_eh_specs;
# 766 "../../../kg++fe/gnu/c-common.h"
extern int flag_abi_version;




extern int warn_abi;



extern int warn_implicit;




extern int warn_ctor_dtor_privacy;





extern int warn_overloaded_virtual;




extern int warn_nonvdtor;



extern int warn_reorder;



extern int warn_synth;




extern int warn_pmf2ptr;



extern int warn_ecpp;




extern int warn_sign_promo;



extern int warn_old_style_cast;




extern int warn_nontemplate_friend;



extern int warn_deprecated;





extern int max_tinst_depth;




extern int skip_evaluation;
# 860 "../../../kg++fe/gnu/c-common.h"
extern const struct attribute_spec c_common_attribute_table[];
extern const struct attribute_spec c_common_format_attribute_table[];






extern tree (*make_fname_decl) (tree, int);

extern tree identifier_global_value (tree);
extern void record_builtin_type (enum rid, const char *, tree);

extern tree build_void_list_node (void);
extern void start_fname_decls (void);
extern void finish_fname_decls (void);
extern const char *fname_as_string (int);
extern tree fname_decl (unsigned, tree);
extern const char *fname_string (unsigned);

extern void check_function_arguments (tree, tree);
extern void check_function_arguments_recurse (void (*) (void *, tree, unsigned long long), void *, tree, unsigned long long);




extern void check_function_format (int *, tree, tree);
extern void set_Wformat (int);
extern tree handle_format_attribute (tree *, tree, tree, int, _Bool *);

extern tree handle_format_arg_attribute (tree *, tree, tree, int, _Bool *);

extern void c_common_insert_default_attributes (tree);
extern int c_common_decode_option (int, char **);
extern tree c_common_type_for_mode (enum machine_mode, int);

extern tree c_common_type_for_size (unsigned int, int);
extern tree c_common_unsigned_type (tree);
extern tree c_common_signed_type (tree);
extern tree c_common_signed_or_unsigned_type (int, tree);
extern tree c_common_truthvalue_conversion (tree);
extern void c_apply_type_quals_to_decl (int, tree);
extern tree c_sizeof_or_alignof_type (tree, enum tree_code, int);
extern tree c_alignof_expr (tree);


extern void binary_op_error (enum tree_code);



extern tree c_expand_expr_stmt (tree);
extern void c_expand_start_cond (tree, int, tree);
extern void c_finish_then (void);
extern void c_expand_start_else (void);
extern void c_finish_else (void);
extern void c_expand_end_cond (void);

extern tree check_case_value (tree);
extern tree fix_string_type (tree);
struct varray_head_tag;
extern tree combine_strings (struct varray_head_tag *);
extern void constant_expression_warning (tree);
extern tree convert_and_check (tree, tree);
extern void overflow_warning (tree);
extern void unsigned_conversion_warning (tree, tree);


extern char *get_directive_line (void);







extern tree shorten_compare (tree *, tree *, tree *, enum tree_code *);

extern tree pointer_int_sum (enum tree_code, tree, tree);
extern unsigned int min_precision (tree, int);


extern tree c_build_qualified_type (tree, int);



extern void c_common_nodes_and_builtins (void);

extern void disable_builtin_function (const char *);

extern tree build_va_arg (tree, tree);

extern void c_common_init_options (enum c_language_kind);
extern _Bool c_common_post_options (void);
extern const char *c_common_init (const char *);
extern void c_common_finish (void);
extern void c_common_parse_file (int);
extern long long c_common_get_alias_set (tree);
extern _Bool c_promoting_integer_type_p (tree);
extern int self_promoting_args_p (tree);
extern tree strip_array_types (tree);
# 1150 "../../../kg++fe/gnu/c-common.h"
enum c_tree_code {
  C_DUMMY_TREE_CODE = LAST_AND_UNUSED_TREE_CODE,
# 1 "../../../kg++fe/gnu/c-common.def" 1
# 34 "../../../kg++fe/gnu/c-common.def"
SRCLOC,

SIZEOF_EXPR,
ARROW_EXPR,
ALIGNOF_EXPR,



EXPR_STMT,



COMPOUND_STMT,



DECL_STMT,



IF_STMT,



FOR_STMT,



WHILE_STMT,



DO_STMT,



RETURN_STMT,


BREAK_STMT,


CONTINUE_STMT,



SWITCH_STMT,


GOTO_STMT,



LABEL_STMT,


ASM_STMT,







SCOPE_STMT,



FILE_STMT,





CASE_LABEL,



STMT_EXPR,






COMPOUND_LITERAL_EXPR,




CLEANUP_STMT,







OMP_MARKER_STMT,





FREQ_HINT_STMT,
# 1153 "../../../kg++fe/gnu/c-common.h" 2
  LAST_C_TREE_CODE
};



extern void genrtl_do_pushlevel (void);
extern void genrtl_goto_stmt (tree);
extern void genrtl_expr_stmt (tree);
extern void genrtl_expr_stmt_value (tree, int, int);
extern void genrtl_decl_stmt (tree);
extern void genrtl_if_stmt (tree);
extern void genrtl_while_stmt (tree);
extern void genrtl_do_stmt (tree);
extern void genrtl_return_stmt (tree);
extern void genrtl_for_stmt (tree);
extern void genrtl_break_stmt (void);
extern void genrtl_continue_stmt (void);
extern void genrtl_scope_stmt (tree);
extern void genrtl_switch_stmt (tree);
extern void genrtl_case_label (tree);
extern void genrtl_compound_stmt (tree);
extern void genrtl_asm_stmt (tree, tree, tree, tree, tree, int);


extern void genrtl_decl_cleanup (tree);
extern int stmts_are_full_exprs_p (void);
extern int anon_aggr_type_p (tree);
# 1197 "../../../kg++fe/gnu/c-common.h"
extern void emit_local_var (tree);
extern void make_rtl_for_local_static (tree);
extern tree expand_cond (tree);
extern tree c_expand_return (tree);
extern tree do_case (tree, tree);
extern tree build_stmt (enum tree_code, ...);
extern tree build_case_label (tree, tree, tree);
extern tree build_continue_stmt (void);
extern tree build_break_stmt (void);
extern tree build_return_stmt (tree);







extern void c_expand_asm_operands (tree, tree, tree, tree, int, const char *, int);




extern tree build_unary_op (enum tree_code, tree, int);

extern tree build_binary_op (enum tree_code, tree, tree, int);

extern int lvalue_p (tree);
extern tree default_conversion (tree);




extern tree common_type (tree, tree);

extern tree expand_tree_builtin (tree, tree, tree);

extern tree decl_constant_value (tree);


extern tree boolean_increment (enum tree_code, tree);




extern void extract_interface_info (void);

extern int case_compare (splay_tree_key, splay_tree_key);


extern tree c_add_case_label (splay_tree, tree, tree, tree);



extern tree build_function_call (tree, tree);

extern tree finish_label_address_expr (tree);



extern tree lookup_label (tree);

extern rtx c_expand_expr (tree, rtx, enum machine_mode, int);



extern int c_safe_from_p (rtx, tree);

extern int c_staticp (tree);

extern int c_common_unsafe_for_reeval (tree);

extern const char *init_c_lex (const char *);

extern void cb_register_builtins (cpp_reader *);



struct c_fileinfo
{
  int time;
  short interface_only;
  short interface_unknown;
};

struct c_fileinfo *get_fileinfo (const char *);
extern void dump_time_statistics (void);

extern int c_dump_tree (void *, tree);




extern tree build_omp_stmt (enum omp_tree_type, void *);
# 44 "../../../kg++fe/gnu/c-common.c" 2
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
# 45 "../../../kg++fe/gnu/c-common.c" 2
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
# 46 "../../../kg++fe/gnu/c-common.c" 2


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
# 49 "../../../kg++fe/gnu/c-common.c" 2
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
# 50 "../../../kg++fe/gnu/c-common.c" 2
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
# 51 "../../../kg++fe/gnu/c-common.c" 2
# 1 "../../../kg++fe/gnu/tree-inline.h" 1
# 27 "../../../kg++fe/gnu/tree-inline.h"
void optimize_inline_calls (tree);
int tree_inlinable_function_p (tree);
tree walk_tree (tree*, walk_tree_fn, void*, void*);
tree walk_tree_without_duplicates (tree*, walk_tree_fn, void*);
tree copy_tree_r (tree*, int*, void*);
void clone_body (tree, tree, void*);
void remap_save_expr (tree*, void*, tree, int*);






extern int flag_inline_trees;
# 52 "../../../kg++fe/gnu/c-common.c" 2
# 1 "../../../kg++fe/gnu/c-tree.h" 1
# 37 "../../../kg++fe/gnu/c-tree.h"
struct lang_identifier
{
  struct c_common_identifier common_id;
  tree global_value;
  tree local_value;
  tree label_value;
  tree implicit_decl;
  tree error_locus;
  tree limbo_value;
};



union lang_tree_node
 

{
  union tree_node

    generic;
  struct lang_identifier identifier;
};



struct lang_decl
{
  struct c_lang_decl base;



  tree pending_sizes;
};
# 126 "../../../kg++fe/gnu/c-tree.h"
struct lang_type
{
  int len;
  tree elts[1];
};
# 167 "../../../kg++fe/gnu/c-tree.h"
extern tree lookup_interface (tree);
extern tree is_class_name (tree);
extern tree objc_is_id (tree);
extern void objc_check_decl (tree);
extern void finish_file (void);
extern int objc_comptypes (tree, tree, int);
extern tree objc_message_selector (void);
extern tree lookup_objc_ivar (tree);



extern void c_parse_init (void);


extern void gen_aux_info_record (tree, int, int, int);


extern int global_bindings_p (void);
extern int kept_level_p (void);
extern tree getdecls (void);
extern void pushlevel (int);
extern tree poplevel (int,int, int);
extern void insert_block (tree);
extern void set_block (tree);
extern tree pushdecl (tree);

extern void c_insert_default_attributes (tree);
extern void c_init_decl_processing (void);
extern void c_dup_lang_specific_decl (tree);
extern void c_print_identifier (FILE *, tree, int);
extern tree build_array_declarator (tree, tree, int, int);
extern tree build_enumerator (tree, tree);
extern void check_for_loop_decls (void);
extern void clear_parm_order (void);
extern int complete_array_type (tree, tree, int);
extern void declare_parm_level (int);
extern tree define_label (const char *, int, tree);

extern void finish_decl (tree, tree, tree);
extern tree finish_enum (tree, tree, tree);
extern void finish_function (int, int);
extern tree finish_struct (tree, tree, tree);
extern tree get_parm_info (int);
extern tree grokfield (const char *, int, tree, tree, tree);
extern tree groktypename (tree);
extern tree groktypename_in_parm_context (tree);
extern tree implicitly_declare (tree);
extern void implicit_decl_warning (tree);
extern int in_parm_level_p (void);
extern void keep_next_level (void);
extern tree lookup_name (tree);
extern tree lookup_name_current_level (tree);
extern void parmlist_tags_warning (void);
extern void pending_xref_error (void);
extern void c_push_function_context (struct function *);
extern void c_pop_function_context (struct function *);
extern void pop_label_level (void);
extern void push_label_level (void);
extern void push_parm_decl (tree);
extern tree pushdecl_top_level (tree);
extern void pushtag (tree, tree);
extern tree set_array_declarator_type (tree, tree, int);
extern tree shadow_label (tree);
extern void shadow_tag (tree);
extern void shadow_tag_warned (tree, int);
extern tree start_enum (tree);
extern int start_function (tree, tree, tree);
extern tree start_decl (tree, tree, int, tree);

extern tree start_struct (enum tree_code, tree);
extern void store_parm_decls (void);
extern tree xref_tag (enum tree_code, tree);
extern tree c_begin_compound_stmt (void);
extern void c_expand_deferred_function (tree);
extern void c_expand_decl_stmt (tree);
extern tree make_pointer_declarator (tree, tree);


extern int c_disregard_inline_limits (tree);
extern int c_cannot_inline_tree_fn (tree *);
extern const char *c_objc_common_init (const char *);
extern int c_missing_noreturn_ok_p (tree);
extern void c_objc_common_finish_file (void);
extern int defer_fn (tree);
extern _Bool c_warn_unused_global_decl (tree);
# 260 "../../../kg++fe/gnu/c-tree.h"
extern tree require_complete_type (tree);
extern int comptypes (tree, tree);
extern tree c_size_in_bytes (tree);
extern _Bool c_mark_addressable (tree);
extern void c_incomplete_type_error (tree, tree);
extern tree c_type_promotes_to (tree);
extern tree build_component_ref (tree, tree);
extern tree build_indirect_ref (tree, const char *);
extern tree build_array_ref (tree, tree);
extern tree build_external_ref (tree, int);
extern tree parser_build_binary_op (enum tree_code, tree, tree);

extern int c_tree_expr_nonnegative_p (tree);
extern void readonly_warning (tree, const char *);
extern tree build_conditional_expr (tree, tree, tree);
extern tree build_compound_expr (tree);
extern tree c_cast_expr (tree, tree);
extern tree build_c_cast (tree, tree);
extern tree build_modify_expr (tree, enum tree_code, tree);

extern void store_init_value (tree, tree);
extern void error_init (const char *);
extern void pedwarn_init (const char *);
extern void start_init (tree, tree, int);
extern void finish_init (void);
extern void really_start_incremental_init (tree);
extern void push_init_level (int);
extern tree pop_init_level (int);
extern void set_init_index (tree, tree);
extern void set_init_label (tree);
extern void process_init_element (tree);
extern tree build_compound_literal (tree, tree);
extern void pedwarn_c90 (const char *, ...)
       __attribute__ ((__format__ (__printf__, 1, 2))) __attribute__ ((__nonnull__ (1)));
extern void pedwarn_c99 (const char *, ...)
       __attribute__ ((__format__ (__printf__, 1, 2))) __attribute__ ((__nonnull__ (1)));
extern tree c_start_case (tree);
extern void c_finish_case (void);
extern tree simple_asm_stmt (tree);
extern tree build_asm_stmt (tree, tree, tree, tree, tree);

extern tree c_convert_parm_for_inlining (tree, tree, tree);




extern int current_function_returns_value;




extern int current_function_returns_null;




extern int current_function_returns_abnormally;



extern int system_header_p;


extern void c_finish_incomplete_decl (tree);

extern tree static_ctors;
extern tree static_dtors;
# 53 "../../../kg++fe/gnu/c-common.c" 2

cpp_reader *parse_in;
# 104 "../../../kg++fe/gnu/c-common.c"
enum c_language_kind c_language;
# 200 "../../../kg++fe/gnu/c-common.c"
tree c_global_trees[CTI_MAX];




int flag_preprocess_only;



int flag_iso;


int flag_objc;



int flag_undef;



int flag_no_builtin;




int flag_no_nonansi_builtin;



int flag_short_double;



int flag_short_wchar;


int flag_ms_extensions;



int flag_no_asm;




int flag_const_strings;






int dollars_in_ident = 1;



int flag_signed_bitfields = 1;
int explicit_flag_signed_bitfields;




int warn_cast_qual;



int warn_missing_format_attribute;




int warn_pointer_arith;




int warn_missing_prototypes;



int warn_parentheses;



int warn_missing_braces;




int warn_sign_compare;



int warn_long_long = 1;




int warn_write_strings;




int warn_redundant_decls;



int warn_float_equal;



int warn_char_subscripts;



int warn_conversion;



int warn_unknown_pragmas;




int warn_format;



int warn_format_y2k;



int warn_format_extra_args;



int warn_format_zero_length;



int warn_format_nonliteral;



int warn_format_security;
# 353 "../../../kg++fe/gnu/c-common.c"
int mesg_implicit_function_declaration = -1;




int flag_cond_mismatch;



int flag_isoc94;



int flag_isoc99;



int flag_hosted = 1;




int flag_noniso_default_format_attributes = 1;





int warn_bad_function_cast;



int warn_traditional;



int warn_declaration_after_statement;




int warn_strict_prototypes;




int warn_missing_declarations;







int warn_nested_externs;



int warn_main;



int warn_sequence_point;


int warn_div_by_zero = 1;



int warn_implicit_int;




int warn_nonnull;
# 436 "../../../kg++fe/gnu/c-common.c"
int flag_gen_declaration;






int flag_next_runtime = 0;






int print_struct_values;



const char *constant_string_class_name;





int warn_selector;






int warn_undeclared_selector;





int warn_protocol = 1;







int flag_no_gnu_keywords;




int flag_implement_inlines = 1;




int flag_external_templates;





int flag_alt_external_templates;



int flag_implicit_templates = 1;





int flag_implicit_inline_templates = 1;




int flag_use_repository;




int flag_optional_diags = 1;



int flag_elide_constructors = 1;




int flag_default_inline = 1;




int flag_rtti = 1;






int flag_conserve_space;



int flag_access_control = 1;




int flag_check_new;
# 556 "../../../kg++fe/gnu/c-common.c"
int flag_new_for_scope = 1;





int flag_weak = 1;




int flag_use_cxa_atexit = 1;



int flag_vtable_gc;




int flag_permissive;






int flag_enforce_eh_specs = 1;
# 598 "../../../kg++fe/gnu/c-common.c"
int flag_abi_version = 1;




int warn_abi = 0;



int warn_implicit = 1;




int warn_ctor_dtor_privacy = 1;





int warn_overloaded_virtual;




int warn_nonvdtor;



int warn_reorder;



int warn_synth;




int warn_pmf2ptr = 1;



int warn_ecpp;




int warn_sign_promo;



int warn_old_style_cast;




int warn_nontemplate_friend = 1;



int warn_deprecated = 1;





int max_tinst_depth = 500;





tree *ridpointers;

tree (*make_fname_decl) (tree, int);



int (*lang_statement_code_p) (enum tree_code);



void (*lang_expand_function_end) (void);



int skip_evaluation;


struct fname_var_t
{
  tree *const decl;
  const unsigned rid;
  const int pretty;
};



const struct fname_var_t fname_vars[] =
{

  {&c_global_trees[CTI_C99_FUNCTION_NAME_DECL], RID_C99_FUNCTION_NAME, 0},

  {&c_global_trees[CTI_FUNCTION_NAME_DECL], RID_FUNCTION_NAME, 0},

  {&c_global_trees[CTI_PRETTY_FUNCTION_NAME_DECL], RID_PRETTY_FUNCTION_NAME, 1},
  {((void *)0), 0, 0},
};

static int constant_fits_type_p (tree, tree);






typedef struct
{
  int compstmt_count;
  int line;
  const char *file;
  int needs_warning;
  tree if_stmt;
} if_elt;

static if_elt *if_stack;


static int if_stack_space = 0;


static int if_stack_pointer = 0;

static tree handle_packed_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_nocommon_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_common_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_noreturn_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_noinline_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_always_inline_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_used_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_unused_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_const_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_transparent_union_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_constructor_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_destructor_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_mode_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_section_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_aligned_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_weak_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_alias_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_visibility_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_tls_model_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_no_instrument_function_attribute (tree *, tree, tree, int, _Bool *);


static tree handle_malloc_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_no_limit_stack_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_pure_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_deprecated_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_vector_size_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_nonnull_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_nothrow_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_cleanup_attribute (tree *, tree, tree, int, _Bool *);


static tree handle_syscall_linkage_attribute (tree *, tree, tree, int, _Bool *);

static tree handle_widenretval_attribute (tree *, tree, tree, int, _Bool *);




static tree handle_sl_model_attribute (tree *, tree, tree, int, _Bool *);


static tree vector_size_helper (tree, tree);

static void check_function_nonnull (tree, tree);
static void check_nonnull_arg (void *, tree, unsigned long long);

static _Bool nonnull_check_p (tree, unsigned long long);
static _Bool get_nonnull_operand (tree, unsigned long long *);

void builtin_define_std (const char *);
static void builtin_define_with_value (const char *, const char *, int);

static void builtin_define_with_int_value (const char *, long long);

static void builtin_define_with_hex_fp_value (const char *, tree, int, const char *, const char *);


static void builtin_define_type_max (const char *, tree, int);
static void builtin_define_type_precision (const char *, tree);
static void builtin_define_float_constants (const char *, const char *, tree);



const struct attribute_spec c_common_attribute_table[] =
{

  { "packed", 0, 0, 0, 0, 0,
               handle_packed_attribute },
  { "nocommon", 0, 0, 1, 0, 0,
         handle_nocommon_attribute },
  { "common", 0, 0, 1, 0, 0,
         handle_common_attribute },





  { "noreturn", 0, 0, 1, 0, 0,
         handle_noreturn_attribute },
  { "volatile", 0, 0, 1, 0, 0,
         handle_noreturn_attribute },
  { "noinline", 0, 0, 1, 0, 0,
         handle_noinline_attribute },
  { "always_inline", 0, 0, 1, 0, 0,
         handle_always_inline_attribute },
  { "used", 0, 0, 1, 0, 0,
         handle_used_attribute },
  { "unused", 0, 0, 0, 0, 0,
         handle_unused_attribute },

  { "const", 0, 0, 1, 0, 0,
         handle_const_attribute },
  { "transparent_union", 0, 0, 0, 0, 0,
         handle_transparent_union_attribute },
  { "constructor", 0, 0, 1, 0, 0,
         handle_constructor_attribute },
  { "destructor", 0, 0, 1, 0, 0,
         handle_destructor_attribute },
  { "mode", 1, 1, 0, 1, 0,
         handle_mode_attribute },
  { "section", 1, 1, 1, 0, 0,
         handle_section_attribute },
  { "aligned", 0, 1, 0, 0, 0,
         handle_aligned_attribute },
  { "weak", 0, 0, 1, 0, 0,
         handle_weak_attribute },
  { "alias", 1, 1, 1, 0, 0,
         handle_alias_attribute },
  { "no_instrument_function", 0, 0, 1, 0, 0,
         handle_no_instrument_function_attribute },
  { "malloc", 0, 0, 1, 0, 0,
         handle_malloc_attribute },
  { "no_stack_limit", 0, 0, 1, 0, 0,
         handle_no_limit_stack_attribute },
  { "pure", 0, 0, 1, 0, 0,
         handle_pure_attribute },
  { "deprecated", 0, 0, 0, 0, 0,
         handle_deprecated_attribute },
  { "vector_size", 1, 1, 0, 1, 0,
         handle_vector_size_attribute },
  { "visibility", 1, 1, 1, 0, 0,
         handle_visibility_attribute },
  { "tls_model", 1, 1, 1, 0, 0,
         handle_tls_model_attribute },
  { "nonnull", 0, -1, 0, 1, 1,
         handle_nonnull_attribute },
  { "nothrow", 0, 0, 1, 0, 0,
         handle_nothrow_attribute },
  { "may_alias", 0, 0, 0, 1, 0, ((void *)0) },
  { "cleanup", 1, 1, 1, 0, 0,
         handle_cleanup_attribute },

  { "syscall_linkage", 0, 0, 1, 0, 0,
                              handle_syscall_linkage_attribute },
  { "readonlyargs", 0, 0, 1, 0, 0,
                              handle_syscall_linkage_attribute },
  { "widenretval", 0, 0, 1, 0, 0,
                              handle_widenretval_attribute },


  {"sl_model", 1, 1, 1, 0, 0,
                             handle_sl_model_attribute },

  { ((void *)0), 0, 0, 0, 0, 0, ((void *)0) }
};




const struct attribute_spec c_common_format_attribute_table[] =
{

  { "format", 3, 3, 0, 1, 1,
         handle_format_attribute },
  { "format_arg", 1, 1, 0, 1, 1,
         handle_format_arg_attribute },
  { ((void *)0), 0, 0, 0, 0, 0, ((void *)0) }
};
# 926 "../../../kg++fe/gnu/c-common.c"
void
c_expand_start_cond (cond, compstmt_count, if_stmt)
     tree cond;
     int compstmt_count;
     tree if_stmt;
{

  if (if_stack_space == 0)
    {
      if_stack_space = 10;
      if_stack = (if_elt *) xmalloc (10 * sizeof (if_elt));
    }
  else if (if_stack_space == if_stack_pointer)
    {
      if_stack_space += 10;
      if_stack = (if_elt *) xrealloc (if_stack, if_stack_space * sizeof (if_elt));
    }

  (((if_stmt))->exp.operands[0]) = cond;
  add_stmt (if_stmt);


  if_stack[if_stack_pointer].compstmt_count = compstmt_count;
  if_stack[if_stack_pointer].file = input_filename;
  if_stack[if_stack_pointer].line = lineno;
  if_stack[if_stack_pointer].needs_warning = 0;
  if_stack[if_stack_pointer].if_stmt = if_stmt;
  if_stack_pointer++;
}



void
c_finish_then ()
{
  tree if_stmt = if_stack[if_stack_pointer - 1].if_stmt;
  do { (((if_stmt))->exp.operands[1]) = ((if_stmt)->common.chain); ((if_stmt)->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = if_stmt; } while (0);
}




void
c_expand_end_cond ()
{
  if_stack_pointer--;
  if (if_stack[if_stack_pointer].needs_warning)
    warning_with_file_and_line (if_stack[if_stack_pointer].file,
    if_stack[if_stack_pointer].line,
    "suggest explicit braces to avoid ambiguous `else'");
  (current_stmt_tree ()->x_last_expr_type) = (tree) ((void *)0);
}




void
c_expand_start_else ()
{


  if (warn_parentheses
      && if_stack_pointer > 1
      && (if_stack[if_stack_pointer - 1].compstmt_count
   == if_stack[if_stack_pointer - 2].compstmt_count))
    if_stack[if_stack_pointer - 2].needs_warning = 1;




  if_stack[if_stack_pointer - 1].needs_warning = 0;
  if_stack[if_stack_pointer - 1].compstmt_count--;
}



void
c_finish_else ()
{
  tree if_stmt = if_stack[if_stack_pointer - 1].if_stmt;
  do { (((if_stmt))->exp.operands[2]) = ((if_stmt)->common.chain); ((if_stmt)->common.chain) = (tree) ((void *)0); (current_stmt_tree ()->x_last_stmt) = if_stmt; } while (0);
}
# 1017 "../../../kg++fe/gnu/c-common.c"
tree
c_begin_if_stmt ()
{
  tree r;
  r = build_stmt (IF_STMT, (tree) ((void *)0), (tree) ((void *)0), (tree) ((void *)0));
  return r;
}
# 1033 "../../../kg++fe/gnu/c-common.c"
tree
c_begin_while_stmt ()
{
  tree r;
  r = build_stmt (WHILE_STMT, (tree) ((void *)0), (tree) ((void *)0));
  return r;
}

void
c_finish_while_stmt_cond (cond, while_stmt)
     tree while_stmt;
     tree cond;
{
  (((while_stmt))->exp.operands[0]) = cond;
}



void
start_fname_decls ()
{
  unsigned ix;
  tree saved = (tree) ((void *)0);

  for (ix = 0; fname_vars[ix].decl; ix++)
    {
      tree decl = *fname_vars[ix].decl;

      if (decl)
 {
   saved = tree_cons (decl, build_int_2_wide ((unsigned long long) (ix), (long long) (0)), saved);
   *fname_vars[ix].decl = (tree) ((void *)0);
 }
    }
  if (saved || c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS])


    c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS] = tree_cons (saved, (tree) ((void *)0),
        c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS]);
}
# 1081 "../../../kg++fe/gnu/c-common.c"
void
finish_fname_decls ()
{
  unsigned ix;
  tree body = (tree) ((void *)0);
  tree stack = c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS];

  for (; stack && ((stack)->list.value); stack = ((stack)->common.chain))
    body = chainon (((stack)->list.value), body);

  if (body)
    {

      body = chainon (body,
        ((((current_function_decl)->decl.saved_tree))->common.chain));
      body = build_stmt (COMPOUND_STMT, body);

      ((body)->common.lang_flag_0) = 1;
      ((((current_function_decl)->decl.saved_tree))->common.chain) = body;
    }

  for (ix = 0; fname_vars[ix].decl; ix++)
    *fname_vars[ix].decl = (tree) ((void *)0);

  if (stack)
    {

      tree saved;

      for (saved = ((stack)->list.purpose); saved; saved = ((saved)->common.chain))
 {
   tree decl = ((saved)->list.purpose);
   unsigned ix = (((((saved)->list.value))->int_cst.int_cst).low);

   *fname_vars[ix].decl = decl;
 }
      stack = ((stack)->common.chain);
    }
  c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS] = stack;
}




const char *
fname_as_string (pretty_p)
     int pretty_p;
{
  const char *name = ((void *)0);

  if (pretty_p)
    name = (current_function_decl
     ? (*lang_hooks.decl_printable_name) (current_function_decl, 2)
     : "top level");
  else if (current_function_decl && ((current_function_decl)->decl.name))
    name = ((char *)(((current_function_decl)->decl.name))->identifier.id.str);
  else
    name = "";
  return name;
}




const char *
fname_string (rid)
     unsigned rid;
{
  unsigned ix;

  for (ix = 0; fname_vars[ix].decl; ix++)
    if (fname_vars[ix].rid == rid)
      break;
  return fname_as_string (fname_vars[ix].pretty);
}
# 1164 "../../../kg++fe/gnu/c-common.c"
tree
fname_decl (rid, id)
     unsigned rid;
     tree id;
{
  unsigned ix;
  tree decl = (tree) ((void *)0);

  for (ix = 0; fname_vars[ix].decl; ix++)
    if (fname_vars[ix].rid == rid)
      break;

  decl = *fname_vars[ix].decl;
  if (!decl)
    {
      tree saved_last_tree = (current_stmt_tree ()->x_last_stmt);





      int saved_lineno = lineno;
      lineno = 0;

      decl = (*make_fname_decl) (id, fname_vars[ix].pretty);
      if ((current_stmt_tree ()->x_last_stmt) != saved_last_tree)
 {



   tree stmts = ((saved_last_tree)->common.chain);

   ((saved_last_tree)->common.chain) = (tree) ((void *)0);
   (current_stmt_tree ()->x_last_stmt) = saved_last_tree;
   c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS] = tree_cons (decl, stmts,
       c_global_trees[CTI_SAVED_FUNCTION_NAME_DECLS]);
 }
      *fname_vars[ix].decl = decl;
      lineno = saved_lineno;
    }
  if (!ix && !current_function_decl)
    pedwarn_with_decl (decl, "`%s' is not defined outside of function scope");

  return decl;
}



tree
fix_string_type (value)
      tree value;
{
  const int wchar_bytes = ((c_global_trees[CTI_WCHAR_TYPE])->type.precision) / 8;
  const int wide_flag = ((value)->common.type) == c_global_trees[CTI_WCHAR_ARRAY_TYPE];
  const int nchars_max = flag_isoc99 ? 4095 : 509;
  int length = ((value)->string.length);
  int nchars;


  nchars = wide_flag ? length / wchar_bytes : length;

  if (pedantic && nchars - 1 > nchars_max && c_language == clk_c)
    pedwarn ("string length `%d' is greater than the length `%d' ISO C%d compilers are required to support",
      nchars - 1, nchars_max, flag_isoc99 ? 99 : 89);





  if (flag_const_strings && ! flag_writable_strings)
    {
      tree elements
 = build_qualified_type ((wide_flag ? c_global_trees[CTI_WCHAR_TYPE] : integer_types[itk_char]), ((1) ? 0x1 : 0) | ((0) ? 0x2 : 0));

      ((value)->common.type)
 = build_array_type (elements,
       build_index_type (build_int_2_wide ((unsigned long long) (nchars - 1), (long long) (0))));
    }
  else
    ((value)->common.type)
      = build_array_type (wide_flag ? c_global_trees[CTI_WCHAR_TYPE] : integer_types[itk_char],
     build_index_type (build_int_2_wide ((unsigned long long) (nchars - 1), (long long) (0))));

  ((value)->common.constant_flag) = 1;
  ((value)->common.readonly_flag) = ! flag_writable_strings;
  ((value)->common.static_flag) = 1;
  return value;
}




tree
combine_strings (strings)
     varray_type strings;
{
  const int wchar_bytes = ((c_global_trees[CTI_WCHAR_TYPE])->type.precision) / 8;
  const int nstrings = ((strings)->elements_used);
  tree value, t;
  int length = 1;
  int wide_length = 0;
  int wide_flag = 0;
  int i;
  char *p, *q;



  for (i = 0; i < nstrings; ++i)
    {
      t = ((strings)->data.tree[i]);

      if (((t)->common.type) == c_global_trees[CTI_WCHAR_ARRAY_TYPE])
 {
   wide_length += ((t)->string.length) - wchar_bytes;
   wide_flag = 1;
 }
      else
 {
   length += (((t)->string.length) - 1);
   if (((t)->common.lang_flag_0) && !in_system_header)
     warning ("concatenation of string literals with __FUNCTION__ is deprecated");
 }
    }



  if (wide_flag)
    length = length * wchar_bytes + wide_length;

  p = xmalloc (length);





  q = p;
  for (i = 0; i < nstrings; ++i)
    {
      int len, this_wide;

      t = ((strings)->data.tree[i]);
      this_wide = ((t)->common.type) == c_global_trees[CTI_WCHAR_ARRAY_TYPE];
      len = ((t)->string.length) - (this_wide ? wchar_bytes : 1);
      if (this_wide == wide_flag)
 {
   memcpy (q, ((t)->string.pointer), len);
   q += len;
 }
      else
 {
   const int nzeros = (((c_global_trees[CTI_WCHAR_TYPE])->type.precision)
         / 8) - 1;
   int j, k;

   if (((target_flags & 0x00010000) != 0))
     {
       for (k = 0; k < len; k++)
  {
    for (j = 0; j < nzeros; j++)
      *q++ = 0;
    *q++ = ((t)->string.pointer)[k];
  }
     }
   else
     {
       for (k = 0; k < len; k++)
  {
    *q++ = ((t)->string.pointer)[k];
    for (j = 0; j < nzeros; j++)
      *q++ = 0;
  }
     }
 }
    }


  if (wide_flag)
    {
      for (i = 0; i < wchar_bytes; i++)
 *q++ = 0;
    }
  else
    *q = 0;

  value = build_string (length, p);
  free (p);

  if (wide_flag)
    ((value)->common.type) = c_global_trees[CTI_WCHAR_ARRAY_TYPE];
  else
    ((value)->common.type) = c_global_trees[CTI_CHAR_ARRAY_TYPE];

  return value;
}

static int is_valid_printf_arglist (tree);
static rtx c_expand_builtin (tree, rtx, enum machine_mode, enum expand_modifier);
static rtx c_expand_builtin_printf (tree, rtx, enum machine_mode, enum expand_modifier, int, int);

static rtx c_expand_builtin_fprintf (tree, rtx, enum machine_mode, enum expand_modifier, int, int);
# 1372 "../../../kg++fe/gnu/c-common.c"
void
constant_expression_warning (value)
     tree value;
{
  if ((((enum tree_code) (value)->common.code) == INTEGER_CST || ((enum tree_code) (value)->common.code) == REAL_CST
       || ((enum tree_code) (value)->common.code) == VECTOR_CST
       || ((enum tree_code) (value)->common.code) == COMPLEX_CST)
      && ((value)->common.static_flag) && pedantic)
    pedwarn ("overflow in constant expression");
}
# 1390 "../../../kg++fe/gnu/c-common.c"
void
overflow_warning (value)
     tree value;
{
  if ((((enum tree_code) (value)->common.code) == INTEGER_CST
       || (((enum tree_code) (value)->common.code) == COMPLEX_CST
    && ((enum tree_code) (((value)->complex.real))->common.code) == INTEGER_CST))
      && ((value)->common.public_flag))
    {
      ((value)->common.public_flag) = 0;
      if (skip_evaluation == 0)
 warning ("integer overflow in expression");
    }
  else if ((((enum tree_code) (value)->common.code) == REAL_CST
     || (((enum tree_code) (value)->common.code) == COMPLEX_CST
  && ((enum tree_code) (((value)->complex.real))->common.code) == REAL_CST))
    && ((value)->common.public_flag))
    {
      ((value)->common.public_flag) = 0;
      if (skip_evaluation == 0)
 warning ("floating point overflow in expression");
    }
  else if (((enum tree_code) (value)->common.code) == VECTOR_CST && ((value)->common.public_flag))
    {
      ((value)->common.public_flag) = 0;
      if (skip_evaluation == 0)
 warning ("vector overflow in expression");
    }
}






void
unsigned_conversion_warning (result, operand)
     tree result, operand;
{
  tree type = ((result)->common.type);

  if (((enum tree_code) (operand)->common.code) == INTEGER_CST
      && ((enum tree_code) (type)->common.code) == INTEGER_TYPE
      && ((type)->common.unsigned_flag)
      && skip_evaluation == 0
      && !int_fits_type_p (operand, type))
    {
      if (!int_fits_type_p (operand, c_common_signed_type (type)))

 warning ("large integer implicitly truncated to unsigned type");
      else if (warn_conversion)
 warning ("negative integer implicitly converted to unsigned type");
    }
}




static int
constant_fits_type_p (c, type)
     tree c, type;
{
  if (((enum tree_code) (c)->common.code) == INTEGER_CST)
    return int_fits_type_p (c, type);

  c = convert (type, c);
  return !((c)->common.public_flag);
}





tree
convert_and_check (type, expr)
     tree type, expr;
{
  tree t = convert (type, expr);
  if (((enum tree_code) (t)->common.code) == INTEGER_CST)
    {
      if (((t)->common.public_flag))
 {
   ((t)->common.public_flag) = 0;



   ((t)->common.static_flag) = ((expr)->common.static_flag);


   if (!(((type)->common.unsigned_flag) < ((((expr)->common.type))->common.unsigned_flag)
  && ((enum tree_code) (((expr)->common.type))->common.code) == INTEGER_TYPE
  && ((type)->type.precision) == ((((expr)->common.type))->type.precision)))


     if ((pedantic
   || ((type)->common.unsigned_flag)
   || ! constant_fits_type_p (expr,
         c_common_unsigned_type (type)))
         && skip_evaluation == 0)
       warning ("overflow in implicit constant conversion");
 }
      else
 unsigned_conversion_warning (t, expr);
    }
  return t;
}




struct tlist
{
  struct tlist *next;
  tree expr, writer;
};



struct tlist_cache
{
  struct tlist_cache *next;
  struct tlist *cache_before_sp;
  struct tlist *cache_after_sp;
  tree expr;
};



static struct obstack tlist_obstack;
static char *tlist_firstobj = 0;



static struct tlist *warned_ids;


static struct tlist_cache *save_expr_cache;

static void add_tlist (struct tlist **, struct tlist *, tree, int);
static void merge_tlist (struct tlist **, struct tlist *, int);
static void verify_tree (tree, struct tlist **, struct tlist **, tree);
static int warning_candidate_p (tree);
static void warn_for_collisions (struct tlist *);
static void warn_for_collisions_1 (tree, tree, struct tlist *, int);
static struct tlist *new_tlist (struct tlist *, tree, tree);
static void verify_sequence_points (tree);


static struct tlist *
new_tlist (next, t, writer)
     struct tlist *next;
     tree t;
     tree writer;
{
  struct tlist *l;
  l = (struct tlist *) __extension__ ({ struct obstack *__h = (&tlist_obstack); __extension__ ({ struct obstack *__o = (__h); int __len = ((sizeof *l)); if (__o->chunk_limit - __o->next_free < __len) _obstack_newchunk (__o, __len); __o->next_free += __len; (void) 0; }); __extension__ ({ struct obstack *__o1 = (__h); void *value; value = (void *) __o1->object_base; if (__o1->next_free == value) __o1->maybe_empty_object = 1; __o1->next_free = (((((__o1->next_free) - (char *) 0)+__o1->alignment_mask) & ~ (__o1->alignment_mask)) + (char *) 0); if (__o1->next_free - (char *)__o1->chunk > __o1->chunk_limit - (char *)__o1->chunk) __o1->next_free = __o1->chunk_limit; __o1->object_base = __o1->next_free; value; }); });
  l->next = next;
  l->expr = t;
  l->writer = writer;
  return l;
}




static void
add_tlist (to, add, exclude_writer, copy)
     struct tlist **to;
     struct tlist *add;
     tree exclude_writer;
     int copy;
{
  while (add)
    {
      struct tlist *next = add->next;
      if (! copy)
 add->next = *to;
      if (! exclude_writer || add->writer != exclude_writer)
 *to = copy ? new_tlist (*to, add->expr, add->writer) : add;
      add = next;
    }
}







static void
merge_tlist (to, add, copy)
     struct tlist **to;
     struct tlist *add;
     int copy;
{
  struct tlist **end = to;

  while (*end)
    end = &(*end)->next;

  while (add)
    {
      int found = 0;
      struct tlist *tmp2;
      struct tlist *next = add->next;

      for (tmp2 = *to; tmp2; tmp2 = tmp2->next)
 if (tmp2->expr == add->expr)
   {
     found = 1;
     if (! tmp2->writer)
       tmp2->writer = add->writer;
   }
      if (! found)
 {
   *end = copy ? add : new_tlist (((void *)0), add->expr, add->writer);
   end = &(*end)->next;
   *end = 0;
 }
      add = next;
    }
}





static void
warn_for_collisions_1 (written, writer, list, only_writes)
     tree written, writer;
     struct tlist *list;
     int only_writes;
{
  struct tlist *tmp;


  for (tmp = warned_ids; tmp; tmp = tmp->next)
    if (tmp->expr == written)
      return;

  while (list)
    {
      if (list->expr == written
   && list->writer != writer
   && (! only_writes || list->writer))
 {
   warned_ids = new_tlist (warned_ids, written, (tree) ((void *)0));
   warning ("operation on `%s' may be undefined",
     ((char *)(((list->expr)->decl.name))->identifier.id.str));
 }
      list = list->next;
    }
}




static void
warn_for_collisions (list)
     struct tlist *list;
{
  struct tlist *tmp;

  for (tmp = list; tmp; tmp = tmp->next)
    {
      if (tmp->writer)
 warn_for_collisions_1 (tmp->expr, tmp->writer, list, 0);
    }
}



static int
warning_candidate_p (x)
     tree x;
{
  return ((enum tree_code) (x)->common.code) == VAR_DECL || ((enum tree_code) (x)->common.code) == PARM_DECL;
}
# 1694 "../../../kg++fe/gnu/c-common.c"
static void
verify_tree (x, pbefore_sp, pno_sp, writer)
     tree x;
     struct tlist **pbefore_sp, **pno_sp;
     tree writer;
{
  struct tlist *tmp_before, *tmp_nosp, *tmp_list2, *tmp_list3;
  enum tree_code code;
  char class;



  if (x == ((void *)0))
    return;

 restart:
  code = ((enum tree_code) (x)->common.code);
  class = tree_code_type[(int) (code)];

  if (warning_candidate_p (x))
    {
      *pno_sp = new_tlist (*pno_sp, x, writer);
      return;
    }

  switch (code)
    {
    case CONSTRUCTOR:
      return;

    case COMPOUND_EXPR:
    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
      tmp_before = tmp_nosp = tmp_list3 = 0;
      verify_tree (((x)->exp.operands[0]), &tmp_before, &tmp_nosp, (tree) ((void *)0));
      warn_for_collisions (tmp_nosp);
      merge_tlist (pbefore_sp, tmp_before, 0);
      merge_tlist (pbefore_sp, tmp_nosp, 0);
      verify_tree (((x)->exp.operands[1]), &tmp_list3, pno_sp, (tree) ((void *)0));
      merge_tlist (pbefore_sp, tmp_list3, 0);
      return;

    case COND_EXPR:
      tmp_before = tmp_list2 = 0;
      verify_tree (((x)->exp.operands[0]), &tmp_before, &tmp_list2, (tree) ((void *)0));
      warn_for_collisions (tmp_list2);
      merge_tlist (pbefore_sp, tmp_before, 0);
      merge_tlist (pbefore_sp, tmp_list2, 1);

      tmp_list3 = tmp_nosp = 0;
      verify_tree (((x)->exp.operands[1]), &tmp_list3, &tmp_nosp, (tree) ((void *)0));
      warn_for_collisions (tmp_nosp);
      merge_tlist (pbefore_sp, tmp_list3, 0);

      tmp_list3 = tmp_list2 = 0;
      verify_tree (((x)->exp.operands[2]), &tmp_list3, &tmp_list2, (tree) ((void *)0));
      warn_for_collisions (tmp_list2);
      merge_tlist (pbefore_sp, tmp_list3, 0);


      merge_tlist (&tmp_nosp, tmp_list2, 0);
      add_tlist (pno_sp, tmp_nosp, (tree) ((void *)0), 0);
      return;

    case PREDECREMENT_EXPR:
    case PREINCREMENT_EXPR:
    case POSTDECREMENT_EXPR:
    case POSTINCREMENT_EXPR:
      verify_tree (((x)->exp.operands[0]), pno_sp, pno_sp, x);
      return;

    case MODIFY_EXPR:
      tmp_before = tmp_nosp = tmp_list3 = 0;
      verify_tree (((x)->exp.operands[1]), &tmp_before, &tmp_nosp, (tree) ((void *)0));
      verify_tree (((x)->exp.operands[0]), &tmp_list3, &tmp_list3, x);
# 1777 "../../../kg++fe/gnu/c-common.c"
      add_tlist (&tmp_before, tmp_list3, x, 1);
      warn_for_collisions (tmp_before);




      add_tlist (pno_sp, tmp_list3, x, 0);
      warn_for_collisions_1 (((x)->exp.operands[0]), x, tmp_nosp, 1);

      merge_tlist (pbefore_sp, tmp_before, 0);
      if (warning_candidate_p (((x)->exp.operands[0])))
 merge_tlist (&tmp_nosp, new_tlist (((void *)0), ((x)->exp.operands[0]), x), 0);
      add_tlist (pno_sp, tmp_nosp, (tree) ((void *)0), 1);
      return;

    case CALL_EXPR:



      tmp_before = tmp_nosp = tmp_list2 = tmp_list3 = 0;
      verify_tree (((x)->exp.operands[0]), &tmp_before, &tmp_nosp, (tree) ((void *)0));
      if (((x)->exp.operands[1]))
 verify_tree (((x)->exp.operands[1]), &tmp_list2, &tmp_list3, (tree) ((void *)0));
      merge_tlist (&tmp_list3, tmp_list2, 0);
      add_tlist (&tmp_before, tmp_list3, (tree) ((void *)0), 0);
      add_tlist (&tmp_before, tmp_nosp, (tree) ((void *)0), 0);
      warn_for_collisions (tmp_before);
      add_tlist (pbefore_sp, tmp_before, (tree) ((void *)0), 0);
      return;

    case TREE_LIST:

      while (x)
 {
   tmp_before = tmp_nosp = 0;
   verify_tree (((x)->list.value), &tmp_before, &tmp_nosp, (tree) ((void *)0));
   merge_tlist (&tmp_nosp, tmp_before, 0);
   add_tlist (pno_sp, tmp_nosp, (tree) ((void *)0), 0);
   x = ((x)->common.chain);
 }
      return;

    case SAVE_EXPR:
      {
 struct tlist_cache *t;
 for (t = save_expr_cache; t; t = t->next)
   if (t->expr == x)
     break;

 if (! t)
   {
     t = (struct tlist_cache *) __extension__ ({ struct obstack *__h = (&tlist_obstack); __extension__ ({ struct obstack *__o = (__h); int __len = ((sizeof *t)); if (__o->chunk_limit - __o->next_free < __len) _obstack_newchunk (__o, __len); __o->next_free += __len; (void) 0; }); __extension__ ({ struct obstack *__o1 = (__h); void *value; value = (void *) __o1->object_base; if (__o1->next_free == value) __o1->maybe_empty_object = 1; __o1->next_free = (((((__o1->next_free) - (char *) 0)+__o1->alignment_mask) & ~ (__o1->alignment_mask)) + (char *) 0); if (__o1->next_free - (char *)__o1->chunk > __o1->chunk_limit - (char *)__o1->chunk) __o1->next_free = __o1->chunk_limit; __o1->object_base = __o1->next_free; value; }); });

     t->next = save_expr_cache;
     t->expr = x;
     save_expr_cache = t;

     tmp_before = tmp_nosp = 0;
     verify_tree (((x)->exp.operands[0]), &tmp_before, &tmp_nosp, (tree) ((void *)0));
     warn_for_collisions (tmp_nosp);

     tmp_list3 = 0;
     while (tmp_nosp)
       {
  struct tlist *t = tmp_nosp;
  tmp_nosp = t->next;
  merge_tlist (&tmp_list3, t, 0);
       }
     t->cache_before_sp = tmp_before;
     t->cache_after_sp = tmp_list3;
   }
 merge_tlist (pbefore_sp, t->cache_before_sp, 1);
 add_tlist (pno_sp, t->cache_after_sp, (tree) ((void *)0), 1);
 return;
      }
    default:
      break;
    }

  if (class == '1')
    {
      if (first_rtl_op (code) == 0)
 return;
      x = ((x)->exp.operands[0]);
      writer = 0;
      goto restart;
    }

  switch (class)
    {
    case 'r':
    case '<':
    case '2':
    case 'b':
    case 'e':
    case 's':
    case 'x':
      {
 int lp;
 int max = first_rtl_op (((enum tree_code) (x)->common.code));
 for (lp = 0; lp < max; lp++)
   {
     tmp_before = tmp_nosp = 0;
     verify_tree (((x)->exp.operands[lp]), &tmp_before, &tmp_nosp, (tree) ((void *)0));
     merge_tlist (&tmp_nosp, tmp_before, 0);
     add_tlist (pno_sp, tmp_nosp, (tree) ((void *)0), 0);
   }
 break;
      }
    }
}




static void
verify_sequence_points (expr)
     tree expr;
{
  struct tlist *before_sp = 0, *after_sp = 0;

  warned_ids = 0;
  save_expr_cache = 0;
  if (tlist_firstobj == 0)
    {
      gcc_obstack_init (&tlist_obstack);
      tlist_firstobj = __extension__ ({ struct obstack *__h = (&tlist_obstack); __extension__ ({ struct obstack *__o = (__h); int __len = ((0)); if (__o->chunk_limit - __o->next_free < __len) _obstack_newchunk (__o, __len); __o->next_free += __len; (void) 0; }); __extension__ ({ struct obstack *__o1 = (__h); void *value; value = (void *) __o1->object_base; if (__o1->next_free == value) __o1->maybe_empty_object = 1; __o1->next_free = (((((__o1->next_free) - (char *) 0)+__o1->alignment_mask) & ~ (__o1->alignment_mask)) + (char *) 0); if (__o1->next_free - (char *)__o1->chunk > __o1->chunk_limit - (char *)__o1->chunk) __o1->next_free = __o1->chunk_limit; __o1->object_base = __o1->next_free; value; }); });
    }

  verify_tree (expr, &before_sp, &after_sp, 0);
  warn_for_collisions (after_sp);
  __extension__ ({ struct obstack *__o = (&tlist_obstack); void *__obj = (tlist_firstobj); if (__obj > (void *)__o->chunk && __obj < (void *)__o->chunk_limit) __o->next_free = __o->object_base = __obj; else (obstack_free) (__o, __obj); });
}

tree
c_expand_expr_stmt (expr)
     tree expr;
{


  if ((((enum tree_code) (((expr)->common.type))->common.code) == ARRAY_TYPE
       && (flag_isoc99 || lvalue_p (expr)))
      || ((enum tree_code) (((expr)->common.type))->common.code) == FUNCTION_TYPE)
    expr = default_conversion (expr);

  if (warn_sequence_point)
    verify_sequence_points (expr);

  if (((expr)->common.type) != global_trees[TI_ERROR_MARK]
      && !((((((expr)->common.type))->type.size) != (tree) ((void *)0)) || (((enum tree_code) (((expr)->common.type))->common.code) == VOID_TYPE))
      && ((enum tree_code) (((expr)->common.type))->common.code) != ARRAY_TYPE)
    error ("expression statement has incomplete type");

  (current_stmt_tree ()->x_last_expr_type) = ((expr)->common.type);
  return add_stmt (build_stmt (EXPR_STMT, expr));
}



tree
check_case_value (value)
     tree value;
{
  if (value == (tree) ((void *)0))
    return value;


  while ((((enum tree_code) (value)->common.code) == NOP_EXPR || ((enum tree_code) (value)->common.code) == CONVERT_EXPR || ((enum tree_code) (value)->common.code) == NON_LVALUE_EXPR) && ((value)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((value)->common.type) == ((((value)->exp.operands[0]))->common.type))) (value) = ((value)->exp.operands[0]);






  if (c_language == clk_cplusplus)
    {
      value = decl_constant_value (value);
      while ((((enum tree_code) (value)->common.code) == NOP_EXPR || ((enum tree_code) (value)->common.code) == CONVERT_EXPR || ((enum tree_code) (value)->common.code) == NON_LVALUE_EXPR) && ((value)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((value)->common.type) == ((((value)->exp.operands[0]))->common.type))) (value) = ((value)->exp.operands[0]);
      value = fold (value);
    }

  if (((enum tree_code) (value)->common.code) != INTEGER_CST
      && value != global_trees[TI_ERROR_MARK])
    {
      error ("case label does not reduce to an integer constant");
      value = global_trees[TI_ERROR_MARK];
    }
  else

    value = default_conversion (value);

  constant_expression_warning (value);

  return value;
}




tree
c_common_type_for_size (bits, unsignedp)
     unsigned bits;
     int unsignedp;
{
  if (bits == ((integer_types[itk_int])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_int] : integer_types[itk_int];

  if (bits == ((integer_types[itk_signed_char])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_char] : integer_types[itk_signed_char];

  if (bits == ((integer_types[itk_short])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_short] : integer_types[itk_short];

  if (bits == ((integer_types[itk_long])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_long] : integer_types[itk_long];

  if (bits == ((integer_types[itk_long_long])->type.precision))
    return (unsignedp ? integer_types[itk_unsigned_long_long]
     : integer_types[itk_long_long]);

  if (bits == ((c_global_trees[CTI_WIDEST_INT_LIT_TYPE])->type.precision))
    return (unsignedp ? c_global_trees[CTI_WIDEST_UINT_LIT_TYPE]
     : c_global_trees[CTI_WIDEST_INT_LIT_TYPE]);

  if (bits <= ((global_trees[TI_INTQI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTQI_TYPE] : global_trees[TI_INTQI_TYPE];

  if (bits <= ((global_trees[TI_INTHI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTHI_TYPE] : global_trees[TI_INTHI_TYPE];

  if (bits <= ((global_trees[TI_INTSI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTSI_TYPE] : global_trees[TI_INTSI_TYPE];

  if (bits <= ((global_trees[TI_INTDI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTDI_TYPE] : global_trees[TI_INTDI_TYPE];

  return 0;
}





tree
c_common_type_for_mode (mode, unsignedp)
     enum machine_mode mode;
     int unsignedp;
{
  if (mode == ((integer_types[itk_int])->type.mode))
    return unsignedp ? integer_types[itk_unsigned_int] : integer_types[itk_int];

  if (mode == ((integer_types[itk_signed_char])->type.mode))
    return unsignedp ? integer_types[itk_unsigned_char] : integer_types[itk_signed_char];

  if (mode == ((integer_types[itk_short])->type.mode))
    return unsignedp ? integer_types[itk_unsigned_short] : integer_types[itk_short];

  if (mode == ((integer_types[itk_long])->type.mode))
    return unsignedp ? integer_types[itk_unsigned_long] : integer_types[itk_long];

  if (mode == ((integer_types[itk_long_long])->type.mode))
    return unsignedp ? integer_types[itk_unsigned_long_long] : integer_types[itk_long_long];

  if (mode == ((c_global_trees[CTI_WIDEST_INT_LIT_TYPE])->type.mode))
    return unsignedp ? c_global_trees[CTI_WIDEST_UINT_LIT_TYPE]
                     : c_global_trees[CTI_WIDEST_INT_LIT_TYPE];

  if (mode == QImode)
    return unsignedp ? global_trees[TI_UINTQI_TYPE] : global_trees[TI_INTQI_TYPE];

  if (mode == HImode)
    return unsignedp ? global_trees[TI_UINTHI_TYPE] : global_trees[TI_INTHI_TYPE];

  if (mode == SImode)
    return unsignedp ? global_trees[TI_UINTSI_TYPE] : global_trees[TI_INTSI_TYPE];

  if (mode == DImode)
    return unsignedp ? global_trees[TI_UINTDI_TYPE] : global_trees[TI_INTDI_TYPE];


  if (mode == ((global_trees[TI_INTTI_TYPE])->type.mode))
    return unsignedp ? global_trees[TI_UINTTI_TYPE] : global_trees[TI_INTTI_TYPE];


  if (mode == ((global_trees[TI_FLOAT_TYPE])->type.mode))
    return global_trees[TI_FLOAT_TYPE];

  if (mode == ((global_trees[TI_DOUBLE_TYPE])->type.mode))
    return global_trees[TI_DOUBLE_TYPE];

  if (mode == ((global_trees[TI_LONG_DOUBLE_TYPE])->type.mode))
    return global_trees[TI_LONG_DOUBLE_TYPE];

  if (mode == ((build_pointer_type (integer_types[itk_char]))->type.mode))
    return build_pointer_type (integer_types[itk_char]);

  if (mode == ((build_pointer_type (integer_types[itk_int]))->type.mode))
    return build_pointer_type (integer_types[itk_int]);

  switch (mode)
    {
    case V16QImode:
      return unsignedp ? global_trees[TI_UV16QI_TYPE] : global_trees[TI_V16QI_TYPE];
    case V8HImode:
      return unsignedp ? global_trees[TI_UV8HI_TYPE] : global_trees[TI_V8HI_TYPE];
    case V4SImode:
      return unsignedp ? global_trees[TI_UV4SI_TYPE] : global_trees[TI_V4SI_TYPE];
    case V2DImode:
      return unsignedp ? global_trees[TI_UV2DI_TYPE] : global_trees[TI_V2DI_TYPE];
    case V2SImode:
      return unsignedp ? global_trees[TI_UV2SI_TYPE] : global_trees[TI_V2SI_TYPE];
    case V2HImode:
      return unsignedp ? global_trees[TI_UV2HI_TYPE] : global_trees[TI_V2HI_TYPE];
    case V4HImode:
      return unsignedp ? global_trees[TI_UV4HI_TYPE] : global_trees[TI_V4HI_TYPE];
    case V8QImode:
      return unsignedp ? global_trees[TI_UV8QI_TYPE] : global_trees[TI_V8QI_TYPE];
    case V1DImode:
      return unsignedp ? global_trees[TI_UV1DI_TYPE] : global_trees[TI_V1DI_TYPE];
    case V16SFmode:
      return global_trees[TI_V16SF_TYPE];
    case V4SFmode:
      return global_trees[TI_V4SF_TYPE];
    case V2SFmode:
      return global_trees[TI_V2SF_TYPE];
    case V2DFmode:
      return global_trees[TI_V2DF_TYPE];
    default:
      break;
    }

  return 0;
}


tree
c_common_unsigned_type (type)
     tree type;
{
  tree type1 = ((type)->type.main_variant);
  if (type1 == integer_types[itk_signed_char] || type1 == integer_types[itk_char])
    return integer_types[itk_unsigned_char];
  if (type1 == integer_types[itk_int])
    return integer_types[itk_unsigned_int];
  if (type1 == integer_types[itk_short])
    return integer_types[itk_unsigned_short];
  if (type1 == integer_types[itk_long])
    return integer_types[itk_unsigned_long];
  if (type1 == integer_types[itk_long_long])
    return integer_types[itk_unsigned_long_long];
  if (type1 == c_global_trees[CTI_WIDEST_INT_LIT_TYPE])
    return c_global_trees[CTI_WIDEST_UINT_LIT_TYPE];

  if (type1 == global_trees[TI_INTTI_TYPE])
    return global_trees[TI_UINTTI_TYPE];

  if (type1 == global_trees[TI_INTDI_TYPE])
    return global_trees[TI_UINTDI_TYPE];
  if (type1 == global_trees[TI_INTSI_TYPE])
    return global_trees[TI_UINTSI_TYPE];
  if (type1 == global_trees[TI_INTHI_TYPE])
    return global_trees[TI_UINTHI_TYPE];
  if (type1 == global_trees[TI_INTQI_TYPE])
    return global_trees[TI_UINTQI_TYPE];

  return c_common_signed_or_unsigned_type (1, type);
}



tree
c_common_signed_type (type)
     tree type;
{
  tree type1 = ((type)->type.main_variant);
  if (type1 == integer_types[itk_unsigned_char] || type1 == integer_types[itk_char])
    return integer_types[itk_signed_char];
  if (type1 == integer_types[itk_unsigned_int])
    return integer_types[itk_int];
  if (type1 == integer_types[itk_unsigned_short])
    return integer_types[itk_short];
  if (type1 == integer_types[itk_unsigned_long])
    return integer_types[itk_long];
  if (type1 == integer_types[itk_unsigned_long_long])
    return integer_types[itk_long_long];
  if (type1 == c_global_trees[CTI_WIDEST_UINT_LIT_TYPE])
    return c_global_trees[CTI_WIDEST_INT_LIT_TYPE];

  if (type1 == global_trees[TI_UINTTI_TYPE])
    return global_trees[TI_INTTI_TYPE];

  if (type1 == global_trees[TI_UINTDI_TYPE])
    return global_trees[TI_INTDI_TYPE];
  if (type1 == global_trees[TI_UINTSI_TYPE])
    return global_trees[TI_INTSI_TYPE];
  if (type1 == global_trees[TI_UINTHI_TYPE])
    return global_trees[TI_INTHI_TYPE];
  if (type1 == global_trees[TI_UINTQI_TYPE])
    return global_trees[TI_INTQI_TYPE];

  return c_common_signed_or_unsigned_type (0, type);
}




tree
c_common_signed_or_unsigned_type (unsignedp, type)
     int unsignedp;
     tree type;
{
  if (! (((enum tree_code) (type)->common.code) == INTEGER_TYPE || ((enum tree_code) (type)->common.code) == ENUMERAL_TYPE || ((enum tree_code) (type)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (type)->common.code) == CHAR_TYPE)
      || ((type)->common.unsigned_flag) == unsignedp)
    return type;

  if (((type)->type.precision) == ((integer_types[itk_signed_char])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_char] : integer_types[itk_signed_char];
  if (((type)->type.precision) == ((integer_types[itk_int])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_int] : integer_types[itk_int];
  if (((type)->type.precision) == ((integer_types[itk_short])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_short] : integer_types[itk_short];
  if (((type)->type.precision) == ((integer_types[itk_long])->type.precision))
    return unsignedp ? integer_types[itk_unsigned_long] : integer_types[itk_long];
  if (((type)->type.precision) == ((integer_types[itk_long_long])->type.precision))
    return (unsignedp ? integer_types[itk_unsigned_long_long]
     : integer_types[itk_long_long]);
  if (((type)->type.precision) == ((c_global_trees[CTI_WIDEST_INT_LIT_TYPE])->type.precision))
    return (unsignedp ? c_global_trees[CTI_WIDEST_UINT_LIT_TYPE]
     : c_global_trees[CTI_WIDEST_INT_LIT_TYPE]);


  if (((type)->type.precision) == ((global_trees[TI_INTTI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTTI_TYPE] : global_trees[TI_INTTI_TYPE];

  if (((type)->type.precision) == ((global_trees[TI_INTDI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTDI_TYPE] : global_trees[TI_INTDI_TYPE];
  if (((type)->type.precision) == ((global_trees[TI_INTSI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTSI_TYPE] : global_trees[TI_INTSI_TYPE];
  if (((type)->type.precision) == ((global_trees[TI_INTHI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTHI_TYPE] : global_trees[TI_INTHI_TYPE];
  if (((type)->type.precision) == ((global_trees[TI_INTQI_TYPE])->type.precision))
    return unsignedp ? global_trees[TI_UINTQI_TYPE] : global_trees[TI_INTQI_TYPE];

  return type;
}




unsigned int
min_precision (value, unsignedp)
     tree value;
     int unsignedp;
{
  int log;






  if (tree_int_cst_sgn (value) < 0)
    value = fold (build1 (BIT_NOT_EXPR, ((value)->common.type), value));




  if (integer_zerop (value))
    log = 0;
  else
    log = tree_floor_log2 (value);

  return log + 1 + ! unsignedp;
}





void
binary_op_error (code)
     enum tree_code code;
{
  const char *opname;

  switch (code)
    {
    case NOP_EXPR:
      error ("invalid truth-value expression");
      return;

    case PLUS_EXPR:
      opname = "+"; break;
    case MINUS_EXPR:
      opname = "-"; break;
    case MULT_EXPR:
      opname = "*"; break;
    case MAX_EXPR:
      opname = "max"; break;
    case MIN_EXPR:
      opname = "min"; break;
    case EQ_EXPR:
      opname = "=="; break;
    case NE_EXPR:
      opname = "!="; break;
    case LE_EXPR:
      opname = "<="; break;
    case GE_EXPR:
      opname = ">="; break;
    case LT_EXPR:
      opname = "<"; break;
    case GT_EXPR:
      opname = ">"; break;
    case LSHIFT_EXPR:
      opname = "<<"; break;
    case RSHIFT_EXPR:
      opname = ">>"; break;
    case TRUNC_MOD_EXPR:
    case FLOOR_MOD_EXPR:
      opname = "%"; break;
    case TRUNC_DIV_EXPR:
    case FLOOR_DIV_EXPR:
      opname = "/"; break;
    case BIT_AND_EXPR:
      opname = "&"; break;
    case BIT_IOR_EXPR:
      opname = "|"; break;
    case TRUTH_ANDIF_EXPR:
      opname = "&&"; break;
    case TRUTH_ORIF_EXPR:
      opname = "||"; break;
    case BIT_XOR_EXPR:
      opname = "^"; break;
    case LROTATE_EXPR:
    case RROTATE_EXPR:
      opname = "rotate"; break;
    default:
      opname = "unknown"; break;
    }
  error ("invalid operands to binary %s", opname);
}
# 2333 "../../../kg++fe/gnu/c-common.c"
tree
shorten_compare (op0_ptr, op1_ptr, restype_ptr, rescode_ptr)
     tree *op0_ptr, *op1_ptr;
     tree *restype_ptr;
     enum tree_code *rescode_ptr;
{
  tree type;
  tree op0 = *op0_ptr;
  tree op1 = *op1_ptr;
  int unsignedp0, unsignedp1;
  int real1, real2;
  tree primop0, primop1;
  enum tree_code code = *rescode_ptr;




  primop0 = get_narrower (op0, &unsignedp0);
  primop1 = get_narrower (op1, &unsignedp1);




  if (op0 == primop0 && ((op0)->common.type) != *restype_ptr)
    unsignedp0 = ((((op0)->common.type))->common.unsigned_flag);
  if (op1 == primop1 && ((op1)->common.type) != *restype_ptr)
    unsignedp1 = ((((op1)->common.type))->common.unsigned_flag);


  real1 = ((enum tree_code) (((primop0)->common.type))->common.code) == REAL_TYPE;
  real2 = ((enum tree_code) (((primop1)->common.type))->common.code) == REAL_TYPE;





  if (((primop0)->common.constant_flag)
      && ! integer_zerop (primop1) && ! real_zerop (primop1))
    {
      tree tem = primop0;
      int temi = unsignedp0;
      primop0 = primop1;
      primop1 = tem;
      tem = op0;
      op0 = op1;
      op1 = tem;
      *op0_ptr = op0;
      *op1_ptr = op1;
      unsignedp0 = unsignedp1;
      unsignedp1 = temi;
      temi = real1;
      real1 = real2;
      real2 = temi;

      switch (code)
 {
 case LT_EXPR:
   code = GT_EXPR;
   break;
 case GT_EXPR:
   code = LT_EXPR;
   break;
 case LE_EXPR:
   code = GE_EXPR;
   break;
 case GE_EXPR:
   code = LE_EXPR;
   break;
 default:
   break;
 }
      *rescode_ptr = code;
    }
# 2424 "../../../kg++fe/gnu/c-common.c"
  if (!real1 && !real2
      && ((enum tree_code) (primop1)->common.code) == INTEGER_CST
      && ((((primop0)->common.type))->type.precision) < ((*restype_ptr)->type.precision))
    {
      int min_gt, max_gt, min_lt, max_lt;
      tree maxval, minval;

      int unsignedp = ((*restype_ptr)->common.unsigned_flag);
      tree val;

      type = c_common_signed_or_unsigned_type (unsignedp0,
            ((primop0)->common.type));




      if (((enum tree_code) (type)->common.code) == ENUMERAL_TYPE)
 type = c_common_type_for_size (((type)->type.precision), unsignedp0);

      maxval = ((type)->type.maxval);
      minval = ((type)->type.minval);

      if (unsignedp && !unsignedp0)
 *restype_ptr = c_common_signed_type (*restype_ptr);

      if (((primop1)->common.type) != *restype_ptr)
 primop1 = convert (*restype_ptr, primop1);
      if (type != *restype_ptr)
 {
   minval = convert (*restype_ptr, minval);
   maxval = convert (*restype_ptr, maxval);
 }

      if (unsignedp && unsignedp0)
 {
   min_gt = (((unsigned long long) (((primop1)->int_cst.int_cst).high) < (unsigned long long) (((minval)->int_cst.int_cst).high)) || (((unsigned long long) (((primop1)->int_cst.int_cst).high) == (unsigned long long) (((minval)->int_cst.int_cst).high)) && (((primop1)->int_cst.int_cst).low) < (((minval)->int_cst.int_cst).low)));
   max_gt = (((unsigned long long) (((primop1)->int_cst.int_cst).high) < (unsigned long long) (((maxval)->int_cst.int_cst).high)) || (((unsigned long long) (((primop1)->int_cst.int_cst).high) == (unsigned long long) (((maxval)->int_cst.int_cst).high)) && (((primop1)->int_cst.int_cst).low) < (((maxval)->int_cst.int_cst).low)));
   min_lt = (((unsigned long long) (((minval)->int_cst.int_cst).high) < (unsigned long long) (((primop1)->int_cst.int_cst).high)) || (((unsigned long long) (((minval)->int_cst.int_cst).high) == (unsigned long long) (((primop1)->int_cst.int_cst).high)) && (((minval)->int_cst.int_cst).low) < (((primop1)->int_cst.int_cst).low)));
   max_lt = (((unsigned long long) (((maxval)->int_cst.int_cst).high) < (unsigned long long) (((primop1)->int_cst.int_cst).high)) || (((unsigned long long) (((maxval)->int_cst.int_cst).high) == (unsigned long long) (((primop1)->int_cst.int_cst).high)) && (((maxval)->int_cst.int_cst).low) < (((primop1)->int_cst.int_cst).low)));
 }
      else
 {
   min_gt = ((((primop1)->int_cst.int_cst).high) < (((minval)->int_cst.int_cst).high) || ((((primop1)->int_cst.int_cst).high) == (((minval)->int_cst.int_cst).high) && (((primop1)->int_cst.int_cst).low) < (((minval)->int_cst.int_cst).low)));
   max_gt = ((((primop1)->int_cst.int_cst).high) < (((maxval)->int_cst.int_cst).high) || ((((primop1)->int_cst.int_cst).high) == (((maxval)->int_cst.int_cst).high) && (((primop1)->int_cst.int_cst).low) < (((maxval)->int_cst.int_cst).low)));
   min_lt = ((((minval)->int_cst.int_cst).high) < (((primop1)->int_cst.int_cst).high) || ((((minval)->int_cst.int_cst).high) == (((primop1)->int_cst.int_cst).high) && (((minval)->int_cst.int_cst).low) < (((primop1)->int_cst.int_cst).low)));
   max_lt = ((((maxval)->int_cst.int_cst).high) < (((primop1)->int_cst.int_cst).high) || ((((maxval)->int_cst.int_cst).high) == (((primop1)->int_cst.int_cst).high) && (((maxval)->int_cst.int_cst).low) < (((primop1)->int_cst.int_cst).low)));
 }

      val = 0;

      if (code == NE_EXPR)
 {
   if (max_lt || min_gt)
     val = c_global_trees[CTI_BOOLEAN_TRUE];
 }
      else if (code == EQ_EXPR)
 {
   if (max_lt || min_gt)
     val = c_global_trees[CTI_BOOLEAN_FALSE];
 }
      else if (code == LT_EXPR)
 {
   if (max_lt)
     val = c_global_trees[CTI_BOOLEAN_TRUE];
   if (!min_lt)
     val = c_global_trees[CTI_BOOLEAN_FALSE];
 }
      else if (code == GT_EXPR)
 {
   if (min_gt)
     val = c_global_trees[CTI_BOOLEAN_TRUE];
   if (!max_gt)
     val = c_global_trees[CTI_BOOLEAN_FALSE];
 }
      else if (code == LE_EXPR)
 {
   if (!max_gt)
     val = c_global_trees[CTI_BOOLEAN_TRUE];
   if (min_gt)
     val = c_global_trees[CTI_BOOLEAN_FALSE];
 }
      else if (code == GE_EXPR)
 {
   if (!min_lt)
     val = c_global_trees[CTI_BOOLEAN_TRUE];
   if (max_lt)
     val = c_global_trees[CTI_BOOLEAN_FALSE];
 }
# 2524 "../../../kg++fe/gnu/c-common.c"
      if (unsignedp && !unsignedp0)
 {
   if (val != 0)
     switch (code)
       {
       case LT_EXPR:
       case GE_EXPR:
  primop1 = ((type)->type.minval);
  val = 0;
  break;

       case LE_EXPR:
       case GT_EXPR:
  primop1 = ((type)->type.maxval);
  val = 0;
  break;

       default:
  break;
       }
   type = c_common_unsigned_type (type);
 }

      if (((enum tree_code) (primop0)->common.code) != INTEGER_CST)
 {
   if (val == c_global_trees[CTI_BOOLEAN_FALSE])
     warning ("comparison is always false due to limited range of data type");
   if (val == c_global_trees[CTI_BOOLEAN_TRUE])
     warning ("comparison is always true due to limited range of data type");
 }

      if (val != 0)
 {

   if (((primop0)->common.side_effects_flag))
     return build (COMPOUND_EXPR, ((val)->common.type), primop0, val);
   return val;
 }




    }
  else if (real1 && real2
    && (((((primop0)->common.type))->type.precision)
        == ((((primop1)->common.type))->type.precision)))
    type = ((primop0)->common.type);
# 2580 "../../../kg++fe/gnu/c-common.c"
  else if (unsignedp0 == unsignedp1 && real1 == real2
    && ((((primop0)->common.type))->type.precision) < ((*restype_ptr)->type.precision)
    && ((((primop1)->common.type))->type.precision) < ((*restype_ptr)->type.precision))
    {
      type = common_type (((primop0)->common.type), ((primop1)->common.type));
      type = c_common_signed_or_unsigned_type (unsignedp0
            || ((*restype_ptr)->common.unsigned_flag),
            type);


      primop0
 = convert (c_common_signed_or_unsigned_type (unsignedp0,
           ((primop0)->common.type)),
     primop0);
      primop1
 = convert (c_common_signed_or_unsigned_type (unsignedp1,
           ((primop1)->common.type)),
     primop1);
    }
  else
    {


      type = *restype_ptr;
      primop0 = op0;
      primop1 = op1;

      if (!real1 && !real2 && integer_zerop (primop1)
   && ((*restype_ptr)->common.unsigned_flag))
 {
   tree value = 0;
   switch (code)
     {
     case GE_EXPR:




       if (extra_warnings && !in_system_header
    && ! (((enum tree_code) (primop0)->common.code) == INTEGER_CST
   && ! ((convert (c_common_signed_type (type), primop0))->common.public_flag)))

  warning ("comparison of unsigned expression >= 0 is always true");
       value = c_global_trees[CTI_BOOLEAN_TRUE];
       break;

     case LT_EXPR:
       if (extra_warnings && !in_system_header
    && ! (((enum tree_code) (primop0)->common.code) == INTEGER_CST
   && ! ((convert (c_common_signed_type (type), primop0))->common.public_flag)))

  warning ("comparison of unsigned expression < 0 is always false");
       value = c_global_trees[CTI_BOOLEAN_FALSE];
       break;

     default:
       break;
     }

   if (value != 0)
     {

       if (((primop0)->common.side_effects_flag))
  return build (COMPOUND_EXPR, ((value)->common.type),
         primop0, value);
       return value;
     }
 }
    }

  *op0_ptr = convert (type, primop0);
  *op1_ptr = convert (type, primop1);

  *restype_ptr = c_global_trees[CTI_BOOLEAN_TYPE];

  return 0;
}




tree
pointer_int_sum (resultcode, ptrop, intop)
     enum tree_code resultcode;
     tree ptrop, intop;
{
  tree size_exp;

  tree result;
  tree folded;



  tree result_type = ((ptrop)->common.type);

  if (((enum tree_code) (((result_type)->common.type))->common.code) == VOID_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer of type `void *' used in arithmetic");
      size_exp = global_trees[TI_INTEGER_ONE];
    }
  else if (((enum tree_code) (((result_type)->common.type))->common.code) == FUNCTION_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer to a function used in arithmetic");
      size_exp = global_trees[TI_INTEGER_ONE];
    }
  else if (((enum tree_code) (((result_type)->common.type))->common.code) == METHOD_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer to member function used in arithmetic");
      size_exp = global_trees[TI_INTEGER_ONE];
    }
  else if (((enum tree_code) (((result_type)->common.type))->common.code) == OFFSET_TYPE)
    {
      if (pedantic || warn_pointer_arith)
 pedwarn ("pointer to a member used in arithmetic");
      size_exp = global_trees[TI_INTEGER_ONE];
    }
  else
    size_exp = size_in_bytes (((result_type)->common.type));






  if ((((enum tree_code) (intop)->common.code) == PLUS_EXPR || ((enum tree_code) (intop)->common.code) == MINUS_EXPR)
      && ! ((intop)->common.constant_flag)
      && ((((intop)->exp.operands[1]))->common.constant_flag)
      && ((size_exp)->common.constant_flag)


      && ((enum tree_code) (((((intop)->exp.operands[0]))->common.type))->common.code) == INTEGER_TYPE



      && (! ((((intop)->common.type))->common.unsigned_flag)
   || (((((intop)->common.type))->type.precision)
       == ((((ptrop)->common.type))->type.precision))))
    {
      enum tree_code subcode = resultcode;
      tree int_type = ((intop)->common.type);
      if (((enum tree_code) (intop)->common.code) == MINUS_EXPR)
 subcode = (subcode == PLUS_EXPR ? MINUS_EXPR : PLUS_EXPR);



      ptrop = build_binary_op (subcode, ptrop,
          convert (int_type, ((intop)->exp.operands[1])), 1);
      intop = convert (int_type, ((intop)->exp.operands[0]));
    }




  if (((((intop)->common.type))->type.precision) != ((sizetype_tab[(int) SIZETYPE])->type.precision)
      || ((((intop)->common.type))->common.unsigned_flag) != ((sizetype_tab[(int) SIZETYPE])->common.unsigned_flag))
    intop = convert (c_common_type_for_size (((sizetype_tab[(int) SIZETYPE])->type.precision),
          ((sizetype_tab[(int) SIZETYPE])->common.unsigned_flag)), intop);





  intop = convert (result_type,
     build_binary_op (MULT_EXPR, intop,
        convert (((intop)->common.type), size_exp), 1));



  result = build (resultcode, result_type, ptrop, intop);

  folded = fold (result);
  if (folded == result)
    ((folded)->common.constant_flag) = ((ptrop)->common.constant_flag) & ((intop)->common.constant_flag);
  return folded;
}
# 2770 "../../../kg++fe/gnu/c-common.c"
tree
c_common_truthvalue_conversion (expr)
     tree expr;
{
  if (((enum tree_code) (expr)->common.code) == ERROR_MARK)
    return expr;
# 2799 "../../../kg++fe/gnu/c-common.c"
  switch (((enum tree_code) (expr)->common.code))
    {
    case EQ_EXPR:
    case NE_EXPR: case LE_EXPR: case GE_EXPR: case LT_EXPR: case GT_EXPR:
    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
    case TRUTH_AND_EXPR:
    case TRUTH_OR_EXPR:
    case TRUTH_XOR_EXPR:
    case TRUTH_NOT_EXPR:
      ((expr)->common.type) = c_global_trees[CTI_BOOLEAN_TYPE];
      return expr;

    case ERROR_MARK:
      return expr;

    case INTEGER_CST:

      if (((expr)->common.static_flag))
       break;

      return integer_zerop (expr) ? c_global_trees[CTI_BOOLEAN_FALSE] : c_global_trees[CTI_BOOLEAN_TRUE];

    case REAL_CST:

      if (((expr)->common.static_flag))
       break;

      return real_zerop (expr) ? c_global_trees[CTI_BOOLEAN_FALSE] : c_global_trees[CTI_BOOLEAN_TRUE];

    case ADDR_EXPR:


      if ((tree_code_type[(int) (((enum tree_code) (((expr)->exp.operands[0]))->common.code))] == 'd')
   && ((((expr)->exp.operands[0]))->decl.external_flag))
 break;

      if (((((expr)->exp.operands[0]))->common.side_effects_flag))
 return build (COMPOUND_EXPR, c_global_trees[CTI_BOOLEAN_TYPE],
        ((expr)->exp.operands[0]), c_global_trees[CTI_BOOLEAN_TRUE]);
      else
 return c_global_trees[CTI_BOOLEAN_TRUE];

    case COMPLEX_EXPR:
      return build_binary_op ((((((expr)->exp.operands[1]))->common.side_effects_flag)
          ? TRUTH_OR_EXPR : TRUTH_ORIF_EXPR),
  c_common_truthvalue_conversion (((expr)->exp.operands[0])),
  c_common_truthvalue_conversion (((expr)->exp.operands[1])),
         0);

    case NEGATE_EXPR:
    case ABS_EXPR:
    case FLOAT_EXPR:
    case FFS_EXPR:

      return c_common_truthvalue_conversion (((expr)->exp.operands[0]));

    case LROTATE_EXPR:
    case RROTATE_EXPR:


      if (((((expr)->exp.operands[1]))->common.side_effects_flag))
 return build (COMPOUND_EXPR, c_global_trees[CTI_BOOLEAN_TYPE], ((expr)->exp.operands[1]),
        c_common_truthvalue_conversion (((expr)->exp.operands[0])));
      else
 return c_common_truthvalue_conversion (((expr)->exp.operands[0]));

    case COND_EXPR:

      return fold (build (COND_EXPR, c_global_trees[CTI_BOOLEAN_TYPE], ((expr)->exp.operands[0]),
  c_common_truthvalue_conversion (((expr)->exp.operands[1])),
  c_common_truthvalue_conversion (((expr)->exp.operands[2]))));

    case CONVERT_EXPR:


      if (((enum tree_code) (((expr)->common.type))->common.code) == REFERENCE_TYPE
   || ((enum tree_code) (((((expr)->exp.operands[0]))->common.type))->common.code) == REFERENCE_TYPE)
 break;

    case NOP_EXPR:

      if (((((expr)->common.type))->type.precision)
   >= ((((((expr)->exp.operands[0]))->common.type))->type.precision))
 return c_common_truthvalue_conversion (((expr)->exp.operands[0]));
      break;

    case MINUS_EXPR:
# 2895 "../../../kg++fe/gnu/c-common.c"
      if (((((mode_class[(int) (((((((expr)->exp.operands[0]))->common.type))->type.mode))]) == MODE_FLOAT || (mode_class[(int) (((((((expr)->exp.operands[0]))->common.type))->type.mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((((((expr)->exp.operands[0]))->common.type))->type.mode))]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0) && !flag_finite_math_only))
 break;

    case BIT_XOR_EXPR:


      if (((((expr)->exp.operands[0]))->common.type)
   == ((((expr)->exp.operands[1]))->common.type))
 return build_binary_op (NE_EXPR, ((expr)->exp.operands[0]),
    ((expr)->exp.operands[1]), 1);
      return build_binary_op (NE_EXPR, ((expr)->exp.operands[0]),
         fold (build1 (NOP_EXPR,
         ((((expr)->exp.operands[0]))->common.type),
         ((expr)->exp.operands[1]))), 1);

    case BIT_AND_EXPR:
      if (integer_onep (((expr)->exp.operands[1]))
   && ((expr)->common.type) != c_global_trees[CTI_BOOLEAN_TYPE])

 return build1 (NOP_EXPR, c_global_trees[CTI_BOOLEAN_TYPE], expr);
      break;

    case MODIFY_EXPR:
      if (warn_parentheses && ((enum tree_code) ((expr)->exp.complexity)) == MODIFY_EXPR)
 warning ("suggest parentheses around assignment used as truth value");
      break;

    default:
      break;
    }

  if (((enum tree_code) (((expr)->common.type))->common.code) == COMPLEX_TYPE)
    {
      tree t = save_expr (expr);
      return (build_binary_op
       ((((expr)->common.side_effects_flag)
  ? TRUTH_OR_EXPR : TRUTH_ORIF_EXPR),
 c_common_truthvalue_conversion (build_unary_op (REALPART_EXPR, t, 0)),
 c_common_truthvalue_conversion (build_unary_op (IMAGPART_EXPR, t, 0)),
        0));
    }

  return build_binary_op (NE_EXPR, expr, global_trees[TI_INTEGER_ZERO], 1);
}

static tree builtin_function_2 (const char *, const char *, tree, tree, int, enum built_in_class, int, int, tree);






tree
c_build_qualified_type (type, type_quals)
     tree type;
     int type_quals;
{







  if ((type_quals & 0x4)
      && (!(((enum tree_code) (type)->common.code) == POINTER_TYPE || ((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
   || !(!(((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE))))
    {
      error ("invalid use of `restrict'");
      type_quals &= ~0x4;
    }

  if (((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    return build_array_type (c_build_qualified_type (((type)->common.type),
           type_quals),
        ((type)->type.values));
  return build_qualified_type (type, type_quals);
}



void
c_apply_type_quals_to_decl (type_quals, decl)
     int type_quals;
     tree decl;
{
  if ((type_quals & 0x1)
      || (((decl)->common.type)
   && ((enum tree_code) (((decl)->common.type))->common.code) == REFERENCE_TYPE))
    ((decl)->common.readonly_flag) = 1;
  if (type_quals & 0x2)
    {
      ((decl)->common.side_effects_flag) = 1;
      ((decl)->common.volatile_flag) = 1;
    }
  if (type_quals & 0x4)
    {
      if (!((decl)->common.type)
   || !(((enum tree_code) (((decl)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((decl)->common.type))->common.code) == REFERENCE_TYPE)
   || !(!(((enum tree_code) (((((decl)->common.type))->common.type))->common.code) == FUNCTION_TYPE)))
 error ("invalid use of `restrict'");
      else if (flag_strict_aliasing)



 ((decl)->decl.pointer_alias_set) = -2;
    }
}




long long
c_common_get_alias_set (t)
     tree t;
{
  tree u;







  for (u = t;
       ((enum tree_code) (u)->common.code) == COMPONENT_REF || ((enum tree_code) (u)->common.code) == ARRAY_REF;
       u = ((u)->exp.operands[0]))
    if (((enum tree_code) (u)->common.code) == COMPONENT_REF
 && ((enum tree_code) (((((u)->exp.operands[0]))->common.type))->common.code) == UNION_TYPE)
      return 0;


  if (! (tree_code_type[(int) (((enum tree_code) (t)->common.code))] == 't'))
    return -1;



  if (t == integer_types[itk_char]
      || t == integer_types[itk_signed_char]
      || t == integer_types[itk_unsigned_char])
    return 0;


  if (lookup_attribute ("may_alias", ((t)->type.attributes)))
    return 0;




  if (((enum tree_code) (t)->common.code) == INTEGER_TYPE && ((t)->common.unsigned_flag))
    {
      tree t1 = c_common_signed_type (t);


      if (t1 != t)
 return get_alias_set (t1);
    }
  else if ((((enum tree_code) (t)->common.code) == POINTER_TYPE || ((enum tree_code) (t)->common.code) == REFERENCE_TYPE))
    {
      tree t1;
# 3079 "../../../kg++fe/gnu/c-common.c"
      t1 = build_type_no_quals (t);
      if (t1 != t)
 return get_alias_set (t1);
    }

  return -1;
}





tree
c_sizeof_or_alignof_type (type, op, complain)
     tree type;
     enum tree_code op;
     int complain;
{
  const char *op_name;
  tree value = ((void *)0);
  enum tree_code type_code = ((enum tree_code) (type)->common.code);

  (void) (((op == SIZEOF_EXPR || op == ALIGNOF_EXPR) == 0) ? (fancy_abort ("../../../kg++fe/gnu/c-common.c", 3101, __FUNCTION__), 0) : 0);
  op_name = op == SIZEOF_EXPR ? "sizeof" : "__alignof__";

  if (type_code == FUNCTION_TYPE)
    {
      if (op == SIZEOF_EXPR)
 {
   if (complain && (pedantic || warn_pointer_arith))
     pedwarn ("invalid application of `sizeof' to a function type");
   value = global_trees[TI_SIZE_ONE];
 }
      else
 value = size_int_wide ((long long) (32 / 8), SIZETYPE);
    }
  else if (type_code == VOID_TYPE || type_code == ERROR_MARK)
    {
      if (type_code == VOID_TYPE
   && complain && (pedantic || warn_pointer_arith))
 pedwarn ("invalid application of `%s' to a void type", op_name);
      value = global_trees[TI_SIZE_ONE];
    }
  else if (!(((type)->type.size) != (tree) ((void *)0)))
    {
      if (complain)
 error ("invalid application of `%s' to an incomplete type", op_name);
      value = global_trees[TI_SIZE_ZERO];
    }
  else
    {
      if (op == SIZEOF_EXPR)

 value = size_binop (CEIL_DIV_EXPR, ((type)->type.size_unit),
       size_int_wide ((long long) (((integer_types[itk_char])->type.precision) / 8), SIZETYPE));

      else
 value = size_int_wide ((long long) (((type)->type.align) / 8), SIZETYPE);
    }





  value = fold (build1 (NOP_EXPR, global_trees[TI_SIZE_TYPE], value));
  (void) (((!((((value)->common.type))->type.no_force_blk_flag)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/c-common.c", 3144, __FUNCTION__), 0) : 0);

  return value;
}






tree
c_alignof_expr (expr)
     tree expr;
{
  tree t;

  if (((enum tree_code) (expr)->common.code) == VAR_DECL)
    t = size_int_wide ((long long) (((expr)->decl.u1.a.align) / 8), SIZETYPE);

  else if (((enum tree_code) (expr)->common.code) == COMPONENT_REF
    && ((((((expr)->exp.operands[1])))->decl.lang_flag_4) == 1))
    {
      error ("`__alignof' applied to a bit-field");
      t = global_trees[TI_SIZE_ONE];
    }
  else if (((enum tree_code) (expr)->common.code) == COMPONENT_REF
    && ((enum tree_code) (((expr)->exp.operands[1]))->common.code) == FIELD_DECL)
    t = size_int_wide ((long long) (((((expr)->exp.operands[1]))->decl.u1.a.align) / 8), SIZETYPE);

  else if (((enum tree_code) (expr)->common.code) == INDIRECT_REF)
    {
      tree t = ((expr)->exp.operands[0]);
      tree best = t;
      int bestalign = ((((((t)->common.type))->common.type))->type.align);

      while (((enum tree_code) (t)->common.code) == NOP_EXPR
      && ((enum tree_code) (((((t)->exp.operands[0]))->common.type))->common.code) == POINTER_TYPE)
 {
   int thisalign;

   t = ((t)->exp.operands[0]);
   thisalign = ((((((t)->common.type))->common.type))->type.align);
   if (thisalign > bestalign)
     best = t, bestalign = thisalign;
 }
      return c_sizeof_or_alignof_type (((((best)->common.type))->common.type), ALIGNOF_EXPR, 1);
    }
  else
    return c_sizeof_or_alignof_type (((expr)->common.type), ALIGNOF_EXPR, 1);

  return fold (build1 (NOP_EXPR, global_trees[TI_SIZE_TYPE], t));
}



enum built_in_attribute
{





# 1 "../../../kg++fe/gnu/builtin-attrs.def" 1
# 52 "../../../kg++fe/gnu/builtin-attrs.def"
ATTR_NULL,
# 61 "../../../kg++fe/gnu/builtin-attrs.def"
ATTR_0, ATTR_LIST_0,
ATTR_1, ATTR_LIST_1,
ATTR_2, ATTR_LIST_2,
ATTR_3, ATTR_LIST_3,
ATTR_4, ATTR_LIST_4,






ATTR_LIST_1_0,
ATTR_LIST_1_2,
ATTR_LIST_2_0,
ATTR_LIST_2_3,
ATTR_LIST_3_0,
ATTR_LIST_3_4,



ATTR_CONST,
ATTR_FORMAT,
ATTR_FORMAT_ARG,
ATTR_MALLOC,
ATTR_NONNULL,
ATTR_NORETURN,
ATTR_NOTHROW,
ATTR_PRINTF,
ATTR_PURE,
ATTR_SCANF,
ATTR_STRFMON,
ATTR_STRFTIME,

ATTR_NOTHROW_LIST,

ATTR_CONST_NOTHROW_LIST,

ATTR_PURE_NOTHROW_LIST,

ATTR_NORETURN_NOTHROW_LIST,

ATTR_MALLOC_NOTHROW_LIST,


ATTR_NONNULL_1,

ATTR_NONNULL_2,

ATTR_NONNULL_3,
# 118 "../../../kg++fe/gnu/builtin-attrs.def"
ATTR_PRINTF_1_0, ATTR_FORMAT_PRINTF_1_0,
ATTR_PRINTF_1_2, ATTR_FORMAT_PRINTF_1_2,
ATTR_PRINTF_2_0, ATTR_FORMAT_PRINTF_2_0,
ATTR_PRINTF_2_3, ATTR_FORMAT_PRINTF_2_3,
ATTR_PRINTF_3_0, ATTR_FORMAT_PRINTF_3_0,
ATTR_PRINTF_3_4, ATTR_FORMAT_PRINTF_3_4,
ATTR_SCANF_1_0, ATTR_FORMAT_SCANF_1_0,
ATTR_SCANF_1_2, ATTR_FORMAT_SCANF_1_2,
ATTR_SCANF_2_0, ATTR_FORMAT_SCANF_2_0,
ATTR_SCANF_2_3, ATTR_FORMAT_SCANF_2_3,
ATTR_STRFTIME_3_0, ATTR_FORMAT_STRFTIME_3_0,
ATTR_STRFMON_3_4, ATTR_FORMAT_STRFMON_3_4,






ATTR_FORMAT_ARG_1,
ATTR_FORMAT_ARG_2,
# 155 "../../../kg++fe/gnu/builtin-attrs.def"
ATTR_fscanf,
ATTR_vfprintf,
ATTR_strftime,







ATTR_vfscanf,







ATTR_gettext,
ATTR_dgettext,
ATTR_dcgettext,

ATTR_strfmon,
# 3207 "../../../kg++fe/gnu/c-common.c" 2





  ATTR_LAST
};

static tree built_in_attributes[(int) ATTR_LAST];

static _Bool c_attrs_initialized = 0;

static void c_init_attributes (void);




void
c_common_nodes_and_builtins ()
{
  enum builtin_type
  {
# 3247 "../../../kg++fe/gnu/c-common.c"
# 1 "../../../kg++fe/gnu/builtin-types.def" 1
# 66 "../../../kg++fe/gnu/builtin-types.def"
BT_VOID,
BT_INT,
BT_UNSIGNED,
BT_LONG,
BT_LONGLONG,

BT_LONGLONGUNSIGNED,


BT_WORD,
BT_FLOAT,
BT_INTMAX,
BT_DOUBLE,
BT_LONG_DOUBLE,
BT_COMPLEX_FLOAT,
BT_COMPLEX_DOUBLE,
BT_COMPLEX_LONG_DOUBLE,

BT_PTR,
BT_CONST_PTR,
BT_PTRMODE,
BT_SIZE,
BT_STRING,
BT_CONST_STRING,

BT_VALIST_REF,
BT_VALIST_ARG,

BT_LONGDOUBLE,
BT_INT_PTR,
BT_DOUBLE_PTR,
BT_FLOAT_PTR,
BT_LONGDOUBLE_PTR,

BT_SHORT,
BT_SHORT_PTR,

BT_FN_VOID,
BT_FN_PTR,
BT_FN_UNSIGNED,
BT_FN_FLOAT,
BT_FN_DOUBLE,
BT_FN_LONG_DOUBLE,

BT_FN_INT,
BT_FN_INT_DOUBLE,


BT_FN_LONG_LONG,
BT_FN_LONGLONG_LONGLONG,

BT_FN_LONGLONGUNSIGNED_LONGLONGUNSIGNED,

BT_FN_INTMAX_INTMAX,
BT_FN_FLOAT_FLOAT,
BT_FN_DOUBLE_DOUBLE,
BT_FN_LONG_DOUBLE_LONG_DOUBLE,

BT_FN_COMPLEX_FLOAT_COMPLEX_FLOAT,

BT_FN_COMPLEX_DOUBLE_COMPLEX_DOUBLE,

BT_FN_COMPLEX_LONG_DOUBLE_COMPLEX_LONG_DOUBLE,

BT_FN_FLOAT_COMPLEX_FLOAT,

BT_FN_DOUBLE_COMPLEX_DOUBLE,

BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE,

BT_FN_PTR_UNSIGNED,
BT_FN_PTR_SIZE,
BT_FN_INT_INT,
BT_FN_INT_PTR,
BT_FN_VOID_PTR,
BT_FN_SIZE_CONST_STRING,
BT_FN_INT_CONST_STRING,
BT_FN_PTR_PTR,

BT_FN_SPTR_SPTR,

BT_FN_VOID_VALIST_REF,
BT_FN_VOID_INT,
BT_FN_FLOAT_CONST_STRING,
BT_FN_DOUBLE_CONST_STRING,
BT_FN_LONG_DOUBLE_CONST_STRING,


BT_FN_LONGLONG_FLOAT,
BT_FN_LONGLONG_DOUBLE,
BT_FN_LONGLONG_LONG_DOUBLE,
BT_FN_DOUBLE_LONGLONG,
BT_FN_LONG_DOUBLE_LONGLONG,
BT_FN_FLOAT_INT,
BT_FN_INT_FLOAT,


BT_FN_WORD_PTR,

BT_FN_LONGDOUBLE_LONGDOUBLE,

BT_FN_INT_LONG,
BT_FN_INT_LONGLONG,


BT_FN_VOID_SHORT,



BT_FN_VOID_PTR_INT,
BT_FN_STRING_STRING_CONST_STRING,

BT_FN_INT_CONST_STRING_CONST_STRING,

BT_FN_STRING_CONST_STRING_CONST_STRING,

BT_FN_SIZE_CONST_STRING_CONST_STRING,

BT_FN_STRING_CONST_STRING_INT,

BT_FN_INT_CONST_STRING_PTR,

BT_FN_INT_INT_PTR,

BT_FN_VOID_PTRMODE_PTR,

BT_FN_VOID_VALIST_REF_VALIST_ARG,

BT_FN_LONG_LONG_LONG,

BT_FN_INT_PTR_CONST_STRING,

BT_FN_VOID_PTR_SIZE,

BT_FN_INT_CONST_STRING_VALIST_ARG,


BT_FN_LONG_DOUBLE_LONG_DOUBLE_LONG_DOUBLE,



BT_FN_DOUBLE_DOUBLE_DOUBLE,



BT_FN_VOID_INT_INT,
BT_FN_INT_INT_INT,
BT_FN_INT_INT_SHORT,
BT_FN_SHORT_INT_INT,
BT_FN_VOID_SPTR_SHORT,


BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE,

BT_FN_FLOAT_FLOAT_FLOAT,

BT_FN_DOUBLE_DOUBLE_INT,

BT_FN_DOUBLE_DOUBLE_INTPTR,

BT_FN_FLOAT_FLOAT_INT,

BT_FN_FLOAT_FLOAT_INTPTR,

BT_FN_DOUBLE_DOUBLE_DOUBLEPTR,

BT_FN_LONGDOUBLE_LONGDOUBLE_INT,

BT_FN_LONGDOUBLE_LONGDOUBLE_INTPTR,

BT_FN_FLOAT_FLOAT_FLOATPTR,

BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLEPTR,


BT_FN_STRING_STRING_CONST_STRING_SIZE,

BT_FN_INT_CONST_STRING_CONST_STRING_SIZE,

BT_FN_PTR_PTR_CONST_PTR_SIZE,

BT_FN_INT_CONST_PTR_CONST_PTR_SIZE,

BT_FN_PTR_PTR_INT_SIZE,

BT_FN_VOID_PTR_INT_INT,

BT_FN_VOID_CONST_PTR_PTR_SIZE,

BT_FN_INT_STRING_CONST_STRING_VALIST_ARG,

BT_FN_INT_CONST_STRING_CONST_STRING_VALIST_ARG,



BT_FN_INT_INT_INT_INT,

BT_FN_VOID_INT_INT_INT,

BT_FN_SHORT_SHORT_SHORT_INT,

BT_FN_INT_INT_SHORT_SHORT,

BT_FN_SHORT_INT_INT_INT,



BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR,

BT_FN_INT_STRING_SIZE_CONST_STRING_VALIST_ARG,



BT_FN_INT_PTR_INT_INT,

BT_FN_VOID_SPTR_SPTR_SHORT_INT_INT,

BT_FN_SPTR_INT_SPTR,
BT_FN_INT_INT_INT_SHORT_SHORT,
BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT,

BT_FN_INT_INT_SHORT_SHORT_SHORT,

BT_FN_VOID_INT_INT_INT_INT,

BT_FN_VOID_INT_PTR_INT_INT,

BT_FN_INT_PTR_INT_INT_INT,

BT_FN_INT_INT_INT_INT_INT,

BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT,

BT_FN_VOID_INT_INT_INT_INT_INT,

BT_FN_VOID_INT_PTR_INT_INT_INT,

BT_FN_VOID_CONST_STRING_INT_INT_INT_INT,

BT_FN_VOID_PTR_INT_INT_INT_INT,

BT_FN_INT_SPTR_INT_SPTR_INT_INT,

BT_FN_INT_INT_SHORT_SHORT_INT_INT,

BT_FN_SHORT_SPTR_INT_SPTR_INT_INT,

BT_FN_INT_INT_SHORT_INT_INT_SHORT,

BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT,

BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT,

BT_FN_INT_INT_SHORT_SPTR_SHORT_SHORT_SHORT_SHORT,

BT_FN_INT_SPTR_INT_SPTR_INT_INT_INT,

BT_FN_VOID_SPTR_INT_INT_INT_INT_INT,

BT_FN_VOID_INT_PTR_INT_INT_INT_INT,

BT_FN_VOID_INT_INT_INT_INT_INT_INT,

BT_FN_INT_INT_INT_INT_INT_INT_INT,

BT_FN_VOID_PTR_INT_INT_INT_INT_INT_INT,


BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT,


BT_FN_INT_INT_INT_SHORT_SPTR_INT_INT_INT,

BT_FN_VOID_PTR_INT_INT_INT_INT_INT_INT_INT,


BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT,


BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT,

BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT_INT,


BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT,

BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT,

BT_FN_INT_INT_INT_INT_SPTR_INT_INT,

BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT_INT_INT,

BT_FN_INT_INT_INT_SPTR_INT_INT_INT,

BT_FN_INT_INT_INT_SPTR_INT_INT_INT_INT,

BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT_INT,



BT_FN_VOID_INT_PTR_INT,

BT_FN_INT_INT_INT_INT_INT_INT,

BT_FN_INT_INT_INT_INT_INT_INT_INT_INT,


BT_FN_INT_INT_INT_PTR_INT_PTR_INT_INT,



BT_FN_VOID_VAR,
BT_FN_INT_VAR,
BT_FN_PTR_VAR,

BT_FN_VOID_VALIST_REF_VAR,

BT_FN_VOID_CONST_PTR_VAR,

BT_FN_INT_CONST_STRING_VAR,


BT_FN_INT_PTR_CONST_STRING_VAR,

BT_FN_INT_STRING_CONST_STRING_VAR,

BT_FN_INT_CONST_STRING_CONST_STRING_VAR,


BT_FN_INT_STRING_SIZE_CONST_STRING_VAR,


BT_PTR_FN_VOID_VAR,
BT_FN_PTR_PTR_FN_VOID_VAR_PTR_SIZE,
# 3248 "../../../kg++fe/gnu/c-common.c" 2
# 3266 "../../../kg++fe/gnu/c-common.c"
    BT_LAST
  };

  typedef enum builtin_type builtin_type;

  tree builtin_types[(int) BT_LAST];
  int wchar_type_size;
  tree array_domain_type;
  tree va_list_ref_type_node;
  tree va_list_arg_type_node;


  record_builtin_type (RID_INT, ((void *)0), integer_types[itk_int]);
  record_builtin_type (RID_CHAR, "char", integer_types[itk_char]);




  if (c_language == clk_cplusplus)
    record_builtin_type (RID_SIGNED, ((void *)0), integer_types[itk_int]);
  record_builtin_type (RID_LONG, "long int", integer_types[itk_long]);
  record_builtin_type (RID_UNSIGNED, "unsigned int", integer_types[itk_unsigned_int]);
  record_builtin_type (RID_MAX, "long unsigned int",
         integer_types[itk_unsigned_long]);
  if (c_language == clk_cplusplus)
    record_builtin_type (RID_MAX, "unsigned long", integer_types[itk_unsigned_long]);
  record_builtin_type (RID_MAX, "long long int",
         integer_types[itk_long_long]);
  record_builtin_type (RID_MAX, "long long unsigned int",
         integer_types[itk_unsigned_long_long]);
  if (c_language == clk_cplusplus)
    record_builtin_type (RID_MAX, "long long unsigned",
    integer_types[itk_unsigned_long_long]);
  record_builtin_type (RID_SHORT, "short int", integer_types[itk_short]);
  record_builtin_type (RID_MAX, "short unsigned int",
         integer_types[itk_unsigned_short]);
  if (c_language == clk_cplusplus)
    record_builtin_type (RID_MAX, "unsigned short",
    integer_types[itk_unsigned_short]);


  record_builtin_type (RID_MAX, "signed char", integer_types[itk_signed_char]);
  record_builtin_type (RID_MAX, "unsigned char", integer_types[itk_unsigned_char]);



  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_INTQI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_INTHI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_INTSI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_INTDI_TYPE]));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         (__builtin_constant_p ("__int128_t") ? get_identifier_with_length (("__int128_t"), (unsigned) strlen ("__int128_t")) : (get_identifier) ("__int128_t")),
         global_trees[TI_INTTI_TYPE]));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_UINTQI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_UINTHI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_UINTSI_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         global_trees[TI_UINTDI_TYPE]));

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         (__builtin_constant_p ("__uint128_t") ? get_identifier_with_length (("__uint128_t"), (unsigned) strlen ("__uint128_t")) : (get_identifier) ("__uint128_t")),
         global_trees[TI_UINTTI_TYPE]));



  c_global_trees[CTI_WIDEST_INT_LIT_TYPE]
    = make_signed_type ((8 * 8) * 2);
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         c_global_trees[CTI_WIDEST_INT_LIT_TYPE]));

  c_global_trees[CTI_WIDEST_UINT_LIT_TYPE]
    = make_unsigned_type ((8 * 8) * 2);
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL, (tree) ((void *)0),
         c_global_trees[CTI_WIDEST_UINT_LIT_TYPE]));




  global_trees[TI_SIZE_TYPE] =
    ((identifier_global_value ((__builtin_constant_p (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long unsigned int" : "unsigned int")) ? get_identifier_with_length ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long unsigned int" : "unsigned int")), (unsigned) strlen (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long unsigned int" : "unsigned int"))) : (get_identifier) (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long unsigned int" : "unsigned int")))))->common.type);
  c_global_trees[CTI_SIGNED_SIZE_TYPE] = c_common_signed_type (global_trees[TI_SIZE_TYPE]);
  set_sizetype (global_trees[TI_SIZE_TYPE]);

  build_common_tree_nodes_2 (flag_short_double);

  record_builtin_type (RID_FLOAT, ((void *)0), global_trees[TI_FLOAT_TYPE]);
  record_builtin_type (RID_DOUBLE, ((void *)0), global_trees[TI_DOUBLE_TYPE]);
  record_builtin_type (RID_MAX, "long double", global_trees[TI_LONG_DOUBLE_TYPE]);

  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         (__builtin_constant_p ("complex int") ? get_identifier_with_length (("complex int"), (unsigned) strlen ("complex int")) : (get_identifier) ("complex int")),
         global_trees[TI_COMPLEX_INTEGER_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         (__builtin_constant_p ("complex float") ? get_identifier_with_length (("complex float"), (unsigned) strlen ("complex float")) : (get_identifier) ("complex float")),
         global_trees[TI_COMPLEX_FLOAT_TYPE]));
  (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
         (__builtin_constant_p ("complex double") ? get_identifier_with_length (("complex double"), (unsigned) strlen ("complex double")) : (get_identifier) ("complex double")),
         global_trees[TI_COMPLEX_DOUBLE_TYPE]));
  (*lang_hooks.decls.pushdecl)
    (build_decl (TYPE_DECL, (__builtin_constant_p ("complex long double") ? get_identifier_with_length (("complex long double"), (unsigned) strlen ("complex long double")) : (get_identifier) ("complex long double")),
   global_trees[TI_COMPLEX_LONG_DOUBLE_TYPE]));




  if (((global_trees[TI_FLOAT_TYPE])->type.precision)
      == ((integer_types[itk_long])->type.precision))
    {
      c_global_trees[CTI_G77_INTEGER_TYPE] = integer_types[itk_long];
      c_global_trees[CTI_G77_UINTEGER_TYPE] = integer_types[itk_unsigned_long];
    }
  else if (((global_trees[TI_FLOAT_TYPE])->type.precision)
    == ((integer_types[itk_int])->type.precision))
    {
      c_global_trees[CTI_G77_INTEGER_TYPE] = integer_types[itk_int];
      c_global_trees[CTI_G77_UINTEGER_TYPE] = integer_types[itk_unsigned_int];
    }
  else
    c_global_trees[CTI_G77_INTEGER_TYPE] = c_global_trees[CTI_G77_UINTEGER_TYPE] = (tree) ((void *)0);

  if (c_global_trees[CTI_G77_INTEGER_TYPE] != (tree) ((void *)0))
    {
      (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
      (__builtin_constant_p ("__g77_integer") ? get_identifier_with_length (("__g77_integer"), (unsigned) strlen ("__g77_integer")) : (get_identifier) ("__g77_integer")),
      c_global_trees[CTI_G77_INTEGER_TYPE]));
      (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
      (__builtin_constant_p ("__g77_uinteger") ? get_identifier_with_length (("__g77_uinteger"), (unsigned) strlen ("__g77_uinteger")) : (get_identifier) ("__g77_uinteger")),
      c_global_trees[CTI_G77_UINTEGER_TYPE]));
    }

  if (((global_trees[TI_FLOAT_TYPE])->type.precision) * 2
      == ((integer_types[itk_long])->type.precision))
    {
      c_global_trees[CTI_G77_LONGINT_TYPE] = integer_types[itk_long];
      c_global_trees[CTI_G77_ULONGINT_TYPE] = integer_types[itk_unsigned_long];
    }
  else if (((global_trees[TI_FLOAT_TYPE])->type.precision) * 2
    == ((integer_types[itk_long_long])->type.precision))
    {
      c_global_trees[CTI_G77_LONGINT_TYPE] = integer_types[itk_long_long];
      c_global_trees[CTI_G77_ULONGINT_TYPE] = integer_types[itk_unsigned_long_long];
    }
  else
    c_global_trees[CTI_G77_LONGINT_TYPE] = c_global_trees[CTI_G77_ULONGINT_TYPE] = (tree) ((void *)0);

  if (c_global_trees[CTI_G77_LONGINT_TYPE] != (tree) ((void *)0))
    {
      (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
      (__builtin_constant_p ("__g77_longint") ? get_identifier_with_length (("__g77_longint"), (unsigned) strlen ("__g77_longint")) : (get_identifier) ("__g77_longint")),
      c_global_trees[CTI_G77_LONGINT_TYPE]));
      (*lang_hooks.decls.pushdecl) (build_decl (TYPE_DECL,
      (__builtin_constant_p ("__g77_ulongint") ? get_identifier_with_length (("__g77_ulongint"), (unsigned) strlen ("__g77_ulongint")) : (get_identifier) ("__g77_ulongint")),
      c_global_trees[CTI_G77_ULONGINT_TYPE]));
    }

  record_builtin_type (RID_VOID, ((void *)0), global_trees[TI_VOID_TYPE]);

  c_global_trees[CTI_VOID_ZERO] = build_int_2_wide ((unsigned long long) (0), (long long) (0));
  ((c_global_trees[CTI_VOID_ZERO])->common.type) = global_trees[TI_VOID_TYPE];

  global_trees[TI_VOID_LIST_NODE] = build_void_list_node ();






  array_domain_type = build_index_type (size_int_wide ((long long) (200), SIZETYPE));




  c_global_trees[CTI_CHAR_ARRAY_TYPE]
    = build_array_type (integer_types[itk_char], array_domain_type);


  c_global_trees[CTI_INT_ARRAY_TYPE]
    = build_array_type (integer_types[itk_int], array_domain_type);

  c_global_trees[CTI_STRING_TYPE] = build_pointer_type (integer_types[itk_char]);
  c_global_trees[CTI_CONST_STRING_TYPE]
    = build_pointer_type (build_qualified_type
     (integer_types[itk_char], 0x1));


  c_global_trees[CTI_WCHAR_TYPE] = (__builtin_constant_p ((flag_short_wchar ? "short unsigned int" : "int")) ? get_identifier_with_length (((flag_short_wchar ? "short unsigned int" : "int")), (unsigned) strlen ((flag_short_wchar ? "short unsigned int" : "int"))) : (get_identifier) ((flag_short_wchar ? "short unsigned int" : "int")));
  c_global_trees[CTI_WCHAR_TYPE] = ((identifier_global_value (c_global_trees[CTI_WCHAR_TYPE]))->common.type);
  wchar_type_size = ((c_global_trees[CTI_WCHAR_TYPE])->type.precision);
  if (c_language == clk_cplusplus)
    {
      if (((c_global_trees[CTI_WCHAR_TYPE])->common.unsigned_flag))
 c_global_trees[CTI_WCHAR_TYPE] = make_unsigned_type (wchar_type_size);
      else
 c_global_trees[CTI_WCHAR_TYPE] = make_signed_type (wchar_type_size);
      record_builtin_type (RID_WCHAR, "wchar_t", c_global_trees[CTI_WCHAR_TYPE]);
    }
  else
    {
      c_global_trees[CTI_SIGNED_WCHAR_TYPE] = c_common_signed_type (c_global_trees[CTI_WCHAR_TYPE]);
      c_global_trees[CTI_UNSIGNED_WCHAR_TYPE] = c_common_unsigned_type (c_global_trees[CTI_WCHAR_TYPE]);
    }


  c_global_trees[CTI_WCHAR_ARRAY_TYPE]
    = build_array_type (c_global_trees[CTI_WCHAR_TYPE], array_domain_type);

  c_global_trees[CTI_WINT_TYPE] =
    ((identifier_global_value ((__builtin_constant_p ("unsigned int") ? get_identifier_with_length (("unsigned int"), (unsigned) strlen ("unsigned int")) : (get_identifier) ("unsigned int"))))->common.type);

  c_global_trees[CTI_INTMAX_TYPE] =
    ((identifier_global_value ((__builtin_constant_p (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long int" : "long long int"))) ? get_identifier_with_length ((((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long int" : "long long int"))), (unsigned) strlen (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long int" : "long long int")))) : (get_identifier) (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long int" : "long long int"))))))->common.type);
  c_global_trees[CTI_UINTMAX_TYPE] =
    ((identifier_global_value ((__builtin_constant_p (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "unsigned int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long unsigned int" : "long long unsigned int"))) ? get_identifier_with_length ((((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "unsigned int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long unsigned int" : "long long unsigned int"))), (unsigned) strlen (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "unsigned int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long unsigned int" : "long long unsigned int")))) : (get_identifier) (((((target_flags & 0x00000001) ? 64 : 32) == 64) ? "unsigned int" : ((((target_flags & 0x00000002) ? 64 : 32) == 64) ? "long unsigned int" : "long long unsigned int"))))))->common.type);

  c_global_trees[CTI_DEFAULT_FUNCTION_TYPE] = build_function_type (integer_types[itk_int], (tree) ((void *)0));
  global_trees[TI_PTRDIFF_TYPE]
    = ((identifier_global_value ((__builtin_constant_p (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long int" : "int")) ? get_identifier_with_length ((((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long int" : "int")), (unsigned) strlen (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long int" : "int"))) : (get_identifier) (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long int" : "int")))))->common.type);
  c_global_trees[CTI_UNSIGNED_PTRDIFF_TYPE] = c_common_unsigned_type (global_trees[TI_PTRDIFF_TYPE]);

  (*lang_hooks.decls.pushdecl)
    (build_decl (TYPE_DECL, (__builtin_constant_p ("__builtin_va_list") ? get_identifier_with_length (("__builtin_va_list"), (unsigned) strlen ("__builtin_va_list")) : (get_identifier) ("__builtin_va_list")),
   global_trees[TI_VA_LIST_TYPE]));

  (*lang_hooks.decls.pushdecl)
    (build_decl (TYPE_DECL, (__builtin_constant_p ("__builtin_ptrdiff_t") ? get_identifier_with_length (("__builtin_ptrdiff_t"), (unsigned) strlen ("__builtin_ptrdiff_t")) : (get_identifier) ("__builtin_ptrdiff_t")),
   global_trees[TI_PTRDIFF_TYPE]));

  (*lang_hooks.decls.pushdecl)
    (build_decl (TYPE_DECL, (__builtin_constant_p ("__builtin_size_t") ? get_identifier_with_length (("__builtin_size_t"), (unsigned) strlen ("__builtin_size_t")) : (get_identifier) ("__builtin_size_t")),
   sizetype_tab[(int) SIZETYPE]));

  if (((enum tree_code) (global_trees[TI_VA_LIST_TYPE])->common.code) == ARRAY_TYPE)
    {
      va_list_arg_type_node = va_list_ref_type_node =
 build_pointer_type (((global_trees[TI_VA_LIST_TYPE])->common.type));
    }
  else
    {
      va_list_arg_type_node = global_trees[TI_VA_LIST_TYPE];
      va_list_ref_type_node = build_reference_type (global_trees[TI_VA_LIST_TYPE]);
    }
# 3699 "../../../kg++fe/gnu/c-common.c"
# 1 "../../../kg++fe/gnu/builtin-types.def" 1
# 66 "../../../kg++fe/gnu/builtin-types.def"
builtin_types[(int) BT_VOID] = global_trees[TI_VOID_TYPE];
builtin_types[(int) BT_INT] = integer_types[itk_int];
builtin_types[(int) BT_UNSIGNED] = integer_types[itk_unsigned_int];
builtin_types[(int) BT_LONG] = integer_types[itk_long];
builtin_types[(int) BT_LONGLONG] = integer_types[itk_long_long];

builtin_types[(int) BT_LONGLONGUNSIGNED] = integer_types[itk_unsigned_long_long];


builtin_types[(int) BT_WORD] = (*lang_hooks.types.type_for_mode) (word_mode, 0);
builtin_types[(int) BT_FLOAT] = global_trees[TI_FLOAT_TYPE];
builtin_types[(int) BT_INTMAX] = c_global_trees[CTI_INTMAX_TYPE];
builtin_types[(int) BT_DOUBLE] = global_trees[TI_DOUBLE_TYPE];
builtin_types[(int) BT_LONG_DOUBLE] = global_trees[TI_LONG_DOUBLE_TYPE];
builtin_types[(int) BT_COMPLEX_FLOAT] = global_trees[TI_COMPLEX_FLOAT_TYPE];
builtin_types[(int) BT_COMPLEX_DOUBLE] = global_trees[TI_COMPLEX_DOUBLE_TYPE];
builtin_types[(int) BT_COMPLEX_LONG_DOUBLE] = global_trees[TI_COMPLEX_LONG_DOUBLE_TYPE];

builtin_types[(int) BT_PTR] = global_trees[TI_PTR_TYPE];
builtin_types[(int) BT_CONST_PTR] = global_trees[TI_CONST_PTR_TYPE];
builtin_types[(int) BT_PTRMODE] = (*lang_hooks.types.type_for_mode)(ptr_mode, 0);
builtin_types[(int) BT_SIZE] = global_trees[TI_SIZE_TYPE];
builtin_types[(int) BT_STRING] = c_global_trees[CTI_STRING_TYPE];
builtin_types[(int) BT_CONST_STRING] = c_global_trees[CTI_CONST_STRING_TYPE];

builtin_types[(int) BT_VALIST_REF] = va_list_ref_type_node;
builtin_types[(int) BT_VALIST_ARG] = va_list_arg_type_node;

builtin_types[(int) BT_LONGDOUBLE] = global_trees[TI_LONG_DOUBLE_TYPE];
builtin_types[(int) BT_INT_PTR] = global_trees[TI_INTEGER_PTR_TYPE];
builtin_types[(int) BT_DOUBLE_PTR] = global_trees[TI_DOUBLE_PTR_TYPE];
builtin_types[(int) BT_FLOAT_PTR] = global_trees[TI_FLOAT_PTR_TYPE];
builtin_types[(int) BT_LONGDOUBLE_PTR] = global_trees[TI_LONG_DOUBLE_PTR_TYPE];

builtin_types[(int) BT_SHORT] = integer_types[itk_short];
builtin_types[(int) BT_SHORT_PTR] = global_trees[TI_SHORT_PTR_TYPE];

builtin_types[(int) BT_FN_VOID] = build_function_type (builtin_types[(int) BT_VOID], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_PTR] = build_function_type (builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_UNSIGNED] = build_function_type (builtin_types[(int) BT_UNSIGNED], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_FLOAT] = build_function_type (builtin_types[(int) BT_FLOAT], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_DOUBLE] = build_function_type (builtin_types[(int) BT_DOUBLE], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE]);

builtin_types[(int) BT_FN_INT] = build_function_type (builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]);
builtin_types[(int) BT_FN_INT_DOUBLE] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], global_trees[TI_VOID_LIST_NODE]));


builtin_types[(int) BT_FN_LONG_LONG] = build_function_type (builtin_types[(int) BT_LONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONGLONG_LONGLONG] = build_function_type (builtin_types[(int) BT_LONGLONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGLONG], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_LONGLONGUNSIGNED_LONGLONGUNSIGNED] = build_function_type (builtin_types[(int) BT_LONGLONGUNSIGNED], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGLONGUNSIGNED], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_INTMAX_INTMAX] = build_function_type (builtin_types[(int) BT_INTMAX], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INTMAX], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_FLOAT_FLOAT] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_DOUBLE_DOUBLE] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONG_DOUBLE_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_COMPLEX_FLOAT_COMPLEX_FLOAT] = build_function_type (builtin_types[(int) BT_COMPLEX_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_FLOAT], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_COMPLEX_DOUBLE_COMPLEX_DOUBLE] = build_function_type (builtin_types[(int) BT_COMPLEX_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_DOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_COMPLEX_LONG_DOUBLE_COMPLEX_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_COMPLEX_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_FLOAT_COMPLEX_FLOAT] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_FLOAT], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_DOUBLE_COMPLEX_DOUBLE] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_DOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_COMPLEX_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_PTR_UNSIGNED] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_UNSIGNED], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_PTR_SIZE] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_INT_PTR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_VOID_PTR] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_SIZE_CONST_STRING] = build_function_type (builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_INT_CONST_STRING] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_PTR_PTR] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_SPTR_SPTR] = build_function_type (builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_VOID_VALIST_REF] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_REF], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_VOID_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_FLOAT_CONST_STRING] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_DOUBLE_CONST_STRING] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONG_DOUBLE_CONST_STRING] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE]));


builtin_types[(int) BT_FN_LONGLONG_FLOAT] = build_function_type (builtin_types[(int) BT_LONGLONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONGLONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONGLONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONGLONG_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONGLONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_DOUBLE_LONGLONG] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGLONG], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_LONG_DOUBLE_LONGLONG] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGLONG], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_FLOAT_INT] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_INT_FLOAT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], global_trees[TI_VOID_LIST_NODE]));


builtin_types[(int) BT_FN_WORD_PTR] = build_function_type (builtin_types[(int) BT_WORD], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_LONGDOUBLE_LONGDOUBLE] = build_function_type (builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGDOUBLE], global_trees[TI_VOID_LIST_NODE]));

builtin_types[(int) BT_FN_INT_LONG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG], global_trees[TI_VOID_LIST_NODE]));
builtin_types[(int) BT_FN_INT_LONGLONG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGLONG], global_trees[TI_VOID_LIST_NODE]));


builtin_types[(int) BT_FN_VOID_SHORT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]));



builtin_types[(int) BT_FN_VOID_PTR_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_STRING_STRING_CONST_STRING] = build_function_type (builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_INT_CONST_STRING_CONST_STRING] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_STRING_CONST_STRING_CONST_STRING] = build_function_type (builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_SIZE_CONST_STRING_CONST_STRING] = build_function_type (builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_STRING_CONST_STRING_INT] = build_function_type (builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_INT_CONST_STRING_PTR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_INT_INT_PTR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_VOID_PTRMODE_PTR] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTRMODE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_VOID_VALIST_REF_VALIST_ARG] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_REF], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_ARG], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_LONG_LONG_LONG] = build_function_type (builtin_types[(int) BT_LONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_INT_PTR_CONST_STRING] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_VOID_PTR_SIZE] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_INT_CONST_STRING_VALIST_ARG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_ARG], global_trees[TI_VOID_LIST_NODE])));


builtin_types[(int) BT_FN_LONG_DOUBLE_LONG_DOUBLE_LONG_DOUBLE] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE])));



builtin_types[(int) BT_FN_DOUBLE_DOUBLE_DOUBLE] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], global_trees[TI_VOID_LIST_NODE])));



builtin_types[(int) BT_FN_VOID_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_INT_INT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_SHORT_INT_INT] = build_function_type (builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_VOID_SPTR_SHORT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])));


builtin_types[(int) BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE] = build_function_type (builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONG_DOUBLE], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_FLOAT_FLOAT_FLOAT] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_DOUBLE_DOUBLE_INT] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_DOUBLE_DOUBLE_INTPTR] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_FLOAT_FLOAT_INT] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_FLOAT_FLOAT_INTPTR] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_DOUBLE_DOUBLE_DOUBLEPTR] = build_function_type (builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_DOUBLE_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_LONGDOUBLE_LONGDOUBLE_INT] = build_function_type (builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_LONGDOUBLE_LONGDOUBLE_INTPTR] = build_function_type (builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_FLOAT_FLOAT_FLOATPTR] = build_function_type (builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_FLOAT_PTR], global_trees[TI_VOID_LIST_NODE])));

builtin_types[(int) BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLEPTR] = build_function_type (builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGDOUBLE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_LONGDOUBLE_PTR], global_trees[TI_VOID_LIST_NODE])));


builtin_types[(int) BT_FN_STRING_STRING_CONST_STRING_SIZE] = build_function_type (builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_CONST_STRING_CONST_STRING_SIZE] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_PTR_PTR_CONST_PTR_SIZE] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_CONST_PTR_CONST_PTR_SIZE] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_PTR_PTR_INT_SIZE] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_VOID_PTR_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_VOID_CONST_PTR_PTR_SIZE] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_STRING_CONST_STRING_VALIST_ARG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_ARG], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_CONST_STRING_CONST_STRING_VALIST_ARG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_ARG], global_trees[TI_VOID_LIST_NODE]))));



builtin_types[(int) BT_FN_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_VOID_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_SHORT_SHORT_SHORT_INT] = build_function_type (builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_INT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_SHORT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));



builtin_types[(int) BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR] = build_function_type (builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_INT_STRING_SIZE_CONST_STRING_VALIST_ARG] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_ARG], global_trees[TI_VOID_LIST_NODE])))));



builtin_types[(int) BT_FN_INT_PTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_VOID_SPTR_SPTR_SHORT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_SPTR_INT_SPTR] = build_function_type (builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], global_trees[TI_VOID_LIST_NODE])));
builtin_types[(int) BT_FN_INT_INT_INT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])))));
builtin_types[(int) BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_INT_INT_SHORT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_VOID_INT_PTR_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_INT_PTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE])))));

builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_VOID_INT_PTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_VOID_CONST_STRING_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_VOID_PTR_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_SPTR_INT_SPTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_INT_SHORT_SHORT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_SHORT_SPTR_INT_SPTR_INT_INT] = build_function_type (builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_INT_SHORT_INT_INT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_INT_SHORT_SPTR_SHORT_SHORT_SHORT_SHORT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT], global_trees[TI_VOID_LIST_NODE]))))))));

builtin_types[(int) BT_FN_INT_SPTR_INT_SPTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_VOID_SPTR_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_VOID_INT_PTR_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_VOID_PTR_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));


builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));


builtin_types[(int) BT_FN_INT_INT_INT_SHORT_SPTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));

builtin_types[(int) BT_FN_VOID_PTR_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))))));


builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))))));


builtin_types[(int) BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))))));

builtin_types[(int) BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))))));


builtin_types[(int) BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));

builtin_types[(int) BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_INT_INT_INT_INT_SPTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))))));

builtin_types[(int) BT_FN_INT_INT_INT_SPTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE])))))));

builtin_types[(int) BT_FN_INT_INT_INT_SPTR_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));

builtin_types[(int) BT_FN_INT_INT_SPTR_INT_SPTR_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));



builtin_types[(int) BT_FN_VOID_INT_PTR_INT] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))));

builtin_types[(int) BT_FN_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))));

builtin_types[(int) BT_FN_INT_INT_INT_INT_INT_INT_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));


builtin_types[(int) BT_FN_INT_INT_INT_PTR_INT_PTR_INT_INT] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SHORT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_INT], global_trees[TI_VOID_LIST_NODE]))))))));



builtin_types[(int) BT_FN_VOID_VAR] = build_function_type (builtin_types[(int) BT_VOID], (tree) ((void *)0));
builtin_types[(int) BT_FN_INT_VAR] = build_function_type (builtin_types[(int) BT_INT], (tree) ((void *)0));
builtin_types[(int) BT_FN_PTR_VAR] = build_function_type (builtin_types[(int) BT_PTR], (tree) ((void *)0));

builtin_types[(int) BT_FN_VOID_VALIST_REF_VAR] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_VALIST_REF], (tree) ((void *)0)));

builtin_types[(int) BT_FN_VOID_CONST_PTR_VAR] = build_function_type (builtin_types[(int) BT_VOID], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_PTR], (tree) ((void *)0)));

builtin_types[(int) BT_FN_INT_CONST_STRING_VAR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], (tree) ((void *)0)));


builtin_types[(int) BT_FN_INT_PTR_CONST_STRING_VAR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], (tree) ((void *)0))));

builtin_types[(int) BT_FN_INT_STRING_CONST_STRING_VAR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], (tree) ((void *)0))));

builtin_types[(int) BT_FN_INT_CONST_STRING_CONST_STRING_VAR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], (tree) ((void *)0))));


builtin_types[(int) BT_FN_INT_STRING_SIZE_CONST_STRING_VAR] = build_function_type (builtin_types[(int) BT_INT], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_STRING], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_CONST_STRING], (tree) ((void *)0)))));


builtin_types[(int) BT_PTR_FN_VOID_VAR] = build_pointer_type (builtin_types[(int) BT_FN_VOID_VAR]);
builtin_types[(int) BT_FN_PTR_PTR_FN_VOID_VAR_PTR_SIZE] = build_function_type (builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR_FN_VOID_VAR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_PTR], tree_cons ((tree) ((void *)0), builtin_types[(int) BT_SIZE], global_trees[TI_VOID_LIST_NODE]))));
# 3700 "../../../kg++fe/gnu/c-common.c" 2
# 3718 "../../../kg++fe/gnu/c-common.c"
  if (!c_attrs_initialized)
    c_init_attributes ();
# 3751 "../../../kg++fe/gnu/c-common.c"
# 1 "../../../kg++fe/gnu/builtins.def" 1
# 166 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_alloca") { const char *__name__ = "__builtin_alloca"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 169, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_SIZE], BUILT_IN_ALLOCA, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_MALLOC_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_SIZE], builtin_types[BT_FN_PTR_SIZE], BUILT_IN_ALLOCA, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_MALLOC_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ALLOCA] = decl; }





if ("__builtin_abs") { const char *__name__ = "__builtin_abs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 174, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_ABS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_ABS, BUILT_IN_NORMAL, 0, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ABS] = decl; }


if ("__builtin_labs") { const char *__name__ = "__builtin_labs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 177, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_LONG], BUILT_IN_LABS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_LONG], builtin_types[BT_FN_LONG_LONG], BUILT_IN_LABS, BUILT_IN_NORMAL, 0, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_LABS] = decl; }



if ("__builtin_fabs") { const char *__name__ = "__builtin_fabs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 181, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_FABS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_FABS, BUILT_IN_NORMAL, 0, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FABS] = decl; }


if ("__builtin_fabsf") { const char *__name__ = "__builtin_fabsf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 184, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_FABSF, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_FABSF, BUILT_IN_NORMAL, 0, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FABSF] = decl; }


if ("__builtin_fabsl") { const char *__name__ = "__builtin_fabsl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 187, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_FABSL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_FABSL, BUILT_IN_NORMAL, 0, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FABSL] = decl; }



if ("__builtin_llabs") { const char *__name__ = "__builtin_llabs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 192, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGLONG_LONGLONG], BUILT_IN_LLABS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGLONG_LONGLONG], builtin_types[BT_FN_LONGLONG_LONGLONG], BUILT_IN_LLABS, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_LLABS] = decl; }



if ("__builtin_imaxabs") { const char *__name__ = "__builtin_imaxabs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 196, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INTMAX_INTMAX], BUILT_IN_IMAXABS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INTMAX_INTMAX], builtin_types[BT_FN_INTMAX_INTMAX], BUILT_IN_IMAXABS, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_IMAXABS] = decl; }



if ("__builtin_conj") { const char *__name__ = "__builtin_conj"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 200, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_COMPLEX_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CONJ, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_COMPLEX_DOUBLE_COMPLEX_DOUBLE], builtin_types[BT_FN_COMPLEX_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CONJ, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CONJ] = decl; }



if ("__builtin_conjf") { const char *__name__ = "__builtin_conjf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 204, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_COMPLEX_FLOAT_COMPLEX_FLOAT], BUILT_IN_CONJF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_COMPLEX_FLOAT_COMPLEX_FLOAT], builtin_types[BT_FN_COMPLEX_FLOAT_COMPLEX_FLOAT], BUILT_IN_CONJF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CONJF] = decl; }



if ("__builtin_conjl") { const char *__name__ = "__builtin_conjl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 208, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_COMPLEX_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CONJL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_COMPLEX_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], builtin_types[BT_FN_COMPLEX_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CONJL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CONJL] = decl; }



if ("__builtin_creal") { const char *__name__ = "__builtin_creal"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 212, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CREAL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CREAL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CREAL] = decl; }



if ("__builtin_crealf") { const char *__name__ = "__builtin_crealf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 216, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], BUILT_IN_CREALF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], BUILT_IN_CREALF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CREALF] = decl; }



if ("__builtin_creall") { const char *__name__ = "__builtin_creall"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 220, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CREALL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CREALL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CREALL] = decl; }



if ("__builtin_cimag") { const char *__name__ = "__builtin_cimag"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 224, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CIMAG, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], builtin_types[BT_FN_DOUBLE_COMPLEX_DOUBLE], BUILT_IN_CIMAG, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CIMAG] = decl; }



if ("__builtin_cimagf") { const char *__name__ = "__builtin_cimagf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 228, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], BUILT_IN_CIMAGF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], builtin_types[BT_FN_FLOAT_COMPLEX_FLOAT], BUILT_IN_CIMAGF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CIMAGF] = decl; }



if ("__builtin_cimagl") { const char *__name__ = "__builtin_cimagl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 232, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CIMAGL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_COMPLEX_LONG_DOUBLE], BUILT_IN_CIMAGL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CIMAGL] = decl; }




if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 234, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_DIV, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_DIV, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_DIV] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 235, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_LDIV, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_LDIV, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_LDIV] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 236, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_FFLOOR, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_FFLOOR, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FFLOOR] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 237, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_FCEIL, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_FCEIL, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FCEIL] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 238, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_FMOD, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_FMOD, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FMOD] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 239, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_FREM, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_FREM, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FREM] = decl; }




if ("__builtin_bzero") { const char *__name__ = "__builtin_bzero"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 250, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR_SIZE], BUILT_IN_BZERO, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR_SIZE], builtin_types[BT_FN_VOID_VAR], BUILT_IN_BZERO, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_BZERO] = decl; }






if ("__builtin_bcopy") { const char *__name__ = "__builtin_bcopy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 257, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_CONST_PTR_PTR_SIZE], BUILT_IN_BCOPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_CONST_PTR_PTR_SIZE], builtin_types[BT_FN_VOID_VAR], BUILT_IN_BCOPY, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_BCOPY] = decl; }






if ("__builtin_bcmp") { const char *__name__ = "__builtin_bcmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 264, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_PTR_CONST_PTR_SIZE], BUILT_IN_BCMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_PTR_CONST_PTR_SIZE], builtin_types[BT_FN_INT_VAR], BUILT_IN_BCMP, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_BCMP] = decl; }







if ("__builtin_ffs") { const char *__name__ = "__builtin_ffs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 269, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_FFS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_FFS, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FFS] = decl; }



if ("__builtin_index") { const char *__name__ = "__builtin_index"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 273, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_INDEX, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_INT], builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_INDEX, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_INDEX] = decl; }



if ("__builtin_rindex") { const char *__name__ = "__builtin_rindex"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 277, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_RINDEX, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_INT], builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_RINDEX, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_RINDEX] = decl; }




if ("__builtin_memcpy") { const char *__name__ = "__builtin_memcpy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 282, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMCPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMCPY, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MEMCPY] = decl; }



if ("__builtin_memmove") { const char *__name__ = "__builtin_memmove"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 286, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMMOVE, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMMOVE, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MEMMOVE] = decl; }



if ("__builtin_memcmp") { const char *__name__ = "__builtin_memcmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 290, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_PTR_CONST_PTR_SIZE], BUILT_IN_MEMCMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_PTR_CONST_PTR_SIZE], builtin_types[BT_FN_INT_CONST_PTR_CONST_PTR_SIZE], BUILT_IN_MEMCMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MEMCMP] = decl; }



if ("__builtin_memset") { const char *__name__ = "__builtin_memset"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 294, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR_INT_SIZE], BUILT_IN_MEMSET, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR_INT_SIZE], builtin_types[BT_FN_PTR_PTR_INT_SIZE], BUILT_IN_MEMSET, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MEMSET] = decl; }



if ("__builtin_mempcpy") { const char *__name__ = "__builtin_mempcpy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 298, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMPCPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], builtin_types[BT_FN_PTR_PTR_CONST_PTR_SIZE], BUILT_IN_MEMPCPY, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MEMPCPY] = decl; }




if ("__builtin_strcat") { const char *__name__ = "__builtin_strcat"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 303, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STRCAT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_STRING_CONST_STRING], builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STRCAT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRCAT] = decl; }



if ("__builtin_strncat") { const char *__name__ = "__builtin_strncat"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 307, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCAT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCAT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRNCAT] = decl; }



if ("__builtin_stpcpy") { const char *__name__ = "__builtin_stpcpy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 311, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STPCPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_STRING_CONST_STRING], builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STPCPY, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STPCPY] = decl; }



if ("__builtin_strcpy") { const char *__name__ = "__builtin_strcpy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 315, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STRCPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_STRING_CONST_STRING], builtin_types[BT_FN_STRING_STRING_CONST_STRING], BUILT_IN_STRCPY, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRCPY] = decl; }



if ("__builtin_strncpy") { const char *__name__ = "__builtin_strncpy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 319, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], builtin_types[BT_FN_STRING_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCPY, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRNCPY] = decl; }



if ("__builtin_strcmp") { const char *__name__ = "__builtin_strcmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 323, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING], BUILT_IN_STRCMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING], builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING], BUILT_IN_STRCMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRCMP] = decl; }



if ("__builtin_strncmp") { const char *__name__ = "__builtin_strncmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 327, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_SIZE], builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_SIZE], BUILT_IN_STRNCMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRNCMP] = decl; }



if ("__builtin_strlen") { const char *__name__ = "__builtin_strlen"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 331, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SIZE_CONST_STRING], BUILT_IN_STRLEN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SIZE_CONST_STRING], builtin_types[BT_FN_SIZE_CONST_STRING], BUILT_IN_STRLEN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRLEN] = decl; }



if ("__builtin_strstr") { const char *__name__ = "__builtin_strstr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 335, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], BUILT_IN_STRSTR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], BUILT_IN_STRSTR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRSTR] = decl; }



if ("__builtin_strpbrk") { const char *__name__ = "__builtin_strpbrk"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 339, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], BUILT_IN_STRPBRK, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], builtin_types[BT_FN_STRING_CONST_STRING_CONST_STRING], BUILT_IN_STRPBRK, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRPBRK] = decl; }



if ("__builtin_strspn") { const char *__name__ = "__builtin_strspn"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 343, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], BUILT_IN_STRSPN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], BUILT_IN_STRSPN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRSPN] = decl; }



if ("__builtin_strcspn") { const char *__name__ = "__builtin_strcspn"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 347, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], BUILT_IN_STRCSPN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], builtin_types[BT_FN_SIZE_CONST_STRING_CONST_STRING], BUILT_IN_STRCSPN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRCSPN] = decl; }



if ("__builtin_strchr") { const char *__name__ = "__builtin_strchr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 351, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_STRCHR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_INT], builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_STRCHR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRCHR] = decl; }



if ("__builtin_strrchr") { const char *__name__ = "__builtin_strrchr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 355, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_STRRCHR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_STRING_CONST_STRING_INT], builtin_types[BT_FN_STRING_CONST_STRING_INT], BUILT_IN_STRRCHR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_STRRCHR] = decl; }




if ("__builtin_intrinsic_cvt64_low") { const char *__name__ = "__builtin_intrinsic_cvt64_low"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 360, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_DOUBLE], BUILT_IN_CVT64_LOW, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_DOUBLE], builtin_types[BT_FN_INT_DOUBLE], BUILT_IN_CVT64_LOW, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CVT64_LOW] = decl; }




if ("__builtin_intrinsic_cvt64_high") { const char *__name__ = "__builtin_intrinsic_cvt64_high"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 365, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_DOUBLE], BUILT_IN_CVT64_HIGH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_DOUBLE], builtin_types[BT_FN_INT_DOUBLE], BUILT_IN_CVT64_HIGH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CVT64_HIGH] = decl; }




if ("__builtin_intrinsic_cvt32") { const char *__name__ = "__builtin_intrinsic_cvt32"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 370, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_FLOAT], BUILT_IN_CVT32, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_FLOAT], builtin_types[BT_FN_INT_FLOAT], BUILT_IN_CVT32, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CVT32] = decl; }
# 377 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_intrinsic_peripheral_RW_begin") { const char *__name__ = "__builtin_intrinsic_peripheral_RW_begin"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 380, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_PERIPHERAL_RW_BEGIN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_FN_VOID], BUILT_IN_PERIPHERAL_RW_BEGIN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PERIPHERAL_RW_BEGIN] = decl; }




if ("__builtin_intrinsic_peripheral_RW_end") { const char *__name__ = "__builtin_intrinsic_peripheral_RW_end"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 385, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_PERIPHERAL_RW_END, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_FN_VOID], BUILT_IN_PERIPHERAL_RW_END, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PERIPHERAL_RW_END] = decl; }




if ("__builtin_intrinsic_vbuf_offset") { const char *__name__ = "__builtin_intrinsic_vbuf_offset"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 390, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR], BUILT_IN_VBUF_OFFSET, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR], builtin_types[BT_FN_PTR_PTR], BUILT_IN_VBUF_OFFSET, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_VBUF_OFFSET] = decl; }



if ("__builtin_intrinsic_sbuf_offset") { const char *__name__ = "__builtin_intrinsic_sbuf_offset"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 394, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR], BUILT_IN_SBUF_OFFSET, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR], builtin_types[BT_FN_PTR_PTR], BUILT_IN_SBUF_OFFSET, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_SBUF_OFFSET] = decl; }



if ("__builtin_SL1_L_muld_shl_hi") { const char *__name__ = "__builtin_SL1_L_muld_shl_hi"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 398, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MUL_SHIFT_HI, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MUL_SHIFT_HI, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_MUL_SHIFT_HI] = decl; }



if ("__builtin_SL1_L_muld_shl") { const char *__name__ = "__builtin_SL1_L_muld_shl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 402, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MUL_SHIFT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MUL_SHIFT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_MUL_SHIFT] = decl; }



if ("__builtin_SL1_lead") { const char *__name__ = "__builtin_SL1_lead"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 406, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_INT_INT], BUILD_IN_C3_LEAD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_INT_INT], builtin_types[BT_FN_SHORT_INT_INT], BUILD_IN_C3_LEAD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_LEAD] = decl; }



if ("__builtin_SL1_L_mac") { const char *__name__ = "__builtin_SL1_L_mac"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 410, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MAC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MAC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MAC] = decl; }



if ("__builtin_SL1_L_msu") { const char *__name__ = "__builtin_SL1_L_msu"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 414, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MACN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MACN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MACN] = decl; }



if ("__builtin_SL1_shl_round_shr") { const char *__name__ = "__builtin_SL1_shl_round_shr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 418, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_ROUND, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_ROUND, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_ROUND] = decl; }



if ("__builtin_SL1_L_sadd_shl") { const char *__name__ = "__builtin_SL1_L_sadd_shl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 422, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_C3_SAADDS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_C3_SAADDS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAADDS] = decl; }



if ("__builtin_SL1_L_ssub_shl") { const char *__name__ = "__builtin_SL1_L_ssub_shl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 426, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_C3_SASUBS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_C3_SASUBS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SASUBS] = decl; }



if ("__builtin_SL1_L_mul_shr") { const char *__name__ = "__builtin_SL1_L_mul_shr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 430, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_MULA, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_MULA, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MULA] = decl; }



if ("__builtin_SL1_L_acquire_acc") { const char *__name__ = "__builtin_SL1_L_acquire_acc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 434, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_INIT_ACC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_INIT_ACC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_INIT_ACC] = decl; }



if ("__builtin_SL1_L_free_acc") { const char *__name__ = "__builtin_SL1_L_free_acc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 438, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT], BUILD_IN_C3_SAVE_ACC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT], builtin_types[BT_FN_INT_INT_SHORT], BUILD_IN_C3_SAVE_ACC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAVE_ACC] = decl; }



if ("__builtin_SL1_L_mpy_32_16") { const char *__name__ = "__builtin_SL1_L_mpy_32_16"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 442, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MPY_32_16, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILD_IN_MPY_32_16, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_MPY_32_16] = decl; }



if ("__builtin_intrinsic_c3_macd") { const char *__name__ = "__builtin_intrinsic_c3_macd"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 446, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MACD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILD_IN_C3_MACD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MACD] = decl; }



if ("__builtin_SL1_L_muld_shr") { const char *__name__ = "__builtin_SL1_L_muld_shr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 450, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILD_IN_C3_MULAD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILD_IN_C3_MULAD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MULAD] = decl; }



if ("__builtin_SL1_sadd_shl") { const char *__name__ = "__builtin_SL1_sadd_shl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 454, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SAADDSH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_INT_INT_INT], builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SAADDSH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAADDSH] = decl; }



if ("__builtin_SL1_ssub_shl") { const char *__name__ = "__builtin_SL1_ssub_shl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 458, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SASUBSH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_INT_INT_INT], builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SASUBSH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SASUBSH] = decl; }



if ("__builtin_SL1_L_copy_shr_acc") { const char *__name__ = "__builtin_SL1_L_copy_shr_acc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 462, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_MVFS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_MVFS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MVFS] = decl; }



if ("__builtin_SL1_acquire_addr") { const char *__name__ = "__builtin_SL1_acquire_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 466, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_INIT_ADDR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SPTR_SPTR], builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_INIT_ADDR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_INIT_ADDR] = decl; }



if ("__builtin_SL1_free_addr") { const char *__name__ = "__builtin_SL1_free_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 470, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_SAVE_ADDR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SPTR_SPTR], builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_SAVE_ADDR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAVE_ADDR] = decl; }



if ("__builtin_SL1_L_mac_p") { const char *__name__ = "__builtin_SL1_L_mac_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 474, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_MAC_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_MAC_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MAC_A] = decl; }



if ("__builtin_SL1_L_msu_p") { const char *__name__ = "__builtin_SL1_L_msu_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 478, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_MACN_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_MACN_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MACN_A] = decl; }



if ("__builtin_SL1_L_dmac_p") { const char *__name__ = "__builtin_SL1_L_dmac_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 482, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMAC_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMAC_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMAC_A] = decl; }



if ("__builtin_SL1_L_dmacn_p") { const char *__name__ = "__builtin_SL1_L_dmacn_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 486, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMACN_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMACN_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMACN_A] = decl; }



if ("__builtin_SL1_L_acquire_dacc") { const char *__name__ = "__builtin_SL1_L_acquire_dacc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 490, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_INIT_DACC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_INIT_DACC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_INIT_DACC] = decl; }



if ("__builtin_SL1_L_free_dacc") { const char *__name__ = "__builtin_SL1_L_free_dacc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 494, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_SAVE_DACC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_SAVE_DACC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAVE_DACC] = decl; }



if ("__builtin_SL1_sadd_p") { const char *__name__ = "__builtin_SL1_sadd_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 498, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SAADDH_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SAADDH_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAADDH_A] = decl; }



if ("__builtin_SL1_ssub_p") { const char *__name__ = "__builtin_SL1_ssub_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 502, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SASUBH_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SASUBH_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SASUBH_A] = decl; }



if ("__builtin_SL1_smul_shl_hi") { const char *__name__ = "__builtin_SL1_smul_shl_hi"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 506, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SAMULSH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_INT_INT_INT], builtin_types[BT_FN_SHORT_INT_INT_INT], BUILD_IN_C3_SAMULSH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAMULSH] = decl; }



if ("__builtin_SL1_L_mul_shr_p") { const char *__name__ = "__builtin_SL1_L_mul_shr_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 510, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_MULA_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_MULA_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MULA_A] = decl; }



if ("__builtin_SL1_smul_hi_p") { const char *__name__ = "__builtin_SL1_smul_hi_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 514, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SAMULH_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], builtin_types[BT_FN_SHORT_SPTR_INT_SPTR_INT_INT], BUILD_IN_C3_SAMULH_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAMULH_A] = decl; }



if ("__builtin_intrinsic_c3_ptr") { const char *__name__ = "__builtin_intrinsic_c3_ptr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 518, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SPTR_INT_SPTR], BUILD_IN_C3_PTR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SPTR_INT_SPTR], builtin_types[BT_FN_SPTR_INT_SPTR], BUILD_IN_C3_PTR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_PTR] = decl; }



if ("__builtin_SL1_L_mac_v_p") { const char *__name__ = "__builtin_SL1_L_mac_v_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 522, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], BUILD_IN_C3_MAC_AR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], BUILD_IN_C3_MAC_AR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MAC_AR] = decl; }



if ("__builtin_SL1_L_msu_v_p") { const char *__name__ = "__builtin_SL1_L_msu_v_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 526, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], BUILD_IN_C3_MACN_AR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_SPTR_INT_INT], BUILD_IN_C3_MACN_AR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MACN_AR] = decl; }



if ("__builtin_SL1_L_mul_shr_v_p") { const char *__name__ = "__builtin_SL1_L_mul_shr_v_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 530, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SHORT_SPTR_INT_INT_INT], BUILD_IN_C3_MULA_AR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SHORT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SHORT_SPTR_INT_INT_INT], BUILD_IN_C3_MULA_AR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MULA_AR] = decl; }



if ("__builtin_intrinsic_c3_init_ptr") { const char *__name__ = "__builtin_intrinsic_c3_init_ptr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 534, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_INIT_PTR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SPTR_SPTR], builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_C3_INIT_PTR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_INIT_PTR] = decl; }



if ("__builtin_SL1_trback") { const char *__name__ = "__builtin_SL1_trback"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 538, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_TRBACK, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR_INT], builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_TRBACK, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_TRBACK] = decl; }



if ("__builtin_SL1_viterbi") { const char *__name__ = "__builtin_SL1_viterbi"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 542, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_VITERBI, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR_INT], builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_VITERBI, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_VITERBI] = decl; }



if ("__builtin_SL1_dmul_shr") { const char *__name__ = "__builtin_SL1_dmul_shr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 546, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_DMULT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_DMULT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMULT] = decl; }



if ("__builtin_SL1_L_dmul_shr_p") { const char *__name__ = "__builtin_SL1_L_dmul_shr_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 550, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMULT_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMULT_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMULT_A] = decl; }



if ("__builtin_SL1_dmuln_shr") { const char *__name__ = "__builtin_SL1_dmuln_shr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 554, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_DMULTN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_INT_INT], BUILD_IN_C3_DMULTN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMULTN] = decl; }



if ("__builtin_SL1_L_dmuln_shr_p") { const char *__name__ = "__builtin_SL1_L_dmuln_shr_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 558, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMULTN_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_SPTR_INT_SPTR_INT_INT_INT], BUILD_IN_C3_DMULTN_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMULTN_A] = decl; }



if ("__builtin_SL1_set_circularbuf") { const char *__name__ = "__builtin_SL1_set_circularbuf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 562, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_SPTR_SPTR_SHORT_INT_INT], BUILD_IN_SET_CIRCBUF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_SPTR_SPTR_SHORT_INT_INT], builtin_types[BT_FN_VOID_SPTR_SPTR_SHORT_INT_INT], BUILD_IN_SET_CIRCBUF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_SET_CIRCBUF] = decl; }



if ("__builtin_SL1_reset_circularbuf") { const char *__name__ = "__builtin_SL1_reset_circularbuf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 566, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_SHORT], BUILD_IN_RESET_CIRCBUF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_SHORT], builtin_types[BT_FN_VOID_SHORT], BUILD_IN_RESET_CIRCBUF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_RESET_CIRCBUF] = decl; }



if ("__builtin_SL1_sdadd") { const char *__name__ = "__builtin_SL1_sdadd"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 570, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_DADD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_DADD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DADD] = decl; }



if ("__builtin_SL1_sdsub") { const char *__name__ = "__builtin_SL1_sdsub"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 574, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_DSUB, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILD_IN_C3_DSUB, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DSUB] = decl; }



if ("__builtin_SL1_fft") { const char *__name__ = "__builtin_SL1_fft"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 578, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_FFT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR_INT], builtin_types[BT_FN_VOID_PTR_INT], BUILD_IN_C3_FFT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_FFT] = decl; }



if ("__builtin_SL1_fft_load") { const char *__name__ = "__builtin_SL1_fft_load"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 582, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_FFTLD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_FFTLD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_FFTLD] = decl; }



if ("__builtin_SL1_fft_store") { const char *__name__ = "__builtin_SL1_fft_store"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 586, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_FFTST, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_FFTST, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_FFTST] = decl; }



if ("__builtin_SL1_deposit") { const char *__name__ = "__builtin_SL1_deposit"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 590, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_SHORT_SHORT], BUILD_IN_DEPOSIT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_INT_SHORT_SHORT], BUILD_IN_DEPOSIT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_DEPOSIT] = decl; }



if ("__builtin_SL1_extract") { const char *__name__ = "__builtin_SL1_extract"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 594, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_EXTRACT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_EXTRACT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_EXTRACT] = decl; }



if ("__builtin_SL1_L_bitr") { const char *__name__ = "__builtin_SL1_L_bitr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 598, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_BITR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_BITR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_BITR] = decl; }



if ("__builtin_SL1_L_dmac") { const char *__name__ = "__builtin_SL1_L_dmac"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 602, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], BUILD_IN_C3_DMAC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], BUILD_IN_C3_DMAC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMAC] = decl; }



if ("__builtin_SL1_L_dmacn") { const char *__name__ = "__builtin_SL1_L_dmacn"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 606, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], BUILD_IN_C3_DMACN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_INT_INT_SHORT], BUILD_IN_C3_DMACN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DMACN] = decl; }



if ("__builtin_SL1_load") { const char *__name__ = "__builtin_SL1_load"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 610, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_LOAD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_LOAD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_LOAD] = decl; }



if ("__builtin_SL1_store") { const char *__name__ = "__builtin_SL1_store"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 614, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_STORE, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], builtin_types[BT_FN_VOID_INT_INT_PTR_SHORT_SHORT_SHORT], BUILD_IN_C3_STORE, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_STORE] = decl; }



if ("__builtin_SL1_revb") { const char *__name__ = "__builtin_SL1_revb"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 618, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT], BUILD_IN_C3_REVB, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT], builtin_types[BT_FN_INT_INT_SHORT], BUILD_IN_C3_REVB, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_REVB] = decl; }



if ("__builtin_SL1_dshl_i") { const char *__name__ = "__builtin_SL1_dshl_i"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 622, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_DSHL_I, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_DSHL_I, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DSHL_I] = decl; }



if ("__builtin_SL1_dshr_i") { const char *__name__ = "__builtin_SL1_dshr_i"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 626, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_DSHR_I, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT], BUILD_IN_C3_DSHR_I, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_DSHR_I] = decl; }



if ("__builtin_SL1_L_maci") { const char *__name__ = "__builtin_SL1_L_maci"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 630, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_MAC_I, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_MAC_I, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MAC_I] = decl; }



if ("__builtin_SL1_L_macni") { const char *__name__ = "__builtin_SL1_L_macni"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 634, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_MACN_I, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT], BUILD_IN_C3_MACN_I, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MACN_I] = decl; }



if ("__builtin_SL1_L_mula_shr_i") { const char *__name__ = "__builtin_SL1_L_mula_shr_i"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 638, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_MULA_I, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_MULA_I, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_MULA_I] = decl; }



if ("__builtin_SL1_L_saadd_p") { const char *__name__ = "__builtin_SL1_L_saadd_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 642, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], BUILD_IN_C3_SAADD_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], BUILD_IN_C3_SAADD_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAADD_A] = decl; }



if ("__builtin_SL1_L_shl_add") { const char *__name__ = "__builtin_SL1_L_shl_add"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 646, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_SADDHA, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_SADDHA, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SADDHA] = decl; }



if ("__builtin_SL1_L_shl_add_p") { const char *__name__ = "__builtin_SL1_L_shl_add_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 650, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_SHORT_SPTR_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_SAADDHA_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_SHORT_SPTR_SHORT_SHORT_SHORT_SHORT], builtin_types[BT_FN_INT_INT_SHORT_SPTR_SHORT_SHORT_SHORT_SHORT], BUILD_IN_C3_SAADDHA_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SAADDHA_A] = decl; }



if ("__builtin_SL1_L_sasub_p") { const char *__name__ = "__builtin_SL1_L_sasub_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 654, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], BUILD_IN_C3_SASUB_A, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], builtin_types[BT_FN_INT_SPTR_SHORT_SPTR_SHORT_SHORT], BUILD_IN_C3_SASUB_A, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_C3_SASUB_A] = decl; }



if ("__builtin_SL1_copy_addr") { const char *__name__ = "__builtin_SL1_copy_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 658, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_COPY_ADDR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SPTR_SPTR], builtin_types[BT_FN_SPTR_SPTR], BUILD_IN_COPY_ADDR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_COPY_ADDR] = decl; }



if ("__builtin_SL1_set_addr") { const char *__name__ = "__builtin_SL1_set_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 662, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_SPTR_SHORT], BUILD_IN_SET_ADDR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_SPTR_SHORT], builtin_types[BT_FN_VOID_SPTR_SHORT], BUILD_IN_SET_ADDR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILD_IN_SET_ADDR] = decl; }




if ("__builtin_intrinsic_c2_mvgr_g2r") { const char *__name__ = "__builtin_intrinsic_c2_mvgr_g2r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 667, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MVGR_G2R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MVGR_G2R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGR_G2R] = decl; }




if ("__builtin_intrinsic_c2_mvgr_r2g") { const char *__name__ = "__builtin_intrinsic_c2_mvgr_r2g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 672, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MVGR_R2G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MVGR_R2G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGR_R2G] = decl; }




if ("__builtin_intrinsic_c2_mvgr_g2s") { const char *__name__ = "__builtin_intrinsic_c2_mvgr_g2s"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 677, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_MVGR_G2S, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_MVGR_G2S, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGR_G2S] = decl; }




if ("__builtin_intrinsic_c2_mvgr_s2g") { const char *__name__ = "__builtin_intrinsic_c2_mvgr_s2g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 682, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MVGR_S2G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MVGR_S2G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGR_S2G] = decl; }





if ("__builtin_intrinsic_c2_mvgc_c2g") { const char *__name__ = "__builtin_intrinsic_c2_mvgc_c2g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 688, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MVGC_C2G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MVGC_C2G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGC_C2G] = decl; }




if ("__builtin_intrinsic_c2_mvgc_g2c") { const char *__name__ = "__builtin_intrinsic_c2_mvgc_g2c"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 693, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_MVGC_G2C, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_MVGC_G2C, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGC_G2C] = decl; }





if ("__builtin_intrinsic_c2_ld_v") { const char *__name__ = "__builtin_intrinsic_c2_ld_v"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 699, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT_INT], BUILT_IN_C2_LD_V, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT_INT], BUILT_IN_C2_LD_V, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_V] = decl; }




if ("__builtin_intrinsic_c2_ld_g") { const char *__name__ = "__builtin_intrinsic_c2_ld_g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 704, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_PTR_INT_INT_INT], BUILT_IN_C2_LD_G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_PTR_INT_INT_INT], builtin_types[BT_FN_INT_PTR_INT_INT_INT], BUILT_IN_C2_LD_G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_G] = decl; }




if ("__builtin_intrinsic_c2_ld_s") { const char *__name__ = "__builtin_intrinsic_c2_ld_s"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 709, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT], BUILT_IN_C2_LD_S, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT], builtin_types[BT_FN_VOID_INT_PTR_INT_INT_INT], BUILT_IN_C2_LD_S, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_S] = decl; }




if ("__builtin_intrinsic_c2_st_v") { const char *__name__ = "__builtin_intrinsic_c2_st_v"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 714, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_PTR_INT_INT], BUILT_IN_C2_ST_V, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_PTR_INT_INT], builtin_types[BT_FN_VOID_INT_PTR_INT_INT], BUILT_IN_C2_ST_V, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_V] = decl; }




if ("__builtin_intrinsic_c2_st_g") { const char *__name__ = "__builtin_intrinsic_c2_st_g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 719, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_PTR_INT_INT], BUILT_IN_C2_ST_G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_PTR_INT_INT], builtin_types[BT_FN_VOID_INT_PTR_INT_INT], BUILT_IN_C2_ST_G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_G] = decl; }




if ("__builtin_intrinsic_c2_ld_g_imm") { const char *__name__ = "__builtin_intrinsic_c2_ld_g_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 724, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_LD_G_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_LD_G_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_G_IMM] = decl; }




if ("__builtin_intrinsic_c2_ld_c_imm") { const char *__name__ = "__builtin_intrinsic_c2_ld_c_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 729, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_LD_C_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_LD_C_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_C_IMM] = decl; }




if ("__builtin_intrinsic_c2_ld_v_imm") { const char *__name__ = "__builtin_intrinsic_c2_ld_v_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 734, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_LD_V_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_LD_V_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_V_IMM] = decl; }





if ("__builtin_intrinsic_c2_st_v_imm") { const char *__name__ = "__builtin_intrinsic_c2_st_v_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 740, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_ST_V_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_ST_V_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_V_IMM] = decl; }




if ("__builtin_intrinsic_c2_st_c_imm") { const char *__name__ = "__builtin_intrinsic_c2_st_c_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 745, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_ST_C_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_ST_C_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_C_IMM] = decl; }




if ("__builtin_intrinsic_c2_st_g_imm") { const char *__name__ = "__builtin_intrinsic_c2_st_g_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 750, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_ST_G_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_ST_G_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_G_IMM] = decl; }




if ("__builtin_intrinsic_c2_vadds") { const char *__name__ = "__builtin_intrinsic_c2_vadds"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 755, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VADDS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VADDS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VADDS] = decl; }




if ("__builtin_intrinsic_c2_vsubs") { const char *__name__ = "__builtin_intrinsic_c2_vsubs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 760, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSUBS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSUBS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VSUBS] = decl; }




if ("__builtin_intrinsic_c2_vmul") { const char *__name__ = "__builtin_intrinsic_c2_vmul"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 765, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VMUL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VMUL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VMUL] = decl; }




if ("__builtin_intrinsic_c2_vneg") { const char *__name__ = "__builtin_intrinsic_c2_vneg"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 770, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VNEG, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VNEG, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VNEG] = decl; }




if ("__builtin_intrinsic_c2_vshft") { const char *__name__ = "__builtin_intrinsic_c2_vshft"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 775, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSHFT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSHFT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VSHFT] = decl; }




if ("__builtin_intrinsic_c2_vclp") { const char *__name__ = "__builtin_intrinsic_c2_vclp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 780, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCLP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCLP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VCLP] = decl; }




if ("__builtin_intrinsic_c2_vclg") { const char *__name__ = "__builtin_intrinsic_c2_vclg"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 785, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VCLG, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VCLG, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VCLG] = decl; }




if ("__builtin_intrinsic_c2_vcmov") { const char *__name__ = "__builtin_intrinsic_c2_vcmov"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 790, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCMOV, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCMOV, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VCMOV] = decl; }




if ("__builtin_intrinsic_c2_lczero") { const char *__name__ = "__builtin_intrinsic_c2_lczero"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 795, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_LCZERO, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_LCZERO, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LCZERO] = decl; }




if ("__builtin_intrinsic_c2_vrnd") { const char *__name__ = "__builtin_intrinsic_c2_vrnd"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 800, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VRND, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VRND, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VRND] = decl; }




if ("__builtin_intrinsic_c2_vspas") { const char *__name__ = "__builtin_intrinsic_c2_vspas"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 805, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VSPAS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT], BUILT_IN_C2_VSPAS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VSPAS] = decl; }




if ("__builtin_intrinsic_c2_vspel") { const char *__name__ = "__builtin_intrinsic_c2_vspel"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 810, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSPEL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_VSPEL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VSPEL] = decl; }




if ("__builtin_intrinsic_c2_vspel_mac") { const char *__name__ = "__builtin_intrinsic_c2_vspel_mac"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 815, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VSPEL_MAC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VSPEL_MAC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VSPEL_MAC] = decl; }






if ("__builtin_intrinsic_c2_mmul") { const char *__name__ = "__builtin_intrinsic_c2_mmul"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 822, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MMUL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MMUL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MMUL] = decl; }




if ("__builtin_intrinsic_c2_vmov") { const char *__name__ = "__builtin_intrinsic_c2_vmov"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 827, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VMOV, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VMOV, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VMOV] = decl; }





if ("__builtin_intrinsic_c2_vcopy") { const char *__name__ = "__builtin_intrinsic_c2_vcopy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 833, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_VCOPY, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_VCOPY, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VCOPY] = decl; }





if ("__builtin_intrinsic_c2_vcmpr") { const char *__name__ = "__builtin_intrinsic_c2_vcmpr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 839, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCMPR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_VCMPR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VCMPR] = decl; }




if ("__builtin_intrinsic_c2_sad") { const char *__name__ = "__builtin_intrinsic_c2_sad"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 844, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SAD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SAD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SAD] = decl; }




if ("__builtin_intrinsic_c2_sad_tmp") { const char *__name__ = "__builtin_intrinsic_c2_sad_tmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 849, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SAD_TMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SAD_TMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SAD_TMP] = decl; }





if ("__builtin_intrinsic_c2_satd") { const char *__name__ = "__builtin_intrinsic_c2_satd"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 855, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_SATD, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_SATD, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SATD] = decl; }





if ("__builtin_intrinsic_c2_intra") { const char *__name__ = "__builtin_intrinsic_c2_intra"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 861, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_INTRA, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_INTRA, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_INTRA] = decl; }




if ("__builtin_intrinsic_c2_mvsel") { const char *__name__ = "__builtin_intrinsic_c2_mvsel"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 866, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_MVSEL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_MVSEL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVSEL] = decl; }




if ("__builtin_intrinsic_c2_bcst") { const char *__name__ = "__builtin_intrinsic_c2_bcst"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 871, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILT_IN_C2_BCST, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILT_IN_C2_BCST, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BCST] = decl; }




if ("__builtin_intrinsic_c2_vlcs_r") { const char *__name__ = "__builtin_intrinsic_c2_vlcs_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 876, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_VLCS_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_VLCS_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VLCS_R] = decl; }




if ("__builtin_intrinsic_c2_vlcs") { const char *__name__ = "__builtin_intrinsic_c2_vlcs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 881, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT], BUILT_IN_C2_VLCS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT], builtin_types[BT_FN_INT], BUILT_IN_C2_VLCS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_VLCS] = decl; }





if ("__builtin_intrinsic_c2_adds") { const char *__name__ = "__builtin_intrinsic_c2_adds"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 887, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_ADDS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_ADDS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ADDS] = decl; }




if ("__builtin_intrinsic_c2_adds_r") { const char *__name__ = "__builtin_intrinsic_c2_adds_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 892, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_ADDS_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_ADDS_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ADDS_R] = decl; }





if ("__builtin_intrinsic_c2_subs") { const char *__name__ = "__builtin_intrinsic_c2_subs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 898, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SUBS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SUBS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SUBS] = decl; }




if ("__builtin_intrinsic_c2_subs_r") { const char *__name__ = "__builtin_intrinsic_c2_subs_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 903, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SUBS_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SUBS_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SUBS_R] = decl; }






if ("__builtin_intrinsic_c2_muls") { const char *__name__ = "__builtin_intrinsic_c2_muls"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 910, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MULS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MULS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MULS] = decl; }





if ("__builtin_intrinsic_c2_mads") { const char *__name__ = "__builtin_intrinsic_c2_mads"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 916, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MADS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_MADS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MADS] = decl; }




if ("__builtin_intrinsic_c2_smads") { const char *__name__ = "__builtin_intrinsic_c2_smads"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 921, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SMADS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SMADS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SMADS] = decl; }





if ("__builtin_intrinsic_c2_cmov") { const char *__name__ = "__builtin_intrinsic_c2_cmov"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 927, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_CMOV, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_CMOV, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_CMOV] = decl; }




if ("__builtin_intrinsic_c2_mov") { const char *__name__ = "__builtin_intrinsic_c2_mov"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 932, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MOV, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_C2_MOV, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MOV] = decl; }




if ("__builtin_intrinsic_c2_mov_r") { const char *__name__ = "__builtin_intrinsic_c2_mov_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 937, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_MOV_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_MOV_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MOV_R] = decl; }




if ("__builtin_intrinsic_c2_clp") { const char *__name__ = "__builtin_intrinsic_c2_clp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 942, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_CLP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_CLP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_CLP] = decl; }




if ("__builtin_intrinsic_c2_chkrng") { const char *__name__ = "__builtin_intrinsic_c2_chkrng"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 947, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_CHKRNG, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_CHKRNG, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_CHKRNG] = decl; }




if ("__builtin_intrinsic_c2_scond") { const char *__name__ = "__builtin_intrinsic_c2_scond"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 952, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SCOND] = decl; }




if ("__builtin_intrinsic_c2_scond_r_wb") { const char *__name__ = "__builtin_intrinsic_c2_scond_r_wb"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 957, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_R_WB, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_R_WB, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SCOND_R_WB] = decl; }




if ("__builtin_intrinsic_c2_scond_r") { const char *__name__ = "__builtin_intrinsic_c2_scond_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 962, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SCOND_R] = decl; }





if ("__builtin_intrinsic_c2_scond_br") { const char *__name__ = "__builtin_intrinsic_c2_scond_br"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 968, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_BR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_BR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SCOND_BR] = decl; }




if ("__builtin_intrinsic_c2_scond_br_r") { const char *__name__ = "__builtin_intrinsic_c2_scond_br_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 973, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_BR_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_SCOND_BR_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SCOND_BR_R] = decl; }





if ("__builtin_intrinsic_c2_bop") { const char *__name__ = "__builtin_intrinsic_c2_bop"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 979, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_BOP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_BOP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BOP] = decl; }




if ("__builtin_intrinsic_c2_bdep") { const char *__name__ = "__builtin_intrinsic_c2_bdep"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 984, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_BDEP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_BDEP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BDEP] = decl; }




if ("__builtin_intrinsic_c2_wrap") { const char *__name__ = "__builtin_intrinsic_c2_wrap"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 989, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT], BUILT_IN_C2_WRAP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT], BUILT_IN_C2_WRAP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_WRAP] = decl; }




if ("__builtin_intrinsic_c2_bxtr") { const char *__name__ = "__builtin_intrinsic_c2_bxtr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 994, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_BXTR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT_INT], BUILT_IN_C2_BXTR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BXTR] = decl; }




if ("__builtin_intrinsic_c2_sum4") { const char *__name__ = "__builtin_intrinsic_c2_sum4"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 999, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SUM4, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SUM4, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SUM4] = decl; }




if ("__builtin_intrinsic_c2_sum3_saddr") { const char *__name__ = "__builtin_intrinsic_c2_sum3_saddr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1004, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SUM3_SADDR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_SUM3_SADDR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SUM3_SADDR] = decl; }





if ("__builtin_intrinsic_c2_sum4_r") { const char *__name__ = "__builtin_intrinsic_c2_sum4_r"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1010, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_SUM4_R, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT_INT_INT], BUILT_IN_C2_SUM4_R, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_SUM4_R] = decl; }




if ("__builtin_intrinsic_c2_med") { const char *__name__ = "__builtin_intrinsic_c2_med"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1015, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_MED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_MED, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MED] = decl; }




if ("__builtin_intrinsic_c2_gsums") { const char *__name__ = "__builtin_intrinsic_c2_gsums"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1020, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_GSUMS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_GSUMS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_GSUMS] = decl; }




if ("__builtin_intrinsic_c2_clzob") { const char *__name__ = "__builtin_intrinsic_c2_clzob"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1025, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_CLZOB, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT_INT], BUILT_IN_C2_CLZOB, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_CLZOB] = decl; }




if ("__builtin_intrinsic_c2_thctrl") { const char *__name__ = "__builtin_intrinsic_c2_thctrl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1030, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_THCTRL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT], builtin_types[BT_FN_VOID_INT_INT], BUILT_IN_C2_THCTRL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_THCTRL] = decl; }




if ("__builtin_intrinsic_c2_br_f") { const char *__name__ = "__builtin_intrinsic_c2_br_f"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1035, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_BR_F, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_BR_F, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BR_F] = decl; }




if ("__builtin_intrinsic_c2_br_t") { const char *__name__ = "__builtin_intrinsic_c2_br_t"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1040, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_BR_T, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_BR_T, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_BR_T] = decl; }





if ("__builtin_intrinsic_c2_ld_v2g") { const char *__name__ = "__builtin_intrinsic_c2_ld_v2g"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1046, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_PTR_INT_INT], BUILT_IN_C2_LD_V2G, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_PTR_INT_INT], builtin_types[BT_FN_INT_PTR_INT_INT], BUILT_IN_C2_LD_V2G, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_V2G] = decl; }




if ("__builtin_intrinsic_c2_ld_v2g_imm") { const char *__name__ = "__builtin_intrinsic_c2_ld_v2g_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1051, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_LD_V2G_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_INT_INT], builtin_types[BT_FN_INT_INT_INT_INT], BUILT_IN_C2_LD_V2G_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_LD_V2G_IMM] = decl; }




if ("__builtin_intrinsic_c2_st_g2v") { const char *__name__ = "__builtin_intrinsic_c2_st_g2v"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1056, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_PTR_INT], BUILT_IN_C2_ST_G2V, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_PTR_INT], builtin_types[BT_FN_VOID_INT_PTR_INT], BUILT_IN_C2_ST_G2V, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_G2V] = decl; }




if ("__builtin_intrinsic_c2_st_g2v_imm") { const char *__name__ = "__builtin_intrinsic_c2_st_g2v_imm"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1061, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_ST_G2V_IMM, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_ST_G2V_IMM, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_ST_G2V_IMM] = decl; }




if ("__builtin_intrinsic_c2_mvgr_r2s") { const char *__name__ = "__builtin_intrinsic_c2_mvgr_r2s"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1066, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_MVGR_R2S, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT_INT_INT], builtin_types[BT_FN_VOID_INT_INT_INT], BUILT_IN_C2_MVGR_R2S, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_MVGR_R2S] = decl; }




if ("__builtin_intrinsic_c2_fork") { const char *__name__ = "__builtin_intrinsic_c2_fork"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1071, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_FORK, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN_C2_FORK, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_FORK] = decl; }




if ("__builtin_intrinsic_c2_joint") { const char *__name__ = "__builtin_intrinsic_c2_joint"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1076, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_C2_JOINT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_FN_VOID], BUILT_IN_C2_JOINT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_JOINT] = decl; }




if ("__builtin_intrinsic_c2_thread_major") { const char *__name__ = "__builtin_intrinsic_c2_thread_major"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1081, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT], BUILT_IN_C2_THREAD_MAJOR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT], builtin_types[BT_FN_INT], BUILT_IN_C2_THREAD_MAJOR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_THREAD_MAJOR] = decl; }




if ("__builtin_intrinsic_c2_thread_minor") { const char *__name__ = "__builtin_intrinsic_c2_thread_minor"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1086, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT], BUILT_IN_C2_THREAD_MINOR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT], builtin_types[BT_FN_INT], BUILT_IN_C2_THREAD_MINOR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_C2_THREAD_MINOR] = decl; }
# 1096 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_floor") { const char *__name__ = "__builtin_floor"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1102, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_FLOOR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_FLOOR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_FLOOR] = decl; }






if ("__builtin_floorf") { const char *__name__ = "__builtin_floorf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1109, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_FLOORF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_FLOORF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_FLOORF] = decl; }







if ("__builtin_floorl") { const char *__name__ = "__builtin_floorl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1117, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_FLOORL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_FLOORL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_FLOORL] = decl; }







if ("__builtin_pow") { const char *__name__ = "__builtin_pow"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1125, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], BUILT_IN_POW, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], BUILT_IN_POW, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_POW] = decl; }







if ("__builtin_tan") { const char *__name__ = "__builtin_tan"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1131, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_TAN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_TAN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_TAN] = decl; }
# 1171 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_acos") { const char *__name__ = "__builtin_acos"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1174, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ACOS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ACOS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOS] = decl; }




if ("__builtin_acosf") { const char *__name__ = "__builtin_acosf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1179, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ACOSF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ACOSF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOSF] = decl; }




if ("__builtin_acosh") { const char *__name__ = "__builtin_acosh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1184, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ACOSH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ACOSH, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOSH] = decl; }




if ("__builtin_acoshf") { const char *__name__ = "__builtin_acoshf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1189, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ACOSHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ACOSHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOSHF] = decl; }




if ("__builtin_acoshl") { const char *__name__ = "__builtin_acoshl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1194, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ACOSHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ACOSHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOSHL] = decl; }




if ("__builtin_acosl") { const char *__name__ = "__builtin_acosl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1199, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ACOSL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ACOSL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ACOSL] = decl; }




if ("__builtin_asin") { const char *__name__ = "__builtin_asin"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1204, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ASIN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ASIN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ASIN] = decl; }




if ("__builtin_asinf") { const char *__name__ = "__builtin_asinf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1209, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ASINF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ASINF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ASINF] = decl; }




if ("__builtin_asinh") { const char *__name__ = "__builtin_asinh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1214, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ASINH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ASINH, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ASINH] = decl; }




if ("__builtin_asinhf") { const char *__name__ = "__builtin_asinhf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1219, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ASINHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ASINHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ASINHF] = decl; }




if ("__builtin_asinhl") { const char *__name__ = "__builtin_asinhl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1224, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ASINHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ASINHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ASINHL] = decl; }




if ("__builtin_asinl") { const char *__name__ = "__builtin_asinl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1229, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ASINL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ASINL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ASINL] = decl; }




if ("__builtin_atan") { const char *__name__ = "__builtin_atan"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1234, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ATAN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ATAN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ATAN] = decl; }




if ("__builtin_atan2") { const char *__name__ = "__builtin_atan2"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1239, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], BUILT_IN_ATAN2, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLE], BUILT_IN_ATAN2, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATAN2] = decl; }




if ("__builtin_atan2f") { const char *__name__ = "__builtin_atan2f"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1244, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_ATAN2F, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_ATAN2F, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATAN2F] = decl; }




if ("__builtin_atan2l") { const char *__name__ = "__builtin_atan2l"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1249, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATAN2L, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATAN2L, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATAN2L] = decl; }




if ("__builtin_atanf") { const char *__name__ = "__builtin_atanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1254, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ATANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ATANF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ATANF] = decl; }




if ("__builtin_atanh") { const char *__name__ = "__builtin_atanh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1259, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ATANH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_ATANH, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATANH] = decl; }




if ("__builtin_atanhf") { const char *__name__ = "__builtin_atanhf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1264, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ATANHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_ATANHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATANHF] = decl; }




if ("__builtin_atanhl") { const char *__name__ = "__builtin_atanhl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1269, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATANHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATANHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_ATANHL] = decl; }




if ("__builtin_atanl") { const char *__name__ = "__builtin_atanl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1274, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATANL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_ATANL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_ATANL] = decl; }




if ("__builtin_ceil") { const char *__name__ = "__builtin_ceil"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1279, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_CEIL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_CEIL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CEIL] = decl; }




if ("__builtin_ceilf") { const char *__name__ = "__builtin_ceilf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1284, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_CEILF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_CEILF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CEILF] = decl; }




if ("__builtin_ceill") { const char *__name__ = "__builtin_ceill"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1289, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_CEILL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_CEILL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CEILL] = decl; }




if ("__builtin_fmodf") { const char *__name__ = "__builtin_fmodf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1294, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_FMODF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_FMODF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_FMODF] = decl; }




if ("__builtin_fmodl") { const char *__name__ = "__builtin_fmodl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1299, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_FMODL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_FMODL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_FMODL] = decl; }




if ("__builtin_frexp") { const char *__name__ = "__builtin_frexp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1304, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE_INTPTR], BUILT_IN_FREXP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE_INTPTR], builtin_types[BT_FN_DOUBLE_DOUBLE_INTPTR], BUILT_IN_FREXP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FREXP] = decl; }




if ("__builtin_frexpf") { const char *__name__ = "__builtin_frexpf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1309, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_INTPTR], BUILT_IN_FREXPF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_INTPTR], builtin_types[BT_FN_FLOAT_FLOAT_INTPTR], BUILT_IN_FREXPF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FREXPF] = decl; }




if ("__builtin_frexpl") { const char *__name__ = "__builtin_frexpl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1314, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INTPTR], BUILT_IN_FREXPL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INTPTR], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INTPTR], BUILT_IN_FREXPL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FREXPL] = decl; }




if ("__builtin_ldexp") { const char *__name__ = "__builtin_ldexp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1319, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE_INT], BUILT_IN_LDEXP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE_INT], builtin_types[BT_FN_DOUBLE_DOUBLE_INT], BUILT_IN_LDEXP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LDEXP] = decl; }




if ("__builtin_ldexpf") { const char *__name__ = "__builtin_ldexpf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1324, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_INT], BUILT_IN_LDEXPF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_INT], builtin_types[BT_FN_FLOAT_FLOAT_INT], BUILT_IN_LDEXPF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LDEXPF] = decl; }




if ("__builtin_ldexpl") { const char *__name__ = "__builtin_ldexpl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1329, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INT], BUILT_IN_LDEXPL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INT], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_INT], BUILT_IN_LDEXPL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LDEXPL] = decl; }




if ("__builtin_log10") { const char *__name__ = "__builtin_log10"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1334, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_LOG10, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_LOG10, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LOG10] = decl; }




if ("__builtin_log10f") { const char *__name__ = "__builtin_log10f"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1339, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_LOG10F, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_LOG10F, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LOG10F] = decl; }




if ("__builtin_log10l") { const char *__name__ = "__builtin_log10l"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1344, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_LOG10L, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_LOG10L, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_LOG10L] = decl; }




if ("__builtin_modf") { const char *__name__ = "__builtin_modf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1349, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLEPTR], BUILT_IN_MODF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLEPTR], builtin_types[BT_FN_DOUBLE_DOUBLE_DOUBLEPTR], BUILT_IN_MODF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MODF] = decl; }




if ("__builtin_modff") { const char *__name__ = "__builtin_modff"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1354, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_FLOATPTR], BUILT_IN_MODFF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_FLOATPTR], builtin_types[BT_FN_FLOAT_FLOAT_FLOATPTR], BUILT_IN_MODFF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MODFF] = decl; }




if ("__builtin_modfl") { const char *__name__ = "__builtin_modfl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1359, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLEPTR], BUILT_IN_MODFL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLEPTR], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLEPTR], BUILT_IN_MODFL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_MODFL] = decl; }




if ("__builtin_powf") { const char *__name__ = "__builtin_powf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1364, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_POWF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT_FLOAT], BUILT_IN_POWF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_POWF] = decl; }




if ("__builtin_powl") { const char *__name__ = "__builtin_powl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1369, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_POWL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE_LONGDOUBLE], BUILT_IN_POWL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_POWL] = decl; }




if ("__builtin_sinh") { const char *__name__ = "__builtin_sinh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1374, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SINH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SINH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_SINH] = decl; }




if ("__builtin_sinhf") { const char *__name__ = "__builtin_sinhf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1379, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SINHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SINHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_SINHF] = decl; }




if ("__builtin_sinhl") { const char *__name__ = "__builtin_sinhl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1384, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_SINHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_SINHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_SINHL] = decl; }




if ("__builtin_tanf") { const char *__name__ = "__builtin_tanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1389, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_TANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_TANF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_TANF] = decl; }




if ("__builtin_tanh") { const char *__name__ = "__builtin_tanh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1394, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_TANH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_TANH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_TANH] = decl; }




if ("__builtin_tanhf") { const char *__name__ = "__builtin_tanhf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1399, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_TANHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_TANHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_TANHF] = decl; }




if ("__builtin_tanhl") { const char *__name__ = "__builtin_tanhl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1404, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_TANHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_TANHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_TANHL] = decl; }




if ("__builtin_tanl") { const char *__name__ = "__builtin_tanl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1409, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_TANL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_TANL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_TANL] = decl; }




if ("__builtin_cosh") { const char *__name__ = "__builtin_cosh"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1414, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_COSH, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_COSH, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_COSH] = decl; }




if ("__builtin_coshf") { const char *__name__ = "__builtin_coshf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1419, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_COSHF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_COSHF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_COSHF] = decl; }




if ("__builtin_coshl") { const char *__name__ = "__builtin_coshl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1424, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_COSHL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], builtin_types[BT_FN_LONGDOUBLE_LONGDOUBLE], BUILT_IN_COSHL, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) (flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST))]); built_in_decls[(int) BUILT_IN_COSHL] = decl; }




if ("__builtin_popcount") { const char *__name__ = "__builtin_popcount"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1429, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_POPCOUNT, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_LAST], BUILT_IN_POPCOUNT, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_POPCOUNT] = decl; }




if ("__builtin_popcountl") { const char *__name__ = "__builtin_popcountl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1434, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_LONG], BUILT_IN_POPCOUNTL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_LONG], builtin_types[BT_LAST], BUILT_IN_POPCOUNTL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_POPCOUNTL] = decl; }




if ("__builtin_popcountll") { const char *__name__ = "__builtin_popcountll"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1439, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_LONGLONG], BUILT_IN_POPCOUNTLL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_LONGLONG], builtin_types[BT_LAST], BUILT_IN_POPCOUNTLL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_POPCOUNTLL] = decl; }




if ("__builtin_ctz") { const char *__name__ = "__builtin_ctz"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1444, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_CTZ, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_LAST], BUILT_IN_CTZ, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CTZ] = decl; }




if ("__builtin_ctzl") { const char *__name__ = "__builtin_ctzl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1449, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_LONG], BUILT_IN_CTZL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_LONG], builtin_types[BT_LAST], BUILT_IN_CTZL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CTZL] = decl; }




if ("__builtin_ctzll") { const char *__name__ = "__builtin_ctzll"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1454, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_LONGLONG], BUILT_IN_CTZLL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_LONGLONG], builtin_types[BT_LAST], BUILT_IN_CTZLL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_CTZLL] = decl; }






if ("__builtin_sqrt") { const char *__name__ = "__builtin_sqrt"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1464, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SQRT, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SQRT, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_SQRT] = decl; }






if ("__builtin_sin") { const char *__name__ = "__builtin_sin"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1469, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SIN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_SIN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_SIN] = decl; }




if ("__builtin_cos") { const char *__name__ = "__builtin_cos"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1474, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_COS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_COS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_COS] = decl; }




if ("__builtin_exp") { const char *__name__ = "__builtin_exp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1481, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_EXP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_EXP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_EXP] = decl; }






if ("__builtin_log") { const char *__name__ = "__builtin_log"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1488, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_LOG, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_DOUBLE], builtin_types[BT_FN_DOUBLE_DOUBLE], BUILT_IN_LOG, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_LOG] = decl; }






if ("__builtin_sqrtf") { const char *__name__ = "__builtin_sqrtf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1495, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SQRTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SQRTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_SQRTF] = decl; }






if ("__builtin_sinf") { const char *__name__ = "__builtin_sinf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1500, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SINF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_SINF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_SINF] = decl; }




if ("__builtin_cosf") { const char *__name__ = "__builtin_cosf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1505, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_COSF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_COSF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_COSF] = decl; }




if ("__builtin_expf") { const char *__name__ = "__builtin_expf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1512, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_EXPF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_EXPF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_EXPF] = decl; }






if ("__builtin_logf") { const char *__name__ = "__builtin_logf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1519, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_LOGF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_FLOAT], builtin_types[BT_FN_FLOAT_FLOAT], BUILT_IN_LOGF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_LOGF] = decl; }






if ("__builtin_sqrtl") { const char *__name__ = "__builtin_sqrtl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1526, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_SQRTL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_SQRTL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_SQRTL] = decl; }






if ("__builtin_sinl") { const char *__name__ = "__builtin_sinl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1531, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_SINL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_SINL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_SINL] = decl; }




if ("__builtin_cosl") { const char *__name__ = "__builtin_cosl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1536, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_COSL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_COSL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_COSL] = decl; }




if ("__builtin_expl") { const char *__name__ = "__builtin_expl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1543, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_EXPL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_EXPL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_EXPL] = decl; }






if ("__builtin_logl") { const char *__name__ = "__builtin_logl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1550, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_LOGL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], builtin_types[BT_FN_LONG_DOUBLE_LONG_DOUBLE], BUILT_IN_LOGL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) flag_errno_math ? ATTR_NOTHROW_LIST : (flag_unsafe_math_optimizations ? ATTR_CONST_NOTHROW_LIST : ATTR_PURE_NOTHROW_LIST)]); built_in_decls[(int) BUILT_IN_LOGL] = decl; }







if ("__builtin_inf") { const char *__name__ = "__builtin_inf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1555, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE], BUILT_IN_INF, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE], builtin_types[BT_LAST], BUILT_IN_INF, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_INF] = decl; }



if ("__builtin_inff") { const char *__name__ = "__builtin_inff"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1559, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT], BUILT_IN_INFF, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT], builtin_types[BT_LAST], BUILT_IN_INFF, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_INFF] = decl; }



if ("__builtin_infl") { const char *__name__ = "__builtin_infl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1563, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE], BUILT_IN_INFL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE], builtin_types[BT_LAST], BUILT_IN_INFL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_INFL] = decl; }




if ("__builtin_huge_val") { const char *__name__ = "__builtin_huge_val"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1568, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE], BUILT_IN_HUGE_VAL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE], builtin_types[BT_LAST], BUILT_IN_HUGE_VAL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_HUGE_VAL] = decl; }



if ("__builtin_huge_valf") { const char *__name__ = "__builtin_huge_valf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1572, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT], BUILT_IN_HUGE_VALF, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT], builtin_types[BT_LAST], BUILT_IN_HUGE_VALF, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_HUGE_VALF] = decl; }



if ("__builtin_huge_vall") { const char *__name__ = "__builtin_huge_vall"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1576, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE], BUILT_IN_HUGE_VALL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE], builtin_types[BT_LAST], BUILT_IN_HUGE_VALL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_HUGE_VALL] = decl; }




if ("__builtin_nan") { const char *__name__ = "__builtin_nan"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1581, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_CONST_STRING], BUILT_IN_NAN, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_CONST_STRING], builtin_types[BT_FN_DOUBLE_CONST_STRING], BUILT_IN_NAN, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NAN] = decl; }



if ("__builtin_nanf") { const char *__name__ = "__builtin_nanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1585, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_CONST_STRING], BUILT_IN_NANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_CONST_STRING], builtin_types[BT_FN_FLOAT_CONST_STRING], BUILT_IN_NANF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NANF] = decl; }



if ("__builtin_nanl") { const char *__name__ = "__builtin_nanl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1589, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], BUILT_IN_NANL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], BUILT_IN_NANL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NANL] = decl; }




if ("__builtin_nans") { const char *__name__ = "__builtin_nans"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1594, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_DOUBLE_CONST_STRING], BUILT_IN_NANS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_DOUBLE_CONST_STRING], builtin_types[BT_FN_DOUBLE_CONST_STRING], BUILT_IN_NANS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NANS] = decl; }



if ("__builtin_nansf") { const char *__name__ = "__builtin_nansf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1598, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_FLOAT_CONST_STRING], BUILT_IN_NANSF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_FLOAT_CONST_STRING], builtin_types[BT_FN_FLOAT_CONST_STRING], BUILT_IN_NANSF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NANSF] = decl; }



if ("__builtin_nansl") { const char *__name__ = "__builtin_nansl"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1602, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], BUILT_IN_NANSL, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], builtin_types[BT_FN_LONG_DOUBLE_CONST_STRING], BUILT_IN_NANSL, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NANSL] = decl; }




if ("__builtin_saveregs") { const char *__name__ = "__builtin_saveregs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1607, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_VAR], BUILT_IN_SAVEREGS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_VAR], builtin_types[BT_LAST], BUILT_IN_SAVEREGS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_SAVEREGS] = decl; }



if ("__builtin_classify_type") { const char *__name__ = "__builtin_classify_type"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1611, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_CLASSIFY_TYPE, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_CLASSIFY_TYPE, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_CLASSIFY_TYPE] = decl; }



if ("__builtin_next_arg") { const char *__name__ = "__builtin_next_arg"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1615, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_VAR], BUILT_IN_NEXT_ARG, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_VAR], builtin_types[BT_LAST], BUILT_IN_NEXT_ARG, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_NEXT_ARG] = decl; }



if ("__builtin_args_info") { const char *__name__ = "__builtin_args_info"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1619, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_ARGS_INFO, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_LAST], BUILT_IN_ARGS_INFO, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_ARGS_INFO] = decl; }



if ("__builtin_constant_p") { const char *__name__ = "__builtin_constant_p"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1623, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_CONSTANT_P, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_CONSTANT_P, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_CONSTANT_P] = decl; }



if ("__builtin_frame_address") { const char *__name__ = "__builtin_frame_address"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1627, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_UNSIGNED], BUILT_IN_FRAME_ADDRESS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_UNSIGNED], builtin_types[BT_LAST], BUILT_IN_FRAME_ADDRESS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_FRAME_ADDRESS] = decl; }



if ("__builtin_return_address") { const char *__name__ = "__builtin_return_address"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1631, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_UNSIGNED], BUILT_IN_RETURN_ADDRESS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_UNSIGNED], builtin_types[BT_LAST], BUILT_IN_RETURN_ADDRESS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_RETURN_ADDRESS] = decl; }



if ("__builtin_aggregate_incoming_address") { const char *__name__ = "__builtin_aggregate_incoming_address"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1635, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_VAR], BUILT_IN_AGGREGATE_INCOMING_ADDRESS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_VAR], builtin_types[BT_LAST], BUILT_IN_AGGREGATE_INCOMING_ADDRESS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_AGGREGATE_INCOMING_ADDRESS] = decl; }



if ("__builtin_apply_args") { const char *__name__ = "__builtin_apply_args"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1639, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_VAR], BUILT_IN_APPLY_ARGS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_VAR], builtin_types[BT_LAST], BUILT_IN_APPLY_ARGS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_APPLY_ARGS] = decl; }



if ("__builtin_apply") { const char *__name__ = "__builtin_apply"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1643, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR_FN_VOID_VAR_PTR_SIZE], BUILT_IN_APPLY, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR_FN_VOID_VAR_PTR_SIZE], builtin_types[BT_LAST], BUILT_IN_APPLY, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_APPLY] = decl; }



if ("__builtin_return") { const char *__name__ = "__builtin_return"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1647, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR], BUILT_IN_RETURN, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR], builtin_types[BT_LAST], BUILT_IN_RETURN, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_RETURN] = decl; }




if ("__builtin_setjmp") { const char *__name__ = "__builtin_setjmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1652, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_PTR], BUILT_IN_SETJMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_PTR], builtin_types[BT_FN_INT_PTR], BUILT_IN_SETJMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_SETJMP] = decl; }



if ("__builtin_longjmp") { const char *__name__ = "__builtin_longjmp"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1656, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR_INT], BUILT_IN_LONGJMP, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR_INT], builtin_types[BT_FN_VOID_PTR_INT], BUILT_IN_LONGJMP, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_LONGJMP] = decl; }
# 1667 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_trap") { const char *__name__ = "__builtin_trap"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1670, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_TRAP, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_LAST], BUILT_IN_TRAP, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_TRAP] = decl; }



if ("__builtin_prefetch") { const char *__name__ = "__builtin_prefetch"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1674, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_CONST_PTR_VAR], BUILT_IN_PREFETCH, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_CONST_PTR_VAR], builtin_types[BT_LAST], BUILT_IN_PREFETCH, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_PREFETCH] = decl; }







if ("__builtin_printf") { const char *__name__ = "__builtin_printf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1682, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_PRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_2]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_VAR], builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_PRINTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_2]); built_in_decls[(int) BUILT_IN_PRINTF] = decl; }
# 1689 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_putchar") { const char *__name__ = "__builtin_putchar"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1692, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_PUTCHAR, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_PUTCHAR, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PUTCHAR] = decl; }



if ("__builtin_puts") { const char *__name__ = "__builtin_puts"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1696, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING], BUILT_IN_PUTS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING], builtin_types[BT_FN_INT_CONST_STRING], BUILT_IN_PUTS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PUTS] = decl; }



if ("__builtin_snprintf") { const char *__name__ = "__builtin_snprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1700, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VAR], BUILT_IN_SNPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_4]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VAR], builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VAR], BUILT_IN_SNPRINTF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_4]); built_in_decls[(int) BUILT_IN_SNPRINTF] = decl; }



if ("__builtin_sprintf") { const char *__name__ = "__builtin_sprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1704, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_STRING_CONST_STRING_VAR], BUILT_IN_SPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_3]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_STRING_CONST_STRING_VAR], builtin_types[BT_FN_INT_STRING_CONST_STRING_VAR], BUILT_IN_SPRINTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_3]); built_in_decls[(int) BUILT_IN_SPRINTF] = decl; }



if ("__builtin_scanf") { const char *__name__ = "__builtin_scanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1708, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_SCANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_SCANF_1_2]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_VAR], builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_SCANF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_SCANF_1_2]); built_in_decls[(int) BUILT_IN_SCANF] = decl; }



if ("__builtin_sscanf") { const char *__name__ = "__builtin_sscanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1712, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VAR], BUILT_IN_SSCANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_SCANF_2_3]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VAR], builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VAR], BUILT_IN_SSCANF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_SCANF_2_3]); built_in_decls[(int) BUILT_IN_SSCANF] = decl; }



if ("__builtin_vprintf") { const char *__name__ = "__builtin_vprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1716, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], BUILT_IN_VPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_0]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], BUILT_IN_VPRINTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_0]); built_in_decls[(int) BUILT_IN_VPRINTF] = decl; }



if ("__builtin_vscanf") { const char *__name__ = "__builtin_vscanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1720, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], BUILT_IN_VSCANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_SCANF_1_0]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], builtin_types[BT_FN_INT_CONST_STRING_VALIST_ARG], BUILT_IN_VSCANF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_FORMAT_SCANF_1_0]); built_in_decls[(int) BUILT_IN_VSCANF] = decl; }



if ("__builtin_vsscanf") { const char *__name__ = "__builtin_vsscanf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1724, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VALIST_ARG], BUILT_IN_VSSCANF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_SCANF_2_0]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VALIST_ARG], builtin_types[BT_FN_INT_CONST_STRING_CONST_STRING_VALIST_ARG], BUILT_IN_VSSCANF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_FORMAT_SCANF_2_0]); built_in_decls[(int) BUILT_IN_VSSCANF] = decl; }



if ("__builtin_vsnprintf") { const char *__name__ = "__builtin_vsnprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1728, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VALIST_ARG], BUILT_IN_VSNPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_0]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VALIST_ARG], builtin_types[BT_FN_INT_STRING_SIZE_CONST_STRING_VALIST_ARG], BUILT_IN_VSNPRINTF, BUILT_IN_NORMAL, 1, !flag_isoc99, built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_0]); built_in_decls[(int) BUILT_IN_VSNPRINTF] = decl; }



if ("__builtin_vsprintf") { const char *__name__ = "__builtin_vsprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1732, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_STRING_CONST_STRING_VALIST_ARG], BUILT_IN_VSPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_0]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_STRING_CONST_STRING_VALIST_ARG], builtin_types[BT_FN_INT_STRING_CONST_STRING_VALIST_ARG], BUILT_IN_VSPRINTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_0]); built_in_decls[(int) BUILT_IN_VSPRINTF] = decl; }
# 1742 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_fputc") { const char *__name__ = "__builtin_fputc"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1745, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_PTR], BUILT_IN_FPUTC, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_PTR], builtin_types[BT_FN_INT_INT_PTR], BUILT_IN_FPUTC, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FPUTC] = decl; }



if ("__builtin_fputs") { const char *__name__ = "__builtin_fputs"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1751, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_PTR], BUILT_IN_FPUTS, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_PTR], builtin_types[BT_FN_INT_VAR], BUILT_IN_FPUTS, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FPUTS] = decl; }





if ("__builtin_fwrite") { const char *__name__ = "__builtin_fwrite"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1755, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], BUILT_IN_FWRITE, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], BUILT_IN_FWRITE, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FWRITE] = decl; }




if ("__builtin_fprintf") { const char *__name__ = "__builtin_fprintf"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1760, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_PTR_CONST_STRING_VAR], BUILT_IN_FPRINTF, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_3]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_PTR_CONST_STRING_VAR], builtin_types[BT_FN_INT_PTR_CONST_STRING_VAR], BUILT_IN_FPRINTF, BUILT_IN_NORMAL, 1, 0, built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_3]); built_in_decls[(int) BUILT_IN_FPRINTF] = decl; }
# 1770 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_putchar_unlocked") { const char *__name__ = "__builtin_putchar_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1772, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_PUTCHAR_UNLOCKED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_FN_INT_INT], BUILT_IN_PUTCHAR_UNLOCKED, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PUTCHAR_UNLOCKED] = decl; }


if ("__builtin_puts_unlocked") { const char *__name__ = "__builtin_puts_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1775, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING], BUILT_IN_PUTS_UNLOCKED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING], builtin_types[BT_FN_INT_CONST_STRING], BUILT_IN_PUTS_UNLOCKED, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_PUTS_UNLOCKED] = decl; }


if ("__builtin_printf_unlocked") { const char *__name__ = "__builtin_printf_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1779, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_PRINTF_UNLOCKED, BUILT_IN_FRONTEND, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_2]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_VAR], builtin_types[BT_FN_INT_CONST_STRING_VAR], BUILT_IN_PRINTF_UNLOCKED, BUILT_IN_FRONTEND, 1, 1, built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_2]); built_in_decls[(int) BUILT_IN_PRINTF_UNLOCKED] = decl; }
# 1788 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_fputc_unlocked") { const char *__name__ = "__builtin_fputc_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1790, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT_PTR], BUILT_IN_FPUTC_UNLOCKED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT_PTR], builtin_types[BT_FN_INT_INT_PTR], BUILT_IN_FPUTC_UNLOCKED, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FPUTC_UNLOCKED] = decl; }


if ("__builtin_fputs_unlocked") { const char *__name__ = "__builtin_fputs_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1796, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_INT_CONST_STRING_PTR], BUILT_IN_FPUTS_UNLOCKED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_CONST_STRING_PTR], builtin_types[BT_FN_INT_VAR], BUILT_IN_FPUTS_UNLOCKED, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FPUTS_UNLOCKED] = decl; }





if ("__builtin_fwrite_unlocked") { const char *__name__ = "__builtin_fwrite_unlocked"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1799, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], BUILT_IN_FWRITE_UNLOCKED, BUILT_IN_NORMAL, (1 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], builtin_types[BT_FN_SIZE_CONST_PTR_SIZE_SIZE_PTR], BUILT_IN_FWRITE_UNLOCKED, BUILT_IN_NORMAL, 1, 1, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_FWRITE_UNLOCKED] = decl; }
# 1808 "../../../kg++fe/gnu/builtins.def"
if ("__builtin_isgreater") { const char *__name__ = "__builtin_isgreater"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1811, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISGREATER, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISGREATER, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISGREATER] = decl; }



if ("__builtin_isgreaterequal") { const char *__name__ = "__builtin_isgreaterequal"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1815, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISGREATEREQUAL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISGREATEREQUAL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISGREATEREQUAL] = decl; }



if ("__builtin_isless") { const char *__name__ = "__builtin_isless"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1819, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISLESS, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISLESS, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISLESS] = decl; }



if ("__builtin_islessequal") { const char *__name__ = "__builtin_islessequal"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1823, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISLESSEQUAL, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISLESSEQUAL, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISLESSEQUAL] = decl; }



if ("__builtin_islessgreater") { const char *__name__ = "__builtin_islessgreater"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1827, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISLESSGREATER, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISLESSGREATER, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISLESSGREATER] = decl; }



if ("__builtin_isunordered") { const char *__name__ = "__builtin_isunordered"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1831, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_VAR], BUILT_IN_ISUNORDERED, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_VAR], builtin_types[BT_LAST], BUILT_IN_ISUNORDERED, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ISUNORDERED] = decl; }





if ("__builtin_unwind_init") { const char *__name__ = "__builtin_unwind_init"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1837, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_UNWIND_INIT, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_LAST], BUILT_IN_UNWIND_INIT, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_UNWIND_INIT] = decl; }



if ("__builtin_dwarf_cfa") { const char *__name__ = "__builtin_dwarf_cfa"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1841, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR], BUILT_IN_DWARF_CFA, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR], builtin_types[BT_LAST], BUILT_IN_DWARF_CFA, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_DWARF_CFA] = decl; }



if ("__builtin_dwarf_sp_column") { const char *__name__ = "__builtin_dwarf_sp_column"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1845, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_UNSIGNED], BUILT_IN_DWARF_SP_COLUMN, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_UNSIGNED], builtin_types[BT_LAST], BUILT_IN_DWARF_SP_COLUMN, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_DWARF_SP_COLUMN] = decl; }



if ("__builtin_init_dwarf_reg_size_table") { const char *__name__ = "__builtin_init_dwarf_reg_size_table"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1849, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTR], BUILT_IN_INIT_DWARF_REG_SIZES, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTR], builtin_types[BT_LAST], BUILT_IN_INIT_DWARF_REG_SIZES, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_INIT_DWARF_REG_SIZES] = decl; }



if ("__builtin_frob_return_addr") { const char *__name__ = "__builtin_frob_return_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1853, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR], BUILT_IN_FROB_RETURN_ADDR, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR], builtin_types[BT_LAST], BUILT_IN_FROB_RETURN_ADDR, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_FROB_RETURN_ADDR] = decl; }



if ("__builtin_extract_return_addr") { const char *__name__ = "__builtin_extract_return_addr"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1857, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_PTR_PTR], BUILT_IN_EXTRACT_RETURN_ADDR, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_PTR_PTR], builtin_types[BT_LAST], BUILT_IN_EXTRACT_RETURN_ADDR, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_EXTRACT_RETURN_ADDR] = decl; }



if ("__builtin_eh_return") { const char *__name__ = "__builtin_eh_return"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1861, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_PTRMODE_PTR], BUILT_IN_EH_RETURN, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_PTRMODE_PTR], builtin_types[BT_LAST], BUILT_IN_EH_RETURN, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_EH_RETURN] = decl; }



if ("__builtin_eh_return_data_regno") { const char *__name__ = "__builtin_eh_return_data_regno"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1865, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_INT_INT], BUILT_IN_EH_RETURN_DATA_REGNO, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_INT_INT], builtin_types[BT_LAST], BUILT_IN_EH_RETURN_DATA_REGNO, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_EH_RETURN_DATA_REGNO] = decl; }





if ("__builtin_va_start") { const char *__name__ = "__builtin_va_start"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1871, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_VALIST_REF_VAR], BUILT_IN_VA_START, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_VALIST_REF_VAR], builtin_types[BT_LAST], BUILT_IN_VA_START, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_VA_START] = decl; }



if ("__builtin_stdarg_start") { const char *__name__ = "__builtin_stdarg_start"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1875, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_VALIST_REF_VAR], BUILT_IN_STDARG_START, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_VALIST_REF_VAR], builtin_types[BT_LAST], BUILT_IN_STDARG_START, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_STDARG_START] = decl; }



if ("__builtin_va_end") { const char *__name__ = "__builtin_va_end"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1879, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_VALIST_REF], BUILT_IN_VA_END, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_VALIST_REF], builtin_types[BT_LAST], BUILT_IN_VA_END, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_VA_END] = decl; }



if ("__builtin_va_copy") { const char *__name__ = "__builtin_va_copy"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1883, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_VALIST_REF_VALIST_ARG], BUILT_IN_VA_COPY, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_VALIST_REF_VALIST_ARG], builtin_types[BT_LAST], BUILT_IN_VA_COPY, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_VA_COPY] = decl; }




if ("__builtin_expect") { const char *__name__ = "__builtin_expect"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1888, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_LONG_LONG_LONG], BUILT_IN_EXPECT, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NULL]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_LONG_LONG_LONG], builtin_types[BT_LAST], BUILT_IN_EXPECT, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_NULL]); built_in_decls[(int) BUILT_IN_EXPECT] = decl; }





if ("__builtin_extend_pointer") { const char *__name__ = "__builtin_extend_pointer"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1894, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_FN_WORD_PTR], BUILT_IN_EXTEND_POINTER, BUILT_IN_NORMAL, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_WORD_PTR], builtin_types[BT_LAST], BUILT_IN_EXTEND_POINTER, BUILT_IN_NORMAL, 0, 0, built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_EXTEND_POINTER] = decl; }





if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1897, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_NEW, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_NEW, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_NEW] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1898, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_VEC_NEW, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_VEC_NEW, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_VEC_NEW] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1899, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_DELETE, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_DELETE, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_DELETE] = decl; }
if ((const char *) ((void *)0)) { const char *__name__ = (const char *) ((void *)0); tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1900, __FUNCTION__); if (!0) decl = builtin_function (__name__, builtin_types[BT_LAST], BUILT_IN_VEC_DELETE, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_LAST], builtin_types[BT_LAST], BUILT_IN_VEC_DELETE, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_VEC_DELETE] = decl; }


if ("__builtin_abort") { const char *__name__ = "__builtin_abort"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1909, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID], BUILT_IN_ABORT, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID], builtin_types[BT_FN_VOID], BUILT_IN_ABORT, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_ABORT] = decl; }







if ("__builtin_exit") { const char *__name__ = "__builtin_exit"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1917, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN_EXIT, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN_EXIT, NOT_BUILT_IN, 0, 0, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN_EXIT] = decl; }







if ("__builtin__exit") { const char *__name__ = "__builtin__exit"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1925, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN__EXIT, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN__EXIT, NOT_BUILT_IN, 0, 1, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN__EXIT] = decl; }







if ("__builtin__Exit") { const char *__name__ = "__builtin__Exit"; tree decl; if (strncmp (__name__, "__builtin_", strlen ("__builtin_")) != 0) fancy_abort ("../../../kg++fe/gnu/builtins.def", 1933, __FUNCTION__); if (!1) decl = builtin_function (__name__, builtin_types[BT_FN_VOID_INT], BUILT_IN__EXIT2, NOT_BUILT_IN, (0 ? (__name__ + strlen ("__builtin_")) : ((void *)0)), built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); else decl = builtin_function_2 (__name__, __name__ + strlen ("__builtin_"), builtin_types[BT_FN_VOID_INT], builtin_types[BT_FN_VOID_INT], BUILT_IN__EXIT2, NOT_BUILT_IN, 0, !flag_isoc99, built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST]); built_in_decls[(int) BUILT_IN__EXIT2] = decl; }
# 3752 "../../../kg++fe/gnu/c-common.c" 2


  (*targetm.init_builtins) ();

  global_trees[TI_MAIN_IDENTIFIER] = (__builtin_constant_p ("main") ? get_identifier_with_length (("main"), (unsigned) strlen ("main")) : (get_identifier) ("main"));
}

tree
build_va_arg (expr, type)
     tree expr, type;
{
  return build1 (VA_ARG_EXPR, type, expr);
}




typedef struct disabled_builtin
{
  const char *name;
  struct disabled_builtin *next;
} disabled_builtin;
static disabled_builtin *disabled_builtins = ((void *)0);

static _Bool builtin_function_disabled_p (const char *);




void
disable_builtin_function (name)
     const char *name;
{
  if (strncmp (name, "__builtin_", strlen ("__builtin_")) == 0)
    error ("cannot disable built-in function `%s'", name);
  else
    {
      disabled_builtin *new = xmalloc (sizeof (disabled_builtin));
      new->name = name;
      new->next = disabled_builtins;
      disabled_builtins = new;
    }
}





static _Bool
builtin_function_disabled_p (name)
     const char *name;
{
  disabled_builtin *p;
  for (p = disabled_builtins; p != ((void *)0); p = p->next)
    {
      if (strcmp (name, p->name) == 0)
 return 1;
    }
  return 0;
}
# 3829 "../../../kg++fe/gnu/c-common.c"
static tree
builtin_function_2 (builtin_name, name, builtin_type, type, function_code,
      class, library_name_p, nonansi_p, attrs)
     const char *builtin_name;
     const char *name;
     tree builtin_type;
     tree type;
     int function_code;
     enum built_in_class class;
     int library_name_p;
     int nonansi_p;
     tree attrs;
{
  tree bdecl = (tree) ((void *)0);
  tree decl = (tree) ((void *)0);
  if (builtin_name != 0)
    {
      bdecl = builtin_function (builtin_name, builtin_type, function_code,
    class, library_name_p ? name : ((void *)0),
    attrs);
    }
  if (name != 0 && !flag_no_builtin && !builtin_function_disabled_p (name)
      && !(nonansi_p && flag_no_nonansi_builtin))
    {
      decl = builtin_function (name, type, function_code, class, ((void *)0),
          attrs);
      if (nonansi_p)
 ((decl)->common.unsigned_flag) = 1;
    }
  return (bdecl != 0 ? bdecl : decl);
}




_Bool
c_promoting_integer_type_p (t)
     tree t;
{
  switch (((enum tree_code) (t)->common.code))
    {
    case INTEGER_TYPE:
      return (((t)->type.main_variant) == integer_types[itk_char]
       || ((t)->type.main_variant) == integer_types[itk_signed_char]
       || ((t)->type.main_variant) == integer_types[itk_unsigned_char]
       || ((t)->type.main_variant) == integer_types[itk_short]
       || ((t)->type.main_variant) == integer_types[itk_unsigned_short]
       || ((t)->type.precision) < ((integer_types[itk_int])->type.precision));

    case ENUMERAL_TYPE:



      return ((t)->type.precision) < ((integer_types[itk_int])->type.precision);

    case BOOLEAN_TYPE:
      return 1;

    default:
      return 0;
    }
}




int
self_promoting_args_p (parms)
     tree parms;
{
  tree t;
  for (t = parms; t; t = ((t)->common.chain))
    {
      tree type = ((t)->list.value);

      if (((t)->common.chain) == 0 && type != global_trees[TI_VOID_TYPE])
 return 0;

      if (type == 0)
 return 0;

      if (((type)->type.main_variant) == global_trees[TI_FLOAT_TYPE])
 return 0;

      if (c_promoting_integer_type_p (type))
 return 0;
    }
  return 1;
}




tree
strip_array_types (type)
     tree type;
{
  while (((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    type = ((type)->common.type);

  return type;
}

static tree expand_unordered_cmp (tree, tree, enum tree_code, enum tree_code);
# 3944 "../../../kg++fe/gnu/c-common.c"
static tree
expand_unordered_cmp (function, params, unordered_code, ordered_code)
     tree function, params;
     enum tree_code unordered_code, ordered_code;
{
  tree arg0, arg1, type;
  enum tree_code code0, code1;


  if (params == 0 || ((params)->common.chain) == 0)
    {
      error ("too few arguments to function `%s'",
      ((char *)(((function)->decl.name))->identifier.id.str));
      return global_trees[TI_ERROR_MARK];
    }
  else if (((((params)->common.chain))->common.chain) != 0)
    {
      error ("too many arguments to function `%s'",
      ((char *)(((function)->decl.name))->identifier.id.str));
      return global_trees[TI_ERROR_MARK];
    }

  arg0 = ((params)->list.value);
  arg1 = ((((params)->common.chain))->list.value);

  code0 = ((enum tree_code) (((arg0)->common.type))->common.code);
  code1 = ((enum tree_code) (((arg1)->common.type))->common.code);


  type = 0;
  if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE)
      && (code1 == INTEGER_TYPE || code1 == REAL_TYPE))
    type = common_type (((arg0)->common.type), ((arg1)->common.type));

  if (type == 0 || ((enum tree_code) (type)->common.code) != REAL_TYPE)
    {
      error ("non-floating-point argument to function `%s'",
      ((char *)(((function)->decl.name))->identifier.id.str));
      return global_trees[TI_ERROR_MARK];
    }




  if ((((mode_class[(int) (((type)->type.mode))]) == MODE_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0)) return (tree) ((void *)0);


  if (unordered_code == UNORDERED_EXPR)
    {
      if ((((mode_class[(int) (((type)->type.mode))]) == MODE_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0))
 return build_binary_op (unordered_code,
    convert (type, arg0),
    convert (type, arg1),
    0);
      else
 return global_trees[TI_INTEGER_ZERO];
    }

  return build_unary_op (TRUTH_NOT_EXPR,
    build_binary_op ((((mode_class[(int) (((type)->type.mode))]) == MODE_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((type)->type.mode))]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0)
       ? unordered_code
       : ordered_code,
       convert (type, arg0),
       convert (type, arg1),
       0),
    0);
}
# 4021 "../../../kg++fe/gnu/c-common.c"
tree
expand_tree_builtin (function, params, coerced_params)
     tree function, params, coerced_params;
{
  if (((function)->decl.built_in_class) != BUILT_IN_NORMAL)
    return (tree) ((void *)0);

  switch (((function)->decl.u1.f))
    {
    case BUILT_IN_ABS:
    case BUILT_IN_LABS:
    case BUILT_IN_LLABS:
    case BUILT_IN_IMAXABS:
    case BUILT_IN_FABS:
    case BUILT_IN_FABSL:
    case BUILT_IN_FABSF:
      if (coerced_params == 0)
 return global_trees[TI_INTEGER_ZERO];
      return build_unary_op (ABS_EXPR, ((coerced_params)->list.value), 0);

    case BUILT_IN_CONJ:
    case BUILT_IN_CONJF:
    case BUILT_IN_CONJL:
      if (coerced_params == 0)
 return global_trees[TI_INTEGER_ZERO];
      return build_unary_op (CONJ_EXPR, ((coerced_params)->list.value), 0);

    case BUILT_IN_CREAL:
    case BUILT_IN_CREALF:
    case BUILT_IN_CREALL:
      if (coerced_params == 0)
 return global_trees[TI_INTEGER_ZERO];
      return build_unary_op (REALPART_EXPR, ((coerced_params)->list.value), 0);

    case BUILT_IN_CIMAG:
    case BUILT_IN_CIMAGF:
    case BUILT_IN_CIMAGL:
      if (coerced_params == 0)
 return global_trees[TI_INTEGER_ZERO];
      return build_unary_op (IMAGPART_EXPR, ((coerced_params)->list.value), 0);

    case BUILT_IN_ISGREATER:
      return expand_unordered_cmp (function, params, UNLE_EXPR, LE_EXPR);

    case BUILT_IN_ISGREATEREQUAL:
      return expand_unordered_cmp (function, params, UNLT_EXPR, LT_EXPR);

    case BUILT_IN_ISLESS:
      return expand_unordered_cmp (function, params, UNGE_EXPR, GE_EXPR);

    case BUILT_IN_ISLESSEQUAL:
      return expand_unordered_cmp (function, params, UNGT_EXPR, GT_EXPR);

    case BUILT_IN_ISLESSGREATER:
      return expand_unordered_cmp (function, params, UNEQ_EXPR, EQ_EXPR);

    case BUILT_IN_ISUNORDERED:
      return expand_unordered_cmp (function, params, UNORDERED_EXPR, NOP_EXPR);

    default:
      break;
    }

  return (tree) ((void *)0);
}



int
statement_code_p (code)
     enum tree_code code;
{
  switch (code)
    {
    case CLEANUP_STMT:
    case EXPR_STMT:
    case COMPOUND_STMT:
    case DECL_STMT:
    case IF_STMT:
    case FOR_STMT:
    case WHILE_STMT:
    case DO_STMT:
    case RETURN_STMT:
    case BREAK_STMT:
    case CONTINUE_STMT:
    case SCOPE_STMT:
    case SWITCH_STMT:
    case GOTO_STMT:
    case LABEL_STMT:
    case ASM_STMT:
    case FILE_STMT:
    case CASE_LABEL:

    case OMP_MARKER_STMT:

      return 1;

    default:
      if (lang_statement_code_p)
 return (*lang_statement_code_p) (code);
      return 0;
    }
}
# 4135 "../../../kg++fe/gnu/c-common.c"
tree
walk_stmt_tree (tp, func, data)
     tree *tp;
     walk_tree_fn func;
     void *data;
{
  enum tree_code code;
  int walk_subtrees;
  tree result;
  int i, len;
# 4156 "../../../kg++fe/gnu/c-common.c"
  if (!*tp)
    return (tree) ((void *)0);


  if (!statement_code_p (((enum tree_code) (*tp)->common.code)))
    return (tree) ((void *)0);


  walk_subtrees = 1;
  result = (*func) (tp, &walk_subtrees, data);


  if (result)
    return result;



  code = ((enum tree_code) (*tp)->common.code);
  if (!statement_code_p (code))
    return (tree) ((void *)0);



  if (walk_subtrees)
    {


      len = tree_code_length[(int) (code)];



      for (i = 0; i < len; ++i)
 do { result = walk_stmt_tree (&(((*tp)->exp.operands[i])), func, data); if (result) return result; } while (0);
    }



  return walk_stmt_tree (&((*tp)->common.chain), func, data);


}






int
case_compare (k1, k2)
     splay_tree_key k1;
     splay_tree_key k2;
{


  if (!k1)
    return k2 ? -1 : 0;
  else if (!k2)
    return k1 ? 1 : 0;

  return tree_int_cst_compare ((tree) k1, (tree) k2);
}
# 4227 "../../../kg++fe/gnu/c-common.c"
tree
c_add_case_label (cases, cond, low_value, high_value)
     splay_tree cases;
     tree cond;
     tree low_value;
     tree high_value;
{
  tree type;
  tree label;
  tree case_label;
  splay_tree_node node;


  label = build_decl (LABEL_DECL, (tree) ((void *)0), (tree) ((void *)0));
  ((label)->decl.context) = current_function_decl;



  if (!cond || cond == global_trees[TI_ERROR_MARK])
    {


      if (!cases->root)
 add_stmt (build_case_label ((tree) ((void *)0), (tree) ((void *)0), label));
      return global_trees[TI_ERROR_MARK];
    }

  if ((low_value && ((low_value)->common.type)
       && (((enum tree_code) (((low_value)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((low_value)->common.type))->common.code) == REFERENCE_TYPE))
      || (high_value && ((high_value)->common.type)
   && (((enum tree_code) (((high_value)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((high_value)->common.type))->common.code) == REFERENCE_TYPE)))
    error ("pointers are not permitted as case values");


  if (high_value && pedantic)
    {
      if (c_language == clk_cplusplus)
 pedwarn ("ISO C++ forbids range expressions in switch statements");
      else
 pedwarn ("ISO C forbids range expressions in switch statements");
    }

  type = ((cond)->common.type);
  if (low_value)
    {
      low_value = check_case_value (low_value);
      low_value = convert_and_check (type, low_value);
    }
  if (high_value)
    {
      high_value = check_case_value (high_value);
      high_value = convert_and_check (type, high_value);
    }


  if (low_value == global_trees[TI_ERROR_MARK] || high_value == global_trees[TI_ERROR_MARK])
    {
      if (!cases->root)
 add_stmt (build_case_label ((tree) ((void *)0), (tree) ((void *)0), label));
      return global_trees[TI_ERROR_MARK];
    }




  if (tree_int_cst_equal (low_value, high_value))
    high_value = (tree) ((void *)0);
  if (low_value && high_value
      && !tree_int_cst_lt (low_value, high_value))
    warning ("empty range specified");



  node = splay_tree_lookup (cases, (splay_tree_key) low_value);



  if (!node && (low_value || high_value))
    {
      splay_tree_node low_bound;
      splay_tree_node high_bound;
# 4316 "../../../kg++fe/gnu/c-common.c"
      low_bound = splay_tree_predecessor (cases,
       (splay_tree_key) low_value);
      high_bound = splay_tree_successor (cases,
      (splay_tree_key) low_value);




      if (low_bound
   && ((((tree) low_bound->value))->exp.operands[1])
   && tree_int_cst_compare (((((tree) low_bound->value))->exp.operands[1]),
        low_value) >= 0)
 node = low_bound;




      else if (high_bound
        && high_value
        && (tree_int_cst_compare ((tree) high_bound->key,
      high_value)
     <= 0))
 node = high_bound;
    }

  if (node)
    {
      tree duplicate = ((((tree) node->value))->exp.operands[2]);

      if (high_value)
 {
   error ("duplicate (or overlapping) case value");
   error_with_decl (duplicate,
      "this is the first entry overlapping that value");
 }
      else if (low_value)
 {
   error ("duplicate case value") ;
   error_with_decl (duplicate, "previously used here");
 }
      else
 {
   error ("multiple default labels in one switch");
   error_with_decl (duplicate, "this is the first default label");
 }
      if (!cases->root)
 add_stmt (build_case_label ((tree) ((void *)0), (tree) ((void *)0), label));
    }


  case_label = add_stmt (build_case_label (low_value, high_value, label));

  splay_tree_insert (cases,
       (splay_tree_key) low_value,
       (splay_tree_value) case_label);

  return case_label;
}




tree
finish_label_address_expr (label)
     tree label;
{
  tree result;

  if (pedantic)
    {
      if (c_language == clk_cplusplus)
 pedwarn ("ISO C++ forbids taking the address of a label");
      else
 pedwarn ("ISO C forbids taking the address of a label");
    }

  label = lookup_label (label);
  if (label == (tree) ((void *)0))
    result = global_trees[TI_NULL_POINTER];
  else
    {
      ((label)->common.used_flag) = 1;
      result = build1 (ADDR_EXPR, global_trees[TI_PTR_TYPE], label);
      ((result)->common.constant_flag) = 1;



    }

  return result;
}



rtx
c_expand_expr (exp, target, tmode, modifier)
     tree exp;
     rtx target;
     enum machine_mode tmode;
     int modifier;
{
  switch (((enum tree_code) (exp)->common.code))
    {
    case STMT_EXPR:
      {
 tree rtl_expr;
 rtx result;
 _Bool preserve_result = 0;
 _Bool return_target = 0;






 push_temp_slots ();
 rtl_expr = expand_start_stmt_expr (!(((exp))->common.lang_flag_0));



 if (target != (const_int_rtx[64])
     && ((enum tree_code) ((((exp))->exp.operands[0]))->common.code) == COMPOUND_STMT
     && ((enum tree_code) (((((((exp))->exp.operands[0])))->exp.operands[0]))->common.code) == SCOPE_STMT)
   {
     tree expr = ((((((exp))->exp.operands[0])))->exp.operands[0]);
     tree last = ((expr)->common.chain);

     while (((last)->common.chain))
       {
  expr = last;
  last = ((last)->common.chain);
       }

     if (((enum tree_code) (last)->common.code) == SCOPE_STMT
  && ((enum tree_code) (expr)->common.code) == EXPR_STMT)
       {
  if (target && ((enum tree_code) ((((expr))->exp.operands[0]))->common.code) == VAR_DECL
      && ((((((expr))->exp.operands[0]))->decl.rtl != ((void *)0)) ? (((((expr))->exp.operands[0]))->decl.rtl ? ((((expr))->exp.operands[0]))->decl.rtl : (make_decl_rtl ((((expr))->exp.operands[0]), ((void *)0)), ((((expr))->exp.operands[0]))->decl.rtl)) : ((void *)0)) == target)




    return_target = 1;
  else
    {


      ((expr)->common.addressable_flag) = 1;
      preserve_result = 1;
    }
       }
   }

 expand_stmt ((((exp))->exp.operands[0]));
 expand_end_stmt_expr (rtl_expr);

 result = expand_expr (rtl_expr, target, tmode, modifier);
 if (return_target)
   result = target;
 else if (preserve_result && ((enum rtx_code) (result)->code) == MEM)
   {
     if (((enum machine_mode) (result)->mode) != BLKmode)
       result = copy_to_reg (result);
     else
       preserve_temp_slots (result);
   }




 if ((((exp))->common.lang_flag_0))
   preserve_temp_slots ((rtx) 0);

 pop_temp_slots ();
 return result;
      }
      break;

    case CALL_EXPR:
      {
 if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ADDR_EXPR
     && (((enum tree_code) (((((exp)->exp.operands[0]))->exp.operands[0]))->common.code)
  == FUNCTION_DECL)
     && (((((((exp)->exp.operands[0]))->exp.operands[0]))->decl.built_in_class) != NOT_BUILT_IN)
     && (((((((exp)->exp.operands[0]))->exp.operands[0]))->decl.built_in_class)
  == BUILT_IN_FRONTEND))
   return c_expand_builtin (exp, target, tmode, modifier);
 else
   fancy_abort ("../../../kg++fe/gnu/c-common.c", 4504, __FUNCTION__);
      }
      break;

    case COMPOUND_LITERAL_EXPR:
      {


 tree decl = (((((exp)->exp.operands[0])))->exp.operands[0]);
 emit_local_var (decl);
 return expand_expr (decl, target, tmode, modifier);
      }

    default:
      fancy_abort ("../../../kg++fe/gnu/c-common.c", 4518, __FUNCTION__);
    }

  fancy_abort ("../../../kg++fe/gnu/c-common.c", 4521, __FUNCTION__);
  return ((void *)0);
}



int
c_safe_from_p (target, exp)
     rtx target;
     tree exp;
{



  if (((enum tree_code) (exp)->common.code) == DECL_STMT)
    {
      tree decl = (((exp))->exp.operands[0]);

      if (((enum tree_code) (decl)->common.code) == VAR_DECL
   && ((decl)->decl.initial)
   && !safe_from_p (target, ((decl)->decl.initial), 0))
 return 0;
    }


  if (statement_code_p (((enum tree_code) (exp)->common.code)) && ((exp)->common.chain))
    return safe_from_p (target, ((exp)->common.chain), 0);


  return 1;
}



int
c_common_unsafe_for_reeval (exp)
     tree exp;
{


  if (((enum tree_code) (exp)->common.code) == STMT_EXPR
      || ((enum tree_code) (exp)->common.code) == COMPOUND_LITERAL_EXPR)
    return 2;


  return -1;
}



int
c_staticp (exp)
     tree exp;
{
  if (((enum tree_code) (exp)->common.code) == COMPOUND_LITERAL_EXPR
      && (((((((exp)->exp.operands[0])))->exp.operands[0]))->common.static_flag))
    return 1;
  return 0;
}




static rtx
c_expand_builtin (exp, target, tmode, modifier)
     tree exp;
     rtx target;
     enum machine_mode tmode;
     enum expand_modifier modifier;
{
  tree type = ((exp)->common.type);
  tree fndecl = ((((exp)->exp.operands[0]))->exp.operands[0]);
  tree arglist = ((exp)->exp.operands[1]);
  enum built_in_function fcode = ((fndecl)->decl.u1.f);
  enum tree_code code = ((enum tree_code) (exp)->common.code);
  const int ignore = (target == (const_int_rtx[64])
        || ((code == NON_LVALUE_EXPR || code == NOP_EXPR
      || code == CONVERT_EXPR || code == REFERENCE_EXPR
      || code == COND_EXPR)
     && ((enum tree_code) (type)->common.code) == VOID_TYPE));

  if (! optimize && ! (!strncmp (((char *)(((fndecl)->decl.name))->identifier.id.str), "__builtin_", 10)))
    return expand_call (exp, target, ignore);

  switch (fcode)
    {
# 4637 "../../../kg++fe/gnu/c-common.c"
    default:
      error ("built-in function `%s' not currently supported",
      ((char *)(((fndecl)->decl.name))->identifier.id.str));
    }



  return expand_call (exp, target, ignore);
}




static int
is_valid_printf_arglist (arglist)
     tree arglist;
{

  const int SAVE_pedantic = pedantic;
  int diagnostic_occurred = 0;
  tree attrs;



  pedantic = 1;

  attrs = tree_cons ((__builtin_constant_p ("format") ? get_identifier_with_length (("format"), (unsigned) strlen ("format")) : (get_identifier) ("format")),
       tree_cons ((tree) ((void *)0),
    (__builtin_constant_p ("printf") ? get_identifier_with_length (("printf"), (unsigned) strlen ("printf")) : (get_identifier) ("printf")),
    tree_cons ((tree) ((void *)0),
        global_trees[TI_INTEGER_ONE],
        tree_cons ((tree) ((void *)0),
            build_int_2_wide ((unsigned long long) (2), (long long) (0)),
            (tree) ((void *)0)))),
       (tree) ((void *)0));
  check_function_format (&diagnostic_occurred, attrs, arglist);


  pedantic = SAVE_pedantic;



  return ! diagnostic_occurred;
}
# 4875 "../../../kg++fe/gnu/c-common.c"
tree
boolean_increment (code, arg)
     enum tree_code code;
     tree arg;
{
  tree val;
  tree true_res = (c_language == clk_cplusplus
     ? c_global_trees[CTI_BOOLEAN_TRUE]
     : c_global_trees[CTI_C_BOOL_TRUE]);
  arg = stabilize_reference (arg);
  switch (code)
    {
    case PREINCREMENT_EXPR:
      val = build (MODIFY_EXPR, ((arg)->common.type), arg, true_res);
      break;
    case POSTINCREMENT_EXPR:
      val = build (MODIFY_EXPR, ((arg)->common.type), arg, true_res);
      arg = save_expr (arg);
      val = build (COMPOUND_EXPR, ((arg)->common.type), val, arg);
      val = build (COMPOUND_EXPR, ((arg)->common.type), arg, val);
      break;
    case PREDECREMENT_EXPR:
      val = build (MODIFY_EXPR, ((arg)->common.type), arg, invert_truthvalue (arg));
      break;
    case POSTDECREMENT_EXPR:
      val = build (MODIFY_EXPR, ((arg)->common.type), arg, invert_truthvalue (arg));
      arg = save_expr (arg);
      val = build (COMPOUND_EXPR, ((arg)->common.type), val, arg);
      val = build (COMPOUND_EXPR, ((arg)->common.type), arg, val);
      break;
    default:
      fancy_abort ("../../../kg++fe/gnu/c-common.c", 4906, __FUNCTION__);
    }
  ((val)->common.side_effects_flag) = 1;
  return val;
}


static void
builtin_define_type_precision (name, type)
     const char *name;
     tree type;
{
  builtin_define_with_int_value (name, ((type)->type.precision));
}


static void
builtin_define_float_constants (name_prefix, fp_suffix, type)
     const char *name_prefix;
     const char *fp_suffix;
     tree type;
{
# 4936 "../../../kg++fe/gnu/c-common.c"
  const double log10_2 = .30102999566398119521;
  double log10_b;
  const struct real_format *fmt;

  char name[64], buf[128];
  int dig, min_10_exp, max_10_exp;
  int decimal_dig;

  fmt = real_format_for_mode[((type)->type.mode) - QFmode];


  if (type == global_trees[TI_FLOAT_TYPE])
    builtin_define_with_int_value ("__FLT_RADIX__", fmt->b);
  log10_b = log10_2 * fmt->log2_b;


  sprintf (name, "__%s_MANT_DIG__", name_prefix);
  builtin_define_with_int_value (name, fmt->p);
# 4962 "../../../kg++fe/gnu/c-common.c"
  dig = (fmt->p - 1) * log10_b;
  sprintf (name, "__%s_DIG__", name_prefix);
  builtin_define_with_int_value (name, dig);


  sprintf (name, "__%s_MIN_EXP__", name_prefix);
  sprintf (buf, "(%d)", fmt->emin);
  builtin_define_with_value (name, buf, 0);
# 4978 "../../../kg++fe/gnu/c-common.c"
  min_10_exp = (fmt->emin - 1) * log10_b;
  sprintf (name, "__%s_MIN_10_EXP__", name_prefix);
  sprintf (buf, "(%d)", min_10_exp);
  builtin_define_with_value (name, buf, 0);


  sprintf (name, "__%s_MAX_EXP__", name_prefix);
  builtin_define_with_int_value (name, fmt->emax);
# 5013 "../../../kg++fe/gnu/c-common.c"
  max_10_exp = fmt->emax * log10_b;
  sprintf (name, "__%s_MAX_10_EXP__", name_prefix);
  builtin_define_with_int_value (name, max_10_exp);
# 5026 "../../../kg++fe/gnu/c-common.c"
  {
    double d_decimal_dig = 1 + fmt->p * log10_b;
    decimal_dig = d_decimal_dig;
    if (decimal_dig < d_decimal_dig)
      decimal_dig++;
  }
  if (type == global_trees[TI_LONG_DOUBLE_TYPE])
    builtin_define_with_int_value ("__DECIMAL_DIG__", decimal_dig);







  {
    int i, n;
    char *p;

    strcpy (buf, "0x0.");
    n = fmt->p * fmt->log2_b;
    for (i = 0, p = buf + 4; i + 3 < n; i += 4)
      *p++ = 'f';
    if (i < n)
      *p++ = "08ce"[n - i];
    sprintf (p, "p%d", fmt->emax * fmt->log2_b);
  }
  sprintf (name, "__%s_MAX__", name_prefix);
  builtin_define_with_hex_fp_value (name, type, decimal_dig, buf, fp_suffix);



  sprintf (name, "__%s_MIN__", name_prefix);
  sprintf (buf, "0x1p%d", (fmt->emin - 1) * fmt->log2_b);
  builtin_define_with_hex_fp_value (name, type, decimal_dig, buf, fp_suffix);



  sprintf (name, "__%s_EPSILON__", name_prefix);
  sprintf (buf, "0x1p%d", (1 - fmt->p) * fmt->log2_b);
  builtin_define_with_hex_fp_value (name, type, decimal_dig, buf, fp_suffix);




  sprintf (name, "__%s_DENORM_MIN__", name_prefix);
  if (fmt->has_denorm)
    {
      sprintf (buf, "0x1p%d", (fmt->emin - fmt->p) * fmt->log2_b);
      builtin_define_with_hex_fp_value (name, type, decimal_dig,
     buf, fp_suffix);
    }
  else
    {
      sprintf (buf, "0.0%s", fp_suffix);
      builtin_define_with_value (name, buf, 0);
    }
}


void
cb_register_builtins (pfile)
     cpp_reader *pfile;
{

  if (flag_undef)
    return;

  if (c_language == clk_cplusplus)
    {
      if (1)
 cpp_define (pfile, "__GXX_WEAK__=1");
      else
 cpp_define (pfile, "__GXX_WEAK__=0");
      if (warn_deprecated)
 cpp_define (pfile, "__DEPRECATED");
    }
  if (flag_exceptions)
    cpp_define (pfile, "__EXCEPTIONS");



  cpp_define (pfile, "__GXX_ABI_VERSION=102");


  if (0)
    cpp_define (pfile, "__USING_SJLJ_EXCEPTIONS__");


  builtin_define_with_value ("__SIZE_TYPE__", ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long unsigned int" : "unsigned int"), 0);
  builtin_define_with_value ("__PTRDIFF_TYPE__", ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "long int" : "int"), 0);
  builtin_define_with_value ("__WCHAR_TYPE__", (flag_short_wchar ? "short unsigned int" : "int"), 0);
  builtin_define_with_value ("__WINT_TYPE__", "unsigned int", 0);


  builtin_define_type_max ("__SCHAR_MAX__", integer_types[itk_signed_char], 0);
  builtin_define_type_max ("__SHRT_MAX__", integer_types[itk_short], 0);
  builtin_define_type_max ("__INT_MAX__", integer_types[itk_int], 0);
  builtin_define_type_max ("__LONG_MAX__", integer_types[itk_long], 1);
  builtin_define_type_max ("__LONG_LONG_MAX__", integer_types[itk_long_long], 2);
  builtin_define_type_max ("__WCHAR_MAX__", c_global_trees[CTI_WCHAR_TYPE], 0);

  builtin_define_type_precision ("__CHAR_BIT__", integer_types[itk_char]);



  builtin_define_with_int_value ("__FLT_EVAL_METHOD__",
     0);

  builtin_define_float_constants ("FLT", "F", global_trees[TI_FLOAT_TYPE]);
  builtin_define_float_constants ("DBL", "", global_trees[TI_DOUBLE_TYPE]);
  builtin_define_float_constants ("LDBL", "L", global_trees[TI_LONG_DOUBLE_TYPE]);


  builtin_define_with_value ("__REGISTER_PREFIX__", "", 0);
  builtin_define_with_value ("__USER_LABEL_PREFIX__", user_label_prefix, 0);


  builtin_define_with_value ("__VERSION__", version_string, 1);



  if (optimize_size)
    cpp_define (pfile, "__OPTIMIZE_SIZE__");
  if (optimize)
    cpp_define (pfile, "__OPTIMIZE__");

  if (flag_hosted)
    cpp_define (pfile, "__STDC_HOSTED__=1");
  else
    cpp_define (pfile, "__STDC_HOSTED__=0");

  if (fast_math_flags_set_p ())
    cpp_define (pfile, "__FAST_MATH__");
  if (flag_really_no_inline)
    cpp_define (pfile, "__NO_INLINE__");
  if (flag_signaling_nans)
    cpp_define (pfile, "__SUPPORT_SNAN__");
  if (flag_finite_math_only)
    cpp_define (pfile, "__FINITE_MATH_ONLY__=1");
  else
    cpp_define (pfile, "__FINITE_MATH_ONLY__=0");

  if (flag_iso)
    cpp_define (pfile, "__STRICT_ANSI__");

  if (!flag_signed_char)
    cpp_define (pfile, "__CHAR_UNSIGNED__");

  if (c_language == clk_cplusplus && ((c_global_trees[CTI_WCHAR_TYPE])->common.unsigned_flag))
    cpp_define (pfile, "__WCHAR_UNSIGNED__");


  if (flag_objc && flag_next_runtime)
    cpp_define (pfile, "__NEXT_RUNTIME__");







  do { cpp_assert (pfile, "cpu=mips"); cpp_define (pfile, "__mips__"); cpp_define (pfile, "_mips"); if (!flag_iso) cpp_define (pfile, "mips"); if ((target_flags & 0x00002000)) { cpp_define (pfile, "__mips64"); builtin_define_std ("R4000"); cpp_define (pfile, "_R4000"); } else { builtin_define_std ("R3000"); cpp_define (pfile, "_R3000"); } if ((target_flags & 0x00000200)) cpp_define (pfile, "__mips_fpr=64"); else cpp_define (pfile, "__mips_fpr=32"); if ((target_flags & 0x00100000)) cpp_define (pfile, "__mips16"); do { char *macro, *p; macro = concat (("_MIPS_ARCH"), "_", (mips_arch_info)->name, ((void *)0)); for (p = macro; *p != 0; p++) *p = _sch_toupper[(*p) & 0xff]; cpp_define (pfile, macro); builtin_define_with_value (("_MIPS_ARCH"), (mips_arch_info)->name, 1); free (macro); } while (0); do { char *macro, *p; macro = concat (("_MIPS_TUNE"), "_", (mips_tune_info)->name, ((void *)0)); for (p = macro; *p != 0; p++) *p = _sch_toupper[(*p) & 0xff]; cpp_define (pfile, macro); builtin_define_with_value (("_MIPS_TUNE"), (mips_tune_info)->name, 1); free (macro); } while (0); if ((mips_isa == 1)) { cpp_define (pfile, "__mips=1"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS1"); } else if ((mips_isa == 2)) { cpp_define (pfile, "__mips=2"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS2"); } else if ((mips_isa == 3)) { cpp_define (pfile, "__mips=3"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS3"); } else if ((mips_isa == 4)) { cpp_define (pfile, "__mips=4"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS4"); } else if ((mips_isa == 32)) { cpp_define (pfile, "__mips=32"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS32"); } else if ((mips_isa == 64)) { cpp_define (pfile, "__mips=64"); cpp_define (pfile, "_MIPS_ISA=_MIPS_ISA_MIPS64"); } if ((! (target_flags & 0x00000100))) cpp_define (pfile, "__mips_hard_float"); else if ((target_flags & 0x00000100)) cpp_define (pfile, "__mips_soft_float"); if ((target_flags & 0x00020000)) cpp_define (pfile, "__mips_single_float"); if ((target_flags & 0x00010000)) { builtin_define_std ("MIPSEB"); cpp_define (pfile, "_MIPSEB"); } else { builtin_define_std ("MIPSEL"); cpp_define (pfile, "_MIPSEL"); } if ((cpp_get_options (pfile)->lang == CLK_ASM)) { builtin_define_std ("LANGUAGE_ASSEMBLY"); cpp_define (pfile, "_LANGUAGE_ASSEMBLY"); } else if (c_language == clk_c) { builtin_define_std ("LANGUAGE_C"); cpp_define (pfile, "_LANGUAGE_C"); } else if (c_language == clk_cplusplus) { cpp_define (pfile, "_LANGUAGE_C_PLUS_PLUS"); cpp_define (pfile, "__LANGUAGE_C_PLUS_PLUS"); cpp_define (pfile, "__LANGUAGE_C_PLUS_PLUS__"); } if (flag_objc) { cpp_define (pfile, "_LANGUAGE_OBJECTIVE_C"); cpp_define (pfile, "__LANGUAGE_OBJECTIVE_C"); builtin_define_std ("LANGUAGE_C"); cpp_define (pfile, "_LANGUAGE_C"); } if (mips_abi == 3) cpp_define (pfile, "__mips_eabi"); } while (0);
  do { cpp_define (pfile, "__gnu_linux__"); cpp_define (pfile, "__ELF__"); cpp_define (pfile, "__PIC__"); cpp_define (pfile, "__pic__"); builtin_define_std ("unix"); builtin_define_std ("linux"); cpp_assert (pfile, "system=linux"); if (c_language == clk_cplusplus) cpp_define (pfile, "_GNU_SOURCE"); if (mips_abi == 1) { cpp_define (pfile, "_ABIN32=2"); cpp_define (pfile, "_MIPS_SIM=_ABIN32"); cpp_define (pfile, "_MIPS_SZLONG=32"); cpp_define (pfile, "_MIPS_SZPTR=32"); } else if (mips_abi == 2) { cpp_define (pfile, "_ABI64=3"); cpp_define (pfile, "_MIPS_SIM=_ABI64"); cpp_define (pfile, "_MIPS_SZLONG=64"); cpp_define (pfile, "_MIPS_SZPTR=64"); } else { cpp_define (pfile, "_MIPS_SIM=_MIPS_SIM_ABI32"); cpp_define (pfile, "_MIPS_SZLONG=32"); cpp_define (pfile, "_MIPS_SZPTR=32"); } if ((target_flags & 0x00000200)) cpp_define (pfile, "_MIPS_FPSET=32"); else cpp_define (pfile, "_MIPS_FPSET=16"); if ((target_flags & 0x00000001)) cpp_define (pfile, "_MIPS_SZINT=64"); else cpp_define (pfile, "_MIPS_SZINT=32"); } while (0);
}
# 5201 "../../../kg++fe/gnu/c-common.c"
void
builtin_define_std (macro)
     const char *macro;
{
  size_t len = strlen (macro);
  char *buff = __builtin_alloca(len + 5);
  char *p = buff + 2;
  char *q = p + len;


  memcpy (p, macro, len + 1);
  if (!( *p == '_' && (p[1] == '_' || (_sch_istable[(p[1]) & 0xff] & (unsigned short)(_sch_isupper)))))
    {
      if (*p != '_')
 *--p = '_';
      if (p[1] != '_')
 *--p = '_';
    }
  cpp_define (parse_in, p);


  if (p != buff + 2)
    {

      if (q[-1] != '_')
 *q++ = '_';
      if (q[-2] != '_')
 *q++ = '_';
      *q = '\0';
      cpp_define (parse_in, p);


      if (!flag_iso)
 cpp_define (parse_in, macro);
    }
}




static void
builtin_define_with_value (macro, expansion, is_str)
     const char *macro;
     const char *expansion;
     int is_str;
{
  char *buf;
  size_t mlen = strlen (macro);
  size_t elen = strlen (expansion);
  size_t extra = 2;

  if (is_str)
    extra += 2;

  buf = __builtin_alloca(mlen + elen + extra);
  if (is_str)
    sprintf (buf, "%s=\"%s\"", macro, expansion);
  else
    sprintf (buf, "%s=%s", macro, expansion);

  cpp_define (parse_in, buf);
}


static void
builtin_define_with_int_value (macro, value)
     const char *macro;
     long long value;
{
  char *buf;
  size_t mlen = strlen (macro);
  size_t vlen = 18;
  size_t extra = 2;

  buf = __builtin_alloca(mlen + vlen + extra);
  memcpy (buf, macro, mlen);
  buf[mlen] = '=';
  sprintf (buf + mlen + 1, "%lld", value);

  cpp_define (parse_in, buf);
}


static void
builtin_define_with_hex_fp_value (macro, type, digits, hex_str, fp_suffix)
     const char *macro;
     tree type __attribute__ ((__unused__));
     int digits;
     const char *hex_str;
     const char *fp_suffix;
{
  struct real_value real;
  char dec_str[64], buf[256];
# 5305 "../../../kg++fe/gnu/c-common.c"
  real_from_string (&real, hex_str);
  real_to_decimal (dec_str, &real, sizeof (dec_str), digits, 0);

  sprintf (buf, "%s=%s%s", macro, dec_str, fp_suffix);
  cpp_define (parse_in, buf);
}





static void
builtin_define_type_max (macro, type, is_long)
     const char *macro;
     tree type;
     int is_long;
{
  static const char *const values[]
    = { "127", "255",
 "32767", "65535",
 "2147483647", "4294967295",
 "9223372036854775807", "18446744073709551615",
 "170141183460469231731687303715884105727",
 "340282366920938463463374607431768211455" };
  static const char *const suffixes[] = { "", "U", "L", "UL", "LL", "ULL" };

  const char *value, *suffix;
  char *buf;
  size_t idx;




  switch (((type)->type.precision))
    {
    case 8: idx = 0; break;
    case 16: idx = 2; break;
    case 32: idx = 4; break;
    case 64: idx = 6; break;
    case 128: idx = 8; break;
    default: fancy_abort ("../../../kg++fe/gnu/c-common.c", 5345, __FUNCTION__);
    }

  value = values[idx + ((type)->common.unsigned_flag)];
  suffix = suffixes[is_long * 2 + ((type)->common.unsigned_flag)];

  buf = __builtin_alloca(strlen (macro) + 1 + strlen (value) + strlen (suffix) + 1);
  sprintf (buf, "%s=%s%s", macro, value, suffix);

  cpp_define (parse_in, buf);
}

static void
c_init_attributes ()
{
# 5373 "../../../kg++fe/gnu/c-common.c"
# 1 "../../../kg++fe/gnu/builtin-attrs.def" 1
# 52 "../../../kg++fe/gnu/builtin-attrs.def"
built_in_attributes[(int) ATTR_NULL] = (tree) ((void *)0);
# 61 "../../../kg++fe/gnu/builtin-attrs.def"
built_in_attributes[(int) ATTR_0] = build_int_2_wide ((unsigned long long) (0), (long long) (0 < 0 ? -1 : 0)); built_in_attributes[(int) ATTR_LIST_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_0], built_in_attributes[(int) ATTR_NULL]);
built_in_attributes[(int) ATTR_1] = build_int_2_wide ((unsigned long long) (1), (long long) (1 < 0 ? -1 : 0)); built_in_attributes[(int) ATTR_LIST_1] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_1], built_in_attributes[(int) ATTR_NULL]);
built_in_attributes[(int) ATTR_2] = build_int_2_wide ((unsigned long long) (2), (long long) (2 < 0 ? -1 : 0)); built_in_attributes[(int) ATTR_LIST_2] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_2], built_in_attributes[(int) ATTR_NULL]);
built_in_attributes[(int) ATTR_3] = build_int_2_wide ((unsigned long long) (3), (long long) (3 < 0 ? -1 : 0)); built_in_attributes[(int) ATTR_LIST_3] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_3], built_in_attributes[(int) ATTR_NULL]);
built_in_attributes[(int) ATTR_4] = build_int_2_wide ((unsigned long long) (4), (long long) (4 < 0 ? -1 : 0)); built_in_attributes[(int) ATTR_LIST_4] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_4], built_in_attributes[(int) ATTR_NULL]);






built_in_attributes[(int) ATTR_LIST_1_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_1], built_in_attributes[(int) ATTR_LIST_0]);
built_in_attributes[(int) ATTR_LIST_1_2] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_1], built_in_attributes[(int) ATTR_LIST_2]);
built_in_attributes[(int) ATTR_LIST_2_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_2], built_in_attributes[(int) ATTR_LIST_0]);
built_in_attributes[(int) ATTR_LIST_2_3] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_2], built_in_attributes[(int) ATTR_LIST_3]);
built_in_attributes[(int) ATTR_LIST_3_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_3], built_in_attributes[(int) ATTR_LIST_0]);
built_in_attributes[(int) ATTR_LIST_3_4] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_3], built_in_attributes[(int) ATTR_LIST_4]);



built_in_attributes[(int) ATTR_CONST] = (__builtin_constant_p ("const") ? get_identifier_with_length (("const"), (unsigned) strlen ("const")) : (get_identifier) ("const"));
built_in_attributes[(int) ATTR_FORMAT] = (__builtin_constant_p ("format") ? get_identifier_with_length (("format"), (unsigned) strlen ("format")) : (get_identifier) ("format"));
built_in_attributes[(int) ATTR_FORMAT_ARG] = (__builtin_constant_p ("format_arg") ? get_identifier_with_length (("format_arg"), (unsigned) strlen ("format_arg")) : (get_identifier) ("format_arg"));
built_in_attributes[(int) ATTR_MALLOC] = (__builtin_constant_p ("malloc") ? get_identifier_with_length (("malloc"), (unsigned) strlen ("malloc")) : (get_identifier) ("malloc"));
built_in_attributes[(int) ATTR_NONNULL] = (__builtin_constant_p ("nonnull") ? get_identifier_with_length (("nonnull"), (unsigned) strlen ("nonnull")) : (get_identifier) ("nonnull"));
built_in_attributes[(int) ATTR_NORETURN] = (__builtin_constant_p ("noreturn") ? get_identifier_with_length (("noreturn"), (unsigned) strlen ("noreturn")) : (get_identifier) ("noreturn"));
built_in_attributes[(int) ATTR_NOTHROW] = (__builtin_constant_p ("nothrow") ? get_identifier_with_length (("nothrow"), (unsigned) strlen ("nothrow")) : (get_identifier) ("nothrow"));
built_in_attributes[(int) ATTR_PRINTF] = (__builtin_constant_p ("printf") ? get_identifier_with_length (("printf"), (unsigned) strlen ("printf")) : (get_identifier) ("printf"));
built_in_attributes[(int) ATTR_PURE] = (__builtin_constant_p ("pure") ? get_identifier_with_length (("pure"), (unsigned) strlen ("pure")) : (get_identifier) ("pure"));
built_in_attributes[(int) ATTR_SCANF] = (__builtin_constant_p ("scanf") ? get_identifier_with_length (("scanf"), (unsigned) strlen ("scanf")) : (get_identifier) ("scanf"));
built_in_attributes[(int) ATTR_STRFMON] = (__builtin_constant_p ("strfmon") ? get_identifier_with_length (("strfmon"), (unsigned) strlen ("strfmon")) : (get_identifier) ("strfmon"));
built_in_attributes[(int) ATTR_STRFTIME] = (__builtin_constant_p ("strftime") ? get_identifier_with_length (("strftime"), (unsigned) strlen ("strftime")) : (get_identifier) ("strftime"));

built_in_attributes[(int) ATTR_NOTHROW_LIST] = tree_cons (built_in_attributes[(int) ATTR_NOTHROW], built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_NULL]);

built_in_attributes[(int) ATTR_CONST_NOTHROW_LIST] = tree_cons (built_in_attributes[(int) ATTR_CONST], built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_NOTHROW_LIST]);

built_in_attributes[(int) ATTR_PURE_NOTHROW_LIST] = tree_cons (built_in_attributes[(int) ATTR_PURE], built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_NOTHROW_LIST]);

built_in_attributes[(int) ATTR_NORETURN_NOTHROW_LIST] = tree_cons (built_in_attributes[(int) ATTR_NORETURN], built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_NOTHROW_LIST]);

built_in_attributes[(int) ATTR_MALLOC_NOTHROW_LIST] = tree_cons (built_in_attributes[(int) ATTR_MALLOC], built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_NOTHROW_LIST]);


built_in_attributes[(int) ATTR_NONNULL_1] = tree_cons (built_in_attributes[(int) ATTR_NONNULL], built_in_attributes[(int) ATTR_LIST_1], built_in_attributes[(int) ATTR_NOTHROW_LIST]);

built_in_attributes[(int) ATTR_NONNULL_2] = tree_cons (built_in_attributes[(int) ATTR_NONNULL], built_in_attributes[(int) ATTR_LIST_2], built_in_attributes[(int) ATTR_NOTHROW_LIST]);

built_in_attributes[(int) ATTR_NONNULL_3] = tree_cons (built_in_attributes[(int) ATTR_NONNULL], built_in_attributes[(int) ATTR_LIST_3], built_in_attributes[(int) ATTR_NOTHROW_LIST]);
# 118 "../../../kg++fe/gnu/builtin-attrs.def"
built_in_attributes[(int) ATTR_PRINTF_1_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_1_0]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_1_0], built_in_attributes[(int) ATTR_NONNULL_1]);
built_in_attributes[(int) ATTR_PRINTF_1_2] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_1_2]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_1_2] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_1_2], built_in_attributes[(int) ATTR_NONNULL_1]);
built_in_attributes[(int) ATTR_PRINTF_2_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_2_0]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_2_0], built_in_attributes[(int) ATTR_NONNULL_2]);
built_in_attributes[(int) ATTR_PRINTF_2_3] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_2_3]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_3] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_2_3], built_in_attributes[(int) ATTR_NONNULL_2]);
built_in_attributes[(int) ATTR_PRINTF_3_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_3_0]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_3_0], built_in_attributes[(int) ATTR_NONNULL_3]);
built_in_attributes[(int) ATTR_PRINTF_3_4] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_PRINTF], built_in_attributes[(int) ATTR_LIST_3_4]); built_in_attributes[(int) ATTR_FORMAT_PRINTF_3_4] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_PRINTF_3_4], built_in_attributes[(int) ATTR_NONNULL_3]);
built_in_attributes[(int) ATTR_SCANF_1_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_SCANF], built_in_attributes[(int) ATTR_LIST_1_0]); built_in_attributes[(int) ATTR_FORMAT_SCANF_1_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_SCANF_1_0], built_in_attributes[(int) ATTR_NONNULL_1]);
built_in_attributes[(int) ATTR_SCANF_1_2] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_SCANF], built_in_attributes[(int) ATTR_LIST_1_2]); built_in_attributes[(int) ATTR_FORMAT_SCANF_1_2] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_SCANF_1_2], built_in_attributes[(int) ATTR_NONNULL_1]);
built_in_attributes[(int) ATTR_SCANF_2_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_SCANF], built_in_attributes[(int) ATTR_LIST_2_0]); built_in_attributes[(int) ATTR_FORMAT_SCANF_2_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_SCANF_2_0], built_in_attributes[(int) ATTR_NONNULL_2]);
built_in_attributes[(int) ATTR_SCANF_2_3] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_SCANF], built_in_attributes[(int) ATTR_LIST_2_3]); built_in_attributes[(int) ATTR_FORMAT_SCANF_2_3] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_SCANF_2_3], built_in_attributes[(int) ATTR_NONNULL_2]);
built_in_attributes[(int) ATTR_STRFTIME_3_0] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_STRFTIME], built_in_attributes[(int) ATTR_LIST_3_0]); built_in_attributes[(int) ATTR_FORMAT_STRFTIME_3_0] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_STRFTIME_3_0], built_in_attributes[(int) ATTR_NONNULL_3]);
built_in_attributes[(int) ATTR_STRFMON_3_4] = tree_cons (built_in_attributes[(int) ATTR_NULL], built_in_attributes[(int) ATTR_STRFMON], built_in_attributes[(int) ATTR_LIST_3_4]); built_in_attributes[(int) ATTR_FORMAT_STRFMON_3_4] = tree_cons (built_in_attributes[(int) ATTR_FORMAT], built_in_attributes[(int) ATTR_STRFMON_3_4], built_in_attributes[(int) ATTR_NONNULL_3]);






built_in_attributes[(int) ATTR_FORMAT_ARG_1] = tree_cons (built_in_attributes[(int) ATTR_FORMAT_ARG], built_in_attributes[(int) ATTR_LIST_1], built_in_attributes[(int) ATTR_NONNULL_1]);
built_in_attributes[(int) ATTR_FORMAT_ARG_2] = tree_cons (built_in_attributes[(int) ATTR_FORMAT_ARG], built_in_attributes[(int) ATTR_LIST_2], built_in_attributes[(int) ATTR_NONNULL_2]);
# 155 "../../../kg++fe/gnu/builtin-attrs.def"
built_in_attributes[(int) ATTR_fscanf] = (__builtin_constant_p ("fscanf") ? get_identifier_with_length (("fscanf"), (unsigned) strlen ("fscanf")) : (get_identifier) ("fscanf"));
built_in_attributes[(int) ATTR_vfprintf] = (__builtin_constant_p ("vfprintf") ? get_identifier_with_length (("vfprintf"), (unsigned) strlen ("vfprintf")) : (get_identifier) ("vfprintf"));
built_in_attributes[(int) ATTR_strftime] = (__builtin_constant_p ("strftime") ? get_identifier_with_length (("strftime"), (unsigned) strlen ("strftime")) : (get_identifier) ("strftime"));







built_in_attributes[(int) ATTR_vfscanf] = (__builtin_constant_p ("vfscanf") ? get_identifier_with_length (("vfscanf"), (unsigned) strlen ("vfscanf")) : (get_identifier) ("vfscanf"));







built_in_attributes[(int) ATTR_gettext] = (__builtin_constant_p ("gettext") ? get_identifier_with_length (("gettext"), (unsigned) strlen ("gettext")) : (get_identifier) ("gettext"));
built_in_attributes[(int) ATTR_dgettext] = (__builtin_constant_p ("dgettext") ? get_identifier_with_length (("dgettext"), (unsigned) strlen ("dgettext")) : (get_identifier) ("dgettext"));
built_in_attributes[(int) ATTR_dcgettext] = (__builtin_constant_p ("dcgettext") ? get_identifier_with_length (("dcgettext"), (unsigned) strlen ("dcgettext")) : (get_identifier) ("dcgettext"));

built_in_attributes[(int) ATTR_strfmon] = (__builtin_constant_p ("strfmon") ? get_identifier_with_length (("strfmon"), (unsigned) strlen ("strfmon")) : (get_identifier) ("strfmon"));
# 5374 "../../../kg++fe/gnu/c-common.c" 2





  c_attrs_initialized = 1;
}



void
c_common_insert_default_attributes (decl)
     tree decl;
{
  tree name = ((decl)->decl.name);

  if (!c_attrs_initialized)
    c_init_attributes ();
# 5401 "../../../kg++fe/gnu/c-common.c"
# 1 "../../../kg++fe/gnu/builtin-attrs.def" 1
# 52 "../../../kg++fe/gnu/builtin-attrs.def"

# 61 "../../../kg++fe/gnu/builtin-attrs.def"

















































# 118 "../../../kg++fe/gnu/builtin-attrs.def"




















# 155 "../../../kg++fe/gnu/builtin-attrs.def"
 if ((flag_hosted) && name == built_in_attributes[(int) ATTR_fscanf]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_SCANF_2_3], ATTR_FLAG_BUILT_IN);
 if ((flag_hosted) && name == built_in_attributes[(int) ATTR_vfprintf]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_PRINTF_2_0], ATTR_FLAG_BUILT_IN);
 if ((flag_hosted) && name == built_in_attributes[(int) ATTR_strftime]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_STRFTIME_3_0], ATTR_FLAG_BUILT_IN);







 if (((flag_hosted && (flag_isoc99 || flag_noniso_default_format_attributes))) && name == built_in_attributes[(int) ATTR_vfscanf]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_SCANF_2_0], ATTR_FLAG_BUILT_IN);







 if ((flag_hosted && flag_noniso_default_format_attributes) && name == built_in_attributes[(int) ATTR_gettext]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_ARG_1], ATTR_FLAG_BUILT_IN);
 if ((flag_hosted && flag_noniso_default_format_attributes) && name == built_in_attributes[(int) ATTR_dgettext]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_ARG_2], ATTR_FLAG_BUILT_IN);
 if ((flag_hosted && flag_noniso_default_format_attributes) && name == built_in_attributes[(int) ATTR_dcgettext]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_ARG_2], ATTR_FLAG_BUILT_IN);

 if ((flag_hosted && flag_noniso_default_format_attributes) && name == built_in_attributes[(int) ATTR_strfmon]) decl_attributes (&decl, built_in_attributes[(int) ATTR_FORMAT_STRFMON_3_4], ATTR_FLAG_BUILT_IN);
# 5402 "../../../kg++fe/gnu/c-common.c" 2





}



void
shadow_warning (msgid, name, decl)
     const char *msgid;
     tree name, decl;
{
  warning ("declaration of `%s' shadows %s", ((char *)(name)->identifier.id.str), msgid);
  warning_with_file_and_line ((((decl)->decl.locus).file),
         (((decl)->decl.locus).line),
         "shadowed declaration is here");
}






static tree
handle_packed_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags;
     _Bool *no_add_attrs;
{
  tree *type = ((void *)0);
  if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 'd'))
    {
      if (((enum tree_code) (*node)->common.code) == TYPE_DECL)
 type = &((*node)->common.type);
    }
  else
    type = node;

  if (type)
    {
      if (!(flags & (int) ATTR_FLAG_TYPE_IN_PLACE))
 *type = build_type_copy (*type);
      ((*type)->type.packed_flag) = 1;
    }
  else if (((enum tree_code) (*node)->common.code) == FIELD_DECL)
    ((*node)->decl.regdecl_flag) = 1;


  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_nocommon_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == VAR_DECL)
    ((*node)->decl.common_flag) = 0;
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_common_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == VAR_DECL)
    ((*node)->decl.common_flag) = 1;
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_noreturn_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree type = ((*node)->common.type);


  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->common.volatile_flag) = 1;
  else if (((enum tree_code) (type)->common.code) == POINTER_TYPE
    && ((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE)
    ((*node)->common.type)
      = build_pointer_type
 (build_qualified_type ((((type)->common.type)), ((((((type)->common.type))->common.readonly_flag)) ? 0x1 : 0) | ((1) ? 0x2 : 0)));

  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_noinline_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->decl.uninlinable) = 1;
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_always_inline_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    {


    }
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_used_attribute (pnode, name, args, flags, no_add_attrs)
     tree *pnode;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree node = *pnode;

  if (((enum tree_code) (node)->common.code) == FUNCTION_DECL
      || (((enum tree_code) (node)->common.code) == VAR_DECL && ((node)->common.static_flag)))
    ((decl_assembler_name (node))->common.static_flag)
      = ((node)->common.used_flag) = 1;
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_unused_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags;
     _Bool *no_add_attrs;
{
  if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 'd'))
    {
      tree decl = *node;

      if (((enum tree_code) (decl)->common.code) == PARM_DECL
   || ((enum tree_code) (decl)->common.code) == VAR_DECL
   || ((enum tree_code) (decl)->common.code) == FUNCTION_DECL
   || ((enum tree_code) (decl)->common.code) == LABEL_DECL
   || ((enum tree_code) (decl)->common.code) == TYPE_DECL)
 ((decl)->common.used_flag) = 1;
      else
 {
   warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
   *no_add_attrs = 1;
 }
    }
  else
    {
      if (!(flags & (int) ATTR_FLAG_TYPE_IN_PLACE))
 *node = build_type_copy (*node);
      ((*node)->common.used_flag) = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_const_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree type = ((*node)->common.type);


  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->common.readonly_flag) = 1;
  else if (((enum tree_code) (type)->common.code) == POINTER_TYPE
    && ((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE)
    ((*node)->common.type)
      = build_pointer_type
 (build_qualified_type ((((type)->common.type)), ((1) ? 0x1 : 0) | ((((((type)->common.type))->common.volatile_flag)) ? 0x2 : 0)));

  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_transparent_union_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags;
     _Bool *no_add_attrs;
{
  tree decl = (tree) ((void *)0);
  tree *type = ((void *)0);
  int is_type = 0;

  if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 'd'))
    {
      decl = *node;
      type = &((decl)->common.type);
      is_type = ((enum tree_code) (*node)->common.code) == TYPE_DECL;
    }
  else if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 't'))
    type = node, is_type = 1;

  if (is_type
      && ((enum tree_code) (*type)->common.code) == UNION_TYPE
      && (decl == 0
   || (((*type)->type.values) != 0
       && ((*type)->type.mode) == ((((*type)->type.values))->decl.mode))))
    {
      if (!(flags & (int) ATTR_FLAG_TYPE_IN_PLACE))
 *type = build_type_copy (*type);
      ((*type)->type.transparent_union_flag) = 1;
    }
  else if (decl != 0 && ((enum tree_code) (decl)->common.code) == PARM_DECL
    && ((enum tree_code) (*type)->common.code) == UNION_TYPE
    && ((*type)->type.mode) == ((((*type)->type.values))->decl.mode))
    ((decl)->decl.transparent_union) = 1;
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_constructor_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;
  tree type = ((decl)->common.type);

  if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
      && ((enum tree_code) (type)->common.code) == FUNCTION_TYPE
      && decl_function_context (decl) == 0)
    {
      ((decl)->decl.static_ctor_flag) = 1;
      ((decl)->common.used_flag) = 1;
    }
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_destructor_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;
  tree type = ((decl)->common.type);

  if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL
      && ((enum tree_code) (type)->common.code) == FUNCTION_TYPE
      && decl_function_context (decl) == 0)
    {
      ((decl)->decl.static_dtor_flag) = 1;
      ((decl)->common.used_flag) = 1;
    }
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_mode_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree type = *node;

  *no_add_attrs = 1;

  if (((enum tree_code) (((args)->list.value))->common.code) != IDENTIFIER_NODE)
    warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
  else
    {
      int j;
      const char *p = ((char *)(((args)->list.value))->identifier.id.str);
      int len = strlen (p);
      enum machine_mode mode = VOIDmode;
      tree typefm;

      if (len > 4 && p[0] == '_' && p[1] == '_'
   && p[len - 1] == '_' && p[len - 2] == '_')
 {
   char *newp = (char *) __builtin_alloca(len - 1);

   strcpy (newp, &p[2]);
   newp[len - 4] = '\0';
   p = newp;
 }



      if (! strcmp (p, "byte"))
 mode = byte_mode;
      else if (!strcmp (p, "word"))
 mode = word_mode;
      else if (! strcmp (p, "pointer"))
 mode = ptr_mode;
      else
 for (j = 0; j < (int) MAX_MACHINE_MODE; j++)
   if (!strcmp (p, (mode_name[(int) (j)])))
     mode = (enum machine_mode) j;

      if (mode == VOIDmode)
 error ("unknown machine mode `%s'", p);
      else if (0 == (typefm = (*lang_hooks.types.type_for_mode)
       (mode, ((type)->common.unsigned_flag))))
 error ("no data type for mode `%s'", p);
      else
 {


   if (((mode_class[(int) (mode)]) == MODE_VECTOR_INT
        || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT)
       && !vector_mode_valid_p (mode))
     {
       error ("unable to emulate '%s'", (mode_name[(int) (mode)]));
       return (tree) ((void *)0);
     }

   *node = typefm;

 }
    }

  return (tree) ((void *)0);
}




static tree
handle_section_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name __attribute__ ((__unused__));
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if (targetm.have_named_sections)
    {
      if ((((enum tree_code) (decl)->common.code) == FUNCTION_DECL
    || ((enum tree_code) (decl)->common.code) == VAR_DECL)
   && ((enum tree_code) (((args)->list.value))->common.code) == STRING_CST)
 {
   if (((enum tree_code) (decl)->common.code) == VAR_DECL
       && current_function_decl != (tree) ((void *)0)
       && ! ((decl)->common.static_flag))
     {
       error_with_decl (decl,
          "section attribute cannot be specified for local variables");
       *no_add_attrs = 1;
     }



   else if (((decl)->decl.section_name) != (tree) ((void *)0)
     && strcmp (((((decl)->decl.section_name))->string.pointer),
         ((((args)->list.value))->string.pointer)) != 0)
     {
       error_with_decl (*node,
          "section of `%s' conflicts with previous declaration");
       *no_add_attrs = 1;
     }
   else
     ((decl)->decl.section_name) = ((args)->list.value);
 }
      else
 {
   error_with_decl (*node,
      "section attribute not allowed for `%s'");
   *no_add_attrs = 1;
 }
    }
  else
    {
      error_with_decl (*node,
         "section attributes are not supported for this target");
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_aligned_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name __attribute__ ((__unused__));
     tree args;
     int flags;
     _Bool *no_add_attrs;
{
  tree decl = (tree) ((void *)0);
  tree *type = ((void *)0);
  int is_type = 0;
  tree align_expr = (args ? ((args)->list.value)
       : size_int_wide ((long long) ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8), SIZETYPE));
  int i;

  if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 'd'))
    {
      decl = *node;
      type = &((decl)->common.type);
      is_type = ((enum tree_code) (*node)->common.code) == TYPE_DECL;
    }
  else if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 't'))
    type = node, is_type = 1;


  while (((enum tree_code) (align_expr)->common.code) == NOP_EXPR
  || ((enum tree_code) (align_expr)->common.code) == CONVERT_EXPR
  || ((enum tree_code) (align_expr)->common.code) == NON_LVALUE_EXPR)
    align_expr = ((align_expr)->exp.operands[0]);

  if (((enum tree_code) (align_expr)->common.code) != INTEGER_CST)
    {
      error ("requested alignment is not a constant");
      *no_add_attrs = 1;
    }
  else if ((i = tree_log2 (align_expr)) == -1)
    {
      error ("requested alignment is not a power of 2");
      *no_add_attrs = 1;
    }
  else if (i > (8 * 4) - 2)
    {
      error ("requested alignment is too large");
      *no_add_attrs = 1;
    }
  else if (is_type)
    {


      if (decl && ((decl)->common.type) != global_trees[TI_ERROR_MARK]
   && ((decl)->decl.result) == (tree) ((void *)0))
 {
   tree tt = ((decl)->common.type);
   *type = build_type_copy (*type);
   ((decl)->decl.result) = tt;
   ((*type)->type.name) = decl;
   ((*type)->common.used_flag) = ((decl)->common.used_flag);
   ((decl)->common.type) = *type;
 }
      else if (!(flags & (int) ATTR_FLAG_TYPE_IN_PLACE))
 *type = build_type_copy (*type);

      ((*type)->type.align) = (1 << i) * 8;
      ((*type)->type.user_align) = 1;
    }
  else if (((enum tree_code) (decl)->common.code) != VAR_DECL
    && ((enum tree_code) (decl)->common.code) != FIELD_DECL)
    {
      error_with_decl (decl,
         "alignment may not be specified for `%s'");
      *no_add_attrs = 1;
    }
  else
    {
      ((decl)->decl.u1.a.align) = (1 << i) * 8;
      ((decl)->decl.user_align) = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_weak_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name __attribute__ ((__unused__));
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs __attribute__ ((__unused__));
{
  declare_weak (*node);

  return (tree) ((void *)0);
}




static tree
handle_alias_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if ((((enum tree_code) (decl)->common.code) == FUNCTION_DECL && ((decl)->decl.initial))
      || (((enum tree_code) (decl)->common.code) != FUNCTION_DECL && ! ((decl)->decl.external_flag)))
    {
      error_with_decl (decl,
         "`%s' defined both normally and as an alias");
      *no_add_attrs = 1;
    }
  else if (decl_function_context (decl) == 0)
    {
      tree id;

      id = ((args)->list.value);
      if (((enum tree_code) (id)->common.code) != STRING_CST)
 {
   error ("alias arg not a string");
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }
      id = (__builtin_constant_p (((id)->string.pointer)) ? get_identifier_with_length ((((id)->string.pointer)), (unsigned) strlen (((id)->string.pointer))) : (get_identifier) (((id)->string.pointer)));

      ((id)->common.used_flag) = 1;

      if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL)
 ((decl)->decl.initial) = global_trees[TI_ERROR_MARK];
      else
 ((decl)->decl.external_flag) = 0;
    }
  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_visibility_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if (decl_function_context (decl) != 0 || ! ((decl)->common.public_flag))
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else
    {
      tree id;

      id = ((args)->list.value);
      if (((enum tree_code) (id)->common.code) != STRING_CST)
 {
   error ("visibility arg not a string");
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }
      if (strcmp (((id)->string.pointer), "hidden")
   && strcmp (((id)->string.pointer), "protected")
   && strcmp (((id)->string.pointer), "internal")
   && strcmp (((id)->string.pointer), "default"))
 {
   error ("visibility arg must be one of \"default\", \"hidden\", \"protected\" or \"internal\"");
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }
    }

  return (tree) ((void *)0);
}




static tree
handle_tls_model_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if (! ((decl)->decl.thread_local_flag))
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else
    {
      tree id;

      id = ((args)->list.value);
      if (((enum tree_code) (id)->common.code) != STRING_CST)
 {
   error ("tls_model arg not a string");
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }
      if (strcmp (((id)->string.pointer), "local-exec")
   && strcmp (((id)->string.pointer), "initial-exec")
   && strcmp (((id)->string.pointer), "local-dynamic")
   && strcmp (((id)->string.pointer), "global-dynamic"))
 {
   error ("tls_model arg must be one of \"local-exec\", \"initial-exec\", \"local-dynamic\" or \"global-dynamic\"");
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }
    }

  return (tree) ((void *)0);
}




static tree
handle_no_instrument_function_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL)
    {
      error_with_decl (decl,
         "`%s' attribute applies only to functions",
         ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else if (((decl)->decl.initial))
    {
      error_with_decl (decl,
         "can't set `%s' attribute after definition",
         ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else
    ((decl)->decl.no_instrument_function_entry_exit) = 1;

  return (tree) ((void *)0);
}




static tree
handle_malloc_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->decl.malloc_flag) = 1;

  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_no_limit_stack_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;

  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL)
    {
      error_with_decl (decl,
         "`%s' attribute applies only to functions",
         ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else if (((decl)->decl.initial))
    {
      error_with_decl (decl,
         "can't set `%s' attribute after definition",
         ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }
  else
    ((decl)->decl.no_limit_stack) = 1;

  return (tree) ((void *)0);
}




static tree
handle_pure_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->decl.pure_flag) = 1;

  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}




static tree
handle_cleanup_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree decl = *node;
  tree cleanup_id, cleanup_decl;





  if (((enum tree_code) (decl)->common.code) != VAR_DECL || ((decl)->common.static_flag))
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
      return (tree) ((void *)0);
    }




  cleanup_id = ((args)->list.value);
  if (((enum tree_code) (cleanup_id)->common.code) != IDENTIFIER_NODE)
    {
      error ("cleanup arg not an identifier");
      *no_add_attrs = 1;
      return (tree) ((void *)0);
    }
  cleanup_decl = lookup_name (cleanup_id);
  if (!cleanup_decl || ((enum tree_code) (cleanup_decl)->common.code) != FUNCTION_DECL)
    {
      error ("cleanup arg not a function");
      *no_add_attrs = 1;
      return (tree) ((void *)0);
    }




  return (tree) ((void *)0);
}




static tree
handle_deprecated_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags;
     _Bool *no_add_attrs;
{
  tree type = (tree) ((void *)0);
  int warn = 0;
  const char *what = ((void *)0);

  if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 'd'))
    {
      tree decl = *node;
      type = ((decl)->common.type);

      if (((enum tree_code) (decl)->common.code) == TYPE_DECL
   || ((enum tree_code) (decl)->common.code) == PARM_DECL
   || ((enum tree_code) (decl)->common.code) == VAR_DECL
   || ((enum tree_code) (decl)->common.code) == FUNCTION_DECL
   || ((enum tree_code) (decl)->common.code) == FIELD_DECL)
 ((decl)->common.deprecated_flag) = 1;
      else
 warn = 1;
    }
  else if ((tree_code_type[(int) (((enum tree_code) (*node)->common.code))] == 't'))
    {
      if (!(flags & (int) ATTR_FLAG_TYPE_IN_PLACE))
 *node = build_type_copy (*node);
      ((*node)->common.deprecated_flag) = 1;
      type = *node;
    }
  else
    warn = 1;

  if (warn)
    {
      *no_add_attrs = 1;
      if (type && ((type)->type.name))
 {
   if (((enum tree_code) (((type)->type.name))->common.code) == IDENTIFIER_NODE)
     what = ((char *)(((*node)->type.name))->identifier.id.str);
   else if (((enum tree_code) (((type)->type.name))->common.code) == TYPE_DECL
     && ((((type)->type.name))->decl.name))
     what = ((char *)(((((type)->type.name))->decl.name))->identifier.id.str);
 }
      if (what)
 warning ("`%s' attribute ignored for `%s'",
    ((char *)(name)->identifier.id.str), what);
      else
 warning ("`%s' attribute ignored",
        ((char *)(name)->identifier.id.str));
    }

  return (tree) ((void *)0);
}






static tree vector_type_node_list = 0;




static tree
handle_vector_size_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  unsigned long long vecsize, nunits;
  enum machine_mode mode, orig_mode, new_mode;
  tree type = *node, new_type = (tree) ((void *)0);
  tree type_list_node;

  *no_add_attrs = 1;

  if (! host_integerp (((args)->list.value), 1))
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      return (tree) ((void *)0);
    }


  vecsize = tree_low_cst (((args)->list.value), 1);
# 6416 "../../../kg++fe/gnu/c-common.c"
  while ((((enum tree_code) (type)->common.code) == POINTER_TYPE || ((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
  || ((enum tree_code) (type)->common.code) == FUNCTION_TYPE
  || ((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    type = ((type)->common.type);


  orig_mode = ((type)->type.mode);

  if (((enum tree_code) (type)->common.code) == RECORD_TYPE
      || ((mode_class[(int) (orig_mode)]) != MODE_FLOAT
   && (mode_class[(int) (orig_mode)]) != MODE_INT)
      || ! host_integerp (((type)->type.size_unit), 1))
    {
      error ("invalid vector type for attribute `%s'",
      ((char *)(name)->identifier.id.str));
      return (tree) ((void *)0);
    }


  nunits = vecsize / tree_low_cst (((type)->type.size_unit), 1);


  new_mode = VOIDmode;
  for (mode = class_narrowest_mode[(int) ((mode_class[(int) (orig_mode)]) == MODE_INT ? MODE_VECTOR_INT : MODE_VECTOR_FLOAT)];


       mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    if (vecsize == (mode_size[(int) (mode)])
 && nunits == (unsigned long long) (((mode_unit_size[(int) ((mode))]) == 0) ? 0 : ((mode_size[(int) ((mode))]) / (mode_unit_size[(int) ((mode))]))))
      {
 new_mode = mode;
 break;
      }

    if (new_mode == VOIDmode)
    {
      error ("no vector mode with the size and type specified could be found");
      return (tree) ((void *)0);
    }

  for (type_list_node = vector_type_node_list; type_list_node;
       type_list_node = ((type_list_node)->common.chain))
    {
      tree other_type = ((type_list_node)->list.value);
      tree record = ((other_type)->type.values);
      tree fields = ((record)->type.values);
      tree field_type = ((fields)->common.type);
      tree array_type = ((field_type)->common.type);
      if (((enum tree_code) (fields)->common.code) != FIELD_DECL
   || ((enum tree_code) (field_type)->common.code) != ARRAY_TYPE)
 fancy_abort ("../../../kg++fe/gnu/c-common.c", 6467, __FUNCTION__);

      if (((other_type)->type.mode) == mode && type == array_type)
 {
   new_type = other_type;
   break;
 }
    }

  if (new_type == (tree) ((void *)0))
    {
      tree index, array, rt, list_node;

      new_type = (*lang_hooks.types.type_for_mode) (new_mode,
          ((type)->common.unsigned_flag));

      if (!new_type)
 {
   error ("no vector mode with the size and type specified could be found");
   return (tree) ((void *)0);
 }

      new_type = build_type_copy (new_type);



      if (((mode_class[(int) (mode)]) == MODE_VECTOR_INT
    || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT)
   && !vector_mode_valid_p (mode))
 {
   error ("unable to emulate '%s'", (mode_name[(int) (mode)]));
   return (tree) ((void *)0);
 }





      index = build_int_2_wide ((unsigned long long) ((((mode_unit_size[(int) ((new_type->type.mode))]) == 0) ? 0 : ((mode_size[(int) ((new_type->type.mode))]) / (mode_unit_size[(int) ((new_type->type.mode))]))) - 1), (long long) (0));
      array = build_array_type (type, build_index_type (index));
      rt = make_node (RECORD_TYPE);

      ((rt)->type.values) = build_decl (FIELD_DECL, (__builtin_constant_p ("f") ? get_identifier_with_length (("f"), (unsigned) strlen ("f")) : (get_identifier) ("f")), array);
      ((((rt)->type.values))->decl.context) = rt;
      layout_type (rt);
      ((new_type)->type.values) = rt;

      list_node = build_tree_list (((void *)0), new_type);
      ((list_node)->common.chain) = vector_type_node_list;
      vector_type_node_list = list_node;
    }


  *node = vector_size_helper (*node, new_type);

  return (tree) ((void *)0);
}





static tree
handle_syscall_linkage_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  int arg_num;
  tree argument;
  tree decl = *node;
  tree type = ((decl)->common.type);

  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL)
    {
      error_with_decl (decl,
                       "argument format specified for non-function `%s'");
      return (tree) ((void *)0);
    }
  argument = ((type)->type.values);


  for (argument = ((type)->type.values); argument;
       argument = ((argument)->common.chain))
    {
      if ((((enum tree_code) (((argument)->list.value))->common.code) == REAL_TYPE || (((enum tree_code) (((argument)->list.value))->common.code) == COMPLEX_TYPE && ((enum tree_code) (((((argument)->list.value))->common.type))->common.code) == REAL_TYPE)))
        {
          warning ("readonlyargs/syscall_linkage won't work when floating point args");
          continue;
        }
    }
  ((decl)->decl.syscall_linkage_flag) = 1;

  return (tree) ((void *)0);
}




static tree
handle_widenretval_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  int arg_num;
  tree argument;
  tree decl = *node;
  tree type = ((decl)->common.type);

  if (((enum tree_code) (decl)->common.code) != FUNCTION_DECL)
    {
      error_with_decl (decl,
                       "argument format specified for non-function `%s'");
      return (tree) ((void *)0);
    }


  if ((((enum tree_code) (((type)->common.type))->common.code) == VOID_TYPE) ||
      (((enum tree_code) (((type)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == REFERENCE_TYPE))
    {
      return (tree) ((void *)0);
    }


  if (!(((enum tree_code) (((type)->common.type))->common.code) == INTEGER_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == ENUMERAL_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == BOOLEAN_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == CHAR_TYPE))
    {
      warning ("widenretval won't work for non integral returns");
      return (tree) ((void *)0);
    }


  if (!(((((type)->common.type))->type.precision) < ((integer_types[itk_long_long])->type.precision)))
    {
      return (tree) ((void *)0);
    }
  ((decl)->decl.widen_retval_flag) = 1;
}




static tree
handle_sl_model_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{

  tree decl = *node;

  if ((((enum tree_code) (decl)->common.code) == VAR_DECL)
     && ((enum tree_code) (((args)->list.value))->common.code) == STRING_CST)
  {
    ((decl) -> decl.sl_model_name) = ((args)->list.value);
  }
  else
  {
    error_with_decl (*node,
      "sl model attribute not allowed for `%s'");
    *no_add_attrs = 1;
  }

  return (tree) ((void *)0);
}
# 6651 "../../../kg++fe/gnu/c-common.c"
static tree
vector_size_helper (type, bottom)
     tree type, bottom;
{
  tree inner, outer;

  if ((((enum tree_code) (type)->common.code) == POINTER_TYPE || ((enum tree_code) (type)->common.code) == REFERENCE_TYPE))
    {
      inner = vector_size_helper (((type)->common.type), bottom);
      outer = build_pointer_type (inner);
    }
  else if (((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    {
      inner = vector_size_helper (((type)->common.type), bottom);
      outer = build_array_type (inner, ((type)->type.values));
    }
  else if (((enum tree_code) (type)->common.code) == FUNCTION_TYPE)
    {
      inner = vector_size_helper (((type)->common.type), bottom);
      outer = build_function_type (inner, ((type)->type.values));
    }
  else
    return bottom;

  ((outer)->common.readonly_flag) = ((type)->common.readonly_flag);
  ((outer)->common.volatile_flag) = ((type)->common.volatile_flag);

  return outer;
}


static tree
handle_nonnull_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name __attribute__ ((__unused__));
     tree args;
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  tree type = *node;
  unsigned long long attr_arg_num;




  if (! args)
    {
      if (! ((type)->type.values))
 {
   error ("nonnull attribute without arguments on a non-prototype");
          *no_add_attrs = 1;
 }
      return (tree) ((void *)0);
    }



  for (attr_arg_num = 1; args; args = ((args)->common.chain))
    {
      tree argument;
      unsigned long long arg_num, ck_num;

      if (! get_nonnull_operand (((args)->list.value), &arg_num))
 {
   error ("nonnull argument has invalid operand number (arg %lu)",
   (unsigned long) attr_arg_num);
   *no_add_attrs = 1;
   return (tree) ((void *)0);
 }

      argument = ((type)->type.values);
      if (argument)
 {
   for (ck_num = 1; ; ck_num++)
     {
       if (! argument || ck_num == arg_num)
  break;
       argument = ((argument)->common.chain);
     }

          if (! argument
       || ((enum tree_code) (((argument)->list.value))->common.code) == VOID_TYPE)
     {
       error ("nonnull argument with out-of-range operand number (arg %lu, operand %lu)",
       (unsigned long) attr_arg_num, (unsigned long) arg_num);
       *no_add_attrs = 1;
       return (tree) ((void *)0);
     }

          if (((enum tree_code) (((argument)->list.value))->common.code) != POINTER_TYPE)
     {
       error ("nonnull argument references non-pointer operand (arg %lu, operand %lu)",
     (unsigned long) attr_arg_num, (unsigned long) arg_num);
       *no_add_attrs = 1;
       return (tree) ((void *)0);
     }
 }
    }

  return (tree) ((void *)0);
}




static void
check_function_nonnull (attrs, params)
     tree attrs;
     tree params;
{
  tree a, args, param;
  int param_num;

  for (a = attrs; a; a = ((a)->common.chain))
    {
      if (is_attribute_p ("nonnull", ((a)->list.purpose)))
 {
          args = ((a)->list.value);





          for (param = params, param_num = 1; ;
               param_num++, param = ((param)->common.chain))
            {
              if (! param)
         break;
              if (! args || nonnull_check_p (args, param_num))
         check_function_arguments_recurse (check_nonnull_arg, ((void *)0),
               ((param)->list.value),
               param_num);
            }
 }
    }
}





static _Bool
nonnull_check_p (args, param_num)
     tree args;
     unsigned long long param_num;
{
  unsigned long long arg_num;

  for (; args; args = ((args)->common.chain))
    {
      if (! get_nonnull_operand (((args)->list.value), &arg_num))
        fancy_abort ("../../../kg++fe/gnu/c-common.c", 6802, __FUNCTION__);

      if (arg_num == param_num)
 return 1;
    }
  return 0;
}





static void
check_nonnull_arg (ctx, param, param_num)
     void *ctx __attribute__ ((__unused__));
     tree param;
     unsigned long long param_num;
{




  if (((enum tree_code) (((param)->common.type))->common.code) != POINTER_TYPE)
    return;

  if (integer_zerop (param))
    warning ("null argument where non-null required (arg %lu)",
             (unsigned long) param_num);
}




static _Bool
get_nonnull_operand (arg_num_expr, valp)
     tree arg_num_expr;
     unsigned long long *valp;
{


  while (((enum tree_code) (arg_num_expr)->common.code) == NOP_EXPR
  || ((enum tree_code) (arg_num_expr)->common.code) == CONVERT_EXPR
  || ((enum tree_code) (arg_num_expr)->common.code) == NON_LVALUE_EXPR)
    arg_num_expr = ((arg_num_expr)->exp.operands[0]);

  if (((enum tree_code) (arg_num_expr)->common.code) != INTEGER_CST
      || (((arg_num_expr)->int_cst.int_cst).high) != 0)
    return 0;

  *valp = (((arg_num_expr)->int_cst.int_cst).low);
  return 1;
}




static tree
handle_nothrow_attribute (node, name, args, flags, no_add_attrs)
     tree *node;
     tree name;
     tree args __attribute__ ((__unused__));
     int flags __attribute__ ((__unused__));
     _Bool *no_add_attrs;
{
  if (((enum tree_code) (*node)->common.code) == FUNCTION_DECL)
    ((*node)->common.nothrow_flag) = 1;

  else
    {
      warning ("`%s' attribute ignored", ((char *)(name)->identifier.id.str));
      *no_add_attrs = 1;
    }

  return (tree) ((void *)0);
}


void
check_function_arguments (attrs, params)
     tree attrs;
     tree params;
{



  if (warn_nonnull)
    check_function_nonnull (attrs, params);



  if (warn_format)
    check_function_format (((void *)0), attrs, params);
}




void
check_function_arguments_recurse (callback, ctx, param, param_num)
     void (*callback) (void *, tree, unsigned long long);
     void *ctx;
     tree param;
     unsigned long long param_num;
{
  if (((enum tree_code) (param)->common.code) == NOP_EXPR)
    {

      check_function_arguments_recurse (callback, ctx,
            ((param)->exp.operands[0]), param_num);
      return;
    }

  if (((enum tree_code) (param)->common.code) == CALL_EXPR)
    {
      tree type = ((((((param)->exp.operands[0]))->common.type))->common.type);
      tree attrs;
      _Bool found_format_arg = 0;





      for (attrs = ((type)->type.attributes);
    attrs;
    attrs = ((attrs)->common.chain))
 if (is_attribute_p ("format_arg", ((attrs)->list.purpose)))
   {
     tree inner_args;
     tree format_num_expr;
     int format_num;
     int i;



     format_num_expr = ((((attrs)->list.value))->list.value);
     while (((enum tree_code) (format_num_expr)->common.code) == NOP_EXPR
     || ((enum tree_code) (format_num_expr)->common.code) == CONVERT_EXPR
     || ((enum tree_code) (format_num_expr)->common.code) == NON_LVALUE_EXPR)
       format_num_expr = ((format_num_expr)->exp.operands[0]);

     if (((enum tree_code) (format_num_expr)->common.code) != INTEGER_CST
  || (((format_num_expr)->int_cst.int_cst).high) != 0)
       fancy_abort ("../../../kg++fe/gnu/c-common.c", 6944, __FUNCTION__);

     format_num = (((format_num_expr)->int_cst.int_cst).low);

     for (inner_args = ((param)->exp.operands[1]), i = 1;
   inner_args != 0;
   inner_args = ((inner_args)->common.chain), i++)
       if (i == format_num)
  {
    check_function_arguments_recurse (callback, ctx,
          ((inner_args)->list.value),
          param_num);
    found_format_arg = 1;
    break;
  }
   }




      if (found_format_arg)
 return;
    }

  if (((enum tree_code) (param)->common.code) == COND_EXPR)
    {

      check_function_arguments_recurse (callback, ctx,
            ((param)->exp.operands[1]), param_num);
      check_function_arguments_recurse (callback, ctx,
            ((param)->exp.operands[2]), param_num);
      return;
    }

  (*callback) (ctx, param, param_num);
}

# 1 "../../../kg++fe/gnu/MIPS/gt-c-common.h" 1
# 25 "../../../kg++fe/gnu/MIPS/gt-c-common.h"
const struct ggc_root_tab gt_ggc_r_gt_c_common_h[] = {
  {
    &vector_type_node_list,
    1,
    sizeof (vector_type_node_list),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &built_in_attributes[0],
    1 * ((int) ATTR_LAST),
    sizeof (built_in_attributes[0]),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &c_global_trees[0],
    1 * (CTI_MAX),
    sizeof (c_global_trees[0]),
    &gt_ggc_mx_lang_tree_node

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 6981 "../../../kg++fe/gnu/c-common.c" 2
