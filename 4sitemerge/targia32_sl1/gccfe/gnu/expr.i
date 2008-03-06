# 1 "../../../kgccfe/gnu/expr.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kgccfe/gnu/expr.c"
# 28 "../../../kgccfe/gnu/expr.c"
# 1 "../../../kgccfe/gnu/MIPS/config.h" 1




# 1 "../../../kgccfe/gnu/MIPS/auto-host.h" 1
# 6 "../../../kgccfe/gnu/MIPS/config.h" 2





struct rtx_def;
typedef struct rtx_def *rtx;
struct rtvec_def;
typedef struct rtvec_def *rtvec;
union tree_node;
typedef union tree_node *tree;



# 1 "../../../include/gnu/ansidecl.h" 1
# 21 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/config/dbxelf.h" 1
# 22 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/config/elfos.h" 1
# 23 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/config/svr4.h" 1
# 24 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/MIPS/linux.h" 1
# 25 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/MIPS/mips.h" 1
# 29 "../../../kgccfe/gnu/MIPS/mips.h"
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
# 108 "../../../kgccfe/gnu/MIPS/mips.h"
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
# 970 "../../../kgccfe/gnu/MIPS/mips.h"
extern int mips_abi;
# 1912 "../../../kgccfe/gnu/MIPS/mips.h"
extern char mips_hard_regno_mode_ok[][176];
# 2027 "../../../kgccfe/gnu/MIPS/mips.h"
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
# 2141 "../../../kgccfe/gnu/MIPS/mips.h"
extern const enum reg_class mips_regno_to_class[];
# 2224 "../../../kgccfe/gnu/MIPS/mips.h"
extern enum reg_class mips_char_to_class[256];
# 2730 "../../../kgccfe/gnu/MIPS/mips.h"
typedef struct mips_args {


  int gp_reg_found;


  unsigned int arg_number;




  unsigned int num_gprs;


  unsigned int num_fprs;


  unsigned int stack_words;
# 2760 "../../../kgccfe/gnu/MIPS/mips.h"
  int fp_code;


  int prototype;







  unsigned int num_adjusts;
  rtx adjust[8];
} CUMULATIVE_ARGS;
# 26 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/MIPS/linux.h" 1
# 27 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/defaults.h" 1
# 28 "../../../kgccfe/gnu/MIPS/config.h" 2





# 1 "../../../kgccfe/gnu/MIPS/insn-constants.h" 1
# 34 "../../../kgccfe/gnu/MIPS/config.h" 2
# 1 "../../../kgccfe/gnu/MIPS/insn-flags.h" 1
# 421 "../../../kgccfe/gnu/MIPS/insn-flags.h"
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
# 710 "../../../kgccfe/gnu/MIPS/insn-flags.h"
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
# 35 "../../../kgccfe/gnu/MIPS/config.h" 2
# 29 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/system.h" 1
# 34 "../../../kgccfe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 1 3 4
# 43 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 105 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 35 "../../../kgccfe/gnu/system.h" 2
# 48 "../../../kgccfe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 1 3 4
# 152 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 214 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef unsigned int size_t;
# 326 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stddef.h" 3 4
typedef int wchar_t;
# 49 "../../../kgccfe/gnu/system.h" 2


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

# 52 "../../../kgccfe/gnu/system.h" 2
# 111 "../../../kgccfe/gnu/system.h"
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
# 112 "../../../kgccfe/gnu/system.h" 2

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



# 114 "../../../kgccfe/gnu/system.h" 2

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
# 116 "../../../kgccfe/gnu/system.h" 2






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

# 123 "../../../kgccfe/gnu/system.h" 2
# 1 "/usr/include/strings.h" 1 3 4
# 124 "../../../kgccfe/gnu/system.h" 2
# 135 "../../../kgccfe/gnu/system.h"
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

# 136 "../../../kgccfe/gnu/system.h" 2
# 158 "../../../kgccfe/gnu/system.h"
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

# 159 "../../../kgccfe/gnu/system.h" 2



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
# 163 "../../../kgccfe/gnu/system.h" 2





# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/limits.h" 1 3 4
# 169 "../../../kgccfe/gnu/system.h" 2



# 1 "../../../kgccfe/gnu/hwint.h" 1
# 173 "../../../kgccfe/gnu/system.h" 2
# 201 "../../../kgccfe/gnu/system.h"
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

# 202 "../../../kgccfe/gnu/system.h" 2
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



# 203 "../../../kgccfe/gnu/system.h" 2
# 214 "../../../kgccfe/gnu/system.h"
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




# 215 "../../../kgccfe/gnu/system.h" 2
# 252 "../../../kgccfe/gnu/system.h"
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




# 253 "../../../kgccfe/gnu/system.h" 2
# 303 "../../../kgccfe/gnu/system.h"
extern int getopt (int, char * const *, const char *);
# 319 "../../../kgccfe/gnu/system.h"
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



# 320 "../../../kgccfe/gnu/system.h" 2
# 499 "../../../kgccfe/gnu/system.h"
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
# 500 "../../../kgccfe/gnu/system.h" 2
# 1 "../../../include/gnu/symcat.h" 1
# 501 "../../../kgccfe/gnu/system.h" 2
# 556 "../../../kgccfe/gnu/system.h"
# 1 "/usr/lib/gcc/i486-linux-gnu/4.1.2/include/stdbool.h" 1 3 4
# 557 "../../../kgccfe/gnu/system.h" 2
# 623 "../../../kgccfe/gnu/system.h"
        
# 642 "../../../kgccfe/gnu/system.h"
        
# 660 "../../../kgccfe/gnu/system.h"
        
# 675 "../../../kgccfe/gnu/system.h"
        
# 30 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/machmode.h" 1
# 29 "../../../kgccfe/gnu/machmode.h"
enum machine_mode {
# 1 "../../../kgccfe/gnu/machmode.def" 1
# 74 "../../../kgccfe/gnu/machmode.def"
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
# 158 "../../../kgccfe/gnu/machmode.def"
CCmode,
# 31 "../../../kgccfe/gnu/machmode.h" 2
MAX_MACHINE_MODE };
# 41 "../../../kgccfe/gnu/machmode.h"
extern const char * const mode_name[(int) MAX_MACHINE_MODE];


enum mode_class { MODE_RANDOM, MODE_INT, MODE_FLOAT, MODE_PARTIAL_INT, MODE_CC,
    MODE_COMPLEX_INT, MODE_COMPLEX_FLOAT,
    MODE_VECTOR_INT, MODE_VECTOR_FLOAT,
    MAX_MODE_CLASS};




extern const enum mode_class mode_class[(int) MAX_MACHINE_MODE];
# 89 "../../../kgccfe/gnu/machmode.h"
extern const unsigned char mode_size[(int) MAX_MACHINE_MODE];




extern const unsigned char mode_unit_size[(int) MAX_MACHINE_MODE];
# 105 "../../../kgccfe/gnu/machmode.h"
extern const unsigned short mode_bitsize[(int) MAX_MACHINE_MODE];
# 115 "../../../kgccfe/gnu/machmode.h"
extern const unsigned long long mode_mask_array[(int) MAX_MACHINE_MODE];



extern const enum machine_mode inner_mode_array[(int) MAX_MACHINE_MODE];
# 132 "../../../kgccfe/gnu/machmode.h"
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
# 31 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/real.h" 1
# 31 "../../../kgccfe/gnu/real.h"
# 1 "../../../kgccfe/gnu/machmode.h" 1
# 32 "../../../kgccfe/gnu/real.h" 2




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
# 77 "../../../kgccfe/gnu/real.h"
extern char test_real_width
  [sizeof(struct real_value) <= (((128 + (8 * 4)) + 32)/(8 * 8) + (((128 + (8 * 4)) + 32)%(8 * 8) ? 1 : 0))*sizeof(long long) ? 1 : -1];
# 115 "../../../kgccfe/gnu/real.h"
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
# 289 "../../../kgccfe/gnu/real.h"
extern struct real_value real_value_truncate (enum machine_mode, struct real_value);





extern struct real_value real_arithmetic2 (int, const struct real_value *, const struct real_value *);
# 304 "../../../kgccfe/gnu/real.h"
extern int significand_size (enum machine_mode);

extern struct real_value real_from_string2 (const char *, enum machine_mode);
# 325 "../../../kgccfe/gnu/real.h"
extern int real_exponent (const struct real_value *);


extern void real_ldexp (struct real_value *, const struct real_value *, int);






extern struct real_value dconst0;
extern struct real_value dconst1;
extern struct real_value dconst2;
extern struct real_value dconstm1;



struct real_value real_value_from_int_cst (union tree_node *, union tree_node *);
# 352 "../../../kgccfe/gnu/real.h"
extern rtx const_double_from_real_value (struct real_value, enum machine_mode);



extern _Bool exact_real_inverse (enum machine_mode, struct real_value *);


extern tree build_real (tree, struct real_value);
# 32 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/rtl.h" 1
# 31 "../../../kgccfe/gnu/rtl.h"
struct function;

# 1 "../../../kgccfe/gnu/machmode.h" 1
# 34 "../../../kgccfe/gnu/rtl.h" 2
# 47 "../../../kgccfe/gnu/rtl.h"
enum rtx_code {


# 1 "../../../kgccfe/gnu/rtl.def" 1
# 70 "../../../kgccfe/gnu/rtl.def"
UNKNOWN ,



NIL ,




INCLUDE ,






EXPR_LIST ,



INSN_LIST ,
# 129 "../../../kgccfe/gnu/rtl.def"
MATCH_OPERAND ,






MATCH_SCRATCH ,




MATCH_DUP ,







MATCH_OPERATOR ,
# 158 "../../../kgccfe/gnu/rtl.def"
MATCH_PARALLEL ,




MATCH_OP_DUP ,




MATCH_PAR_DUP ,




MATCH_INSN ,
# 192 "../../../kgccfe/gnu/rtl.def"
DEFINE_INSN ,







DEFINE_PEEPHOLE ,
# 211 "../../../kgccfe/gnu/rtl.def"
DEFINE_SPLIT ,
# 239 "../../../kgccfe/gnu/rtl.def"
DEFINE_INSN_AND_SPLIT ,



DEFINE_PEEPHOLE2 ,



DEFINE_COMBINE ,
# 260 "../../../kgccfe/gnu/rtl.def"
DEFINE_EXPAND ,
# 276 "../../../kgccfe/gnu/rtl.def"
DEFINE_DELAY ,
# 317 "../../../kgccfe/gnu/rtl.def"
DEFINE_FUNCTION_UNIT ,


DEFINE_ASM_ATTRIBUTES ,
# 333 "../../../kgccfe/gnu/rtl.def"
DEFINE_COND_EXEC ,





SEQUENCE ,


ADDRESS ,
# 358 "../../../kgccfe/gnu/rtl.def"
DEFINE_CPU_UNIT ,





DEFINE_QUERY_CPU_UNIT ,
# 374 "../../../kgccfe/gnu/rtl.def"
EXCLUSION_SET ,
# 383 "../../../kgccfe/gnu/rtl.def"
PRESENCE_SET ,
# 393 "../../../kgccfe/gnu/rtl.def"
ABSENCE_SET ,
# 404 "../../../kgccfe/gnu/rtl.def"
DEFINE_BYPASS ,
# 413 "../../../kgccfe/gnu/rtl.def"
DEFINE_AUTOMATON ,
# 433 "../../../kgccfe/gnu/rtl.def"
AUTOMATA_OPTION ,
# 442 "../../../kgccfe/gnu/rtl.def"
DEFINE_RESERVATION ,
# 490 "../../../kgccfe/gnu/rtl.def"
DEFINE_INSN_RESERVATION ,
# 501 "../../../kgccfe/gnu/rtl.def"
DEFINE_ATTR ,


ATTR ,







SET_ATTR ,
# 527 "../../../kgccfe/gnu/rtl.def"
SET_ATTR_ALTERNATIVE ,




EQ_ATTR ,
# 542 "../../../kgccfe/gnu/rtl.def"
ATTR_FLAG ,
# 555 "../../../kgccfe/gnu/rtl.def"
INSN ,



JUMP_INSN ,






CALL_INSN ,


BARRIER ,







CODE_LABEL ,
# 586 "../../../kgccfe/gnu/rtl.def"
NOTE ,
# 599 "../../../kgccfe/gnu/rtl.def"
COND_EXEC ,


PARALLEL ,







ASM_INPUT ,
# 624 "../../../kgccfe/gnu/rtl.def"
ASM_OPERANDS ,
# 635 "../../../kgccfe/gnu/rtl.def"
UNSPEC ,


UNSPEC_VOLATILE ,



ADDR_VEC ,
# 667 "../../../kgccfe/gnu/rtl.def"
ADDR_DIFF_VEC ,
# 678 "../../../kgccfe/gnu/rtl.def"
PREFETCH ,
# 690 "../../../kgccfe/gnu/rtl.def"
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
# 761 "../../../kgccfe/gnu/rtl.def"
REG ,






SCRATCH ,
# 778 "../../../kgccfe/gnu/rtl.def"
SUBREG ,
# 791 "../../../kgccfe/gnu/rtl.def"
STRICT_LOW_PART ,





CONCAT ,




MEM ,





LABEL_REF ,





SYMBOL_REF ,






CC0 ,
# 830 "../../../kgccfe/gnu/rtl.def"
ADDRESSOF ,
# 848 "../../../kgccfe/gnu/rtl.def"
QUEUED ,
# 860 "../../../kgccfe/gnu/rtl.def"
IF_THEN_ELSE ,
# 869 "../../../kgccfe/gnu/rtl.def"
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
# 928 "../../../kgccfe/gnu/rtl.def"
PRE_DEC ,
PRE_INC ,
POST_DEC ,
POST_INC ,
# 945 "../../../kgccfe/gnu/rtl.def"
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
# 1029 "../../../kgccfe/gnu/rtl.def"
SIGN_EXTRACT ,


ZERO_EXTRACT ,




HIGH ,



LO_SUM ,
# 1054 "../../../kgccfe/gnu/rtl.def"
RANGE_INFO ,
# 1069 "../../../kgccfe/gnu/rtl.def"
RANGE_REG ,





RANGE_VAR ,



RANGE_LIVE ,




CONSTANT_P_RTX ,
# 1105 "../../../kgccfe/gnu/rtl.def"
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
# 1161 "../../../kgccfe/gnu/rtl.def"
PHI ,
# 51 "../../../kgccfe/gnu/rtl.h" 2


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
# 103 "../../../kgccfe/gnu/rtl.h"
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
# 168 "../../../kgccfe/gnu/rtl.h"
  unsigned int volatil : 1;
# 186 "../../../kgccfe/gnu/rtl.h"
  unsigned int in_struct : 1;






  unsigned int used : 1;




  unsigned integrated : 1;
# 207 "../../../kgccfe/gnu/rtl.h"
  unsigned frame_related : 1;




  rtunion fld[1];

};
# 247 "../../../kgccfe/gnu/rtl.h"
struct rtvec_def {
  int num_elem;
  rtx elem[1];
};
# 610 "../../../kgccfe/gnu/rtl.h"
enum reg_note
{



  REG_DEAD = 1,


  REG_INC,
# 629 "../../../kgccfe/gnu/rtl.h"
  REG_EQUIV,




  REG_EQUAL,





  REG_WAS_0,





  REG_RETVAL,




  REG_LIBCALL,






  REG_NONNEG,



  REG_NO_CONFLICT,


  REG_UNUSED,
# 674 "../../../kgccfe/gnu/rtl.h"
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
# 761 "../../../kgccfe/gnu/rtl.h"
extern const char * const reg_note_name[];
# 821 "../../../kgccfe/gnu/rtl.h"
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
# 911 "../../../kgccfe/gnu/rtl.h"
enum label_kind
{
  LABEL_NORMAL = 0,
  LABEL_STATIC_ENTRY,
  LABEL_GLOBAL_ENTRY,
  LABEL_WEAK_ENTRY
};
# 1038 "../../../kgccfe/gnu/rtl.h"
extern unsigned int subreg_lsb (rtx);
extern unsigned int subreg_regno_offset (unsigned int, enum machine_mode, unsigned int, enum machine_mode);



extern _Bool subreg_offset_representable_p (unsigned int, enum machine_mode, unsigned int, enum machine_mode);



extern unsigned int subreg_regno (rtx);
# 1345 "../../../kgccfe/gnu/rtl.h"
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
# 1591 "../../../kgccfe/gnu/rtl.h"
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
# 1731 "../../../kgccfe/gnu/rtl.h"
enum global_rtl_index
{
  GR_PC,
  GR_CC0,
  GR_STACK_POINTER,
  GR_FRAME_POINTER,
# 1746 "../../../kgccfe/gnu/rtl.h"
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
# 1779 "../../../kgccfe/gnu/rtl.h"
extern rtx pic_offset_table_rtx;
extern rtx struct_value_rtx;
extern rtx struct_value_incoming_rtx;
extern rtx static_chain_rtx;
extern rtx static_chain_incoming_rtx;
extern rtx return_address_pointer_rtx;




# 1 "../../../kgccfe/gnu/MIPS/genrtl.h" 1





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
# 1790 "../../../kgccfe/gnu/rtl.h" 2







extern rtx gen_rtx_CONST_INT (enum machine_mode, long long);
extern rtx gen_rtx_CONST_VECTOR (enum machine_mode, rtvec);
extern rtx gen_raw_REG (enum machine_mode, int);
extern rtx gen_rtx_REG (enum machine_mode, unsigned);
extern rtx gen_rtx_SUBREG (enum machine_mode, rtx, int);
extern rtx gen_rtx_MEM (enum machine_mode, rtx);

extern rtx gen_lowpart_SUBREG (enum machine_mode, rtx);
# 1874 "../../../kgccfe/gnu/rtl.h"
extern rtx find_next_ref (rtx, rtx);

extern rtx output_constant_def (tree, int);
# 1886 "../../../kgccfe/gnu/rtl.h"
extern int flow2_completed;




extern int reload_completed;




extern int reload_in_progress;







extern int cse_not_expected;



extern int no_new_pseudos;





extern int rtx_to_tree_code (enum rtx_code);


struct obstack;
extern void gcc_obstack_init (struct obstack *);


struct cse_basic_block_data;
# 1932 "../../../kgccfe/gnu/rtl.h"
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
# 33 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/tree.h" 1
# 31 "../../../kgccfe/gnu/tree.h"
# 1 "../../../kgccfe/gnu/machmode.h" 1
# 32 "../../../kgccfe/gnu/tree.h" 2
# 1 "../../../kgccfe/gnu/version.h" 1
# 26 "../../../kgccfe/gnu/version.h"
extern const char version_string[];
extern const char bug_report_url[];
extern const char *const cset_rev;
extern const char *const cset_key;
extern const char *const build_root;
extern const char *const build_host;
extern const char *const build_user;
extern const char *const build_date;
# 33 "../../../kgccfe/gnu/tree.h" 2
# 1 "../../../kgccfe/gnu/location.h" 1
# 27 "../../../kgccfe/gnu/location.h"
struct location_s
{

  const char *file;


  int line;
};
typedef struct location_s location_t;
# 34 "../../../kgccfe/gnu/tree.h" 2





enum tree_code {
# 1 "../../../kgccfe/gnu/tree.def" 1
# 52 "../../../kgccfe/gnu/tree.def"
ERROR_MARK,





IDENTIFIER_NODE,





OP_IDENTIFIER,







TREE_LIST,


TREE_VEC,
# 97 "../../../kgccfe/gnu/tree.def"
BLOCK,
# 142 "../../../kgccfe/gnu/tree.def"
VOID_TYPE,
# 152 "../../../kgccfe/gnu/tree.def"
INTEGER_TYPE,



REAL_TYPE,



COMPLEX_TYPE,



VECTOR_TYPE,
# 177 "../../../kgccfe/gnu/tree.def"
ENUMERAL_TYPE,



BOOLEAN_TYPE,



CHAR_TYPE,



POINTER_TYPE,





OFFSET_TYPE,



REFERENCE_TYPE,






METHOD_TYPE,


FILE_TYPE,
# 220 "../../../kgccfe/gnu/tree.def"
ARRAY_TYPE,





SET_TYPE,
# 236 "../../../kgccfe/gnu/tree.def"
RECORD_TYPE,





UNION_TYPE,





QUAL_UNION_TYPE,







FUNCTION_TYPE,





LANG_TYPE,
# 273 "../../../kgccfe/gnu/tree.def"
INTEGER_CST,


REAL_CST,




COMPLEX_CST,


VECTOR_CST,




STRING_CST,
# 351 "../../../kgccfe/gnu/tree.def"
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
# 378 "../../../kgccfe/gnu/tree.def"
BIT_FIELD_REF,


INDIRECT_REF,


BUFFER_REF,



ARRAY_REF,




ARRAY_RANGE_REF,






VTABLE_REF,
# 424 "../../../kgccfe/gnu/tree.def"
CONSTRUCTOR,
# 434 "../../../kgccfe/gnu/tree.def"
COMPOUND_EXPR,


MODIFY_EXPR,



INIT_EXPR,






TARGET_EXPR,
# 458 "../../../kgccfe/gnu/tree.def"
COND_EXPR,
# 481 "../../../kgccfe/gnu/tree.def"
BIND_EXPR,




CALL_EXPR,




METHOD_CALL_EXPR,
# 505 "../../../kgccfe/gnu/tree.def"
WITH_CLEANUP_EXPR,
# 522 "../../../kgccfe/gnu/tree.def"
CLEANUP_POINT_EXPR,
# 571 "../../../kgccfe/gnu/tree.def"
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
# 649 "../../../kgccfe/gnu/tree.def"
LSHIFT_EXPR,
RSHIFT_EXPR,
LROTATE_EXPR,
RROTATE_EXPR,


BIT_IOR_EXPR,
BIT_XOR_EXPR,
BIT_AND_EXPR,
BIT_ANDTC_EXPR,
BIT_NOT_EXPR,
# 670 "../../../kgccfe/gnu/tree.def"
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
# 728 "../../../kgccfe/gnu/tree.def"
VIEW_CONVERT_EXPR,





SAVE_EXPR,
# 743 "../../../kgccfe/gnu/tree.def"
UNSAVE_EXPR,
# 752 "../../../kgccfe/gnu/tree.def"
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
# 811 "../../../kgccfe/gnu/tree.def"
TRY_FINALLY_EXPR,






GOTO_SUBROUTINE_EXPR,






POPDHC_EXPR,




POPDCC_EXPR,
# 840 "../../../kgccfe/gnu/tree.def"
LABEL_EXPR,



GOTO_EXPR,






RETURN_EXPR,



EXIT_EXPR,




LOOP_EXPR,




LABELED_BLOCK_EXPR,




EXIT_BLOCK_EXPR,
# 879 "../../../kgccfe/gnu/tree.def"
EXPR_WITH_FILE_LOCATION,





SWITCH_EXPR,


EXC_PTR_EXPR,
# 41 "../../../kgccfe/gnu/tree.h" 2

  LAST_AND_UNUSED_TREE_CODE

};




typedef unsigned int LABEL_IDX;
struct mongoose_gcc_DST_IDX {unsigned int block; unsigned int offset; };



typedef struct st ST;
# 69 "../../../kgccfe/gnu/tree.h"
extern const char tree_code_type[];
# 80 "../../../kgccfe/gnu/tree.h"
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
# 1 "../../../kgccfe/gnu/builtins.def" 1
# 155 "../../../kgccfe/gnu/builtins.def"
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





BUILT_IN_FLOOR,







BUILT_IN_FLOORF,







BUILT_IN_FLOORL,







BUILT_IN_POW,







BUILT_IN_TAN,
# 388 "../../../kgccfe/gnu/builtins.def"
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
# 1146 "../../../kgccfe/gnu/builtins.def"
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
# 1355 "../../../kgccfe/gnu/builtins.def"
BUILT_IN_TRAP,



BUILT_IN_PREFETCH,







BUILT_IN_PRINTF,
# 1377 "../../../kgccfe/gnu/builtins.def"
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
# 1430 "../../../kgccfe/gnu/builtins.def"
BUILT_IN_FPUTC,



BUILT_IN_FPUTS,





BUILT_IN_FWRITE,




BUILT_IN_FPRINTF,
# 1458 "../../../kgccfe/gnu/builtins.def"
BUILT_IN_PUTCHAR_UNLOCKED,


BUILT_IN_PUTS_UNLOCKED,


BUILT_IN_PRINTF_UNLOCKED,
# 1476 "../../../kgccfe/gnu/builtins.def"
BUILT_IN_FPUTC_UNLOCKED,


BUILT_IN_FPUTS_UNLOCKED,





BUILT_IN_FWRITE_UNLOCKED,
# 1496 "../../../kgccfe/gnu/builtins.def"
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
# 107 "../../../kgccfe/gnu/tree.h" 2


  END_BUILTINS
};



extern const char *const built_in_names[(int) END_BUILTINS];


extern tree built_in_decls[(int) END_BUILTINS];
# 141 "../../../kgccfe/gnu/tree.h"
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
  unsigned unused_0 : 1;

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
  unsigned unused_1 : 1;

  unsigned sbuf : 1;
  unsigned sdram : 1;
  unsigned v1buf : 1;
  unsigned v2buf : 1;
  unsigned v4buf : 1;

};
# 374 "../../../kgccfe/gnu/tree.h"
# 1 "../../../kgccfe/gnu/MIPS/tree-check.h" 1
# 375 "../../../kgccfe/gnu/tree.h" 2
# 750 "../../../kgccfe/gnu/tree.h"
struct tree_int_cst
{
  struct tree_common common;
  rtx rtl;




  struct tree_int_cst_lowhi {
    unsigned long long low;
    long long high;
  } int_cst;
};
# 773 "../../../kgccfe/gnu/tree.h"
struct real_value;




struct tree_real_cst
{
  struct tree_common common;
  rtx rtl;
  struct real_value * real_cst_ptr;
};
# 798 "../../../kgccfe/gnu/tree.h"
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
# 831 "../../../kgccfe/gnu/tree.h"
struct tree_vector
{
  struct tree_common common;
  rtx rtl;
  tree elements;
};

# 1 "../../../kgccfe/gnu/hashtable.h" 1
# 21 "../../../kgccfe/gnu/hashtable.h"
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
# 22 "../../../kgccfe/gnu/hashtable.h" 2



typedef struct ht_identifier ht_identifier;
struct ht_identifier
{
  const unsigned char *str;
  unsigned int len;
  unsigned int hash_value;
};
# 40 "../../../kgccfe/gnu/hashtable.h"
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
# 839 "../../../kgccfe/gnu/tree.h" 2
# 862 "../../../kgccfe/gnu/tree.h"
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
# 886 "../../../kgccfe/gnu/tree.h"
struct tree_vec
{
  struct tree_common common;
  int length;
  tree a[1];
};
# 956 "../../../kgccfe/gnu/tree.h"
struct tree_exp
{
  struct tree_common common;
  int complexity;
  tree

    operands[1];
};
# 1010 "../../../kgccfe/gnu/tree.h"
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
# 1340 "../../../kgccfe/gnu/tree.h"
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


  unsigned defer_expansion : 1;


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

};
# 1949 "../../../kgccfe/gnu/tree.h"
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

  unsigned noinline_attrib : 1;


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


  unsigned promote_static : 1;
  unsigned always_inline_attrib : 1;


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
  union {
    ST *st2;
  } sgi_u2;
  struct mongoose_gcc_DST_IDX decl_dst_id;



tree sl_model_name;


};


# 1 "../../../kgccfe/omp_types.h" 1
# 29 "../../../kgccfe/omp_types.h"
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
# 2097 "../../../kgccfe/gnu/tree.h" 2
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
# 2313 "../../../kgccfe/gnu/tree.h"
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
# 2349 "../../../kgccfe/gnu/tree.h"
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
# 2389 "../../../kgccfe/gnu/tree.h"
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
# 2441 "../../../kgccfe/gnu/tree.h"
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
# 2562 "../../../kgccfe/gnu/tree.h"
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
# 2634 "../../../kgccfe/gnu/tree.h"
extern tree get_qualified_type (tree, int);




extern tree build_qualified_type (tree, int);
# 2653 "../../../kgccfe/gnu/tree.h"
extern tree build_type_copy (tree);





extern void layout_type (tree);
# 2668 "../../../kgccfe/gnu/tree.h"
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
# 2729 "../../../kgccfe/gnu/tree.h"
extern void layout_decl (tree, unsigned);






extern enum machine_mode mode_for_size_tree (tree, enum mode_class, int);




extern tree non_lvalue (tree);
extern tree pedantic_non_lvalue (tree);

extern tree convert (tree, tree);

extern tree convert_floor_to_floorf (tree);

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
# 2778 "../../../kgccfe/gnu/tree.h"
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
# 2805 "../../../kgccfe/gnu/tree.h"
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
# 3112 "../../../kgccfe/gnu/tree.h"
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
# 3271 "../../../kgccfe/gnu/tree.h"
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
# 3304 "../../../kgccfe/gnu/tree.h"
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
# 3408 "../../../kgccfe/gnu/tree.h"
extern void fancy_abort (const char *, int, const char *)
    __attribute__ ((__noreturn__));
# 34 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/flags.h" 1
# 32 "../../../kgccfe/gnu/flags.h"
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
# 447 "../../../kgccfe/gnu/flags.h"
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



extern int flag_unwind_tables;



extern int flag_asynchronous_unwind_tables;




extern int flag_no_common;





extern int flag_inhibit_size_directive;




extern int flag_function_sections;



extern int flag_data_sections;
# 531 "../../../kgccfe/gnu/flags.h"
extern int flag_verbose_asm;
# 540 "../../../kgccfe/gnu/flags.h"
extern int flag_debug_asm;

extern int flag_dump_rtl_in_asm;



extern int flag_gnu_linker;







extern int flag_bad_asm_constraint_kills_stmt;




extern int flag_pack_struct;
# 568 "../../../kgccfe/gnu/flags.h"
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
# 35 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/regs.h" 1
# 23 "../../../kgccfe/gnu/regs.h"
# 1 "../../../kgccfe/gnu/varray.h" 1
# 36 "../../../kgccfe/gnu/varray.h"
struct const_equiv_data {
# 50 "../../../kgccfe/gnu/varray.h"
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
# 211 "../../../kgccfe/gnu/varray.h"
extern varray_type varray_grow (varray_type, size_t);
# 222 "../../../kgccfe/gnu/varray.h"
extern void varray_clear (varray_type);
# 24 "../../../kgccfe/gnu/regs.h" 2
# 1 "../../../kgccfe/gnu/hard-reg-set.h" 1
# 41 "../../../kgccfe/gnu/hard-reg-set.h"
typedef unsigned long long HARD_REG_ELT_TYPE;
# 52 "../../../kgccfe/gnu/hard-reg-set.h"
typedef HARD_REG_ELT_TYPE HARD_REG_SET[((176 + (8 * 8) - 1) / (8 * 8))];
# 395 "../../../kgccfe/gnu/hard-reg-set.h"
extern char fixed_regs[176];



extern HARD_REG_SET fixed_reg_set;






extern char call_used_regs[176];


extern char call_really_used_regs[];




extern HARD_REG_SET call_used_reg_set;


extern HARD_REG_SET losing_caller_save_reg_set;







extern char call_fixed_regs[176];



extern HARD_REG_SET call_fixed_reg_set;






extern char global_regs[176];
# 445 "../../../kgccfe/gnu/hard-reg-set.h"
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
# 25 "../../../kgccfe/gnu/regs.h" 2
# 1 "../../../kgccfe/gnu/basic-block.h" 1
# 25 "../../../kgccfe/gnu/basic-block.h"
# 1 "../../../kgccfe/gnu/bitmap.h" 1
# 29 "../../../kgccfe/gnu/bitmap.h"
typedef unsigned long BITMAP_WORD;
# 51 "../../../kgccfe/gnu/bitmap.h"
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
# 26 "../../../kgccfe/gnu/basic-block.h" 2
# 1 "../../../kgccfe/gnu/sbitmap.h" 1
# 31 "../../../kgccfe/gnu/sbitmap.h"
typedef struct simple_bitmap_def
{
  unsigned int n_bits;
  unsigned int size;
  unsigned int bytes;
  unsigned long long elms[1];
} *sbitmap;

typedef unsigned long long *sbitmap_ptr;
# 119 "../../../kgccfe/gnu/sbitmap.h"
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
# 27 "../../../kgccfe/gnu/basic-block.h" 2

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
# 29 "../../../kgccfe/gnu/basic-block.h" 2



typedef bitmap_head regset_head;

typedef bitmap regset;
# 75 "../../../kgccfe/gnu/basic-block.h"
extern void reg_set_to_hard_reg_set (HARD_REG_SET *, bitmap);
# 117 "../../../kgccfe/gnu/basic-block.h"
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
# 179 "../../../kgccfe/gnu/basic-block.h"
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
# 242 "../../../kgccfe/gnu/basic-block.h"
extern int n_basic_blocks;



extern int last_basic_block;



extern int n_edges;



extern varray_type basic_block_info;
# 276 "../../../kgccfe/gnu/basic-block.h"
extern regset regs_live_at_setjmp;



extern rtx label_value_list;
extern rtx tail_recursion_label_list;

extern struct obstack flow_obstack;
# 313 "../../../kgccfe/gnu/basic-block.h"
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
# 482 "../../../kgccfe/gnu/basic-block.h"
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
# 613 "../../../kgccfe/gnu/basic-block.h"
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
# 668 "../../../kgccfe/gnu/basic-block.h"
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
# 26 "../../../kgccfe/gnu/regs.h" 2
# 44 "../../../kgccfe/gnu/regs.h"
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
# 154 "../../../kgccfe/gnu/regs.h"
extern short *reg_renumber;




extern char regs_ever_live[176];



extern const char * reg_names[176];






extern enum machine_mode reg_raw_mode[176];
# 193 "../../../kgccfe/gnu/regs.h"
extern rtx regs_may_share;




extern int caller_save_needed;
# 227 "../../../kgccfe/gnu/regs.h"
extern void allocate_reg_info (size_t, int, int);
# 36 "../../../kgccfe/gnu/expr.c" 2

# 1 "../../../kgccfe/gnu/except.h" 1
# 39 "../../../kgccfe/gnu/except.h"
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
# 150 "../../../kgccfe/gnu/except.h"
extern tree (*lang_protect_cleanup_actions) (void);


extern int (*lang_eh_type_covers) (tree a, tree b);


extern tree (*lang_eh_runtime_type) (tree);
# 38 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/function.h" 1
# 22 "../../../kgccfe/gnu/function.h"
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
# 124 "../../../kgccfe/gnu/function.h"
struct expr_status
{


  int x_pending_stack_adjust;
# 145 "../../../kgccfe/gnu/function.h"
  int x_inhibit_defer_pop;





  int x_stack_pointer_delta;




  rtx x_saveregs_value;


  rtx x_apply_args_value;


  rtx x_forced_labels;


  rtx x_pending_chain;
};
# 179 "../../../kgccfe/gnu/function.h"
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
# 326 "../../../kgccfe/gnu/function.h"
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
# 481 "../../../kgccfe/gnu/function.h"
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
# 581 "../../../kgccfe/gnu/function.h"
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
# 39 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/insn-config.h" 1
# 40 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/MIPS/insn-attr.h" 1
# 10 "../../../kgccfe/gnu/MIPS/insn-attr.h"
enum attr_type {TYPE_UNKNOWN, TYPE_BRANCH, TYPE_JUMP, TYPE_CALL, TYPE_LOAD, TYPE_STORE, TYPE_MOVE, TYPE_XFER, TYPE_HILO, TYPE_ARITH, TYPE_DARITH, TYPE_IMUL, TYPE_IMADD, TYPE_IDIV, TYPE_ICMP, TYPE_FADD, TYPE_FMUL, TYPE_FMADD, TYPE_FDIV, TYPE_FABS, TYPE_FNEG, TYPE_FCMP, TYPE_FCVT, TYPE_FSQRT, TYPE_FRSQRT, TYPE_MULTI, TYPE_NOP};
extern enum attr_type get_attr_type (rtx);


enum attr_mode {MODE_UNKNOWN, MODE_NONE, MODE_QI, MODE_HI, MODE_SI, MODE_DI, MODE_SF, MODE_DF, MODE_FPSW};
extern enum attr_mode get_attr_mode (rtx);


extern int get_attr_length (rtx);
extern void shorten_branches (rtx);
extern int insn_default_length (rtx);
extern int insn_variable_length_p (rtx);
extern int insn_current_length (rtx);

# 1 "../../../kgccfe/gnu/insn-addr.h" 1
# 26 "../../../kgccfe/gnu/insn-addr.h"
extern varray_type insn_addresses_;
extern int insn_current_address;
# 25 "../../../kgccfe/gnu/MIPS/insn-attr.h" 2


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
# 99 "../../../kgccfe/gnu/MIPS/insn-attr.h"
extern int max_dfa_issue_rate;
# 109 "../../../kgccfe/gnu/MIPS/insn-attr.h"
extern int insn_default_latency (rtx);



extern int bypass_p (rtx);




extern int insn_latency (rtx, rtx);




extern int insn_alts (rtx);



extern int max_insn_queue_index;


typedef void *state_t;


extern int state_size (void);



extern void state_reset (state_t);
# 147 "../../../kgccfe/gnu/MIPS/insn-attr.h"
extern int state_transition (state_t, rtx);
# 159 "../../../kgccfe/gnu/MIPS/insn-attr.h"
extern int min_issue_delay (state_t, rtx);


extern int state_dead_lock_p (state_t);






extern int min_insn_conflict_delay (state_t, rtx, rtx);



extern void print_reservation (FILE *, rtx);
# 188 "../../../kgccfe/gnu/MIPS/insn-attr.h"
extern void dfa_start (void);
extern void dfa_finish (void);
# 41 "../../../kgccfe/gnu/expr.c" 2


# 1 "../../../kgccfe/gnu/MIPS/insn-flags.h" 1
# 44 "../../../kgccfe/gnu/expr.c" 2


# 1 "../../../kgccfe/gnu/expr.h" 1
# 57 "../../../kgccfe/gnu/expr.h"
enum expand_modifier {EXPAND_NORMAL = 0, EXPAND_STACK_PARM = 2, EXPAND_SUM,
        EXPAND_CONST_ADDRESS, EXPAND_INITIALIZER, EXPAND_WRITE,
        EXPAND_MEMORY};
# 75 "../../../kgccfe/gnu/expr.h"
struct args_size
{
  long long constant;
  tree var;
};
# 125 "../../../kgccfe/gnu/expr.h"
enum direction {none, upward, downward};
# 262 "../../../kgccfe/gnu/expr.h"
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
# 322 "../../../kgccfe/gnu/expr.h"
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
# 478 "../../../kgccfe/gnu/expr.h"
extern rtx store_by_pieces (rtx, unsigned long long, rtx (*) (void *, long long, enum machine_mode), void *, unsigned int, int);





extern rtx emit_move_insn (rtx, rtx);


extern rtx emit_move_insn_1 (rtx, rtx);



extern rtx push_block (rtx, int, int);



extern void emit_push_insn (rtx, enum machine_mode, tree, rtx, unsigned int, int, rtx, int, rtx, rtx, int, rtx);




extern rtx expand_assignment (tree, tree, int, int);





extern rtx store_expr (tree, rtx, int);





extern rtx force_operand (rtx, rtx);
# 521 "../../../kgccfe/gnu/expr.h"
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
# 669 "../../../kgccfe/gnu/expr.h"
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
# 47 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/optabs.h" 1
# 24 "../../../kgccfe/gnu/optabs.h"
# 1 "../../../kgccfe/gnu/MIPS/insn-codes.h" 1






enum insn_code {
  CODE_FOR_trap = 0,
  CODE_FOR_adddf3 = 2,
  CODE_FOR_addsf3 = 3,
  CODE_FOR_addsi3_internal = 4,
  CODE_FOR_adddi3_internal_1 = 8,
  CODE_FOR_adddi3_internal_2 = 9,
  CODE_FOR_adddi3_internal_3 = 10,
  CODE_FOR_addsi3_internal_2 = 14,
  CODE_FOR_subdf3 = 16,
  CODE_FOR_subsf3 = 17,
  CODE_FOR_subsi3_internal = 18,
  CODE_FOR_subdi3_internal = 22,
  CODE_FOR_subdi3_internal_2 = 23,
  CODE_FOR_subdi3_internal_3 = 24,
  CODE_FOR_subsi3_internal_2 = 28,
  CODE_FOR_muldf3_internal = 30,
  CODE_FOR_muldf3_r4300 = 31,
  CODE_FOR_mulsf3_internal = 32,
  CODE_FOR_mulsf3_r4300 = 33,
  CODE_FOR_mulsi3_mult3 = 34,
  CODE_FOR_mulsi3_internal = 35,
  CODE_FOR_mulsi3_r4000 = 36,
  CODE_FOR_muldi3_internal = 41,
  CODE_FOR_muldi3_internal2 = 42,
  CODE_FOR_mulsidi3_internal = 43,
  CODE_FOR_mulsidi3_64bit = 44,
  CODE_FOR_xmulsi3_highpart_internal = 47,
  CODE_FOR_xmulsi3_highpart_mulhi = 48,
  CODE_FOR_smuldi3_highpart = 50,
  CODE_FOR_umuldi3_highpart = 51,
  CODE_FOR_madsi = 52,
  CODE_FOR_divdf3 = 63,
  CODE_FOR_divsf3 = 64,
  CODE_FOR_divmodsi4_internal = 67,
  CODE_FOR_divmoddi4_internal = 68,
  CODE_FOR_udivmodsi4_internal = 69,
  CODE_FOR_udivmoddi4_internal = 70,
  CODE_FOR_div_trap_normal = 71,
  CODE_FOR_div_trap_mips16 = 72,
  CODE_FOR_divsi3_internal = 73,
  CODE_FOR_divdi3_internal = 74,
  CODE_FOR_modsi3_internal = 75,
  CODE_FOR_moddi3_internal = 76,
  CODE_FOR_udivsi3_internal = 77,
  CODE_FOR_udivdi3_internal = 78,
  CODE_FOR_umodsi3_internal = 79,
  CODE_FOR_umoddi3_internal = 80,
  CODE_FOR_sqrtdf2 = 81,
  CODE_FOR_sqrtsf2 = 82,
  CODE_FOR_abssi2 = 85,
  CODE_FOR_absdi2 = 86,
  CODE_FOR_absdf2 = 87,
  CODE_FOR_abssf2 = 88,
  CODE_FOR_ffssi2 = 89,
  CODE_FOR_ffsdi2 = 90,
  CODE_FOR_negsi2 = 91,
  CODE_FOR_negdi2_internal = 92,
  CODE_FOR_negdi2_internal_2 = 93,
  CODE_FOR_negdf2 = 94,
  CODE_FOR_negsf2 = 95,
  CODE_FOR_one_cmplsi2 = 96,
  CODE_FOR_one_cmpldi2 = 97,
  CODE_FOR_anddi3_internal1 = 102,
  CODE_FOR_xordi3_immed = 112,
  CODE_FOR_truncdfsf2 = 115,
  CODE_FOR_truncdisi2 = 116,
  CODE_FOR_truncdihi2 = 117,
  CODE_FOR_truncdiqi2 = 118,
  CODE_FOR_zero_extendsidi2_internal = 125,
  CODE_FOR_extendhidi2_internal = 137,
  CODE_FOR_extendhisi2_internal = 138,
  CODE_FOR_extendqihi2_internal = 139,
  CODE_FOR_extendqisi2_insn = 140,
  CODE_FOR_extendqidi2_insn = 141,
  CODE_FOR_extendsfdf2 = 142,
  CODE_FOR_fix_truncdfsi2_insn = 143,
  CODE_FOR_fix_truncdfsi2_macro = 144,
  CODE_FOR_fix_truncsfsi2_insn = 145,
  CODE_FOR_fix_truncsfsi2_macro = 146,
  CODE_FOR_fix_truncdfdi2 = 147,
  CODE_FOR_fix_truncsfdi2 = 148,
  CODE_FOR_floatsidf2 = 149,
  CODE_FOR_floatdidf2 = 150,
  CODE_FOR_floatsisf2 = 151,
  CODE_FOR_floatdisf2 = 152,
  CODE_FOR_movsi_ulw = 153,
  CODE_FOR_movsi_usw = 154,
  CODE_FOR_movdi_uld = 155,
  CODE_FOR_movdi_usd = 156,
  CODE_FOR_high = 157,
  CODE_FOR_low = 158,
  CODE_FOR_movdi_internal = 160,
  CODE_FOR_movdi_internal2 = 162,
  CODE_FOR_movsi_internal = 166,
  CODE_FOR_hilo_delay = 168,
  CODE_FOR_movcc = 169,
  CODE_FOR_movhi_internal = 178,
  CODE_FOR_movqi_internal = 180,
  CODE_FOR_movsf_internal1 = 182,
  CODE_FOR_movsf_internal2 = 183,
  CODE_FOR_movdf_internal1 = 185,
  CODE_FOR_movdf_internal1a = 186,
  CODE_FOR_movdf_internal2 = 187,
  CODE_FOR_loadgp = 189,
  CODE_FOR_movstrsi_internal = 190,
  CODE_FOR_movstrsi_internal2 = 192,
  CODE_FOR_movstrsi_internal3 = 194,
  CODE_FOR_ashlsi3_internal1 = 195,
  CODE_FOR_ashlsi3_internal2 = 196,
  CODE_FOR_ashldi3_internal = 197,
  CODE_FOR_ashldi3_internal2 = 198,
  CODE_FOR_ashldi3_internal3 = 199,
  CODE_FOR_ashldi3_internal4 = 200,
  CODE_FOR_ashrsi3_internal1 = 202,
  CODE_FOR_ashrsi3_internal2 = 203,
  CODE_FOR_ashrdi3_internal = 204,
  CODE_FOR_ashrdi3_internal2 = 205,
  CODE_FOR_ashrdi3_internal3 = 206,
  CODE_FOR_ashrdi3_internal4 = 207,
  CODE_FOR_lshrsi3_internal1 = 209,
  CODE_FOR_lshrsi3_internal2 = 210,
  CODE_FOR_lshrdi3_internal = 212,
  CODE_FOR_lshrdi3_internal2 = 213,
  CODE_FOR_lshrdi3_internal3 = 214,
  CODE_FOR_lshrdi3_internal4 = 215,
  CODE_FOR_rotrsi3 = 217,
  CODE_FOR_rotrdi3 = 218,
  CODE_FOR_branch_fp = 219,
  CODE_FOR_branch_fp_inverted = 220,
  CODE_FOR_branch_zero = 221,
  CODE_FOR_branch_zero_inverted = 222,
  CODE_FOR_branch_zero_di = 223,
  CODE_FOR_branch_zero_di_inverted = 224,
  CODE_FOR_branch_equality = 225,
  CODE_FOR_branch_equality_di = 226,
  CODE_FOR_branch_equality_inverted = 227,
  CODE_FOR_branch_equality_di_inverted = 228,
  CODE_FOR_seq_si_zero = 231,
  CODE_FOR_seq_di_zero = 233,


  CODE_FOR_sne_si_zero = 235,
  CODE_FOR_sne_di_zero = 236,


  CODE_FOR_sgt_si = 237,
  CODE_FOR_sgt_di = 239,


  CODE_FOR_slt_si = 241,
  CODE_FOR_slt_di = 243,
  CODE_FOR_sle_si_const = 245,
  CODE_FOR_sle_di_const = 247,


  CODE_FOR_sgtu_si = 249,
  CODE_FOR_sgtu_di = 251,


  CODE_FOR_sltu_si = 253,
  CODE_FOR_sltu_di = 255,
  CODE_FOR_sleu_si_const = 257,
  CODE_FOR_sleu_di_const = 259,


  CODE_FOR_sunordered_df = 261,
  CODE_FOR_sunlt_df = 262,
  CODE_FOR_suneq_df = 263,
  CODE_FOR_sunle_df = 264,
  CODE_FOR_seq_df = 265,
  CODE_FOR_slt_df = 266,
  CODE_FOR_sle_df = 267,
  CODE_FOR_sgt_df = 268,
  CODE_FOR_sge_df = 269,
  CODE_FOR_sunordered_sf = 270,
  CODE_FOR_sunlt_sf = 271,
  CODE_FOR_suneq_sf = 272,
  CODE_FOR_sunle_sf = 273,
  CODE_FOR_seq_sf = 274,
  CODE_FOR_slt_sf = 275,
  CODE_FOR_sle_sf = 276,
  CODE_FOR_sgt_sf = 277,
  CODE_FOR_sge_sf = 278,
  CODE_FOR_jump = 279,
  CODE_FOR_indirect_jump_internal1 = 281,
  CODE_FOR_indirect_jump_internal2 = 282,
  CODE_FOR_tablejump_internal1 = 283,
  CODE_FOR_tablejump_internal2 = 284,
  CODE_FOR_casesi_internal = 287,
  CODE_FOR_casesi_internal_di = 288,
  CODE_FOR_blockage = 289,
  CODE_FOR_return = 290,
  CODE_FOR_return_internal = 291,
  CODE_FOR_get_fnaddr = 292,
  CODE_FOR_eh_set_lr_si = 293,
  CODE_FOR_eh_set_lr_di = 294,
  CODE_FOR_exception_receiver = 295,
  CODE_FOR_call_internal1 = 297,
  CODE_FOR_call_internal2 = 298,
  CODE_FOR_call_internal3a = 299,
  CODE_FOR_call_internal3b = 300,
  CODE_FOR_call_internal3c = 301,
  CODE_FOR_call_internal4a = 302,
  CODE_FOR_call_internal4b = 303,
  CODE_FOR_call_value_internal1 = 305,
  CODE_FOR_call_value_internal2 = 306,
  CODE_FOR_call_value_internal3a = 307,
  CODE_FOR_call_value_internal3b = 308,
  CODE_FOR_call_value_internal3c = 309,
  CODE_FOR_call_value_internal4a = 310,
  CODE_FOR_call_value_internal4b = 311,
  CODE_FOR_call_value_multiple_internal1 = 312,
  CODE_FOR_call_value_multiple_internal2 = 313,
  CODE_FOR_prefetch_si_address = 314,
  CODE_FOR_prefetch_si = 315,
  CODE_FOR_prefetch_di_address = 316,
  CODE_FOR_prefetch_di = 317,
  CODE_FOR_nop = 318,
  CODE_FOR_consttable_qi = 331,
  CODE_FOR_consttable_hi = 332,
  CODE_FOR_consttable_si = 333,
  CODE_FOR_consttable_di = 334,
  CODE_FOR_consttable_sf = 335,
  CODE_FOR_consttable_df = 336,
  CODE_FOR_align_2 = 337,
  CODE_FOR_align_4 = 338,
  CODE_FOR_align_8 = 339,
  CODE_FOR_leasi = 340,
  CODE_FOR_leadi = 341,
  CODE_FOR_conditional_trap = 342,
  CODE_FOR_addsi3 = 343,
  CODE_FOR_adddi3 = 346,
  CODE_FOR_subsi3 = 353,
  CODE_FOR_subdi3 = 356,
  CODE_FOR_muldf3 = 363,
  CODE_FOR_mulsf3 = 364,
  CODE_FOR_mulsi3 = 365,
  CODE_FOR_muldi3 = 371,
  CODE_FOR_mulsidi3 = 372,
  CODE_FOR_umulsidi3 = 373,
  CODE_FOR_smulsi3_highpart = 374,
  CODE_FOR_umulsi3_highpart = 375,
  CODE_FOR_divmodsi4 = 376,
  CODE_FOR_divmoddi4 = 377,
  CODE_FOR_udivmodsi4 = 378,
  CODE_FOR_udivmoddi4 = 379,
  CODE_FOR_div_trap = 380,
  CODE_FOR_divsi3 = 381,
  CODE_FOR_divdi3 = 382,
  CODE_FOR_modsi3 = 383,
  CODE_FOR_moddi3 = 384,
  CODE_FOR_udivsi3 = 385,
  CODE_FOR_udivdi3 = 386,
  CODE_FOR_umodsi3 = 387,
  CODE_FOR_umoddi3 = 388,
  CODE_FOR_negdi2 = 389,
  CODE_FOR_andsi3 = 391,
  CODE_FOR_anddi3 = 392,
  CODE_FOR_iorsi3 = 394,
  CODE_FOR_iordi3 = 395,
  CODE_FOR_xorsi3 = 397,
  CODE_FOR_xordi3 = 398,
  CODE_FOR_zero_extendsidi2 = 401,
  CODE_FOR_zero_extendhisi2 = 402,
  CODE_FOR_zero_extendhidi2 = 403,
  CODE_FOR_zero_extendqihi2 = 404,
  CODE_FOR_zero_extendqisi2 = 405,
  CODE_FOR_zero_extendqidi2 = 406,
  CODE_FOR_extendsidi2 = 407,
  CODE_FOR_extendhidi2 = 408,
  CODE_FOR_extendhisi2 = 409,
  CODE_FOR_extendqihi2 = 410,
  CODE_FOR_extendqisi2 = 411,
  CODE_FOR_extendqidi2 = 412,
  CODE_FOR_fix_truncdfsi2 = 413,
  CODE_FOR_fix_truncsfsi2 = 414,
  CODE_FOR_fixuns_truncdfsi2 = 415,
  CODE_FOR_fixuns_truncdfdi2 = 416,
  CODE_FOR_fixuns_truncsfsi2 = 417,
  CODE_FOR_fixuns_truncsfdi2 = 418,
  CODE_FOR_extv = 419,
  CODE_FOR_extzv = 420,
  CODE_FOR_insv = 421,
  CODE_FOR_movdi = 422,
  CODE_FOR_reload_indi = 425,
  CODE_FOR_reload_outdi = 426,
  CODE_FOR_movsi = 428,
  CODE_FOR_reload_outsi = 432,
  CODE_FOR_reload_insi = 433,
  CODE_FOR_reload_incc = 434,
  CODE_FOR_reload_outcc = 435,
  CODE_FOR_movhi = 436,
  CODE_FOR_movqi = 438,
  CODE_FOR_movsf = 440,
  CODE_FOR_movdf = 441,
  CODE_FOR_movstrsi = 443,
  CODE_FOR_ashlsi3 = 444,
  CODE_FOR_ashldi3 = 446,
  CODE_FOR_ashrsi3 = 452,
  CODE_FOR_ashrdi3 = 454,
  CODE_FOR_lshrsi3 = 460,
  CODE_FOR_lshrdi3 = 463,
  CODE_FOR_cmpsi = 469,
  CODE_FOR_tstsi = 470,
  CODE_FOR_cmpdi = 471,
  CODE_FOR_tstdi = 472,
  CODE_FOR_cmpdf = 473,
  CODE_FOR_cmpsf = 474,
  CODE_FOR_bunordered = 475,
  CODE_FOR_bordered = 476,
  CODE_FOR_bunlt = 477,
  CODE_FOR_bunge = 478,
  CODE_FOR_buneq = 479,
  CODE_FOR_bltgt = 480,
  CODE_FOR_bunle = 481,
  CODE_FOR_bungt = 482,
  CODE_FOR_beq = 483,
  CODE_FOR_bne = 484,
  CODE_FOR_bgt = 485,
  CODE_FOR_bge = 486,
  CODE_FOR_blt = 487,
  CODE_FOR_ble = 488,
  CODE_FOR_bgtu = 489,
  CODE_FOR_bgeu = 490,
  CODE_FOR_bltu = 491,
  CODE_FOR_bleu = 492,
  CODE_FOR_seq = 493,
  CODE_FOR_sne = 494,
  CODE_FOR_sgt = 495,
  CODE_FOR_sge = 496,
  CODE_FOR_slt = 497,
  CODE_FOR_sle = 498,
  CODE_FOR_sgtu = 499,
  CODE_FOR_sgeu = 500,
  CODE_FOR_sltu = 501,
  CODE_FOR_sleu = 502,
  CODE_FOR_indirect_jump = 503,
  CODE_FOR_tablejump = 504,
  CODE_FOR_tablejump_internal3 = 505,
  CODE_FOR_tablejump_mips161 = 506,
  CODE_FOR_tablejump_mips162 = 507,
  CODE_FOR_tablejump_internal4 = 508,
  CODE_FOR_casesi = 509,
  CODE_FOR_builtin_setjmp_setup = 510,
  CODE_FOR_builtin_setjmp_setup_32 = 511,
  CODE_FOR_builtin_setjmp_setup_64 = 512,
  CODE_FOR_builtin_longjmp = 513,
  CODE_FOR_prologue = 514,
  CODE_FOR_epilogue = 515,
  CODE_FOR_eh_return = 516,
  CODE_FOR_call = 518,
  CODE_FOR_call_internal0 = 519,
  CODE_FOR_call_value = 520,
  CODE_FOR_call_value_internal0 = 521,
  CODE_FOR_call_value_multiple_internal0 = 522,
  CODE_FOR_untyped_call = 523,
  CODE_FOR_prefetch = 524,
  CODE_FOR_movsicc = 525,
  CODE_FOR_movdicc = 526,
  CODE_FOR_movsfcc = 527,
  CODE_FOR_movdfcc = 528,
  CODE_FOR_nothing
};
# 25 "../../../kgccfe/gnu/optabs.h" 2
# 41 "../../../kgccfe/gnu/optabs.h"
struct optab
{
  enum rtx_code code;
  struct optab_handlers {
    enum insn_code insn_code;
    rtx libfunc;
  } handlers [(int) MAX_MACHINE_MODE];
};
typedef struct optab * optab;






enum optab_index
{
  OTI_add,
  OTI_addv,
  OTI_sub,
  OTI_subv,


  OTI_smul,
  OTI_smulv,

  OTI_smul_highpart,
  OTI_umul_highpart,

  OTI_smul_widen,
  OTI_umul_widen,


  OTI_sdiv,
  OTI_sdivv,

  OTI_sdivmod,
  OTI_udiv,
  OTI_udivmod,

  OTI_smod,
  OTI_umod,

  OTI_ftrunc,


  OTI_and,

  OTI_ior,

  OTI_xor,


  OTI_ashl,

  OTI_lshr,

  OTI_ashr,

  OTI_rotl,

  OTI_rotr,

  OTI_smin,

  OTI_smax,

  OTI_umin,

  OTI_umax,


  OTI_mov,

  OTI_movstrict,



  OTI_neg,
  OTI_negv,

  OTI_abs,
  OTI_absv,

  OTI_one_cmpl,

  OTI_ffs,

  OTI_sqrt,

  OTI_sin,

  OTI_cos,

  OTI_exp,

  OTI_log,


  OTI_cmp,

  OTI_ucmp,

  OTI_tst,


  OTI_strlen,


  OTI_cbranch,
  OTI_cmov,
  OTI_cstore,


  OTI_push,

  OTI_MAX
};

extern optab optab_table[OTI_MAX];
# 220 "../../../kgccfe/gnu/optabs.h"
extern enum insn_code extendtab[MAX_MACHINE_MODE][MAX_MACHINE_MODE][2];


extern enum insn_code fixtab[(int) MAX_MACHINE_MODE][(int) MAX_MACHINE_MODE][2];
extern enum insn_code fixtrunctab[(int) MAX_MACHINE_MODE][(int) MAX_MACHINE_MODE][2];
extern enum insn_code floattab[(int) MAX_MACHINE_MODE][(int) MAX_MACHINE_MODE][2];




extern enum insn_code reload_in_optab[(int) MAX_MACHINE_MODE];
extern enum insn_code reload_out_optab[(int) MAX_MACHINE_MODE];


extern optab code_to_optab[((int) LAST_AND_UNUSED_RTX_CODE) + 1];


typedef rtx (*rtxfun) (rtx);




extern rtxfun bcc_gen_fctn[((int) LAST_AND_UNUSED_RTX_CODE)];





extern enum insn_code setcc_gen_code[((int) LAST_AND_UNUSED_RTX_CODE)];





extern enum insn_code movcc_gen_code[(int) MAX_MACHINE_MODE];



extern enum insn_code movstr_optab[(int) MAX_MACHINE_MODE];


extern enum insn_code clrstr_optab[(int) MAX_MACHINE_MODE];




extern rtx expand_binop (enum machine_mode, optab, rtx, rtx, rtx, int, enum optab_methods);



extern rtx sign_expand_binop (enum machine_mode, optab, optab, rtx, rtx, rtx, int, enum optab_methods);



extern int expand_twoval_binop (optab, rtx, rtx, rtx, rtx, int);


extern rtx expand_unop (enum machine_mode, optab, rtx, rtx, int);


extern rtx expand_abs (enum machine_mode, rtx, rtx, int, int);


extern rtx expand_complex_abs (enum machine_mode, rtx, rtx, int);



extern void emit_unop_insn (int, rtx, rtx, enum rtx_code);



extern rtx emit_no_conflict_block (rtx, rtx, rtx, rtx, rtx);


extern void emit_clr_insn (rtx);


extern void emit_0_to_1_insn (rtx);


extern void emit_cmp_insn (rtx, rtx, enum rtx_code, rtx, enum machine_mode, int);




enum can_compare_purpose
{
  ccp_jump,
  ccp_cmov,
  ccp_store_flag
};



extern int can_compare_p (enum rtx_code, enum machine_mode, enum can_compare_purpose);


extern rtx prepare_operand (int, rtx, int, enum machine_mode, enum machine_mode, int);



extern enum insn_code can_extend_p (enum machine_mode, enum machine_mode, int);




extern rtx gen_extend_insn (rtx, rtx, enum machine_mode, enum machine_mode, int);




extern void init_fixtab (void);
extern void init_floattab (void);


extern void expand_float (rtx, rtx, int);


extern void expand_fix (rtx, rtx, int);
# 48 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/libfuncs.h" 1
# 25 "../../../kgccfe/gnu/libfuncs.h"
enum libfunc_index
{
  LTI_extendsfdf2,
  LTI_extendsfxf2,
  LTI_extendsftf2,
  LTI_extenddfxf2,
  LTI_extenddftf2,

  LTI_truncdfsf2,
  LTI_truncxfsf2,
  LTI_trunctfsf2,
  LTI_truncxfdf2,
  LTI_trunctfdf2,

  LTI_abort,
  LTI_memcpy,
  LTI_memmove,
  LTI_bcopy,
  LTI_memcmp,
  LTI_bcmp,
  LTI_memset,
  LTI_bzero,

  LTI_unwind_resume,
  LTI_eh_personality,
  LTI_setjmp,
  LTI_longjmp,
  LTI_unwind_sjlj_register,
  LTI_unwind_sjlj_unregister,

  LTI_eqhf2,
  LTI_nehf2,
  LTI_gthf2,
  LTI_gehf2,
  LTI_lthf2,
  LTI_lehf2,
  LTI_unordhf2,

  LTI_eqsf2,
  LTI_nesf2,
  LTI_gtsf2,
  LTI_gesf2,
  LTI_ltsf2,
  LTI_lesf2,
  LTI_unordsf2,

  LTI_eqdf2,
  LTI_nedf2,
  LTI_gtdf2,
  LTI_gedf2,
  LTI_ltdf2,
  LTI_ledf2,
  LTI_unorddf2,

  LTI_eqxf2,
  LTI_nexf2,
  LTI_gtxf2,
  LTI_gexf2,
  LTI_ltxf2,
  LTI_lexf2,
  LTI_unordxf2,

  LTI_eqtf2,
  LTI_netf2,
  LTI_gttf2,
  LTI_getf2,
  LTI_lttf2,
  LTI_letf2,
  LTI_unordtf2,

  LTI_floatsisf,
  LTI_floatdisf,
  LTI_floattisf,

  LTI_floatsidf,
  LTI_floatdidf,
  LTI_floattidf,

  LTI_floatsixf,
  LTI_floatdixf,
  LTI_floattixf,

  LTI_floatsitf,
  LTI_floatditf,
  LTI_floattitf,

  LTI_fixsfsi,
  LTI_fixsfdi,
  LTI_fixsfti,

  LTI_fixdfsi,
  LTI_fixdfdi,
  LTI_fixdfti,

  LTI_fixxfsi,
  LTI_fixxfdi,
  LTI_fixxfti,

  LTI_fixtfsi,
  LTI_fixtfdi,
  LTI_fixtfti,

  LTI_fixunssfsi,
  LTI_fixunssfdi,
  LTI_fixunssfti,

  LTI_fixunsdfsi,
  LTI_fixunsdfdi,
  LTI_fixunsdfti,

  LTI_fixunsxfsi,
  LTI_fixunsxfdi,
  LTI_fixunsxfti,

  LTI_fixunstfsi,
  LTI_fixunstfdi,
  LTI_fixunstfti,

  LTI_profile_function_entry,
  LTI_profile_function_exit,

  LTI_MAX
};



extern rtx libfunc_table[LTI_MAX];
# 49 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/recog.h" 1
# 28 "../../../kgccfe/gnu/recog.h"
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



  rtx *dup_loc[4];



  char dup_num[4];
# 196 "../../../kgccfe/gnu/recog.h"
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
# 241 "../../../kgccfe/gnu/recog.h"
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
# 50 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/reload.h" 1
# 47 "../../../kgccfe/gnu/reload.h"
extern int memory_move_secondary_cost (enum machine_mode, enum reg_class, int);
# 76 "../../../kgccfe/gnu/reload.h"
enum reload_type
{
  RELOAD_FOR_INPUT, RELOAD_FOR_OUTPUT, RELOAD_FOR_INSN,
  RELOAD_FOR_INPUT_ADDRESS, RELOAD_FOR_INPADDR_ADDRESS,
  RELOAD_FOR_OUTPUT_ADDRESS, RELOAD_FOR_OUTADDR_ADDRESS,
  RELOAD_FOR_OPERAND_ADDRESS, RELOAD_FOR_OPADDR_ADDR,
  RELOAD_OTHER, RELOAD_FOR_OTHER_ADDRESS
};



struct reload
{

  rtx in;


  rtx out;


  enum reg_class class;


  enum machine_mode inmode;

  enum machine_mode outmode;


  enum machine_mode mode;


  unsigned int nregs;




  int inc;




  rtx in_reg;
  rtx out_reg;


  int regno;




  rtx reg_rtx;




  int opnum;



  int secondary_in_reload;


  int secondary_out_reload;



  enum insn_code secondary_in_icode;

  enum insn_code secondary_out_icode;




  enum reload_type when_needed;



  unsigned int optional:1;

  unsigned int nocombine:1;

  unsigned int secondary_p:1;


  unsigned int nongroup:1;
};

extern struct reload rld[(2 * 30 * (1 + 1))];
extern int n_reloads;


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
# 51 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/output.h" 1
# 24 "../../../kgccfe/gnu/output.h"
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
# 177 "../../../kgccfe/gnu/output.h"
extern void bss_section (void);







extern void init_section (void);



extern void fini_section (void);
# 205 "../../../kgccfe/gnu/output.h"
extern void sdata_section (void);
# 216 "../../../kgccfe/gnu/output.h"
extern void named_section (tree, const char *, int);


extern void function_section (tree);


extern void mergeable_string_section (tree, unsigned long long, unsigned int);



extern void mergeable_constant_section (enum machine_mode, unsigned long long, unsigned int);




extern void declare_weak (tree);

extern void merge_weak (tree, tree);


extern void weak_finish (void);
# 245 "../../../kgccfe/gnu/output.h"
extern int decode_reg_name (const char *);



extern void make_var_volatile (tree);


extern void assemble_constant_align (tree);

extern void assemble_alias (tree, tree);

extern void default_assemble_visibility (tree, int);



extern void assemble_asm (tree);





extern void assemble_start_function (tree, const char *);



extern void assemble_end_function (tree, const char *);
# 281 "../../../kgccfe/gnu/output.h"
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
# 319 "../../../kgccfe/gnu/output.h"
extern const char *integer_asm_op (int, int);



extern void assemble_integer_with_op (const char *, rtx);


extern _Bool default_assemble_integer (rtx, unsigned int, int);





extern _Bool assemble_integer (rtx, unsigned, unsigned, int);
# 342 "../../../kgccfe/gnu/output.h"
extern void assemble_real (struct real_value, enum machine_mode, unsigned);





extern void defer_addressed_constants (void);



extern void output_deferred_addressed_constants (void);


extern int get_pool_size (void);






extern void output_constant_pool (const char *, tree);
# 373 "../../../kgccfe/gnu/output.h"
extern tree initializer_constant_valid_p (tree, tree);
# 383 "../../../kgccfe/gnu/output.h"
extern void output_constant (tree, long long, unsigned int);
# 392 "../../../kgccfe/gnu/output.h"
extern rtx final_sequence;
# 404 "../../../kgccfe/gnu/output.h"
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
# 491 "../../../kgccfe/gnu/output.h"
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
# 52 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/typeclass.h" 1


enum type_class
{
  no_type_class = -1,
  void_type_class, integer_type_class, char_type_class,
  enumeral_type_class, boolean_type_class,
  pointer_type_class, reference_type_class, offset_type_class,
  real_type_class, complex_type_class,
  function_type_class, method_type_class,
  record_type_class, union_type_class,
  array_type_class, string_type_class, set_type_class, file_type_class,
  lang_type_class
};
# 53 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/toplev.h" 1
# 35 "../../../kgccfe/gnu/toplev.h"
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
# 63 "../../../kgccfe/gnu/toplev.h"
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
# 139 "../../../kgccfe/gnu/toplev.h"
extern int exact_log2_wide (unsigned long long);
extern int floor_log2_wide (unsigned long long);


extern void dump_parse_tree (char *, union tree_node *);
# 54 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/ggc.h" 1
# 28 "../../../kgccfe/gnu/ggc.h"
# 1 "../../../kgccfe/gnu/MIPS/gtype-desc.h" 1
# 24 "../../../kgccfe/gnu/MIPS/gtype-desc.h"
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
# 29 "../../../kgccfe/gnu/ggc.h" 2
# 37 "../../../kgccfe/gnu/ggc.h"
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
# 96 "../../../kgccfe/gnu/ggc.h"
extern void init_ggc (void);
extern void init_stringpool (void);



extern void ggc_push_context (void);



extern void ggc_pop_context (void);




extern void *ggc_alloc (size_t);

extern void *ggc_alloc_cleared (size_t);

extern void *ggc_realloc (void *, size_t);

extern void *ggc_calloc (size_t, size_t);
# 134 "../../../kgccfe/gnu/ggc.h"
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
# 55 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/langhooks.h" 1
# 26 "../../../kgccfe/gnu/langhooks.h"
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
# 202 "../../../kgccfe/gnu/langhooks.h"
  int (*decode_option) (int, char **);
# 214 "../../../kgccfe/gnu/langhooks.h"
  _Bool (*post_options) (void);







  const char * (*init) (const char *);


  void (*finish) (void);



  void (*parse_file) (int);


  void (*clear_binding_stack) (void);



  long long (*get_alias_set) (tree);




  tree (*expand_constant) (tree);



  rtx (*expand_expr) (tree, rtx, enum machine_mode, int);
# 258 "../../../kgccfe/gnu/langhooks.h"
  tree (*truthvalue_conversion) (tree);



  void (*insert_default_attributes) (tree);
# 271 "../../../kgccfe/gnu/langhooks.h"
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
# 56 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/intl.h" 1
# 29 "../../../kgccfe/gnu/intl.h"
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








# 30 "../../../kgccfe/gnu/intl.h" 2
# 57 "../../../kgccfe/gnu/expr.c" 2
# 1 "../../../kgccfe/gnu/MIPS/tm_p.h" 1

# 1 "../../../kgccfe/gnu/config/MIPS/mips-protos.h" 1
# 29 "../../../kgccfe/gnu/config/MIPS/mips-protos.h"
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
# 3 "../../../kgccfe/gnu/MIPS/tm_p.h" 2

# 1 "../../../kgccfe/gnu/MIPS/tm-preds.h" 1







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
# 4 "../../../kgccfe/gnu/MIPS/tm_p.h" 2
# 58 "../../../kgccfe/gnu/expr.c" 2


# 1 "../../../kgccfe/gnu/defaults.h" 1
# 61 "../../../kgccfe/gnu/expr.c" 2
# 107 "../../../kgccfe/gnu/expr.c"
int cse_not_expected;


static tree placeholder_list = 0;



struct move_by_pieces
{
  rtx to;
  rtx to_addr;
  int autinc_to;
  int explicit_inc_to;
  rtx from;
  rtx from_addr;
  int autinc_from;
  int explicit_inc_from;
  unsigned long long len;
  long long offset;
  int reverse;
};




struct store_by_pieces
{
  rtx to;
  rtx to_addr;
  int autinc_to;
  int explicit_inc_to;
  unsigned long long len;
  long long offset;
  rtx (*constfun) (void *, long long, enum machine_mode);
  void * constfundata;
  int reverse;
};

static rtx enqueue_insn (rtx, rtx);
static unsigned long long move_by_pieces_ninsns
    (unsigned long long, unsigned int);

static void move_by_pieces_1 (rtx (*) (rtx, ...), enum machine_mode, struct move_by_pieces *);

static _Bool block_move_libcall_safe_for_call_parm (void);
static _Bool emit_block_move_via_movstr (rtx, rtx, rtx, unsigned);
static rtx emit_block_move_via_libcall (rtx, rtx, rtx);
static tree emit_block_move_libcall_fn (int);
static void emit_block_move_via_loop (rtx, rtx, rtx, unsigned);
static rtx clear_by_pieces_1 (void *, long long, enum machine_mode);

static void clear_by_pieces (rtx, unsigned long long, unsigned int);

static void store_by_pieces_1 (struct store_by_pieces *, unsigned int);

static void store_by_pieces_2 (rtx (*) (rtx, ...), enum machine_mode, struct store_by_pieces *);


static _Bool clear_storage_via_clrstr (rtx, rtx, unsigned);
static rtx clear_storage_via_libcall (rtx, rtx);
static tree clear_storage_libcall_fn (int);
static rtx compress_float_constant (rtx, rtx);
static rtx get_subtarget (rtx);
static int is_zeros_p (tree);
static int mostly_zeros_p (tree);
static void store_constructor_field (rtx, unsigned long long, long long, enum machine_mode, tree, tree, int, int);


static void store_constructor (tree, rtx, int, long long);
static rtx store_field (rtx, long long, long long, enum machine_mode, tree, enum machine_mode, int, tree, int);



static rtx var_rtx (tree);
static long long highest_pow2_factor (tree);
static long long highest_pow2_factor_for_type (tree, tree);
static int is_aligning_offset (tree, tree);
static rtx expand_increment (tree, int, int);
static void do_jump_by_parts_greater (tree, int, rtx, rtx);
static void do_jump_by_parts_equality (tree, rtx, rtx);
static void do_compare_and_jump (tree, enum rtx_code, enum rtx_code, rtx, rtx);

static rtx do_store_flag (tree, rtx, enum machine_mode, int);



static void do_tablejump (rtx, enum machine_mode, rtx, rtx, rtx);
static rtx const_vector_from_tree (tree);





static char direct_load[(int) MAX_MACHINE_MODE];
static char direct_store[(int) MAX_MACHINE_MODE];



static _Bool float_extend_from_mem[(int) MAX_MACHINE_MODE][(int) MAX_MACHINE_MODE];
# 246 "../../../kgccfe/gnu/expr.c"
enum insn_code movstr_optab[(int) MAX_MACHINE_MODE];


enum insn_code clrstr_optab[(int) MAX_MACHINE_MODE];
# 260 "../../../kgccfe/gnu/expr.c"
void
init_expr_once ()
{
  rtx insn, pat;
  enum machine_mode mode;
  int num_clobbers;
  rtx mem, mem1;
  rtx reg;




  mem = gen_rtx_MEM (VOIDmode, (global_rtl[GR_STACK_POINTER]));
  mem1 = gen_rtx_MEM (VOIDmode, (global_rtl[GR_FRAME_POINTER]));



  reg = gen_rtx_REG (VOIDmode, -1);

  insn = rtx_alloc (INSN);
  pat = gen_rtx_fmt_ee (SET, (0), ((rtx) 0), ((rtx) 0));
  (((insn)->fld[5]).rtx) = pat;

  for (mode = VOIDmode; (int) mode < (int) MAX_MACHINE_MODE;
       mode = (enum machine_mode) ((int) mode + 1))
    {
      int regno;

      direct_load[(int) mode] = direct_store[(int) mode] = 0;
      ((mem)->mode = (enum machine_mode) (mode));
      ((mem1)->mode = (enum machine_mode) (mode));
      ((reg)->mode = (enum machine_mode) (mode));




      if (mode != VOIDmode && mode != BLKmode)
 for (regno = 0; regno < 176
      && (direct_load[(int) mode] == 0 || direct_store[(int) mode] == 0);
      regno++)
   {
     if (! mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
       continue;

     (((reg)->fld[0]).rtuint) = regno;

     (((pat)->fld[1]).rtx) = mem;
     (((pat)->fld[0]).rtx) = reg;
     if (recog (pat, insn, &num_clobbers) >= 0)
       direct_load[(int) mode] = 1;

     (((pat)->fld[1]).rtx) = mem1;
     (((pat)->fld[0]).rtx) = reg;
     if (recog (pat, insn, &num_clobbers) >= 0)
       direct_load[(int) mode] = 1;

     (((pat)->fld[1]).rtx) = reg;
     (((pat)->fld[0]).rtx) = mem;
     if (recog (pat, insn, &num_clobbers) >= 0)
       direct_store[(int) mode] = 1;

     (((pat)->fld[1]).rtx) = reg;
     (((pat)->fld[0]).rtx) = mem1;
     if (recog (pat, insn, &num_clobbers) >= 0)
       direct_store[(int) mode] = 1;
   }
    }

  mem = gen_rtx_MEM (VOIDmode, gen_rtx_fmt_i0 (REG, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (10000)));

  for (mode = class_narrowest_mode[(int) (MODE_FLOAT)]; mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    {
      enum machine_mode srcmode;
      for (srcmode = class_narrowest_mode[(int) (MODE_FLOAT)]; srcmode != mode;
    srcmode = ((enum machine_mode)mode_wider_mode[(int) (srcmode)]))
 {
   enum insn_code ic;

   ic = can_extend_p (mode, srcmode, 0);
   if (ic == CODE_FOR_nothing)
     continue;

   ((mem)->mode = (enum machine_mode) (srcmode));

   if ((*insn_data[ic].operand[1].predicate) (mem, srcmode))
     float_extend_from_mem[mode][srcmode] = 1;
 }
    }
}



void
init_expr ()
{
  cfun->expr = (struct expr_status *) ggc_alloc (sizeof (struct expr_status));

  (cfun->expr->x_pending_chain) = 0;
  (cfun->expr->x_pending_stack_adjust) = 0;
  (cfun->expr->x_stack_pointer_delta) = 0;
  (cfun->expr->x_inhibit_defer_pop) = 0;
  (cfun->expr->x_saveregs_value) = 0;
  (cfun->expr->x_apply_args_value) = 0;
  (cfun->expr->x_forced_labels) = 0;
}



void
finish_expr_for_function ()
{
  if ((cfun->expr->x_pending_chain))
    fancy_abort ("../../../kgccfe/gnu/expr.c", 373, __FUNCTION__);
}
# 386 "../../../kgccfe/gnu/expr.c"
static rtx
enqueue_insn (var, body)
     rtx var, body;
{
  (cfun->expr->x_pending_chain) = gen_rtx_fmt_eeeee (QUEUED, (((enum machine_mode) (var)->mode)), (var), ((rtx) 0), ((rtx) 0), (body), ((cfun->expr->x_pending_chain)));

  return (cfun->expr->x_pending_chain);
}
# 410 "../../../kgccfe/gnu/expr.c"
rtx
protect_from_queue (x, modify)
     rtx x;
     int modify;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);







  if (code != QUEUED)
    {





      if (code == MEM && ((enum machine_mode) (x)->mode) != BLKmode
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == QUEUED && !modify)
 {
   rtx y = (((x)->fld[0]).rtx);
   rtx new = replace_equiv_address_nv (x, (((y)->fld[0]).rtx));

   if ((((y)->fld[1]).rtx))
     {
       rtx temp = gen_reg_rtx (((enum machine_mode) (x)->mode));

       emit_insn_before (gen_move_insn (temp, new),
    (((y)->fld[1]).rtx));
       return temp;
     }



   return replace_equiv_address (new, copy_to_reg ((((new)->fld[0]).rtx)));
 }



      if (code == MEM)
 {
   rtx tem = protect_from_queue ((((x)->fld[0]).rtx), 0);
   if (tem != (((x)->fld[0]).rtx))
     {
       x = copy_rtx (x);
       (((x)->fld[0]).rtx) = tem;
     }
 }
      else if (code == PLUS || code == MULT)
 {
   rtx new0 = protect_from_queue ((((x)->fld[0]).rtx), 0);
   rtx new1 = protect_from_queue ((((x)->fld[1]).rtx), 0);
   if (new0 != (((x)->fld[0]).rtx) || new1 != (((x)->fld[1]).rtx))
     {
       x = copy_rtx (x);
       (((x)->fld[0]).rtx) = new0;
       (((x)->fld[1]).rtx) = new1;
     }
 }
      return x;
    }



  if ((((x)->fld[1]).rtx) == 0)
    return copy_to_reg ((((x)->fld[0]).rtx));


  if ((((x)->fld[2]).rtx) != 0)
    return (((x)->fld[2]).rtx);


  (((x)->fld[2]).rtx) = gen_reg_rtx (((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
  emit_insn_before (gen_move_insn ((((x)->fld[2]).rtx), (((x)->fld[0]).rtx)),
      (((x)->fld[1]).rtx));
  return (((x)->fld[2]).rtx);
}






int
queued_subexp_p (x)
     rtx x;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case QUEUED:
      return 1;
    case MEM:
      return queued_subexp_p ((((x)->fld[0]).rtx));
    case MULT:
    case PLUS:
    case MINUS:
      return (queued_subexp_p ((((x)->fld[0]).rtx))
       || queued_subexp_p ((((x)->fld[1]).rtx)));
    default:
      return 0;
    }
}



void
emit_queue ()
{
  rtx p;
  while ((p = (cfun->expr->x_pending_chain)))
    {
      rtx body = (((p)->fld[3]).rtx);

      switch (((enum rtx_code) (body)->code))
 {
 case INSN:
 case JUMP_INSN:
 case CALL_INSN:
 case CODE_LABEL:
 case BARRIER:
 case NOTE:
   (((p)->fld[1]).rtx) = body;
   emit_insn (body);
   break;







 default:
   (((p)->fld[1]).rtx) = emit_insn (body);
   break;
 }

      (cfun->expr->x_pending_chain) = (((p)->fld[4]).rtx);
    }
}






void
convert_move (to, from, unsignedp)
     rtx to, from;
     int unsignedp;
{
  enum machine_mode to_mode = ((enum machine_mode) (to)->mode);
  enum machine_mode from_mode = ((enum machine_mode) (from)->mode);
  int to_real = (mode_class[(int) (to_mode)]) == MODE_FLOAT;
  int from_real = (mode_class[(int) (from_mode)]) == MODE_FLOAT;
  enum insn_code code;
  rtx libcall;


  enum rtx_code equiv_code = (unsignedp < 0 ? UNKNOWN
         : (unsignedp ? ZERO_EXTEND : SIGN_EXTEND));

  to = protect_from_queue (to, 1);
  from = protect_from_queue (from, 0);

  if (to_real != from_real)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 579, __FUNCTION__);





  if (((enum rtx_code) (from)->code) == SUBREG && (((from))->in_struct)
      && ((mode_size[(int) (((enum machine_mode) ((((from)->fld[0]).rtx))->mode))])
   >= (mode_size[(int) (to_mode)]))
      && ((((from))->volatil) ? -1 : (from)->unchanging) == unsignedp)
    from = gen_lowpart (to_mode, from), from_mode = to_mode;

  if (((enum rtx_code) (to)->code) == SUBREG && (((to))->in_struct))
    fancy_abort ("../../../kgccfe/gnu/expr.c", 592, __FUNCTION__);

  if (to_mode == from_mode
      || (from_mode == VOIDmode && (((enum rtx_code) (from)->code) == LABEL_REF || ((enum rtx_code) (from)->code) == SYMBOL_REF || ((enum rtx_code) (from)->code) == CONST_INT || ((enum rtx_code) (from)->code) == CONST_DOUBLE || ((enum rtx_code) (from)->code) == CONST || ((enum rtx_code) (from)->code) == HIGH || ((enum rtx_code) (from)->code) == CONST_VECTOR || ((enum rtx_code) (from)->code) == CONSTANT_P_RTX)))
    {
      emit_move_insn (to, from);
      return;
    }

  if (((mode_class[(int) (to_mode)]) == MODE_VECTOR_INT || (mode_class[(int) (to_mode)]) == MODE_VECTOR_FLOAT) || ((mode_class[(int) (from_mode)]) == MODE_VECTOR_INT || (mode_class[(int) (from_mode)]) == MODE_VECTOR_FLOAT))
    {
      if ((mode_bitsize[(int) (from_mode)]) != (mode_bitsize[(int) (to_mode)]))
 fancy_abort ("../../../kgccfe/gnu/expr.c", 604, __FUNCTION__);

      if (((mode_class[(int) (to_mode)]) == MODE_VECTOR_INT || (mode_class[(int) (to_mode)]) == MODE_VECTOR_FLOAT))
 from = simplify_gen_subreg (to_mode, from, ((enum machine_mode) (from)->mode), 0);
      else
 to = simplify_gen_subreg (from_mode, to, ((enum machine_mode) (to)->mode), 0);

      emit_move_insn (to, from);
      return;
    }

  if (to_real != from_real)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 616, __FUNCTION__);

  if (to_real)
    {
      rtx value, insns;

      if ((mode_bitsize[(int) (from_mode)]) < (mode_bitsize[(int) (to_mode)]))
 {

   if ((code = can_extend_p (to_mode, from_mode, 0))
       != CODE_FOR_nothing)
     {
       emit_unop_insn (code, to, from, UNKNOWN);
       return;
     }
 }
# 742 "../../../kgccfe/gnu/expr.c"
      if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))) && from_mode == DFmode && to_mode == SFmode)
 {
   emit_unop_insn (CODE_FOR_truncdfsf2, to, from, UNKNOWN);
   return;
 }
# 777 "../../../kgccfe/gnu/expr.c"
      libcall = (rtx) 0;
      switch (from_mode)
 {
 case SFmode:
   switch (to_mode)
     {
     case DFmode:
       libcall = (libfunc_table[LTI_extendsfdf2]);
       break;

     case XFmode:
       libcall = (libfunc_table[LTI_extendsfxf2]);
       break;

     case TFmode:
       libcall = (libfunc_table[LTI_extendsftf2]);
       break;

     default:
       break;
     }
   break;

 case DFmode:
   switch (to_mode)
     {
     case SFmode:
       libcall = (libfunc_table[LTI_truncdfsf2]);
       break;

     case XFmode:
       libcall = (libfunc_table[LTI_extenddfxf2]);
       break;

     case TFmode:
       libcall = (libfunc_table[LTI_extenddftf2]);
       break;

     default:
       break;
     }
   break;

 case XFmode:
   switch (to_mode)
     {
     case SFmode:
       libcall = (libfunc_table[LTI_truncxfsf2]);
       break;

     case DFmode:
       libcall = (libfunc_table[LTI_truncxfdf2]);
       break;

     default:
       break;
     }
   break;

 case TFmode:
   switch (to_mode)
     {
     case SFmode:
       libcall = (libfunc_table[LTI_trunctfsf2]);
       break;

     case DFmode:
       libcall = (libfunc_table[LTI_trunctfdf2]);
       break;

     default:
       break;
     }
   break;

 default:
   break;
 }

      if (libcall == (rtx) 0)

 fancy_abort ("../../../kgccfe/gnu/expr.c", 858, __FUNCTION__);

      start_sequence ();
      value = emit_library_call_value (libcall, (rtx) 0, LCT_CONST, to_mode,
           1, from, from_mode);
      insns = get_insns ();
      end_sequence ();
      emit_libcall_block (insns, to, value, gen_rtx_fmt_e (FLOAT_TRUNCATE, (to_mode), (from)));

      return;
    }




  if ((mode_bitsize[(int) (from_mode)]) < (mode_bitsize[(int) (to_mode)])
      && (mode_bitsize[(int) (to_mode)]) > (8 * ((target_flags & 0x00002000) ? 8 : 4)))
    {
      rtx insns;
      rtx lowpart;
      rtx fill_value;
      rtx lowfrom;
      int i;
      enum machine_mode lowpart_mode;
      int nwords = ((((mode_size[(int) (to_mode)])) + (((target_flags & 0x00002000) ? 8 : 4)) - 1) / (((target_flags & 0x00002000) ? 8 : 4)));


      if ((code = can_extend_p (to_mode, from_mode, unsignedp))
   != CODE_FOR_nothing)
 {




   if (optimize > 0 && ((enum rtx_code) (from)->code) == SUBREG)
     from = force_reg (from_mode, from);
   emit_unop_insn (code, to, from, equiv_code);
   return;
 }

      else if ((mode_bitsize[(int) (from_mode)]) < (8 * ((target_flags & 0x00002000) ? 8 : 4))
        && ((code = can_extend_p (to_mode, word_mode, unsignedp))
     != CODE_FOR_nothing))
 {
   if (((enum rtx_code) (to)->code) == REG)
     emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (to)));
   convert_move (gen_lowpart (word_mode, to), from, unsignedp);
   emit_unop_insn (code, to,
     gen_lowpart (word_mode, to), equiv_code);
   return;
 }


      start_sequence ();




      if (reg_overlap_mentioned_p (to, from))
 from = force_reg (from_mode, from);


      if ((mode_bitsize[(int) (from_mode)]) < (8 * ((target_flags & 0x00002000) ? 8 : 4)))
 lowpart_mode = word_mode;
      else
 lowpart_mode = from_mode;

      lowfrom = convert_to_mode (lowpart_mode, from, unsignedp);

      lowpart = gen_lowpart (lowpart_mode, to);
      emit_move_insn (lowpart, lowfrom);


      if (unsignedp)
 fill_value = (const_int_rtx[64]);
      else
 {

   if (1
       && insn_data[(int) CODE_FOR_slt].operand[0].mode == word_mode
       && 1 == -1)
     {
       emit_cmp_insn (lowfrom, (const_int_rtx[64]), NE, (rtx) 0,
        lowpart_mode, 0);
       fill_value = gen_reg_rtx (word_mode);
       emit_insn (gen_slt (fill_value));
     }
   else

     {
       fill_value
  = expand_shift (RSHIFT_EXPR, lowpart_mode, lowfrom,
    size_int_wide ((long long) ((mode_bitsize[(int) (lowpart_mode)]) - 1), SIZETYPE),
    (rtx) 0, 0);
       fill_value = convert_to_mode (word_mode, fill_value, 1);
     }
 }


      for (i = (mode_size[(int) (lowpart_mode)]) / ((target_flags & 0x00002000) ? 8 : 4); i < nwords; i++)
 {
   int index = (((target_flags & 0x00010000) != 0) ? nwords - i - 1 : i);
   rtx subword = operand_subword (to, index, 1, to_mode);

   if (subword == 0)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 963, __FUNCTION__);

   if (fill_value != subword)
     emit_move_insn (subword, fill_value);
 }

      insns = get_insns ();
      end_sequence ();

      emit_no_conflict_block (insns, to, from, (rtx) 0,
         gen_rtx_fmt_e (equiv_code, to_mode, copy_rtx (from)));
      return;
    }


  if ((mode_bitsize[(int) (from_mode)]) > (8 * ((target_flags & 0x00002000) ? 8 : 4))
      && (mode_bitsize[(int) (to_mode)]) <= (8 * ((target_flags & 0x00002000) ? 8 : 4)))
    {
      if (!((((enum rtx_code) (from)->code) == MEM
      && ! (((from))->volatil)
      && direct_load[(int) to_mode]
      && ! mode_dependent_address_p ((((from)->fld[0]).rtx)))
     || ((enum rtx_code) (from)->code) == REG
     || ((enum rtx_code) (from)->code) == SUBREG))
 from = force_reg (from_mode, from);
      convert_move (to, gen_lowpart (word_mode, from), 0);
      return;
    }


  if (to_mode == PQImode)
    {
      if (from_mode != QImode)
 from = convert_to_mode (QImode, from, unsignedp);
# 1005 "../../../kgccfe/gnu/expr.c"
      fancy_abort ("../../../kgccfe/gnu/expr.c", 1005, __FUNCTION__);
    }

  if (from_mode == PQImode)
    {
      if (to_mode != QImode)
 {
   from = convert_to_mode (QImode, from, unsignedp);
   from_mode = QImode;
 }
      else
 {







   fancy_abort ("../../../kgccfe/gnu/expr.c", 1024, __FUNCTION__);
 }
    }

  if (to_mode == PSImode)
    {
      if (from_mode != SImode)
 from = convert_to_mode (SImode, from, unsignedp);
# 1040 "../../../kgccfe/gnu/expr.c"
      fancy_abort ("../../../kgccfe/gnu/expr.c", 1040, __FUNCTION__);
    }

  if (from_mode == PSImode)
    {
      if (to_mode != SImode)
 {
   from = convert_to_mode (SImode, from, unsignedp);
   from_mode = SImode;
 }
      else
 {
# 1066 "../../../kgccfe/gnu/expr.c"
   fancy_abort ("../../../kgccfe/gnu/expr.c", 1066, __FUNCTION__);
 }
    }

  if (to_mode == PDImode)
    {
      if (from_mode != DImode)
 from = convert_to_mode (DImode, from, unsignedp);
# 1082 "../../../kgccfe/gnu/expr.c"
      fancy_abort ("../../../kgccfe/gnu/expr.c", 1082, __FUNCTION__);
    }

  if (from_mode == PDImode)
    {
      if (to_mode != DImode)
 {
   from = convert_to_mode (DImode, from, unsignedp);
   from_mode = DImode;
 }
      else
 {







   fancy_abort ("../../../kgccfe/gnu/expr.c", 1101, __FUNCTION__);
 }
    }





  if ((mode_bitsize[(int) (to_mode)]) < (mode_bitsize[(int) (from_mode)])
      && ((target_flags & 0x00002000) ? (((mode_bitsize[(int) (from_mode)])) <= 32 || ((mode_bitsize[(int) (to_mode)])) > 32) : 1))

    {
      if (!((((enum rtx_code) (from)->code) == MEM
      && ! (((from))->volatil)
      && direct_load[(int) to_mode]
      && ! mode_dependent_address_p ((((from)->fld[0]).rtx)))
     || ((enum rtx_code) (from)->code) == REG
     || ((enum rtx_code) (from)->code) == SUBREG))
 from = force_reg (from_mode, from);
      if (((enum rtx_code) (from)->code) == REG && (((from)->fld[0]).rtuint) < 176
   && ! mips_hard_regno_mode_ok[ (int)(to_mode) ][ ((((from)->fld[0]).rtuint)) ])
 from = copy_to_reg (from);
      emit_move_insn (to, gen_lowpart (to_mode, from));
      return;
    }


  if ((mode_bitsize[(int) (to_mode)]) > (mode_bitsize[(int) (from_mode)]))
    {

      if ((code = can_extend_p (to_mode, from_mode, unsignedp))
   != CODE_FOR_nothing)
 {
   if (flag_force_mem)
     from = force_not_mem (from);

   emit_unop_insn (code, to, from, equiv_code);
   return;
 }
      else
 {
   enum machine_mode intermediate;
   rtx tmp;
   tree shift_amount;


   for (intermediate = from_mode; intermediate != VOIDmode;
        intermediate = ((enum machine_mode)mode_wider_mode[(int) (intermediate)]))
     if (((can_extend_p (to_mode, intermediate, unsignedp)
    != CODE_FOR_nothing)
   || ((mode_size[(int) (to_mode)]) < (mode_size[(int) (intermediate)])
       && ((target_flags & 0x00002000) ? (((mode_bitsize[(int) (intermediate)])) <= 32 || ((mode_bitsize[(int) (to_mode)])) > 32) : 1)))

  && (can_extend_p (intermediate, from_mode, unsignedp)
      != CODE_FOR_nothing))
       {
  convert_move (to, convert_to_mode (intermediate, from,
         unsignedp), unsignedp);
  return;
       }



   shift_amount = build_int_2_wide ((unsigned long long) ((mode_bitsize[(int) (to_mode)]) - (mode_bitsize[(int) (from_mode)])), (long long) (0));

   from = gen_lowpart (to_mode, force_reg (from_mode, from));
   tmp = expand_shift (LSHIFT_EXPR, to_mode, from, shift_amount,
         to, unsignedp);
   tmp = expand_shift (RSHIFT_EXPR, to_mode, tmp, shift_amount,
         to, unsignedp);
   if (tmp != to)
     emit_move_insn (to, tmp);
   return;
 }
    }



  if (from_mode == DImode && to_mode == SImode)
    {

      if (((target_flags & 0x00002000)))
 {
   emit_unop_insn (CODE_FOR_truncdisi2, to, from, UNKNOWN);
   return;
 }

      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == DImode && to_mode == HImode)
    {

      if (((target_flags & 0x00002000)))
 {
   emit_unop_insn (CODE_FOR_truncdihi2, to, from, UNKNOWN);
   return;
 }

      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == DImode && to_mode == QImode)
    {

      if (((target_flags & 0x00002000)))
 {
   emit_unop_insn (CODE_FOR_truncdiqi2, to, from, UNKNOWN);
   return;
 }

      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == SImode && to_mode == HImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == SImode && to_mode == QImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == HImode && to_mode == QImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == TImode && to_mode == DImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == TImode && to_mode == SImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == TImode && to_mode == HImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }

  if (from_mode == TImode && to_mode == QImode)
    {







      convert_move (to, force_reg (from_mode, from), unsignedp);
      return;
    }




  if ((mode_bitsize[(int) (to_mode)]) < (mode_bitsize[(int) (from_mode)]))
    {
      rtx temp = force_reg (to_mode, gen_lowpart (to_mode, from));
      emit_move_insn (to, temp);
      return;
    }


  fancy_abort ("../../../kgccfe/gnu/expr.c", 1320, __FUNCTION__);
}
# 1333 "../../../kgccfe/gnu/expr.c"
rtx
convert_to_mode (mode, x, unsignedp)
     enum machine_mode mode;
     rtx x;
     int unsignedp;
{
  return convert_modes (mode, VOIDmode, x, unsignedp);
}
# 1355 "../../../kgccfe/gnu/expr.c"
rtx
convert_modes (mode, oldmode, x, unsignedp)
     enum machine_mode mode, oldmode;
     rtx x;
     int unsignedp;
{
  rtx temp;




  if (((enum rtx_code) (x)->code) == SUBREG && (((x))->in_struct)
      && (mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) >= (mode_size[(int) (mode)])
      && ((((x))->volatil) ? -1 : (x)->unchanging) == unsignedp)
    x = gen_lowpart (mode, x);

  if (((enum machine_mode) (x)->mode) != VOIDmode)
    oldmode = ((enum machine_mode) (x)->mode);

  if (mode == oldmode)
    return x;







  if (unsignedp && (mode_class[(int) (mode)]) == MODE_INT
      && (mode_bitsize[(int) (mode)]) == 2 * (8 * 8)
      && ((enum rtx_code) (x)->code) == CONST_INT && (((x)->fld[0]).rtwint) < 0)
    {
      long long val = (((x)->fld[0]).rtwint);

      if (oldmode != VOIDmode
   && (8 * 8) > (mode_bitsize[(int) (oldmode)]))
 {
   int width = (mode_bitsize[(int) (oldmode)]);


   val &= ((long long) 1 << width) - 1;
 }

      return immed_double_const (val, (long long) 0, mode);
    }






  if ((((enum rtx_code) (x)->code) == CONST_INT
       && (mode_bitsize[(int) (mode)]) <= (8 * 8))
      || ((mode_class[(int) (mode)]) == MODE_INT
   && (mode_class[(int) (oldmode)]) == MODE_INT
   && (((enum rtx_code) (x)->code) == CONST_DOUBLE
       || ((mode_size[(int) (mode)]) <= (mode_size[(int) (oldmode)])
    && ((((enum rtx_code) (x)->code) == MEM && ! (((x))->volatil)
         && direct_load[(int) mode])
        || (((enum rtx_code) (x)->code) == REG
     && (! ((((((x)->fld[0]).rtuint)) < 176))
         || mips_hard_regno_mode_ok[ (int)(mode) ][ ((((x)->fld[0]).rtuint)) ])
     && ((target_flags & 0x00002000) ? (((mode_bitsize[(int) (((enum machine_mode) (x)->mode))])) <= 32 || ((mode_bitsize[(int) (mode)])) > 32) : 1)))))))

    {



      if (((enum rtx_code) (x)->code) == CONST_INT && oldmode != VOIDmode
   && (mode_size[(int) (mode)]) > (mode_size[(int) (oldmode)]))
 {
   long long val = (((x)->fld[0]).rtwint);
   int width = (mode_bitsize[(int) (oldmode)]);



   val &= ((long long) 1 << width) - 1;
   if (! unsignedp
       && (val & ((long long) 1 << (width - 1))))
     val |= (long long) (-1) << width;

   return gen_int_mode (val, mode);
 }

      return gen_lowpart (mode, x);
    }



  if (((mode_class[(int) (mode)]) == MODE_VECTOR_INT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && ((enum machine_mode) (x)->mode) == VOIDmode)
    {
      if ((mode_bitsize[(int) (mode)]) != (mode_bitsize[(int) (oldmode)]))
 fancy_abort ("../../../kgccfe/gnu/expr.c", 1447, __FUNCTION__);
      return simplify_gen_subreg (mode, x, oldmode, 0);
    }

  temp = gen_reg_rtx (mode);
  convert_move (temp, x, unsignedp);
  return temp;
}
# 1478 "../../../kgccfe/gnu/expr.c"
int
can_move_by_pieces (len, align)
     unsigned long long len;
     unsigned int align;
{
  return (move_by_pieces_ninsns (len, align) < (unsigned int) 2);
}
# 1499 "../../../kgccfe/gnu/expr.c"
rtx
move_by_pieces (to, from, len, align, endp)
     rtx to, from;
     unsigned long long len;
     unsigned int align;
     int endp;
{
  struct move_by_pieces data;
  rtx to_addr, from_addr = (((from)->fld[0]).rtx);
  unsigned int max_size = ((target_flags & 0x00002000) ? 8 : 4) + 1;
  enum machine_mode mode = VOIDmode, tmode;
  enum insn_code icode;

  data.offset = 0;
  data.from_addr = from_addr;
  if (to)
    {
      to_addr = (((to)->fld[0]).rtx);
      data.to = to;
      data.autinc_to
 = (((enum rtx_code) (to_addr)->code) == PRE_INC || ((enum rtx_code) (to_addr)->code) == PRE_DEC
    || ((enum rtx_code) (to_addr)->code) == POST_INC || ((enum rtx_code) (to_addr)->code) == POST_DEC);
      data.reverse
 = (((enum rtx_code) (to_addr)->code) == PRE_DEC || ((enum rtx_code) (to_addr)->code) == POST_DEC);
    }
  else
    {
      to_addr = (rtx) 0;
      data.to = (rtx) 0;
      data.autinc_to = 1;

      data.reverse = 1;



    }
  data.to_addr = to_addr;
  data.from = from;
  data.autinc_from
    = (((enum rtx_code) (from_addr)->code) == PRE_INC || ((enum rtx_code) (from_addr)->code) == PRE_DEC
       || ((enum rtx_code) (from_addr)->code) == POST_INC
       || ((enum rtx_code) (from_addr)->code) == POST_DEC);

  data.explicit_inc_from = 0;
  data.explicit_inc_to = 0;
  if (data.reverse) data.offset = len;
  data.len = len;




  if (!(data.autinc_from && data.autinc_to)
      && move_by_pieces_ninsns (len, align) > 2)
    {

      for (tmode = class_narrowest_mode[(int) (MODE_INT)];
    tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
 if ((mode_size[(int) (tmode)]) < max_size)
   mode = tmode;

      if (0 && data.reverse && ! data.autinc_from)
 {
   data.from_addr = copy_addr_to_reg (plus_constant_wide ((from_addr), (long long) (len)));
   data.autinc_from = 1;
   data.explicit_inc_from = -1;
 }
      if (0 && ! data.autinc_from)
 {
   data.from_addr = copy_addr_to_reg (from_addr);
   data.autinc_from = 1;
   data.explicit_inc_from = 1;
 }
      if (!data.autinc_from && (((enum rtx_code) (from_addr)->code) == LABEL_REF || ((enum rtx_code) (from_addr)->code) == SYMBOL_REF || ((enum rtx_code) (from_addr)->code) == CONST_INT || ((enum rtx_code) (from_addr)->code) == CONST_DOUBLE || ((enum rtx_code) (from_addr)->code) == CONST || ((enum rtx_code) (from_addr)->code) == HIGH || ((enum rtx_code) (from_addr)->code) == CONST_VECTOR || ((enum rtx_code) (from_addr)->code) == CONSTANT_P_RTX))
 data.from_addr = copy_addr_to_reg (from_addr);
      if (0 && data.reverse && ! data.autinc_to)
 {
   data.to_addr = copy_addr_to_reg (plus_constant_wide ((to_addr), (long long) (len)));
   data.autinc_to = 1;
   data.explicit_inc_to = -1;
 }
      if (0 && ! data.reverse && ! data.autinc_to)
 {
   data.to_addr = copy_addr_to_reg (to_addr);
   data.autinc_to = 1;
   data.explicit_inc_to = 1;
 }
      if (!data.autinc_to && (((enum rtx_code) (to_addr)->code) == LABEL_REF || ((enum rtx_code) (to_addr)->code) == SYMBOL_REF || ((enum rtx_code) (to_addr)->code) == CONST_INT || ((enum rtx_code) (to_addr)->code) == CONST_DOUBLE || ((enum rtx_code) (to_addr)->code) == CONST || ((enum rtx_code) (to_addr)->code) == HIGH || ((enum rtx_code) (to_addr)->code) == CONST_VECTOR || ((enum rtx_code) (to_addr)->code) == CONSTANT_P_RTX))
 data.to_addr = copy_addr_to_reg (to_addr);
    }

  if (! 1
      || align > ((target_flags & 0x00002000) ? 8 : 4) * 8 || align >= (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
    align = ((target_flags & 0x00002000) ? 8 : 4) * 8;




  while (max_size > 1)
    {
      for (tmode = class_narrowest_mode[(int) (MODE_INT)];
    tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
 if ((mode_size[(int) (tmode)]) < max_size)
   mode = tmode;

      if (mode == VOIDmode)
 break;

      icode = (optab_table[OTI_mov])->handlers[(int) mode].insn_code;
      if (icode != CODE_FOR_nothing && align >= get_mode_alignment (mode))
 move_by_pieces_1 ((*insn_data[(int) (icode)].genfun), mode, &data);

      max_size = (mode_size[(int) (mode)]);
    }


  if (data.len > 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1615, __FUNCTION__);

  if (endp)
    {
      rtx to1;

      if (data.reverse)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 1622, __FUNCTION__);
      if (data.autinc_to)
 {
   if (endp == 2)
     {
       if (0 && data.explicit_inc_to > 0)
  emit_insn (gen_add2_insn (data.to_addr, (const_int_rtx[64 -1])));
       else
  data.to_addr = copy_addr_to_reg (plus_constant_wide ((data.to_addr), (long long) (-1)));

     }
   to1 = adjust_automodify_address_1 (data.to, QImode, data.to_addr, data.offset, 1);

 }
      else
 {
   if (endp == 2)
     --data.offset;
   to1 = adjust_address_1 (data.to, QImode, data.offset, 1, 1);
 }
      return to1;
    }
  else
    return data.to;
}




static unsigned long long
move_by_pieces_ninsns (l, align)
     unsigned long long l;
     unsigned int align;
{
  unsigned long long n_insns = 0;
  unsigned long long max_size = ((target_flags & 0x00002000) ? 8 : 4) + 1;

  if (! 1
      || align > ((target_flags & 0x00002000) ? 8 : 4) * 8 || align >= (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
    align = ((target_flags & 0x00002000) ? 8 : 4) * 8;

  while (max_size > 1)
    {
      enum machine_mode mode = VOIDmode, tmode;
      enum insn_code icode;

      for (tmode = class_narrowest_mode[(int) (MODE_INT)];
    tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
 if ((mode_size[(int) (tmode)]) < max_size)
   mode = tmode;

      if (mode == VOIDmode)
 break;

      icode = (optab_table[OTI_mov])->handlers[(int) mode].insn_code;
      if (icode != CODE_FOR_nothing && align >= get_mode_alignment (mode))
 n_insns += l / (mode_size[(int) (mode)]), l %= (mode_size[(int) (mode)]);

      max_size = (mode_size[(int) (mode)]);
    }

  if (l)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1684, __FUNCTION__);
  return n_insns;
}





static void
move_by_pieces_1 (genfun, mode, data)
     rtx (*genfun) (rtx, ...);
     enum machine_mode mode;
     struct move_by_pieces *data;
{
  unsigned int size = (mode_size[(int) (mode)]);
  rtx to1 = (rtx) 0, from1;

  while (data->len >= size)
    {
      if (data->reverse)
 data->offset -= size;

      if (data->to)
 {
   if (data->autinc_to)
     to1 = adjust_automodify_address_1 (data->to, mode, data->to_addr, data->offset, 1);

   else
     to1 = adjust_address_1 (data->to, mode, data->offset, 1, 1);
 }

      if (data->autinc_from)
 from1 = adjust_automodify_address_1 (data->from, mode, data->from_addr, data->offset, 1);

      else
 from1 = adjust_address_1 (data->from, mode, data->offset, 1, 1);

      if (0 && data->explicit_inc_to < 0)
 emit_insn (gen_add2_insn (data->to_addr,
      gen_rtx_CONST_INT (VOIDmode, (long long) (-(long long)size))));
      if (0 && data->explicit_inc_from < 0)
 emit_insn (gen_add2_insn (data->from_addr,
      gen_rtx_CONST_INT (VOIDmode, (long long) (-(long long)size))));

      if (data->to)
 emit_insn ((*genfun) (to1, from1));
      else
 {



   fancy_abort ("../../../kgccfe/gnu/expr.c", 1735, __FUNCTION__);

 }

      if (0 && data->explicit_inc_to > 0)
 emit_insn (gen_add2_insn (data->to_addr, gen_rtx_CONST_INT (VOIDmode, (long long) (size))));
      if (0 && data->explicit_inc_from > 0)
 emit_insn (gen_add2_insn (data->from_addr, gen_rtx_CONST_INT (VOIDmode, (long long) (size))));

      if (! data->reverse)
 data->offset += size;

      data->len -= size;
    }
}
# 1763 "../../../kgccfe/gnu/expr.c"
rtx
emit_block_move (x, y, size, method)
     rtx x, y, size;
     enum block_op_methods method;
{
  _Bool may_use_call;
  rtx retval = 0;
  unsigned int align;

  switch (method)
    {
    case BLOCK_OP_NORMAL:
      may_use_call = 1;
      break;

    case BLOCK_OP_CALL_PARM:
      may_use_call = block_move_libcall_safe_for_call_parm ();



      ((cfun->expr->x_inhibit_defer_pop) += 1);
      break;

    case BLOCK_OP_NO_LIBCALL:
      may_use_call = 0;
      break;

    default:
      fancy_abort ("../../../kgccfe/gnu/expr.c", 1791, __FUNCTION__);
    }

  align = ((((((x)->fld[1]).rtmem) != 0 ? (((x)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (x)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (x)->mode)) : 8))) < (((((y)->fld[1]).rtmem) != 0 ? (((y)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (y)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (y)->mode)) : 8))) ? (((((x)->fld[1]).rtmem) != 0 ? (((x)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (x)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (x)->mode)) : 8))) : (((((y)->fld[1]).rtmem) != 0 ? (((y)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (y)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (y)->mode)) : 8))));

  if (((enum machine_mode) (x)->mode) != BLKmode)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1797, __FUNCTION__);
  if (((enum machine_mode) (y)->mode) != BLKmode)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1799, __FUNCTION__);

  x = protect_from_queue (x, 1);
  y = protect_from_queue (y, 0);
  size = protect_from_queue (size, 0);

  if (((enum rtx_code) (x)->code) != MEM)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1806, __FUNCTION__);
  if (((enum rtx_code) (y)->code) != MEM)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1808, __FUNCTION__);
  if (size == 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 1810, __FUNCTION__);



  if (((enum rtx_code) (size)->code) == CONST_INT)
    {
      x = shallow_copy_rtx (x);
      y = shallow_copy_rtx (y);
      set_mem_size (x, size);
      set_mem_size (y, size);
    }

  if (size == (const_int_rtx[64]))
    ;
  else if (((enum rtx_code) (size)->code) == CONST_INT
    && (move_by_pieces_ninsns ((((size)->fld[0]).rtwint), align) < (unsigned int) 2))
    move_by_pieces (x, y, (((size)->fld[0]).rtwint), align, 0);
  else if (emit_block_move_via_movstr (x, y, size, align))
    ;
  else if (may_use_call)
    retval = emit_block_move_via_libcall (x, y, size);
  else
    emit_block_move_via_loop (x, y, size, align);

  if (method == BLOCK_OP_CALL_PARM)
    ((cfun->expr->x_inhibit_defer_pop) -= 1);

  return retval;
}





static _Bool
block_move_libcall_safe_for_call_parm ()
{
  if (0)
    return 1;
  else
    {

      static enum {
 takes_regs_uninit, takes_regs_no, takes_regs_yes
      } takes_regs = takes_regs_uninit;

      switch (takes_regs)
 {
 case takes_regs_uninit:
   {
     CUMULATIVE_ARGS args_so_far;
     tree fn, arg;

     fn = emit_block_move_libcall_fn (0);
     init_cumulative_args (&args_so_far, ((fn)->common.type), (rtx) 0);

     arg = ((((fn)->common.type))->type.values);
     for ( ; arg != global_trees[TI_VOID_LIST_NODE] ; arg = ((arg)->common.chain))
       {
  enum machine_mode mode = ((((arg)->list.value))->type.mode);
  rtx tmp = function_arg( &args_so_far, mode, (tree) ((void *)0), 1);
  if (!tmp || !(((enum rtx_code) (tmp)->code) == REG))
    goto fail_takes_regs;

  if (function_arg_partial_nregs (&args_so_far, mode, (tree) ((void *)0), 1))

    goto fail_takes_regs;

  function_arg_advance (&args_so_far, mode, (tree) ((void *)0), 1);
       }
   }
   takes_regs = takes_regs_yes;


 case takes_regs_yes:
   return 1;

 fail_takes_regs:
   takes_regs = takes_regs_no;

 case takes_regs_no:
   return 0;

 default:
   fancy_abort ("../../../kgccfe/gnu/expr.c", 1894, __FUNCTION__);
 }
    }
}




static _Bool
emit_block_move_via_movstr (x, y, size, align)
     rtx x, y, size;
     unsigned int align;
{




  rtx opalign = gen_rtx_CONST_INT (VOIDmode, (long long) (align / 8));
  enum machine_mode mode;


  volatile_ok = 1;

  for (mode = class_narrowest_mode[(int) (MODE_INT)]; mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    {
      enum insn_code code = movstr_optab[(int) mode];
      insn_operand_predicate_fn pred;

      if (code != CODE_FOR_nothing




   && ((((enum rtx_code) (size)->code) == CONST_INT
        && ((unsigned long long) (((size)->fld[0]).rtwint)
     <= (mode_mask_array[(int) (mode)] >> 1)))
       || (mode_bitsize[(int) (mode)]) >= (8 * ((target_flags & 0x00002000) ? 8 : 4)))
   && ((pred = insn_data[(int) code].operand[0].predicate) == 0
       || (*pred) (x, BLKmode))
   && ((pred = insn_data[(int) code].operand[1].predicate) == 0
       || (*pred) (y, BLKmode))
   && ((pred = insn_data[(int) code].operand[3].predicate) == 0
       || (*pred) (opalign, VOIDmode)))
 {
   rtx op2;
   rtx last = get_last_insn ();
   rtx pat;

   op2 = convert_to_mode (mode, size, 1);
   pred = insn_data[(int) code].operand[2].predicate;
   if (pred != 0 && ! (*pred) (op2, mode))
     op2 = copy_to_mode_reg (mode, op2);






   pat = (*insn_data[(int) ((int) code)].genfun) (x, y, op2, opalign);
   if (pat)
     {
       emit_insn (pat);
       volatile_ok = 0;
       return 1;
     }
   else
     delete_insns_since (last);
 }
    }

  volatile_ok = 0;
  return 0;
}




static rtx
emit_block_move_via_libcall (dst, src, size)
     rtx dst, src, size;
{
  tree call_expr, arg_list, fn, src_tree, dst_tree, size_tree;
  enum machine_mode size_mode;
  rtx retval;
# 2001 "../../../kgccfe/gnu/expr.c"
  dst = copy_to_mode_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((dst)->fld[0]).rtx));
  src = copy_to_mode_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((src)->fld[0]).rtx));

  if (1)
    size_mode = ((sizetype_tab[(int) SIZETYPE])->type.mode);
  else
    size_mode = ((integer_types[itk_unsigned_int])->type.mode);
  size = convert_to_mode (size_mode, size, 1);
  size = copy_to_mode_reg (size_mode, size);
# 2019 "../../../kgccfe/gnu/expr.c"
  dst_tree = make_tree (global_trees[TI_PTR_TYPE], dst);
  src_tree = make_tree (global_trees[TI_PTR_TYPE], src);
  if (1)
    size_tree = make_tree (sizetype_tab[(int) SIZETYPE], size);
  else
    size_tree = make_tree (integer_types[itk_unsigned_int], size);

  fn = emit_block_move_libcall_fn (1);
  arg_list = tree_cons ((tree) ((void *)0), size_tree, (tree) ((void *)0));
  if (1)
    {
      arg_list = tree_cons ((tree) ((void *)0), src_tree, arg_list);
      arg_list = tree_cons ((tree) ((void *)0), dst_tree, arg_list);
    }
  else
    {
      arg_list = tree_cons ((tree) ((void *)0), dst_tree, arg_list);
      arg_list = tree_cons ((tree) ((void *)0), src_tree, arg_list);
    }


  call_expr = build1 (ADDR_EXPR, build_pointer_type (((fn)->common.type)), fn);
  call_expr = build (CALL_EXPR, ((((fn)->common.type))->common.type),
       call_expr, arg_list, (tree) ((void *)0));
  ((call_expr)->common.side_effects_flag) = 1;

  retval = expand_expr (call_expr, (rtx) 0, VOIDmode, 0);




  if ((((dst))->unchanging))
    emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (dst)));

  return (1 ? retval : (rtx) 0);
}





static tree block_move_fn;

void
init_block_move_fn (asmspec)
     const char *asmspec;
{
  if (!block_move_fn)
    {
      tree args, fn;

      if (1)
 {
   fn = (__builtin_constant_p ("memcpy") ? get_identifier_with_length (("memcpy"), (unsigned) strlen ("memcpy")) : (get_identifier) ("memcpy"));
   args = build_function_type_list (global_trees[TI_PTR_TYPE], global_trees[TI_PTR_TYPE],
        global_trees[TI_CONST_PTR_TYPE], sizetype_tab[(int) SIZETYPE],
        (tree) ((void *)0));
 }
      else
 {
   fn = (__builtin_constant_p ("bcopy") ? get_identifier_with_length (("bcopy"), (unsigned) strlen ("bcopy")) : (get_identifier) ("bcopy"));
   args = build_function_type_list (global_trees[TI_VOID_TYPE], global_trees[TI_CONST_PTR_TYPE],
        global_trees[TI_PTR_TYPE], integer_types[itk_unsigned_int],
        (tree) ((void *)0));
 }

      fn = build_decl (FUNCTION_DECL, fn, args);
      ((fn)->decl.external_flag) = 1;
      ((fn)->common.public_flag) = 1;
      ((fn)->decl.artificial_flag) = 1;
      ((fn)->common.nothrow_flag) = 1;

      block_move_fn = fn;
    }

  if (asmspec)
    {
      ((block_move_fn)->decl.rtl = ((rtx) 0));
      ((block_move_fn)->decl.assembler_name = ((__builtin_constant_p (asmspec) ? get_identifier_with_length ((asmspec), (unsigned) strlen (asmspec)) : (get_identifier) (asmspec))));
    }
}

static tree
emit_block_move_libcall_fn (for_call)
     int for_call;
{
  static _Bool emitted_extern;

  if (!block_move_fn)
    init_block_move_fn (((void *)0));

  if (for_call && !emitted_extern)
    {
      emitted_extern = 1;
      make_decl_rtl (block_move_fn, ((void *)0));
      assemble_external (block_move_fn);
    }

  return block_move_fn;
}





static void
emit_block_move_via_loop (x, y, size, align)
     rtx x, y, size;
     unsigned int align __attribute__ ((__unused__));
{
  rtx cmp_label, top_label, iter, x_addr, y_addr, tmp;
  enum machine_mode iter_mode;

  iter_mode = ((enum machine_mode) (size)->mode);
  if (iter_mode == VOIDmode)
    iter_mode = word_mode;

  top_label = gen_label_rtx ();
  cmp_label = gen_label_rtx ();
  iter = gen_reg_rtx (iter_mode);

  emit_move_insn (iter, (const_int_rtx[64]));

  x_addr = force_operand ((((x)->fld[0]).rtx), (rtx) 0);
  y_addr = force_operand ((((y)->fld[0]).rtx), (rtx) 0);
  do_pending_stack_adjust ();

  emit_note (((void *)0), NOTE_INSN_LOOP_BEG);

  emit_jump (cmp_label);
  emit_label (top_label);

  tmp = convert_modes ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), iter_mode, iter, 1);
  x_addr = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (x_addr), (tmp));
  y_addr = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (y_addr), (tmp));
  x = change_address (x, QImode, x_addr);
  y = change_address (y, QImode, y_addr);

  emit_move_insn (x, y);

  tmp = expand_simple_binop (iter_mode, PLUS, iter, (const_int_rtx[64 +1]), iter,
        1, OPTAB_LIB_WIDEN);
  if (tmp != iter)
    emit_move_insn (iter, tmp);

  emit_note (((void *)0), NOTE_INSN_LOOP_CONT);
  emit_label (cmp_label);

  emit_cmp_and_jump_insns (iter, size, LT, (rtx) 0, iter_mode,
      1, top_label);

  emit_note (((void *)0), NOTE_INSN_LOOP_END);
}




void
move_block_to_reg (regno, x, nregs, mode)
     int regno;
     rtx x;
     int nregs;
     enum machine_mode mode;
{
  int i;





  if (nregs == 0)
    return;

  if ((((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX) && ! ((((enum rtx_code) (x)->code) != CONST_DOUBLE || mips_const_double_ok (x, ((enum machine_mode) (x)->mode))) && ! (((enum rtx_code) (x)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (x, ((enum machine_mode) (x)->mode), 0, 0))))
    x = validize_mem (force_const_mem (mode, x));
# 2212 "../../../kgccfe/gnu/expr.c"
  for (i = 0; i < nregs; i++)
    emit_move_insn (gen_rtx_REG (word_mode, regno + i),
      operand_subword_force (x, i, mode));
}





void
move_block_from_reg (regno, x, nregs, size)
     int regno;
     rtx x;
     int nregs;
     int size;
{
  int i;




  enum machine_mode mode;

  if (nregs == 0)
    return;



  if (size <= ((target_flags & 0x00002000) ? 8 : 4)
      && (mode = mode_for_size (size * 8, MODE_INT, 0)) != BLKmode)
    {
      emit_move_insn (adjust_address_1 (x, mode, 0, 1, 1), gen_rtx_REG (mode, regno));
      return;
    }




  if (size < ((target_flags & 0x00002000) ? 8 : 4) && ((target_flags & 0x00010000) != 0))
    {
      rtx tem = operand_subword (x, 0, 1, BLKmode);
      rtx shift;

      if (tem == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 2256, __FUNCTION__);

      shift = expand_shift (LSHIFT_EXPR, word_mode,
       gen_rtx_REG (word_mode, regno),
       build_int_2_wide ((unsigned long long) ((((target_flags & 0x00002000) ? 8 : 4) - size) * 8), (long long) (0)), (rtx) 0, 0);

      emit_move_insn (tem, shift);
      return;
    }
# 2283 "../../../kgccfe/gnu/expr.c"
  for (i = 0; i < nregs; i++)
    {
      rtx tem = operand_subword (x, i, 1, BLKmode);

      if (tem == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 2288, __FUNCTION__);

      emit_move_insn (tem, gen_rtx_REG (word_mode, regno + i));
    }
}







rtx
gen_group_rtx (orig)
     rtx orig;
{
  int i, length;
  rtx *tmps;

  if (((enum rtx_code) (orig)->code) != PARALLEL)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2308, __FUNCTION__);

  length = (((((orig)->fld[0]).rtvec))->num_elem);
  tmps = (rtx *) __builtin_alloca(sizeof (rtx) * length);


  i = ((((((((orig)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx) ? 0 : 1;

  if (i)
    tmps[0] = 0;

  for (; i < length; i++)
    {
      enum machine_mode mode = ((enum machine_mode) (((((((((orig)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->mode);
      rtx offset = ((((((((orig)->fld[0]).rtvec))->elem[i]))->fld[1]).rtx);

      tmps[i] = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_reg_rtx (mode)), (offset));
    }

  return gen_rtx_fmt_E (PARALLEL, (((enum machine_mode) (orig)->mode)), (gen_rtvec_v (length, tmps)));
}
# 2340 "../../../kgccfe/gnu/expr.c"
void
emit_group_load (dst, orig_src, ssize)
     rtx dst, orig_src;
     int ssize;
{
  rtx *tmps, src;
  int start, i;

  if (((enum rtx_code) (dst)->code) != PARALLEL)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2349, __FUNCTION__);



  if (((((((((dst)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))
    start = 0;
  else
    start = 1;

  tmps = (rtx *) __builtin_alloca(sizeof (rtx) * (((((dst)->fld[0]).rtvec))->num_elem));


  for (i = start; i < (((((dst)->fld[0]).rtvec))->num_elem); i++)
    {
      enum machine_mode mode = ((enum machine_mode) (((((((((dst)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->mode);
      long long bytepos = (((((((((((dst)->fld[0]).rtvec))->elem[i]))->fld[1]).rtx))->fld[0]).rtwint);
      unsigned int bytelen = (mode_size[(int) (mode)]);
      int shift = 0;


      if (ssize >= 0 && bytepos + (long long) bytelen > ssize)
 {
   shift = (bytelen - (ssize - bytepos)) * 8;
   bytelen = ssize - bytepos;
   if (bytelen <= 0)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 2374, __FUNCTION__);
 }




      src = orig_src;
      if (((enum rtx_code) (orig_src)->code) != MEM
   && (!(((enum rtx_code) (orig_src)->code) == LABEL_REF || ((enum rtx_code) (orig_src)->code) == SYMBOL_REF || ((enum rtx_code) (orig_src)->code) == CONST_INT || ((enum rtx_code) (orig_src)->code) == CONST_DOUBLE || ((enum rtx_code) (orig_src)->code) == CONST || ((enum rtx_code) (orig_src)->code) == HIGH || ((enum rtx_code) (orig_src)->code) == CONST_VECTOR || ((enum rtx_code) (orig_src)->code) == CONSTANT_P_RTX)
       || (((enum machine_mode) (orig_src)->mode) != mode
    && ((enum machine_mode) (orig_src)->mode) != VOIDmode)))
 {
   if (((enum machine_mode) (orig_src)->mode) == VOIDmode)
     src = gen_reg_rtx (mode);
   else
     src = gen_reg_rtx (((enum machine_mode) (orig_src)->mode));

   emit_move_insn (src, orig_src);
 }


      if (((enum rtx_code) (src)->code) == MEM
   && ((((src)->fld[1]).rtmem) != 0 ? (((src)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (src)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (src)->mode)) : 8)) >= get_mode_alignment (mode)
   && bytepos * 8 % get_mode_alignment (mode) == 0
   && bytelen == (mode_size[(int) (mode)]))
 {
   tmps[i] = gen_reg_rtx (mode);
   emit_move_insn (tmps[i], adjust_address_1 (src, mode, bytepos, 1, 1));
 }
      else if (((enum rtx_code) (src)->code) == CONCAT)
 {
   unsigned int slen = (mode_size[(int) (((enum machine_mode) (src)->mode))]);
   unsigned int slen0 = (mode_size[(int) (((enum machine_mode) ((((src)->fld[0]).rtx))->mode))]);

   if ((bytepos == 0 && bytelen == slen0)
       || (bytepos != 0 && bytepos + bytelen <= slen))
     {




       tmps[i] = (((src)->fld[bytepos / slen0]).rtx);
       if (! (((enum rtx_code) (tmps[i])->code) == LABEL_REF || ((enum rtx_code) (tmps[i])->code) == SYMBOL_REF || ((enum rtx_code) (tmps[i])->code) == CONST_INT || ((enum rtx_code) (tmps[i])->code) == CONST_DOUBLE || ((enum rtx_code) (tmps[i])->code) == CONST || ((enum rtx_code) (tmps[i])->code) == HIGH || ((enum rtx_code) (tmps[i])->code) == CONST_VECTOR || ((enum rtx_code) (tmps[i])->code) == CONSTANT_P_RTX)
    && (((enum rtx_code) (tmps[i])->code) != REG || ((enum machine_mode) (tmps[i])->mode) != mode))
  tmps[i] = extract_bit_field (tmps[i], bytelen * 8,
          (bytepos % slen0) * 8,
          1, (rtx) 0, mode, mode, ssize);
     }
   else if (bytepos == 0)
     {
       rtx mem = assign_stack_temp (((enum machine_mode) (src)->mode), slen, 0);
       emit_move_insn (mem, src);
       tmps[i] = adjust_address_1 (mem, mode, 0, 1, 1);
     }
   else
     fancy_abort ("../../../kgccfe/gnu/expr.c", 2429, __FUNCTION__);
 }
      else if ((((enum rtx_code) (src)->code) == LABEL_REF || ((enum rtx_code) (src)->code) == SYMBOL_REF || ((enum rtx_code) (src)->code) == CONST_INT || ((enum rtx_code) (src)->code) == CONST_DOUBLE || ((enum rtx_code) (src)->code) == CONST || ((enum rtx_code) (src)->code) == HIGH || ((enum rtx_code) (src)->code) == CONST_VECTOR || ((enum rtx_code) (src)->code) == CONSTANT_P_RTX)
        || (((enum rtx_code) (src)->code) == REG && ((enum machine_mode) (src)->mode) == mode))
 tmps[i] = src;
      else
 tmps[i] = extract_bit_field (src, bytelen * 8,
         bytepos * 8, 1, (rtx) 0,
         mode, mode, ssize);

      if (((target_flags & 0x00010000) != 0) && shift)
 expand_binop (mode, (optab_table[OTI_ashl]), tmps[i], gen_rtx_CONST_INT (VOIDmode, (long long) (shift)),
        tmps[i], 0, OPTAB_WIDEN);
    }

  emit_queue ();


  for (i = start; i < (((((dst)->fld[0]).rtvec))->num_elem); i++)
    emit_move_insn (((((((((dst)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx), tmps[i]);
}




void
emit_group_move (dst, src)
     rtx dst, src;
{
  int i;

  if (((enum rtx_code) (src)->code) != PARALLEL
      || ((enum rtx_code) (dst)->code) != PARALLEL
      || (((((src)->fld[0]).rtvec))->num_elem) != (((((dst)->fld[0]).rtvec))->num_elem))
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2463, __FUNCTION__);


  for (i = ((((((((src)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx) ? 0 : 1; i < (((((src)->fld[0]).rtvec))->num_elem); i++)
    emit_move_insn (((((((((dst)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx),
      ((((((((src)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx));
}





void
emit_group_store (orig_dst, src, ssize)
     rtx orig_dst, src;
     int ssize;
{
  rtx *tmps, dst;
  int start, i;

  if (((enum rtx_code) (src)->code) != PARALLEL)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2484, __FUNCTION__);



  if (((((((((src)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))
    start = 0;
  else
    start = 1;

  tmps = (rtx *) __builtin_alloca(sizeof (rtx) * (((((src)->fld[0]).rtvec))->num_elem));


  for (i = start; i < (((((src)->fld[0]).rtvec))->num_elem); i++)
    {
      rtx reg = ((((((((src)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx);
      tmps[i] = gen_reg_rtx (((enum machine_mode) (reg)->mode));
      emit_move_insn (tmps[i], reg);
    }
  emit_queue ();



  dst = orig_dst;
  if (((enum rtx_code) (dst)->code) == PARALLEL)
    {
      rtx temp;




      if (rtx_equal_p (dst, src))
 return;





      temp = assign_stack_temp (((enum machine_mode) (dst)->mode), ssize, 0);
      emit_group_store (temp, src, ssize);
      emit_group_load (dst, temp, ssize);
      return;
    }
  else if (((enum rtx_code) (dst)->code) != MEM && ((enum rtx_code) (dst)->code) != CONCAT)
    {
      dst = gen_reg_rtx (((enum machine_mode) (orig_dst)->mode));

      emit_move_insn (dst, (const_tiny_rtx[0][(int) (((enum machine_mode) (orig_dst)->mode))]));
    }


  for (i = start; i < (((((src)->fld[0]).rtvec))->num_elem); i++)
    {
      long long bytepos = (((((((((((src)->fld[0]).rtvec))->elem[i]))->fld[1]).rtx))->fld[0]).rtwint);
      enum machine_mode mode = ((enum machine_mode) (tmps[i])->mode);
      unsigned int bytelen = (mode_size[(int) (mode)]);
      rtx dest = dst;


      if (ssize >= 0 && bytepos + (long long) bytelen > ssize)
 {
   if (((target_flags & 0x00010000) != 0))
     {
       int shift = (bytelen - (ssize - bytepos)) * 8;
       expand_binop (mode, (optab_table[OTI_ashr]), tmps[i], gen_rtx_CONST_INT (VOIDmode, (long long) (shift)),
       tmps[i], 0, OPTAB_WIDEN);
     }
   bytelen = ssize - bytepos;
 }

      if (((enum rtx_code) (dst)->code) == CONCAT)
 {
   if (bytepos + bytelen <= (mode_size[(int) (((enum machine_mode) ((((dst)->fld[0]).rtx))->mode))]))
     dest = (((dst)->fld[0]).rtx);
   else if (bytepos >= (mode_size[(int) (((enum machine_mode) ((((dst)->fld[0]).rtx))->mode))]))
     {
       bytepos -= (mode_size[(int) (((enum machine_mode) ((((dst)->fld[0]).rtx))->mode))]);
       dest = (((dst)->fld[1]).rtx);
     }
   else if (bytepos == 0 && (((((src)->fld[0]).rtvec))->num_elem))
     {
       dest = assign_stack_temp (((enum machine_mode) (dest)->mode),
            (mode_size[(int) (((enum machine_mode) (dest)->mode))]), 0);
       emit_move_insn (adjust_address_1 (dest, ((enum machine_mode) (tmps[i])->mode), bytepos, 1, 1),
         tmps[i]);
       dst = dest;
       break;
     }
   else
     fancy_abort ("../../../kgccfe/gnu/expr.c", 2572, __FUNCTION__);
 }


      if (((enum rtx_code) (dest)->code) == MEM
   && ((((dest)->fld[1]).rtmem) != 0 ? (((dest)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (dest)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (dest)->mode)) : 8)) >= get_mode_alignment (mode)
   && bytepos * 8 % get_mode_alignment (mode) == 0
   && bytelen == (mode_size[(int) (mode)]))
 emit_move_insn (adjust_address_1 (dest, mode, bytepos, 1, 1), tmps[i]);
      else
 store_bit_field (dest, bytelen * 8, bytepos * 8,
    mode, tmps[i], ssize);
    }

  emit_queue ();


  if (orig_dst != dst)
    emit_move_insn (orig_dst, dst);
}
# 2602 "../../../kgccfe/gnu/expr.c"
rtx
copy_blkmode_from_reg (tgtblk, srcreg, type)
     rtx tgtblk;
     rtx srcreg;
     tree type;
{
  unsigned long long bytes = int_size_in_bytes (type);
  rtx src = ((void *)0), dst = ((void *)0);
  unsigned long long bitsize = ((((type)->type.align)) < ((8 * ((target_flags & 0x00002000) ? 8 : 4))) ? (((type)->type.align)) : ((8 * ((target_flags & 0x00002000) ? 8 : 4))));
  unsigned long long bitpos, xbitpos, big_endian_correction = 0;

  if (tgtblk == 0)
    {
      tgtblk = assign_temp (build_qualified_type (type,
        (((((type)->common.readonly_flag) * 0x1) | (((type)->common.volatile_flag) * 0x2) | (((type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->common.type)) * 0x8))
         | 0x1)),
       0, 1, 1);
      preserve_temp_slots (tgtblk);
    }




  if (((enum machine_mode) (srcreg)->mode) != BLKmode
      && (mode_size[(int) (((enum machine_mode) (srcreg)->mode))]) < ((target_flags & 0x00002000) ? 8 : 4))
    srcreg = convert_to_mode (word_mode, srcreg, ((type)->common.unsigned_flag));





  if (((target_flags & 0x00010000) != 0)
      && bytes % ((target_flags & 0x00002000) ? 8 : 4))
    big_endian_correction
      = ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - ((bytes % ((target_flags & 0x00002000) ? 8 : 4)) * 8));






  for (bitpos = 0, xbitpos = big_endian_correction;
       bitpos < bytes * 8;
       bitpos += bitsize, xbitpos += bitsize)
    {



      if (xbitpos % (8 * ((target_flags & 0x00002000) ? 8 : 4)) == 0
   || xbitpos == big_endian_correction)
 src = operand_subword_force (srcreg, xbitpos / (8 * ((target_flags & 0x00002000) ? 8 : 4)),
         ((enum machine_mode) (srcreg)->mode));



      if (bitpos % (8 * ((target_flags & 0x00002000) ? 8 : 4)) == 0)
 dst = operand_subword (tgtblk, bitpos / (8 * ((target_flags & 0x00002000) ? 8 : 4)), 1, BLKmode);



      store_bit_field (dst, bitsize, bitpos % (8 * ((target_flags & 0x00002000) ? 8 : 4)), word_mode,
         extract_bit_field (src, bitsize,
       xbitpos % (8 * ((target_flags & 0x00002000) ? 8 : 4)), 1,
       (rtx) 0, word_mode, word_mode,
       (8 * ((target_flags & 0x00002000) ? 8 : 4))),
         (8 * ((target_flags & 0x00002000) ? 8 : 4)));
    }

  return tgtblk;
}




void
use_reg (call_fusage, reg)
     rtx *call_fusage, reg;
{
  if (((enum rtx_code) (reg)->code) != REG
      || (((reg)->fld[0]).rtuint) >= 176)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2682, __FUNCTION__);

  *call_fusage
    = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_fmt_e (USE, (VOIDmode), (reg))), (*call_fusage));

}




void
use_regs (call_fusage, regno, nregs)
     rtx *call_fusage;
     int regno;
     int nregs;
{
  int i;

  if (regno + nregs > 176)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2701, __FUNCTION__);

  for (i = 0; i < nregs; i++)
    use_reg (call_fusage, (cfun->emit->x_regno_reg_rtx)[regno + i]);
}





void
use_group_regs (call_fusage, regs)
     rtx *call_fusage;
     rtx regs;
{
  int i;

  for (i = 0; i < (((((regs)->fld[0]).rtvec))->num_elem); i++)
    {
      rtx reg = ((((((((regs)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx);




      if (reg != 0 && ((enum rtx_code) (reg)->code) == REG)
 use_reg (call_fusage, reg);
    }
}
# 2737 "../../../kgccfe/gnu/expr.c"
int
can_store_by_pieces (len, constfun, constfundata, align)
     unsigned long long len;
     rtx (*constfun) (void *, long long, enum machine_mode);
     void * constfundata;
     unsigned int align;
{
  unsigned long long max_size, l;
  long long offset = 0;
  enum machine_mode mode, tmode;
  enum insn_code icode;
  int reverse;
  rtx cst;

  if (len == 0)
    return 1;

  if (! (move_by_pieces_ninsns (len, align) < (unsigned int) 2))
    return 0;

  if (! 1
      || align > ((target_flags & 0x00002000) ? 8 : 4) * 8 || align >= (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
    align = ((target_flags & 0x00002000) ? 8 : 4) * 8;




  for (reverse = 0;
       reverse <= (0 || 0);
       reverse++)
    {
      l = len;
      mode = VOIDmode;
      max_size = ((((target_flags & 0x00002000) ? 8 : 4)) < (2 * sizeof (long long)) ? (((target_flags & 0x00002000) ? 8 : 4)) : (2 * sizeof (long long))) + 1;
      while (max_size > 1)
 {
   for (tmode = class_narrowest_mode[(int) (MODE_INT)];
        tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
     if ((mode_size[(int) (tmode)]) < max_size)
       mode = tmode;

   if (mode == VOIDmode)
     break;

   icode = (optab_table[OTI_mov])->handlers[(int) mode].insn_code;
   if (icode != CODE_FOR_nothing
       && align >= get_mode_alignment (mode))
     {
       unsigned int size = (mode_size[(int) (mode)]);

       while (l >= size)
  {
    if (reverse)
      offset -= size;

    cst = (*constfun) (constfundata, offset, mode);
    if (!((((enum rtx_code) (cst)->code) != CONST_DOUBLE || mips_const_double_ok (cst, ((enum machine_mode) (cst)->mode))) && ! (((enum rtx_code) (cst)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (cst, ((enum machine_mode) (cst)->mode), 0, 0))))
      return 0;

    if (!reverse)
      offset += size;

    l -= size;
  }
     }

   max_size = (mode_size[(int) (mode)]);
 }


      if (l != 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 2808, __FUNCTION__);
    }

  return 1;
}
# 2822 "../../../kgccfe/gnu/expr.c"
rtx
store_by_pieces (to, len, constfun, constfundata, align, endp)
     rtx to;
     unsigned long long len;
     rtx (*constfun) (void *, long long, enum machine_mode);
     void * constfundata;
     unsigned int align;
     int endp;
{
  struct store_by_pieces data;

  if (len == 0)
    {
      if (endp == 2)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 2836, __FUNCTION__);
      return to;
    }

  if (! (move_by_pieces_ninsns (len, align) < (unsigned int) 2))
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2841, __FUNCTION__);
  to = protect_from_queue (to, 1);
  data.constfun = constfun;
  data.constfundata = constfundata;
  data.len = len;
  data.to = to;
  store_by_pieces_1 (&data, align);
  if (endp)
    {
      rtx to1;

      if (data.reverse)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 2853, __FUNCTION__);
      if (data.autinc_to)
 {
   if (endp == 2)
     {
       if (0 && data.explicit_inc_to > 0)
  emit_insn (gen_add2_insn (data.to_addr, (const_int_rtx[64 -1])));
       else
  data.to_addr = copy_addr_to_reg (plus_constant_wide ((data.to_addr), (long long) (-1)));

     }
   to1 = adjust_automodify_address_1 (data.to, QImode, data.to_addr, data.offset, 1);

 }
      else
 {
   if (endp == 2)
     --data.offset;
   to1 = adjust_address_1 (data.to, QImode, data.offset, 1, 1);
 }
      return to1;
    }
  else
    return data.to;
}





static void
clear_by_pieces (to, len, align)
     rtx to;
     unsigned long long len;
     unsigned int align;
{
  struct store_by_pieces data;

  if (len == 0)
    return;

  data.constfun = clear_by_pieces_1;
  data.constfundata = ((void *)0);
  data.len = len;
  data.to = to;
  store_by_pieces_1 (&data, align);
}




static rtx
clear_by_pieces_1 (data, offset, mode)
     void * data __attribute__ ((__unused__));
     long long offset __attribute__ ((__unused__));
     enum machine_mode mode __attribute__ ((__unused__));
{
  return (const_int_rtx[64]);
}






static void
store_by_pieces_1 (data, align)
     struct store_by_pieces *data;
     unsigned int align;
{
  rtx to_addr = (((data->to)->fld[0]).rtx);
  unsigned long long max_size = ((((target_flags & 0x00002000) ? 8 : 4)) < (2 * sizeof (long long)) ? (((target_flags & 0x00002000) ? 8 : 4)) : (2 * sizeof (long long))) + 1;
  enum machine_mode mode = VOIDmode, tmode;
  enum insn_code icode;

  data->offset = 0;
  data->to_addr = to_addr;
  data->autinc_to
    = (((enum rtx_code) (to_addr)->code) == PRE_INC || ((enum rtx_code) (to_addr)->code) == PRE_DEC
       || ((enum rtx_code) (to_addr)->code) == POST_INC || ((enum rtx_code) (to_addr)->code) == POST_DEC);

  data->explicit_inc_to = 0;
  data->reverse
    = (((enum rtx_code) (to_addr)->code) == PRE_DEC || ((enum rtx_code) (to_addr)->code) == POST_DEC);
  if (data->reverse)
    data->offset = data->len;




  if (!data->autinc_to
      && move_by_pieces_ninsns (data->len, align) > 2)
    {

      for (tmode = class_narrowest_mode[(int) (MODE_INT)];
    tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
 if ((mode_size[(int) (tmode)]) < max_size)
   mode = tmode;

      if (0 && data->reverse && ! data->autinc_to)
 {
   data->to_addr = copy_addr_to_reg (plus_constant_wide ((to_addr), (long long) (data->len)));
   data->autinc_to = 1;
   data->explicit_inc_to = -1;
 }

      if (0 && ! data->reverse
   && ! data->autinc_to)
 {
   data->to_addr = copy_addr_to_reg (to_addr);
   data->autinc_to = 1;
   data->explicit_inc_to = 1;
 }

      if ( !data->autinc_to && (((enum rtx_code) (to_addr)->code) == LABEL_REF || ((enum rtx_code) (to_addr)->code) == SYMBOL_REF || ((enum rtx_code) (to_addr)->code) == CONST_INT || ((enum rtx_code) (to_addr)->code) == CONST_DOUBLE || ((enum rtx_code) (to_addr)->code) == CONST || ((enum rtx_code) (to_addr)->code) == HIGH || ((enum rtx_code) (to_addr)->code) == CONST_VECTOR || ((enum rtx_code) (to_addr)->code) == CONSTANT_P_RTX))
 data->to_addr = copy_addr_to_reg (to_addr);
    }

  if (! 1
      || align > ((target_flags & 0x00002000) ? 8 : 4) * 8 || align >= (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
    align = ((target_flags & 0x00002000) ? 8 : 4) * 8;




  while (max_size > 1)
    {
      for (tmode = class_narrowest_mode[(int) (MODE_INT)];
    tmode != VOIDmode; tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
 if ((mode_size[(int) (tmode)]) < max_size)
   mode = tmode;

      if (mode == VOIDmode)
 break;

      icode = (optab_table[OTI_mov])->handlers[(int) mode].insn_code;
      if (icode != CODE_FOR_nothing && align >= get_mode_alignment (mode))
 store_by_pieces_2 ((*insn_data[(int) (icode)].genfun), mode, data);

      max_size = (mode_size[(int) (mode)]);
    }


  if (data->len != 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 2997, __FUNCTION__);
}





static void
store_by_pieces_2 (genfun, mode, data)
     rtx (*genfun) (rtx, ...);
     enum machine_mode mode;
     struct store_by_pieces *data;
{
  unsigned int size = (mode_size[(int) (mode)]);
  rtx to1, cst;

  while (data->len >= size)
    {
      if (data->reverse)
 data->offset -= size;

      if (data->autinc_to)
 to1 = adjust_automodify_address_1 (data->to, mode, data->to_addr, data->offset, 1);

      else
 to1 = adjust_address_1 (data->to, mode, data->offset, 1, 1);

      if (0 && data->explicit_inc_to < 0)
 emit_insn (gen_add2_insn (data->to_addr,
      gen_rtx_CONST_INT (VOIDmode, (long long) (-(long long) size))));

      cst = (*data->constfun) (data->constfundata, data->offset, mode);
      emit_insn ((*genfun) (to1, cst));

      if (0 && data->explicit_inc_to > 0)
 emit_insn (gen_add2_insn (data->to_addr, gen_rtx_CONST_INT (VOIDmode, (long long) (size))));

      if (! data->reverse)
 data->offset += size;

      data->len -= size;
    }
}




rtx
clear_storage (object, size)
     rtx object;
     rtx size;
{
  rtx retval = 0;
  unsigned int align = (((enum rtx_code) (object)->code) == MEM ? ((((object)->fld[1]).rtmem) != 0 ? (((object)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (object)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (object)->mode)) : 8))
   : get_mode_alignment (((enum machine_mode) (object)->mode)));



  if (((enum machine_mode) (object)->mode) != BLKmode
      && ((enum rtx_code) (size)->code) == CONST_INT
      && (((size)->fld[0]).rtwint) == (long long) (mode_size[(int) (((enum machine_mode) (object)->mode))]))
    emit_move_insn (object, (const_tiny_rtx[0][(int) (((enum machine_mode) (object)->mode))]));
  else
    {
      object = protect_from_queue (object, 1);
      size = protect_from_queue (size, 0);

      if (size == (const_int_rtx[64]))
 ;
      else if (((enum rtx_code) (size)->code) == CONST_INT
   && (move_by_pieces_ninsns ((((size)->fld[0]).rtwint), align) < (unsigned int) (optimize_size ? 3 : 15)))
 clear_by_pieces (object, (((size)->fld[0]).rtwint), align);
      else if (clear_storage_via_clrstr (object, size, align))
 ;
      else
 retval = clear_storage_via_libcall (object, size);
    }

  return retval;
}




static _Bool
clear_storage_via_clrstr (object, size, align)
     rtx object, size;
     unsigned int align;
{




  rtx opalign = gen_rtx_CONST_INT (VOIDmode, (long long) (align / 8));
  enum machine_mode mode;

  for (mode = class_narrowest_mode[(int) (MODE_INT)]; mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    {
      enum insn_code code = clrstr_optab[(int) mode];
      insn_operand_predicate_fn pred;

      if (code != CODE_FOR_nothing




   && ((((enum rtx_code) (size)->code) == CONST_INT
        && ((unsigned long long) (((size)->fld[0]).rtwint)
     <= (mode_mask_array[(int) (mode)] >> 1)))
       || (mode_bitsize[(int) (mode)]) >= (8 * ((target_flags & 0x00002000) ? 8 : 4)))
   && ((pred = insn_data[(int) code].operand[0].predicate) == 0
       || (*pred) (object, BLKmode))
   && ((pred = insn_data[(int) code].operand[2].predicate) == 0
       || (*pred) (opalign, VOIDmode)))
 {
   rtx op1;
   rtx last = get_last_insn ();
   rtx pat;

   op1 = convert_to_mode (mode, size, 1);
   pred = insn_data[(int) code].operand[1].predicate;
   if (pred != 0 && ! (*pred) (op1, mode))
     op1 = copy_to_mode_reg (mode, op1);

   pat = (*insn_data[(int) ((int) code)].genfun) (object, op1, opalign);
   if (pat)
     {
       emit_insn (pat);
       return 1;
     }
   else
     delete_insns_since (last);
 }
    }

  return 0;
}




static rtx
clear_storage_via_libcall (object, size)
     rtx object, size;
{
  tree call_expr, arg_list, fn, object_tree, size_tree;
  enum machine_mode size_mode;
  rtx retval;
# 3168 "../../../kgccfe/gnu/expr.c"
  object = copy_to_mode_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((object)->fld[0]).rtx));

  if (1)
    size_mode = ((sizetype_tab[(int) SIZETYPE])->type.mode);
  else
    size_mode = ((integer_types[itk_unsigned_int])->type.mode);
  size = convert_to_mode (size_mode, size, 1);
  size = copy_to_mode_reg (size_mode, size);
# 3185 "../../../kgccfe/gnu/expr.c"
  object_tree = make_tree (global_trees[TI_PTR_TYPE], object);
  if (1)
    size_tree = make_tree (sizetype_tab[(int) SIZETYPE], size);
  else
    size_tree = make_tree (integer_types[itk_unsigned_int], size);

  fn = clear_storage_libcall_fn (1);
  arg_list = tree_cons ((tree) ((void *)0), size_tree, (tree) ((void *)0));
  if (1)
    arg_list = tree_cons ((tree) ((void *)0), global_trees[TI_INTEGER_ZERO], arg_list);
  arg_list = tree_cons ((tree) ((void *)0), object_tree, arg_list);


  call_expr = build1 (ADDR_EXPR, build_pointer_type (((fn)->common.type)), fn);
  call_expr = build (CALL_EXPR, ((((fn)->common.type))->common.type),
       call_expr, arg_list, (tree) ((void *)0));
  ((call_expr)->common.side_effects_flag) = 1;

  retval = expand_expr (call_expr, (rtx) 0, VOIDmode, 0);




  if ((((object))->unchanging))
    emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (object)));

  return (1 ? retval : (rtx) 0);
}





static tree block_clear_fn;

void
init_block_clear_fn (asmspec)
     const char *asmspec;
{
  if (!block_clear_fn)
    {
      tree fn, args;

      if (1)
 {
   fn = (__builtin_constant_p ("memset") ? get_identifier_with_length (("memset"), (unsigned) strlen ("memset")) : (get_identifier) ("memset"));
   args = build_function_type_list (global_trees[TI_PTR_TYPE], global_trees[TI_PTR_TYPE],
        integer_types[itk_int], sizetype_tab[(int) SIZETYPE],
        (tree) ((void *)0));
 }
      else
 {
   fn = (__builtin_constant_p ("bzero") ? get_identifier_with_length (("bzero"), (unsigned) strlen ("bzero")) : (get_identifier) ("bzero"));
   args = build_function_type_list (global_trees[TI_VOID_TYPE], global_trees[TI_PTR_TYPE],
        integer_types[itk_unsigned_int], (tree) ((void *)0));
 }

      fn = build_decl (FUNCTION_DECL, fn, args);
      ((fn)->decl.external_flag) = 1;
      ((fn)->common.public_flag) = 1;
      ((fn)->decl.artificial_flag) = 1;
      ((fn)->common.nothrow_flag) = 1;

      block_clear_fn = fn;
    }

  if (asmspec)
    {
      ((block_clear_fn)->decl.rtl = ((rtx) 0));
      ((block_clear_fn)->decl.assembler_name = ((__builtin_constant_p (asmspec) ? get_identifier_with_length ((asmspec), (unsigned) strlen (asmspec)) : (get_identifier) (asmspec))));
    }
}

static tree
clear_storage_libcall_fn (for_call)
     int for_call;
{
  static _Bool emitted_extern;

  if (!block_clear_fn)
    init_block_clear_fn (((void *)0));

  if (for_call && !emitted_extern)
    {
      emitted_extern = 1;
      make_decl_rtl (block_clear_fn, ((void *)0));
      assemble_external (block_clear_fn);
    }

  return block_clear_fn;
}
# 3284 "../../../kgccfe/gnu/expr.c"
rtx
emit_move_insn (x, y)
     rtx x, y;
{
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx y_cst = (rtx) 0;
  rtx last_insn;

  x = protect_from_queue (x, 1);
  y = protect_from_queue (y, 0);







  if (((enum rtx_code) (y)->code) == CONSTANT_P_RTX)
    ;
  else if ((((enum rtx_code) (y)->code) == LABEL_REF || ((enum rtx_code) (y)->code) == SYMBOL_REF || ((enum rtx_code) (y)->code) == CONST_INT || ((enum rtx_code) (y)->code) == CONST_DOUBLE || ((enum rtx_code) (y)->code) == CONST || ((enum rtx_code) (y)->code) == HIGH || ((enum rtx_code) (y)->code) == CONST_VECTOR || ((enum rtx_code) (y)->code) == CONSTANT_P_RTX))
    {
      if (optimize
   && ((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT)
   && (last_insn = compress_float_constant (x, y)))
 return last_insn;

      if (!((((enum rtx_code) (y)->code) != CONST_DOUBLE || mips_const_double_ok (y, ((enum machine_mode) (y)->mode))) && ! (((enum rtx_code) (y)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (y, ((enum machine_mode) (y)->mode), 0, 0))))
 {
   y_cst = y;
   y = force_const_mem (mode, y);




   if (!y)
     y = y_cst;
 }
    }



  if (((enum rtx_code) (x)->code) == MEM
      && ((! memory_address_p (((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx))
    && ! push_operand (x, ((enum machine_mode) (x)->mode)))
   || (flag_force_addr
       && (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch ((((x)->fld[0]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0))))))
    x = validize_mem (x);

  if (((enum rtx_code) (y)->code) == MEM
      && (! memory_address_p (((enum machine_mode) (y)->mode), (((y)->fld[0]).rtx))
   || (flag_force_addr
       && (((enum rtx_code) ((((y)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((y)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((y)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((y)->fld[0]).rtx))->code) == HIGH || (((enum rtx_code) ((((y)->fld[0]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch ((((y)->fld[0]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0))))))
    y = validize_mem (y);

  if (mode == BLKmode)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 3339, __FUNCTION__);

  last_insn = emit_move_insn_1 (x, y);

  if (y_cst && ((enum rtx_code) (x)->code) == REG)
    set_unique_reg_note (last_insn, REG_EQUAL, y_cst);

  return last_insn;
}





rtx
emit_move_insn_1 (x, y)
     rtx x, y;
{
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  enum machine_mode submode;
  enum mode_class class = (mode_class[(int) (mode)]);

  if ((unsigned int) mode >= (unsigned int) MAX_MACHINE_MODE)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 3362, __FUNCTION__);

  if ((optab_table[OTI_mov])->handlers[(int) mode].insn_code != CODE_FOR_nothing)
    return
      emit_insn ((*insn_data[(int) ((optab_table[OTI_mov])->handlers[(int) mode].insn_code)].genfun) (x, y));


  else if ((class == MODE_COMPLEX_FLOAT || class == MODE_COMPLEX_INT)
    && BLKmode != (submode = inner_mode_array[(int) (mode)])
    && ((optab_table[OTI_mov])->handlers[(int) submode].insn_code
        != CODE_FOR_nothing))
    {

      int stack = push_operand (x, ((enum machine_mode) (x)->mode));
# 3431 "../../../kgccfe/gnu/expr.c"
      if (stack)
 {



   emit_insn ((*insn_data[(int) ((optab_table[OTI_mov])->handlers[(int) submode].insn_code)].genfun)
       (gen_rtx_MEM (submode, (((x)->fld[0]).rtx)),
        gen_imagpart (submode, y)));
   emit_insn ((*insn_data[(int) ((optab_table[OTI_mov])->handlers[(int) submode].insn_code)].genfun)
       (gen_rtx_MEM (submode, (((x)->fld[0]).rtx)),
        gen_realpart (submode, y)));
# 3450 "../../../kgccfe/gnu/expr.c"
 }
      else
 {
   rtx realpart_x, realpart_y;
   rtx imagpart_x, imagpart_y;
# 3465 "../../../kgccfe/gnu/expr.c"
   if ((mode_bitsize[(int) (mode)]) < 2 * (8 * ((target_flags & 0x00002000) ? 8 : 4))
       && (reload_in_progress | reload_completed) == 0)
     {
       int packed_dest_p
  = ((((enum rtx_code) (x)->code) == REG) && (((x)->fld[0]).rtuint) < 176);
       int packed_src_p
  = ((((enum rtx_code) (y)->code) == REG) && (((y)->fld[0]).rtuint) < 176);

       if (packed_dest_p || packed_src_p)
  {
    enum mode_class reg_class = ((class == MODE_COMPLEX_FLOAT)
            ? MODE_FLOAT : MODE_INT);

    enum machine_mode reg_mode
      = mode_for_size ((mode_bitsize[(int) (mode)]), reg_class, 1);

    if (reg_mode != BLKmode)
      {
        rtx mem = assign_stack_temp (reg_mode,
         (mode_size[(int) (mode)]), 0);
        rtx cmem = adjust_address_1 (mem, mode, 0, 1, 1);

        cfun->cannot_inline
   = ("function using short complex types cannot be inline");

        if (packed_dest_p)
   {
     rtx sreg = gen_rtx_SUBREG (reg_mode, x, 0);

     emit_move_insn_1 (cmem, y);
     return emit_move_insn_1 (sreg, mem);
   }
        else
   {
     rtx sreg = gen_rtx_SUBREG (reg_mode, y, 0);

     emit_move_insn_1 (mem, sreg);
     return emit_move_insn_1 (x, cmem);
   }
      }
  }
     }

   realpart_x = gen_realpart (submode, x);
   realpart_y = gen_realpart (submode, y);
   imagpart_x = gen_imagpart (submode, x);
   imagpart_y = gen_imagpart (submode, y);





   if (x != y
       && ! (reload_in_progress || reload_completed)
       && (((enum rtx_code) (realpart_x)->code) == SUBREG
    || ((enum rtx_code) (imagpart_x)->code) == SUBREG))
     emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (x)));

   emit_insn ((*insn_data[(int) ((optab_table[OTI_mov])->handlers[(int) submode].insn_code)].genfun)
       (realpart_x, realpart_y));
   emit_insn ((*insn_data[(int) ((optab_table[OTI_mov])->handlers[(int) submode].insn_code)].genfun)
       (imagpart_x, imagpart_y));
 }

      return get_last_insn ();
    }




  else if ((mode_size[(int) (mode)]) >= ((target_flags & 0x00002000) ? 8 : 4))
    {
      rtx last_insn = 0;
      rtx seq, inner;
      int need_clobber;
      int i;
# 3587 "../../../kgccfe/gnu/expr.c"
      if (reload_in_progress && ((enum rtx_code) (x)->code) == MEM
   && (inner = find_replacement (&(((x)->fld[0]).rtx))) != (((x)->fld[0]).rtx))
 x = replace_equiv_address_nv (x, inner);
      if (reload_in_progress && ((enum rtx_code) (y)->code) == MEM
   && (inner = find_replacement (&(((y)->fld[0]).rtx))) != (((y)->fld[0]).rtx))
 y = replace_equiv_address_nv (y, inner);

      start_sequence ();

      need_clobber = 0;
      for (i = 0;
    i < ((mode_size[(int) (mode)]) + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4);
    i++)
 {
   rtx xpart = operand_subword (x, i, 1, mode);
   rtx ypart = operand_subword (y, i, 1, mode);




   if (ypart == 0 && (((enum rtx_code) (y)->code) == LABEL_REF || ((enum rtx_code) (y)->code) == SYMBOL_REF || ((enum rtx_code) (y)->code) == CONST_INT || ((enum rtx_code) (y)->code) == CONST_DOUBLE || ((enum rtx_code) (y)->code) == CONST || ((enum rtx_code) (y)->code) == HIGH || ((enum rtx_code) (y)->code) == CONST_VECTOR || ((enum rtx_code) (y)->code) == CONSTANT_P_RTX))
     {
       y = force_const_mem (mode, y);
       ypart = operand_subword (y, i, 1, mode);
     }
   else if (ypart == 0)
     ypart = operand_subword_force (y, i, mode);

   if (xpart == 0 || ypart == 0)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 3616, __FUNCTION__);

   need_clobber |= (((enum rtx_code) (xpart)->code) == SUBREG);

   last_insn = emit_move_insn (xpart, ypart);
 }

      seq = get_insns ();
      end_sequence ();





      if (x != y
   && ! (reload_in_progress || reload_completed)
   && need_clobber != 0)
 emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (x)));

      emit_insn (seq);

      return last_insn;
    }
  else
    fancy_abort ("../../../kgccfe/gnu/expr.c", 3640, __FUNCTION__);
}





static rtx
compress_float_constant (x, y)
     rtx x, y;
{
  enum machine_mode dstmode = ((enum machine_mode) (x)->mode);
  enum machine_mode orig_srcmode = ((enum machine_mode) (y)->mode);
  enum machine_mode srcmode;
  struct real_value r;

  memcpy (&(r), &((((y))->fld[0]).rtwint), sizeof (struct real_value));

  for (srcmode = class_narrowest_mode[(int) ((mode_class[(int) (orig_srcmode)]))];
       srcmode != orig_srcmode;
       srcmode = ((enum machine_mode)mode_wider_mode[(int) (srcmode)]))
    {
      enum insn_code ic;
      rtx trunc_y, last_insn;


      ic = can_extend_p (dstmode, srcmode, 0);
      if (ic == CODE_FOR_nothing)
 continue;


      if (! exact_real_truncate (srcmode, &r))
 continue;

      trunc_y = const_double_from_real_value (r, srcmode);

      if (((((enum rtx_code) (trunc_y)->code) != CONST_DOUBLE || mips_const_double_ok (trunc_y, ((enum machine_mode) (trunc_y)->mode))) && ! (((enum rtx_code) (trunc_y)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (trunc_y, ((enum machine_mode) (trunc_y)->mode), 0, 0))))
 {


   if (! (*insn_data[ic].operand[1].predicate) (trunc_y, srcmode))
     continue;
 }
      else if (float_extend_from_mem[dstmode][srcmode])
 trunc_y = validize_mem (force_const_mem (srcmode, trunc_y));
      else
 continue;

      emit_unop_insn (ic, x, trunc_y, UNKNOWN);
      last_insn = get_last_insn ();

      if (((enum rtx_code) (x)->code) == REG)
 (((last_insn)->fld[8]).rtx)
   = gen_rtx_fmt_ee (EXPR_LIST, (REG_EQUAL), (y), ((((last_insn)->fld[8]).rtx)));

      return last_insn;
    }

  return (rtx) 0;
}
# 3712 "../../../kgccfe/gnu/expr.c"
rtx
push_block (size, extra, below)
     rtx size;
     int extra, below;
{
  rtx temp;

  size = convert_modes ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), ptr_mode, size, 1);
  if ((((enum rtx_code) (size)->code) == LABEL_REF || ((enum rtx_code) (size)->code) == SYMBOL_REF || ((enum rtx_code) (size)->code) == CONST_INT || ((enum rtx_code) (size)->code) == CONST_DOUBLE || ((enum rtx_code) (size)->code) == CONST || ((enum rtx_code) (size)->code) == HIGH || ((enum rtx_code) (size)->code) == CONST_VECTOR || ((enum rtx_code) (size)->code) == CONSTANT_P_RTX))
    anti_adjust_stack (plus_constant_wide ((size), (long long) (extra)));
  else if (((enum rtx_code) (size)->code) == REG && extra == 0)
    anti_adjust_stack (size);
  else
    {
      temp = copy_to_mode_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), size);
      if (extra != 0)
 temp = expand_binop ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (optab_table[OTI_add]), temp, gen_rtx_CONST_INT (VOIDmode, (long long) (extra)),
        temp, 0, OPTAB_LIB_WIDEN);
      anti_adjust_stack (temp);
    }




  if (1)

    {
      temp = (global_rtl[GR_VIRTUAL_OUTGOING_ARGS]);
      if (extra != 0 && below)
 temp = plus_constant_wide ((temp), (long long) (extra));
    }
  else
    {
      if (((enum rtx_code) (size)->code) == CONST_INT)
 temp = plus_constant_wide (((global_rtl[GR_VIRTUAL_OUTGOING_ARGS])), (long long) (-(((size)->fld[0]).rtwint) - (below ? 0 : extra)));

      else if (extra != 0 && !below)
 temp = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ((global_rtl[GR_VIRTUAL_OUTGOING_ARGS])), (negate_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), plus_constant_wide ((size), (long long) (extra)))));

      else
 temp = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ((global_rtl[GR_VIRTUAL_OUTGOING_ARGS])), (negate_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), size)));

    }

  return memory_address (class_narrowest_mode[(int) (MODE_INT)], temp);
}
# 3850 "../../../kgccfe/gnu/expr.c"
void
emit_push_insn (x, mode, type, size, align, partial, reg, extra,
  args_addr, args_so_far, reg_parm_stack_space,
  alignment_pad)
     rtx x;
     enum machine_mode mode;
     tree type;
     rtx size;
     unsigned int align;
     int partial;
     rtx reg;
     int extra;
     rtx args_addr;
     rtx args_so_far;
     int reg_parm_stack_space;
     rtx alignment_pad;
{
  rtx xinner;
  enum direction stack_direction

    = downward;







  enum direction where_pad = (! ((target_flags & 0x00010000) != 0) ? upward : (((mode) == BLKmode ? ((type) && ((enum tree_code) (((type)->type.size))->common.code) == INTEGER_CST && int_size_in_bytes (type) < (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)) : ((mode_bitsize[(int) (mode)]) < ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && (mips_abi == 0 || mips_abi == 4 || mips_abi == 3 || (mode_class[(int) (mode)]) == MODE_INT))) ? downward : upward));



  if (PRE_DEC == POST_DEC)
    if (where_pad != none)
      where_pad = (where_pad == downward ? upward : downward);

  xinner = x = protect_from_queue (x, 0);

  if (mode == BLKmode)
    {


      rtx temp;
      int used = partial * ((target_flags & 0x00002000) ? 8 : 4);
      int offset = used % (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8);
      int skip;

      if (size == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 3898, __FUNCTION__);

      used -= offset;




      if (partial != 0)
 xinner = adjust_address_1 (xinner, BLKmode, used, 1, 1);





      skip = (reg_parm_stack_space == 0) ? 0 : used;
# 3943 "../../../kgccfe/gnu/expr.c"
 {
   rtx target;





   if (partial != 0)
     {
       if (((enum rtx_code) (size)->code) == CONST_INT)
  size = gen_rtx_CONST_INT (VOIDmode, (long long) ((((size)->fld[0]).rtwint) - used));
       else
  size = expand_binop (((enum machine_mode) (size)->mode), (optab_table[OTI_sub]), size,
         gen_rtx_CONST_INT (VOIDmode, (long long) (used)), (rtx) 0, 0,
         OPTAB_LIB_WIDEN);
     }




   if (! args_addr)
     {
       temp = push_block (size, extra, where_pad == downward);
       extra = 0;
     }
   else if (((enum rtx_code) (args_so_far)->code) == CONST_INT)
     temp = memory_address (BLKmode,
       plus_constant_wide ((args_addr), (long long) (skip + (((args_so_far)->fld[0]).rtwint))));

   else
     temp = memory_address (BLKmode,
       plus_constant_wide ((gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (args_addr), (args_so_far))), (long long) (skip)));




   if (!1)
     {




       if (reg_mentioned_p ((global_rtl[GR_VIRTUAL_STACK_DYNAMIC]), temp)
    || reg_mentioned_p ((global_rtl[GR_VIRTUAL_OUTGOING_ARGS]), temp))
  temp = copy_to_reg (temp);
     }

   target = gen_rtx_MEM (BLKmode, temp);

   if (type != 0)
     {
       set_mem_attributes (target, type, 1);




       set_mem_alias_set (target, 0);
     }



   set_mem_align (target, align);

   emit_block_move (target, xinner, size, BLOCK_OP_CALL_PARM);
 }
    }
  else if (partial > 0)
    {


      int size = (mode_size[(int) (mode)]) / ((target_flags & 0x00002000) ? 8 : 4);
      int i;
      int not_stack;


      int offset = partial % (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / (8 * ((target_flags & 0x00002000) ? 8 : 4)));
      int args_offset = (((args_so_far)->fld[0]).rtwint);
      int skip;




      if (extra && args_addr == 0
   && where_pad != none && where_pad != stack_direction)
 anti_adjust_stack (gen_rtx_CONST_INT (VOIDmode, (long long) (extra)));




      if (args_addr == 0)
 offset = 0;



      not_stack = partial - offset;





      skip = (reg_parm_stack_space == 0) ? 0 : not_stack;

      if ((((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX) && ! ((((enum rtx_code) (x)->code) != CONST_DOUBLE || mips_const_double_ok (x, ((enum machine_mode) (x)->mode))) && ! (((enum rtx_code) (x)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (x, ((enum machine_mode) (x)->mode), 0, 0))))
 x = validize_mem (force_const_mem (mode, x));



      if ((((enum rtx_code) (x)->code) == REG && (((x)->fld[0]).rtuint) < 176
    && (mode_class[(int) (((enum machine_mode) (x)->mode))]) != MODE_INT))
 x = copy_to_reg (x);





      for (i = not_stack; i < size; i++)



 if (i >= not_stack + offset)
   emit_push_insn (operand_subword_force (x, i, mode),
     word_mode, (tree) ((void *)0), (rtx) 0, align, 0, (rtx) 0,
     0, args_addr,
     gen_rtx_CONST_INT (VOIDmode, (long long) (args_offset + ((i - not_stack + skip) * ((target_flags & 0x00002000) ? 8 : 4)))),

     reg_parm_stack_space, alignment_pad);
    }
  else
    {
      rtx addr;
      rtx target = (rtx) 0;
      rtx dest;




      if (extra && args_addr == 0
   && where_pad != none && where_pad != stack_direction)
 anti_adjust_stack (gen_rtx_CONST_INT (VOIDmode, (long long) (extra)));






 {
   if (((enum rtx_code) (args_so_far)->code) == CONST_INT)
     addr
       = memory_address (mode,
    plus_constant_wide ((args_addr), (long long) ((((args_so_far)->fld[0]).rtwint))));

   else
     addr = memory_address (mode, gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (args_addr), (args_so_far)));

   target = addr;
   dest = gen_rtx_MEM (mode, addr);
   if (type != 0)
     {
       set_mem_attributes (dest, type, 1);




       set_mem_alias_set (dest, 0);
     }

   emit_move_insn (dest, x);
 }
    }




  if (partial > 0 && reg != 0)
    {


      if (((enum rtx_code) (reg)->code) == PARALLEL)
 emit_group_load (reg, x, -1);
      else
 move_block_to_reg ((((reg)->fld[0]).rtuint), x, partial, mode);
    }

  if (extra && args_addr == 0 && where_pad == stack_direction)
    anti_adjust_stack (gen_rtx_CONST_INT (VOIDmode, (long long) (extra)));

  if (alignment_pad && args_addr == 0)
    anti_adjust_stack (alignment_pad);
}




static rtx
get_subtarget (x)
     rtx x;
{
  return ((x == 0

    || ((enum rtx_code) (x)->code) != REG

    || (((x))->unchanging)

    || (((x)->fld[0]).rtuint) < 176


    || preserve_subexpressions_p ())
   ? 0 : x);
}
# 4164 "../../../kgccfe/gnu/expr.c"
rtx
expand_assignment (to, from, want_value, suggest_reg)
     tree to, from;
     int want_value;
     int suggest_reg __attribute__ ((__unused__));
{
  rtx to_rtx = 0;
  rtx result;



  if (((enum tree_code) (to)->common.code) == ERROR_MARK)
    {
      result = expand_expr (from, (rtx) 0, VOIDmode, 0);
      return want_value ? result : (rtx) 0;
    }







  if (((enum tree_code) (to)->common.code) == COMPONENT_REF || ((enum tree_code) (to)->common.code) == BIT_FIELD_REF
      || ((enum tree_code) (to)->common.code) == ARRAY_REF || ((enum tree_code) (to)->common.code) == ARRAY_RANGE_REF
      || ((enum tree_code) (((to)->common.type))->common.code) == ARRAY_TYPE)
    {
      enum machine_mode mode1;
      long long bitsize, bitpos;
      rtx orig_to_rtx;
      tree offset;
      int unsignedp;
      int volatilep = 0;
      tree tem;

      push_temp_slots ();
      tem = get_inner_reference (to, &bitsize, &bitpos, &offset, &mode1,
     &unsignedp, &volatilep);




      if (mode1 == VOIDmode && want_value)
 tem = stabilize_reference (tem);

      orig_to_rtx = to_rtx = expand_expr (tem, (rtx) 0, VOIDmode, 0);

      if (offset != 0)
 {
   rtx offset_rtx = expand_expr (offset, (rtx) 0, VOIDmode, EXPAND_SUM);

   if (((enum rtx_code) (to_rtx)->code) != MEM)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 4216, __FUNCTION__);





   if (((enum machine_mode) (offset_rtx)->mode) != ptr_mode)
     offset_rtx = convert_to_mode (ptr_mode, offset_rtx, 0);




   if (((enum rtx_code) (to_rtx)->code) == MEM
       && ((enum machine_mode) (to_rtx)->mode) == BLKmode
       && ((enum machine_mode) ((((to_rtx)->fld[0]).rtx))->mode) != VOIDmode
       && bitsize > 0
       && (bitpos % bitsize) == 0
       && (bitsize % get_mode_alignment (mode1)) == 0
       && ((((to_rtx)->fld[1]).rtmem) != 0 ? (((to_rtx)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (to_rtx)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (to_rtx)->mode)) : 8)) == get_mode_alignment (mode1))
     {
       to_rtx = adjust_address_1 (to_rtx, mode1, bitpos / 8, 1, 1);
       bitpos = 0;
     }

   to_rtx = offset_address (to_rtx, offset_rtx,
       highest_pow2_factor_for_type (((to)->common.type),
         offset));
 }

      if (((enum rtx_code) (to_rtx)->code) == MEM)
 {


   to_rtx = shallow_copy_rtx (to_rtx);

   set_mem_attributes_minus_bitpos (to_rtx, to, 0, bitpos);
 }



      if (volatilep && ((enum rtx_code) (to_rtx)->code) == MEM)
 {
   if (to_rtx == orig_to_rtx)
     to_rtx = copy_rtx (to_rtx);
   (((to_rtx))->volatil) = 1;
 }

      if (((enum tree_code) (to)->common.code) == COMPONENT_REF
   && ((((to)->exp.operands[1]))->common.readonly_flag))
 {
   if (to_rtx == orig_to_rtx)
     to_rtx = copy_rtx (to_rtx);
   (((to_rtx))->unchanging) = 1;
 }

      if (((enum rtx_code) (to_rtx)->code) == MEM && ! can_address_p (to))
 {
   if (to_rtx == orig_to_rtx)
     to_rtx = copy_rtx (to_rtx);
   (((to_rtx))->jump) = 1;
 }

      result = store_field (to_rtx, bitsize, bitpos, mode1, from,
       (want_value

        ? ((enum machine_mode)
    ((((to)->common.type))->type.mode))
        : VOIDmode),
       unsignedp, ((tem)->common.type), get_alias_set (to));

      preserve_temp_slots (result);
      free_temp_slots ();
      pop_temp_slots ();



      return (want_value ? convert_modes (((((to)->common.type))->type.mode),
       ((((from)->common.type))->type.mode),
       result,
       ((((to)->common.type))->common.unsigned_flag))
       : (rtx) 0);
    }
# 4309 "../../../kgccfe/gnu/expr.c"
  if (((enum tree_code) (from)->common.code) == CALL_EXPR && ! aggregate_value_p (from)
      && ((enum tree_code) (((((from)->common.type))->type.size))->common.code) == INTEGER_CST
      && ! ((((enum tree_code) (to)->common.code) == VAR_DECL || ((enum tree_code) (to)->common.code) == PARM_DECL)
     && ((enum rtx_code) (((to)->decl.rtl ? (to)->decl.rtl : (make_decl_rtl (to, ((void *)0)), (to)->decl.rtl)))->code) == REG))
    {
      rtx value;

      push_temp_slots ();
      value = expand_expr (from, (rtx) 0, VOIDmode, 0);
      if (to_rtx == 0)
 to_rtx = expand_expr (to, (rtx) 0, VOIDmode, EXPAND_WRITE);



      if (((enum rtx_code) (to_rtx)->code) == PARALLEL)
 emit_group_load (to_rtx, value, int_size_in_bytes (((from)->common.type)));
      else if (((enum machine_mode) (to_rtx)->mode) == BLKmode)
 emit_block_move (to_rtx, value, expr_size (from), BLOCK_OP_NORMAL);
      else
 {





   emit_move_insn (to_rtx, value);
 }
      preserve_temp_slots (to_rtx);
      free_temp_slots ();
      pop_temp_slots ();
      return want_value ? to_rtx : (rtx) 0;
    }




  if (to_rtx == 0)
    to_rtx = expand_expr (to, (rtx) 0, VOIDmode, EXPAND_WRITE);


  if (((enum tree_code) (to)->common.code) == RESULT_DECL
      && (((enum rtx_code) (to_rtx)->code) == REG || ((enum rtx_code) (to_rtx)->code) == PARALLEL))
    {
      rtx temp;

      push_temp_slots ();
      temp = expand_expr (from, 0, ((enum machine_mode) (to_rtx)->mode), 0);

      if (((enum rtx_code) (to_rtx)->code) == PARALLEL)
 emit_group_load (to_rtx, temp, int_size_in_bytes (((from)->common.type)));
      else
 emit_move_insn (to_rtx, temp);

      preserve_temp_slots (to_rtx);
      free_temp_slots ();
      pop_temp_slots ();
      return want_value ? to_rtx : (rtx) 0;
    }




  if (((enum tree_code) (to)->common.code) == RESULT_DECL && ((enum tree_code) (from)->common.code) == INDIRECT_REF
      && (cfun->returns_struct)
      && !(cfun->returns_pcc_struct))
    {
      rtx from_rtx, size;

      push_temp_slots ();
      size = expr_size (from);
      from_rtx = expand_expr (from, (rtx) 0, VOIDmode, 0);

      if (1)
 emit_library_call ((libfunc_table[LTI_memmove]), LCT_NORMAL,
      VOIDmode, 3, (((to_rtx)->fld[0]).rtx), (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
      (((from_rtx)->fld[0]).rtx), (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
      convert_to_mode (((sizetype_tab[(int) SIZETYPE])->type.mode),
         size, ((sizetype_tab[(int) SIZETYPE])->common.unsigned_flag)),
      ((sizetype_tab[(int) SIZETYPE])->type.mode));
      else
        emit_library_call ((libfunc_table[LTI_bcopy]), LCT_NORMAL,
      VOIDmode, 3, (((from_rtx)->fld[0]).rtx), (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
      (((to_rtx)->fld[0]).rtx), (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
      convert_to_mode (((integer_types[itk_int])->type.mode),
         size,
         ((integer_types[itk_int])->common.unsigned_flag)),
      ((integer_types[itk_int])->type.mode));

      preserve_temp_slots (to_rtx);
      free_temp_slots ();
      pop_temp_slots ();
      return want_value ? to_rtx : (rtx) 0;
    }



  push_temp_slots ();
  result = store_expr (from, to_rtx, want_value);
  preserve_temp_slots (result);
  free_temp_slots ();
  pop_temp_slots ();
  return want_value ? result : (rtx) 0;
}
# 4439 "../../../kgccfe/gnu/expr.c"
rtx
store_expr (exp, target, want_value)
     tree exp;
     rtx target;
     int want_value;
{
  rtx temp;
  int dont_return_target = 0;
  int dont_store_target = 0;

  if ((((enum tree_code) (((exp)->common.type))->common.code) == VOID_TYPE))
    {



      if (want_value)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 4455, __FUNCTION__);
      expand_expr (exp, (const_int_rtx[64]), VOIDmode, 0);
      return (rtx) 0;
    }
  if (((enum tree_code) (exp)->common.code) == COMPOUND_EXPR)
    {


      expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode,
     want_value & 2 ? EXPAND_STACK_PARM : EXPAND_NORMAL);
      emit_queue ();
      return store_expr (((exp)->exp.operands[1]), target, want_value);
    }
  else if (((enum tree_code) (exp)->common.code) == COND_EXPR && ((enum machine_mode) (target)->mode) == BLKmode)
    {





      rtx lab1 = gen_label_rtx (), lab2 = gen_label_rtx ();

      emit_queue ();
      target = protect_from_queue (target, 1);

      do_pending_stack_adjust ();
      ((cfun->expr->x_inhibit_defer_pop) += 1);
      jumpifnot (((exp)->exp.operands[0]), lab1);
      start_cleanup_deferral ();
      store_expr (((exp)->exp.operands[1]), target, want_value & 2);
      end_cleanup_deferral ();
      emit_queue ();
      emit_jump_insn (gen_jump (lab2));
      emit_barrier ();
      emit_label (lab1);
      start_cleanup_deferral ();
      store_expr (((exp)->exp.operands[2]), target, want_value & 2);
      end_cleanup_deferral ();
      emit_queue ();
      emit_label (lab2);
      ((cfun->expr->x_inhibit_defer_pop) -= 1);

      return want_value & 1 ? target : (rtx) 0;
    }
  else if (queued_subexp_p (target))


    {
      if (((enum machine_mode) (target)->mode) != BLKmode && ((enum machine_mode) (target)->mode) != VOIDmode)
 {

   temp = gen_reg_rtx (((enum machine_mode) (target)->mode));
   temp = expand_expr (exp, temp, ((enum machine_mode) (target)->mode),
         (want_value & 2
          ? EXPAND_STACK_PARM : EXPAND_NORMAL));
 }
      else
 temp = expand_expr (exp, (rtx) 0, ((enum machine_mode) (target)->mode),
       (want_value & 2
        ? EXPAND_STACK_PARM : EXPAND_NORMAL));




      if (! (((target))->volatil) && (want_value & 1) != 0)
 dont_return_target = 1;
    }
  else if ((want_value & 1) != 0
    && ((enum rtx_code) (target)->code) == MEM
    && ! (((target))->volatil)
    && ((enum machine_mode) (target)->mode) != BLKmode)






    {
      temp = expand_expr (exp, target, ((enum machine_mode) (target)->mode),
     want_value & 2 ? EXPAND_STACK_PARM : EXPAND_NORMAL);
      if (((enum machine_mode) (temp)->mode) != BLKmode && ((enum machine_mode) (temp)->mode) != VOIDmode)
 {


   if (temp == target
       || (rtx_equal_p (temp, target)
    && ! side_effects_p (temp) && ! side_effects_p (target)))
     dont_store_target = 1;
   temp = copy_to_reg (temp);
 }
      dont_return_target = 1;
    }
  else if (((enum rtx_code) (target)->code) == SUBREG && (((target))->in_struct))




    {
      rtx inner_target = 0;







      if ((want_value & 1) == 0
   && (((enum tree_code) (((exp)->common.type))->common.code) == INTEGER_TYPE || ((enum tree_code) (((exp)->common.type))->common.code) == ENUMERAL_TYPE || ((enum tree_code) (((exp)->common.type))->common.code) == BOOLEAN_TYPE || ((enum tree_code) (((exp)->common.type))->common.code) == CHAR_TYPE)
   && ((((exp)->common.type))->common.type) == 0)
 {
   if (((((exp)->common.type))->common.unsigned_flag)
       != ((((target))->volatil) ? -1 : (target)->unchanging))
     exp = convert
       ((*lang_hooks.types.signed_or_unsigned_type)
        (((((target))->volatil) ? -1 : (target)->unchanging), ((exp)->common.type)), exp);

   exp = convert ((*lang_hooks.types.type_for_mode)
    (((enum machine_mode) ((((target)->fld[0]).rtx))->mode),
     ((((target))->volatil) ? -1 : (target)->unchanging)),
    exp);

   inner_target = (((target)->fld[0]).rtx);
 }

      temp = expand_expr (exp, inner_target, VOIDmode,
     want_value & 2 ? EXPAND_STACK_PARM : EXPAND_NORMAL);




      if (((enum rtx_code) (temp)->code) == MEM && (want_value & 1) != 0
   && ((((temp))->volatil)
       || reg_mentioned_p ((((target)->fld[0]).rtx), (((temp)->fld[0]).rtx))))
 temp = copy_to_reg (temp);



      if ((((enum rtx_code) (temp)->code) == LABEL_REF || ((enum rtx_code) (temp)->code) == SYMBOL_REF || ((enum rtx_code) (temp)->code) == CONST_INT || ((enum rtx_code) (temp)->code) == CONST_DOUBLE || ((enum rtx_code) (temp)->code) == CONST || ((enum rtx_code) (temp)->code) == HIGH || ((enum rtx_code) (temp)->code) == CONST_VECTOR || ((enum rtx_code) (temp)->code) == CONSTANT_P_RTX) && ((enum machine_mode) (temp)->mode) == VOIDmode)
 {
   temp = convert_modes (((enum machine_mode) (target)->mode), ((((exp)->common.type))->type.mode),
    temp, ((((target))->volatil) ? -1 : (target)->unchanging));
   temp = convert_modes (((enum machine_mode) ((((target)->fld[0]).rtx))->mode),
           ((enum machine_mode) (target)->mode), temp,
           ((((target))->volatil) ? -1 : (target)->unchanging));
 }

      convert_move ((((target)->fld[0]).rtx), temp,
      ((((target))->volatil) ? -1 : (target)->unchanging));





      if ((want_value & 1) != 0 && ((enum machine_mode) (temp)->mode) != ((enum machine_mode) (target)->mode))
 {
   if (((enum machine_mode) (temp)->mode) != VOIDmode)
     {
       temp = gen_lowpart_SUBREG (((enum machine_mode) (target)->mode), temp);
       (((temp))->in_struct) = 1;
       do { rtx const _rtx = ((temp)); if ((((((target))->volatil) ? -1 : (target)->unchanging)) < 0) _rtx->volatil = 1; else { _rtx->volatil = 0; _rtx->unchanging = (((((target))->volatil) ? -1 : (target)->unchanging)); } } while (0);

     }
   else
     temp = convert_modes (((enum machine_mode) (target)->mode),
      ((enum machine_mode) ((((target)->fld[0]).rtx))->mode),
      temp, ((((target))->volatil) ? -1 : (target)->unchanging));
 }

      return want_value & 1 ? temp : (rtx) 0;
    }
  else
    {
      temp = expand_expr (exp, target, ((enum machine_mode) (target)->mode),
     want_value & 2 ? EXPAND_STACK_PARM : EXPAND_NORMAL);







      if (!(target && ((enum rtx_code) (target)->code) == REG
     && (((target)->fld[0]).rtuint) < 176)
   && !(((enum rtx_code) (target)->code) == MEM && (((target))->volatil))
   && ! rtx_equal_p (temp, target)
   && ((((enum rtx_code) (temp)->code) == LABEL_REF || ((enum rtx_code) (temp)->code) == SYMBOL_REF || ((enum rtx_code) (temp)->code) == CONST_INT || ((enum rtx_code) (temp)->code) == CONST_DOUBLE || ((enum rtx_code) (temp)->code) == CONST || ((enum rtx_code) (temp)->code) == HIGH || ((enum rtx_code) (temp)->code) == CONST_VECTOR || ((enum rtx_code) (temp)->code) == CONSTANT_P_RTX) || (want_value & 1) != 0))
 dont_return_target = 1;
    }





  if ((((enum rtx_code) (temp)->code) == LABEL_REF || ((enum rtx_code) (temp)->code) == SYMBOL_REF || ((enum rtx_code) (temp)->code) == CONST_INT || ((enum rtx_code) (temp)->code) == CONST_DOUBLE || ((enum rtx_code) (temp)->code) == CONST || ((enum rtx_code) (temp)->code) == HIGH || ((enum rtx_code) (temp)->code) == CONST_VECTOR || ((enum rtx_code) (temp)->code) == CONSTANT_P_RTX) && ((enum machine_mode) (temp)->mode) == VOIDmode
      && ((enum tree_code) (exp)->common.code) != ERROR_MARK
      && ((enum machine_mode) (target)->mode) != ((((exp)->common.type))->type.mode))
    temp = convert_modes (((enum machine_mode) (target)->mode), ((((exp)->common.type))->type.mode),
     temp, ((((exp)->common.type))->common.unsigned_flag));
# 4668 "../../../kgccfe/gnu/expr.c"
  if ((! rtx_equal_p (temp, target)
       || (temp != target && (side_effects_p (temp)
         || side_effects_p (target))))
      && ((enum tree_code) (exp)->common.code) != ERROR_MARK
      && ! dont_store_target



      && (tree_code_type[(int) (((enum tree_code) (exp)->common.code))] != 'd'
   || target != (((exp)->decl.rtl != ((void *)0)) ? ((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)) : ((void *)0)))




      && expr_size (exp) != (const_int_rtx[64]))
    {
      target = protect_from_queue (target, 1);
      if (((enum machine_mode) (temp)->mode) != ((enum machine_mode) (target)->mode)
   && ((enum machine_mode) (temp)->mode) != VOIDmode)
 {
   int unsignedp = ((((exp)->common.type))->common.unsigned_flag);
   if (dont_return_target)
     {



       temp = convert_to_mode (((enum machine_mode) (target)->mode), temp, unsignedp);
       emit_move_insn (target, temp);
     }
   else
     convert_move (target, temp, unsignedp);
 }

      else if (((enum machine_mode) (temp)->mode) == BLKmode && ((enum tree_code) (exp)->common.code) == STRING_CST)
 {




   rtx size = expr_size (exp);

   if (((enum rtx_code) (size)->code) == CONST_INT
       && (((size)->fld[0]).rtwint) < ((exp)->string.length))
     emit_block_move (target, temp, size,
        (want_value & 2
         ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
   else
     {

       tree copy_size
  = size_binop (MIN_EXPR,
         make_tree (sizetype_tab[(int) SIZETYPE], size),
         size_int_wide ((long long) (((exp)->string.length)), SIZETYPE));
       rtx copy_size_rtx
  = expand_expr (copy_size, (rtx) 0, VOIDmode,
          (want_value & 2
    ? EXPAND_STACK_PARM : EXPAND_NORMAL));
       rtx label = 0;


       copy_size_rtx = convert_to_mode (ptr_mode, copy_size_rtx,
            ((sizetype_tab[(int) SIZETYPE])->common.unsigned_flag));
       emit_block_move (target, temp, copy_size_rtx,
          (want_value & 2
    ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));



       if (((enum rtx_code) (copy_size_rtx)->code) == CONST_INT)
  {
    size = plus_constant_wide ((size), (long long) (-(((copy_size_rtx)->fld[0]).rtwint)));
    target = adjust_address_1 (target, BLKmode, (((copy_size_rtx)->fld[0]).rtwint), 1, 1);

  }
       else
  {
    size = expand_binop (((sizetype_tab[(int) SIZETYPE])->type.mode), (optab_table[OTI_sub]), size,
           copy_size_rtx, (rtx) 0, 0,
           OPTAB_LIB_WIDEN);







    target = offset_address (target, copy_size_rtx,
        highest_pow2_factor (copy_size));
    label = gen_label_rtx ();
    emit_cmp_and_jump_insns (size, (const_int_rtx[64]), LT, (rtx) 0,
        ((enum machine_mode) (size)->mode), 0, label);
  }

       if (size != (const_int_rtx[64]))
  clear_storage (target, size);

       if (label)
  emit_label (label);
     }
 }


      else if (((enum rtx_code) (target)->code) == PARALLEL)
 emit_group_load (target, temp, int_size_in_bytes (((exp)->common.type)));
      else if (((enum machine_mode) (temp)->mode) == BLKmode)
 emit_block_move (target, temp, expr_size (exp),
    (want_value & 2
     ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
      else
 emit_move_insn (target, temp);
    }


  if ((want_value & 1) == 0)
    return (rtx) 0;



  else if (dont_return_target && ((enum rtx_code) (temp)->code) != MEM)
    return temp;


  else if ((want_value & 1) != 0
    && ((enum machine_mode) (target)->mode) != BLKmode
    && ! (((enum rtx_code) (target)->code) == REG
   && (((target)->fld[0]).rtuint) < 176))
    return copy_to_reg (target);

  else
    return target;
}



static int
is_zeros_p (exp)
     tree exp;
{
  tree elt;

  switch (((enum tree_code) (exp)->common.code))
    {
    case CONVERT_EXPR:
    case NOP_EXPR:
    case NON_LVALUE_EXPR:
    case VIEW_CONVERT_EXPR:
      return is_zeros_p (((exp)->exp.operands[0]));

    case INTEGER_CST:
      return integer_zerop (exp);

    case COMPLEX_CST:
      return
 is_zeros_p (((exp)->complex.real)) && is_zeros_p (((exp)->complex.imag));

    case REAL_CST:
      return real_identical (&((*((exp)->real_cst.real_cst_ptr))), &(dconst0));

    case VECTOR_CST:
      for (elt = (exp->vector.elements); elt;
    elt = ((elt)->common.chain))
 if (!is_zeros_p (((elt)->list.value)))
   return 0;

      return 1;

    case CONSTRUCTOR:
      if (((exp)->common.type) && ((enum tree_code) (((exp)->common.type))->common.code) == SET_TYPE)
 return (((exp))->exp.operands[1]) == (tree) ((void *)0);
      for (elt = (((exp))->exp.operands[1]); elt; elt = ((elt)->common.chain))
 if (! is_zeros_p (((elt)->list.value)))
   return 0;

      return 1;

    default:
      return 0;
    }
}



static int
mostly_zeros_p (exp)
     tree exp;
{
  if (((enum tree_code) (exp)->common.code) == CONSTRUCTOR)
    {
      int elts = 0, zeros = 0;
      tree elt = (((exp))->exp.operands[1]);
      if (((exp)->common.type) && ((enum tree_code) (((exp)->common.type))->common.code) == SET_TYPE)
 {

   return elt == (tree) ((void *)0);
 }
      for (; elt; elt = ((elt)->common.chain))
 {





   if (mostly_zeros_p (((elt)->list.value)))
     zeros++;
   elts++;
 }

      return 4 * zeros >= 3 * elts;
    }

  return is_zeros_p (exp);
}
# 4892 "../../../kgccfe/gnu/expr.c"
static void
store_constructor_field (target, bitsize, bitpos, mode, exp, type, cleared,
    alias_set)
     rtx target;
     unsigned long long bitsize;
     long long bitpos;
     enum machine_mode mode;
     tree exp, type;
     int cleared;
     int alias_set;
{
  if (((enum tree_code) (exp)->common.code) == CONSTRUCTOR
      && bitpos % 8 == 0



      && (bitpos == 0 || ((enum rtx_code) (target)->code) == MEM))
    {
      if (((enum rtx_code) (target)->code) == MEM)
 target
   = adjust_address_1 (target, ((enum machine_mode) (target)->mode) == BLKmode || 0 != (bitpos % get_mode_alignment (((enum machine_mode) (target)->mode))) ? BLKmode : VOIDmode, bitpos / 8, 1, 1);







      if (((enum rtx_code) (target)->code) == MEM && ! (((target))->jump)
   && ((((target)->fld[1]).rtmem) == 0 ? 0 : (((target)->fld[1]).rtmem)->alias) != 0)
 {
   target = copy_rtx (target);
   set_mem_alias_set (target, alias_set);
 }

      store_constructor (exp, target, cleared, bitsize / 8);
    }
  else
    store_field (target, bitsize, bitpos, mode, exp, VOIDmode, 0, type,
   alias_set);
}
# 4942 "../../../kgccfe/gnu/expr.c"
static void
store_constructor (exp, target, cleared, size)
     tree exp;
     rtx target;
     int cleared;
     long long size;
{
  tree type = ((exp)->common.type);

  long long exp_size = int_size_in_bytes (type);


  if (((enum tree_code) (type)->common.code) == RECORD_TYPE || ((enum tree_code) (type)->common.code) == UNION_TYPE
      || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE)
    {
      tree elt;


      if (size == 0 || cleared)
 cleared = 1;

      else if ((((enum tree_code) (type)->common.code) == UNION_TYPE
  || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE)
        && ! (((exp))->exp.operands[1]))

 {
   clear_storage (target, expr_size (exp));
   cleared = 1;
 }





      else if (((enum rtx_code) (target)->code) == REG && ((exp)->common.static_flag)
        && (mode_size[(int) (((enum machine_mode) (target)->mode))]) <= ((target_flags & 0x00002000) ? 8 : 4))
 {
   emit_move_insn (target, (const_tiny_rtx[0][(int) (((enum machine_mode) (target)->mode))]));
   cleared = 1;
 }






      else if (((list_length ((((exp))->exp.operands[1])) != fields_length (type))
  || mostly_zeros_p (exp))
        && (((enum rtx_code) (target)->code) != REG
     || ((long long) (mode_size[(int) (((enum machine_mode) (target)->mode))])
         == size)))
 {
   clear_storage (target, gen_rtx_CONST_INT (VOIDmode, (long long) (size)));
   cleared = 1;
 }

      if (! cleared)
 emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (target)));




      for (elt = (((exp))->exp.operands[1]); elt; elt = ((elt)->common.chain))
 {
   tree field = ((elt)->list.purpose);
   tree value = ((elt)->list.value);
   enum machine_mode mode;
   long long bitsize;
   long long bitpos = 0;
   int unsignedp;
   tree offset;
   rtx to_rtx = target;




   if (field == 0)
     continue;

   if (cleared && is_zeros_p (value))
     continue;

   if (host_integerp (((field)->decl.size), 1))
     bitsize = tree_low_cst (((field)->decl.size), 1);
   else
     bitsize = -1;

   unsignedp = ((field)->common.unsigned_flag);
   mode = ((field)->decl.mode);
   if (((field)->decl.bit_field_flag))
     mode = VOIDmode;

   offset = ((field)->decl.arguments);
   if (host_integerp (offset, 0)
       && host_integerp (bit_position (field), 0))
     {
       bitpos = int_bit_position (field);
       offset = 0;
     }
   else
     bitpos = tree_low_cst (((field)->decl.u2.t), 0);

   if (offset)
     {
       rtx offset_rtx;

       if (contains_placeholder_p (offset))
  offset = build (WITH_RECORD_EXPR, sizetype_tab[(int) SIZETYPE],
    offset, make_tree (((exp)->common.type), target));

       offset_rtx = expand_expr (offset, (rtx) 0, VOIDmode, 0);
       if (((enum rtx_code) (to_rtx)->code) != MEM)
  fancy_abort ("../../../kgccfe/gnu/expr.c", 5054, __FUNCTION__);





       if (((enum machine_mode) (offset_rtx)->mode) != ptr_mode)
  offset_rtx = convert_to_mode (ptr_mode, offset_rtx, 0);


       to_rtx = offset_address (to_rtx, offset_rtx,
           highest_pow2_factor (offset));
     }

   if (((field)->common.readonly_flag))
     {
       if (((enum rtx_code) (to_rtx)->code) == MEM)
  to_rtx = copy_rtx (to_rtx);

       (((to_rtx))->unchanging) = 1;
     }






   if (((enum rtx_code) (target)->code) == REG
       && bitsize < (8 * ((target_flags & 0x00002000) ? 8 : 4))
       && bitpos % (8 * ((target_flags & 0x00002000) ? 8 : 4)) == 0
       && (mode_class[(int) (mode)]) == MODE_INT
       && ((enum tree_code) (value)->common.code) == INTEGER_CST
       && exp_size >= 0
       && bitpos + (8 * ((target_flags & 0x00002000) ? 8 : 4)) <= exp_size * 8)
     {
       tree type = ((value)->common.type);

       if (((type)->type.precision) < (8 * ((target_flags & 0x00002000) ? 8 : 4)))
  {
    type = (*lang_hooks.types.type_for_size)
      ((8 * ((target_flags & 0x00002000) ? 8 : 4)), ((type)->common.unsigned_flag));
    value = convert (type, value);
  }

       if (((target_flags & 0x00010000) != 0))
  value
    = fold (build (LSHIFT_EXPR, type, value,
     build_int_2_wide ((unsigned long long) ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - bitsize), (long long) (0))));
       bitsize = (8 * ((target_flags & 0x00002000) ? 8 : 4));
       mode = word_mode;
     }


   if (((enum rtx_code) (to_rtx)->code) == MEM && !(((to_rtx))->jump)
       && ((field)->decl.non_addressable))
     {
       to_rtx = copy_rtx (to_rtx);
       (((to_rtx))->jump) = 1;
     }

   store_constructor_field (to_rtx, bitsize, bitpos, mode,
       value, type, cleared,
       get_alias_set (((field)->common.type)));
 }
    }
  else if (((enum tree_code) (type)->common.code) == ARRAY_TYPE
    || ((enum tree_code) (type)->common.code) == VECTOR_TYPE)
    {
      tree elt;
      int i;
      int need_to_clear;
      tree domain = ((type)->type.values);
      tree elttype = ((type)->common.type);
      int const_bounds_p;
      long long minelt = 0;
      long long maxelt = 0;



      if (((enum tree_code) (type)->common.code) == VECTOR_TYPE)
 {



   domain = ((type)->type.values);
   domain = ((((((domain)->type.values))->common.type))->type.values);
 }

      const_bounds_p = (((domain)->type.minval)
   && ((domain)->type.maxval)
   && host_integerp (((domain)->type.minval), 0)
   && host_integerp (((domain)->type.maxval), 0));


      if (const_bounds_p)
 {
   minelt = tree_low_cst (((domain)->type.minval), 0);
   maxelt = tree_low_cst (((domain)->type.maxval), 0);
 }




      if (cleared || (((enum rtx_code) (target)->code) == REG && ((exp)->common.static_flag)))
 need_to_clear = 1;
      else
 {
   long long count = 0, zero_count = 0;
   need_to_clear = ! const_bounds_p;




   for (elt = (((exp))->exp.operands[1]);
        elt != (tree) ((void *)0) && ! need_to_clear;
        elt = ((elt)->common.chain))
     {
       tree index = ((elt)->list.purpose);
       long long this_node_count;

       if (index != (tree) ((void *)0) && ((enum tree_code) (index)->common.code) == RANGE_EXPR)
  {
    tree lo_index = ((index)->exp.operands[0]);
    tree hi_index = ((index)->exp.operands[1]);

    if (! host_integerp (lo_index, 1)
        || ! host_integerp (hi_index, 1))
      {
        need_to_clear = 1;
        break;
      }

    this_node_count = (tree_low_cst (hi_index, 1)
         - tree_low_cst (lo_index, 1) + 1);
  }
       else
  this_node_count = 1;

       count += this_node_count;
       if (mostly_zeros_p (((elt)->list.value)))
  zero_count += this_node_count;
     }



   if (! need_to_clear
       && (count < maxelt - minelt + 1 || 4 * zero_count >= 3 * count))
     need_to_clear = 1;
 }

      if (need_to_clear && size > 0)
 {
   if (! cleared)
     {
       if ((((enum rtx_code) (target)->code) == REG))
  emit_move_insn (target, (const_tiny_rtx[0][(int) (((enum machine_mode) (target)->mode))]));
       else
  clear_storage (target, gen_rtx_CONST_INT (VOIDmode, (long long) (size)));
     }
   cleared = 1;
 }
      else if ((((enum rtx_code) (target)->code) == REG))

 emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (target)));




      for (elt = (((exp))->exp.operands[1]), i = 0;
    elt;
    elt = ((elt)->common.chain), i++)
 {
   enum machine_mode mode;
   long long bitsize;
   long long bitpos;
   int unsignedp;
   tree value = ((elt)->list.value);
   tree index = ((elt)->list.purpose);
   rtx xtarget = target;

   if (cleared && is_zeros_p (value))
     continue;

   unsignedp = ((elttype)->common.unsigned_flag);
   mode = ((elttype)->type.mode);
   if (mode == BLKmode)
     bitsize = (host_integerp (((elttype)->type.size), 1)
         ? tree_low_cst (((elttype)->type.size), 1)
         : -1);
   else
     bitsize = (mode_bitsize[(int) (mode)]);

   if (index != (tree) ((void *)0) && ((enum tree_code) (index)->common.code) == RANGE_EXPR)
     {
       tree lo_index = ((index)->exp.operands[0]);
       tree hi_index = ((index)->exp.operands[1]);
       rtx index_r, pos_rtx, hi_r, loop_top, loop_end;
       struct nesting *loop;
       long long lo, hi, count;
       tree position;


       if (const_bounds_p
    && host_integerp (lo_index, 0)
    && host_integerp (hi_index, 0)
    && (lo = tree_low_cst (lo_index, 0),
        hi = tree_low_cst (hi_index, 0),
        count = hi - lo + 1,
        (((enum rtx_code) (target)->code) != MEM
         || count <= 2
         || (host_integerp (((elttype)->type.size), 1)
      && (tree_low_cst (((elttype)->type.size), 1) * count
          <= 40 * 8)))))
  {
    lo -= minelt; hi -= minelt;
    for (; lo <= hi; lo++)
      {
        bitpos = lo * tree_low_cst (((elttype)->type.size), 0);

        if (((enum rtx_code) (target)->code) == MEM
     && !(((target))->jump)
     && ((enum tree_code) (type)->common.code) == ARRAY_TYPE
     && ((type)->type.transparent_union_flag))
   {
     target = copy_rtx (target);
     (((target))->jump) = 1;
   }

        store_constructor_field
   (target, bitsize, bitpos, mode, value, type, cleared,
    get_alias_set (elttype));
      }
  }
       else
  {
    hi_r = expand_expr (hi_index, (rtx) 0, VOIDmode, 0);
    loop_top = gen_label_rtx ();
    loop_end = gen_label_rtx ();

    unsignedp = ((domain)->common.unsigned_flag);

    index = build_decl (VAR_DECL, (tree) ((void *)0), domain);

    index_r
      = gen_reg_rtx (promote_mode (domain, ((index)->decl.mode),
       &unsignedp, 0));
    ((index)->decl.rtl = (index_r));
    if (((enum tree_code) (value)->common.code) == SAVE_EXPR
        && (*(rtx *) &(value)->exp.operands[2]) == 0)
      {


        expand_expr (value, (const_int_rtx[64]), VOIDmode, 0);
        emit_queue ();
      }
    store_expr (lo_index, index_r, 0);
    loop = expand_start_loop (0);


    position
      = convert (sizetype_tab[(int) SSIZETYPE],
          fold (build (MINUS_EXPR, ((index)->common.type),
         index, ((domain)->type.minval))));
    position = size_binop (MULT_EXPR, position,
      convert (sizetype_tab[(int) SSIZETYPE],
        ((elttype)->type.size_unit)));

    pos_rtx = expand_expr (position, 0, VOIDmode, 0);
    xtarget = offset_address (target, pos_rtx,
         highest_pow2_factor (position));
    xtarget = adjust_address_1 (xtarget, mode, 0, 1, 1);
    if (((enum tree_code) (value)->common.code) == CONSTRUCTOR)
      store_constructor (value, xtarget, cleared,
           bitsize / 8);
    else
      store_expr (value, xtarget, 0);

    expand_exit_loop_if_false (loop,
          build (LT_EXPR, integer_types[itk_int],
          index, hi_index));

    expand_increment (build (PREINCREMENT_EXPR,
        ((index)->common.type),
        index, global_trees[TI_INTEGER_ONE]), 0, 0);
    expand_end_loop ();
    emit_label (loop_end);
  }
     }
   else if ((index != 0 && ! host_integerp (index, 0))
     || ! host_integerp (((elttype)->type.size), 1))
     {
       tree position;

       if (index == 0)
  index = size_int_wide ((long long) (1), SSIZETYPE);

       if (minelt)
  index = convert (sizetype_tab[(int) SSIZETYPE],
     fold (build (MINUS_EXPR, index,
           ((domain)->type.minval))));

       position = size_binop (MULT_EXPR, index,
         convert (sizetype_tab[(int) SSIZETYPE],
           ((elttype)->type.size_unit)));
       xtarget = offset_address (target,
     expand_expr (position, 0, VOIDmode, 0),
     highest_pow2_factor (position));
       xtarget = adjust_address_1 (xtarget, mode, 0, 1, 1);
       store_expr (value, xtarget, 0);
     }
   else
     {
       if (index != 0)
  bitpos = ((tree_low_cst (index, 0) - minelt)
     * tree_low_cst (((elttype)->type.size), 1));
       else
  bitpos = (i * tree_low_cst (((elttype)->type.size), 1));

       if (((enum rtx_code) (target)->code) == MEM && !(((target))->jump)
    && ((enum tree_code) (type)->common.code) == ARRAY_TYPE
    && ((type)->type.transparent_union_flag))
  {
    target = copy_rtx (target);
    (((target))->jump) = 1;
  }

       store_constructor_field (target, bitsize, bitpos, mode, value,
           type, cleared, get_alias_set (elttype));

     }
 }
    }


  else if (((enum tree_code) (type)->common.code) == SET_TYPE)
    {
      tree elt = (((exp))->exp.operands[1]);
      unsigned long long nbytes = int_size_in_bytes (type), nbits;
      tree domain = ((type)->type.values);
      tree domain_min, domain_max, bitlength;
# 5406 "../../../kgccfe/gnu/expr.c"
      if (elt == (tree) ((void *)0) && size > 0)
 {
   if (!cleared)
     clear_storage (target, gen_rtx_CONST_INT (VOIDmode, (long long) (size)));
   return;
 }

      domain_min = convert (sizetype_tab[(int) SIZETYPE], ((domain)->type.minval));
      domain_max = convert (sizetype_tab[(int) SIZETYPE], ((domain)->type.maxval));
      bitlength = size_binop (PLUS_EXPR,
         size_diffop (domain_max, domain_min),
         size_int_wide ((long long) (1), SSIZETYPE));

      nbits = tree_low_cst (bitlength, 1);




      if (((enum machine_mode) (target)->mode) != BLKmode || nbits <= 2 * (8 * ((target_flags & 0x00002000) ? 8 : 4))
   || (nbytes <= 32 && ((elt)->common.chain) != (tree) ((void *)0)))
 {
   unsigned int set_word_size = ((((exp)->common.type))->type.align);
   enum machine_mode mode = mode_for_size (set_word_size, MODE_INT, 1);
   char *bit_buffer = (char *) __builtin_alloca(nbits);
   long long word = 0;
   unsigned int bit_pos = 0;
   unsigned int ibit = 0;
   unsigned int offset = 0;

   elt = get_set_constructor_bits (exp, bit_buffer, nbits);
   for (;;)
     {
       if (bit_buffer[ibit])
  {
    if (((target_flags & 0x00010000) != 0))
      word |= (1 << (set_word_size - 1 - bit_pos));
    else
      word |= 1 << bit_pos;
  }

       bit_pos++; ibit++;
       if (bit_pos >= set_word_size || ibit == nbits)
  {
    if (word != 0 || ! cleared)
      {
        rtx datum = gen_rtx_CONST_INT (VOIDmode, (long long) (word));
        rtx to_rtx;




        if (((enum rtx_code) (target)->code) == MEM)
   to_rtx = adjust_address_1 (target, mode, offset, 1, 1);
        else if (offset == 0)
   to_rtx = target;
        else
   fancy_abort ("../../../kgccfe/gnu/expr.c", 5462, __FUNCTION__);
        emit_move_insn (to_rtx, datum);
      }

    if (ibit == nbits)
      break;
    word = 0;
    bit_pos = 0;
    offset += set_word_size / 8;
  }
     }
 }
      else if (!cleared)

 if (((elt)->common.chain) != (tree) ((void *)0)
     || (((elt)->list.purpose) == (tree) ((void *)0)
  ? nbits != 1
  : ( ! host_integerp (((elt)->list.value), 0)
     || ! host_integerp (((elt)->list.purpose), 0)
     || (tree_low_cst (((elt)->list.value), 0)
         - tree_low_cst (((elt)->list.purpose), 0) + 1
         != (long long) nbits))))
   clear_storage (target, expr_size (exp));

      for (; elt != (tree) ((void *)0); elt = ((elt)->common.chain))
 {

   tree startbit = ((elt)->list.purpose);

   tree endbit = ((elt)->list.value);
   long long startb, endb;
   rtx bitlength_rtx, startbit_rtx, endbit_rtx, targetx;

   bitlength_rtx = expand_expr (bitlength,
           (rtx) 0, MEM, EXPAND_CONST_ADDRESS);


   if (startbit == (tree) ((void *)0))
     {
       startbit = save_expr (endbit);
       endbit = startbit;
     }

   startbit = convert (sizetype_tab[(int) SIZETYPE], startbit);
   endbit = convert (sizetype_tab[(int) SIZETYPE], endbit);
   if (! integer_zerop (domain_min))
     {
       startbit = size_binop (MINUS_EXPR, startbit, domain_min);
       endbit = size_binop (MINUS_EXPR, endbit, domain_min);
     }
   startbit_rtx = expand_expr (startbit, (rtx) 0, MEM,
          EXPAND_CONST_ADDRESS);
   endbit_rtx = expand_expr (endbit, (rtx) 0, MEM,
        EXPAND_CONST_ADDRESS);

   if ((((enum rtx_code) (target)->code) == REG))
     {
       targetx
  = assign_temp
    ((build_qualified_type ((*lang_hooks.types.type_for_mode)
       (((enum machine_mode) (target)->mode), 0),
       0x1)),
     0, 1, 1);
       emit_move_insn (targetx, target);
     }

   else if (((enum rtx_code) (target)->code) == MEM)
     targetx = target;
   else
     fancy_abort ("../../../kgccfe/gnu/expr.c", 5531, __FUNCTION__);



   if (1
       && ((enum tree_code) (startbit)->common.code) == INTEGER_CST
       && ((enum tree_code) (endbit)->common.code) == INTEGER_CST
       && (startb = (((startbit)->int_cst.int_cst).low)) % 8 == 0
       && (endb = (((endbit)->int_cst.int_cst).low) + 1) % 8 == 0)
     {
       emit_library_call ((libfunc_table[LTI_memset]), LCT_NORMAL,
     VOIDmode, 3,
     plus_constant_wide (((((targetx)->fld[0]).rtx)), (long long) (startb / 8)),

     (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
     (const_int_rtx[64 -1]), ((integer_types[itk_int])->type.mode),
     gen_rtx_CONST_INT (VOIDmode, (long long) ((endb - startb) / 8)),
     ((sizetype_tab[(int) SIZETYPE])->type.mode));
     }
   else
     emit_library_call (gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ("__setbits")),
          LCT_NORMAL, VOIDmode, 4, (((targetx)->fld[0]).rtx),
          (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), bitlength_rtx, ((sizetype_tab[(int) SIZETYPE])->type.mode),
          startbit_rtx, ((sizetype_tab[(int) SIZETYPE])->type.mode),
          endbit_rtx, ((sizetype_tab[(int) SIZETYPE])->type.mode));

   if ((((enum rtx_code) (target)->code) == REG))
     emit_move_insn (target, targetx);
 }
    }

  else
    fancy_abort ("../../../kgccfe/gnu/expr.c", 5563, __FUNCTION__);
}
# 5584 "../../../kgccfe/gnu/expr.c"
static rtx
store_field (target, bitsize, bitpos, mode, exp, value_mode, unsignedp, type,
      alias_set)
     rtx target;
     long long bitsize;
     long long bitpos;
     enum machine_mode mode;
     tree exp;
     enum machine_mode value_mode;
     int unsignedp;
     tree type;
     int alias_set;
{
  long long width_mask = 0;

  if (((enum tree_code) (exp)->common.code) == ERROR_MARK)
    return (const_int_rtx[64]);



  if (bitsize == 0)
    return expand_expr (exp, (const_int_rtx[64]), VOIDmode, 0);
  else if (bitsize >=0 && bitsize < (8 * 8))
    width_mask = ((long long) 1 << bitsize) - 1;
# 5620 "../../../kgccfe/gnu/expr.c"
  if (mode == BLKmode
      && (((enum rtx_code) (target)->code) == REG || ((enum rtx_code) (target)->code) == SUBREG))
    {
      rtx object
 = assign_temp
   (build_qualified_type (type, ((((type)->common.readonly_flag) * 0x1) | (((type)->common.volatile_flag) * 0x2) | (((type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->common.type)) * 0x8)) | 0x1),
    0, 1, 1);
      rtx blk_object = adjust_address_1 (object, BLKmode, 0, 1, 1);

      if (bitsize != (long long) (mode_bitsize[(int) (((enum machine_mode) (target)->mode))]))
 emit_move_insn (object, target);

      store_field (blk_object, bitsize, bitpos, mode, exp, VOIDmode, 0, type,
     alias_set);

      emit_move_insn (target, object);


      return blk_object;
    }

  if (((enum rtx_code) (target)->code) == CONCAT)
    {


      if (bitpos != 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 5646, __FUNCTION__);
      return store_expr (exp, target, 0);
    }





  if (mode == VOIDmode
      || (mode != BLKmode && ! direct_store[(int) mode]
   && (mode_class[(int) (mode)]) != MODE_COMPLEX_INT
   && (mode_class[(int) (mode)]) != MODE_COMPLEX_FLOAT)
      || ((enum rtx_code) (target)->code) == REG
      || ((enum rtx_code) (target)->code) == SUBREG


      || (mode != BLKmode && 1
   && (((((target)->fld[1]).rtmem) != 0 ? (((target)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (target)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (target)->mode)) : 8)) < get_mode_alignment (mode)
       || bitpos % get_mode_alignment (mode)))



      || (bitsize >= 0
   && ((enum tree_code) (((((exp)->common.type))->type.size))->common.code) == INTEGER_CST
   && compare_tree_int (((((exp)->common.type))->type.size), bitsize) != 0))
    {
      rtx temp = expand_expr (exp, (rtx) 0, VOIDmode, 0);





      if (((target_flags & 0x00010000) != 0) && (mode_class[(int) (((enum machine_mode) (temp)->mode))]) == MODE_INT
   && bitsize < (long long) (mode_bitsize[(int) (((enum machine_mode) (temp)->mode))])
   && ((enum tree_code) (((exp)->common.type))->common.code) == RECORD_TYPE)
 temp = expand_shift (RSHIFT_EXPR, ((enum machine_mode) (temp)->mode), temp,
        size_int_wide ((long long) ((mode_bitsize[(int) (((enum machine_mode) (temp)->mode))]) - bitsize), SIZETYPE),

        temp, 1);



      if (mode != VOIDmode && mode != BLKmode
   && mode != ((((exp)->common.type))->type.mode))
 temp = convert_modes (mode, ((((exp)->common.type))->type.mode), temp, 1);




      if (((enum machine_mode) (target)->mode) == BLKmode && ((enum machine_mode) (temp)->mode) == BLKmode)
 {
   if (((enum rtx_code) (target)->code) != MEM || ((enum rtx_code) (temp)->code) != MEM
       || bitpos % 8 != 0)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 5699, __FUNCTION__);

   target = adjust_address_1 (target, VOIDmode, bitpos / 8, 1, 1);
   emit_block_move (target, temp,
      gen_rtx_CONST_INT (VOIDmode, (long long) ((bitsize + 8 - 1) / 8)),

      BLOCK_OP_NORMAL);

   return value_mode == VOIDmode ? (const_int_rtx[64]) : target;
 }


      store_bit_field (target, bitsize, bitpos, mode, temp,
         int_size_in_bytes (type));

      if (value_mode != VOIDmode)
 {


   if (width_mask != 0
       && ! (((enum rtx_code) (target)->code) == MEM && (((target))->volatil)))
     {
       tree count;
       enum machine_mode tmode;

       tmode = ((enum machine_mode) (temp)->mode);
       if (tmode == VOIDmode)
  tmode = value_mode;

       if (unsignedp)
  return expand_and (tmode, temp,
       gen_int_mode (width_mask, tmode),
       (rtx) 0);

       count = build_int_2_wide ((unsigned long long) ((mode_bitsize[(int) (tmode)]) - bitsize), (long long) (0));
       temp = expand_shift (LSHIFT_EXPR, tmode, temp, count, 0, 0);
       return expand_shift (RSHIFT_EXPR, tmode, temp, count, 0, 0);
     }

   return extract_bit_field (target, bitsize, bitpos, unsignedp,
        (rtx) 0, value_mode, VOIDmode,
        int_size_in_bytes (type));
 }
      return (const_int_rtx[64]);
    }
  else
    {
      rtx addr = (((target)->fld[0]).rtx);
      rtx to_rtx = target;




      if (value_mode != VOIDmode && ((enum rtx_code) (addr)->code) != REG
   && ! (((enum rtx_code) (addr)->code) == LABEL_REF || ((enum rtx_code) (addr)->code) == SYMBOL_REF || ((enum rtx_code) (addr)->code) == CONST_INT || ((enum rtx_code) (addr)->code) == HIGH || (((enum rtx_code) (addr)->code) == CONST && ! (flag_pic && pic_address_needs_scratch (addr)) && ((target_flags & 0x00000010) || mips_abi == 0)))

   && ! (((enum rtx_code) (addr)->code) == PLUS
  && ((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == CONST_INT
  && ((((addr)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_INCOMING_ARGS])
      || (((addr)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_STACK_ARGS]))))
 to_rtx = replace_equiv_address (to_rtx, copy_to_reg (addr));



      to_rtx = adjust_address_1 (target, mode, bitpos / 8, 1, 1);

      if (to_rtx == target)
 to_rtx = copy_rtx (to_rtx);

      do { if (1) { (((to_rtx))->in_struct) = 1; (((to_rtx))->frame_related) = 0; } else { (((to_rtx))->in_struct) = 0; (((to_rtx))->frame_related) = 1; } } while (0);
      if (!(((to_rtx))->jump) && ((((to_rtx)->fld[1]).rtmem) == 0 ? 0 : (((to_rtx)->fld[1]).rtmem)->alias) != 0)
 set_mem_alias_set (to_rtx, alias_set);

      return store_expr (exp, to_rtx, value_mode != VOIDmode);
    }
}
# 5798 "../../../kgccfe/gnu/expr.c"
tree
get_inner_reference (exp, pbitsize, pbitpos, poffset, pmode,
       punsignedp, pvolatilep)
     tree exp;
     long long *pbitsize;
     long long *pbitpos;
     tree *poffset;
     enum machine_mode *pmode;
     int *punsignedp;
     int *pvolatilep;
{
  tree size_tree = 0;
  enum machine_mode mode = VOIDmode;
  tree offset = global_trees[TI_SIZE_ZERO];
  tree bit_offset = global_trees[TI_BITSIZE_ZERO];
  tree placeholder_ptr = 0;
  tree tem;



  if (((enum tree_code) (exp)->common.code) == COMPONENT_REF)
    {
      size_tree = ((((exp)->exp.operands[1]))->decl.size);
      if (! ((((exp)->exp.operands[1]))->decl.bit_field_flag))
 mode = ((((exp)->exp.operands[1]))->decl.mode);

      *punsignedp = ((((exp)->exp.operands[1]))->common.unsigned_flag);
    }
  else if (((enum tree_code) (exp)->common.code) == BIT_FIELD_REF)
    {
      size_tree = ((exp)->exp.operands[1]);
      *punsignedp = ((exp)->common.unsigned_flag);
    }
  else
    {
      mode = ((((exp)->common.type))->type.mode);
      *punsignedp = ((((exp)->common.type))->common.unsigned_flag);

      if (mode == BLKmode)
 size_tree = ((((exp)->common.type))->type.size);
      else
 *pbitsize = (mode_bitsize[(int) (mode)]);
    }

  if (size_tree != 0)
    {
      if (! host_integerp (size_tree, 1))
 mode = BLKmode, *pbitsize = -1;
      else
 *pbitsize = tree_low_cst (size_tree, 1);
    }



  while (1)
    {
      if (((enum tree_code) (exp)->common.code) == BIT_FIELD_REF)
 bit_offset = size_binop (PLUS_EXPR, bit_offset, ((exp)->exp.operands[2]));
      else if (((enum tree_code) (exp)->common.code) == COMPONENT_REF)
 {
   tree field = ((exp)->exp.operands[1]);
   tree this_offset = ((field)->decl.arguments);




   if (this_offset == 0)
     break;
   else if (! ((this_offset)->common.constant_flag)
     && contains_placeholder_p (this_offset))
     this_offset = build (WITH_RECORD_EXPR, sizetype_tab[(int) SIZETYPE], this_offset, exp);

   offset = size_binop (PLUS_EXPR, offset, this_offset);
   bit_offset = size_binop (PLUS_EXPR, bit_offset,
       ((field)->decl.u2.t));


 }

      else if (((enum tree_code) (exp)->common.code) == ARRAY_REF
        || ((enum tree_code) (exp)->common.code) == ARRAY_RANGE_REF)
 {
   tree index = ((exp)->exp.operands[1]);
   tree array = ((exp)->exp.operands[0]);
   tree domain = ((((array)->common.type))->type.values);
   tree low_bound = (domain ? ((domain)->type.minval) : 0);
   tree unit_size = ((((((array)->common.type))->common.type))->type.size_unit);





   if (low_bound != 0 && ! integer_zerop (low_bound))
     index = fold (build (MINUS_EXPR, ((index)->common.type),
     index, low_bound));




   if (! ((index)->common.constant_flag)
       && contains_placeholder_p (index))
     index = build (WITH_RECORD_EXPR, ((index)->common.type), index, exp);
   if (! ((unit_size)->common.constant_flag)
       && contains_placeholder_p (unit_size))
     unit_size = build (WITH_RECORD_EXPR, sizetype_tab[(int) SIZETYPE], unit_size, array);

   offset = size_binop (PLUS_EXPR, offset,
          size_binop (MULT_EXPR,
        convert (sizetype_tab[(int) SIZETYPE], index),
        unit_size));
 }

      else if (((enum tree_code) (exp)->common.code) == PLACEHOLDER_EXPR)
 {
   tree new = find_placeholder (exp, &placeholder_ptr);




   if (new == 0)
     break;
   else
     exp = new;

   continue;
 }
      else if (((enum tree_code) (exp)->common.code) != NON_LVALUE_EXPR
        && ((enum tree_code) (exp)->common.code) != VIEW_CONVERT_EXPR
        && ! ((((enum tree_code) (exp)->common.code) == NOP_EXPR
        || ((enum tree_code) (exp)->common.code) == CONVERT_EXPR)
       && (((((exp)->common.type))->type.mode)
    == ((((((exp)->exp.operands[0]))->common.type))->type.mode))))
 break;


      if (((exp)->common.volatile_flag))
 *pvolatilep = 1;

      exp = ((exp)->exp.operands[0]);
    }



  if (host_integerp (offset, 0)
      && 0 != (tem = size_binop (MULT_EXPR, convert (sizetype_tab[(int) BITSIZETYPE], offset),
     global_trees[TI_BITSIZE_UNIT]))
      && 0 != (tem = size_binop (PLUS_EXPR, tem, bit_offset))
      && host_integerp (tem, 0))
    *pbitpos = tree_low_cst (tem, 0), *poffset = 0;
  else
    *pbitpos = tree_low_cst (bit_offset, 0), *poffset = offset;

  *pmode = mode;
  return exp;
}



int
handled_component_p (t)
     tree t;
{
  switch (((enum tree_code) (t)->common.code))
    {
    case BIT_FIELD_REF:
    case COMPONENT_REF:
    case ARRAY_REF:
    case ARRAY_RANGE_REF:
    case NON_LVALUE_EXPR:
    case VIEW_CONVERT_EXPR:
      return 1;

    case NOP_EXPR:
    case CONVERT_EXPR:
      return (((((t)->common.type))->type.mode)
       == ((((((t)->exp.operands[0]))->common.type))->type.mode));

    default:
      return 0;
    }
}
# 5987 "../../../kgccfe/gnu/expr.c"
rtx
force_operand (value, target)
     rtx value, target;
{
  rtx op1, op2;

  rtx subtarget = get_subtarget (target);
  enum rtx_code code = ((enum rtx_code) (value)->code);


  if ((code == PLUS || code == MINUS)
      && (((value)->fld[0]).rtx) == pic_offset_table_rtx
      && (((enum rtx_code) ((((value)->fld[1]).rtx))->code) == SYMBOL_REF
   || ((enum rtx_code) ((((value)->fld[1]).rtx))->code) == LABEL_REF
   || ((enum rtx_code) ((((value)->fld[1]).rtx))->code) == CONST))
    {
      if (!subtarget)
 subtarget = gen_reg_rtx (((enum machine_mode) (value)->mode));
      emit_move_insn (subtarget, value);
      return subtarget;
    }

  if (code == ZERO_EXTEND || code == SIGN_EXTEND)
    {
      if (!target)
 target = gen_reg_rtx (((enum machine_mode) (value)->mode));
      convert_move (target, force_operand ((((value)->fld[0]).rtx), ((void *)0)),
      code == ZERO_EXTEND);
      return target;
    }

  if ((rtx_class[(int) (code)]) == '2' || (rtx_class[(int) (code)]) == 'c')
    {
      op2 = (((value)->fld[1]).rtx);
      if (!(((enum rtx_code) (op2)->code) == LABEL_REF || ((enum rtx_code) (op2)->code) == SYMBOL_REF || ((enum rtx_code) (op2)->code) == CONST_INT || ((enum rtx_code) (op2)->code) == CONST_DOUBLE || ((enum rtx_code) (op2)->code) == CONST || ((enum rtx_code) (op2)->code) == HIGH || ((enum rtx_code) (op2)->code) == CONST_VECTOR || ((enum rtx_code) (op2)->code) == CONSTANT_P_RTX) && !(((enum rtx_code) (op2)->code) == REG && op2 != subtarget))
 subtarget = 0;
      if (code == MINUS && ((enum rtx_code) (op2)->code) == CONST_INT)
 {
   code = PLUS;
   op2 = negate_rtx (((enum machine_mode) (value)->mode), op2);
 }







      if (code == PLUS && ((enum rtx_code) (op2)->code) == CONST_INT
   && ((enum rtx_code) ((((value)->fld[0]).rtx))->code) == PLUS
   && ((enum rtx_code) (((((((value)->fld[0]).rtx))->fld[0]).rtx))->code) == REG
   && (((((((((value)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint) >= (176)
   && (((((((((value)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint) <= (((176)) + 4))
 {
   rtx temp = expand_simple_binop (((enum machine_mode) (value)->mode), code,
       ((((((value)->fld[0]).rtx))->fld[0]).rtx), op2,
       subtarget, 0, OPTAB_LIB_WIDEN);
   return expand_simple_binop (((enum machine_mode) (value)->mode), code, temp,
          force_operand (((((((value)->fld[0]).rtx))->fld[1]).rtx), 0),

          target, 0, OPTAB_LIB_WIDEN);
 }

      op1 = force_operand ((((value)->fld[0]).rtx), subtarget);
      op2 = force_operand (op2, (rtx) 0);
      switch (code)
 {
 case MULT:
   return expand_mult (((enum machine_mode) (value)->mode), op1, op2, target, 1);
 case DIV:
   if (!((mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_INT || (mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_PARTIAL_INT || (mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_COMPLEX_INT || (mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_VECTOR_INT))
     return expand_simple_binop (((enum machine_mode) (value)->mode), code, op1, op2,
     target, 1, OPTAB_LIB_WIDEN);
   else
     return expand_divmod (0,
      ((mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (value)->mode))]) == MODE_VECTOR_FLOAT)
      ? RDIV_EXPR : TRUNC_DIV_EXPR,
      ((enum machine_mode) (value)->mode), op1, op2, target, 0);
   break;
 case MOD:
   return expand_divmod (1, TRUNC_MOD_EXPR, ((enum machine_mode) (value)->mode), op1, op2,
    target, 0);
   break;
 case UDIV:
   return expand_divmod (0, TRUNC_DIV_EXPR, ((enum machine_mode) (value)->mode), op1, op2,
    target, 1);
   break;
 case UMOD:
   return expand_divmod (1, TRUNC_MOD_EXPR, ((enum machine_mode) (value)->mode), op1, op2,
    target, 1);
   break;
 case ASHIFTRT:
   return expand_simple_binop (((enum machine_mode) (value)->mode), code, op1, op2,
          target, 0, OPTAB_LIB_WIDEN);
   break;
 default:
   return expand_simple_binop (((enum machine_mode) (value)->mode), code, op1, op2,
          target, 1, OPTAB_LIB_WIDEN);
 }
    }
  if ((rtx_class[(int) (code)]) == '1')
    {
      op1 = force_operand ((((value)->fld[0]).rtx), (rtx) 0);
      return expand_simple_unop (((enum machine_mode) (value)->mode), code, op1, target, 0);
    }




  if (((enum rtx_code) (value)->code) == SUBREG && ((enum rtx_code) ((((value)->fld[0]).rtx))->code) == MEM
      && ((mode_size[(int) (((enum machine_mode) (value)->mode))])
   > (mode_size[(int) (((enum machine_mode) ((((value)->fld[0]).rtx))->mode))])))
    value
      = simplify_gen_subreg (((enum machine_mode) (value)->mode),
        force_reg (((enum machine_mode) ((((value)->fld[0]).rtx))->mode),
     force_operand ((((value)->fld[0]).rtx),
             (rtx) 0)),
        ((enum machine_mode) ((((value)->fld[0]).rtx))->mode),
        (((value)->fld[1]).rtuint));


  return value;
}
# 6119 "../../../kgccfe/gnu/expr.c"
int
safe_from_p (x, exp, top_p)
     rtx x;
     tree exp;
     int top_p;
{
  rtx exp_rtl = 0;
  int i, nops;
  static tree save_expr_list;

  if (x == 0






      || (top_p && ((exp)->common.type) != 0 && (((((exp)->common.type))->type.size) != (tree) ((void *)0))
   && ((enum tree_code) (((((exp)->common.type))->type.size))->common.code) != INTEGER_CST
   && (((enum tree_code) (((exp)->common.type))->common.code) != ARRAY_TYPE
       || (((((exp)->common.type)))->type.maxval) == (tree) ((void *)0)
       || ((enum tree_code) ((((((exp)->common.type)))->type.maxval))->common.code)
       != INTEGER_CST)
   && ((enum machine_mode) (x)->mode) == BLKmode)

      || (((enum rtx_code) (x)->code) == MEM
   && ((((x)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_OUTGOING_ARGS])
       || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
    && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_OUTGOING_ARGS])))))
    return 1;



  if (((enum rtx_code) (x)->code) == SUBREG)
    {
      x = (((x)->fld[0]).rtx);
      if (((enum rtx_code) (x)->code) == REG && (((x)->fld[0]).rtuint) < 176)
 return 0;
    }
# 6168 "../../../kgccfe/gnu/expr.c"
  if (top_p)
    {
      int rtn;
      tree t;

      save_expr_list = 0;

      rtn = safe_from_p (x, exp, 0);

      for (t = save_expr_list; t != 0; t = ((t)->common.chain))
 ((((t)->list.purpose))->common.private_flag) = 0;

      return rtn;
    }


  switch (tree_code_type[(int) (((enum tree_code) (exp)->common.code))])
    {
    case 'd':
      exp_rtl = (((exp)->decl.rtl != ((void *)0)) ? ((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)) : ((void *)0));
      break;

    case 'c':
      return 1;

    case 'x':
      if (((enum tree_code) (exp)->common.code) == TREE_LIST)
 {
   while (1)
     {
       if (((exp)->list.value) && !safe_from_p (x, ((exp)->list.value), 0))
  return 0;
       exp = ((exp)->common.chain);
       if (!exp)
  return 1;
       if (((enum tree_code) (exp)->common.code) != TREE_LIST)
  return safe_from_p (x, exp, 0);
     }
 }
      else if (((enum tree_code) (exp)->common.code) == ERROR_MARK)
 return 1;
      else
 return 0;

    case '2':
    case '<':
      if (!safe_from_p (x, ((exp)->exp.operands[1]), 0))
 return 0;


    case '1':
      return safe_from_p (x, ((exp)->exp.operands[0]), 0);

    case 'e':
    case 'r':





      switch (((enum tree_code) (exp)->common.code))
 {
 case ADDR_EXPR:


   if (staticp (((exp)->exp.operands[0]))
       || ((exp)->common.static_flag)
       || safe_from_p (x, ((exp)->exp.operands[0]), 0))
     return 1;




   exp = ((exp)->exp.operands[0]);
   if ((tree_code_type[(int) (((enum tree_code) (exp)->common.code))] == 'd'))
     {
       if (!((exp)->decl.rtl != ((void *)0))
    || ((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) != MEM)
  return 0;
       else
  exp_rtl = (((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx);
     }
   break;

 case INDIRECT_REF:
   if (((enum rtx_code) (x)->code) == MEM
       && alias_sets_conflict_p (((((x)->fld[1]).rtmem) == 0 ? 0 : (((x)->fld[1]).rtmem)->alias),
     get_alias_set (exp)))
     return 0;
   break;

 case CALL_EXPR:


   if ((((enum rtx_code) (x)->code) == REG && (((x)->fld[0]).rtuint) < 176)
       || ((enum rtx_code) (x)->code) == MEM)
     return 0;
   break;

 case RTL_EXPR:



   if ((*(rtx *) &(exp)->exp.operands[0]))
     return 0;

   exp_rtl = (*(rtx *) &(exp)->exp.operands[1]);
   break;

 case WITH_CLEANUP_EXPR:
   exp_rtl = (*(rtx *) &(exp)->exp.operands[2]);
   break;

 case CLEANUP_POINT_EXPR:
   return safe_from_p (x, ((exp)->exp.operands[0]), 0);

 case SAVE_EXPR:
   exp_rtl = (*(rtx *) &(exp)->exp.operands[2]);
   if (exp_rtl)
     break;




   if (((exp)->common.private_flag))
     return 1;

   ((exp)->common.private_flag) = 1;
   if (! safe_from_p (x, ((exp)->exp.operands[0]), 0))
     {
       ((exp)->common.private_flag) = 0;
       return 0;
     }

   save_expr_list = tree_cons (exp, (tree) ((void *)0), save_expr_list);
   return 1;

 case BIND_EXPR:


   return safe_from_p (x, ((exp)->exp.operands[1]), 0);

 case METHOD_CALL_EXPR:

   fancy_abort ("../../../kgccfe/gnu/expr.c", 6312, __FUNCTION__);

 default:
   break;
 }


      if (exp_rtl)
 break;

      nops = first_rtl_op (((enum tree_code) (exp)->common.code));
      for (i = 0; i < nops; i++)
 if (((exp)->exp.operands[i]) != 0
     && ! safe_from_p (x, ((exp)->exp.operands[i]), 0))
   return 0;



      if ((unsigned int) ((enum tree_code) (exp)->common.code)
   >= (unsigned int) LAST_AND_UNUSED_TREE_CODE
   && !(*lang_hooks.safe_from_p) (x, exp))
 return 0;
    }



  if (exp_rtl)
    {
      if (((enum rtx_code) (exp_rtl)->code) == SUBREG)
 {
   exp_rtl = (((exp_rtl)->fld[0]).rtx);
   if (((enum rtx_code) (exp_rtl)->code) == REG
       && (((exp_rtl)->fld[0]).rtuint) < 176)
     return 0;
 }



      return ! (rtx_equal_p (x, exp_rtl)
  || (((enum rtx_code) (x)->code) == MEM && ((enum rtx_code) (exp_rtl)->code) == MEM
      && true_dependence (exp_rtl, VOIDmode, x,
     rtx_addr_varies_p)));
    }


  return 1;
}




static rtx
var_rtx (exp)
     tree exp;
{
  while ((((enum tree_code) (exp)->common.code) == NOP_EXPR || ((enum tree_code) (exp)->common.code) == CONVERT_EXPR || ((enum tree_code) (exp)->common.code) == NON_LVALUE_EXPR) && ((exp)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((exp)->common.type))->type.mode) == ((((((exp)->exp.operands[0]))->common.type))->type.mode))) (exp) = ((exp)->exp.operands[0]);
  switch (((enum tree_code) (exp)->common.code))
    {
    case PARM_DECL:
    case VAR_DECL:
      return ((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl));
    default:
      return 0;
    }
}
# 6436 "../../../kgccfe/gnu/expr.c"
static long long
highest_pow2_factor (exp)
     tree exp;
{
  long long c0, c1;

  switch (((enum tree_code) (exp)->common.code))
    {
    case INTEGER_CST:






      if (((exp)->common.static_flag))
 return (mips_abi == 1 || mips_abi == 2 ? 128 : 64);
      else
 {


   c0 = (((exp)->int_cst.int_cst).low);
   c0 &= -c0;
   return c0 ? c0 : (mips_abi == 1 || mips_abi == 2 ? 128 : 64);
 }
      break;

    case PLUS_EXPR: case MINUS_EXPR: case MIN_EXPR: case MAX_EXPR:
      c0 = highest_pow2_factor (((exp)->exp.operands[0]));
      c1 = highest_pow2_factor (((exp)->exp.operands[1]));
      return ((c0) < (c1) ? (c0) : (c1));

    case MULT_EXPR:
      c0 = highest_pow2_factor (((exp)->exp.operands[0]));
      c1 = highest_pow2_factor (((exp)->exp.operands[1]));
      return c0 * c1;

    case ROUND_DIV_EXPR: case TRUNC_DIV_EXPR: case FLOOR_DIV_EXPR:
    case CEIL_DIV_EXPR:
      if (integer_pow2p (((exp)->exp.operands[1]))
   && host_integerp (((exp)->exp.operands[1]), 1))
 {
   c0 = highest_pow2_factor (((exp)->exp.operands[0]));
   c1 = tree_low_cst (((exp)->exp.operands[1]), 1);
   return ((1) > (c0 / c1) ? (1) : (c0 / c1));
 }
      break;

    case NON_LVALUE_EXPR: case NOP_EXPR: case CONVERT_EXPR:
    case SAVE_EXPR: case WITH_RECORD_EXPR:
      return highest_pow2_factor (((exp)->exp.operands[0]));

    case COMPOUND_EXPR:
      return highest_pow2_factor (((exp)->exp.operands[1]));

    case COND_EXPR:
      c0 = highest_pow2_factor (((exp)->exp.operands[1]));
      c1 = highest_pow2_factor (((exp)->exp.operands[2]));
      return ((c0) < (c1) ? (c0) : (c1));

    default:
      break;
    }

  return 1;
}




static long long
highest_pow2_factor_for_type (type, exp)
     tree type;
     tree exp;
{
  long long type_align, factor;

  factor = highest_pow2_factor (exp);
  type_align = ((type)->type.align) / 8;
  return ((factor) > (type_align) ? (factor) : (type_align));
}
# 6526 "../../../kgccfe/gnu/expr.c"
tree
find_placeholder (exp, plist)
     tree exp;
     tree *plist;
{
  tree type = ((exp)->common.type);
  tree placeholder_expr;

  for (placeholder_expr
       = plist && *plist ? ((*plist)->common.chain) : placeholder_list;
       placeholder_expr != 0;
       placeholder_expr = ((placeholder_expr)->common.chain))
    {
      tree need_type = ((type)->type.main_variant);
      tree elt;




      for (elt = ((placeholder_expr)->list.purpose); elt != 0;
    elt = ((((enum tree_code) (elt)->common.code) == COMPOUND_EXPR
     || ((enum tree_code) (elt)->common.code) == COND_EXPR)
    ? ((elt)->exp.operands[1])
    : (tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == 'r'
       || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == '1'
       || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == '2'
       || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == 'e')
    ? ((elt)->exp.operands[0]) : 0))
 if (((((elt)->common.type))->type.main_variant) == need_type)
   {
     if (plist)
       *plist = placeholder_expr;
     return elt;
   }

      for (elt = ((placeholder_expr)->list.purpose); elt != 0;
    elt
    = ((((enum tree_code) (elt)->common.code) == COMPOUND_EXPR
        || ((enum tree_code) (elt)->common.code) == COND_EXPR)
       ? ((elt)->exp.operands[1])
       : (tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == 'r'
   || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == '1'
   || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == '2'
   || tree_code_type[(int) (((enum tree_code) (elt)->common.code))] == 'e')
       ? ((elt)->exp.operands[0]) : 0))
 if ((((enum tree_code) (((elt)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((elt)->common.type))->common.code) == REFERENCE_TYPE)
     && (((((((elt)->common.type))->common.type))->type.main_variant)
  == need_type))
   {
     if (plist)
       *plist = placeholder_expr;
     return build1 (INDIRECT_REF, need_type, elt);
   }
    }

  return 0;
}
# 6626 "../../../kgccfe/gnu/expr.c"
rtx
expand_expr (exp, target, tmode, modifier)
     tree exp;
     rtx target;
     enum machine_mode tmode;
     enum expand_modifier modifier;
{
  rtx op0, op1, temp;
  tree type = ((exp)->common.type);
  int unsignedp = ((type)->common.unsigned_flag);
  enum machine_mode mode;
  enum tree_code code = ((enum tree_code) (exp)->common.code);
  optab this_optab;
  rtx subtarget, original_target;
  int ignore;
  tree context;


  if (((enum tree_code) (exp)->common.code) == ERROR_MARK || ((enum tree_code) (type)->common.code) == ERROR_MARK)
    {
      op0 = (const_tiny_rtx[0][(int) (tmode)]);
      if (op0 != 0)
 return op0;
      return (const_int_rtx[64]);
    }

  mode = ((type)->type.mode);

  subtarget = get_subtarget (target);
  original_target = target;
  ignore = (target == (const_int_rtx[64])
     || ((code == NON_LVALUE_EXPR || code == NOP_EXPR
   || code == CONVERT_EXPR || code == REFERENCE_EXPR
   || code == COND_EXPR || code == VIEW_CONVERT_EXPR)
  && ((enum tree_code) (type)->common.code) == VOID_TYPE));







  if (ignore)
    {
      if (! ((exp)->common.side_effects_flag))
 return (const_int_rtx[64]);



      if (((exp)->common.volatile_flag)
   && ((enum tree_code) (exp)->common.code) != FUNCTION_DECL
   && mode != VOIDmode && mode != BLKmode
   && modifier != EXPAND_CONST_ADDRESS)
 {
   temp = expand_expr (exp, (rtx) 0, VOIDmode, modifier);
   if (((enum rtx_code) (temp)->code) == MEM)
     temp = copy_to_reg (temp);
   return (const_int_rtx[64]);
 }

      if (tree_code_type[(int) (code)] == '1' || code == COMPONENT_REF
   || code == INDIRECT_REF || code == BUFFER_REF)
 return expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode,
       modifier);

      else if (tree_code_type[(int) (code)] == '2' || tree_code_type[(int) (code)] == '<'
        || code == ARRAY_REF || code == ARRAY_RANGE_REF)
 {
   expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode, modifier);
   expand_expr (((exp)->exp.operands[1]), (const_int_rtx[64]), VOIDmode, modifier);
   return (const_int_rtx[64]);
 }
      else if ((code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR)
        && ! ((((exp)->exp.operands[1]))->common.side_effects_flag))


 return expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode,
       modifier);
      else if (code == BIT_FIELD_REF)
 {
   expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode, modifier);
   expand_expr (((exp)->exp.operands[1]), (const_int_rtx[64]), VOIDmode, modifier);
   expand_expr (((exp)->exp.operands[2]), (const_int_rtx[64]), VOIDmode, modifier);
   return (const_int_rtx[64]);
 }

      target = 0;
    }
# 6764 "../../../kgccfe/gnu/expr.c"
  if (! cse_not_expected && mode != BLKmode && target
      && (((enum rtx_code) (target)->code) != REG || (((target)->fld[0]).rtuint) < 176)
      && ! (code == CONSTRUCTOR && (mode_size[(int) (mode)]) > ((target_flags & 0x00002000) ? 8 : 4)))
    target = 0;

  switch (code)
    {
    case LABEL_DECL:
      {
 tree function = decl_function_context (exp);

 if (function != current_function_decl
     && function != inline_function_decl && function != 0)
   {
     struct function *p = find_function_data (function);
     p->expr->x_forced_labels
       = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (label_rtx (exp)), (p->expr->x_forced_labels));

   }
 else
   {
     if (modifier == EXPAND_INITIALIZER)
       (cfun->expr->x_forced_labels) = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (label_rtx (exp)), ((cfun->expr->x_forced_labels)));


   }

 temp = gen_rtx_MEM (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? DImode : SImode),
       gen_rtx_fmt_u00 (LABEL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (label_rtx (exp))));
 if (function != current_function_decl
     && function != inline_function_decl && function != 0)
   ((((((temp)->fld[0]).rtx)))->volatil) = 1;
 return temp;
      }

    case PARM_DECL:
      if (!((exp)->decl.rtl != ((void *)0)))
 {
   error_with_decl (exp, "prior parameter's size depends on `%s'");
   return (const_tiny_rtx[0][(int) (mode)]);
 }



    case VAR_DECL:


      if (((exp)->decl.size) == 0
   && ((((((enum tree_code) (((exp)->common.type))->common.code) == ARRAY_TYPE ? ((((exp)->common.type))->common.type) : (((exp)->common.type)))->type.size) != (tree) ((void *)0)))
   && (((exp)->common.static_flag) || ((exp)->decl.external_flag)))
 layout_decl (exp, 0);



    case FUNCTION_DECL:
    case RESULT_DECL:
      if (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)) == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 6821, __FUNCTION__);




      if (! ((exp)->common.used_flag))
 {
   assemble_external (exp);
   ((exp)->common.used_flag) = 1;
 }


      temp = 0;


      context = decl_function_context (exp);






      if (context != 0 && context != current_function_decl
   && context != inline_function_decl

   && ! (((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) == MEM
  && (((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == CONSTANT_P_RTX)))
 {
   rtx addr;


   ((exp)->decl.nonlocal_flag) = 1;
   if (((current_function_decl)->decl.regdecl_flag))
     fancy_abort ("../../../kgccfe/gnu/expr.c", 6854, __FUNCTION__);
   (*lang_hooks.mark_addressable) (exp);
   if (((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) != MEM)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 6857, __FUNCTION__);
   addr = (((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx);
   if (((enum rtx_code) (addr)->code) == MEM)
     addr
       = replace_equiv_address (addr,
           fix_lexical_addr ((((addr)->fld[0]).rtx), exp));
   else
     addr = fix_lexical_addr (addr, exp);

   temp = replace_equiv_address (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)), addr);
 }





      else if (((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) == MEM
        && ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) == REG)
 temp = validize_mem (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)));





      else if (((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) == MEM
        && modifier != EXPAND_CONST_ADDRESS
        && modifier != EXPAND_SUM
        && modifier != EXPAND_INITIALIZER
        && (! memory_address_p (((exp)->decl.mode),
           (((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))
     || (flag_force_addr
         && ((enum rtx_code) ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx))->code) != REG)))
 temp = replace_equiv_address (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)),
          copy_rtx ((((((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->fld[0]).rtx)));



      if (temp != 0)
 {
   if (((enum rtx_code) (temp)->code) == MEM && ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == REG)
     mark_reg_pointer ((((temp)->fld[0]).rtx), ((exp)->decl.u1.a.align));

   return temp;
 }





      if (((enum rtx_code) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->code) == REG
   && ((enum machine_mode) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->mode) != ((exp)->decl.mode))
 {


   if (((enum machine_mode) (((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)))->mode)
       != promote_mode (type, ((exp)->decl.mode), &unsignedp,
          (((enum tree_code) (exp)->common.code) == RESULT_DECL ? 1 : 0)))
     fancy_abort ("../../../kgccfe/gnu/expr.c", 6914, __FUNCTION__);

   temp = gen_lowpart_SUBREG (mode, ((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl)));
   (((temp))->in_struct) = 1;
   do { rtx const _rtx = ((temp)); if ((unsignedp) < 0) _rtx->volatil = 1; else { _rtx->volatil = 0; _rtx->unchanging = (unsignedp); } } while (0);
   return temp;
 }

      return ((exp)->decl.rtl ? (exp)->decl.rtl : (make_decl_rtl (exp, ((void *)0)), (exp)->decl.rtl));

    case INTEGER_CST:
      temp = immed_double_const ((((exp)->int_cst.int_cst).low),
     (((exp)->int_cst.int_cst).high), mode);






      if (((exp)->common.static_flag)
   && modifier != EXPAND_INITIALIZER)
 temp = force_reg (mode, temp);

      return temp;

    case VECTOR_CST:
      return const_vector_from_tree (exp);

    case CONST_DECL:
      return expand_expr (((exp)->decl.initial), target, VOIDmode, modifier);

    case REAL_CST:
# 6956 "../../../kgccfe/gnu/expr.c"
      return const_double_from_real_value ((*((exp)->real_cst.real_cst_ptr)), ((((exp)->common.type))->type.mode));


    case COMPLEX_CST:
    case STRING_CST:
      if (! ((exp)->real_cst.rtl))
 output_constant_def (exp, 1);




      if (((enum rtx_code) (((exp)->real_cst.rtl))->code) == MEM
   && modifier != EXPAND_CONST_ADDRESS
   && modifier != EXPAND_INITIALIZER
   && modifier != EXPAND_SUM
   && (! memory_address_p (mode, (((((exp)->real_cst.rtl))->fld[0]).rtx))
       || (flag_force_addr
    && ((enum rtx_code) ((((((exp)->real_cst.rtl))->fld[0]).rtx))->code) != REG)))
 return replace_equiv_address (((exp)->real_cst.rtl),
          copy_rtx ((((((exp)->real_cst.rtl))->fld[0]).rtx)));
      return ((exp)->real_cst.rtl);

    case EXPR_WITH_FILE_LOCATION:
      {
 rtx to_return;
 const char *saved_input_filename = input_filename;
 int saved_lineno = lineno;
 input_filename = ((char *)((((exp))->exp.operands[1]))->identifier.id.str);
 lineno = (((exp)->exp.complexity) >> 12);
 if (((exp)->common.public_flag))
   emit_line_note (input_filename, lineno);

 to_return = expand_expr ((((exp))->exp.operands[0]), target, tmode, modifier);
 input_filename = saved_input_filename;
 lineno = saved_lineno;
 return to_return;
      }

    case SAVE_EXPR:
      context = decl_function_context (exp);



      if (context == 0)
 (((exp))->exp.operands[1]) = current_function_decl;





      if (context == current_function_decl || context == inline_function_decl)
 context = 0;


      if (context)
 {


   find_function_data (context);

   temp = (*(rtx *) &(exp)->exp.operands[2]);
   if (temp && ((enum rtx_code) (temp)->code) == REG)
     {
       put_var_into_stack (exp, 1);
       temp = (*(rtx *) &(exp)->exp.operands[2]);
     }
   if (temp == 0 || ((enum rtx_code) (temp)->code) != MEM)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 7023, __FUNCTION__);
   return
     replace_equiv_address (temp,
       fix_lexical_addr ((((temp)->fld[0]).rtx), exp));
 }
      if ((*(rtx *) &(exp)->exp.operands[2]) == 0)
 {
   if (mode == VOIDmode)
     temp = (const_int_rtx[64]);
   else
     temp = assign_temp (build_qualified_type (type,
            (((((type)->common.readonly_flag) * 0x1) | (((type)->common.volatile_flag) * 0x2) | (((type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->common.type)) * 0x8))
             | 0x1)),
    3, 0, 0);

   (*(rtx *) &(exp)->exp.operands[2]) = temp;
   if (!optimize && ((enum rtx_code) (temp)->code) == REG)
     (cfun->x_save_expr_regs) = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (temp), ((cfun->x_save_expr_regs)));







   if (((enum rtx_code) (temp)->code) == REG && ((enum machine_mode) (temp)->mode) != mode)
     {
       temp = gen_lowpart_SUBREG (mode, (*(rtx *) &(exp)->exp.operands[2]));
       promote_mode (type, mode, &unsignedp, 0);
       (((temp))->in_struct) = 1;
       do { rtx const _rtx = ((temp)); if ((unsignedp) < 0) _rtx->volatil = 1; else { _rtx->volatil = 0; _rtx->unchanging = (unsignedp); } } while (0);
     }

   if (temp == (const_int_rtx[64]))
     expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode, 0);
   else
     store_expr (((exp)->exp.operands[0]), temp,
   modifier == EXPAND_STACK_PARM ? 2 : 0);

   ((exp)->common.used_flag) = 1;
 }





      if (((enum rtx_code) ((*(rtx *) &(exp)->exp.operands[2]))->code) == REG
   && ((enum machine_mode) ((*(rtx *) &(exp)->exp.operands[2]))->mode) != mode)
 {

   promote_mode (type, mode, &unsignedp, 0);
   temp = gen_lowpart_SUBREG (mode, (*(rtx *) &(exp)->exp.operands[2]));
   (((temp))->in_struct) = 1;
   do { rtx const _rtx = ((temp)); if ((unsignedp) < 0) _rtx->volatil = 1; else { _rtx->volatil = 0; _rtx->unchanging = (unsignedp); } } while (0);
   return temp;
 }

      return (*(rtx *) &(exp)->exp.operands[2]);

    case UNSAVE_EXPR:
      {
 rtx temp;
 temp = expand_expr (((exp)->exp.operands[0]), target, tmode, modifier);
 ((exp)->exp.operands[0])
   = (*lang_hooks.unsave_expr_now) (((exp)->exp.operands[0]));
 return temp;
      }

    case PLACEHOLDER_EXPR:
      {
 tree old_list = placeholder_list;
 tree placeholder_expr = 0;

 exp = find_placeholder (exp, &placeholder_expr);
 if (exp == 0)
   fancy_abort ("../../../kgccfe/gnu/expr.c", 7098, __FUNCTION__);

 placeholder_list = ((placeholder_expr)->common.chain);
 temp = expand_expr (exp, original_target, tmode, modifier);
 placeholder_list = old_list;
 return temp;
      }

    case WITH_RECORD_EXPR:


      placeholder_list = tree_cons (((exp)->exp.operands[1]), (tree) ((void *)0),
        placeholder_list);
      target = expand_expr (((exp)->exp.operands[0]), original_target, tmode,
       modifier);
      placeholder_list = ((placeholder_list)->common.chain);
      return target;

    case GOTO_EXPR:
      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == LABEL_DECL)
 expand_goto (((exp)->exp.operands[0]));
      else
 expand_computed_goto (((exp)->exp.operands[0]));
      return (const_int_rtx[64]);

    case EXIT_EXPR:
      expand_exit_loop_if_false (((void *)0),
     invert_truthvalue (((exp)->exp.operands[0])));
      return (const_int_rtx[64]);

    case LABELED_BLOCK_EXPR:
      if ((((exp))->exp.operands[1]))
 expand_expr_stmt_value ((((exp))->exp.operands[1]), 0, 1);

      do_pending_stack_adjust ();
      emit_label (label_rtx ((((exp))->exp.operands[0])));
      return (const_int_rtx[64]);

    case EXIT_BLOCK_EXPR:
      if ((((exp))->exp.operands[1]))
 sorry ("returned value in block_exit_expr");
      expand_goto (((((((exp))->exp.operands[0])))->exp.operands[0]));
      return (const_int_rtx[64]);

    case LOOP_EXPR:
      push_temp_slots ();
      expand_start_loop (1);
      expand_expr_stmt_value (((exp)->exp.operands[0]), 0, 1);
      expand_end_loop ();
      pop_temp_slots ();

      return (const_int_rtx[64]);

    case BIND_EXPR:
      {
 tree vars = ((exp)->exp.operands[0]);
 int vars_need_expansion = 0;



 expand_start_bindings_and_block(2, (tree) ((void *)0));


 if (((exp)->exp.operands[2]) != 0
     && ! ((((exp)->exp.operands[2]))->common.used_flag))
   (*lang_hooks.decls.insert_block) (((exp)->exp.operands[2]));


 while (vars)
   {
     if (!((vars)->decl.rtl != ((void *)0)))
       {
  vars_need_expansion = 1;
  expand_decl (vars);
       }
     expand_decl_init (vars);
     vars = ((vars)->common.chain);
   }

 temp = expand_expr (((exp)->exp.operands[1]), target, tmode, modifier);

 expand_end_bindings (((exp)->exp.operands[0]), 0, 0);

 return temp;
      }

    case RTL_EXPR:
      if ((*(rtx *) &(exp)->exp.operands[0]))
 {
   if ((*(rtx *) &(exp)->exp.operands[0]) == (const_int_rtx[64]))
     fancy_abort ("../../../kgccfe/gnu/expr.c", 7188, __FUNCTION__);
   emit_insn ((*(rtx *) &(exp)->exp.operands[0]));
   (*(rtx *) &(exp)->exp.operands[0]) = (const_int_rtx[64]);
 }
      preserve_rtl_expr_result ((*(rtx *) &(exp)->exp.operands[1]));
      free_temps_for_rtl_expr (exp);
      return (*(rtx *) &(exp)->exp.operands[1]);

    case CONSTRUCTOR:


      if (ignore)
 {
   tree elt;

   for (elt = (((exp))->exp.operands[1]); elt; elt = ((elt)->common.chain))
     expand_expr (((elt)->list.value), (const_int_rtx[64]), VOIDmode, 0);

   return (const_int_rtx[64]);
 }
# 7222 "../../../kgccfe/gnu/expr.c"
      else if ((((exp)->common.static_flag)
  && ((mode == BLKmode
       && ! (target != 0 && safe_from_p (target, exp, 1)))
      || ((exp)->common.addressable_flag)
      || (host_integerp (((type)->type.size_unit), 1)
   && (! (move_by_pieces_ninsns (tree_low_cst (((type)->type.size_unit), 1), ((type)->type.align)) < (unsigned int) 2))


   && ((((enum tree_code) (type)->common.code) == VECTOR_TYPE
        && !is_zeros_p (exp))
       || ! mostly_zeros_p (exp)))))
        || (modifier == EXPAND_INITIALIZER && ((exp)->common.constant_flag)))
 {
   rtx constructor = output_constant_def (exp, 1);

   if (modifier != EXPAND_CONST_ADDRESS
       && modifier != EXPAND_INITIALIZER
       && modifier != EXPAND_SUM)
     constructor = validize_mem (constructor);

   return constructor;
 }
      else
 {


   if (target == 0 || ! safe_from_p (target, exp, 1)
       || ((enum rtx_code) (target)->code) == PARALLEL
       || modifier == EXPAND_STACK_PARM)
     target
       = assign_temp (build_qualified_type (type,
         (((((type)->common.readonly_flag) * 0x1) | (((type)->common.volatile_flag) * 0x2) | (((type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->common.type)) * 0x8))
          | (((exp)->common.readonly_flag)
             * 0x1))),
        0, ((exp)->common.addressable_flag), 1);

   store_constructor (exp, target, 0, int_expr_size (exp));
   return target;
 }

    case INDIRECT_REF:
      {
 tree exp1 = ((exp)->exp.operands[0]);
 tree index;
 tree string = string_constant (exp1, &index);


 if (string
     && ((enum tree_code) (string)->common.code) == STRING_CST
     && ((enum tree_code) (index)->common.code) == INTEGER_CST
     && compare_tree_int (index, ((string)->string.length)) < 0
     && (mode_class[(int) (mode)]) == MODE_INT
     && (mode_size[(int) (mode)]) == 1
     && modifier != EXPAND_WRITE)
   return gen_int_mode (((string)->string.pointer)
          [(((index)->int_cst.int_cst).low)], mode);

 op0 = expand_expr (exp1, (rtx) 0, VOIDmode, EXPAND_SUM);
 op0 = memory_address (mode, op0);
 temp = gen_rtx_MEM (mode, op0);
 set_mem_attributes (temp, exp, 0);




 if (modifier == EXPAND_WRITE && readonly_fields_p (type))
   (((temp))->unchanging) = 1;

 return temp;
      }

    case ARRAY_REF:
      if (((enum tree_code) (((((exp)->exp.operands[0]))->common.type))->common.code) != ARRAY_TYPE)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 7295, __FUNCTION__);

      {
 tree array = ((exp)->exp.operands[0]);
 tree domain = ((((array)->common.type))->type.values);
 tree low_bound = domain ? ((domain)->type.minval) : global_trees[TI_INTEGER_ZERO];
 tree index = convert (sizetype_tab[(int) SIZETYPE], ((exp)->exp.operands[1]));
 long long i;
# 7312 "../../../kgccfe/gnu/expr.c"
 if (! integer_zerop (low_bound))
   index = size_diffop (index, convert (sizetype_tab[(int) SIZETYPE], low_bound));






 if (modifier != EXPAND_CONST_ADDRESS
     && modifier != EXPAND_INITIALIZER
     && modifier != EXPAND_MEMORY
     && ((enum tree_code) (array)->common.code) == STRING_CST
     && ((enum tree_code) (index)->common.code) == INTEGER_CST
     && compare_tree_int (index, ((array)->string.length)) < 0
     && (mode_class[(int) (mode)]) == MODE_INT
     && (mode_size[(int) (mode)]) == 1)
   return gen_int_mode (((array)->string.pointer)
          [(((index)->int_cst.int_cst).low)], mode);






 if (modifier != EXPAND_CONST_ADDRESS
     && modifier != EXPAND_INITIALIZER
     && modifier != EXPAND_MEMORY
     && ((enum tree_code) (array)->common.code) == CONSTRUCTOR
     && ! ((array)->common.side_effects_flag)
     && ((enum tree_code) (index)->common.code) == INTEGER_CST
     && 0 > compare_tree_int (index,
         list_length ((((((exp)->exp.operands[0])))->exp.operands[1]))))

   {
     tree elem;

     for (elem = (((((exp)->exp.operands[0])))->exp.operands[1]),
   i = (((index)->int_cst.int_cst).low);
   elem != 0 && i != 0; i--, elem = ((elem)->common.chain))
       ;

     if (elem)
       return expand_expr (fold (((elem)->list.value)), target, tmode,
      modifier);
   }

 else if (optimize >= 1
   && modifier != EXPAND_CONST_ADDRESS
   && modifier != EXPAND_INITIALIZER
   && modifier != EXPAND_MEMORY
   && ((array)->common.readonly_flag) && ! ((array)->common.side_effects_flag)
   && ((enum tree_code) (array)->common.code) == VAR_DECL && ((array)->decl.initial)
   && ((enum tree_code) (((array)->decl.initial))->common.code) != ERROR_MARK)
   {
     if (((enum tree_code) (index)->common.code) == INTEGER_CST)
       {
  tree init = ((array)->decl.initial);

  if (((enum tree_code) (init)->common.code) == CONSTRUCTOR)
    {
      tree elem;

      for (elem = (((init))->exp.operands[1]);
    (elem
     && !tree_int_cst_equal (((elem)->list.purpose), index));
    elem = ((elem)->common.chain))
        ;

      if (elem && !((((elem)->list.value))->common.side_effects_flag))
        return expand_expr (fold (((elem)->list.value)), target,
       tmode, modifier);
    }
  else if (((enum tree_code) (init)->common.code) == STRING_CST
    && 0 > compare_tree_int (index,
        ((init)->string.length)))
    {
      tree type = ((((init)->common.type))->common.type);
      enum machine_mode mode = ((type)->type.mode);

      if ((mode_class[(int) (mode)]) == MODE_INT
   && (mode_size[(int) (mode)]) == 1)
        return gen_int_mode (((init)->string.pointer)
        [(((index)->int_cst.int_cst).low)], mode);
    }
       }
   }
      }


    case COMPONENT_REF:
    case BIT_FIELD_REF:
    case ARRAY_RANGE_REF:




      if (code == COMPONENT_REF
   && ((enum tree_code) (((exp)->exp.operands[0]))->common.code) == CONSTRUCTOR
   && ((((exp)->exp.operands[0]))->real_cst.rtl) == 0)
 {
   tree elt;

   for (elt = (((((exp)->exp.operands[0])))->exp.operands[1]); elt;
        elt = ((elt)->common.chain))
     if (((elt)->list.purpose) == ((exp)->exp.operands[1])







  && (! ((((elt)->list.purpose))->decl.bit_field_flag)
      || (((mode_class[(int) (((((elt)->list.purpose))->decl.mode))])
    == MODE_INT)
   && ((mode_bitsize[(int) (((((elt)->list.purpose))->decl.mode))])
       <= (8 * 8)))))
       {
  if (((((elt)->list.purpose))->decl.bit_field_flag)
      && modifier == EXPAND_STACK_PARM)
    target = 0;
  op0 = expand_expr (((elt)->list.value), target, tmode, modifier);
  if (((((elt)->list.purpose))->decl.bit_field_flag))
    {
      long long bitsize
        = (((((((elt)->list.purpose))->decl.size))->int_cst.int_cst).low);
      enum machine_mode imode
        = ((((((elt)->list.purpose))->common.type))->type.mode);

      if (((((((elt)->list.purpose))->common.type))->common.unsigned_flag))
        {
   op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (((long long) 1 << bitsize) - 1));
   op0 = expand_and (imode, op0, op1, target);
        }
      else
        {
   tree count
     = build_int_2_wide ((unsigned long long) ((mode_bitsize[(int) (imode)]) - bitsize), (long long) (0));


   op0 = expand_shift (LSHIFT_EXPR, imode, op0, count,
         target, 0);
   op0 = expand_shift (RSHIFT_EXPR, imode, op0, count,
         target, 0);
        }
    }

  return op0;
       }
 }

      {
 enum machine_mode mode1;
 long long bitsize, bitpos;
 tree offset;
 int volatilep = 0;
 tree tem = get_inner_reference (exp, &bitsize, &bitpos, &offset,
     &mode1, &unsignedp, &volatilep);
 rtx orig_op0;




 if (tem == exp)
   fancy_abort ("../../../kgccfe/gnu/expr.c", 7476, __FUNCTION__);





 orig_op0 = op0
   = expand_expr (tem,
    (((enum tree_code) (((tem)->common.type))->common.code) == UNION_TYPE
     && (((enum tree_code) (((((tem)->common.type))->type.size))->common.code)
         != INTEGER_CST)
     && modifier != EXPAND_STACK_PARM
     ? target : (rtx) 0),
    VOIDmode,
    (modifier == EXPAND_INITIALIZER
     || modifier == EXPAND_CONST_ADDRESS
     || modifier == EXPAND_STACK_PARM)
    ? modifier : EXPAND_NORMAL);



 if ((((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX))
   {
     enum machine_mode mode = ((((tem)->common.type))->type.mode);
     if (mode != BLKmode && ((((enum rtx_code) (op0)->code) != CONST_DOUBLE || mips_const_double_ok (op0, ((enum machine_mode) (op0)->mode))) && ! (((enum rtx_code) (op0)->code) == CONST && ! (target_flags & 0x00000010) && (mips_abi == 1 || mips_abi == 2)) && (! (target_flags & 0x00100000) || mips16_constant (op0, ((enum machine_mode) (op0)->mode), 0, 0)))
  && offset == 0)
       op0 = force_reg (mode, op0);
     else
       op0 = validize_mem (force_const_mem (mode, op0));
   }

 if (offset != 0)
   {
     rtx offset_rtx = expand_expr (offset, (rtx) 0, VOIDmode,
       EXPAND_SUM);





     if (((enum rtx_code) (op0)->code) == REG || ((enum rtx_code) (op0)->code) == SUBREG
  || ((enum rtx_code) (op0)->code) == CONCAT || ((enum rtx_code) (op0)->code) == ADDRESSOF)
       {


  if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == SAVE_EXPR)
    {
      put_var_into_stack (((exp)->exp.operands[0]),
                1);
      op0 = (*(rtx *) &(((exp)->exp.operands[0]))->exp.operands[2]);
    }
  else
    {
      tree nt
        = build_qualified_type (((tem)->common.type),
           (((((((tem)->common.type))->common.readonly_flag) * 0x1) | (((((tem)->common.type))->common.volatile_flag) * 0x2) | (((((tem)->common.type))->type.restrict_flag) * 0x4) | ((((enum tree_code) (((tem)->common.type))->common.code) == RECORD_TYPE && ((((tem)->common.type))->common.type)) * 0x8))
            | 0x1));
      rtx memloc = assign_temp (nt, 1, 1, 1);

      emit_move_insn (memloc, op0);
      op0 = memloc;
    }
       }

     if (((enum rtx_code) (op0)->code) != MEM)
       fancy_abort ("../../../kgccfe/gnu/expr.c", 7541, __FUNCTION__);





     if (((enum machine_mode) (offset_rtx)->mode) != ptr_mode)
       offset_rtx = convert_to_mode (ptr_mode, offset_rtx, 0);




     if (((enum rtx_code) (op0)->code) == MEM
  && ((enum machine_mode) (op0)->mode) == BLKmode
  && ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode) != VOIDmode
  && bitsize != 0
  && (bitpos % bitsize) == 0
  && (bitsize % get_mode_alignment (mode1)) == 0
  && ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)) == get_mode_alignment (mode1))
       {
  op0 = adjust_address_1 (op0, mode1, bitpos / 8, 1, 1);
  bitpos = 0;
       }

     op0 = offset_address (op0, offset_rtx,
      highest_pow2_factor (offset));
   }



 if (((enum rtx_code) (op0)->code) == MEM && bitpos == 0 && offset != 0
     && is_aligning_offset (offset, tem))
   set_mem_align (op0, (mips_abi == 1 || mips_abi == 2 ? 128 : 64));


 if (((enum rtx_code) (op0)->code) == MEM && volatilep && ! (((op0))->volatil))
   {
     if (op0 == orig_op0)
       op0 = copy_rtx (op0);

     (((op0))->volatil) = 1;
   }




 if (((enum rtx_code) (op0)->code) == CONCAT)
   {
     if (bitpos != 0 || bitsize != (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]))
       fancy_abort ("../../../kgccfe/gnu/expr.c", 7590, __FUNCTION__);
     return op0;
   }







 if (mode1 == VOIDmode
     || ((enum rtx_code) (op0)->code) == REG || ((enum rtx_code) (op0)->code) == SUBREG
     || (mode1 != BLKmode && ! direct_load[(int) mode1]
  && (mode_class[(int) (mode)]) != MODE_COMPLEX_INT
  && (mode_class[(int) (mode)]) != MODE_COMPLEX_FLOAT
  && modifier != EXPAND_CONST_ADDRESS
  && modifier != EXPAND_INITIALIZER)


     || (mode1 != BLKmode
  && 1
  && ((((((tem)->common.type))->type.align)
       < get_mode_alignment (mode))
      || (bitpos % get_mode_alignment (mode) != 0)))



     || (bitsize >= 0
  && (((enum tree_code) (((((exp)->common.type))->type.size))->common.code)
      == INTEGER_CST)
  && 0 != compare_tree_int (((((exp)->common.type))->type.size),
       bitsize)))
   {
     enum machine_mode ext_mode = mode;

     if (ext_mode == BLKmode
  && ! (target != 0 && ((enum rtx_code) (op0)->code) == MEM
        && ((enum rtx_code) (target)->code) == MEM
        && bitpos % 8 == 0))
       ext_mode = mode_for_size (bitsize, MODE_INT, 1);

     if (ext_mode == BLKmode)
       {


  if (((enum rtx_code) (op0)->code) != MEM
      || (target != 0 && ((enum rtx_code) (target)->code) != MEM)
      || bitpos % 8 != 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 7638, __FUNCTION__);

  op0 = adjust_address_1 (op0, VOIDmode, bitpos / 8, 1, 1);
  if (target == 0)
    target = assign_temp (type, 0, 1, 1);

  emit_block_move (target, op0,
     gen_rtx_CONST_INT (VOIDmode, (long long) ((bitsize + 8 - 1) / 8)),

     (modifier == EXPAND_STACK_PARM
      ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));

  return target;
       }

     op0 = validize_mem (op0);

     if (((enum rtx_code) (op0)->code) == MEM && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == REG)
       mark_reg_pointer ((((op0)->fld[0]).rtx), ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)));

     op0 = extract_bit_field (op0, bitsize, bitpos, unsignedp,
         (modifier == EXPAND_STACK_PARM
          ? (rtx) 0 : target),
         ext_mode, ext_mode,
         int_size_in_bytes (((tem)->common.type)));




     if (((enum tree_code) (type)->common.code) == RECORD_TYPE && ((target_flags & 0x00010000) != 0)
  && (mode_class[(int) (((enum machine_mode) (op0)->mode))]) == MODE_INT
  && bitsize < (long long) (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]))
       op0 = expand_shift (LSHIFT_EXPR, ((enum machine_mode) (op0)->mode), op0,
      size_int_wide ((long long) ((mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) - bitsize), SIZETYPE),

      op0, 1);

     if (mode == BLKmode)
       {
  rtx new = assign_temp (build_qualified_type
           ((*lang_hooks.types.type_for_mode)
     (ext_mode, 0),
     0x1), 0, 1, 1);

  emit_move_insn (new, op0);
  op0 = copy_rtx (new);
  ((op0)->mode = (enum machine_mode) (BLKmode));
  set_mem_attributes (op0, exp, 1);
       }

     return op0;
   }



 if (mode == BLKmode)
   mode1 = BLKmode;


 if (modifier == EXPAND_CONST_ADDRESS
     || modifier == EXPAND_SUM || modifier == EXPAND_INITIALIZER)
   op0 = adjust_address_1 (op0, mode1, bitpos / 8, 0, 1);
 else
   op0 = adjust_address_1 (op0, mode1, bitpos / 8, 1, 1);

 if (op0 == orig_op0)
   op0 = copy_rtx (op0);

 set_mem_attributes (op0, exp, 0);
 if (((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == REG)
   mark_reg_pointer ((((op0)->fld[0]).rtx), ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)));

 (((op0))->volatil) |= volatilep;
 if (mode == mode1 || mode1 == BLKmode || mode1 == tmode
     || modifier == EXPAND_CONST_ADDRESS
     || modifier == EXPAND_INITIALIZER)
   return op0;
 else if (target == 0)
   target = gen_reg_rtx (tmode != VOIDmode ? tmode : mode);

 convert_move (target, op0, unsignedp);
 return target;
      }

    case VTABLE_REF:
      {
 rtx insn, before = get_last_insn (), vtbl_ref;


 subtarget = expand_expr (((exp)->exp.operands[0]), target,
     tmode, modifier);


 if ((((enum rtx_code) (subtarget)->code) == REG))
   {
     target = subtarget;
     insn = get_last_insn ();
     if (insn == before)
       fancy_abort ("../../../kgccfe/gnu/expr.c", 7736, __FUNCTION__);
     if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
       insn = prev_nonnote_insn (insn);
   }
 else
   {
     target = gen_reg_rtx (((enum machine_mode) (subtarget)->mode));
     insn = emit_move_insn (target, subtarget);
   }


 vtbl_ref = (((((((exp)->exp.operands[1]))->decl.rtl ? (((exp)->exp.operands[1]))->decl.rtl : (make_decl_rtl (((exp)->exp.operands[1]), ((void *)0)), (((exp)->exp.operands[1]))->decl.rtl)))->fld[0]).rtx);
 vtbl_ref = plus_constant_wide ((vtbl_ref), (long long) (tree_low_cst (((exp)->exp.operands[2]), 0)));


 vtbl_ref = (((vtbl_ref)->fld[0]).rtx);

 (((insn)->fld[8]).rtx)
   = gen_rtx_fmt_ee (EXPR_LIST, (REG_VTABLE_REF), (vtbl_ref), ((((insn)->fld[8]).rtx)));

 return target;
      }




    case BUFFER_REF:
      fancy_abort ("../../../kgccfe/gnu/expr.c", 7763, __FUNCTION__);

    case IN_EXPR:
      {
# 7776 "../../../kgccfe/gnu/expr.c"
 tree set = ((exp)->exp.operands[0]);
 tree index = ((exp)->exp.operands[1]);
 int iunsignedp = ((((index)->common.type))->common.unsigned_flag);
 tree set_type = ((set)->common.type);
 tree set_low_bound = ((((set_type)->type.values))->type.minval);
 tree set_high_bound = ((((set_type)->type.values))->type.maxval);
 rtx index_val = expand_expr (index, 0, VOIDmode, 0);
 rtx lo_r = expand_expr (set_low_bound, 0, VOIDmode, 0);
 rtx hi_r = expand_expr (set_high_bound, 0, VOIDmode, 0);
 rtx setval = expand_expr (set, 0, VOIDmode, 0);
 rtx setaddr = (((setval)->fld[0]).rtx);
 enum machine_mode index_mode = ((((index)->common.type))->type.mode);
 rtx rlow;
 rtx diff, quo, rem, addr, bit, result;



 if (((((enum tree_code) (set_high_bound)->common.code) == INTEGER_CST
      && ((enum tree_code) (set_low_bound)->common.code) == INTEGER_CST
      && tree_int_cst_lt (set_high_bound, set_low_bound))
      || (((enum tree_code) (index)->common.code) == INTEGER_CST
   && ((enum tree_code) (set_low_bound)->common.code) == INTEGER_CST
   && tree_int_cst_lt (index, set_low_bound))
      || (((enum tree_code) (set_high_bound)->common.code) == INTEGER_CST
   && ((enum tree_code) (index)->common.code) == INTEGER_CST
   && tree_int_cst_lt (set_high_bound, index))))
   return (const_int_rtx[64]);

 if (target == 0)
   target = gen_reg_rtx (tmode != VOIDmode ? tmode : mode);




 op0 = gen_label_rtx ();
 op1 = gen_label_rtx ();

 if (! (((enum rtx_code) (index_val)->code) == CONST_INT
        && ((enum rtx_code) (lo_r)->code) == CONST_INT))
   emit_cmp_and_jump_insns (index_val, lo_r, LT, (rtx) 0,
       ((enum machine_mode) (index_val)->mode), iunsignedp, op1);

 if (! (((enum rtx_code) (index_val)->code) == CONST_INT
        && ((enum rtx_code) (hi_r)->code) == CONST_INT))
   emit_cmp_and_jump_insns (index_val, hi_r, GT, (rtx) 0,
       ((enum machine_mode) (index_val)->mode), iunsignedp, op1);



 if (((enum rtx_code) (lo_r)->code) == CONST_INT)
   rlow = gen_rtx_CONST_INT (VOIDmode, (long long) ((((lo_r)->fld[0]).rtwint) & ~((long long) 1 << 8)));

 else
   rlow = expand_binop (index_mode, (optab_table[OTI_and]), lo_r,
          gen_rtx_CONST_INT (VOIDmode, (long long) (~((long long) 1 << 8))),
          (rtx) 0, iunsignedp, OPTAB_LIB_WIDEN);

 diff = expand_binop (index_mode, (optab_table[OTI_sub]), index_val, rlow,
        (rtx) 0, iunsignedp, OPTAB_LIB_WIDEN);

 quo = expand_divmod (0, TRUNC_DIV_EXPR, index_mode, diff,
        gen_rtx_CONST_INT (VOIDmode, (long long) (8)), (rtx) 0, iunsignedp);
 rem = expand_divmod (1, TRUNC_MOD_EXPR, index_mode, index_val,
        gen_rtx_CONST_INT (VOIDmode, (long long) (8)), (rtx) 0, iunsignedp);

 addr = memory_address (byte_mode,
          expand_binop (index_mode, (optab_table[OTI_add]), diff,
          setaddr, (rtx) 0, iunsignedp,
          OPTAB_LIB_WIDEN));


 bit = expand_shift (RSHIFT_EXPR, byte_mode,
       gen_rtx_MEM (byte_mode, addr),
       make_tree (((index)->common.type), rem),
       (rtx) 0, 1);
 result = expand_binop (byte_mode, (optab_table[OTI_and]), bit, (const_int_rtx[64 +1]),
          ((enum machine_mode) (target)->mode) == byte_mode ? target : 0,
          1, OPTAB_LIB_WIDEN);

 if (result != target)
   convert_move (target, result, 1);


 emit_jump (op0);
 emit_label (op1);
 emit_move_insn (target, (const_int_rtx[64]));
 emit_label (op0);
 return target;
      }

    case WITH_CLEANUP_EXPR:
      if ((*(rtx *) &(exp)->exp.operands[2]) == 0)
 {
   (*(rtx *) &(exp)->exp.operands[2])
     = expand_expr (((exp)->exp.operands[0]), target, tmode, modifier);
   expand_decl_cleanup_eh ((tree) ((void *)0), ((exp)->exp.operands[1]),
      ((exp)->common.static_flag));


   ((exp)->exp.operands[1]) = 0;
 }
      return (*(rtx *) &(exp)->exp.operands[2]);

    case CLEANUP_POINT_EXPR:
      {


 expand_start_bindings_and_block(2, (tree) ((void *)0));

 (cfun->x_target_temp_slot_level) = (cfun->x_temp_slot_level);

 op0 = expand_expr (((exp)->exp.operands[0]), target, tmode, modifier);

 if (! ignore)
   op0 = force_not_mem (op0);
 preserve_temp_slots (op0);
 expand_end_bindings ((tree) ((void *)0), 0, 0);
      }
      return op0;

    case CALL_EXPR:

      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ADDR_EXPR
   && (((enum tree_code) (((((exp)->exp.operands[0]))->exp.operands[0]))->common.code)
       == FUNCTION_DECL)
   && (((((((exp)->exp.operands[0]))->exp.operands[0]))->decl.built_in_class) != NOT_BUILT_IN))
 {
   if (((((((exp)->exp.operands[0]))->exp.operands[0]))->decl.built_in_class)
       == BUILT_IN_FRONTEND)
     return (*lang_hooks.expand_expr) (exp, original_target,
           tmode, modifier);
   else
     return expand_builtin (exp, target, subtarget, tmode, ignore);
 }

      return expand_call (exp, target, ignore);

    case NON_LVALUE_EXPR:
    case NOP_EXPR:
    case CONVERT_EXPR:
    case REFERENCE_EXPR:
      if (((exp)->exp.operands[0]) == global_trees[TI_ERROR_MARK])
 return (const_int_rtx[64]);

      if (((enum tree_code) (type)->common.code) == UNION_TYPE)
 {
   tree valtype = ((((exp)->exp.operands[0]))->common.type);



   if (mode == BLKmode && ((valtype)->type.mode) == BLKmode)
     {
       rtx result = expand_expr (((exp)->exp.operands[0]), target, tmode,
     modifier);

       result = copy_rtx (result);
       set_mem_attributes (result, exp, 0);
       return result;
     }

   if (target == 0)
     target = assign_temp (type, 0, 1, 1);

   if (((enum rtx_code) (target)->code) == MEM)

     store_expr (((exp)->exp.operands[0]),
   adjust_address_1 (target, ((valtype)->type.mode), 0, 1, 1),
   modifier == EXPAND_STACK_PARM ? 2 : 0);

   else if (((enum rtx_code) (target)->code) == REG)

     store_field (target,
    (((int_size_in_bytes (((((exp)->exp.operands[0]))->common.type)) * 8)) < ((long long) (mode_bitsize[(int) (mode)])) ? ((int_size_in_bytes (((((exp)->exp.operands[0]))->common.type)) * 8)) : ((long long) (mode_bitsize[(int) (mode)]))),



    0, ((valtype)->type.mode), ((exp)->exp.operands[0]),
    VOIDmode, 0, type, 0);
   else
     fancy_abort ("../../../kgccfe/gnu/expr.c", 7955, __FUNCTION__);


   return target;
 }

      if (mode == ((((((exp)->exp.operands[0]))->common.type))->type.mode))
 {
   op0 = expand_expr (((exp)->exp.operands[0]), target, VOIDmode,
        modifier);




   if (((((((exp)->exp.operands[0]))->common.type))->common.unsigned_flag) != unsignedp
       && ((enum rtx_code) (op0)->code) == SUBREG)
     (((op0))->in_struct) = 0;

   return op0;
 }

      op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, mode, modifier);
      if (((enum machine_mode) (op0)->mode) == mode)
 return op0;


      if ((((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX))
 {
   tree inner_type = ((((exp)->exp.operands[0]))->common.type);
   enum machine_mode inner_mode = ((inner_type)->type.mode);

   if (modifier == EXPAND_INITIALIZER)
     return simplify_gen_subreg (mode, op0, inner_mode,
     subreg_lowpart_offset (mode,
              inner_mode));
   else
     return convert_modes (mode, inner_mode, op0,
      ((inner_type)->common.unsigned_flag));
 }

      if (modifier == EXPAND_INITIALIZER)
 return gen_rtx_fmt_e (unsignedp ? ZERO_EXTEND : SIGN_EXTEND, mode, op0);

      if (target == 0)
 return
   convert_to_mode (mode, op0,
      ((((((exp)->exp.operands[0]))->common.type))->common.unsigned_flag));
      else
 convert_move (target, op0,
        ((((((exp)->exp.operands[0]))->common.type))->common.unsigned_flag));
      return target;

    case VIEW_CONVERT_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, mode, modifier);





      if (((type)->type.mode) == ((enum machine_mode) (op0)->mode))
 ;
      else if (((type)->type.mode) != BLKmode && ((enum machine_mode) (op0)->mode) != BLKmode
        && (mode_size[(int) (((type)->type.mode))]) <= ((target_flags & 0x00002000) ? 8 : 4)
        && (mode_size[(int) (((enum machine_mode) (op0)->mode))]) <= ((target_flags & 0x00002000) ? 8 : 4))
 op0 = gen_lowpart (((type)->type.mode), op0);
      else if (((enum rtx_code) (op0)->code) != MEM)
 {




   tree inner_type = ((((exp)->exp.operands[0]))->common.type);

   if (((exp)->common.addressable_flag))
     fancy_abort ("../../../kgccfe/gnu/expr.c", 8029, __FUNCTION__);

   if (target == 0 || ((enum machine_mode) (target)->mode) != ((inner_type)->type.mode))
     target
       = assign_stack_temp_for_type
  (((inner_type)->type.mode),
   (mode_size[(int) (((inner_type)->type.mode))]), 0, inner_type);

   emit_move_insn (target, op0);
   op0 = target;
 }





      if (((enum rtx_code) (op0)->code) == MEM)
 {
   op0 = copy_rtx (op0);

   if (((type)->common.nothrow_flag))
     set_mem_align (op0, ((((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8))) > (((type)->type.align)) ? (((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8))) : (((type)->type.align))));
   else if (((type)->type.mode) != BLKmode && 1
     && ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)) < get_mode_alignment (((type)->type.mode)))
     {
       tree inner_type = ((((exp)->exp.operands[0]))->common.type);
       long long temp_size
  = ((int_size_in_bytes (inner_type)) > ((long long) (mode_size[(int) (((type)->type.mode))])) ? (int_size_in_bytes (inner_type)) : ((long long) (mode_size[(int) (((type)->type.mode))])));

       rtx new = assign_stack_temp_for_type (((type)->type.mode),
          temp_size, 0, type);
       rtx new_with_op0_mode = adjust_address_1 (new, ((enum machine_mode) (op0)->mode), 0, 1, 1);

       if (((exp)->common.addressable_flag))
  fancy_abort ("../../../kgccfe/gnu/expr.c", 8063, __FUNCTION__);

       if (((enum machine_mode) (op0)->mode) == BLKmode)
  emit_block_move (new_with_op0_mode, op0,
     gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (((type)->type.mode))]))),
     (modifier == EXPAND_STACK_PARM
      ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));
       else
  emit_move_insn (new_with_op0_mode, op0);

       op0 = new;
     }

   op0 = adjust_address_1 (op0, ((type)->type.mode), 0, 1, 1);
 }

      return op0;

    case PLUS_EXPR:
      this_optab = ! unsignedp && flag_trapv
                   && ((mode_class[(int) (mode)]) == MODE_INT)
                   ? (optab_table[OTI_addv]) : (optab_table[OTI_add]);
# 8097 "../../../kgccfe/gnu/expr.c"
      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == PLUS_EXPR
   && ((enum tree_code) (((((exp)->exp.operands[0]))->exp.operands[1]))->common.code) == INTEGER_CST
   && ((enum tree_code) (((exp)->exp.operands[1]))->common.code) == RTL_EXPR
   && ((*(rtx *) &(((exp)->exp.operands[1]))->exp.operands[1]) == (global_rtl[GR_FRAME_POINTER])
       || (*(rtx *) &(((exp)->exp.operands[1]))->exp.operands[1]) == (global_rtl[GR_STACK_POINTER])
       || (*(rtx *) &(((exp)->exp.operands[1]))->exp.operands[1]) == (global_rtl[GR_ARG_POINTER])))
 {
   tree t = ((exp)->exp.operands[1]);

   ((exp)->exp.operands[1]) = ((((exp)->exp.operands[0]))->exp.operands[0]);
   ((((exp)->exp.operands[0]))->exp.operands[0]) = t;
 }
# 8118 "../../../kgccfe/gnu/expr.c"
      if (modifier == EXPAND_SUM || modifier == EXPAND_INITIALIZER
   || (mode == ptr_mode && (unsignedp || ! flag_trapv)))
 {
   if (modifier == EXPAND_STACK_PARM)
     target = 0;
   if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == INTEGER_CST
       && (mode_bitsize[(int) (mode)]) <= (8 * 8)
       && ((((exp)->exp.operands[1]))->common.constant_flag))
     {
       rtx constant_part;

       op1 = expand_expr (((exp)->exp.operands[1]), subtarget, VOIDmode,
     EXPAND_SUM);




       constant_part
  = immed_double_const ((((((exp)->exp.operands[0]))->int_cst.int_cst).low),
          (long long) 0,
          ((((((exp)->exp.operands[1]))->common.type))->type.mode));
       op1 = plus_constant_wide ((op1), (long long) ((((constant_part)->fld[0]).rtwint)));
       if (modifier != EXPAND_SUM && modifier != EXPAND_INITIALIZER)
  op1 = force_operand (op1, target);
       return op1;
     }

   else if (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == INTEGER_CST
     && (mode_bitsize[(int) (mode)]) <= (8 * 4)
     && ((((exp)->exp.operands[0]))->common.constant_flag))
     {
       rtx constant_part;

       op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode,
     (modifier == EXPAND_INITIALIZER
     ? EXPAND_INITIALIZER : EXPAND_SUM));
       if (! (((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX))
  {
    op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0,
         VOIDmode, modifier);


    if (modifier != EXPAND_SUM && modifier != EXPAND_INITIALIZER)
      goto binop2;
    goto both_summands;
  }




       constant_part
  = immed_double_const ((((((exp)->exp.operands[1]))->int_cst.int_cst).low),
          (long long) 0,
          ((((((exp)->exp.operands[0]))->common.type))->type.mode));
       op0 = plus_constant_wide ((op0), (long long) ((((constant_part)->fld[0]).rtwint)));
       if (modifier != EXPAND_SUM && modifier != EXPAND_INITIALIZER)
  op0 = force_operand (op0, target);
       return op0;
     }
 }

      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;





      if ((modifier != EXPAND_SUM && modifier != EXPAND_INITIALIZER)
   || mode != ptr_mode)
 {
   op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
   op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
   if (op0 == (const_int_rtx[64]))
     return op1;
   if (op1 == (const_int_rtx[64]))
     return op0;
   goto binop2;
 }

      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, modifier);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, modifier);



    both_summands:

      if (((enum rtx_code) (op0)->code) == PLUS
   && (((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
 {
   temp = op0;
   op0 = op1;
   op1 = temp;
 }


      if (((enum rtx_code) (op1)->code) == PLUS
   && (((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
 {
   rtx constant_term = (const_int_rtx[64]);

   temp = simplify_binary_operation (PLUS, mode, (((op1)->fld[0]).rtx), op0);
   if (temp != 0)
     op0 = temp;

   else if (((enum rtx_code) (op0)->code) == MULT)
     op0 = gen_rtx_fmt_ee (PLUS, (mode), (op0), ((((op1)->fld[0]).rtx)));
   else
     op0 = gen_rtx_fmt_ee (PLUS, (mode), ((((op1)->fld[0]).rtx)), (op0));


   op0 = eliminate_constant_term (op0, &constant_term);





   temp = simplify_binary_operation (PLUS, mode, constant_term,
         (((op1)->fld[1]).rtx));
   if (temp != 0)
     op1 = temp;
   else
     op1 = gen_rtx_fmt_ee (PLUS, (mode), (constant_term), ((((op1)->fld[1]).rtx)));
 }


      if ((((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX) || ((enum rtx_code) (op1)->code) == MULT)
 temp = op1, op1 = op0, op0 = temp;

      temp = simplify_binary_operation (PLUS, mode, op0, op1);
      return temp ? temp : gen_rtx_fmt_ee (PLUS, (mode), (op0), (op1));

    case MINUS_EXPR:





      if ((modifier == EXPAND_SUM || modifier == EXPAND_INITIALIZER)
   && really_constant_p (((exp)->exp.operands[0]))
   && really_constant_p (((exp)->exp.operands[1])))
 {
   rtx op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, VOIDmode,
     modifier);
   rtx op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode,
     modifier);



   if (((enum rtx_code) (op1)->code) == CONST_INT)
     return plus_constant_wide ((op0), (long long) (- (((op1)->fld[0]).rtwint)));
   else
     return gen_rtx_fmt_ee (MINUS, (mode), (op0), (op1));
 }

      this_optab = ! unsignedp && flag_trapv
                   && ((mode_class[(int) (mode)]) == MODE_INT)
                   ? (optab_table[OTI_subv]) : (optab_table[OTI_sub]);





      if ((modifier != EXPAND_SUM && modifier != EXPAND_INITIALIZER)
   || mode != ptr_mode)
 goto binop;

      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;

      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, modifier);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, modifier);


      if (((enum rtx_code) (op1)->code) == CONST_INT)
 {
   op1 = negate_rtx (mode, op1);
   goto both_summands;
 }

      goto binop2;

    case MULT_EXPR:



      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == INTEGER_CST)
 {
   tree t1 = ((exp)->exp.operands[0]);
   ((exp)->exp.operands[0]) = ((exp)->exp.operands[1]);
   ((exp)->exp.operands[1]) = t1;
 }




      if (modifier == EXPAND_SUM && mode == ptr_mode
   && host_integerp (((exp)->exp.operands[1]), 0))
 {
   tree exp1 = ((exp)->exp.operands[1]);

   op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode,
        EXPAND_SUM);
# 8332 "../../../kgccfe/gnu/expr.c"
   if (((enum rtx_code) (op0)->code) != REG)
     op0 = force_operand (op0, (rtx) 0);
   if (((enum rtx_code) (op0)->code) != REG)
     op0 = copy_to_mode_reg (mode, op0);

   return gen_rtx_fmt_ee (MULT, (mode), (op0), (gen_int_mode (tree_low_cst (exp1, 0), ((((exp1)->common.type))->type.mode))));


 }

      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;

      if (modifier == EXPAND_STACK_PARM)
 target = 0;





      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == NOP_EXPR
   && ((enum tree_code) (type)->common.code) == INTEGER_TYPE
   && (((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->type.precision)
       < ((((((exp)->exp.operands[0]))->common.type))->type.precision))
   && ((((enum tree_code) (((exp)->exp.operands[1]))->common.code) == INTEGER_CST
        && int_fits_type_p (((exp)->exp.operands[1]),
       ((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))

        && (((mode_bitsize[(int) (((((((exp)->exp.operands[1]))->common.type))->type.mode))])
      > (8 * 8))
     || exact_log2_wide ((unsigned long long) ((((((exp)->exp.operands[1]))->int_cst.int_cst).low))) < 0))
       ||
       (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == NOP_EXPR
        && (((((((((exp)->exp.operands[1]))->exp.operands[0]))->common.type))->type.precision)
     ==
     ((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->type.precision))


        && (((((((((exp)->exp.operands[1]))->exp.operands[0]))->common.type))->common.unsigned_flag)
     ==
     ((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->common.unsigned_flag)))))
 {
   enum machine_mode innermode
     = ((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->type.mode);
   optab other_optab = (((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->common.unsigned_flag)
   ? (optab_table[OTI_smul_widen]) : (optab_table[OTI_umul_widen]));
   this_optab = (((((((((exp)->exp.operands[0]))->exp.operands[0]))->common.type))->common.unsigned_flag)
   ? (optab_table[OTI_umul_widen]) : (optab_table[OTI_smul_widen]));
   if (mode == ((enum machine_mode)mode_wider_mode[(int) (innermode)]))
     {
       if (this_optab->handlers[(int) mode].insn_code != CODE_FOR_nothing)
  {
    op0 = expand_expr (((((exp)->exp.operands[0]))->exp.operands[0]),
         (rtx) 0, VOIDmode, 0);
    if (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == INTEGER_CST)
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0,
           VOIDmode, 0);
    else
      op1 = expand_expr (((((exp)->exp.operands[1]))->exp.operands[0]),
           (rtx) 0, VOIDmode, 0);
    goto binop2;
  }
       else if (other_optab->handlers[(int) mode].insn_code != CODE_FOR_nothing
         && innermode == word_mode)
  {
    rtx htem;
    op0 = expand_expr (((((exp)->exp.operands[0]))->exp.operands[0]),
         (rtx) 0, VOIDmode, 0);
    if (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == INTEGER_CST)
      op1 = convert_modes (innermode, mode,
      expand_expr (((exp)->exp.operands[1]),
            (rtx) 0, VOIDmode, 0),
      unsignedp);
    else
      op1 = expand_expr (((((exp)->exp.operands[1]))->exp.operands[0]),
           (rtx) 0, VOIDmode, 0);
    temp = expand_binop (mode, other_optab, op0, op1, target,
           unsignedp, OPTAB_LIB_WIDEN);
    htem = expand_mult_highpart_adjust (innermode,
            gen_highpart (innermode, temp),
            op0, op1,
            gen_highpart (innermode, temp),
            unsignedp);
    emit_move_insn (gen_highpart (innermode, temp), htem);
    return temp;
  }
     }
 }
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
      return expand_mult (mode, op0, op1, target, unsignedp);

    case TRUNC_DIV_EXPR:
    case FLOOR_DIV_EXPR:
    case CEIL_DIV_EXPR:
    case ROUND_DIV_EXPR:
    case EXACT_DIV_EXPR:
      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;
      if (modifier == EXPAND_STACK_PARM)
 target = 0;



      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
      return expand_divmod (0, code, mode, op0, op1, target, unsignedp);

    case RDIV_EXPR:



      if (flag_unsafe_math_optimizations && optimize && !optimize_size
   && ((enum tree_code) (type)->common.code) == REAL_TYPE
   && !real_onep (((exp)->exp.operands[0])))
        return expand_expr (build (MULT_EXPR, type, ((exp)->exp.operands[0]),
       build (RDIV_EXPR, type,
       build_real (type, dconst1),
       ((exp)->exp.operands[1]))),
       target, tmode, modifier);
      this_optab = (optab_table[OTI_sdiv]);
      goto binop;

    case TRUNC_MOD_EXPR:
    case FLOOR_MOD_EXPR:
    case CEIL_MOD_EXPR:
    case ROUND_MOD_EXPR:
      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
      return expand_divmod (1, code, mode, op0, op1, target, unsignedp);

    case FIX_ROUND_EXPR:
    case FIX_FLOOR_EXPR:
    case FIX_CEIL_EXPR:
      fancy_abort ("../../../kgccfe/gnu/expr.c", 8470, __FUNCTION__);

    case FIX_TRUNC_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, VOIDmode, 0);
      if (target == 0 || modifier == EXPAND_STACK_PARM)
 target = gen_reg_rtx (mode);
      expand_fix (target, op0, unsignedp);
      return target;

    case FLOAT_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, VOIDmode, 0);
      if (target == 0 || modifier == EXPAND_STACK_PARM)
 target = gen_reg_rtx (mode);


      if (((enum machine_mode) (op0)->mode) == VOIDmode)
 op0 = copy_to_mode_reg (((((((exp)->exp.operands[0]))->common.type))->type.mode),
    op0);
      expand_float (target, op0,
      ((((((exp)->exp.operands[0]))->common.type))->common.unsigned_flag));
      return target;

    case NEGATE_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      temp = expand_unop (mode,
     ! unsignedp && flag_trapv
     && ((mode_class[(int) (mode)]) == MODE_INT)
     ? (optab_table[OTI_negv]) : (optab_table[OTI_neg]), op0, target, 0);
      if (temp == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 8501, __FUNCTION__);
      return temp;

    case ABS_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      if (modifier == EXPAND_STACK_PARM)
 target = 0;


      if ((mode_class[(int) (mode)]) == MODE_COMPLEX_INT
   || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT)
 return expand_complex_abs (mode, op0, target, unsignedp);



      if (((type)->common.unsigned_flag))
 return op0;

      return expand_abs (mode, op0, target, unsignedp,
    safe_from_p (target, ((exp)->exp.operands[0]), 1));

    case MAX_EXPR:
    case MIN_EXPR:
      target = original_target;
      if (target == 0
   || modifier == EXPAND_STACK_PARM
   || ! safe_from_p (target, ((exp)->exp.operands[1]), 1)
   || (((enum rtx_code) (target)->code) == MEM && (((target))->volatil))
   || ((enum machine_mode) (target)->mode) != mode
   || (((enum rtx_code) (target)->code) == REG
       && (((target)->fld[0]).rtuint) < 176))
 target = gen_reg_rtx (mode);
      op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
      op0 = expand_expr (((exp)->exp.operands[0]), target, VOIDmode, 0);




      this_optab = (((type)->common.unsigned_flag)
      ? (code == MIN_EXPR ? (optab_table[OTI_umin]) : (optab_table[OTI_umax]))
      : (code == MIN_EXPR ? (optab_table[OTI_smin]) : (optab_table[OTI_smax])));

      temp = expand_binop (mode, this_optab, op0, op1, target, unsignedp,
      OPTAB_WIDEN);
      if (temp != 0)
 return temp;




      if (((enum rtx_code) (target)->code) == MEM)
 target = gen_reg_rtx (mode);

      if (target != op0)
 emit_move_insn (target, op0);

      op0 = gen_label_rtx ();



      if ((mode_class[(int) (mode)]) == MODE_INT
   && ! can_compare_p (GE, mode, ccp_jump))
 {
   if (code == MAX_EXPR)
     do_jump_by_parts_greater_rtx (mode, ((type)->common.unsigned_flag),
       target, op1, (rtx) 0, op0);
   else
     do_jump_by_parts_greater_rtx (mode, ((type)->common.unsigned_flag),
       op1, target, (rtx) 0, op0);
 }
      else
 {
   int unsignedp = ((((((exp)->exp.operands[1]))->common.type))->common.unsigned_flag);
   do_compare_rtx_and_jump (target, op1, code == MAX_EXPR ? GE : LE,
       unsignedp, mode, (rtx) 0, (rtx) 0,
       op0);
 }
      emit_move_insn (target, op1);
      emit_label (op0);
      return target;

    case BIT_NOT_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      temp = expand_unop (mode, (optab_table[OTI_one_cmpl]), op0, target, 1);
      if (temp == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 8588, __FUNCTION__);
      return temp;

    case FFS_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      temp = expand_unop (mode, (optab_table[OTI_ffs]), op0, target, 1);
      if (temp == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 8597, __FUNCTION__);
      return temp;
# 8613 "../../../kgccfe/gnu/expr.c"
    case TRUTH_AND_EXPR:
    case BIT_AND_EXPR:
      this_optab = (optab_table[OTI_and]);
      goto binop;

    case TRUTH_OR_EXPR:
    case BIT_IOR_EXPR:
      this_optab = (optab_table[OTI_ior]);
      goto binop;

    case TRUTH_XOR_EXPR:
    case BIT_XOR_EXPR:
      this_optab = (optab_table[OTI_xor]);
      goto binop;

    case LSHIFT_EXPR:
    case RSHIFT_EXPR:
    case LROTATE_EXPR:
    case RROTATE_EXPR:
      if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
 subtarget = 0;
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
      return expand_shift (code, mode, op0, ((exp)->exp.operands[1]), target,
      unsignedp);



    case LT_EXPR:
    case LE_EXPR:
    case GT_EXPR:
    case GE_EXPR:
    case EQ_EXPR:
    case NE_EXPR:
    case UNORDERED_EXPR:
    case ORDERED_EXPR:
    case UNLT_EXPR:
    case UNLE_EXPR:
    case UNGT_EXPR:
    case UNGE_EXPR:
    case UNEQ_EXPR:
      temp = do_store_flag (exp,
       modifier != EXPAND_STACK_PARM ? target : (rtx) 0,
       tmode != VOIDmode ? tmode : mode, 0);
      if (temp != 0)
 return temp;


      if (code == NE_EXPR && integer_zerop (((exp)->exp.operands[1]))
   && original_target
   && ((enum rtx_code) (original_target)->code) == REG
   && (((enum machine_mode) (original_target)->mode)
       == ((((((exp)->exp.operands[0]))->common.type))->type.mode)))
 {
   temp = expand_expr (((exp)->exp.operands[0]), original_target,
         VOIDmode, 0);


   if (((enum rtx_code) (temp)->code) == CONST_INT)
     {
       if ((((temp)->fld[0]).rtwint) != 0)
         emit_move_insn (target, (const_int_rtx[64 +1]));
       else
         emit_move_insn (target, (const_int_rtx[64]));

       return target;
     }

   if (temp != original_target)
     {
       enum machine_mode mode1 = ((enum machine_mode) (temp)->mode);
       if (mode1 == VOIDmode)
  mode1 = tmode != VOIDmode ? tmode : mode;

       temp = copy_to_mode_reg (mode1, temp);
     }

   op1 = gen_label_rtx ();
   emit_cmp_and_jump_insns (temp, (const_int_rtx[64]), EQ, (rtx) 0,
       ((enum machine_mode) (temp)->mode), unsignedp, op1);
   emit_move_insn (temp, (const_int_rtx[64 +1]));
   emit_label (op1);
   return temp;
 }





    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
      if (! ignore
   && (target == 0
       || modifier == EXPAND_STACK_PARM
       || ! safe_from_p (target, exp, 1)


       || (!optimize && ((enum rtx_code) (target)->code) == REG
    && (((target)->fld[0]).rtuint) < 176)))
 target = gen_reg_rtx (tmode != VOIDmode ? tmode : mode);

      if (target)
 emit_clr_insn (target);

      op1 = gen_label_rtx ();
      jumpifnot (exp, op1);

      if (target)
 emit_0_to_1_insn (target);

      emit_label (op1);
      return ignore ? (const_int_rtx[64]) : target;

    case TRUTH_NOT_EXPR:
      if (modifier == EXPAND_STACK_PARM)
 target = 0;
      op0 = expand_expr (((exp)->exp.operands[0]), target, VOIDmode, 0);


      temp = expand_binop (mode, (optab_table[OTI_xor]), op0, (const_int_rtx[64 +1]),
      target, 1, OPTAB_LIB_WIDEN);
      if (temp == 0)
 fancy_abort ("../../../kgccfe/gnu/expr.c", 8736, __FUNCTION__);
      return temp;

    case COMPOUND_EXPR:
      expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode, 0);
      emit_queue ();
      return expand_expr (((exp)->exp.operands[1]),
     (ignore ? (const_int_rtx[64]) : target),
     VOIDmode, modifier);

    case COND_EXPR:


      if (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == NOP_EXPR
   && ((enum tree_code) (((exp)->exp.operands[2]))->common.code) == NOP_EXPR
   && (((((((exp)->exp.operands[1]))->exp.operands[0]))->common.type)
       == ((((((exp)->exp.operands[2]))->exp.operands[0]))->common.type)))
 {
   tree iftrue = ((((exp)->exp.operands[1]))->exp.operands[0]);
   tree iffalse = ((((exp)->exp.operands[2]))->exp.operands[0]);

   if ((tree_code_type[(int) (((enum tree_code) (iftrue)->common.code))] == '2'
        && operand_equal_p (iffalse, ((iftrue)->exp.operands[0]), 0))
       || (tree_code_type[(int) (((enum tree_code) (iffalse)->common.code))] == '2'
    && operand_equal_p (iftrue, ((iffalse)->exp.operands[0]), 0))
       || (tree_code_type[(int) (((enum tree_code) (iftrue)->common.code))] == '1'
    && operand_equal_p (iffalse, ((iftrue)->exp.operands[0]), 0))
       || (tree_code_type[(int) (((enum tree_code) (iffalse)->common.code))] == '1'
    && operand_equal_p (iftrue, ((iffalse)->exp.operands[0]), 0)))
     return expand_expr (build1 (NOP_EXPR, type,
     build (COND_EXPR, ((iftrue)->common.type),
            ((exp)->exp.operands[0]),
            iftrue, iffalse)),
    target, tmode, modifier);
 }

      {
# 8781 "../../../kgccfe/gnu/expr.c"
 tree singleton = 0;
 tree binary_op = 0, unary_op = 0;



 if (integer_onep (((exp)->exp.operands[1]))
     && integer_zerop (((exp)->exp.operands[2]))
     && tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[0]))->common.code))] == '<')
   {
     if (ignore)
       {
  expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode,
        modifier);
  return (const_int_rtx[64]);
       }

     if (modifier == EXPAND_STACK_PARM)
       target = 0;
     op0 = expand_expr (((exp)->exp.operands[0]), target, mode, modifier);
     if (((enum machine_mode) (op0)->mode) == mode)
       return op0;

     if (target == 0)
       target = gen_reg_rtx (mode);
     convert_move (target, op0, unsignedp);
     return target;
   }







 if (tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[1]))->common.code))] == '2'
     && operand_equal_p (((exp)->exp.operands[2]),
    ((((exp)->exp.operands[1]))->exp.operands[0]), 0))
   singleton = ((exp)->exp.operands[2]), binary_op = ((exp)->exp.operands[1]);
 else if (tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[2]))->common.code))] == '2'
   && operand_equal_p (((exp)->exp.operands[1]),
         ((((exp)->exp.operands[2]))->exp.operands[0]), 0))
   singleton = ((exp)->exp.operands[1]), binary_op = ((exp)->exp.operands[2]);
 else if (tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[1]))->common.code))] == '1'
   && operand_equal_p (((exp)->exp.operands[2]),
         ((((exp)->exp.operands[1]))->exp.operands[0]), 0))
   singleton = ((exp)->exp.operands[2]), unary_op = ((exp)->exp.operands[1]);
 else if (tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[2]))->common.code))] == '1'
   && operand_equal_p (((exp)->exp.operands[1]),
         ((((exp)->exp.operands[2]))->exp.operands[0]), 0))
   singleton = ((exp)->exp.operands[1]), unary_op = ((exp)->exp.operands[2]);






 if (ignore)
   temp = 0;
 else if (modifier == EXPAND_STACK_PARM)
   temp = assign_temp (type, 0, 0, 1);
 else if (original_target
   && (safe_from_p (original_target, ((exp)->exp.operands[0]), 1)
       || (singleton && ((enum rtx_code) (original_target)->code) == REG
    && (((original_target)->fld[0]).rtuint) >= 176
    && original_target == var_rtx (singleton)))
   && ((enum machine_mode) (original_target)->mode) == mode

   && (! can_conditionally_move_p (mode)
       || ((enum rtx_code) (original_target)->code) == REG
       || ((type)->common.addressable_flag))

   && (((enum rtx_code) (original_target)->code) != MEM
       || ((type)->common.addressable_flag)))
   temp = original_target;
 else if (((type)->common.addressable_flag))
   fancy_abort ("../../../kgccfe/gnu/expr.c", 8856, __FUNCTION__);
 else
   temp = assign_temp (type, 0, 0, 1);





 if (temp && singleton && binary_op
     && (((enum tree_code) (binary_op)->common.code) == PLUS_EXPR
  || ((enum tree_code) (binary_op)->common.code) == MINUS_EXPR
  || ((enum tree_code) (binary_op)->common.code) == BIT_IOR_EXPR
  || ((enum tree_code) (binary_op)->common.code) == BIT_XOR_EXPR)
     && (((! (target_flags & 0x00100000) && ((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000))) ? 2 : 1) >= 3 ? integer_pow2p (((binary_op)->exp.operands[1]))
  : integer_onep (((binary_op)->exp.operands[1])))
     && tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[0]))->common.code))] == '<')
   {
     rtx result;
     tree cond;
     optab boptab = (((enum tree_code) (binary_op)->common.code) == PLUS_EXPR
       ? ((flag_trapv && ! (((((binary_op)->common.type)))->common.unsigned_flag))
          ? (optab_table[OTI_addv]) : (optab_table[OTI_add]))
       : ((enum tree_code) (binary_op)->common.code) == MINUS_EXPR
       ? ((flag_trapv && ! (((((binary_op)->common.type)))->common.unsigned_flag))
          ? (optab_table[OTI_subv]) : (optab_table[OTI_sub]))
       : ((enum tree_code) (binary_op)->common.code) == BIT_IOR_EXPR ? (optab_table[OTI_ior])
       : (optab_table[OTI_xor]));


     if (singleton == ((exp)->exp.operands[1]))
       cond = invert_truthvalue (((exp)->exp.operands[0]));
     else
       cond = ((exp)->exp.operands[0]);

     result = do_store_flag (cond, (safe_from_p (temp, singleton, 1)
        ? temp : (rtx) 0),
        mode, ((! (target_flags & 0x00100000) && ((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000))) ? 2 : 1) <= 1);

     if (result != 0 && ! integer_onep (((binary_op)->exp.operands[1])))
       result = expand_shift (LSHIFT_EXPR, mode, result,
         build_int_2_wide ((unsigned long long) (tree_log2 (((binary_op)->exp.operands[1]))), (long long) (0)),



         (safe_from_p (temp, singleton, 1)
          ? temp : (rtx) 0), 0);

     if (result)
       {
  op1 = expand_expr (singleton, (rtx) 0, VOIDmode, 0);
  return expand_binop (mode, boptab, op1, result, temp,
         unsignedp, OPTAB_LIB_WIDEN);
       }
   }

 do_pending_stack_adjust ();
 ((cfun->expr->x_inhibit_defer_pop) += 1);
 op0 = gen_label_rtx ();

 if (singleton && ! ((((exp)->exp.operands[0]))->common.side_effects_flag))
   {
     if (temp != 0)
       {




  if ((binary_op
       && ! safe_from_p (temp, ((binary_op)->exp.operands[1]), 1))
      || (((enum rtx_code) (temp)->code) == REG
   && (((temp)->fld[0]).rtuint) < 176))
    temp = gen_reg_rtx (mode);
  store_expr (singleton, temp,
       modifier == EXPAND_STACK_PARM ? 2 : 0);
       }
     else
       expand_expr (singleton,
      ignore ? (const_int_rtx[64]) : (rtx) 0, VOIDmode, 0);
     if (singleton == ((exp)->exp.operands[1]))
       jumpif (((exp)->exp.operands[0]), op0);
     else
       jumpifnot (((exp)->exp.operands[0]), op0);

     start_cleanup_deferral ();
     if (binary_op && temp == 0)

       expand_expr (((binary_op)->exp.operands[1]),
      ignore ? (const_int_rtx[64]) : (rtx) 0, VOIDmode, 0);
     else if (binary_op)
       store_expr (build (((enum tree_code) (binary_op)->common.code), type,
     make_tree (type, temp),
     ((binary_op)->exp.operands[1])),
     temp, modifier == EXPAND_STACK_PARM ? 2 : 0);
     else
       store_expr (build1 (((enum tree_code) (unary_op)->common.code), type,
      make_tree (type, temp)),
     temp, modifier == EXPAND_STACK_PARM ? 2 : 0);
     op1 = op0;
   }




 else if (temp
   && tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[0]))->common.code))] == '<'
   && integer_zerop (((((exp)->exp.operands[0]))->exp.operands[1]))
   && operand_equal_p (((((exp)->exp.operands[0]))->exp.operands[0]),
         ((exp)->exp.operands[1]), 0)
   && (! ((((exp)->exp.operands[0]))->common.side_effects_flag)
       || ((enum tree_code) (((exp)->exp.operands[1]))->common.code) == SAVE_EXPR)
   && safe_from_p (temp, ((exp)->exp.operands[2]), 1))
   {
     if (((enum rtx_code) (temp)->code) == REG
  && (((temp)->fld[0]).rtuint) < 176)
       temp = gen_reg_rtx (mode);
     store_expr (((exp)->exp.operands[1]), temp,
   modifier == EXPAND_STACK_PARM ? 2 : 0);
     jumpif (((exp)->exp.operands[0]), op0);

     start_cleanup_deferral ();
     store_expr (((exp)->exp.operands[2]), temp,
   modifier == EXPAND_STACK_PARM ? 2 : 0);
     op1 = op0;
   }
 else if (temp
   && tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[0]))->common.code))] == '<'
   && integer_zerop (((((exp)->exp.operands[0]))->exp.operands[1]))
   && operand_equal_p (((((exp)->exp.operands[0]))->exp.operands[0]),
         ((exp)->exp.operands[2]), 0)
   && (! ((((exp)->exp.operands[0]))->common.side_effects_flag)
       || ((enum tree_code) (((exp)->exp.operands[2]))->common.code) == SAVE_EXPR)
   && safe_from_p (temp, ((exp)->exp.operands[1]), 1))
   {
     if (((enum rtx_code) (temp)->code) == REG
  && (((temp)->fld[0]).rtuint) < 176)
       temp = gen_reg_rtx (mode);
     store_expr (((exp)->exp.operands[2]), temp,
   modifier == EXPAND_STACK_PARM ? 2 : 0);
     jumpifnot (((exp)->exp.operands[0]), op0);

     start_cleanup_deferral ();
     store_expr (((exp)->exp.operands[1]), temp,
   modifier == EXPAND_STACK_PARM ? 2 : 0);
     op1 = op0;
   }
 else
   {
     op1 = gen_label_rtx ();
     jumpifnot (((exp)->exp.operands[0]), op0);

     start_cleanup_deferral ();



     if (temp != 0
  && ((((exp)->exp.operands[1]))->common.type) != global_trees[TI_VOID_TYPE])
       store_expr (((exp)->exp.operands[1]), temp,
     modifier == EXPAND_STACK_PARM ? 2 : 0);
     else
       expand_expr (((exp)->exp.operands[1]),
      ignore ? (const_int_rtx[64]) : (rtx) 0, VOIDmode, 0);
     end_cleanup_deferral ();
     emit_queue ();
     emit_jump_insn (gen_jump (op1));
     emit_barrier ();
     emit_label (op0);
     start_cleanup_deferral ();
     if (temp != 0
  && ((((exp)->exp.operands[2]))->common.type) != global_trees[TI_VOID_TYPE])
       store_expr (((exp)->exp.operands[2]), temp,
     modifier == EXPAND_STACK_PARM ? 2 : 0);
     else
       expand_expr (((exp)->exp.operands[2]),
      ignore ? (const_int_rtx[64]) : (rtx) 0, VOIDmode, 0);
   }

 end_cleanup_deferral ();

 emit_queue ();
 emit_label (op1);
 ((cfun->expr->x_inhibit_defer_pop) -= 1);

 return temp;
      }

    case TARGET_EXPR:
      {
# 9052 "../../../kgccfe/gnu/expr.c"
 tree slot = ((exp)->exp.operands[0]);
 tree cleanups = (tree) ((void *)0);
 tree exp1;

 if (((enum tree_code) (slot)->common.code) != VAR_DECL)
   fancy_abort ("../../../kgccfe/gnu/expr.c", 9057, __FUNCTION__);

 if (! ignore)
   target = original_target;




 ((slot)->common.used_flag) = 1;

 if (target == 0)
   {
     if (((slot)->decl.rtl != ((void *)0)))
       {
  target = ((slot)->decl.rtl ? (slot)->decl.rtl : (make_decl_rtl (slot, ((void *)0)), (slot)->decl.rtl));


  if (((exp)->exp.operands[1]) == (tree) ((void *)0))
    return target;
       }
     else
       {
  target = assign_temp (type, 2, 0, 1);

  preserve_temp_slots (target);
  ((slot)->decl.rtl = (target));
  if (((slot)->common.addressable_flag))
    put_var_into_stack (slot, 0);
# 9093 "../../../kgccfe/gnu/expr.c"
  if (((exp)->exp.operands[2]) == 0)
    ((exp)->exp.operands[2])
      = (*lang_hooks.maybe_build_cleanup) (slot);
  cleanups = ((exp)->exp.operands[2]);
       }
   }
 else
   {
# 9109 "../../../kgccfe/gnu/expr.c"
     if (((slot)->decl.rtl != ((void *)0)))
       {
  target = ((slot)->decl.rtl ? (slot)->decl.rtl : (make_decl_rtl (slot, ((void *)0)), (slot)->decl.rtl));


  if (((exp)->exp.operands[1]) == (tree) ((void *)0))
    return target;
       }
     else
       {
  ((slot)->decl.rtl = (target));


  if (((slot)->common.addressable_flag))
    put_var_into_stack (slot, 1);
       }
   }

 exp1 = ((exp)->exp.operands[3]) = ((exp)->exp.operands[1]);

 ((exp)->exp.operands[1]) = (tree) ((void *)0);

 store_expr (exp1, target, modifier == EXPAND_STACK_PARM ? 2 : 0);

 expand_decl_cleanup_eh ((tree) ((void *)0), cleanups, ((exp)->common.static_flag));

 return target;
      }

    case INIT_EXPR:
      {
 tree lhs = ((exp)->exp.operands[0]);
 tree rhs = ((exp)->exp.operands[1]);

 temp = expand_assignment (lhs, rhs, ! ignore, original_target != 0);
 return temp;
      }

    case MODIFY_EXPR:
      {
# 9157 "../../../kgccfe/gnu/expr.c"
 tree lhs = ((exp)->exp.operands[0]);
 tree rhs = ((exp)->exp.operands[1]);

 temp = 0;
# 9170 "../../../kgccfe/gnu/expr.c"
 if (ignore
     && ((enum tree_code) (lhs)->common.code) == COMPONENT_REF
     && (((enum tree_code) (rhs)->common.code) == BIT_IOR_EXPR
  || ((enum tree_code) (rhs)->common.code) == BIT_AND_EXPR)
     && ((rhs)->exp.operands[0]) == lhs
     && ((enum tree_code) (((rhs)->exp.operands[1]))->common.code) == COMPONENT_REF
     && integer_onep (((((lhs)->exp.operands[1]))->decl.size))
     && integer_onep (((((((rhs)->exp.operands[1]))->exp.operands[1]))->decl.size)))
   {
     rtx label = gen_label_rtx ();

     do_jump (((rhs)->exp.operands[1]),
       ((enum tree_code) (rhs)->common.code) == BIT_IOR_EXPR ? label : 0,
       ((enum tree_code) (rhs)->common.code) == BIT_AND_EXPR ? label : 0);
     expand_assignment (lhs, convert (((rhs)->common.type),
          (((enum tree_code) (rhs)->common.code) == BIT_IOR_EXPR
           ? global_trees[TI_INTEGER_ONE]
           : global_trees[TI_INTEGER_ZERO])),
          0, 0);
     do_pending_stack_adjust ();
     emit_label (label);
     return (const_int_rtx[64]);
   }

 temp = expand_assignment (lhs, rhs, ! ignore, original_target != 0);

 return temp;
      }

    case RETURN_EXPR:
      if (!((exp)->exp.operands[0]))
 expand_null_return ();
      else
 expand_return (((exp)->exp.operands[0]));
      return (const_int_rtx[64]);

    case PREINCREMENT_EXPR:
    case PREDECREMENT_EXPR:
      return expand_increment (exp, 0, ignore);

    case POSTINCREMENT_EXPR:
    case POSTDECREMENT_EXPR:

      return expand_increment (exp, ! ignore, ignore);

    case ADDR_EXPR:
      if (modifier == EXPAND_STACK_PARM)
 target = 0;

      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == FUNCTION_DECL
   && decl_function_context (((exp)->exp.operands[0])) != 0
   && ! ((((exp)->exp.operands[0]))->decl.regdecl_flag)
   && ! ((exp)->common.static_flag))
 {
   op0 = trampoline_address (((exp)->exp.operands[0]));
   op0 = force_operand (op0, target);
 }


      else if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ERROR_MARK)
 return (const_int_rtx[64]);



      else if (cfun == 0
        && (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == CONSTRUCTOR
     || (tree_code_type[(int) (((enum tree_code) (((exp)->exp.operands[0]))->common.code))]
         == 'c')))
 op0 = (((output_constant_def (((exp)->exp.operands[0]), 0))->fld[0]).rtx);
      else
 {


   op0 = expand_expr (((exp)->exp.operands[0]),
        ignore ? (const_int_rtx[64]) : (rtx) 0, VOIDmode,
        (modifier == EXPAND_INITIALIZER
         ? modifier : EXPAND_CONST_ADDRESS));




   if (ignore)
     return op0;



   op0 = protect_from_queue (op0, 1);





   if ((((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX))
     op0 = force_const_mem (((((((exp)->exp.operands[0]))->common.type))->type.mode),
       op0);
   else if (((enum rtx_code) (op0)->code) == REG || ((enum rtx_code) (op0)->code) == SUBREG
     || ((enum rtx_code) (op0)->code) == CONCAT || ((enum rtx_code) (op0)->code) == ADDRESSOF
     || ((enum rtx_code) (op0)->code) == PARALLEL)
     {


       if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == SAVE_EXPR)
  {
    put_var_into_stack (((exp)->exp.operands[0]),
                     1);
    op0 = (*(rtx *) &(((exp)->exp.operands[0]))->exp.operands[2]);
  }
       else
  {

    tree inner_type = ((((exp)->exp.operands[0]))->common.type);
    rtx memloc = assign_temp (inner_type, 1, 1, 1);

    if (((enum rtx_code) (op0)->code) == PARALLEL)



      emit_group_store (memloc, op0,
          int_size_in_bytes (inner_type));
    else
      emit_move_insn (memloc, op0);

    op0 = memloc;
  }
     }

   if (((enum rtx_code) (op0)->code) != MEM)
     fancy_abort ("../../../kgccfe/gnu/expr.c", 9297, __FUNCTION__);

   mark_temp_addr_taken (op0);
   if (modifier == EXPAND_SUM || modifier == EXPAND_INITIALIZER)
     {
       op0 = (((op0)->fld[0]).rtx);





       return op0;
     }
# 9321 "../../../kgccfe/gnu/expr.c"
   if (1 && ((enum machine_mode) (op0)->mode) == BLKmode
       && (((((((exp)->exp.operands[0]))->common.type))->type.align)
    > ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)))
       && ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->align : (1 && ((enum machine_mode) (op0)->mode) != BLKmode ? get_mode_alignment (((enum machine_mode) (op0)->mode)) : 8)) < (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
     {
       tree inner_type = ((((exp)->exp.operands[0]))->common.type);
       rtx new;

       if (((inner_type)->common.nothrow_flag))
  fancy_abort ("../../../kgccfe/gnu/expr.c", 9330, __FUNCTION__);

       if (((inner_type)->common.addressable_flag))
  {

    error ("cannot take the address of an unaligned member");
    return (const_int_rtx[64]);
  }

       new = assign_stack_temp_for_type
  (((inner_type)->type.mode),
   ((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->size : ((enum machine_mode) (op0)->mode) != BLKmode ? gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (((enum machine_mode) (op0)->mode))]))) : 0) ? (((((((op0)->fld[1]).rtmem) != 0 ? (((op0)->fld[1]).rtmem)->size : ((enum machine_mode) (op0)->mode) != BLKmode ? gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (((enum machine_mode) (op0)->mode))]))) : 0))->fld[0]).rtwint)
   : int_size_in_bytes (inner_type),
   1, build_qualified_type (inner_type,
       (((((inner_type)->common.readonly_flag) * 0x1) | (((inner_type)->common.volatile_flag) * 0x2) | (((inner_type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (inner_type)->common.code) == RECORD_TYPE && ((inner_type)->common.type)) * 0x8))
        | 0x1)));

       emit_block_move (new, op0, expr_size (((exp)->exp.operands[0])),
          (modifier == EXPAND_STACK_PARM
    ? BLOCK_OP_CALL_PARM : BLOCK_OP_NORMAL));

       op0 = new;
     }

   op0 = force_operand ((((op0)->fld[0]).rtx), target);
 }

      if (flag_force_addr
   && ((enum rtx_code) (op0)->code) != REG
   && modifier != EXPAND_CONST_ADDRESS
   && modifier != EXPAND_INITIALIZER
   && modifier != EXPAND_SUM)
 op0 = force_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), op0);

      if (((enum rtx_code) (op0)->code) == REG
   && ! (((op0))->volatil))
 mark_reg_pointer (op0, ((((type)->common.type))->type.align));







      return op0;

    case ENTRY_VALUE_EXPR:
      fancy_abort ("../../../kgccfe/gnu/expr.c", 9377, __FUNCTION__);


    case COMPLEX_EXPR:
      {
 enum machine_mode mode = ((((((exp)->common.type))->common.type))->type.mode);
 rtx insns;


 op0 = expand_expr (((exp)->exp.operands[0]), 0, VOIDmode, 0);
 op1 = expand_expr (((exp)->exp.operands[1]), 0, VOIDmode, 0);

 if (! target)
   target = gen_reg_rtx (((((exp)->common.type))->type.mode));

 start_sequence ();


 emit_move_insn (gen_realpart (mode, target), op0);
 emit_move_insn (gen_imagpart (mode, target), op1);

 insns = get_insns ();
 end_sequence ();





 if (((enum rtx_code) (target)->code) != CONCAT)
   emit_no_conflict_block (insns, target, op0, op1, (rtx) 0);
 else
   emit_insn (insns);

 return target;
      }

    case REALPART_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), 0, VOIDmode, 0);
      return gen_realpart (mode, op0);

    case IMAGPART_EXPR:
      op0 = expand_expr (((exp)->exp.operands[0]), 0, VOIDmode, 0);
      return gen_imagpart (mode, op0);

    case CONJ_EXPR:
      {
 enum machine_mode partmode = ((((((exp)->common.type))->common.type))->type.mode);
 rtx imag_t;
 rtx insns;

 op0 = expand_expr (((exp)->exp.operands[0]), 0, VOIDmode, 0);

 if (! target)
   target = gen_reg_rtx (mode);

 start_sequence ();


 emit_move_insn (gen_realpart (partmode, target),
   gen_realpart (partmode, op0));

 imag_t = gen_imagpart (partmode, target);
 temp = expand_unop (partmode,
       ! unsignedp && flag_trapv
       && ((mode_class[(int) (partmode)]) == MODE_INT)
       ? (optab_table[OTI_negv]) : (optab_table[OTI_neg]),
       gen_imagpart (partmode, op0), imag_t, 0);
 if (temp != imag_t)
   emit_move_insn (imag_t, temp);

 insns = get_insns ();
 end_sequence ();





 if (((enum rtx_code) (target)->code) != CONCAT)
   emit_no_conflict_block (insns, target, op0, (rtx) 0, (rtx) 0);
 else
   emit_insn (insns);

 return target;
      }

    case TRY_CATCH_EXPR:
      {
 tree handler = ((exp)->exp.operands[1]);

 expand_eh_region_start ();

 op0 = expand_expr (((exp)->exp.operands[0]), 0, VOIDmode, 0);

 expand_eh_region_end_cleanup (handler);

 return op0;
      }

    case TRY_FINALLY_EXPR:
      {
 tree try_block = ((exp)->exp.operands[0]);
 tree finally_block = ((exp)->exp.operands[1]);

        if (!optimize || unsafe_for_reeval (finally_block) > 1)
   {
# 9493 "../../../kgccfe/gnu/expr.c"
     rtx finally_label = gen_label_rtx ();
     rtx done_label = gen_label_rtx ();
     rtx return_link = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
     tree cleanup = build (GOTO_SUBROUTINE_EXPR, global_trees[TI_VOID_TYPE],
             (tree) finally_label, (tree) return_link);
     ((cleanup)->common.side_effects_flag) = 1;



     expand_start_bindings_and_block(2, (tree) ((void *)0));
     (cfun->x_target_temp_slot_level) = (cfun->x_temp_slot_level);

     expand_decl_cleanup ((tree) ((void *)0), cleanup);
     op0 = expand_expr (try_block, target, tmode, modifier);

     preserve_temp_slots (op0);
     expand_end_bindings ((tree) ((void *)0), 0, 0);
     emit_jump (done_label);
     emit_label (finally_label);
     expand_expr (finally_block, (const_int_rtx[64]), VOIDmode, 0);
     emit_indirect_jump (return_link);
     emit_label (done_label);
   }
 else
   {
     expand_start_bindings_and_block(2, (tree) ((void *)0));
     (cfun->x_target_temp_slot_level) = (cfun->x_temp_slot_level);

     expand_decl_cleanup ((tree) ((void *)0), finally_block);
     op0 = expand_expr (try_block, target, tmode, modifier);

     preserve_temp_slots (op0);
     expand_end_bindings ((tree) ((void *)0), 0, 0);
   }

 return op0;
      }

    case GOTO_SUBROUTINE_EXPR:
      {
 rtx subr = (rtx) ((exp)->exp.operands[0]);
 rtx return_link = *(rtx *) &((exp)->exp.operands[1]);
 rtx return_address = gen_label_rtx ();
 emit_move_insn (return_link,
   gen_rtx_fmt_u00 (LABEL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (return_address)));
 emit_jump (subr);
 emit_label (return_address);
 return (const_int_rtx[64]);
      }

    case VA_ARG_EXPR:
      return expand_builtin_va_arg (((exp)->exp.operands[0]), type);

    case EXC_PTR_EXPR:
      return get_exception_pointer (cfun);

    case FDESC_EXPR:


      fancy_abort ("../../../kgccfe/gnu/expr.c", 9552, __FUNCTION__);

    default:
      return (*lang_hooks.expand_expr) (exp, original_target, tmode, modifier);
    }



 binop:
  if (! safe_from_p (subtarget, ((exp)->exp.operands[1]), 1))
    subtarget = 0;
  op0 = expand_expr (((exp)->exp.operands[0]), subtarget, VOIDmode, 0);
  op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
 binop2:
  if (modifier == EXPAND_STACK_PARM)
    target = 0;
  temp = expand_binop (mode, this_optab, op0, op1, target,
         unsignedp, OPTAB_LIB_WIDEN);
  if (temp == 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 9571, __FUNCTION__);
  return temp;
}





static int
is_aligning_offset (offset, exp)
     tree offset;
     tree exp;
{

  while (((enum tree_code) (offset)->common.code) == NON_LVALUE_EXPR
  || ((enum tree_code) (offset)->common.code) == NOP_EXPR
  || ((enum tree_code) (offset)->common.code) == CONVERT_EXPR
  || ((enum tree_code) (offset)->common.code) == WITH_RECORD_EXPR)
    offset = ((offset)->exp.operands[0]);



  if (((enum tree_code) (offset)->common.code) != BIT_AND_EXPR
      || !host_integerp (((offset)->exp.operands[1]), 1)
      || compare_tree_int (((offset)->exp.operands[1]), (mips_abi == 1 || mips_abi == 2 ? 128 : 64)) <= 0
      || !exact_log2_wide ((unsigned long long) (tree_low_cst (((offset)->exp.operands[1]), 1) + 1)) < 0)
    return 0;



  offset = ((offset)->exp.operands[0]);
  while (((enum tree_code) (offset)->common.code) == NON_LVALUE_EXPR
  || ((enum tree_code) (offset)->common.code) == NOP_EXPR
  || ((enum tree_code) (offset)->common.code) == CONVERT_EXPR)
    offset = ((offset)->exp.operands[0]);

  if (((enum tree_code) (offset)->common.code) != NEGATE_EXPR)
    return 0;

  offset = ((offset)->exp.operands[0]);
  while (((enum tree_code) (offset)->common.code) == NON_LVALUE_EXPR
  || ((enum tree_code) (offset)->common.code) == NOP_EXPR
  || ((enum tree_code) (offset)->common.code) == CONVERT_EXPR)
    offset = ((offset)->exp.operands[0]);



  return (((enum tree_code) (offset)->common.code) == ADDR_EXPR
   && (((offset)->exp.operands[0]) == exp
       || (((enum tree_code) (((offset)->exp.operands[0]))->common.code) == PLACEHOLDER_EXPR
    && (((((offset)->exp.operands[0]))->common.type)
        == ((exp)->common.type)))));
}






tree
string_constant (arg, ptr_offset)
     tree arg;
     tree *ptr_offset;
{
  while ((((enum tree_code) (arg)->common.code) == NOP_EXPR || ((enum tree_code) (arg)->common.code) == CONVERT_EXPR || ((enum tree_code) (arg)->common.code) == NON_LVALUE_EXPR) && ((arg)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((arg)->common.type))->type.mode) == ((((((arg)->exp.operands[0]))->common.type))->type.mode))) (arg) = ((arg)->exp.operands[0]);

  if (((enum tree_code) (arg)->common.code) == ADDR_EXPR
      && ((enum tree_code) (((arg)->exp.operands[0]))->common.code) == STRING_CST)
    {
      *ptr_offset = global_trees[TI_SIZE_ZERO];
      return ((arg)->exp.operands[0]);
    }
  else if (((enum tree_code) (arg)->common.code) == PLUS_EXPR)
    {
      tree arg0 = ((arg)->exp.operands[0]);
      tree arg1 = ((arg)->exp.operands[1]);

      while ((((enum tree_code) (arg0)->common.code) == NOP_EXPR || ((enum tree_code) (arg0)->common.code) == CONVERT_EXPR || ((enum tree_code) (arg0)->common.code) == NON_LVALUE_EXPR) && ((arg0)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((arg0)->common.type))->type.mode) == ((((((arg0)->exp.operands[0]))->common.type))->type.mode))) (arg0) = ((arg0)->exp.operands[0]);
      while ((((enum tree_code) (arg1)->common.code) == NOP_EXPR || ((enum tree_code) (arg1)->common.code) == CONVERT_EXPR || ((enum tree_code) (arg1)->common.code) == NON_LVALUE_EXPR) && ((arg1)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((arg1)->common.type))->type.mode) == ((((((arg1)->exp.operands[0]))->common.type))->type.mode))) (arg1) = ((arg1)->exp.operands[0]);

      if (((enum tree_code) (arg0)->common.code) == ADDR_EXPR
   && ((enum tree_code) (((arg0)->exp.operands[0]))->common.code) == STRING_CST)
 {
   *ptr_offset = convert (sizetype_tab[(int) SIZETYPE], arg1);
   return ((arg0)->exp.operands[0]);
 }
      else if (((enum tree_code) (arg1)->common.code) == ADDR_EXPR
        && ((enum tree_code) (((arg1)->exp.operands[0]))->common.code) == STRING_CST)
 {
   *ptr_offset = convert (sizetype_tab[(int) SIZETYPE], arg0);
   return ((arg1)->exp.operands[0]);
 }
    }

  return 0;
}





static rtx
expand_increment (exp, post, ignore)
     tree exp;
     int post, ignore;
{
  rtx op0, op1;
  rtx temp, value;
  tree incremented = ((exp)->exp.operands[0]);
  optab this_optab = (optab_table[OTI_add]);
  int icode;
  enum machine_mode mode = ((((exp)->common.type))->type.mode);
  int op0_is_copy = 0;
  int single_insn = 0;



  int bad_subreg = 0;



  if (!post
      || ((enum tree_code) (incremented)->common.code) == BIT_FIELD_REF
      || (((enum tree_code) (incremented)->common.code) == COMPONENT_REF
   && (((enum tree_code) (((incremented)->exp.operands[0]))->common.code) != INDIRECT_REF
       || ((((incremented)->exp.operands[1]))->decl.bit_field_flag))))
    incremented = stabilize_reference (incremented);



  if (((enum tree_code) (incremented)->common.code) == PREINCREMENT_EXPR
      || ((enum tree_code) (incremented)->common.code) == PREDECREMENT_EXPR)
    incremented = save_expr (incremented);






  temp = get_last_insn ();
  op0 = expand_expr (incremented, (rtx) 0, VOIDmode, 0);
# 9721 "../../../kgccfe/gnu/expr.c"
  if (((enum rtx_code) (op0)->code) == SUBREG && (((op0))->in_struct))
    {
      if (post)
 (((op0)->fld[0]).rtx) = copy_to_reg ((((op0)->fld[0]).rtx));
      else
 bad_subreg = 1;
    }
  else if (((enum rtx_code) (op0)->code) == SUBREG
    && (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) < (8 * ((target_flags & 0x00002000) ? 8 : 4)))
    {



      if (post)
 op0 = copy_to_reg (op0);
      else
 bad_subreg = 1;
    }

  op0_is_copy = ((((enum rtx_code) (op0)->code) == SUBREG || ((enum rtx_code) (op0)->code) == REG)
   && temp != get_last_insn ());
  op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);


  if (((enum tree_code) (exp)->common.code) == POSTDECREMENT_EXPR
      || ((enum tree_code) (exp)->common.code) == PREDECREMENT_EXPR)
    this_optab = (optab_table[OTI_sub]);


  if (this_optab == (optab_table[OTI_sub])
      && ((enum rtx_code) (op1)->code) == CONST_INT)
    {
      op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (-(((op1)->fld[0]).rtwint)));
      this_optab = (optab_table[OTI_add]);
    }

  if ((flag_trapv && ! (((((exp)->common.type)))->common.unsigned_flag)))
    this_optab = this_optab == (optab_table[OTI_add]) ? (optab_table[OTI_addv]) : (optab_table[OTI_subv]);


  if (!post)
    {
      icode = (int) this_optab->handlers[(int) mode].insn_code;
      if (icode != (int) CODE_FOR_nothing


   && (*insn_data[icode].operand[0].predicate) (op0, mode)
   && (*insn_data[icode].operand[1].predicate) (op0, mode)
   && (*insn_data[icode].operand[2].predicate) (op1, mode))
 single_insn = 1;
    }
# 9781 "../../../kgccfe/gnu/expr.c"
  if (op0_is_copy || (!post && !single_insn) || bad_subreg)
    {






      tree newexp = build (((((enum tree_code) (exp)->common.code) == POSTDECREMENT_EXPR
        || ((enum tree_code) (exp)->common.code) == PREDECREMENT_EXPR)
       ? MINUS_EXPR : PLUS_EXPR),
      ((exp)->common.type),
      incremented,
      ((exp)->exp.operands[1]));

      while (((enum tree_code) (incremented)->common.code) == NOP_EXPR
      || ((enum tree_code) (incremented)->common.code) == CONVERT_EXPR)
 {
   newexp = convert (((incremented)->common.type), newexp);
   incremented = ((incremented)->exp.operands[0]);
 }

      temp = expand_assignment (incremented, newexp, ! post && ! ignore , 0);
      return post ? op0 : temp;
    }

  if (post)
    {
# 9819 "../../../kgccfe/gnu/expr.c"
      icode = (int) this_optab->handlers[(int) mode].insn_code;
      if (icode != (int) CODE_FOR_nothing


   && (*insn_data[icode].operand[0].predicate) (op0, mode)
   && (*insn_data[icode].operand[1].predicate) (op0, mode))
 {
   if (! (*insn_data[icode].operand[2].predicate) (op1, mode))
     op1 = force_reg (mode, op1);

   return enqueue_insn (op0, (*insn_data[(int) (icode)].genfun) (op0, op0, op1));
 }
      if (icode != (int) CODE_FOR_nothing && ((enum rtx_code) (op0)->code) == MEM)
 {
   rtx addr = (general_operand ((((op0)->fld[0]).rtx), mode)
        ? force_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((op0)->fld[0]).rtx))
        : copy_to_reg ((((op0)->fld[0]).rtx)));
   rtx temp, result;

   op0 = replace_equiv_address (op0, addr);
   temp = force_reg (((enum machine_mode) (op0)->mode), op0);
   if (! (*insn_data[icode].operand[2].predicate) (op1, mode))
     op1 = force_reg (mode, op1);



   enqueue_insn (op0, gen_move_insn (op0, temp));
   result = enqueue_insn (temp, (*insn_data[(int) (icode)].genfun) (temp, temp, op1));
   return result;
 }
    }


  if (post)

    temp = value = copy_to_reg (op0);
  else




    temp = copy_rtx (value = op0);


  op1 = expand_binop (mode, this_optab, value, op1, op0,
        ((((exp)->common.type))->common.unsigned_flag), OPTAB_LIB_WIDEN);


  if (op1 != op0)
    emit_move_insn (op0, op1);

  return temp;
}




void
init_pending_stack_adjust ()
{
  (cfun->expr->x_pending_stack_adjust) = 0;
}







void
clear_pending_stack_adjust ()
{

  if (optimize > 0
      && (! flag_omit_frame_pointer || (cfun->calls_alloca))
      && 1
      && ! (((current_function_decl)->decl.inline_flag) && ! flag_no_inline)
      && ! flag_inline_functions)
    {
      (cfun->expr->x_stack_pointer_delta) -= (cfun->expr->x_pending_stack_adjust),
      (cfun->expr->x_pending_stack_adjust) = 0;
    }

}



void
do_pending_stack_adjust ()
{
  if ((cfun->expr->x_inhibit_defer_pop) == 0)
    {
      if ((cfun->expr->x_pending_stack_adjust) != 0)
 adjust_stack (gen_rtx_CONST_INT (VOIDmode, (long long) ((cfun->expr->x_pending_stack_adjust))));
      (cfun->expr->x_pending_stack_adjust) = 0;
    }
}







void
jumpifnot (exp, label)
     tree exp;
     rtx label;
{
  do_jump (exp, label, (rtx) 0);
}



void
jumpif (exp, label)
     tree exp;
     rtx label;
{
  do_jump (exp, (rtx) 0, label);
}
# 9953 "../../../kgccfe/gnu/expr.c"
void
do_jump (exp, if_false_label, if_true_label)
     tree exp;
     rtx if_false_label, if_true_label;
{
  enum tree_code code = ((enum tree_code) (exp)->common.code);



  rtx drop_through_label = 0;
  rtx temp;
  int i;
  tree type;
  enum machine_mode mode;





  emit_queue ();

  switch (code)
    {
    case ERROR_MARK:
      break;

    case INTEGER_CST:
      temp = integer_zerop (exp) ? if_false_label : if_true_label;
      if (temp)
 emit_jump (temp);
      break;
# 9994 "../../../kgccfe/gnu/expr.c"
    case UNSAVE_EXPR:
      do_jump (((exp)->exp.operands[0]), if_false_label, if_true_label);
      ((exp)->exp.operands[0])
 = (*lang_hooks.unsave_expr_now) (((exp)->exp.operands[0]));
      break;

    case NOP_EXPR:
      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == COMPONENT_REF
   || ((enum tree_code) (((exp)->exp.operands[0]))->common.code) == BIT_FIELD_REF
   || ((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ARRAY_REF
   || ((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ARRAY_RANGE_REF)
 goto normal;
    case CONVERT_EXPR:


      if ((((((exp)->common.type))->type.precision)
    < ((((((exp)->exp.operands[0]))->common.type))->type.precision)))
 goto normal;
    case NON_LVALUE_EXPR:
    case REFERENCE_EXPR:
    case ABS_EXPR:
    case NEGATE_EXPR:
    case LROTATE_EXPR:
    case RROTATE_EXPR:

      do_jump (((exp)->exp.operands[0]), if_false_label, if_true_label);
      break;

    case WITH_RECORD_EXPR:


      placeholder_list = tree_cons (((exp)->exp.operands[1]), (tree) ((void *)0),
        placeholder_list);
      do_jump (((exp)->exp.operands[0]), if_false_label, if_true_label);
      placeholder_list = ((placeholder_list)->common.chain);
      break;
# 10043 "../../../kgccfe/gnu/expr.c"
    case MINUS_EXPR:

      do_compare_and_jump (build (NE_EXPR, ((exp)->common.type),
      ((exp)->exp.operands[0]),
      ((exp)->exp.operands[1])),
      NE, NE, if_false_label, if_true_label);
      break;

    case BIT_AND_EXPR:







      if (! 1
   && ((enum tree_code) (((exp)->exp.operands[1]))->common.code) == INTEGER_CST
   && ((((exp)->common.type))->type.precision) <= (8 * 8)
   && (i = tree_floor_log2 (((exp)->exp.operands[1]))) >= 0
   && (mode = mode_for_size (i + 1, MODE_INT, 0)) != BLKmode
   && (type = (*lang_hooks.types.type_for_mode) (mode, 1)) != 0
   && ((type)->type.precision) < ((((exp)->common.type))->type.precision)
   && ((optab_table[OTI_cmp])->handlers[(int) ((type)->type.mode)].insn_code
       != CODE_FOR_nothing))
 {
   do_jump (convert (type, exp), if_false_label, if_true_label);
   break;
 }
      goto normal;

    case TRUTH_NOT_EXPR:
      do_jump (((exp)->exp.operands[0]), if_true_label, if_false_label);
      break;

    case TRUTH_ANDIF_EXPR:
      if (if_false_label == 0)
 if_false_label = drop_through_label = gen_label_rtx ();
      do_jump (((exp)->exp.operands[0]), if_false_label, (rtx) 0);
      start_cleanup_deferral ();
      do_jump (((exp)->exp.operands[1]), if_false_label, if_true_label);
      end_cleanup_deferral ();
      break;

    case TRUTH_ORIF_EXPR:
      if (if_true_label == 0)
 if_true_label = drop_through_label = gen_label_rtx ();
      do_jump (((exp)->exp.operands[0]), (rtx) 0, if_true_label);
      start_cleanup_deferral ();
      do_jump (((exp)->exp.operands[1]), if_false_label, if_true_label);
      end_cleanup_deferral ();
      break;

    case COMPOUND_EXPR:
      push_temp_slots ();
      expand_expr (((exp)->exp.operands[0]), (const_int_rtx[64]), VOIDmode, 0);
      preserve_temp_slots ((rtx) 0);
      free_temp_slots ();
      pop_temp_slots ();
      emit_queue ();
      do_pending_stack_adjust ();
      do_jump (((exp)->exp.operands[1]), if_false_label, if_true_label);
      break;

    case COMPONENT_REF:
    case BIT_FIELD_REF:
    case ARRAY_REF:
    case ARRAY_RANGE_REF:
      {
 long long bitsize, bitpos;
 int unsignedp;
 enum machine_mode mode;
 tree type;
 tree offset;
 int volatilep = 0;



 get_inner_reference (exp, &bitsize, &bitpos, &offset, &mode,
        &unsignedp, &volatilep);

 type = (*lang_hooks.types.type_for_size) (bitsize, unsignedp);
 if (! 1
     && type != 0 && bitsize >= 0
     && ((type)->type.precision) < ((((exp)->common.type))->type.precision)
     && ((optab_table[OTI_cmp])->handlers[(int) ((type)->type.mode)].insn_code
  != CODE_FOR_nothing))
   {
     do_jump (convert (type, exp), if_false_label, if_true_label);
     break;
   }
 goto normal;
      }

    case COND_EXPR:

      if (integer_onep (((exp)->exp.operands[1]))
   && integer_zerop (((exp)->exp.operands[2])))
 do_jump (((exp)->exp.operands[0]), if_false_label, if_true_label);

      else if (integer_zerop (((exp)->exp.operands[1]))
        && integer_onep (((exp)->exp.operands[2])))
 do_jump (((exp)->exp.operands[0]), if_true_label, if_false_label);

      else
 {
   rtx label1 = gen_label_rtx ();
   drop_through_label = gen_label_rtx ();

   do_jump (((exp)->exp.operands[0]), label1, (rtx) 0);

   start_cleanup_deferral ();

   do_jump (((exp)->exp.operands[1]),
     if_false_label ? if_false_label : drop_through_label,
     if_true_label ? if_true_label : drop_through_label);

   do_pending_stack_adjust ();
   emit_label (label1);


   do_jump (((exp)->exp.operands[2]),
     if_false_label ? if_false_label : drop_through_label,
     if_true_label ? if_true_label : drop_through_label);
   end_cleanup_deferral ();
 }
      break;

    case EQ_EXPR:
      {
 tree inner_type = ((((exp)->exp.operands[0]))->common.type);

 if ((mode_class[(int) (((inner_type)->type.mode))]) == MODE_COMPLEX_FLOAT
     || (mode_class[(int) (((inner_type)->type.mode))]) == MODE_COMPLEX_INT)
   {
     tree exp0 = save_expr (((exp)->exp.operands[0]));
     tree exp1 = save_expr (((exp)->exp.operands[1]));
     do_jump
       (fold
        (build (TRUTH_ANDIF_EXPR, ((exp)->common.type),
         fold (build (EQ_EXPR, ((exp)->common.type),
        fold (build1 (REALPART_EXPR,
        ((inner_type)->common.type),
        exp0)),
        fold (build1 (REALPART_EXPR,
        ((inner_type)->common.type),
        exp1)))),
         fold (build (EQ_EXPR, ((exp)->common.type),
        fold (build1 (IMAGPART_EXPR,
        ((inner_type)->common.type),
        exp0)),
        fold (build1 (IMAGPART_EXPR,
        ((inner_type)->common.type),
        exp1)))))),
        if_false_label, if_true_label);
   }

 else if (integer_zerop (((exp)->exp.operands[1])))
   do_jump (((exp)->exp.operands[0]), if_true_label, if_false_label);

 else if ((mode_class[(int) (((inner_type)->type.mode))]) == MODE_INT
   && !can_compare_p (EQ, ((inner_type)->type.mode), ccp_jump))
   do_jump_by_parts_equality (exp, if_false_label, if_true_label);
 else
   do_compare_and_jump (exp, EQ, EQ, if_false_label, if_true_label);
 break;
      }

    case NE_EXPR:
      {
 tree inner_type = ((((exp)->exp.operands[0]))->common.type);

 if ((mode_class[(int) (((inner_type)->type.mode))]) == MODE_COMPLEX_FLOAT
     || (mode_class[(int) (((inner_type)->type.mode))]) == MODE_COMPLEX_INT)
   {
     tree exp0 = save_expr (((exp)->exp.operands[0]));
     tree exp1 = save_expr (((exp)->exp.operands[1]));
     do_jump
       (fold
        (build (TRUTH_ORIF_EXPR, ((exp)->common.type),
         fold (build (NE_EXPR, ((exp)->common.type),
        fold (build1 (REALPART_EXPR,
        ((inner_type)->common.type),
        exp0)),
        fold (build1 (REALPART_EXPR,
        ((inner_type)->common.type),
        exp1)))),
         fold (build (NE_EXPR, ((exp)->common.type),
        fold (build1 (IMAGPART_EXPR,
        ((inner_type)->common.type),
        exp0)),
        fold (build1 (IMAGPART_EXPR,
        ((inner_type)->common.type),
        exp1)))))),
        if_false_label, if_true_label);
   }

 else if (integer_zerop (((exp)->exp.operands[1])))
   do_jump (((exp)->exp.operands[0]), if_false_label, if_true_label);

 else if ((mode_class[(int) (((inner_type)->type.mode))]) == MODE_INT
   && !can_compare_p (NE, ((inner_type)->type.mode), ccp_jump))
   do_jump_by_parts_equality (exp, if_true_label, if_false_label);
 else
   do_compare_and_jump (exp, NE, NE, if_false_label, if_true_label);
 break;
      }

    case LT_EXPR:
      mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
      if ((mode_class[(int) (mode)]) == MODE_INT
   && ! can_compare_p (LT, mode, ccp_jump))
 do_jump_by_parts_greater (exp, 1, if_false_label, if_true_label);
      else
 do_compare_and_jump (exp, LT, LTU, if_false_label, if_true_label);
      break;

    case LE_EXPR:
      mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
      if ((mode_class[(int) (mode)]) == MODE_INT
   && ! can_compare_p (LE, mode, ccp_jump))
 do_jump_by_parts_greater (exp, 0, if_true_label, if_false_label);
      else
 do_compare_and_jump (exp, LE, LEU, if_false_label, if_true_label);
      break;

    case GT_EXPR:
      mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
      if ((mode_class[(int) (mode)]) == MODE_INT
   && ! can_compare_p (GT, mode, ccp_jump))
 do_jump_by_parts_greater (exp, 0, if_false_label, if_true_label);
      else
 do_compare_and_jump (exp, GT, GTU, if_false_label, if_true_label);
      break;

    case GE_EXPR:
      mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
      if ((mode_class[(int) (mode)]) == MODE_INT
   && ! can_compare_p (GE, mode, ccp_jump))
 do_jump_by_parts_greater (exp, 1, if_true_label, if_false_label);
      else
 do_compare_and_jump (exp, GE, GEU, if_false_label, if_true_label);
      break;

    case UNORDERED_EXPR:
    case ORDERED_EXPR:
      {
 enum rtx_code cmp, rcmp;
 int do_rev;

 if (code == UNORDERED_EXPR)
   cmp = UNORDERED, rcmp = ORDERED;
 else
   cmp = ORDERED, rcmp = UNORDERED;
 mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);

 do_rev = 0;
 if (! can_compare_p (cmp, mode, ccp_jump)
     && (can_compare_p (rcmp, mode, ccp_jump)


  || rcmp == UNORDERED))
   do_rev = 1;

 if (! do_rev)
   do_compare_and_jump (exp, cmp, cmp, if_false_label, if_true_label);
 else
   do_compare_and_jump (exp, rcmp, rcmp, if_true_label, if_false_label);
      }
      break;

    {
      enum rtx_code rcode1;
      enum tree_code tcode2;

      case UNLT_EXPR:
 rcode1 = UNLT;
 tcode2 = LT_EXPR;
 goto unordered_bcc;
      case UNLE_EXPR:
 rcode1 = UNLE;
 tcode2 = LE_EXPR;
 goto unordered_bcc;
      case UNGT_EXPR:
 rcode1 = UNGT;
 tcode2 = GT_EXPR;
 goto unordered_bcc;
      case UNGE_EXPR:
 rcode1 = UNGE;
 tcode2 = GE_EXPR;
 goto unordered_bcc;
      case UNEQ_EXPR:
 rcode1 = UNEQ;
 tcode2 = EQ_EXPR;
 goto unordered_bcc;

      unordered_bcc:
 mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
 if (can_compare_p (rcode1, mode, ccp_jump))
   do_compare_and_jump (exp, rcode1, rcode1, if_false_label,
          if_true_label);
 else
   {
     tree op0 = save_expr (((exp)->exp.operands[0]));
     tree op1 = save_expr (((exp)->exp.operands[1]));
     tree cmp0, cmp1;



     cmp0 = fold (build (UNORDERED_EXPR, ((exp)->common.type), op0, op1));
     cmp1 = fold (build (tcode2, ((exp)->common.type), op0, op1));
     exp = build (TRUTH_ORIF_EXPR, ((exp)->common.type), cmp0, cmp1);
     do_jump (exp, if_false_label, if_true_label);
   }
      }
      break;
# 10368 "../../../kgccfe/gnu/expr.c"
    case CALL_EXPR:

      if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ADDR_EXPR)
 {
   tree fndecl = ((((exp)->exp.operands[0]))->exp.operands[0]);
   tree arglist = ((exp)->exp.operands[1]);

   if (((enum tree_code) (fndecl)->common.code) == FUNCTION_DECL
       && (((fndecl)->decl.built_in_class) != NOT_BUILT_IN)
       && ((fndecl)->decl.u1.f) == BUILT_IN_EXPECT
       && arglist != (tree) ((void *)0)
       && ((arglist)->common.chain) != (tree) ((void *)0))
     {
       rtx seq = expand_builtin_expect_jump (exp, if_false_label,
          if_true_label);

       if (seq != (rtx) 0)
  {
    emit_insn (seq);
    return;
  }
     }
 }


    default:
    normal:
      temp = expand_expr (exp, (rtx) 0, VOIDmode, 0);
# 10405 "../../../kgccfe/gnu/expr.c"
      do_pending_stack_adjust ();

      emit_queue ();

      if (((enum rtx_code) (temp)->code) == CONST_INT
   || (((enum rtx_code) (temp)->code) == CONST_DOUBLE && ((enum machine_mode) (temp)->mode) == VOIDmode)
   || ((enum rtx_code) (temp)->code) == LABEL_REF)
 {
   rtx target = temp == (const_int_rtx[64]) ? if_false_label : if_true_label;
   if (target)
     emit_jump (target);
 }
      else if ((mode_class[(int) (((enum machine_mode) (temp)->mode))]) == MODE_INT
        && ! can_compare_p (NE, ((enum machine_mode) (temp)->mode), ccp_jump))

 do_jump_by_parts_equality_rtx (temp, if_true_label, if_false_label);
      else if (((enum machine_mode) (temp)->mode) != VOIDmode)
 do_compare_rtx_and_jump (temp, (const_tiny_rtx[0][(int) (((enum machine_mode) (temp)->mode))]),
     NE, ((((exp)->common.type))->common.unsigned_flag),
     ((enum machine_mode) (temp)->mode), (rtx) 0,
     if_false_label, if_true_label);
      else
 fancy_abort ("../../../kgccfe/gnu/expr.c", 10427, __FUNCTION__);
    }

  if (drop_through_label)
    {



      do_pending_stack_adjust ();
      emit_label (drop_through_label);
    }
}






static void
do_jump_by_parts_greater (exp, swap, if_false_label, if_true_label)
     tree exp;
     int swap;
     rtx if_false_label, if_true_label;
{
  rtx op0 = expand_expr (((exp)->exp.operands[swap]), (rtx) 0, VOIDmode, 0);
  rtx op1 = expand_expr (((exp)->exp.operands[!swap]), (rtx) 0, VOIDmode, 0);
  enum machine_mode mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
  int unsignedp = ((((((exp)->exp.operands[0]))->common.type))->common.unsigned_flag);

  do_jump_by_parts_greater_rtx (mode, unsignedp, op0, op1, if_false_label, if_true_label);
}





void
do_jump_by_parts_greater_rtx (mode, unsignedp, op0, op1, if_false_label, if_true_label)
     enum machine_mode mode;
     int unsignedp;
     rtx op0, op1;
     rtx if_false_label, if_true_label;
{
  int nwords = ((mode_size[(int) (mode)]) / ((target_flags & 0x00002000) ? 8 : 4));
  rtx drop_through_label = 0;
  int i;

  if (! if_true_label || ! if_false_label)
    drop_through_label = gen_label_rtx ();
  if (! if_true_label)
    if_true_label = drop_through_label;
  if (! if_false_label)
    if_false_label = drop_through_label;


  for (i = 0; i < nwords; i++)
    {
      rtx op0_word, op1_word;

      if (((target_flags & 0x00010000) != 0))
 {
   op0_word = operand_subword_force (op0, i, mode);
   op1_word = operand_subword_force (op1, i, mode);
 }
      else
 {
   op0_word = operand_subword_force (op0, nwords - 1 - i, mode);
   op1_word = operand_subword_force (op1, nwords - 1 - i, mode);
 }


      do_compare_rtx_and_jump (op0_word, op1_word, GT,
          (unsignedp || i > 0), word_mode, (rtx) 0,
          (rtx) 0, if_true_label);


      do_compare_rtx_and_jump (op0_word, op1_word, NE, unsignedp, word_mode,
          (rtx) 0, (rtx) 0, if_false_label);
    }

  if (if_false_label)
    emit_jump (if_false_label);
  if (drop_through_label)
    emit_label (drop_through_label);
}




static void
do_jump_by_parts_equality (exp, if_false_label, if_true_label)
     tree exp;
     rtx if_false_label, if_true_label;
{
  rtx op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, VOIDmode, 0);
  rtx op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
  enum machine_mode mode = ((((((exp)->exp.operands[0]))->common.type))->type.mode);
  int nwords = ((mode_size[(int) (mode)]) / ((target_flags & 0x00002000) ? 8 : 4));
  int i;
  rtx drop_through_label = 0;

  if (! if_false_label)
    drop_through_label = if_false_label = gen_label_rtx ();

  for (i = 0; i < nwords; i++)
    do_compare_rtx_and_jump (operand_subword_force (op0, i, mode),
        operand_subword_force (op1, i, mode),
        EQ, ((((exp)->common.type))->common.unsigned_flag),
        word_mode, (rtx) 0, if_false_label, (rtx) 0);

  if (if_true_label)
    emit_jump (if_true_label);
  if (drop_through_label)
    emit_label (drop_through_label);
}





void
do_jump_by_parts_equality_rtx (op0, if_false_label, if_true_label)
     rtx op0;
     rtx if_false_label, if_true_label;
{
  int nwords = (mode_size[(int) (((enum machine_mode) (op0)->mode))]) / ((target_flags & 0x00002000) ? 8 : 4);
  rtx part;
  int i;
  rtx drop_through_label = 0;






  part = gen_reg_rtx (word_mode);
  emit_move_insn (part, operand_subword_force (op0, 0, ((enum machine_mode) (op0)->mode)));
  for (i = 1; i < nwords && part != 0; i++)
    part = expand_binop (word_mode, (optab_table[OTI_ior]), part,
    operand_subword_force (op0, i, ((enum machine_mode) (op0)->mode)),
    part, 1, OPTAB_WIDEN);

  if (part != 0)
    {
      do_compare_rtx_and_jump (part, (const_int_rtx[64]), EQ, 1, word_mode,
          (rtx) 0, if_false_label, if_true_label);

      return;
    }


  if (! if_false_label)
    drop_through_label = if_false_label = gen_label_rtx ();

  for (i = 0; i < nwords; i++)
    do_compare_rtx_and_jump (operand_subword_force (op0, i, ((enum machine_mode) (op0)->mode)),
        (const_int_rtx[64]), EQ, 1, word_mode, (rtx) 0,
        if_false_label, (rtx) 0);

  if (if_true_label)
    emit_jump (if_true_label);

  if (drop_through_label)
    emit_label (drop_through_label);
}
# 10604 "../../../kgccfe/gnu/expr.c"
rtx
compare_from_rtx (op0, op1, code, unsignedp, mode, size)
     rtx op0, op1;
     enum rtx_code code;
     int unsignedp;
     enum machine_mode mode;
     rtx size;
{
  enum rtx_code ucode;
  rtx tem;




  if (swap_commutative_operands_p (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = swap_condition (code);
    }

  if (flag_force_mem)
    {
      op0 = force_not_mem (op0);
      op1 = force_not_mem (op1);
    }

  do_pending_stack_adjust ();

  ucode = unsignedp ? unsigned_condition (code) : code;
  if ((tem = simplify_relational_operation (ucode, mode, op0, op1)) != 0)
    return tem;
# 10660 "../../../kgccfe/gnu/expr.c"
  emit_cmp_insn (op0, op1, code, size, mode, unsignedp);




  return gen_rtx_fmt_ee (code, VOIDmode, op0, op1);

}







void
do_compare_rtx_and_jump (op0, op1, code, unsignedp, mode, size,
    if_false_label, if_true_label)
     rtx op0, op1;
     enum rtx_code code;
     int unsignedp;
     enum machine_mode mode;
     rtx size;
     rtx if_false_label, if_true_label;
{
  enum rtx_code ucode;
  rtx tem;
  int dummy_true_label = 0;



  if (! if_true_label && ! ((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT))
    {
      if_true_label = if_false_label;
      if_false_label = 0;
      code = reverse_condition (code);
    }




  if (swap_commutative_operands_p (op0, op1))
    {
      tem = op0;
      op0 = op1;
      op1 = tem;
      code = swap_condition (code);
    }

  if (flag_force_mem)
    {
      op0 = force_not_mem (op0);
      op1 = force_not_mem (op1);
    }

  do_pending_stack_adjust ();

  ucode = unsignedp ? unsigned_condition (code) : code;
  if ((tem = simplify_relational_operation (ucode, mode, op0, op1)) != 0)
    {
      if (tem == const_true_rtx)
 {
   if (if_true_label)
     emit_jump (if_true_label);
 }
      else
 {
   if (if_false_label)
     emit_jump (if_false_label);
 }
      return;
    }
# 10755 "../../../kgccfe/gnu/expr.c"
  if (! if_true_label)
    {
      dummy_true_label = 1;
      if_true_label = gen_label_rtx ();
    }

  emit_cmp_and_jump_insns (op0, op1, code, size, mode, unsignedp,
      if_true_label);

  if (if_false_label)
    emit_jump (if_false_label);
  if (dummy_true_label)
    emit_label (if_true_label);
}
# 10780 "../../../kgccfe/gnu/expr.c"
static void
do_compare_and_jump (exp, signed_code, unsigned_code, if_false_label,
       if_true_label)
     tree exp;
     enum rtx_code signed_code, unsigned_code;
     rtx if_false_label, if_true_label;
{
  rtx op0, op1;
  tree type;
  enum machine_mode mode;
  int unsignedp;
  enum rtx_code code;


  op0 = expand_expr (((exp)->exp.operands[0]), (rtx) 0, VOIDmode, 0);
  if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == ERROR_MARK)
    return;

  op1 = expand_expr (((exp)->exp.operands[1]), (rtx) 0, VOIDmode, 0);
  if (((enum tree_code) (((exp)->exp.operands[1]))->common.code) == ERROR_MARK)
    return;

  type = ((((exp)->exp.operands[0]))->common.type);
  mode = ((type)->type.mode);
  if (((enum tree_code) (((exp)->exp.operands[0]))->common.code) == INTEGER_CST
      && (((enum tree_code) (((exp)->exp.operands[1]))->common.code) != INTEGER_CST
   || ((mode_bitsize[(int) (mode)])
       > (mode_bitsize[(int) (((((((exp)->exp.operands[1]))->common.type))->type.mode))]))))

    {


      type = ((((exp)->exp.operands[1]))->common.type);
      mode = ((type)->type.mode);
    }
  unsignedp = ((type)->common.unsigned_flag);
  code = unsignedp ? unsigned_code : signed_code;
# 10845 "../../../kgccfe/gnu/expr.c"
  emit_queue ();

  do_compare_rtx_and_jump (op0, op1, code, unsignedp, mode,
      ((mode == BLKmode)
       ? expr_size (((exp)->exp.operands[0])) : (rtx) 0),
      if_false_label, if_true_label);
}
# 10873 "../../../kgccfe/gnu/expr.c"
static rtx
do_store_flag (exp, target, mode, only_cheap)
     tree exp;
     rtx target;
     enum machine_mode mode;
     int only_cheap;
{
  enum rtx_code code;
  tree arg0, arg1, type;
  tree tem;
  enum machine_mode operand_mode;
  int invert = 0;
  int unsignedp;
  rtx op0, op1;
  enum insn_code icode;
  rtx subtarget = target;
  rtx result, label;






  if (((enum tree_code) (exp)->common.code) == TRUTH_NOT_EXPR)
    invert = 1, exp = ((exp)->exp.operands[0]);

  arg0 = ((exp)->exp.operands[0]);
  arg1 = ((exp)->exp.operands[1]);


  if (arg0 == global_trees[TI_ERROR_MARK] || arg1 == global_trees[TI_ERROR_MARK])
    return (const_int_rtx[64]);

  type = ((arg0)->common.type);
  operand_mode = ((type)->type.mode);
  unsignedp = ((type)->common.unsigned_flag);



  if (operand_mode == BLKmode)
    return 0;
# 10928 "../../../kgccfe/gnu/expr.c"
  while ((((enum tree_code) (arg0)->common.code) == NOP_EXPR || ((enum tree_code) (arg0)->common.code) == CONVERT_EXPR || ((enum tree_code) (arg0)->common.code) == NON_LVALUE_EXPR) && ((arg0)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((arg0)->common.type))->type.mode) == ((((((arg0)->exp.operands[0]))->common.type))->type.mode))) (arg0) = ((arg0)->exp.operands[0]);
  while ((((enum tree_code) (arg1)->common.code) == NOP_EXPR || ((enum tree_code) (arg1)->common.code) == CONVERT_EXPR || ((enum tree_code) (arg1)->common.code) == NON_LVALUE_EXPR) && ((arg1)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((arg1)->common.type))->type.mode) == ((((((arg1)->exp.operands[0]))->common.type))->type.mode))) (arg1) = ((arg1)->exp.operands[0]);
# 10938 "../../../kgccfe/gnu/expr.c"
  switch (((enum tree_code) (exp)->common.code))
    {
    case EQ_EXPR:
      code = EQ;
      break;
    case NE_EXPR:
      code = NE;
      break;
    case LT_EXPR:
      if (integer_onep (arg1))
 arg1 = global_trees[TI_INTEGER_ZERO], code = unsignedp ? LEU : LE;
      else
 code = unsignedp ? LTU : LT;
      break;
    case LE_EXPR:
      if (! unsignedp && integer_all_onesp (arg1))
 arg1 = global_trees[TI_INTEGER_ZERO], code = LT;
      else
 code = unsignedp ? LEU : LE;
      break;
    case GT_EXPR:
      if (! unsignedp && integer_all_onesp (arg1))
 arg1 = global_trees[TI_INTEGER_ZERO], code = GE;
      else
 code = unsignedp ? GTU : GT;
      break;
    case GE_EXPR:
      if (integer_onep (arg1))
 arg1 = global_trees[TI_INTEGER_ZERO], code = unsignedp ? GTU : GT;
      else
 code = unsignedp ? GEU : GE;
      break;

    case UNORDERED_EXPR:
      code = UNORDERED;
      break;
    case ORDERED_EXPR:
      code = ORDERED;
      break;
    case UNLT_EXPR:
      code = UNLT;
      break;
    case UNLE_EXPR:
      code = UNLE;
      break;
    case UNGT_EXPR:
      code = UNGT;
      break;
    case UNGE_EXPR:
      code = UNGE;
      break;
    case UNEQ_EXPR:
      code = UNEQ;
      break;

    default:
      fancy_abort ("../../../kgccfe/gnu/expr.c", 10994, __FUNCTION__);
    }


  if (((enum tree_code) (arg0)->common.code) == REAL_CST || ((enum tree_code) (arg0)->common.code) == INTEGER_CST)
    {
      tem = arg0; arg0 = arg1; arg1 = tem;
      code = swap_condition (code);
    }







  if ((code == NE || code == EQ)
      && ((enum tree_code) (arg0)->common.code) == BIT_AND_EXPR && integer_zerop (arg1)
      && integer_pow2p (((arg0)->exp.operands[1])))
    {
      tree inner = ((arg0)->exp.operands[0]);
      int bitnum = tree_log2 (((arg0)->exp.operands[1]));
      int ops_unsignedp;




      if (((enum tree_code) (inner)->common.code) == RSHIFT_EXPR
   && ((enum tree_code) (((inner)->exp.operands[1]))->common.code) == INTEGER_CST
   && (((((inner)->exp.operands[1]))->int_cst.int_cst).high) == 0
   && bitnum < ((type)->type.precision)
   && 0 > compare_tree_int (((inner)->exp.operands[1]),
       bitnum - ((type)->type.precision)))
 {
   bitnum += (((((inner)->exp.operands[1]))->int_cst.int_cst).low);
   inner = ((inner)->exp.operands[0]);
 }




      ops_unsignedp = (bitnum == ((type)->type.precision) - 1 ? 1

         : (((target_flags & 0x00002000) && ((operand_mode) == SImode || (operand_mode) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) == SIGN_EXTEND ? 0 : 1)



         );

      if (! get_subtarget (subtarget)
   || ((enum machine_mode) (subtarget)->mode) != operand_mode
   || ! safe_from_p (subtarget, inner, 1))
 subtarget = 0;

      op0 = expand_expr (inner, subtarget, VOIDmode, 0);

      if (bitnum != 0)
 op0 = expand_shift (RSHIFT_EXPR, operand_mode, op0,
       size_int_wide ((long long) (bitnum), SIZETYPE), subtarget, ops_unsignedp);

      if (((enum machine_mode) (op0)->mode) != mode)
 op0 = convert_to_mode (mode, op0, ops_unsignedp);

      if ((code == EQ && ! invert) || (code == NE && invert))
 op0 = expand_binop (mode, (optab_table[OTI_xor]), op0, (const_int_rtx[64 +1]), subtarget,
       ops_unsignedp, OPTAB_LIB_WIDEN);


      if (bitnum != ((type)->type.precision) - 1)
 op0 = expand_and (mode, op0, (const_int_rtx[64 +1]), subtarget);

      return op0;
    }


  if (! can_compare_p (code, operand_mode, ccp_store_flag))
    return 0;

  icode = setcc_gen_code[(int) code];
  if (icode == CODE_FOR_nothing
      || (only_cheap && insn_data[(int) icode].operand[0].mode != mode))
    {


      if ((code == LT && integer_zerop (arg1))
   || (! only_cheap && code == GE && integer_zerop (arg1)))
 ;
      else if (((! (target_flags & 0x00100000) && ((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000))) ? 2 : 1) >= 0
        && ! only_cheap && (code == NE || code == EQ)
        && ((enum tree_code) (type)->common.code) != REAL_TYPE
        && (((optab_table[OTI_abs])->handlers[(int) operand_mode].insn_code
      != CODE_FOR_nothing)
     || ((optab_table[OTI_ffs])->handlers[(int) operand_mode].insn_code
         != CODE_FOR_nothing)))
 ;
      else
 return 0;
    }

  if (! get_subtarget (target)
      || ((enum machine_mode) (subtarget)->mode) != operand_mode
      || ! safe_from_p (subtarget, arg1, 1))
    subtarget = 0;

  op0 = expand_expr (arg0, subtarget, VOIDmode, 0);
  op1 = expand_expr (arg1, (rtx) 0, VOIDmode, 0);

  if (target == 0)
    target = gen_reg_rtx (mode);





  result = emit_store_flag (target, code,
       queued_subexp_p (op0) ? copy_rtx (op0) : op0,
       queued_subexp_p (op1) ? copy_rtx (op1) : op1,
       operand_mode, unsignedp, 1);

  if (result)
    {
      if (invert)
 result = expand_binop (mode, (optab_table[OTI_xor]), result, (const_int_rtx[64 +1]),
          result, 0, OPTAB_LIB_WIDEN);
      return result;
    }


  if (((enum rtx_code) (target)->code) != REG
      || reg_mentioned_p (target, op0) || reg_mentioned_p (target, op1))
    target = gen_reg_rtx (((enum machine_mode) (target)->mode));

  emit_move_insn (target, invert ? (const_int_rtx[64]) : (const_int_rtx[64 +1]));
  result = compare_from_rtx (op0, op1, code, unsignedp,
        operand_mode, (rtx) 0);
  if (((enum rtx_code) (result)->code) == CONST_INT)
    return (((result == (const_int_rtx[64]) && ! invert)
      || (result != (const_int_rtx[64]) && invert))
     ? (const_int_rtx[64]) : (const_int_rtx[64 +1]));







  code = ((enum rtx_code) (result)->code);

  label = gen_label_rtx ();
  if (bcc_gen_fctn[(int) code] == 0)
    fancy_abort ("../../../kgccfe/gnu/expr.c", 11144, __FUNCTION__);

  emit_jump_insn ((*bcc_gen_fctn[(int) code]) (label));
  emit_move_insn (target, invert ? (const_int_rtx[64 +1]) : (const_int_rtx[64]));
  emit_label (label);

  return target;
}
# 11168 "../../../kgccfe/gnu/expr.c"
unsigned int
case_values_threshold ()
{
  return (((target_flags & 0x00004000)) ? 4 : 5);
}



int
try_casesi (index_type, index_expr, minval, range,
     table_label, default_label)
     tree index_type, index_expr, minval, range;
     rtx table_label __attribute__ ((__unused__));
     rtx default_label;
{
  enum machine_mode index_mode = SImode;
  int index_bits = (mode_bitsize[(int) (index_mode)]);
  rtx op1, op2, index;
  enum machine_mode op_mode;

  if (! ((target_flags & 0x00004000)))
    return 0;


  if ((mode_bitsize[(int) (((index_type)->type.mode))]) > (mode_bitsize[(int) (index_mode)]))
    {
      enum machine_mode omode = ((index_type)->type.mode);
      rtx rangertx = expand_expr (range, (rtx) 0, VOIDmode, 0);


      index_expr = build (MINUS_EXPR, index_type,
     index_expr, minval);
      minval = global_trees[TI_INTEGER_ZERO];
      index = expand_expr (index_expr, (rtx) 0, VOIDmode, 0);
      emit_cmp_and_jump_insns (rangertx, index, LTU, (rtx) 0,
          omode, 1, default_label);

      index = convert_to_mode (index_mode, index, 0);
    }
  else
    {
      if (((index_type)->type.mode) != index_mode)
 {
   index_expr = convert ((*lang_hooks.types.type_for_size)
    (index_bits, 0), index_expr);
   index_type = ((index_expr)->common.type);
 }

      index = expand_expr (index_expr, (rtx) 0, VOIDmode, 0);
    }
  emit_queue ();
  index = protect_from_queue (index, 0);
  do_pending_stack_adjust ();

  op_mode = insn_data[(int) CODE_FOR_casesi].operand[0].mode;
  if (! (*insn_data[(int) CODE_FOR_casesi].operand[0].predicate)
      (index, op_mode))
    index = copy_to_mode_reg (op_mode, index);

  op1 = expand_expr (minval, (rtx) 0, VOIDmode, 0);

  op_mode = insn_data[(int) CODE_FOR_casesi].operand[1].mode;
  op1 = convert_modes (op_mode, ((((minval)->common.type))->type.mode),
         op1, ((((minval)->common.type))->common.unsigned_flag));
  if (! (*insn_data[(int) CODE_FOR_casesi].operand[1].predicate)
      (op1, op_mode))
    op1 = copy_to_mode_reg (op_mode, op1);

  op2 = expand_expr (range, (rtx) 0, VOIDmode, 0);

  op_mode = insn_data[(int) CODE_FOR_casesi].operand[2].mode;
  op2 = convert_modes (op_mode, ((((range)->common.type))->type.mode),
         op2, ((((range)->common.type))->common.unsigned_flag));
  if (! (*insn_data[(int) CODE_FOR_casesi].operand[2].predicate)
      (op2, op_mode))
    op2 = copy_to_mode_reg (op_mode, op2);

  emit_jump_insn (gen_casesi (index, op1, op2,
         table_label, default_label));
  return 1;
}
# 11267 "../../../kgccfe/gnu/expr.c"
static void
do_tablejump (index, mode, range, table_label, default_label)
     rtx index, range, table_label, default_label;
     enum machine_mode mode;
{
  rtx temp, vector;

  if ((((range)->fld[0]).rtwint) > cfun->max_jumptable_ents)
    cfun->max_jumptable_ents = (((range)->fld[0]).rtwint);
# 11285 "../../../kgccfe/gnu/expr.c"
  emit_cmp_and_jump_insns (index, range, GTU, (rtx) 0, mode, 1,
      default_label);



  if (mode != (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
    index = convert_to_mode ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), index, 1);
# 11309 "../../../kgccfe/gnu/expr.c"
  index = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (gen_rtx_fmt_ee (MULT, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (index), (gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (((target_flags & 0x00100000) ? HImode : (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? DImode : SImode))])))))), (gen_rtx_fmt_u00 (LABEL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (table_label))));
# 11318 "../../../kgccfe/gnu/expr.c"
    index = memory_address_noforce (((target_flags & 0x00100000) ? HImode : (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? DImode : SImode), index);
  temp = gen_reg_rtx (((target_flags & 0x00100000) ? HImode : (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? DImode : SImode));
  vector = gen_rtx_MEM (((target_flags & 0x00100000) ? HImode : (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? DImode : SImode), index);
  (((vector))->unchanging) = 1;
  (((vector))->call) = 1;
  convert_move (temp, vector, 0);

  emit_jump_insn (gen_tablejump (temp, table_label));



  if (! ((target_flags & 0x00100000)) && ! flag_pic)
    emit_barrier ();
}

int
try_tablejump (index_type, index_expr, minval, range,
        table_label, default_label)
     tree index_type, index_expr, minval, range;
     rtx table_label, default_label;
{
  rtx index;

  if (! 1)
    return 0;

  index_expr = fold (build (MINUS_EXPR, index_type,
       convert (index_type, index_expr),
       convert (index_type, minval)));
  index = expand_expr (index_expr, (rtx) 0, VOIDmode, 0);
  emit_queue ();
  index = protect_from_queue (index, 0);
  do_pending_stack_adjust ();

  do_tablejump (index, ((index_type)->type.mode),
  convert_modes (((index_type)->type.mode),
          ((((range)->common.type))->type.mode),
          expand_expr (range, (rtx) 0,
         VOIDmode, 0),
          ((((range)->common.type))->common.unsigned_flag)),
  table_label, default_label);
  return 1;
}





int
vector_mode_valid_p (mode)
     enum machine_mode mode;
{
  enum mode_class class = (mode_class[(int) (mode)]);
  enum machine_mode innermode;


  if (class != MODE_VECTOR_INT
      && class != MODE_VECTOR_FLOAT)
    return 0;


  if (0)
    return 1;

  innermode = inner_mode_array[(int) (mode)];






  return (optab_table[OTI_mov])->handlers[innermode].insn_code != CODE_FOR_nothing;
}


static rtx
const_vector_from_tree (exp)
     tree exp;
{
  rtvec v;
  int units, i;
  tree link, elt;
  enum machine_mode inner, mode;

  mode = ((((exp)->common.type))->type.mode);

  if (is_zeros_p (exp))
    return (const_tiny_rtx[0][(int) (mode)]);

  units = (((mode_unit_size[(int) ((mode))]) == 0) ? 0 : ((mode_size[(int) ((mode))]) / (mode_unit_size[(int) ((mode))])));
  inner = inner_mode_array[(int) (mode)];

  v = rtvec_alloc (units);

  link = (exp->vector.elements);
  for (i = 0; link; link = ((link)->common.chain), ++i)
    {
      elt = ((link)->list.value);

      if (((enum tree_code) (elt)->common.code) == REAL_CST)
 ((v)->elem[i]) = const_double_from_real_value ((*((elt)->real_cst.real_cst_ptr)), inner);

      else
 ((v)->elem[i]) = immed_double_const ((((elt)->int_cst.int_cst).low),
            (((elt)->int_cst.int_cst).high),
            inner);
    }

  return gen_rtx_fmt_E (CONST_VECTOR, (mode), (v));
}

# 1 "../../../kgccfe/gnu/MIPS/gt-expr.h" 1
# 25 "../../../kgccfe/gnu/MIPS/gt-expr.h"
const struct ggc_root_tab gt_ggc_r_gt_expr_h[] = {
  {
    &block_clear_fn,
    1,
    sizeof (block_clear_fn),
    &gt_ggc_mx_lang_tree_node

  },
  {
    &block_move_fn,
    1,
    sizeof (block_move_fn),
    &gt_ggc_mx_lang_tree_node

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 11429 "../../../kgccfe/gnu/expr.c" 2
