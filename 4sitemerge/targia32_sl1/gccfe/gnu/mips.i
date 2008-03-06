# 1 "../../../kgccfe/gnu/mips.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kgccfe/gnu/mips.c"
# 30 "../../../kgccfe/gnu/mips.c"
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
# 31 "../../../kgccfe/gnu/mips.c" 2
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
        
# 32 "../../../kgccfe/gnu/mips.c" 2

# 1 "../../../kgccfe/gnu/rtl.h" 1
# 31 "../../../kgccfe/gnu/rtl.h"
struct function;

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
# 34 "../../../kgccfe/gnu/mips.c" 2
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
# 35 "../../../kgccfe/gnu/mips.c" 2

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
# 37 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/insn-config.h" 1
# 38 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/conditions.h" 1
# 39 "../../../kgccfe/gnu/mips.c" 2
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
# 40 "../../../kgccfe/gnu/mips.c" 2
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
# 41 "../../../kgccfe/gnu/mips.c" 2
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
# 42 "../../../kgccfe/gnu/mips.c" 2
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
# 43 "../../../kgccfe/gnu/mips.c" 2
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
# 44 "../../../kgccfe/gnu/mips.c" 2
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
# 45 "../../../kgccfe/gnu/mips.c" 2
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
# 46 "../../../kgccfe/gnu/mips.c" 2
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
# 47 "../../../kgccfe/gnu/mips.c" 2
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
# 167 "../../../kgccfe/gnu/reload.h"
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
# 48 "../../../kgccfe/gnu/mips.c" 2
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
# 49 "../../../kgccfe/gnu/mips.c" 2
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
# 50 "../../../kgccfe/gnu/mips.c" 2
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
# 51 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/gstab.h" 1





enum __stab_debug_code
{
# 1 "../../../kgccfe/gnu/stab.def" 1
# 24 "../../../kgccfe/gnu/stab.def"
N_GSYM=0x20,



N_FNAME=0x22,




N_FUN=0x24,



N_STSYM=0x26,


N_LCSYM=0x28,



N_MAIN=0x2a,



N_PC=0x30,


N_NSYMS=0x32,


N_NOMAP=0x34,



N_OBJ=0x38,




N_OPT=0x3c,


N_RSYM=0x40,


N_M2C=0x42,



N_SLINE=0x44,


N_DSLINE=0x46,


N_BSLINE=0x48,




N_BROWS=0x48,





N_DEFD=0x4a,




N_EHDECL=0x50,

N_MOD2=0x50,






N_CATCH=0x54,


N_SSYM=0x60,



N_SO=0x64,



N_LSYM=0x80,




N_BINCL=0x82,



N_SOL=0x84,



N_PSYM=0xa0,





N_EINCL=0xa2,


N_ENTRY=0xa4,





N_LBRAC=0xc0,





N_EXCL=0xc2,


N_SCOPE=0xc4,



N_RBRAC=0xe0,


N_BCOMM=0xe2,



N_ECOMM=0xe4,



N_ECOML=0xe8,




N_NBTEXT=0xF0,
N_NBDATA=0xF2,
N_NBBSS=0xF4,
N_NBSTS=0xF6,
N_NBLCS=0xF8,



N_LENG=0xfe,
# 9 "../../../kgccfe/gnu/gstab.h" 2
LAST_UNUSED_STAB_CODE
};
# 52 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../include/gnu/hashtab.h" 1
# 50 "../../../include/gnu/hashtab.h"
typedef unsigned int hashval_t;




typedef hashval_t (*htab_hash) (const void *);






typedef int (*htab_eq) (const void *, const void *);



typedef void (*htab_del) (void *);





typedef int (*htab_trav) (void **, void *);





typedef void * (*htab_alloc) (size_t, size_t);


typedef void (*htab_free) (void *);






struct htab
{

  htab_hash hash_f;


  htab_eq eq_f;


  htab_del del_f;


  void * * entries;


  size_t size;


  size_t n_elements;


  size_t n_deleted;



  unsigned int searches;



  unsigned int collisions;


  htab_alloc alloc_f;
  htab_free free_f;
};

typedef struct htab *htab_t;


enum insert_option {NO_INSERT, INSERT};



extern htab_t htab_create_alloc (size_t, htab_hash, htab_eq, htab_del, htab_alloc, htab_free);




extern htab_t htab_create (size_t, htab_hash, htab_eq, htab_del);
extern htab_t htab_try_create (size_t, htab_hash, htab_eq, htab_del);

extern void htab_delete (htab_t);
extern void htab_empty (htab_t);

extern void * htab_find (htab_t, const void *);
extern void * *htab_find_slot (htab_t, const void *, enum insert_option);

extern void * htab_find_with_hash (htab_t, const void *, hashval_t);

extern void * *htab_find_slot_with_hash (htab_t, const void *, hashval_t, enum insert_option);


extern void htab_clear_slot (htab_t, void **);
extern void htab_remove_elt (htab_t, void *);

extern void htab_traverse (htab_t, htab_trav, void *);

extern size_t htab_size (htab_t);
extern size_t htab_elements (htab_t);
extern double htab_collisions (htab_t);


extern htab_hash htab_hash_pointer;


extern htab_eq htab_eq_pointer;


extern hashval_t htab_hash_string (const void *);
# 53 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/debug.h" 1
# 24 "../../../kgccfe/gnu/debug.h"
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
# 54 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/target.h" 1
# 47 "../../../kgccfe/gnu/target.h"
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
# 139 "../../../kgccfe/gnu/target.h"
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
# 194 "../../../kgccfe/gnu/target.h"
    void (* init_dfa_pre_cycle_insn) (void);
    rtx (* dfa_pre_cycle_insn) (void);
    void (* init_dfa_post_cycle_insn) (void);
    rtx (* dfa_post_cycle_insn) (void);







    int (* first_cycle_multipass_dfa_lookahead) (void);
# 216 "../../../kgccfe/gnu/target.h"
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
# 55 "../../../kgccfe/gnu/mips.c" 2
# 1 "../../../kgccfe/gnu/target-def.h" 1
# 288 "../../../kgccfe/gnu/target-def.h"
# 1 "../../../kgccfe/gnu/hooks.h" 1
# 36 "../../../kgccfe/gnu/hooks.h"
_Bool hook_bool_void_false (void);
_Bool hook_bool_tree_false (tree);
_Bool hook_bool_tree_hwi_hwi_tree_false
  (tree, long long, long long, tree);
_Bool hook_bool_tree_hwi_hwi_tree_true
  (tree, long long, long long, tree);
_Bool hook_bool_rtx_false (rtx);

void hook_void_tree_int (tree, int);
void hook_void_void (void);
void hook_void_FILEptr_constcharptr (FILE *, const char *);
void hook_void_tree (tree);
void hook_void_tree_treeptr (tree, tree *);

int hook_int_tree_tree_1 (tree, tree);

_Bool default_can_output_mi_thunk_no_vcall
  (tree, long long, long long, tree);
# 288 "../../../kgccfe/gnu/target-def.h" 2
# 56 "../../../kgccfe/gnu/mips.c" 2







extern tree lookup_name (tree);





enum internal_test {
    ITEST_EQ,
    ITEST_NE,
    ITEST_GT,
    ITEST_GE,
    ITEST_LT,
    ITEST_LE,
    ITEST_GTU,
    ITEST_GEU,
    ITEST_LTU,
    ITEST_LEU,
    ITEST_MAX
  };


struct constant;
struct mips_arg_info;
static enum internal_test map_test_to_internal_test (enum rtx_code);
static void get_float_compare_codes (enum rtx_code, enum rtx_code *, enum rtx_code *);

static int mips16_simple_memory_operand (rtx, rtx, enum machine_mode);

static int m16_check_op (rtx, int, int, int);
static void block_move_loop (rtx, rtx, unsigned int, int, rtx, rtx);



static void block_move_call (rtx, rtx, rtx);
static void mips_arg_info (const CUMULATIVE_ARGS *, enum machine_mode, tree, int, struct mips_arg_info *);



static rtx mips_add_large_offset_to_sp (long long);
static void mips_annotate_frame_insn (rtx, rtx);
static rtx mips_frame_set (enum machine_mode, int, int);

static void mips_emit_frame_related_store (rtx, rtx, long long);

static void save_restore_insns (int, rtx, long);
static void mips16_output_gp_offset (FILE *, rtx);
static void mips16_fp_args (FILE *, int, int);
static void build_mips16_function_stub (FILE *);
static void mips16_optimize_gp (rtx);
static rtx add_constant (struct constant **, rtx, enum machine_mode);


static void dump_constants (struct constant *, rtx);

static rtx mips_find_symbol (rtx);
static void abort_with_insn (rtx, const char *)
  __attribute__ ((__noreturn__));
static int symbolic_expression_p (rtx);
static _Bool mips_assemble_integer (rtx, unsigned int, int);
static void mips_output_function_epilogue (FILE *, long long);
static void mips_output_function_prologue (FILE *, long long);
static void mips_set_architecture (const struct mips_cpu_info *);
static void mips_set_tune (const struct mips_cpu_info *);
static _Bool mips_strict_matching_cpu_name_p (const char *, const char *);

static _Bool mips_matching_cpu_name_p (const char *, const char *);

static const struct mips_cpu_info *mips_parse_cpu (const char *, const char *);

static const struct mips_cpu_info *mips_cpu_info_from_isa (int);
static void copy_file_data (FILE *, FILE *);
# 144 "../../../kgccfe/gnu/mips.c"
static int mips_adjust_cost (rtx, rtx, rtx, int);
static int mips_issue_rate (void);

static struct machine_function * mips_init_machine_status (void);
static void mips_select_section (tree, int, unsigned long long)
 __attribute__ ((__unused__));
static void mips_unique_section (tree, int)
 __attribute__ ((__unused__));
static void mips_select_rtx_section (enum machine_mode, rtx, unsigned long long);

static int mips_use_dfa_pipeline_interface (void);
static void mips_encode_section_info (tree, int);




struct mips_frame_info
{
  long total_size;
  long var_size;
  long args_size;
  long extra_size;
  int gp_reg_size;
  int fp_reg_size;
  long mask;
  long fmask;
  long gp_save_offset;
  long fp_save_offset;
  long gp_sp_offset;
  long fp_sp_offset;
  int initialized;
  int num_gp;
  int num_fp;
};

struct machine_function {



  rtx embedded_pic_fnaddr_rtx;



  rtx mips16_gp_pseudo_rtx;


  struct mips_frame_info frame;


  long insns_len;
};


struct mips_arg_info
{

  _Bool struct_p;



  _Bool fpr_p;


  unsigned int num_bytes;


  unsigned int reg_words;




  unsigned int reg_offset;


  unsigned int stack_words;



  unsigned int stack_offset;
};







int mips_section_threshold = -1;


int num_source_filenames = 0;



int sdb_label_count = 0;


int sym_lineno = 0;



int inside_function = 0;




FILE *asm_out_data_file;
FILE *asm_out_text_file;





struct extern_list
{
  struct extern_list *next;
  const char *name;
  int size;
} *extern_head = 0;


const char *current_function_file = "";



int file_in_function_warning = 0;



int ignore_line_number = 0;


int set_noreorder;
int set_noat;
int set_nomacro;
int set_volatile;


int mips_branch_likely;


int dslots_load_total;
int dslots_load_filled;
int dslots_jump_total;
int dslots_jump_filled;


int dslots_number_nops;


int num_refs[3];


rtx mips_load_reg, mips_load_reg2, mips_load_reg3, mips_load_reg4;



rtx branch_cmp[2];


enum cmp_type branch_type;


enum processor_type mips_arch;
const struct mips_cpu_info *mips_arch_info;


enum processor_type mips_tune;
const struct mips_cpu_info *mips_tune_info;


int mips_isa;


int mips_abi;


const char *mips_arch_string;
const char *mips_tune_string;
const char *mips_isa_string;
const char *mips_abi_string;



int mips16;




const char *mips_no_mips16_string;





int mips16_hard_float;




const char *mips_entry_string;

const char *mips_cache_flush_func = "_flush_cache";


int mips_entry;


int mips_split_addresses;


enum mips_abicalls_type mips_abicalls;


static enum machine_mode gpr_mode;



char mips_hard_regno_mode_ok[(int)MAX_MACHINE_MODE][176];





int mips_string_length;




static rtx mips16_strings;




struct string_constant
{
  struct string_constant *next;
  const char *label;
};

static struct string_constant *string_constants;


char mips_print_operand_punct[256];


int mips_dbx_regno[176];



static char volatile_buffer[60];




char mips_reg_names[][8] =
{
 "$0", "$1", "$2", "$3", "$4", "$5", "$6", "$7",
 "$8", "$9", "$10", "$11", "$12", "$13", "$14", "$15",
 "$16", "$17", "$18", "$19", "$20", "$21", "$22", "$23",
 "$24", "$25", "$26", "$27", "$28", "$sp", "$fp", "$31",
 "$f0", "$f1", "$f2", "$f3", "$f4", "$f5", "$f6", "$f7",
 "$f8", "$f9", "$f10", "$f11", "$f12", "$f13", "$f14", "$f15",
 "$f16", "$f17", "$f18", "$f19", "$f20", "$f21", "$f22", "$f23",
 "$f24", "$f25", "$f26", "$f27", "$f28", "$f29", "$f30", "$f31",
 "hi", "lo", "accum","$fcc0","$fcc1","$fcc2","$fcc3","$fcc4",
 "$fcc5","$fcc6","$fcc7","$rap", "", "", "", "",
 "$c0r0", "$c0r1", "$c0r2", "$c0r3", "$c0r4", "$c0r5", "$c0r6", "$c0r7",
 "$c0r8", "$c0r9", "$c0r10","$c0r11","$c0r12","$c0r13","$c0r14","$c0r15",
 "$c0r16","$c0r17","$c0r18","$c0r19","$c0r20","$c0r21","$c0r22","$c0r23",
 "$c0r24","$c0r25","$c0r26","$c0r27","$c0r28","$c0r29","$c0r30","$c0r31",
 "$c2r0", "$c2r1", "$c2r2", "$c2r3", "$c2r4", "$c2r5", "$c2r6", "$c2r7",
 "$c2r8", "$c2r9", "$c2r10","$c2r11","$c2r12","$c2r13","$c2r14","$c2r15",
 "$c2r16","$c2r17","$c2r18","$c2r19","$c2r20","$c2r21","$c2r22","$c2r23",
 "$c2r24","$c2r25","$c2r26","$c2r27","$c2r28","$c2r29","$c2r30","$c2r31",
 "$c3r0", "$c3r1", "$c3r2", "$c3r3", "$c3r4", "$c3r5", "$c3r6", "$c3r7",
 "$c3r8", "$c3r9", "$c3r10","$c3r11","$c3r12","$c3r13","$c3r14","$c3r15",
 "$c3r16","$c3r17","$c3r18","$c3r19","$c3r20","$c3r21","$c3r22","$c3r23",
 "$c3r24","$c3r25","$c3r26","$c3r27","$c3r28","$c3r29","$c3r30","$c3r31"
};




char mips_sw_reg_names[][8] =
{
  "$zero","$at", "$v0", "$v1", "$a0", "$a1", "$a2", "$a3",
  "$t0", "$t1", "$t2", "$t3", "$t4", "$t5", "$t6", "$t7",
  "$s0", "$s1", "$s2", "$s3", "$s4", "$s5", "$s6", "$s7",
  "$t8", "$t9", "$k0", "$k1", "$gp", "$sp", "$fp", "$ra",
  "$f0", "$f1", "$f2", "$f3", "$f4", "$f5", "$f6", "$f7",
  "$f8", "$f9", "$f10", "$f11", "$f12", "$f13", "$f14", "$f15",
  "$f16", "$f17", "$f18", "$f19", "$f20", "$f21", "$f22", "$f23",
  "$f24", "$f25", "$f26", "$f27", "$f28", "$f29", "$f30", "$f31",
  "hi", "lo", "accum","$fcc0","$fcc1","$fcc2","$fcc3","$fcc4",
  "$fcc5","$fcc6","$fcc7","$rap", "", "", "", "",
  "$c0r0", "$c0r1", "$c0r2", "$c0r3", "$c0r4", "$c0r5", "$c0r6", "$c0r7",
  "$c0r8", "$c0r9", "$c0r10","$c0r11","$c0r12","$c0r13","$c0r14","$c0r15",
  "$c0r16","$c0r17","$c0r18","$c0r19","$c0r20","$c0r21","$c0r22","$c0r23",
  "$c0r24","$c0r25","$c0r26","$c0r27","$c0r28","$c0r29","$c0r30","$c0r31",
  "$c2r0", "$c2r1", "$c2r2", "$c2r3", "$c2r4", "$c2r5", "$c2r6", "$c2r7",
  "$c2r8", "$c2r9", "$c2r10","$c2r11","$c2r12","$c2r13","$c2r14","$c2r15",
  "$c2r16","$c2r17","$c2r18","$c2r19","$c2r20","$c2r21","$c2r22","$c2r23",
  "$c2r24","$c2r25","$c2r26","$c2r27","$c2r28","$c2r29","$c2r30","$c2r31",
  "$c3r0", "$c3r1", "$c3r2", "$c3r3", "$c3r4", "$c3r5", "$c3r6", "$c3r7",
  "$c3r8", "$c3r9", "$c3r10","$c3r11","$c3r12","$c3r13","$c3r14","$c3r15",
  "$c3r16","$c3r17","$c3r18","$c3r19","$c3r20","$c3r21","$c3r22","$c3r23",
  "$c3r24","$c3r25","$c3r26","$c3r27","$c3r28","$c3r29","$c3r30","$c3r31"
};


const enum reg_class mips_regno_to_class[] =
{
  GR_REGS, GR_REGS, M16_NA_REGS, M16_NA_REGS,
  M16_REGS, M16_REGS, M16_REGS, M16_REGS,
  GR_REGS, GR_REGS, GR_REGS, GR_REGS,
  GR_REGS, GR_REGS, GR_REGS, GR_REGS,
  M16_NA_REGS, M16_NA_REGS, GR_REGS, GR_REGS,
  GR_REGS, GR_REGS, GR_REGS, GR_REGS,
  T_REG, GR_REGS, GR_REGS, GR_REGS,
  GR_REGS, GR_REGS, GR_REGS, GR_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  FP_REGS, FP_REGS, FP_REGS, FP_REGS,
  HI_REG, LO_REG, HILO_REG, ST_REGS,
  ST_REGS, ST_REGS, ST_REGS, ST_REGS,
  ST_REGS, ST_REGS, ST_REGS, GR_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP0_REGS, COP0_REGS, COP0_REGS, COP0_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP2_REGS, COP2_REGS, COP2_REGS, COP2_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS,
  COP3_REGS, COP3_REGS, COP3_REGS, COP3_REGS
};


enum reg_class mips_char_to_class[256] =
{
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
  NO_REGS, NO_REGS, NO_REGS, NO_REGS,
};







const struct mips_cpu_info mips_cpu_info_table[] = {

  { "mips1", PROCESSOR_R3000, 1 },
  { "mips2", PROCESSOR_R6000, 2 },
  { "mips3", PROCESSOR_R4000, 3 },
  { "mips4", PROCESSOR_R8000, 4 },
  { "mips32", PROCESSOR_R4KC, 32 },
  { "mips64", PROCESSOR_R5KC, 64 },


  { "r3000", PROCESSOR_R3000, 1 },
  { "r2000", PROCESSOR_R3000, 1 },
  { "r3900", PROCESSOR_R3900, 1 },


  { "r6000", PROCESSOR_R6000, 2 },


  { "r4000", PROCESSOR_R4000, 3 },
  { "vr4100", PROCESSOR_R4100, 3 },
  { "vr4111", PROCESSOR_R4111, 3 },
  { "vr4120", PROCESSOR_R4120, 3 },
  { "vr4300", PROCESSOR_R4300, 3 },
  { "r4400", PROCESSOR_R4000, 3 },
  { "r4600", PROCESSOR_R4600, 3 },
  { "orion", PROCESSOR_R4600, 3 },
  { "r4650", PROCESSOR_R4650, 3 },


  { "r8000", PROCESSOR_R8000, 4 },
  { "vr5000", PROCESSOR_R5000, 4 },
  { "vr5400", PROCESSOR_R5400, 4 },
  { "vr5500", PROCESSOR_R5500, 4 },



  { "4kc", PROCESSOR_R4KC, 32 },
  { "4kp", PROCESSOR_R4KC, 32 },


  { "5kc", PROCESSOR_R5KC, 64 },
  { "20kc", PROCESSOR_R20KC, 64 },
  { "sr71000", PROCESSOR_SR71000, 64 },


  { "sb1", PROCESSOR_SB1, 64 },


  { 0, 0, 0 }
};
# 670 "../../../kgccfe/gnu/mips.c"
struct gcc_target targetm = { {"(", ")", "\t.byte\t", {"\t.half\t", "\t.word\t", ((void *)0), ((void *)0)}, {"\t.2byte\t", "\t.4byte\t", "\t.8byte\t", ((void *)0)}, mips_assemble_integer, default_globalize_label, default_assemble_visibility, mips_output_function_prologue, no_asm_to_stream, no_asm_to_stream, mips_output_function_epilogue, default_elf_asm_named_section, default_exception_section, default_eh_frame_section, mips_select_section, mips_select_rtx_section, mips_unique_section, default_named_section_asm_out_constructor, default_named_section_asm_out_destructor, ((void *)0), hook_bool_tree_hwi_hwi_tree_false }, {mips_adjust_cost, 0, mips_issue_rate, 0, 0, 0, 0, 0, mips_use_dfa_pipeline_interface, 0, 0, 0, 0, 0, 0, 0}, merge_decl_attributes, merge_type_attributes, ((void *)0), hook_int_tree_tree_1, hook_void_tree, hook_void_tree_treeptr, hook_bool_tree_false, hook_bool_tree_false, default_init_builtins, default_expand_builtin, default_section_type_flags, hook_bool_void_false, hook_bool_rtx_false, hook_bool_tree_false, default_binds_local_p, mips_encode_section_info, default_strip_name_encoding, 1, 1, 0, 0, 0 };




int
uns_arith_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (((enum rtx_code) (op)->code) == CONST_INT && ((unsigned long long) ((((op)->fld[0]).rtwint)) < 0x10000))
    return 1;

  return register_operand (op, mode);
}




int
arith_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (((enum rtx_code) (op)->code) == CONST_INT && ((unsigned long long) ((((op)->fld[0]).rtwint) + 0x8000) < 0x10000))
    return 1;


  if ((target_flags & 0x00100000) && ((enum rtx_code) (op)->code) == CONST && mips16_gp_offset_p (op))
    return 1;

  return register_operand (op, mode);
}




int
arith32_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (((enum rtx_code) (op)->code) == CONST_INT)
    return 1;

  return register_operand (op, mode);
}



int
small_int (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return (((enum rtx_code) (op)->code) == CONST_INT && ((unsigned long long) ((((op)->fld[0]).rtwint) + 0x8000) < 0x10000));
}




int
large_int (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  long long value;

  if (((enum rtx_code) (op)->code) != CONST_INT)
    return 0;

  value = (((op)->fld[0]).rtwint);


  if ((value & ~ ((long long) 0x0000ffff)) == 0)
    return 0;


  if (((unsigned long long) (value + 32768)) <= 32767)
    return 0;


  if ((value & 0x0000ffff) == 0)
    return 0;

  return 1;
}





int
reg_or_0_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  switch (((enum rtx_code) (op)->code))
    {
    case CONST_INT:
      if ((target_flags & 0x00100000))
 return 0;
      return (((op)->fld[0]).rtwint) == 0;

    case CONST_DOUBLE:
      if ((target_flags & 0x00100000))
 return 0;
      return op == (const_tiny_rtx[0][(int) (mode)]);

    case REG:
    case SUBREG:
      return register_operand (op, mode);

    default:
      break;
    }

  return 0;
}




int
true_reg_or_0_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  switch (((enum rtx_code) (op)->code))
    {
    case CONST_INT:
      return (((op)->fld[0]).rtwint) == 0;

    case CONST_DOUBLE:
      return op == (const_tiny_rtx[0][(int) (mode)]);

    case REG:
    case SUBREG:
      return register_operand (op, mode);

    default:
      break;
    }

  return 0;
}



int
mips_const_double_ok (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (((enum rtx_code) (op)->code) != CONST_DOUBLE)
    return 0;

  if (mode == VOIDmode)
    return 1;


  if ((target_flags & 0x00100000))
    return 0;

  if (mode != SFmode && mode != DFmode)
    return 0;

  if (op == (const_tiny_rtx[0][(int) (mode)]))
    return 1;

  return 0;
}



int
const_float_1_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  struct real_value d;

  if (((enum rtx_code) (op)->code) != CONST_DOUBLE
      || mode != ((enum machine_mode) (op)->mode)
      || (mode != DFmode && mode != SFmode))
    return 0;

  memcpy (&(d), &((((op))->fld[0]).rtwint), sizeof (struct real_value));

  return real_compare (EQ_EXPR, &(d), &(dconst1));
}




static int
mips16_simple_memory_operand (reg, offset, mode)
     rtx reg;
     rtx offset;
     enum machine_mode mode;
{
  unsigned int size;
  int off;

  if (mode == BLKmode)
    {



      return 0;
    }

  size = (mode_size[(int) (mode)]);

  if ((((offset)->fld[0]).rtwint) % size != 0)
    return 0;
  if ((((reg)->fld[0]).rtuint) == (0 + 29) && (mode_size[(int) (mode)]) == 4)
    off = 0x100;
  else
    off = 0x20;
  if ((((offset)->fld[0]).rtwint) >= 0 && (((offset)->fld[0]).rtwint) < (long long)(off * size))
    return 1;
  return 0;
}




int
simple_memory_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  rtx addr, plus0, plus1;


  if (((enum rtx_code) (op)->code) != MEM)
    return 0;





  if ((mode_size[(int) (((enum machine_mode) (op)->mode))]) > (unsigned) ((target_flags & 0x00002000) ? 8 : 4))
    return 0;


  addr = (((op)->fld[0]).rtx);
  switch (((enum rtx_code) (addr)->code))
    {
    case REG:
    case LO_SUM:
      return 1;

    case CONST_INT:
      if ((target_flags & 0x00100000))
 return 0;
      return ((unsigned long long) ((((addr)->fld[0]).rtwint) + 0x8000) < 0x10000);

    case PLUS:
      plus0 = (((addr)->fld[0]).rtx);
      plus1 = (((addr)->fld[1]).rtx);
      if (((enum rtx_code) (plus0)->code) == REG
   && ((enum rtx_code) (plus1)->code) == CONST_INT && ((unsigned long long) ((((plus1)->fld[0]).rtwint) + 0x8000) < 0x10000)
   && (! (target_flags & 0x00100000)
       || mips16_simple_memory_operand (plus0, plus1, mode)))
 return 1;

      else if (((enum rtx_code) (plus1)->code) == REG
        && ((enum rtx_code) (plus0)->code) == CONST_INT && ((unsigned long long) ((((plus0)->fld[0]).rtwint) + 0x8000) < 0x10000)
        && (! (target_flags & 0x00100000)
     || mips16_simple_memory_operand (plus1, plus0, mode)))
 return 1;

      else
 return 0;
# 981 "../../../kgccfe/gnu/mips.c"
    case SYMBOL_REF:
# 992 "../../../kgccfe/gnu/mips.c"
      if ((target_flags & 0x00100000)
   && (((addr))->unchanging)
   && cfun->machine->insns_len > 0)
 {
   long size;

   size = cfun->machine->insns_len + get_pool_size ();
   if ((mode_size[(int) (mode)]) == 4)
     return size < 4 * 0x100;
   else if ((mode_size[(int) (mode)]) == 8)
     return size < 8 * 0x20;
   else
     return 0;
 }

      return 0;

    default:
      break;
    }

  return 0;
}




int
double_memory_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (((enum rtx_code) (op)->code) != MEM
      || ! memory_operand (op, mode))
    {





      if (reload_in_progress
   && ((enum rtx_code) (op)->code) == REG
   && (((op)->fld[0]).rtuint) >= 176
   && reg_renumber[(((op)->fld[0]).rtuint)] < 0
   && reg_equiv_mem[(((op)->fld[0]).rtuint)] != 0
   && double_memory_operand (reg_equiv_mem[(((op)->fld[0]).rtuint)], mode))
 return 1;




      if (reload_in_progress
   && (target_flags & 0x00002000)
   && (((enum rtx_code) (op)->code) == MEM
       || (((enum rtx_code) (op)->code) == REG
    && (((op)->fld[0]).rtuint) >= 176
    && reg_renumber[(((op)->fld[0]).rtuint)] < 0)))
 return 1;

      if (reload_in_progress
   && (target_flags & 0x00100000)
   && ((enum rtx_code) (op)->code) == MEM)
 {
   rtx addr;

   addr = (((op)->fld[0]).rtx);




   if (((enum rtx_code) (addr)->code) == PLUS
       && ((enum rtx_code) ((((addr)->fld[0]).rtx))->code) == REG
       && (((((((addr)->fld[0]).rtx))->fld[0]).rtuint) == (unsigned) ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
    || ((((((addr)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 29))
       && ((((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == CONST_INT
     && ! ((unsigned long long) (((((((addr)->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
    || (((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == SYMBOL_REF
        && ((((((addr)->fld[1]).rtx)))->unchanging))))
     return 1;



   if (((enum rtx_code) (addr)->code) == MEM)
     {
       rtx maddr;

       maddr = (((addr)->fld[0]).rtx);
       if (((enum rtx_code) (maddr)->code) == PLUS
    && ((enum rtx_code) ((((maddr)->fld[0]).rtx))->code) == REG
    && (((((((maddr)->fld[0]).rtx))->fld[0]).rtuint) == (unsigned) ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
        || ((((((maddr)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 29))
    && ((((enum rtx_code) ((((maddr)->fld[1]).rtx))->code) == CONST_INT
         && ! ((unsigned long long) (((((((maddr)->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
        || (((enum rtx_code) ((((maddr)->fld[1]).rtx))->code) == SYMBOL_REF
     && ((((((maddr)->fld[1]).rtx)))->unchanging))))
  return 1;
     }




   if (((enum rtx_code) (addr)->code) == PLUS
       && ((enum rtx_code) ((((addr)->fld[0]).rtx))->code) == MEM
       && ((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == CONST_INT
       && ((unsigned long long) (((((((addr)->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
     {
       addr = ((((((addr)->fld[0]).rtx))->fld[0]).rtx);
       if (((enum rtx_code) (addr)->code) == PLUS
    && ((enum rtx_code) ((((addr)->fld[0]).rtx))->code) == REG
    && (((((((addr)->fld[0]).rtx))->fld[0]).rtuint) == (unsigned) ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
        || ((((((addr)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 29))
    && ((((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == CONST_INT
         && ! ((unsigned long long) (((((((addr)->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
        || (((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == SYMBOL_REF
     && ((((((addr)->fld[1]).rtx)))->unchanging))))
  return 1;
     }
 }

      return 0;
    }

  if ((target_flags & 0x00002000))
    {

      return 1;
    }




  if ((((enum rtx_code) ((((op)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == HIGH || (((enum rtx_code) ((((op)->fld[0]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch ((((op)->fld[0]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0))))
    return 1;

  op = adjust_address_1 (op, (mode_class[(int) (mode)]) == MODE_INT ? SImode : SFmode, 4, 0, 1);

  return memory_address_p (((enum machine_mode) (op)->mode), (((op)->fld[0]).rtx));
}



int
equality_op (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (mode != ((enum machine_mode) (op)->mode))
    return 0;

  return ((enum rtx_code) (op)->code) == EQ || ((enum rtx_code) (op)->code) == NE;
}



int
cmp_op (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (mode != ((enum machine_mode) (op)->mode))
    return 0;

  return (rtx_class[(int) (((enum rtx_code) (op)->code))]) == '<';
}






int
trap_cmp_op (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if (mode != ((enum machine_mode) (op)->mode))
    return 0;

  switch (((enum rtx_code) (op)->code))
    {
    case EQ:
    case NE:
    case LT:
    case LTU:
    case GE:
    case GEU:
      return 1;

    default:
      return 0;
    }
}



int
pc_or_label_operand (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  if (op == (global_rtl[GR_PC]))
    return 1;

  if (((enum rtx_code) (op)->code) == LABEL_REF)
    return 1;

  return 0;
}






int
call_insn_operand (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return ((((enum rtx_code) (op)->code) == LABEL_REF || ((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == CONST_INT || ((enum rtx_code) (op)->code) == HIGH || (((enum rtx_code) (op)->code) == CONST && ! (flag_pic && pic_address_needs_scratch (op)) && ((target_flags & 0x00000010) || mips_abi == 0)))
   || (((enum rtx_code) (op)->code) == REG && op != (global_rtl[GR_ARG_POINTER])
       && ! ((((op)->fld[0]).rtuint) >= 176
      && (((op)->fld[0]).rtuint) <= (((176)) + 4))));
}




int
move_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{



  return (general_operand (op, mode)
   && (! (mips_split_addresses && mips_check_split (op, mode))
       || reload_in_progress || reload_completed)
   && ! ((target_flags & 0x00100000)
  && ((enum rtx_code) (op)->code) == SYMBOL_REF
  && ! mips16_constant (op, mode, 1, 0)));
}
# 1244 "../../../kgccfe/gnu/mips.c"
int
movdi_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && move_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return (general_operand (op, mode)
   && ! ((target_flags & 0x00100000)
  && ((enum rtx_code) (op)->code) == SYMBOL_REF
  && ! mips16_constant (op, mode, 1, 0)));
}





int
se_register_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && ((enum machine_mode) ((((op)->fld[0]).rtx))->mode) == SImode
      && register_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return register_operand (op, mode);
}





int
se_reg_or_0_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && ((enum machine_mode) ((((op)->fld[0]).rtx))->mode) == SImode
      && register_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return reg_or_0_operand (op, mode);
}





int
se_uns_arith_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && ((enum machine_mode) ((((op)->fld[0]).rtx))->mode) == SImode
      && register_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return uns_arith_operand (op, mode);
}





int
se_arith_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && ((enum machine_mode) ((((op)->fld[0]).rtx))->mode) == SImode
      && register_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return arith_operand (op, mode);
}





int
se_nonmemory_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  if ((target_flags & 0x00002000)
      && mode == DImode
      && ((enum rtx_code) (op)->code) == SIGN_EXTEND
      && ((enum machine_mode) (op)->mode) == DImode
      && ((enum machine_mode) ((((op)->fld[0]).rtx))->mode) == SImode
      && register_operand ((((op)->fld[0]).rtx), SImode))
    return 1;

  return nonmemory_operand (op, mode);
}






int
consttable_operand (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return (((enum rtx_code) (op)->code) == LABEL_REF || ((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == CONST_INT || ((enum rtx_code) (op)->code) == CONST_DOUBLE || ((enum rtx_code) (op)->code) == CONST || ((enum rtx_code) (op)->code) == HIGH || ((enum rtx_code) (op)->code) == CONST_VECTOR || ((enum rtx_code) (op)->code) == CONSTANT_P_RTX);
}




int
coprocessor_operand (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return (((enum rtx_code) (op)->code) == REG
   && 80 <= (((op)->fld[0]).rtuint)
   && (((op)->fld[0]).rtuint) <= 175);
}

int
coprocessor2_operand (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return (((enum rtx_code) (op)->code) == REG
   && 112 <= (((op)->fld[0]).rtuint)
   && (((op)->fld[0]).rtuint) <= 143);
}




int
symbolic_operand (op, mode)
      register rtx op;
      enum machine_mode mode;
{
  if (mode != VOIDmode && ((enum machine_mode) (op)->mode) != VOIDmode && mode != ((enum machine_mode) (op)->mode))
    return 0;
  if (((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == LABEL_REF)
    return 1;
  if (((enum rtx_code) (op)->code) == CONST
      && ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == PLUS
      && ((enum rtx_code) (((((((op)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
      && ((enum rtx_code) (((((((op)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
    return 1;
  return 0;
}
# 1434 "../../../kgccfe/gnu/mips.c"
int
mips_check_split (address, mode)
     rtx address;
     enum machine_mode mode;
{


  if ((mode_size[(int) (mode)]) > (unsigned) ((target_flags & 0x00002000) ? 8 : 4))
    return 0;

  if ((((enum rtx_code) (address)->code) == SYMBOL_REF && ! (((address))->volatil))
      || (((enum rtx_code) (address)->code) == CONST
   && ((enum rtx_code) (((((((address)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
   && ! (((((((((address)->fld[0]).rtx))->fld[0]).rtx)))->volatil))
      || ((enum rtx_code) (address)->code) == LABEL_REF)
    return 1;

  return 0;
}



int
mips_reg_mode_ok_for_base_p (reg, mode, strict)
     rtx reg;
     enum machine_mode mode;
     int strict;
{
  return (strict
   ? ((target_flags & 0x00100000) ? (((((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) >= 2 && ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) <= 7) || ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) == 16 || ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) == 17) || ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) == (0 + 1) || ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) == 0 || (((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) == (0 + 29) && ((mode_size[(int) (((mode)))]) == 4 || (mode_size[(int) (((mode)))]) == 8))) : ((unsigned int) ((int) ((((((reg)->fld[0]).rtuint)) < 176) ? (int) ((((reg)->fld[0]).rtuint)) : reg_renumber[((((reg)->fld[0]).rtuint))]) - 0) < (31 - 0 + 1)))
   : ((((((reg)->fld[0]).rtuint)) >= 176) || (((target_flags & 0x00100000) ? ((((((((reg)->fld[0]).rtuint))) >= 2 && (((((reg)->fld[0]).rtuint))) <= 7) || (((((reg)->fld[0]).rtuint))) == 16 || (((((reg)->fld[0]).rtuint))) == 17) || (((((reg)->fld[0]).rtuint))) == (0 + 1) || (((((reg)->fld[0]).rtuint))) == 0 || ((((((reg)->fld[0]).rtuint))) == (0 + 29) && ((mode_size[(int) ((mode))]) == 4 || (mode_size[(int) ((mode))]) == 8))) : ((unsigned int) ((int) (((((reg)->fld[0]).rtuint))) - 0) < (31 - 0 + 1))))));
}






int
mips_legitimate_address_p (mode, xinsn, strict)
     enum machine_mode mode;
     rtx xinsn;
     int strict;
{
  if ((target_flags & 0))
    {
      fprintf(stderr, ("\n========== GO_IF_LEGITIMATE_ADDRESS, %sstrict\n"), (strict ? "" : "not "));

      debug_rtx(xinsn);
    }



  if ((((enum rtx_code) (xinsn)->code) == LABEL_REF || ((enum rtx_code) (xinsn)->code) == SYMBOL_REF || ((enum rtx_code) (xinsn)->code) == CONST_INT || ((enum rtx_code) (xinsn)->code) == HIGH || (((enum rtx_code) (xinsn)->code) == CONST && ! (flag_pic && pic_address_needs_scratch (xinsn)) && ((target_flags & 0x00000010) || mips_abi == 0)))
      && ! (mips_split_addresses && mips_check_split (xinsn, mode))
      && (! (target_flags & 0x00100000) || mips16_constant (xinsn, mode, 1, 0)))
    return 1;

  while (((enum rtx_code) (xinsn)->code) == SUBREG)
    xinsn = (((xinsn)->fld[0]).rtx);



  if (((enum rtx_code) (xinsn)->code) == REG
      && mips_reg_mode_ok_for_base_p (xinsn, mode, strict))
    return 1;

  if (((enum rtx_code) (xinsn)->code) == LO_SUM && mips_split_addresses)
    {
      register rtx xlow0 = (((xinsn)->fld[0]).rtx);
      register rtx xlow1 = (((xinsn)->fld[1]).rtx);

      while (((enum rtx_code) (xlow0)->code) == SUBREG)
 xlow0 = (((xlow0)->fld[0]).rtx);
      if (((enum rtx_code) (xlow0)->code) == REG
   && mips_reg_mode_ok_for_base_p (xlow0, mode, strict)
   && mips_check_split (xlow1, mode))
 return 1;
    }

  if (((enum rtx_code) (xinsn)->code) == PLUS)
    {
      register rtx xplus0 = (((xinsn)->fld[0]).rtx);
      register rtx xplus1 = (((xinsn)->fld[1]).rtx);
      register enum rtx_code code0;
      register enum rtx_code code1;

      while (((enum rtx_code) (xplus0)->code) == SUBREG)
 xplus0 = (((xplus0)->fld[0]).rtx);
      code0 = ((enum rtx_code) (xplus0)->code);

      while (((enum rtx_code) (xplus1)->code) == SUBREG)
 xplus1 = (((xplus1)->fld[0]).rtx);
      code1 = ((enum rtx_code) (xplus1)->code);



      if (code0 == REG
   && mips_reg_mode_ok_for_base_p (xplus0, mode, strict))
 {
   if (code1 == CONST_INT && ((unsigned long long) ((((xplus1)->fld[0]).rtwint) + 0x8000) < 0x10000))
     return 1;




   if ((target_flags & 0x00100000)
       && mips16_gp_offset_p (xplus1))
     return 1;
# 1562 "../../../kgccfe/gnu/mips.c"
   if (!(target_flags & 0)
       && (mips_abi == 0
    || mips_abi == 4
    || mips_abi == 3)
       && (((enum rtx_code) (xplus1)->code) == LABEL_REF || ((enum rtx_code) (xplus1)->code) == SYMBOL_REF || ((enum rtx_code) (xplus1)->code) == CONST_INT || ((enum rtx_code) (xplus1)->code) == HIGH || (((enum rtx_code) (xplus1)->code) == CONST && ! (flag_pic && pic_address_needs_scratch (xplus1)) && ((target_flags & 0x00000010) || mips_abi == 0)))
       && ! mips_split_addresses
       && (!(target_flags & 0x00004000)
    || code1 != CONST
    || ((enum rtx_code) ((((xplus1)->fld[0]).rtx))->code) != MINUS)




       && (!(target_flags & 0x00002000)
    || (code1 == CONST_INT
        && trunc_int_for_mode ((((xplus1)->fld[0]).rtwint),
          SImode) == (((xplus1)->fld[0]).rtwint)))
       && !(target_flags & 0x00100000))
     return 1;
 }
    }

  if ((target_flags & 0))
    fprintf(stderr, ("Not a legitimate address\n"));


  return 0;
}







static int
m16_check_op (op, low, high, mask)
     rtx op;
     int low;
     int high;
     int mask;
{
  return (((enum rtx_code) (op)->code) == CONST_INT
   && (((op)->fld[0]).rtwint) >= low
   && (((op)->fld[0]).rtwint) <= high
   && ((((op)->fld[0]).rtwint) & mask) == 0);
}

int
m16_uimm3_b (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, 0x1, 0x8, 0);
}

int
m16_simm4_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x8, 0x7, 0);
}

int
m16_nsimm4_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x7, 0x8, 0);
}

int
m16_simm5_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x10, 0xf, 0);
}

int
m16_nsimm5_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0xf, 0x10, 0);
}

int
m16_uimm5_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, (- 0x10) << 2, 0xf << 2, 3);
}

int
m16_nuimm5_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, (- 0xf) << 2, 0x10 << 2, 3);
}

int
m16_simm8_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x80, 0x7f, 0);
}

int
m16_nsimm8_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x7f, 0x80, 0);
}

int
m16_uimm8_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, 0x0, 0xff, 0);
}

int
m16_nuimm8_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0xff, 0x0, 0);
}

int
m16_uimm8_m1_1 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, - 0x1, 0xfe, 0);
}

int
m16_uimm8_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, 0x0, 0xff << 2, 3);
}

int
m16_nuimm8_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, (- 0xff) << 2, 0x0, 3);
}

int
m16_simm8_8 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, (- 0x80) << 3, 0x7f << 3, 7);
}

int
m16_nsimm8_8 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  return m16_check_op (op, (- 0x7f) << 3, 0x80 << 3, 7);
}







int
m16_usym8_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  if (((enum rtx_code) (op)->code) == SYMBOL_REF
      && (((op))->volatil)
      && cfun->machine->insns_len > 0
      && (((op)->fld[0]).rtstr)[0] == '*'
      && strncmp ((((op)->fld[0]).rtstr) + 1, "$",
    sizeof "$" - 1) == 0
      && (cfun->machine->insns_len + get_pool_size () + mips_string_length
   < 4 * 0x100))
    {
      struct string_constant *l;




      for (l = string_constants; l != ((void *)0); l = l->next)
 if (strcmp (l->label, (((op)->fld[0]).rtstr)) == 0)
   return 1;
    }

  return 0;
}

int
m16_usym5_4 (op, mode)
     rtx op;
     enum machine_mode mode __attribute__ ((__unused__));
{
  if (((enum rtx_code) (op)->code) == SYMBOL_REF
      && (((op))->volatil)
      && cfun->machine->insns_len > 0
      && (((op)->fld[0]).rtstr)[0] == '*'
      && strncmp ((((op)->fld[0]).rtstr) + 1, "$",
    sizeof "$" - 1) == 0
      && (cfun->machine->insns_len + get_pool_size () + mips_string_length
   < 4 * 0x20))
    {
      struct string_constant *l;




      for (l = string_constants; l != ((void *)0); l = l->next)
 if (strcmp (l->label, (((op)->fld[0]).rtstr)) == 0)
   return 1;
    }

  return 0;
}
# 1810 "../../../kgccfe/gnu/mips.c"
const char *
mips_fill_delay_slot (ret, type, operands, cur_insn)
     const char *ret;
     enum delay_type type;
     rtx operands[];
     rtx cur_insn;
{
  register rtx set_reg;
  register enum machine_mode mode;
  register rtx next_insn = cur_insn ? (((cur_insn)->fld[2]).rtx) : (rtx) 0;
  register int num_nops;

  if (type == DELAY_LOAD || type == DELAY_FCMP)
    num_nops = 1;

  else if (type == DELAY_HILO)
    num_nops = 2;

  else
    num_nops = 0;


  next_insn = (((cur_insn)->fld[2]).rtx);
  while (next_insn != 0 && ((enum rtx_code) (next_insn)->code) == NOTE)
    next_insn = (((next_insn)->fld[2]).rtx);

  dslots_load_total += num_nops;
  if ((target_flags & 0)
      || !optimize
      || type == DELAY_NONE
      || operands == 0
      || cur_insn == 0
      || next_insn == 0
      || ((enum rtx_code) (next_insn)->code) == CODE_LABEL
      || (set_reg = operands[0]) == 0)
    {
      dslots_number_nops = 0;
      mips_load_reg = 0;
      mips_load_reg2 = 0;
      mips_load_reg3 = 0;
      mips_load_reg4 = 0;
      return ret;
    }

  set_reg = operands[0];
  if (set_reg == 0)
    return ret;

  while (((enum rtx_code) (set_reg)->code) == SUBREG)
    set_reg = (((set_reg)->fld[0]).rtx);

  mode = ((enum machine_mode) (set_reg)->mode);
  dslots_number_nops = num_nops;
  mips_load_reg = set_reg;
  if ((mode_size[(int) (mode)])
      > (unsigned) (((unsigned int) ((int) ((((set_reg)->fld[0]).rtuint)) - 32) < (63 - 32 + 1)) ? ((target_flags & 0x00000200) ? 8 : 4) : ((target_flags & 0x00002000) ? 8 : 4)))
    mips_load_reg2 = gen_rtx_REG (SImode, (((set_reg)->fld[0]).rtuint) + 1);
  else
    mips_load_reg2 = 0;

  if (type == DELAY_HILO)
    {
      mips_load_reg3 = gen_rtx_REG (SImode, 64);
      mips_load_reg4 = gen_rtx_REG (SImode, 64 +1);
    }
  else
    {
      mips_load_reg3 = 0;
      mips_load_reg4 = 0;
    }

  return ret;
}






void
mips_count_memory_refs (op, num)
     rtx op;
     int num;
{
  int additional = 0;
  int n_words = 0;
  rtx addr, plus0, plus1;
  enum rtx_code code0, code1;
  int looping;

  if ((target_flags & 0))
    {
      fprintf (stderr, "\n========== mips_count_memory_refs:\n");
      debug_rtx (op);
    }


  addr = (((enum rtx_code) (op)->code) != MEM) ? op : (((op)->fld[0]).rtx);


  do
    {
      looping = 0;
      switch (((enum rtx_code) (addr)->code))
 {
 case REG:
 case CONST_INT:
 case LO_SUM:
   break;

 case PLUS:
   plus0 = (((addr)->fld[0]).rtx);
   plus1 = (((addr)->fld[1]).rtx);
   code0 = ((enum rtx_code) (plus0)->code);
   code1 = ((enum rtx_code) (plus1)->code);

   if (code0 == REG)
     {
       additional++;
       addr = plus1;
       looping = 1;
       continue;
     }

   if (code0 == CONST_INT)
     {
       addr = plus1;
       looping = 1;
       continue;
     }

   if (code1 == REG)
     {
       additional++;
       addr = plus0;
       looping = 1;
       continue;
     }

   if (code1 == CONST_INT)
     {
       addr = plus0;
       looping = 1;
       continue;
     }

   if (code0 == SYMBOL_REF || code0 == LABEL_REF || code0 == CONST)
     {
       addr = plus0;
       looping = 1;
       continue;
     }

   if (code1 == SYMBOL_REF || code1 == LABEL_REF || code1 == CONST)
     {
       addr = plus1;
       looping = 1;
       continue;
     }

   break;

 case LABEL_REF:
   n_words = 2;
   break;

 case CONST:
   addr = (((addr)->fld[0]).rtx);
   looping = 1;
   continue;

 case SYMBOL_REF:
   n_words = (((addr))->volatil) ? 1 : 2;
   break;

 default:
   break;
 }
    }
  while (looping);

  if (n_words == 0)
    return;

  n_words += additional;
  if (n_words > 3)
    n_words = 3;

  num_refs[n_words-1] += num;
}






rtx
embedded_pic_fnaddr_reg ()
{
  if (cfun->machine->embedded_pic_fnaddr_rtx == ((void *)0))
    {
      rtx seq;

      cfun->machine->embedded_pic_fnaddr_rtx = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
# 2023 "../../../kgccfe/gnu/mips.c"
      start_sequence ();
      emit_insn (gen_get_fnaddr (cfun->machine->embedded_pic_fnaddr_rtx,
     (((((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl)))->fld[0]).rtx)));
      seq = get_insns ();
      end_sequence ();
      push_topmost_sequence ();
      emit_insn_after (seq, get_insns ());
      pop_topmost_sequence ();
    }

  return cfun->machine->embedded_pic_fnaddr_rtx;
}




rtx
embedded_pic_offset (x)
     rtx x;
{

  embedded_pic_fnaddr_reg ();

  return
    gen_rtx_fmt_e (CONST, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (gen_rtx_fmt_ee (MINUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (x), ((((((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl)))->fld[0]).rtx)))));


}



const char *
mips_move_1word (operands, insn, unsignedp)
     rtx operands[];
     rtx insn;
     int unsignedp;
{
  const char *ret = 0;
  rtx op0 = operands[0];
  rtx op1 = operands[1];
  enum rtx_code code0 = ((enum rtx_code) (op0)->code);
  enum rtx_code code1 = ((enum rtx_code) (op1)->code);
  enum machine_mode mode = ((enum machine_mode) (op0)->mode);
  int subreg_offset0 = 0;
  int subreg_offset1 = 0;
  enum delay_type delay = DELAY_NONE;

  while (code0 == SUBREG)
    {
      subreg_offset0 += subreg_regno_offset (((((((op0)->fld[0]).rtx))->fld[0]).rtuint),
          ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode),
          (((op0)->fld[1]).rtuint),
          ((enum machine_mode) (op0)->mode));
      op0 = (((op0)->fld[0]).rtx);
      code0 = ((enum rtx_code) (op0)->code);
    }

  while (code1 == SUBREG)
    {
      subreg_offset1 += subreg_regno_offset (((((((op1)->fld[0]).rtx))->fld[0]).rtuint),
          ((enum machine_mode) ((((op1)->fld[0]).rtx))->mode),
          (((op1)->fld[1]).rtuint),
          ((enum machine_mode) (op1)->mode));
      op1 = (((op1)->fld[0]).rtx);
      code1 = ((enum rtx_code) (op1)->code);
    }


  if (mode == CCmode)
    mode = SImode;

  if (code0 == REG)
    {
      int regno0 = (((op0)->fld[0]).rtuint) + subreg_offset0;

      if (code1 == REG)
 {
   int regno1 = (((op1)->fld[0]).rtuint) + subreg_offset1;



   if (regno0 == regno1 && set_nomacro == 0)
     ret = "";

   else if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
     {
       if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
  ret = "move\t%0,%1";

       else if (((unsigned int) ((int) (regno1) - 64) < (66 - 64 + 1)))
  {
    delay = DELAY_HILO;
    if (regno1 != (64 + 2))
      ret = "mf%1\t%0";
    else
      ret = "mflo\t%0";
  }

       else if (((unsigned int) ((int) (regno1) - 67) < (74 - 67 + 1)) && ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
  ret = "li\t%0,1\n\tmovf\t%0,%.,%1";

       else
  {
    delay = DELAY_LOAD;
    if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)))
      ret = "mfc1\t%0,%1";
    else if (((unsigned int) ((int) (regno1) - 80) < (175 - 80 + 1)))
      {
        static char retval[] = "mfc_\t%0,%1";

        retval[3] = (((unsigned int) ((int) (regno1) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno1) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno1) - 144) < (175 - 144 + 1)) ? '3' : '?');
        ret = retval;
      }
    else if (regno1 == 67 && ! ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
      ret = "cfc1\t%0,$31";
  }
     }

   else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
     {
       if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
  {
    delay = DELAY_LOAD;
    ret = "mtc1\t%1,%0";
  }

       if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)))
  ret = "mov.s\t%0,%1";
     }

   else if (((unsigned int) ((int) (regno0) - 64) < (66 - 64 + 1)))
     {
       if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
  {
    delay = DELAY_HILO;
    if (regno0 != (64 + 2) && ! (target_flags & 0x00100000))
      ret = "mt%0\t%1";
  }
     }

   else if (regno0 == 67 && ! ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
     {
       if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
  {
    delay = DELAY_LOAD;
    ret = "ctc1\t%0,$31";
  }
     }
   else if (((unsigned int) ((int) (regno0) - 80) < (175 - 80 + 1)))
     {
       if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
  {
    static char retval[] = "mtc_\t%1,%0";
    char cop = (((unsigned int) ((int) (regno0) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno0) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno0) - 144) < (175 - 144 + 1)) ? '3' : '?');

    if (cop == '0')
      abort_with_insn (insn,
         "mtc0 not supported; it disturbs virtual address translation");
    delay = DELAY_LOAD;
    retval[3] = cop;
    ret = retval;
  }
     }
 }

      else if (code1 == MEM)
 {
   delay = DELAY_LOAD;

   if ((target_flags & 0x00000040))
     mips_count_memory_refs (op1, 1);

   if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
     {


       switch (((enum machine_mode) (op1)->mode))
  {
  default:
    break;
  case SFmode:
    ret = "lw\t%0,%1";
    break;
  case SImode:
  case CCmode:
    ret = ((unsignedp && (target_flags & 0x00002000))
    ? "lwu\t%0,%1"
    : "lw\t%0,%1");
    break;
  case HImode:
    ret = (unsignedp) ? "lhu\t%0,%1" : "lh\t%0,%1";
    break;
  case QImode:
    ret = (unsignedp) ? "lbu\t%0,%1" : "lb\t%0,%1";
    break;
  }
     }

   else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)) && (mode == SImode || mode == SFmode))
     ret = "l.s\t%0,%1";

   else if (((unsigned int) ((int) (regno0) - 80) < (175 - 80 + 1)))
     {
       static char retval[] = "lwc_\t%0,%1";
       char cop = (((unsigned int) ((int) (regno0) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno0) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno0) - 144) < (175 - 144 + 1)) ? '3' : '?');

       if (cop == '0')
  abort_with_insn (insn,
     "loads from memory to COP0 are illegal");
       delay = DELAY_LOAD;
       retval[3] = cop;
       ret = retval;
     }

   if (ret != (char *)0 && (((op1))->volatil))
     {
       size_t i = strlen (ret);
       if (i > sizeof (volatile_buffer) - sizeof ("%{%}"))
  fancy_abort ("../../../kgccfe/gnu/mips.c", 2241, __FUNCTION__);

       sprintf (volatile_buffer, "%%{%s%%}", ret);
       ret = volatile_buffer;
     }
 }

      else if (code1 == CONST_INT
        || (code1 == CONST_DOUBLE
     && ((enum machine_mode) (op1)->mode) == VOIDmode))
 {
   if (code1 == CONST_DOUBLE)
     {



       operands[1] = op1 = gen_rtx_CONST_INT (VOIDmode, (long long) ((((op1)->fld[0]).rtwint)));
     }

   if ((((op1)->fld[0]).rtwint) == 0 && ! (target_flags & 0x00100000))
     {
       if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
  ret = "move\t%0,%z1";

       else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
  {
    delay = DELAY_LOAD;
    ret = "mtc1\t%z1,%0";
  }

       else if (((unsigned int) ((int) (regno0) - 64) < (66 - 64 + 1)))
  {
    delay = DELAY_HILO;
    ret = "mt%0\t%.";
  }
     }

   else if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
     {


       if (! (target_flags & 0x00100000))
  ret = "li\t%0,%1\t\t\t# %X1";
       else
  {
    if ((((op1)->fld[0]).rtwint) >= 0 && (((op1)->fld[0]).rtwint) <= 0xffff)
      ret = "li\t%0,%1";
    else if ((((op1)->fld[0]).rtwint) < 0 && (((op1)->fld[0]).rtwint) >= -0xffff)
      ret = "li\t%0,%n1\n\tneg\t%0";
  }
     }
 }

      else if (code1 == CONST_DOUBLE && mode == SFmode)
 {
   if (op1 == (const_tiny_rtx[0][(int) (SFmode)]))
     {
       if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
  ret = "move\t%0,%.";

       else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
  {
    delay = DELAY_LOAD;
    ret = "mtc1\t%.,%0";
  }
     }

   else
     {
       delay = DELAY_LOAD;
       ret = "li.s\t%0,%1";
     }
 }

      else if (code1 == LABEL_REF)
 {
   if ((target_flags & 0x00000040))
     mips_count_memory_refs (op1, 1);

   ret = "la\t%0,%a1";
 }

      else if (code1 == SYMBOL_REF || code1 == CONST)
 {
   if ((target_flags & 0x00100000)
       && code1 == CONST
       && ((enum rtx_code) ((((op1)->fld[0]).rtx))->code) == REG
       && ((((((op1)->fld[0]).rtx))->fld[0]).rtuint) == 0 + 28)
     {


       ret = "move\t%0,%+";
     }
   else if ((target_flags & 0x00100000)
     && code1 == SYMBOL_REF
     && (((op1))->volatil)
     && ((((op1)->fld[0]).rtstr)[0] != '*'
         || strncmp ((((op1)->fld[0]).rtstr) + 1,
       "$",
       sizeof "$" - 1) != 0))
     {


       ret = "move\t%0,%+\n\taddu\t%0,%%gprel(%a1)";
     }
   else
     {
       if ((target_flags & 0x00000040))
  mips_count_memory_refs (op1, 1);

       ret = "la\t%0,%a1";
     }
 }

      else if (code1 == PLUS)
 {
   rtx add_op0 = (((op1)->fld[0]).rtx);
   rtx add_op1 = (((op1)->fld[1]).rtx);

   if (((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == REG
       && ((enum rtx_code) ((((op1)->fld[0]).rtx))->code) == CONST_INT)
     add_op0 = (((op1)->fld[1]).rtx), add_op1 = (((op1)->fld[0]).rtx);

   operands[2] = add_op0;
   operands[3] = add_op1;
   ret = "add%:\t%0,%2,%3";
 }

      else if (code1 == HIGH)
 {
   operands[1] = (((op1)->fld[0]).rtx);
   ret = "lui\t%0,%%hi(%1)";
 }
    }

  else if (code0 == MEM)
    {
      if ((target_flags & 0x00000040))
 mips_count_memory_refs (op0, 1);

      if (code1 == REG)
 {
   int regno1 = (((op1)->fld[0]).rtuint) + subreg_offset1;

   if (((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)))
     {
       switch (mode)
  {
  case SFmode: ret = "sw\t%1,%0"; break;
  case SImode: ret = "sw\t%1,%0"; break;
  case HImode: ret = "sh\t%1,%0"; break;
  case QImode: ret = "sb\t%1,%0"; break;
  default: break;
  }
     }

   else if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)) && (mode == SImode || mode == SFmode))
     ret = "s.s\t%1,%0";
   else if (((unsigned int) ((int) (regno1) - 80) < (175 - 80 + 1)))
     {
       static char retval[] = "swc_\t%1,%0";

       retval[3] = (((unsigned int) ((int) (regno1) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno1) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno1) - 144) < (175 - 144 + 1)) ? '3' : '?');
       ret = retval;
     }
 }

      else if (code1 == CONST_INT && (((op1)->fld[0]).rtwint) == 0)
 {
   switch (mode)
     {
     case SFmode: ret = "sw\t%z1,%0"; break;
     case SImode: ret = "sw\t%z1,%0"; break;
     case HImode: ret = "sh\t%z1,%0"; break;
     case QImode: ret = "sb\t%z1,%0"; break;
     default: break;
     }
 }

      else if (code1 == CONST_DOUBLE && op1 == (const_tiny_rtx[0][(int) (mode)]))
 {
   switch (mode)
     {
     case SFmode: ret = "sw\t%.,%0"; break;
     case SImode: ret = "sw\t%.,%0"; break;
     case HImode: ret = "sh\t%.,%0"; break;
     case QImode: ret = "sb\t%.,%0"; break;
     default: break;
     }
 }

      if (ret != 0 && (((op0))->volatil))
 {
   size_t i = strlen (ret);

   if (i > sizeof (volatile_buffer) - sizeof ("%{%}"))
     fancy_abort ("../../../kgccfe/gnu/mips.c", 2437, __FUNCTION__);

   sprintf (volatile_buffer, "%%{%s%%}", ret);
   ret = volatile_buffer;
 }
    }

  if (ret == 0)
    {
      abort_with_insn (insn, "bad move");
      return 0;
    }

  if (delay != DELAY_NONE)
    return mips_fill_delay_slot (ret, delay, operands, insn);

  return ret;
}
# 2463 "../../../kgccfe/gnu/mips.c"
const char *
mips_restore_gp (operands, insn)
     rtx *operands, insn;
{
  rtx loc;

  operands[0] = pic_offset_table_rtx;
  if (frame_pointer_needed)
    loc = (global_rtl[GR_HARD_FRAME_POINTER]);
  else
    loc = (global_rtl[GR_STACK_POINTER]);
  loc = plus_constant_wide ((loc), (long long) (cfun->machine->frame.args_size));
  operands[1] = gen_rtx_MEM ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), loc);

  return mips_move_1word (operands, insn, 0);
}




const char *
mips_sign_extend (insn, dest, src)
     rtx insn, dest, src;
{
  rtx operands[30];

  if ((register_operand (src, SImode) && ((unsigned int) ((int) (true_regnum (src)) - 32) < (63 - 32 + 1)))
      || memory_operand (src, SImode))
    {



      operands[0] = gen_lowpart_SUBREG (SImode, dest);
      operands[1] = src;
      return mips_move_1word (operands, insn, 0);
    }
  else
    {
      operands[0] = dest;
      operands[1] = src;
      return mips_move_2words (operands, insn);
    }
}



const char *
mips_move_2words (operands, insn)
     rtx operands[];
     rtx insn;
{
  const char *ret = 0;
  rtx op0 = operands[0];
  rtx op1 = operands[1];
  enum rtx_code code0 = ((enum rtx_code) (operands[0])->code);
  enum rtx_code code1 = ((enum rtx_code) (operands[1])->code);
  int subreg_offset0 = 0;
  int subreg_offset1 = 0;
  enum delay_type delay = DELAY_NONE;

  if (code1 == SIGN_EXTEND)
    return mips_sign_extend (insn, op0, (((op1)->fld[0]).rtx));

  while (code0 == SUBREG)
    {
      subreg_offset0 += subreg_regno_offset (((((((op0)->fld[0]).rtx))->fld[0]).rtuint),
          ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode),
          (((op0)->fld[1]).rtuint),
          ((enum machine_mode) (op0)->mode));
      op0 = (((op0)->fld[0]).rtx);
      code0 = ((enum rtx_code) (op0)->code);
    }

  while (code1 == SUBREG)
    {
      subreg_offset1 += subreg_regno_offset (((((((op1)->fld[0]).rtx))->fld[0]).rtuint),
          ((enum machine_mode) ((((op1)->fld[0]).rtx))->mode),
          (((op1)->fld[1]).rtuint),
          ((enum machine_mode) (op1)->mode));
      op1 = (((op1)->fld[0]).rtx);
      code1 = ((enum rtx_code) (op1)->code);
    }

  if (code0 == REG)
    {
      int regno0 = (((op0)->fld[0]).rtuint) + subreg_offset0;

      if (code1 == REG)
 {
   int regno1 = (((op1)->fld[0]).rtuint) + subreg_offset1;



   if (regno0 == regno1 && set_nomacro == 0)
     ret = "";

   else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
     {
       if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)))
  ret = "mov.d\t%0,%1";

       else
  {
    delay = DELAY_LOAD;
    if ((target_flags & 0x00000200))
      {
        if (!(target_flags & 0x00002000))
   abort_with_insn (insn, "bad move");






   ret = "dmtc1\t%1,%0";
      }
    else
      ret = "mtc1\t%L1,%0\n\tmtc1\t%M1,%D0";
  }
     }

   else if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)))
     {
       delay = DELAY_LOAD;
       if ((target_flags & 0x00000200))
  {
    if (!(target_flags & 0x00002000))
      abort_with_insn (insn, "bad move");






      ret = "dmfc1\t%0,%1";
  }
       else
  ret = "mfc1\t%L0,%1\n\tmfc1\t%M0,%D1";
     }

   else if (((unsigned int) ((int) (regno0) - 64) < (66 - 64 + 1)) && ((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1)) && !(target_flags & 0x00100000))
     {
       delay = DELAY_HILO;
       if ((target_flags & 0x00002000))
  {
    if (regno0 != (64 + 2))
      ret = "mt%0\t%1";
    else if (regno1 == 0)
      ret = "mtlo\t%.\n\tmthi\t%.";
  }
       else
  ret = "mthi\t%M1\n\tmtlo\t%L1";
     }

   else if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)) && ((unsigned int) ((int) (regno1) - 64) < (66 - 64 + 1)))
     {
       delay = DELAY_HILO;
       if ((target_flags & 0x00002000))
  {
    if (regno1 != (64 + 2))
      ret = "mf%1\t%0";
  }
       else
  ret = "mfhi\t%M0\n\tmflo\t%L0";
     }
   else if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)) && ((unsigned int) ((int) (regno1) - 80) < (175 - 80 + 1))
     && (target_flags & 0x00002000))
     {
       static char retval[] = "dmfc_\t%0,%1";

       delay = DELAY_LOAD;
       retval[4] = (((unsigned int) ((int) (regno1) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno1) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno1) - 144) < (175 - 144 + 1)) ? '3' : '?');
       ret = retval;
     }
   else if (((unsigned int) ((int) (regno0) - 80) < (175 - 80 + 1)) && ((unsigned int) ((int) (regno1) - 0) < (31 - 0 + 1))
     && (target_flags & 0x00002000))
     {
       static char retval[] = "dmtc_\t%1,%0";
       char cop = (((unsigned int) ((int) (regno0) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno0) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno0) - 144) < (175 - 144 + 1)) ? '3' : '?');

       if (cop == '0')
  abort_with_insn (insn,
     "dmtc0 not supported; it disturbs virtual address translation");
       delay = DELAY_LOAD;
       retval[4] = cop;
       ret = retval;
     }
   else if ((target_flags & 0x00002000))
     ret = "move\t%0,%1";

   else if (regno0 != (regno1+1))
     ret = "move\t%0,%1\n\tmove\t%D0,%D1";

   else
     ret = "move\t%D0,%D1\n\tmove\t%0,%1";
 }

      else if (code1 == CONST_DOUBLE)
 {


   if (op1 != (const_tiny_rtx[0][(int) (((enum machine_mode) (op1)->mode))])
       || ((target_flags & 0x00000200) && !(target_flags & 0x00002000) && ((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1))))
     {
       if (((enum machine_mode) (op1)->mode) == DFmode)
  {
    delay = DELAY_LOAD;
# 2688 "../../../kgccfe/gnu/mips.c"
      if (((mips_isa == 3) || (mips_isa == 4) || (mips_isa == 64))
   && ! (target_flags & 0x00002000)
   && ! ((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
        {
   split_double (op1, operands + 2, operands + 3);
   ret = "li\t%0,%2\n\tli\t%D0,%3";
        }
      else
        ret = "li.d\t%0,%1";
  }

       else if ((target_flags & 0x00002000))
  {
    if (! (target_flags & 0x00100000))
      ret = "dli\t%0,%1";
  }

       else
  {
    split_double (op1, operands + 2, operands + 3);
    ret = "li\t%0,%2\n\tli\t%D0,%3";
  }
     }

   else
     {
       if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
  ret = ((target_flags & 0x00002000)



         ? "move\t%0,%."
         : "move\t%0,%.\n\tmove\t%D0,%.");

       else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
  {
    delay = DELAY_LOAD;
    ret = ((target_flags & 0x00002000)
    ? "dmtc1\t%.,%0"
    : "mtc1\t%.,%0\n\tmtc1\t%.,%D0");
  }
     }
 }

      else if (code1 == CONST_INT && (((op1)->fld[0]).rtwint) == 0 && ! (target_flags & 0x00100000))
 {
   if (((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
     ret = ((target_flags & 0x00002000)
     ? "move\t%0,%."
     : "move\t%0,%.\n\tmove\t%D0,%.");

   else if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
     {
       delay = DELAY_LOAD;
       ret = ((target_flags & 0x00002000)
       ? "dmtc1\t%.,%0"
       : ((target_flags & 0x00000200)
   ? "li.d\t%0,%1"
   : "mtc1\t%.,%0\n\tmtc1\t%.,%D0"));
     }
   else if (((unsigned int) ((int) (regno0) - 64) < (66 - 64 + 1)))
     {
       delay = DELAY_HILO;
       ret = (regno0 == (64 + 2)
        ? "mtlo\t%.\n\tmthi\t%."
        : "mt%0\t%.\n");
     }
 }

      else if (code1 == CONST_INT && ((enum machine_mode) (op0)->mode) == DImode
        && ((unsigned int) ((int) (regno0) - 0) < (31 - 0 + 1)))
 {
   if ((target_flags & 0x00002000))
     {
       if ((target_flags & 0x00100000))
  {
    if ((((op1)->fld[0]).rtwint) >= 0 && (((op1)->fld[0]).rtwint) <= 0xffff)
      ret = "li\t%0,%1";
    else if ((((op1)->fld[0]).rtwint) < 0 && (((op1)->fld[0]).rtwint) >= -0xffff)
      ret = "li\t%0,%n1\n\tneg\t%0";
  }
       else if (((enum rtx_code) (operands[1])->code) == SIGN_EXTEND)
  ret = "li\t%0,%1\t\t# %X1";
       else if ((8 * 8) < 64)


  ret = ((((op1)->fld[0]).rtwint) < 0
         ? "dli\t%0,%1\t\t\t# %X1"
         : "dli\t%0,%X1\t\t# %1");
       else


  ret = "dli\t%0,%X1\t\t# %1";
     }
   else if ((8 * 8) < 64)
     {
       operands[2] = gen_rtx_CONST_INT (VOIDmode, (long long) ((((operands[1])->fld[0]).rtwint) >= 0 ? 0 : -1));
       if ((target_flags & 0x00100000))
  {
    if ((((op1)->fld[0]).rtwint) >= 0 && (((op1)->fld[0]).rtwint) <= 0xffff)
      ret = "li\t%M0,%2\n\tli\t%L0,%1";
    else if ((((op1)->fld[0]).rtwint) < 0 && (((op1)->fld[0]).rtwint) >= -0xffff)
      {
        operands[2] = gen_rtx_CONST_INT (VOIDmode, (long long) (1));
        ret = "li\t%M0,%2\n\tneg\t%M0\n\tli\t%L0,%n1\n\tneg\t%L0";
      }
  }
       else
  ret = "li\t%M0,%2\n\tli\t%L0,%1";
     }
   else
     {


       operands[2] = gen_rtx_CONST_INT (VOIDmode, (long long) ((((operands[1])->fld[0]).rtwint) >> 16 >> 16));
       operands[1]
  = gen_rtx_CONST_INT (VOIDmode, (long long) ((((operands[1])->fld[0]).rtwint) << 16 << 16 >> 16 >> 16));
       if ((target_flags & 0x00100000))
  {
    if ((((op1)->fld[0]).rtwint) >= 0 && (((op1)->fld[0]).rtwint) <= 0xffff)
      ret = "li\t%M0,%2\n\tli\t%L0,%1";
    else if ((((op1)->fld[0]).rtwint) < 0 && (((op1)->fld[0]).rtwint) >= -0xffff)
      {
        operands[2] = gen_rtx_CONST_INT (VOIDmode, (long long) (1));
        ret = "li\t%M0,%2\n\tneg\t%M0\n\tli\t%L0,%n1\n\tneg\t%L0";
      }
  }
       else
  ret = "li\t%M0,%2\n\tli\t%L0,%1";
     }
 }

      else if (code1 == MEM)
 {
   delay = DELAY_LOAD;

   if ((target_flags & 0x00000040))
     mips_count_memory_refs (op1, 2);

   if (((unsigned int) ((int) (regno0) - 32) < (63 - 32 + 1)))
     ret = "l.d\t%0,%1";

   else if (((unsigned int) ((int) (regno0) - 80) < (175 - 80 + 1)) && (target_flags & 0x00002000))
     {
       static char retval[] = "ldc_\t%0,%1";
       char cop = (((unsigned int) ((int) (regno0) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno0) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno0) - 144) < (175 - 144 + 1)) ? '3' : '?');

       if (cop == '0')
  abort_with_insn (insn,
     "loads from memory to COP0 are illegal");
       delay = DELAY_LOAD;
       retval[3] = cop;
       ret = retval;
     }

   else if ((target_flags & 0x00002000))
     {
# 2853 "../../../kgccfe/gnu/mips.c"
  ret = "ld\t%0,%1";
     }

   else if (double_memory_operand (op1, ((enum machine_mode) (op1)->mode)))
     ret = (reg_mentioned_p (op0, op1)
     ? "lw\t%D0,%D1\n\tlw\t%0,%1"
     : "lw\t%0,%1\n\tlw\t%D0,%D1");

   if (ret != 0 && (((op1))->volatil))
     {
       size_t i = strlen (ret);

       if (i > sizeof (volatile_buffer) - sizeof ("%{%}"))
  fancy_abort ("../../../kgccfe/gnu/mips.c", 2866, __FUNCTION__);

       sprintf (volatile_buffer, "%%{%s%%}", ret);
       ret = volatile_buffer;
     }
 }

      else if (code1 == LABEL_REF)
 {
   if ((target_flags & 0x00000040))
     mips_count_memory_refs (op1, 2);

   if (((enum rtx_code) (operands[1])->code) == SIGN_EXTEND)




     ret = "la\t%0,%1";
   else
     ret = "dla\t%0,%a1";
 }
      else if (code1 == SYMBOL_REF || code1 == CONST)
 {
   if ((target_flags & 0x00100000)
       && code1 == CONST
       && ((enum rtx_code) ((((op1)->fld[0]).rtx))->code) == REG
       && ((((((op1)->fld[0]).rtx))->fld[0]).rtuint) == 0 + 28)
     {


       ret = "move\t%0,%+";
     }
   else if ((target_flags & 0x00100000)
     && code1 == SYMBOL_REF
     && (((op1))->volatil)
     && ((((op1)->fld[0]).rtstr)[0] != '*'
         || strncmp ((((op1)->fld[0]).rtstr) + 1,
       "$",
       sizeof "$" - 1) != 0))
     {


       ret = "move\t%0,%+\n\taddu\t%0,%%gprel(%a1)";
     }
   else
     {
       if ((target_flags & 0x00000040))
  mips_count_memory_refs (op1, 2);

       if (((enum rtx_code) (operands[1])->code) == SIGN_EXTEND)




  ret = "la\t%0,%1";
       else
  ret = "dla\t%0,%a1";
     }
 }
    }

  else if (code0 == MEM)
    {
      if (code1 == REG)
 {
   int regno1 = (((op1)->fld[0]).rtuint) + subreg_offset1;

   if (((unsigned int) ((int) (regno1) - 32) < (63 - 32 + 1)))
     ret = "s.d\t%1,%0";

   else if (((unsigned int) ((int) (regno1) - 80) < (175 - 80 + 1)) && (target_flags & 0x00002000))
     {
       static char retval[] = "sdc_\t%1,%0";

       retval[3] = (((unsigned int) ((int) (regno1) - 80) < (111 - 80 + 1)) ? '0' : ((unsigned int) ((int) (regno1) - 112) < (143 - 112 + 1)) ? '2' : ((unsigned int) ((int) (regno1) - 144) < (175 - 144 + 1)) ? '3' : '?');
       ret = retval;
     }
   else if ((target_flags & 0x00002000))
     {






  ret = "sd\t%1,%0";
     }

   else if (double_memory_operand (op0, ((enum machine_mode) (op0)->mode)))
     ret = "sw\t%1,%0\n\tsw\t%D1,%D0";
 }

      else if (((code1 == CONST_INT && (((op1)->fld[0]).rtwint) == 0)
  || (code1 == CONST_DOUBLE
      && op1 == (const_tiny_rtx[0][(int) (((enum machine_mode) (op1)->mode))])))
        && ((target_flags & 0x00002000)
     || double_memory_operand (op0, ((enum machine_mode) (op0)->mode))))
 {
   if ((target_flags & 0x00002000))
     ret = "sd\t%.,%0";
   else
     ret = "sw\t%.,%0\n\tsw\t%.,%D0";
 }

      if ((target_flags & 0x00000040))
 mips_count_memory_refs (op0, 2);

      if (ret != 0 && (((op0))->volatil))
 {
   size_t i = strlen (ret);

   if (i > sizeof (volatile_buffer) - sizeof ("%{%}"))
     fancy_abort ("../../../kgccfe/gnu/mips.c", 2978, __FUNCTION__);

   sprintf (volatile_buffer, "%%{%s%%}", ret);
   ret = volatile_buffer;
 }
    }

  if (ret == 0)
    {
      abort_with_insn (insn, "bad move");
      return 0;
    }

  if (delay != DELAY_NONE)
    return mips_fill_delay_slot (ret, delay, operands, insn);

  return ret;
}




int
mips_address_cost (addr)
     rtx addr;
{
  switch (((enum rtx_code) (addr)->code))
    {
    case LO_SUM:
      return 1;

    case LABEL_REF:
      return 2;

    case CONST:
      {
 rtx offset = (const_int_rtx[64]);
 addr = eliminate_constant_term ((((addr)->fld[0]).rtx), &offset);
 if (((enum rtx_code) (addr)->code) == LABEL_REF)
   return 2;

 if (((enum rtx_code) (addr)->code) != SYMBOL_REF)
   return 4;

 if (! ((unsigned long long) ((((offset)->fld[0]).rtwint) + 0x8000) < 0x10000))
   return 2;
      }



    case SYMBOL_REF:
      return (((addr))->volatil) ? 1 : 2;

    case PLUS:
      {
 register rtx plus0 = (((addr)->fld[0]).rtx);
 register rtx plus1 = (((addr)->fld[1]).rtx);

 if (((enum rtx_code) (plus0)->code) != REG && ((enum rtx_code) (plus1)->code) == REG)
   plus0 = (((addr)->fld[1]).rtx), plus1 = (((addr)->fld[0]).rtx);

 if (((enum rtx_code) (plus0)->code) != REG)
   break;

 switch (((enum rtx_code) (plus1)->code))
   {
   case CONST_INT:
     return ((unsigned long long) ((((plus1)->fld[0]).rtwint) + 0x8000) < 0x10000) ? 1 : 2;

   case CONST:
   case SYMBOL_REF:
   case LABEL_REF:
   case HIGH:
   case LO_SUM:
     return mips_address_cost (plus1) + 1;

   default:
     break;
   }
      }

    default:
      break;
    }

  return 4;
}




int
pic_address_needs_scratch (x)
     rtx x;
{

  if (((enum rtx_code) (x)->code) == CONST && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
      && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
      && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
      && ! ((unsigned long long) ((((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
    return 1;

  return 0;
}



static enum internal_test
map_test_to_internal_test (test_code)
     enum rtx_code test_code;
{
  enum internal_test test = ITEST_MAX;

  switch (test_code)
    {
    case EQ: test = ITEST_EQ; break;
    case NE: test = ITEST_NE; break;
    case GT: test = ITEST_GT; break;
    case GE: test = ITEST_GE; break;
    case LT: test = ITEST_LT; break;
    case LE: test = ITEST_LE; break;
    case GTU: test = ITEST_GTU; break;
    case GEU: test = ITEST_GEU; break;
    case LTU: test = ITEST_LTU; break;
    case LEU: test = ITEST_LEU; break;
    default: break;
    }

  return test;
}
# 3131 "../../../kgccfe/gnu/mips.c"
rtx
gen_int_relational (test_code, result, cmp0, cmp1, p_invert)
     enum rtx_code test_code;
     rtx result;
     rtx cmp0;
     rtx cmp1;
     int *p_invert;

{
  struct cmp_info
  {
    enum rtx_code test_code;
    int const_low;
    int const_high;
    int const_add;
    int reverse_regs;
    int invert_const;
    int invert_reg;
    int unsignedp;
  };

  static const struct cmp_info info[ (int)ITEST_MAX ] = {

    { XOR, 0, 65535, 0, 0, 0, 0, 0 },
    { XOR, 0, 65535, 0, 0, 1, 1, 0 },
    { LT, -32769, 32766, 1, 1, 1, 0, 0 },
    { LT, -32768, 32767, 0, 0, 1, 1, 0 },
    { LT, -32768, 32767, 0, 0, 0, 0, 0 },
    { LT, -32769, 32766, 1, 1, 0, 1, 0 },
    { LTU, -32769, 32766, 1, 1, 1, 0, 1 },
    { LTU, -32768, 32767, 0, 0, 1, 1, 1 },
    { LTU, -32768, 32767, 0, 0, 0, 0, 1 },
    { LTU, -32769, 32766, 1, 1, 0, 1, 1 },
  };

  enum internal_test test;
  enum machine_mode mode;
  const struct cmp_info *p_info;
  int branch_p;
  int eqne_p;
  int invert;
  rtx reg;
  rtx reg2;

  test = map_test_to_internal_test (test_code);
  if (test == ITEST_MAX)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 3177, __FUNCTION__);

  p_info = &info[(int) test];
  eqne_p = (p_info->test_code == XOR);

  mode = ((enum machine_mode) (cmp0)->mode);
  if (mode == VOIDmode)
    mode = ((enum machine_mode) (cmp1)->mode);


  branch_p = (result == 0);
  if (branch_p)
    {
      if (((enum rtx_code) (cmp0)->code) == REG || ((enum rtx_code) (cmp0)->code) == SUBREG)
 {

   if (((enum rtx_code) (cmp1)->code) == CONST_INT && (((cmp1)->fld[0]).rtwint) == 0
       && (! (target_flags & 0x00100000) || eqne_p))
     return 0;


   if (eqne_p && ! (target_flags & 0x00100000))
     return 0;
 }


      result = gen_reg_rtx (mode);
    }


  if (((enum rtx_code) (cmp0)->code) == CONST_INT)
    cmp0 = force_reg (mode, cmp0);

  if (((enum rtx_code) (cmp1)->code) == CONST_INT)
    {
      long long value = (((cmp1)->fld[0]).rtwint);

      if (value < p_info->const_low
   || value > p_info->const_high

   || ((target_flags & 0x00002000)
       && (8 * 8) < 64
       && p_info->const_add != 0
       && ((p_info->unsignedp
     ? ((unsigned long long) (value + p_info->const_add)
        > (unsigned long long) (((cmp1)->fld[0]).rtwint))
     : (value + p_info->const_add) > (((cmp1)->fld[0]).rtwint))
    != (p_info->const_add > 0))))
 cmp1 = force_reg (mode, cmp1);
    }


  invert = (((enum rtx_code) (cmp1)->code) == CONST_INT
     ? p_info->invert_const : p_info->invert_reg);

  if (p_invert != (int *)0)
    {
      *p_invert = invert;
      invert = 0;
    }



  if (((enum rtx_code) (cmp1)->code) == CONST_INT)
    {
      if (p_info->const_add != 0)
 {
   long long new = (((cmp1)->fld[0]).rtwint) + p_info->const_add;




   if ((p_info->unsignedp
        ? (unsigned long long) new >
        (unsigned long long) (((cmp1)->fld[0]).rtwint)
        : new > (((cmp1)->fld[0]).rtwint))
       != (p_info->const_add > 0))
     {



       emit_move_insn (result, invert ? (const_int_rtx[64]) : const_true_rtx);
       return result;
     }
   else
     cmp1 = gen_rtx_CONST_INT (VOIDmode, (long long) (new));
 }
    }

  else if (p_info->reverse_regs)
    {
      rtx temp = cmp0;
      cmp0 = cmp1;
      cmp1 = temp;
    }

  if (test == ITEST_NE && ((enum rtx_code) (cmp1)->code) == CONST_INT && (((cmp1)->fld[0]).rtwint) == 0)
    reg = cmp0;
  else
    {
      reg = (invert || eqne_p) ? gen_reg_rtx (mode) : result;
      convert_move (reg, gen_rtx (p_info->test_code, mode, cmp0, cmp1), 0);
    }

  if (test == ITEST_NE)
    {
      if (! (target_flags & 0x00100000))
 {
   convert_move (result, gen_rtx (GTU, mode, reg, (const_int_rtx[64])), 0);
   if (p_invert != ((void *)0))
     *p_invert = 0;
   invert = 0;
 }
      else
 {
   reg2 = invert ? gen_reg_rtx (mode) : result;
   convert_move (reg2, gen_rtx (LTU, mode, reg, (const_int_rtx[64 +1])), 0);
   reg = reg2;
 }
    }

  else if (test == ITEST_EQ)
    {
      reg2 = invert ? gen_reg_rtx (mode) : result;
      convert_move (reg2, gen_rtx_fmt_ee (LTU, (mode), (reg), ((const_int_rtx[64 +1]))), 0);
      reg = reg2;
    }

  if (invert)
    {
      rtx one;

      if (! (target_flags & 0x00100000))
 one = (const_int_rtx[64 +1]);
      else
 {



   reg2 = gen_reg_rtx (mode);
   emit_move_insn (reg2, reg);
   reg = reg2;
   one = force_reg (mode, (const_int_rtx[64 +1]));
 }
      convert_move (result, gen_rtx (XOR, mode, reg, one), 0);
    }

  return result;
}







static void
get_float_compare_codes (in_code, cmp_code, action_code)
     enum rtx_code in_code, *cmp_code, *action_code;
{
  switch (in_code)
    {
    case NE:
    case UNGE:
    case UNGT:
    case LTGT:
    case ORDERED:
      *cmp_code = reverse_condition_maybe_unordered (in_code);
      *action_code = EQ;
      break;

    default:
      *cmp_code = in_code;
      *action_code = NE;
      break;
    }
}





void
gen_conditional_branch (operands, test_code)
     rtx operands[];
     enum rtx_code test_code;
{
  enum cmp_type type = branch_type;
  rtx cmp0 = branch_cmp[0];
  rtx cmp1 = branch_cmp[1];
  enum machine_mode mode;
  enum rtx_code cmp_code;
  rtx reg;
  int invert;
  rtx label1, label2;

  switch (type)
    {
    case CMP_SI:
    case CMP_DI:
      mode = type == CMP_SI ? SImode : DImode;
      invert = 0;
      reg = gen_int_relational (test_code, (rtx) 0, cmp0, cmp1, &invert);

      if (reg)
 {
   cmp0 = reg;
   cmp1 = (const_int_rtx[64]);
   test_code = NE;
 }
      else if (((enum rtx_code) (cmp1)->code) == CONST_INT && (((cmp1)->fld[0]).rtwint) != 0)


 cmp1 = force_reg (mode, cmp1);

      break;

    case CMP_SF:
    case CMP_DF:
      if (! ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
 reg = gen_rtx_REG (CCmode, 67);
      else
 reg = gen_reg_rtx (CCmode);

      get_float_compare_codes (test_code, &cmp_code, &test_code);
      emit_insn (gen_rtx_fmt_ee (SET, (VOIDmode), (reg), (gen_rtx (cmp_code, CCmode, cmp0, cmp1))));


      mode = CCmode;
      cmp0 = reg;
      cmp1 = (const_int_rtx[64]);
      invert = 0;
      break;

    default:
      abort_with_insn (gen_rtx (test_code, VOIDmode, cmp0, cmp1), "bad test");
    }



  label1 = gen_rtx_fmt_u00 (LABEL_REF, (VOIDmode), (operands[0]));
  label2 = (global_rtl[GR_PC]);

  if (invert)
    {
      label2 = label1;
      label1 = (global_rtl[GR_PC]);
    }

  emit_jump_insn (gen_rtx_fmt_ee (SET, (VOIDmode), ((global_rtl[GR_PC])), (gen_rtx_fmt_eee (IF_THEN_ELSE, (VOIDmode), (gen_rtx (test_code, mode, cmp0, cmp1)), (label1), (label2)))));




}




void
gen_conditional_move (operands)
     rtx *operands;
{
  rtx op0 = branch_cmp[0];
  rtx op1 = branch_cmp[1];
  enum machine_mode mode = ((enum machine_mode) (branch_cmp[0])->mode);
  enum rtx_code cmp_code = ((enum rtx_code) (operands[1])->code);
  enum rtx_code move_code = NE;
  enum machine_mode op_mode = ((enum machine_mode) (operands[0])->mode);
  enum machine_mode cmp_mode;
  rtx cmp_reg;

  if ((mode_class[(int) (mode)]) != MODE_FLOAT)
    {
      switch (cmp_code)
 {
 case EQ:
   cmp_code = XOR;
   move_code = EQ;
   break;
 case NE:
   cmp_code = XOR;
   break;
 case LT:
   break;
 case GE:
   cmp_code = LT;
   move_code = EQ;
   break;
 case GT:
   cmp_code = LT;
   op0 = force_reg (mode, branch_cmp[1]);
   op1 = branch_cmp[0];
   break;
 case LE:
   cmp_code = LT;
   op0 = force_reg (mode, branch_cmp[1]);
   op1 = branch_cmp[0];
   move_code = EQ;
   break;
 case LTU:
   break;
 case GEU:
   cmp_code = LTU;
   move_code = EQ;
   break;
 case GTU:
   cmp_code = LTU;
   op0 = force_reg (mode, branch_cmp[1]);
   op1 = branch_cmp[0];
   break;
 case LEU:
   cmp_code = LTU;
   op0 = force_reg (mode, branch_cmp[1]);
   op1 = branch_cmp[0];
   move_code = EQ;
   break;
 default:
   fancy_abort ("../../../kgccfe/gnu/mips.c", 3495, __FUNCTION__);
 }
    }
  else
    get_float_compare_codes (cmp_code, &cmp_code, &move_code);

  if (mode == SImode || mode == DImode)
    cmp_mode = mode;
  else if (mode == SFmode || mode == DFmode)
    cmp_mode = CCmode;
  else
    fancy_abort ("../../../kgccfe/gnu/mips.c", 3506, __FUNCTION__);

  cmp_reg = gen_reg_rtx (cmp_mode);
  emit_insn (gen_rtx_fmt_ee (SET, (cmp_mode), (cmp_reg), (gen_rtx (cmp_code, cmp_mode, op0, op1))));


  emit_insn (gen_rtx_fmt_ee (SET, (op_mode), (operands[0]), (gen_rtx_fmt_eee (IF_THEN_ELSE, (op_mode), (gen_rtx (move_code, VOIDmode, cmp_reg, (const_tiny_rtx[0][(int) (SImode)]))), (operands[2]), (operands[3])))));





}




void
mips_gen_conditional_trap (operands)
     rtx operands[];
{
  rtx op0, op1;
  enum rtx_code cmp_code = ((enum rtx_code) (operands[0])->code);
  enum machine_mode mode = ((enum machine_mode) (branch_cmp[0])->mode);




  switch (cmp_code)
    {
    case GT: cmp_code = LT; break;
    case LE: cmp_code = GE; break;
    case GTU: cmp_code = LTU; break;
    case LEU: cmp_code = GEU; break;
    default: break;
    }
  if (cmp_code == ((enum rtx_code) (operands[0])->code))
    {
      op0 = force_reg (mode, branch_cmp[0]);
      op1 = branch_cmp[1];
    }
  else
    {
      op0 = force_reg (mode, branch_cmp[1]);
      op1 = branch_cmp[0];
    }
  if (((enum rtx_code) (op1)->code) == CONST_INT && ! ((unsigned long long) ((((op1)->fld[0]).rtwint) + 0x8000) < 0x10000))
    op1 = force_reg (mode, op1);

  emit_insn (gen_rtx_fmt_ee (TRAP_IF, (VOIDmode), (gen_rtx (cmp_code, ((enum machine_mode) (operands[0])->mode), op0, op1)), (operands[1])));


}




int
fcc_register_operand (op, mode)
     rtx op;
     enum machine_mode mode;
{
  return ((mode == VOIDmode || mode == ((enum machine_mode) (op)->mode))
   && (reload_in_progress || reload_completed)
   && (((enum rtx_code) (op)->code) == REG || ((enum rtx_code) (op)->code) == SUBREG)
   && ((unsigned int) ((int) (true_regnum (op)) - 67) < (74 - 67 + 1)));
}
# 3585 "../../../kgccfe/gnu/mips.c"
void
mips_emit_fcc_reload (dest, src, scratch)
     rtx dest, src, scratch;
{
  rtx fp1, fp2;


  if (((enum rtx_code) (src)->code) == MEM)
    src = adjust_address_1 (src, SFmode, 0, 1, 1);
  else if (((enum rtx_code) (src)->code) == REG || ((enum rtx_code) (src)->code) == SUBREG)
    src = gen_rtx_REG (SFmode, true_regnum (src));

  fp1 = gen_rtx_REG (SFmode, (((scratch)->fld[0]).rtuint));
  fp2 = gen_rtx_REG (SFmode, (((scratch)->fld[0]).rtuint) + ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2));

  emit_move_insn (copy_rtx (fp1), src);
  emit_move_insn (copy_rtx (fp2), (const_tiny_rtx[0][(int) (SFmode)]));
  emit_insn (gen_slt_sf (dest, fp2, fp1));
}





void
mips_set_return_address (address, scratch)
     rtx address, scratch;
{
  long long gp_offset;

  compute_frame_size (get_frame_size ());
  if (((cfun->machine->frame.mask >> 31) & 1) == 0)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 3617, __FUNCTION__);
  gp_offset = cfun->machine->frame.gp_sp_offset;


  if (gp_offset < 32768)
    scratch = plus_constant_wide (((global_rtl[GR_STACK_POINTER])), (long long) (gp_offset));
  else
    {
      emit_move_insn (scratch, gen_rtx_CONST_INT (VOIDmode, (long long) (gp_offset)));
      if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
 emit_insn (gen_adddi3 (scratch, scratch, (global_rtl[GR_STACK_POINTER])));
      else
 emit_insn (gen_addsi3 (scratch, scratch, (global_rtl[GR_STACK_POINTER])));
    }

  emit_move_insn (gen_rtx_MEM (((enum machine_mode) (address)->mode), scratch), address);
}
# 3661 "../../../kgccfe/gnu/mips.c"
static void
block_move_loop (dest_reg, src_reg, bytes, align, orig_dest, orig_src)
     rtx dest_reg;
     rtx src_reg;
     unsigned int bytes;
     int align;
     rtx orig_dest;
     rtx orig_src;
{
  rtx dest_mem = replace_equiv_address (orig_dest, dest_reg);
  rtx src_mem = replace_equiv_address (orig_src, src_reg);
  rtx align_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (align));
  rtx label;
  rtx final_src;
  rtx bytes_rtx;
  int leftover;

  if (bytes < (unsigned)2 * (4 * ((target_flags & 0x00002000) ? 8 : 4)))
    fancy_abort ("../../../kgccfe/gnu/mips.c", 3679, __FUNCTION__);

  leftover = bytes % (4 * ((target_flags & 0x00002000) ? 8 : 4));
  bytes -= leftover;

  label = gen_label_rtx ();
  final_src = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
  bytes_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (bytes));

  if (bytes > 0x7fff)
    {
      if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
 {
   emit_insn (gen_movdi (final_src, bytes_rtx));
   emit_insn (gen_adddi3 (final_src, final_src, src_reg));
 }
      else
 {
   emit_insn (gen_movsi (final_src, bytes_rtx));
   emit_insn (gen_addsi3 (final_src, final_src, src_reg));
 }
    }
  else
    {
      if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
 emit_insn (gen_adddi3 (final_src, src_reg, bytes_rtx));
      else
 emit_insn (gen_addsi3 (final_src, src_reg, bytes_rtx));
    }

  emit_label (label);

  bytes_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) ((4 * ((target_flags & 0x00002000) ? 8 : 4))));
  emit_insn (gen_movstrsi_internal (dest_mem, src_mem, bytes_rtx, align_rtx));

  if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
    {
      emit_insn (gen_adddi3 (src_reg, src_reg, bytes_rtx));
      emit_insn (gen_adddi3 (dest_reg, dest_reg, bytes_rtx));
      emit_insn (gen_cmpdi (src_reg, final_src));
    }
  else
    {
      emit_insn (gen_addsi3 (src_reg, src_reg, bytes_rtx));
      emit_insn (gen_addsi3 (dest_reg, dest_reg, bytes_rtx));
      emit_insn (gen_cmpsi (src_reg, final_src));
    }

  emit_jump_insn (gen_bne (label));

  if (leftover)
    emit_insn (gen_movstrsi_internal (dest_mem, src_mem, gen_rtx_CONST_INT (VOIDmode, (long long) (leftover)),
          align_rtx));
}



static void
block_move_call (dest_reg, src_reg, bytes_rtx)
     rtx dest_reg;
     rtx src_reg;
     rtx bytes_rtx;
{


  if (((enum machine_mode) (bytes_rtx)->mode) != VOIDmode
      && ((enum machine_mode) (bytes_rtx)->mode) != (unsigned) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
    bytes_rtx = convert_to_mode ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), bytes_rtx, 1);


  emit_library_call (gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ("memcpy")), 0,
       VOIDmode, 3, dest_reg, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), src_reg, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
       convert_to_mode (((sizetype_tab[(int) SIZETYPE])->type.mode), bytes_rtx,
          ((sizetype_tab[(int) SIZETYPE])->common.unsigned_flag)),
       ((sizetype_tab[(int) SIZETYPE])->type.mode));







}
# 3770 "../../../kgccfe/gnu/mips.c"
void
expand_block_move (operands)
     rtx operands[];
{
  rtx bytes_rtx = operands[2];
  rtx align_rtx = operands[3];
  int constp = ((enum rtx_code) (bytes_rtx)->code) == CONST_INT;
  unsigned long long bytes = constp ? (((bytes_rtx)->fld[0]).rtwint) : 0;
  unsigned int align = (((align_rtx)->fld[0]).rtwint);
  rtx orig_src = operands[1];
  rtx orig_dest = operands[0];
  rtx src_reg;
  rtx dest_reg;

  if (constp && bytes == 0)
    return;

  if (align > (unsigned) ((target_flags & 0x00002000) ? 8 : 4))
    align = ((target_flags & 0x00002000) ? 8 : 4);


  dest_reg = copy_addr_to_reg ((((orig_dest)->fld[0]).rtx));
  src_reg = copy_addr_to_reg ((((orig_src)->fld[0]).rtx));

  if ((target_flags & 0x00000080))
    block_move_call (dest_reg, src_reg, bytes_rtx);

  else if (constp && bytes <= (unsigned)2 * (4 * ((target_flags & 0x00002000) ? 8 : 4))
    && align == (unsigned) ((target_flags & 0x00002000) ? 8 : 4))
    move_by_pieces (orig_dest, orig_src, bytes, align * (8 * ((target_flags & 0x00002000) ? 8 : 4)), 0);

  else if (constp && bytes <= (unsigned)2 * (4 * ((target_flags & 0x00002000) ? 8 : 4)))
    emit_insn (gen_movstrsi_internal (replace_equiv_address (orig_dest,
            dest_reg),
          replace_equiv_address (orig_src,
            src_reg),
          bytes_rtx, align_rtx));

  else if (constp && align >= (unsigned) ((target_flags & 0x00002000) ? 8 : 4) && optimize)
    block_move_loop (dest_reg, src_reg, bytes, align, orig_dest, orig_src);

  else if (constp && optimize)
    {




      rtx temp = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
      rtx aligned_label = gen_label_rtx ();
      rtx join_label = gen_label_rtx ();
      int leftover = bytes % (4 * ((target_flags & 0x00002000) ? 8 : 4));

      bytes -= leftover;

      if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
 {
   emit_insn (gen_iordi3 (temp, src_reg, dest_reg));
   emit_insn (gen_anddi3 (temp, temp, gen_rtx_CONST_INT (VOIDmode, (long long) (((target_flags & 0x00002000) ? 8 : 4) - 1))));
   emit_insn (gen_cmpdi (temp, (const_int_rtx[64])));
 }
      else
 {
   emit_insn (gen_iorsi3 (temp, src_reg, dest_reg));
   emit_insn (gen_andsi3 (temp, temp, gen_rtx_CONST_INT (VOIDmode, (long long) (((target_flags & 0x00002000) ? 8 : 4) - 1))));
   emit_insn (gen_cmpsi (temp, (const_int_rtx[64])));
 }

      emit_jump_insn (gen_beq (aligned_label));


      block_move_loop (dest_reg, src_reg, bytes, 1, orig_dest, orig_src);
      emit_jump_insn (gen_jump (join_label));
      emit_barrier ();


      emit_label (aligned_label);
      block_move_loop (dest_reg, src_reg, bytes, ((target_flags & 0x00002000) ? 8 : 4), orig_dest,
         orig_src);
      emit_label (join_label);


      if (leftover)
 emit_insn (gen_movstrsi_internal (replace_equiv_address (orig_dest,
         dest_reg),
       replace_equiv_address (orig_src,
         src_reg),
       gen_rtx_CONST_INT (VOIDmode, (long long) (leftover)),
       gen_rtx_CONST_INT (VOIDmode, (long long) (align))));
    }

  else
    block_move_call (dest_reg, src_reg, bytes_rtx);
}
# 3880 "../../../kgccfe/gnu/mips.c"
const char *
output_block_move (insn, operands, num_regs, move_type)
     rtx insn;
     rtx operands[];
     int num_regs;
     enum block_move_type move_type;
{
  rtx dest_reg = (((operands[0])->fld[0]).rtx);
  rtx src_reg = (((operands[1])->fld[0]).rtx);
  long long bytes = (((operands[2])->fld[0]).rtwint);
  int align = (((operands[3])->fld[0]).rtwint);
  int num = 0;
  int offset = 0;
  int use_lwl_lwr = 0;
  int last_operand = num_regs + 4;
  int safe_regs = 4;
  int i;
  rtx xoperands[10];

  struct {
    const char *load;
    const char *load_nop;
    const char *store;
    const char *final;
    const char *last_store;
    int offset;
    enum machine_mode mode;
  } load_store[4];




  for (i = 4; i < last_operand && safe_regs < (int) (sizeof (xoperands) / sizeof ((xoperands)[0])); i++)
    if (! reg_mentioned_p (operands[i], operands[0])
 && ! reg_mentioned_p (operands[i], operands[1]))
      xoperands[safe_regs++] = operands[i];

  if (safe_regs < last_operand)
    {
      xoperands[0] = operands[0];
      xoperands[1] = operands[1];
      xoperands[2] = operands[2];
      xoperands[3] = operands[3];
      return output_block_move (insn, xoperands, safe_regs - 4, move_type);
    }
# 3933 "../../../kgccfe/gnu/mips.c"
  if (num_regs > 2 && (bytes > 2 * align || move_type != BLOCK_MOVE_NORMAL
         || mips_abi == 5
         || mips_abi == 1
         || mips_abi == 2))
    {
      if ((((enum rtx_code) (src_reg)->code) == LABEL_REF || ((enum rtx_code) (src_reg)->code) == SYMBOL_REF || ((enum rtx_code) (src_reg)->code) == CONST_INT || ((enum rtx_code) (src_reg)->code) == CONST_DOUBLE || ((enum rtx_code) (src_reg)->code) == CONST || ((enum rtx_code) (src_reg)->code) == HIGH || ((enum rtx_code) (src_reg)->code) == CONST_VECTOR || ((enum rtx_code) (src_reg)->code) == CONSTANT_P_RTX))
 {
   if ((target_flags & 0x00000040))
     mips_count_memory_refs (operands[1], 1);

   src_reg = operands[3 + num_regs--];
   if (move_type != BLOCK_MOVE_LAST)
     {
       xoperands[1] = operands[1];
       xoperands[0] = src_reg;
       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  output_asm_insn ("dla\t%0,%1", xoperands);
       else
  output_asm_insn ("la\t%0,%1", xoperands);
     }
 }

      if ((((enum rtx_code) (dest_reg)->code) == LABEL_REF || ((enum rtx_code) (dest_reg)->code) == SYMBOL_REF || ((enum rtx_code) (dest_reg)->code) == CONST_INT || ((enum rtx_code) (dest_reg)->code) == CONST_DOUBLE || ((enum rtx_code) (dest_reg)->code) == CONST || ((enum rtx_code) (dest_reg)->code) == HIGH || ((enum rtx_code) (dest_reg)->code) == CONST_VECTOR || ((enum rtx_code) (dest_reg)->code) == CONSTANT_P_RTX))
 {
   if ((target_flags & 0x00000040))
     mips_count_memory_refs (operands[0], 1);

   dest_reg = operands[3 + num_regs--];
   if (move_type != BLOCK_MOVE_LAST)
     {
       xoperands[1] = operands[0];
       xoperands[0] = dest_reg;
       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  output_asm_insn ("dla\t%0,%1", xoperands);
       else
  output_asm_insn ("la\t%0,%1", xoperands);
     }
 }
    }







  if (((enum rtx_code) (src_reg)->code) == LO_SUM)
    {
      src_reg = operands[3 + num_regs--];
      if (move_type != BLOCK_MOVE_LAST)
 {
   xoperands[2] = ((((((operands[1])->fld[0]).rtx))->fld[1]).rtx);
   xoperands[1] = ((((((operands[1])->fld[0]).rtx))->fld[0]).rtx);
   xoperands[0] = src_reg;
   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     output_asm_insn ("daddiu\t%0,%1,%%lo(%2)", xoperands);
   else
     output_asm_insn ("addiu\t%0,%1,%%lo(%2)", xoperands);
 }
    }

  if (((enum rtx_code) (dest_reg)->code) == LO_SUM)
    {
      dest_reg = operands[3 + num_regs--];
      if (move_type != BLOCK_MOVE_LAST)
 {
   xoperands[2] = ((((((operands[0])->fld[0]).rtx))->fld[1]).rtx);
   xoperands[1] = ((((((operands[0])->fld[0]).rtx))->fld[0]).rtx);
   xoperands[0] = dest_reg;
   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     output_asm_insn ("daddiu\t%0,%1,%%lo(%2)", xoperands);
   else
     output_asm_insn ("addiu\t%0,%1,%%lo(%2)", xoperands);
 }
    }

  if (num_regs > (int) (sizeof (load_store) / sizeof ((load_store)[0])))
    num_regs = (sizeof (load_store) / sizeof ((load_store)[0]));

  else if (num_regs < 1)
    abort_with_insn (insn,
       "cannot do block move, not enough scratch registers");

  while (bytes > 0)
    {
      load_store[num].offset = offset;

      if ((target_flags & 0x00002000) && bytes >= 8 && align >= 8)
 {
   load_store[num].load = "ld\t%0,%1";
   load_store[num].load_nop = "ld\t%0,%1%#";
   load_store[num].store = "sd\t%0,%1";
   load_store[num].last_store = "sd\t%0,%1";
   load_store[num].final = 0;
   load_store[num].mode = DImode;
   offset += 8;
   bytes -= 8;
 }


      else if ((target_flags & 0x00002000) && bytes >= 8
        && ! (mips_arch == PROCESSOR_SR71000)
        && ! (target_flags & 0x00100000))
 {
   if (((target_flags & 0x00010000) != 0))
     {
       load_store[num].load = "ldl\t%0,%1\n\tldr\t%0,%2";
       load_store[num].load_nop = "ldl\t%0,%1\n\tldr\t%0,%2%#";
       load_store[num].store = "sdl\t%0,%1\n\tsdr\t%0,%2";
       load_store[num].last_store = "sdr\t%0,%2";
       load_store[num].final = "sdl\t%0,%1";
     }
   else
     {
       load_store[num].load = "ldl\t%0,%2\n\tldr\t%0,%1";
       load_store[num].load_nop = "ldl\t%0,%2\n\tldr\t%0,%1%#";
       load_store[num].store = "sdl\t%0,%2\n\tsdr\t%0,%1";
       load_store[num].last_store = "sdr\t%0,%1";
       load_store[num].final = "sdl\t%0,%2";
     }

   load_store[num].mode = DImode;
   offset += 8;
   bytes -= 8;
   use_lwl_lwr = 1;
 }

      else if (bytes >= 4 && align >= 4)
 {
   load_store[num].load = "lw\t%0,%1";
   load_store[num].load_nop = "lw\t%0,%1%#";
   load_store[num].store = "sw\t%0,%1";
   load_store[num].last_store = "sw\t%0,%1";
   load_store[num].final = 0;
   load_store[num].mode = SImode;
   offset += 4;
   bytes -= 4;
 }

      else if (bytes >= 4
        && ! (mips_arch == PROCESSOR_SR71000)
        && ! (target_flags & 0x00100000))
 {
   if (((target_flags & 0x00010000) != 0))
     {
       load_store[num].load = "lwl\t%0,%1\n\tlwr\t%0,%2";
       load_store[num].load_nop = "lwl\t%0,%1\n\tlwr\t%0,%2%#";
       load_store[num].store = "swl\t%0,%1\n\tswr\t%0,%2";
       load_store[num].last_store = "swr\t%0,%2";
       load_store[num].final = "swl\t%0,%1";
     }
   else
     {
       load_store[num].load = "lwl\t%0,%2\n\tlwr\t%0,%1";
       load_store[num].load_nop = "lwl\t%0,%2\n\tlwr\t%0,%1%#";
       load_store[num].store = "swl\t%0,%2\n\tswr\t%0,%1";
       load_store[num].last_store = "swr\t%0,%1";
       load_store[num].final = "swl\t%0,%2";
     }

   load_store[num].mode = SImode;
   offset += 4;
   bytes -= 4;
   use_lwl_lwr = 1;
 }

      else if (bytes >= 2 && align >= 2)
 {
   load_store[num].load = "lh\t%0,%1";
   load_store[num].load_nop = "lh\t%0,%1%#";
   load_store[num].store = "sh\t%0,%1";
   load_store[num].last_store = "sh\t%0,%1";
   load_store[num].final = 0;
   load_store[num].mode = HImode;
   offset += 2;
   bytes -= 2;
 }
      else
 {
   load_store[num].load = "lb\t%0,%1";
   load_store[num].load_nop = "lb\t%0,%1%#";
   load_store[num].store = "sb\t%0,%1";
   load_store[num].last_store = "sb\t%0,%1";
   load_store[num].final = 0;
   load_store[num].mode = QImode;
   offset++;
   bytes--;
 }

      if ((target_flags & 0x00000040) && move_type != BLOCK_MOVE_LAST)
 {
   dslots_load_total++;
   dslots_load_filled++;

   if ((((enum rtx_code) (src_reg)->code) == LABEL_REF || ((enum rtx_code) (src_reg)->code) == SYMBOL_REF || ((enum rtx_code) (src_reg)->code) == CONST_INT || ((enum rtx_code) (src_reg)->code) == CONST_DOUBLE || ((enum rtx_code) (src_reg)->code) == CONST || ((enum rtx_code) (src_reg)->code) == HIGH || ((enum rtx_code) (src_reg)->code) == CONST_VECTOR || ((enum rtx_code) (src_reg)->code) == CONSTANT_P_RTX))
     mips_count_memory_refs (src_reg, 1);

   if ((((enum rtx_code) (dest_reg)->code) == LABEL_REF || ((enum rtx_code) (dest_reg)->code) == SYMBOL_REF || ((enum rtx_code) (dest_reg)->code) == CONST_INT || ((enum rtx_code) (dest_reg)->code) == CONST_DOUBLE || ((enum rtx_code) (dest_reg)->code) == CONST || ((enum rtx_code) (dest_reg)->code) == HIGH || ((enum rtx_code) (dest_reg)->code) == CONST_VECTOR || ((enum rtx_code) (dest_reg)->code) == CONSTANT_P_RTX))
     mips_count_memory_refs (dest_reg, 1);
 }




      if (++num == num_regs || bytes == 0)
 {

   if (num == 1)
     {
       load_store[0].load = load_store[0].load_nop;
       if ((target_flags & 0x00000040) && move_type != BLOCK_MOVE_LAST)
  dslots_load_filled--;
     }

   if (move_type != BLOCK_MOVE_LAST)
     {
       for (i = 0; i < num; i++)
  {
    int offset;

    if (!operands[i + 4])
      fancy_abort ("../../../kgccfe/gnu/mips.c", 4154, __FUNCTION__);

    if (((enum machine_mode) (operands[i + 4])->mode) != load_store[i].mode)
      operands[i + 4] = gen_rtx_REG (load_store[i].mode,
         (((operands[i + 4])->fld[0]).rtuint));

    offset = load_store[i].offset;
    xoperands[0] = operands[i + 4];
    xoperands[1] = gen_rtx_MEM (load_store[i].mode,
           plus_constant_wide ((src_reg), (long long) (offset)));

    if (use_lwl_lwr)
      {
        int extra_offset
   = (mode_size[(int) (load_store[i].mode)]) - 1;

        xoperands[2] = gen_rtx_MEM (load_store[i].mode,
        plus_constant_wide ((src_reg), (long long) (extra_offset + offset)));


      }

    output_asm_insn (load_store[i].load, xoperands);
  }
     }

   for (i = 0; i < num; i++)
     {
       int last_p = (i == num-1 && bytes == 0);
       int offset = load_store[i].offset;

       xoperands[0] = operands[i + 4];
       xoperands[1] = gen_rtx_MEM (load_store[i].mode,
       plus_constant_wide ((dest_reg), (long long) (offset)));


       if (use_lwl_lwr)
  {
    int extra_offset = (mode_size[(int) (load_store[i].mode)]) - 1;
    xoperands[2] = gen_rtx_MEM (load_store[i].mode,
           plus_constant_wide ((dest_reg), (long long) (extra_offset + offset)));


  }

       if (move_type == BLOCK_MOVE_NORMAL)
  output_asm_insn (load_store[i].store, xoperands);

       else if (move_type == BLOCK_MOVE_NOT_LAST)
  {
    if (!last_p)
      output_asm_insn (load_store[i].store, xoperands);

    else if (load_store[i].final != 0)
      output_asm_insn (load_store[i].final, xoperands);
  }

       else if (last_p)
  output_asm_insn (load_store[i].last_store, xoperands);
     }

   num = 0;
   use_lwl_lwr = 0;
 }
    }

  return "";
}





void
init_cumulative_args (cum, fntype, libname)
     CUMULATIVE_ARGS *cum;
     tree fntype;
     rtx libname __attribute__ ((__unused__));
{
  static CUMULATIVE_ARGS zero_cum;
  tree param, next_param;

  if ((target_flags & 0))
    {
      fprintf (stderr,
        "\ninit_cumulative_args, fntype = 0x%.8lx", (long)fntype);

      if (!fntype)
 fputc_unlocked ('\n', stderr);

      else
 {
   tree ret_type = ((fntype)->common.type);
   fprintf (stderr, ", fntype code = %s, ret code = %s\n",
     tree_code_name[(int)((enum tree_code) (fntype)->common.code)],
     tree_code_name[(int)((enum tree_code) (ret_type)->common.code)]);
 }
    }

  *cum = zero_cum;
  cum->prototype = (fntype && ((fntype)->type.values));






  for (param = fntype ? ((fntype)->type.values) : 0;
       param != 0; param = next_param)
    {
      next_param = ((param)->common.chain);
      if (next_param == 0 && ((param)->list.value) != global_trees[TI_VOID_TYPE])
 cum->gp_reg_found = 1;
    }
}

static void
mips_arg_info (cum, mode, type, named, info)
     const CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named;
     struct mips_arg_info *info;
{
  _Bool even_reg_p;
  unsigned int num_words, max_regs;

  info->struct_p = (type != 0
      && (((enum tree_code) (type)->common.code) == RECORD_TYPE
   || ((enum tree_code) (type)->common.code) == UNION_TYPE
   || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE));




  info->fpr_p = 0;
  if ((mode_class[(int) (mode)]) == MODE_FLOAT
      && (mode_size[(int) (mode)]) <= ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)))
    {
      switch (mips_abi)
 {
 case 0:
 case 4:
   info->fpr_p = (!cum->gp_reg_found && cum->arg_number < 2);
   break;

 case 3:
   info->fpr_p = 1;
   break;

 case 5:



   info->fpr_p = (named && !(mode == SFmode && info->struct_p));
   break;

 default:
   info->fpr_p = named;
   break;
 }
    }



  even_reg_p = 0;
  if (info->fpr_p)
    {




      even_reg_p = ((mode_size[(int) (mode)]) > ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4))
      || (mips_abi == 4 && mode == SFmode)
      || ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) > 1);
    }
  else if (!(target_flags & 0x00002000) || (mips_abi == 1 || mips_abi == 2 ? 128 : 64) == 128)
    {
      if ((mode_class[(int) (mode)]) == MODE_INT
   || (mode_class[(int) (mode)]) == MODE_FLOAT)
 even_reg_p = ((mode_size[(int) (mode)]) > ((target_flags & 0x00002000) ? 8 : 4));

      else if (type != (tree) ((void *)0) && ((type)->type.align) > (8 * ((target_flags & 0x00002000) ? 8 : 4)))
 even_reg_p = 1;
    }




  info->reg_offset = (mips_abi == 3 && info->fpr_p
        ? cum->num_fprs
        : cum->num_gprs);

  if (even_reg_p)
    info->reg_offset += info->reg_offset & 1;


  info->stack_offset = cum->stack_words;
  if (even_reg_p)
    info->stack_offset += info->stack_offset & 1;

  if (mode == BLKmode)
    info->num_bytes = int_size_in_bytes (type);
  else
    info->num_bytes = (mode_size[(int) (mode)]);

  num_words = (info->num_bytes + ((target_flags & 0x00002000) ? 8 : 4) - 1) / ((target_flags & 0x00002000) ? 8 : 4);
  max_regs = ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - info->reg_offset;


  info->reg_words = ((num_words) < (max_regs) ? (num_words) : (max_regs));
  info->stack_words = num_words - info->reg_words;
}




void
function_arg_advance (cum, mode, type, named)
     CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named;
{
  struct mips_arg_info info;

  mips_arg_info (cum, mode, type, named, &info);
# 4397 "../../../kgccfe/gnu/mips.c"
  if (info.struct_p
      && info.reg_words == 1
      && info.num_bytes < ((target_flags & 0x00002000) ? 8 : 4)
      && !(target_flags & 0x00002000)
      && mips_abi != 3
      && mips_abi != 5)
    {
      rtx amount = gen_rtx_CONST_INT (VOIDmode, (long long) ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - info.num_bytes * 8));
      rtx reg = gen_rtx_REG (word_mode, (0 + 4) + info.reg_offset);

      if ((target_flags & 0x00002000))
 cum->adjust[cum->num_adjusts++] = (((gen_ashldi3 (reg, reg, amount))->fld[5]).rtx);
      else
 cum->adjust[cum->num_adjusts++] = (((gen_ashlsi3 (reg, reg, amount))->fld[5]).rtx);
    }

  if (!info.fpr_p)
    cum->gp_reg_found = 1;




  if (cum->arg_number < 2 && info.fpr_p)
    cum->fp_code += (mode == SFmode ? 1 : 2) << ((cum->arg_number - 1) * 2);

  if (mips_abi != 3 || !info.fpr_p)
    cum->num_gprs = info.reg_offset + info.reg_words;
  else if (info.reg_words > 0)
    cum->num_fprs += ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2);

  if (info.stack_words > 0)
    cum->stack_words = info.stack_offset + info.stack_words;

  cum->arg_number++;
}




struct rtx_def *
function_arg (cum, mode, type, named)
     const CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named;
{
  struct mips_arg_info info;







  if (mode == VOIDmode)
    {
      if (cum->num_adjusts > 0)
 return gen_rtx_fmt_E (PARALLEL, ((enum machine_mode) cum->fp_code), (gen_rtvec_v (cum->num_adjusts, (rtx *) cum->adjust)));



      else if ((target_flags & 0x00100000) && cum->fp_code != 0)
 return gen_rtx_REG ((enum machine_mode) cum->fp_code, 0);

      else
 return 0;
    }

  mips_arg_info (cum, mode, type, named, &info);


  if (info.reg_offset == ((mips_abi == 0 || mips_abi == 4) ? 4 : 8))
    return 0;

  if (type != 0
      && ((enum tree_code) (type)->common.code) == RECORD_TYPE
      && (mips_abi == 1 || mips_abi == 2)
      && ((type)->type.size_unit)
      && host_integerp (((type)->type.size_unit), 1)
      && named
      && mode != DFmode)
    {



      tree field;


      for (field = ((type)->type.values); field; field = ((field)->common.chain))
 if (((enum tree_code) (field)->common.code) == FIELD_DECL
     && ((enum tree_code) (((field)->common.type))->common.code) == REAL_TYPE
     && ((((field)->common.type))->type.precision) == (8 * ((target_flags & 0x00002000) ? 8 : 4))
     && host_integerp (bit_position (field), 0)
     && int_bit_position (field) % (8 * ((target_flags & 0x00002000) ? 8 : 4)) == 0)
   break;

      if (field != 0)
 {



   unsigned int i;
   long long bitpos;
   rtx ret;



   ret = gen_rtx_fmt_E (PARALLEL, (mode), (rtvec_alloc (info.reg_words)));

   bitpos = 0;
   field = ((type)->type.values);
   for (i = 0; i < info.reg_words; i++)
     {
       rtx reg;

       for (; field; field = ((field)->common.chain))
  if (((enum tree_code) (field)->common.code) == FIELD_DECL
      && int_bit_position (field) >= bitpos)
    break;

       if (field
    && int_bit_position (field) == bitpos
    && ((enum tree_code) (((field)->common.type))->common.code) == REAL_TYPE
    && !(target_flags & 0x00000100)
    && ((((field)->common.type))->type.precision) == (8 * ((target_flags & 0x00002000) ? 8 : 4)))
  reg = gen_rtx_REG (DFmode, (32 + 12) + info.reg_offset + i);
       else
  reg = gen_rtx_REG (DImode, (0 + 4) + info.reg_offset + i);

       (((((ret)->fld[0]).rtvec))->elem[i])
  = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (reg), (gen_rtx_CONST_INT (VOIDmode, (long long) (bitpos / 8))));


       bitpos += (8 * ((target_flags & 0x00002000) ? 8 : 4));
     }
   return ret;
 }
    }

  if (mips_abi == 5 && info.fpr_p && !cum->prototype)
    {


      return gen_rtx_fmt_E (PARALLEL, (mode), (gen_rtvec (2, gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (mode, (0 + 4) + info.reg_offset)), ((const_int_rtx[64]))), gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (mode, (32 + 12) + info.reg_offset)), ((const_int_rtx[64]))))));
# 4553 "../../../kgccfe/gnu/mips.c"
    }

  if (info.fpr_p)
    return gen_rtx_REG (mode, (32 + 12) + info.reg_offset);
  else
    return gen_rtx_REG (mode, (0 + 4) + info.reg_offset);
}

int
function_arg_partial_nregs (cum, mode, type, named)
     const CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named;
{
  struct mips_arg_info info;

  mips_arg_info (cum, mode, type, named, &info);
  return info.stack_words > 0 ? info.reg_words : 0;
}

int
mips_setup_incoming_varargs (cum, mode, type, no_rtl)
     const CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int no_rtl;
{
  CUMULATIVE_ARGS local_cum;
  int gp_saved, fp_saved;

  if (mips_abi == 0 || mips_abi == 4)
    return 0;





  local_cum = *cum;
  function_arg_advance (&local_cum, mode, type, 1);


  gp_saved = ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - local_cum.num_gprs;
  fp_saved = ((mips_abi == 3 && ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) >= (((global_trees[TI_DOUBLE_TYPE])->type.precision) / 8))
       ? ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - local_cum.num_fprs
       : 0);

  if (!no_rtl)
    {
      if (gp_saved > 0)
 {
   rtx ptr, mem;

   ptr = (global_rtl[GR_VIRTUAL_INCOMING_ARGS]);
   if (mips_abi == 3)
     ptr = plus_constant_wide ((ptr), (long long) (-gp_saved * ((target_flags & 0x00002000) ? 8 : 4)));
   mem = gen_rtx_MEM (BLKmode, ptr);





   if (mips_abi != 3 && ((target_flags & 0x00010000) != 0))
     do { if (1) { (((mem))->in_struct) = 1; (((mem))->frame_related) = 0; } else { (((mem))->in_struct) = 0; (((mem))->frame_related) = 1; } } while (0);

   move_block_from_reg (local_cum.num_gprs + (0 + 4), mem,
          gp_saved, gp_saved * ((target_flags & 0x00002000) ? 8 : 4));
 }
      if (fp_saved > 0)
 {


   enum machine_mode mode;
   int off, i;




   off = -gp_saved * ((target_flags & 0x00002000) ? 8 : 4);
   off &= ~(((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) - 1);
   off -= fp_saved * ((target_flags & 0x00000200) ? 8 : 4);

   mode = (target_flags & 0x00020000) ? SFmode : DFmode;

   for (i = local_cum.num_fprs; i < ((mips_abi == 0 || mips_abi == 4) ? 4 : 8); i += ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2))
     {
       rtx ptr = plus_constant_wide (((global_rtl[GR_VIRTUAL_INCOMING_ARGS])), (long long) (off));
       emit_move_insn (gen_rtx_MEM (mode, ptr),
         gen_rtx_REG (mode, (32 + 12) + i));
       off += ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4));
     }
 }
    }
  return (gp_saved * ((target_flags & 0x00002000) ? 8 : 4)) + (fp_saved * ((target_flags & 0x00000200) ? 8 : 4));
}
# 4670 "../../../kgccfe/gnu/mips.c"
tree
mips_build_va_list ()
{
  if ((mips_abi == 3 && ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) >= (((global_trees[TI_DOUBLE_TYPE])->type.precision) / 8)))
    {
      tree f_ovfl, f_gtop, f_ftop, f_goff, f_foff, record;

      record = make_node (RECORD_TYPE);

      f_ovfl = build_decl (FIELD_DECL, (__builtin_constant_p ("__overflow_argptr") ? get_identifier_with_length (("__overflow_argptr"), (unsigned) strlen ("__overflow_argptr")) : (get_identifier) ("__overflow_argptr")),
     global_trees[TI_PTR_TYPE]);
      f_gtop = build_decl (FIELD_DECL, (__builtin_constant_p ("__gpr_top") ? get_identifier_with_length (("__gpr_top"), (unsigned) strlen ("__gpr_top")) : (get_identifier) ("__gpr_top")),
     global_trees[TI_PTR_TYPE]);
      f_ftop = build_decl (FIELD_DECL, (__builtin_constant_p ("__fpr_top") ? get_identifier_with_length (("__fpr_top"), (unsigned) strlen ("__fpr_top")) : (get_identifier) ("__fpr_top")),
     global_trees[TI_PTR_TYPE]);
      f_goff = build_decl (FIELD_DECL, (__builtin_constant_p ("__gpr_offset") ? get_identifier_with_length (("__gpr_offset"), (unsigned) strlen ("__gpr_offset")) : (get_identifier) ("__gpr_offset")),
     integer_types[itk_unsigned_char]);
      f_foff = build_decl (FIELD_DECL, (__builtin_constant_p ("__fpr_offset") ? get_identifier_with_length (("__fpr_offset"), (unsigned) strlen ("__fpr_offset")) : (get_identifier) ("__fpr_offset")),
     integer_types[itk_unsigned_char]);


      ((f_ovfl)->decl.context) = record;
      ((f_gtop)->decl.context) = record;
      ((f_ftop)->decl.context) = record;
      ((f_goff)->decl.context) = record;
      ((f_foff)->decl.context) = record;

      ((record)->type.values) = f_ovfl;
      ((f_ovfl)->common.chain) = f_gtop;
      ((f_gtop)->common.chain) = f_ftop;
      ((f_ftop)->common.chain) = f_goff;
      ((f_goff)->common.chain) = f_foff;

      layout_type (record);
      return record;
    }
  else
    return global_trees[TI_PTR_TYPE];
}



void
mips_va_start (valist, nextarg)
     tree valist;
     rtx nextarg;
{
  const CUMULATIVE_ARGS *cum = &(cfun->args_info);





  if (cfun && cfun->emit->regno_pointer_align)
    while ((((cfun->pretend_args_size) * 8)
     & ((cfun->emit->regno_pointer_align[0]) - 1)) != 0)
      (cfun->emit->regno_pointer_align[0]) /= 2;

  if (mips_abi == 3)
    {
      int gpr_save_area_size;

      gpr_save_area_size
 = (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - cum->num_gprs) * ((target_flags & 0x00002000) ? 8 : 4);

      if ((mips_abi == 3 && ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) >= (((global_trees[TI_DOUBLE_TYPE])->type.precision) / 8)))
 {
   tree f_ovfl, f_gtop, f_ftop, f_goff, f_foff;
   tree ovfl, gtop, ftop, goff, foff;
   tree t;
   int fpr_offset;
   int fpr_save_area_size;

   f_ovfl = ((global_trees[TI_VA_LIST_TYPE])->type.values);
   f_gtop = ((f_ovfl)->common.chain);
   f_ftop = ((f_gtop)->common.chain);
   f_goff = ((f_ftop)->common.chain);
   f_foff = ((f_goff)->common.chain);

   ovfl = build (COMPONENT_REF, ((f_ovfl)->common.type), valist, f_ovfl);
   gtop = build (COMPONENT_REF, ((f_gtop)->common.type), valist, f_gtop);
   ftop = build (COMPONENT_REF, ((f_ftop)->common.type), valist, f_ftop);
   goff = build (COMPONENT_REF, ((f_goff)->common.type), valist, f_goff);
   foff = build (COMPONENT_REF, ((f_foff)->common.type), valist, f_foff);




   t = make_tree (((ovfl)->common.type), (global_rtl[GR_VIRTUAL_INCOMING_ARGS]));
   if (cum->stack_words > 0)
     t = build (PLUS_EXPR, ((ovfl)->common.type), t,
         build_int_2_wide ((unsigned long long) (cum->stack_words * ((target_flags & 0x00002000) ? 8 : 4)), (long long) (0)));
   t = build (MODIFY_EXPR, ((ovfl)->common.type), ovfl, t);
    expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);


   t = make_tree (((gtop)->common.type), (global_rtl[GR_VIRTUAL_INCOMING_ARGS]));
   t = build (MODIFY_EXPR, ((gtop)->common.type), gtop, t);
    expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);




   t = make_tree (((ftop)->common.type), (global_rtl[GR_VIRTUAL_INCOMING_ARGS]));
   fpr_offset = gpr_save_area_size + ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) - 1;
   fpr_offset &= ~(((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) - 1);
   if (fpr_offset)
     t = build (PLUS_EXPR, ((ftop)->common.type), t,
         build_int_2_wide ((unsigned long long) (-fpr_offset), (long long) (-1)));
   t = build (MODIFY_EXPR, ((ftop)->common.type), ftop, t);
   expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);



   t = build (MODIFY_EXPR, ((goff)->common.type), goff,
       build_int_2_wide ((unsigned long long) (gpr_save_area_size), (long long) (0)));
   expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);



   fpr_save_area_size
     = (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - cum->num_fprs) * ((target_flags & 0x00000200) ? 8 : 4);
   t = build (MODIFY_EXPR, ((foff)->common.type), foff,
       build_int_2_wide ((unsigned long long) (fpr_save_area_size), (long long) (0)));
   expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);
 }
      else
 {


   nextarg = plus_constant_wide ((nextarg), (long long) (-gpr_save_area_size));
   std_expand_builtin_va_start (valist, nextarg);
 }
    }
  else
    std_expand_builtin_va_start (valist, nextarg);
}



rtx
mips_va_arg (valist, type)
     tree valist, type;
{
  long long size, rsize;
  rtx addr_rtx;
  tree t;

  size = int_size_in_bytes (type);
  rsize = (size + ((target_flags & 0x00002000) ? 8 : 4) - 1) & -((target_flags & 0x00002000) ? 8 : 4);

  if (mips_abi == 3)
    {
      _Bool indirect;
      rtx r;

      indirect
 = function_arg_pass_by_reference (((void *)0), ((type)->type.mode), type, 0);

      if (indirect)
 {
   size = ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8;
   rsize = ((target_flags & 0x00002000) ? 8 : 4);
 }

      addr_rtx = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));

      if (!(mips_abi == 3 && ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)) >= (((global_trees[TI_DOUBLE_TYPE])->type.precision) / 8)))
 {



   tree gpr = valist;
   if (!indirect
       && !(target_flags & 0x00002000)
       && ((type)->type.align) > (unsigned) (8 * ((target_flags & 0x00002000) ? 8 : 4)))
     {


       t = build (PLUS_EXPR, ((gpr)->common.type), gpr,
    build_int_2_wide ((unsigned long long) (2 * ((target_flags & 0x00002000) ? 8 : 4) - 1), (long long) (0)));
       t = build (BIT_AND_EXPR, ((t)->common.type), t,
    build_int_2_wide ((unsigned long long) (-2 * ((target_flags & 0x00002000) ? 8 : 4)), (long long) (-1)));
       t = build (MODIFY_EXPR, ((gpr)->common.type), gpr, t);
       expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);
     }




   t = build (POSTINCREMENT_EXPR, ((gpr)->common.type), gpr,
       size_int_wide ((long long) (rsize), SIZETYPE));
   r = expand_expr (t, addr_rtx, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), EXPAND_NORMAL);
   if (r != addr_rtx)
     emit_move_insn (addr_rtx, r);


   emit_queue();
 }
      else
 {


   tree f_ovfl, f_gtop, f_ftop, f_goff, f_foff;
   tree ovfl, top, off;
   rtx lab_over = (rtx) 0, lab_false;
   long long osize;

   f_ovfl = ((global_trees[TI_VA_LIST_TYPE])->type.values);
   f_gtop = ((f_ovfl)->common.chain);
   f_ftop = ((f_gtop)->common.chain);
   f_goff = ((f_ftop)->common.chain);
   f_foff = ((f_goff)->common.chain);
# 4914 "../../../kgccfe/gnu/mips.c"
   lab_false = gen_label_rtx ();
   lab_over = gen_label_rtx ();

   ovfl = build (COMPONENT_REF, ((f_ovfl)->common.type), valist, f_ovfl);

   if (((enum tree_code) (type)->common.code) == REAL_TYPE)
     {
       top = build (COMPONENT_REF, ((f_ftop)->common.type), valist, f_ftop);
       off = build (COMPONENT_REF, ((f_foff)->common.type), valist, f_foff);




       rsize = ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4));
     }
   else
     {
       top = build (COMPONENT_REF, ((f_gtop)->common.type), valist, f_gtop);
       off = build (COMPONENT_REF, ((f_goff)->common.type), valist, f_goff);
       if (rsize > ((target_flags & 0x00002000) ? 8 : 4))
  {

    t = build (BIT_AND_EXPR, ((off)->common.type), off,
        build_int_2_wide ((unsigned long long) (-rsize), (long long) (-1)));
    t = build (MODIFY_EXPR, ((off)->common.type), off, t);
    expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);
  }
     }






   osize = ((rsize) > (((target_flags & 0x00002000) ? 8 : 4)) ? (rsize) : (((target_flags & 0x00002000) ? 8 : 4)));


   r = expand_expr (off, (rtx) 0, ((((off)->common.type))->type.mode),
      EXPAND_NORMAL);
   emit_cmp_and_jump_insns (r, (const_int_rtx[64]), EQ, (const_int_rtx[64 +1]), ((enum machine_mode) (r)->mode),
       1, lab_false);


   t = build (MINUS_EXPR, ((top)->common.type), top, off);
   r = expand_expr (t, addr_rtx, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), EXPAND_NORMAL);
   if (r != addr_rtx)
     emit_move_insn (addr_rtx, r);


   t = build (MINUS_EXPR, ((off)->common.type), off, build_int_2_wide ((unsigned long long) (rsize), (long long) (0)));
   t = build (MODIFY_EXPR, ((off)->common.type), off, t);
   expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);



   emit_queue();
   emit_jump (lab_over);
   emit_barrier ();
   emit_label (lab_false);

   if (osize > ((target_flags & 0x00002000) ? 8 : 4))
     {

       t = build (PLUS_EXPR, ((ovfl)->common.type), ovfl,
    build_int_2_wide ((unsigned long long) (osize - 1), (long long) (0)));
       t = build (BIT_AND_EXPR, ((ovfl)->common.type), t,
    build_int_2_wide ((unsigned long long) (-osize), (long long) (-1)));
       t = build (MODIFY_EXPR, ((ovfl)->common.type), ovfl, t);
       expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);
     }




   t = build (POSTINCREMENT_EXPR, ((ovfl)->common.type), ovfl,
       size_int_wide ((long long) (osize), SIZETYPE));
   if (((target_flags & 0x00010000) != 0) && osize > rsize)
     t = build (PLUS_EXPR, ((t)->common.type), t,
         build_int_2_wide ((unsigned long long) (osize - rsize), (long long) (0)));
   r = expand_expr (t, addr_rtx, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), EXPAND_NORMAL);
   if (r != addr_rtx)
     emit_move_insn (addr_rtx, r);

   emit_queue();
   emit_label (lab_over);
 }
      if (indirect)
 {
   addr_rtx = force_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), addr_rtx);
   r = gen_rtx_MEM ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), addr_rtx);
   set_mem_alias_set (r, get_varargs_alias_set ());
   emit_move_insn (addr_rtx, r);
 }
      else
 {
   if (((target_flags & 0x00010000) != 0) && rsize != size)
     addr_rtx = plus_constant_wide ((addr_rtx), (long long) (rsize - size));
 }
      return addr_rtx;
    }
  else
    {

      int align;





      if ((mips_abi == 1 || mips_abi == 2)
   && ((type)->type.align) > 64)
 align = 16;
      else if ((target_flags & 0x00002000))
 align = 8;
      else if (((type)->type.align) > 32)
 align = 8;
      else
 align = 4;

      t = build (PLUS_EXPR, ((valist)->common.type), valist,
   build_int_2_wide ((unsigned long long) (align - 1), (long long) (0)));
      t = build (BIT_AND_EXPR, ((t)->common.type), t, build_int_2_wide ((unsigned long long) (-align), (long long) (-1)));
      t = build (MODIFY_EXPR, ((valist)->common.type), valist, t);
      expand_expr (t, (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);


      return std_expand_builtin_va_arg (valist, type);
    }
}



static void
abort_with_insn (insn, reason)
     rtx insn;
     const char *reason;
{
  error (reason);
  debug_rtx (insn);
  fancy_abort ("../../../kgccfe/gnu/mips.c", 5053, __FUNCTION__);
}




static void
mips_set_architecture (info)
     const struct mips_cpu_info *info;
{
  if (info != 0)
    {
      mips_arch_info = info;
      mips_arch = info->cpu;
      mips_isa = info->isa;
    }
}




static void
mips_set_tune (info)
     const struct mips_cpu_info *info;
{
  if (info != 0)
    {
      mips_tune_info = info;
      mips_tune = info->cpu;
    }
}





void
override_options ()
{
  int i, start, regno;
  enum machine_mode mode;

  mips_section_threshold = g_switch_set ? g_switch_value : 0;

  if (mips_section_threshold <= 0)
    target_flags &= ~0x00000008;
  else if (optimize)
    target_flags |= 0x00000008;






  if ((target_flags & 0x00020000) && (target_flags & 0x00000100))
    target_flags &= ~(((0x00000400|0x00000010)) & (0x00000100 | 0x00020000));



  mips_abi = 0;
  if (mips_abi_string != 0)
    {
      if (strcmp (mips_abi_string, "32") == 0)
 mips_abi = 0;
      else if (strcmp (mips_abi_string, "o64") == 0)
 mips_abi = 4;
      else if (strcmp (mips_abi_string, "n32") == 0)
 mips_abi = 1;
      else if (strcmp (mips_abi_string, "64") == 0)
 mips_abi = 2;
      else if (strcmp (mips_abi_string, "eabi") == 0)
 mips_abi = 3;
      else if (strcmp (mips_abi_string, "meabi") == 0)
 mips_abi = 5;
      else
 fatal_error ("bad value (%s) for -mabi= switch", mips_abi_string);
    }





  if (mips_arch_string != 0)
    mips_set_architecture (mips_parse_cpu ("-march", mips_arch_string));

  if (mips_tune_string != 0)
    mips_set_tune (mips_parse_cpu ("-mtune", mips_tune_string));

  if (mips_isa_string != 0)
    {

      int level = atoi (mips_isa_string);
      if (level == 16)
 {


   if (mips_no_mips16_string == ((void *)0))
     target_flags |= 0x00100000;
 }
      else if (mips_arch_info != 0)
 {



   if (mips_isa != level)
     error ("-mips%d conflicts with the other architecture options, which specify a MIPS%d processor",
     level, mips_isa);
 }
      else
 {
   mips_set_architecture (mips_cpu_info_from_isa (level));
   if (mips_arch_info == 0)
     error ("bad value (%s) for -mips switch", mips_isa_string);
 }
    }

  if (mips_arch_info == 0)
    {

      mips_set_architecture (mips_parse_cpu ("default CPU",
          "from-abi"));



    }

  if ((mips_abi == 2 || mips_abi == 4 || mips_abi == 1) && !((mips_isa == 3) || (mips_isa == 4) || (mips_isa == 64)))
    error ("-march=%s is not compatible with the selected ABI",
    mips_arch_info->name);


  if (mips_tune_info == 0)
    mips_set_tune (mips_arch_info);

  if ((target_flags_explicit & 0x00002000) != 0)
    {


      if ((target_flags & 0x00002000) && !((mips_isa == 3) || (mips_isa == 4) || (mips_isa == 64)))
 error ("-mgp64 used with a 32-bit processor");
      else if (!(target_flags & 0x00002000) && (mips_abi == 2 || mips_abi == 4 || mips_abi == 1))
 error ("-mgp32 used with a 64-bit ABI");
      else if ((target_flags & 0x00002000) && (mips_abi == 0))
 error ("-mgp64 used with a 32-bit ABI");
    }
  else
    {



      if ((mips_abi == 0) || !((mips_isa == 3) || (mips_isa == 4) || (mips_isa == 64)))
 target_flags &= ~0x00002000;
      else
 target_flags |= 0x00002000;
    }

  if ((target_flags_explicit & 0x00000200) != 0)
    {


      if ((target_flags & 0x00002000) && (! (target_flags & 0x00020000)) && !(target_flags & 0x00000200))
 error ("unsupported combination: %s", "-mgp64 -mfp32 -mdouble-float");
      else if (!(target_flags & 0x00002000) && (target_flags & 0x00000200))
 error ("unsupported combination: %s", "-mgp32 -mfp64");
      else if ((target_flags & 0x00020000) && (target_flags & 0x00000200))
 error ("unsupported combination: %s", "-mfp64 -msingle-float");
    }
  else
    {


      if ((target_flags & 0x00002000) && (! (target_flags & 0x00020000)))
 target_flags |= 0x00000200;
      else
 target_flags &= ~0x00000200;
    }



  if ((target_flags_explicit & 0x00000002) == 0)
    {




      if ((mips_abi == 3 && (target_flags & 0x00002000)) || mips_abi == 2)
 target_flags |= 0x00000002;
      else
 target_flags &= ~0x00000002;
    }

  if (0
      && (target_flags_explicit & 0x00000100) == 0)
    {


      switch ((int) mips_arch)
 {
 case PROCESSOR_R4100:
 case PROCESSOR_R4120:
   target_flags |= 0x00000100;
   break;

 default:
   target_flags &= ~0x00000100;
   break;
 }
    }

  if (mips_abi != 0 && mips_abi != 4)
    flag_pcc_struct_return = 0;

  if ((target_flags_explicit & 0x02000000) == 0)
    {
# 5282 "../../../kgccfe/gnu/mips.c"
      if ((!(mips_isa == 1) && !(mips_arch == PROCESSOR_R5500)) && !((mips_isa == 32) || (mips_isa == 64)))
 target_flags |= 0x02000000;
      else
 target_flags &= ~0x02000000;
    }
  if ((target_flags & 0x02000000) && !(!(mips_isa == 1) && !(mips_arch == PROCESSOR_R5500)))
    warning ("generation of Branch Likely instructions enabled, but not supported by architecture");





  if ((target_flags & 0x00000400))
    {
      mips_abicalls = MIPS_ABICALLS_YES;
      flag_pic = 1;
      if (mips_section_threshold > 0)
 warning ("-G is incompatible with PIC code which is the default");
    }
  else
    mips_abicalls = MIPS_ABICALLS_NO;
# 5311 "../../../kgccfe/gnu/mips.c"
  if ((target_flags & 0x00004000))
    {
      flag_pic = 1;
      if ((target_flags & 0x00000400))
 warning ("-membedded-pic and -mabicalls are incompatible");

      if (g_switch_set)
 warning ("-G and -membedded-pic are incompatible");






      mips_section_threshold = 0x7fffffff;
    }
# 5335 "../../../kgccfe/gnu/mips.c"
  if ((target_flags & 0x00000010) && ! (target_flags & 0x00100000) && (target_flags & 0x00000004) && optimize && ! flag_pic
      && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == SImode)
    mips_split_addresses = 1;
  else
    mips_split_addresses = 0;






  if ((target_flags & 0x00000020))
    memcpy (mips_reg_names, mips_sw_reg_names, sizeof (mips_reg_names));



  if ((target_flags & 0x00100000))
    {
      if ((target_flags & 0x00000100))
 mips16_hard_float = 0;
      else
 mips16_hard_float = 1;
      target_flags |= 0x00000100;



      flag_schedule_insns = 0;
    }



  if (mips_entry_string != ((void *)0))
    {
      if (*mips_entry_string != '\0')
 error ("invalid option `entry%s'", mips_entry_string);

      if (! (target_flags & 0x00100000))
 warning ("-mentry is only meaningful with -mips-16");
      else
 mips_entry = 1;
    }



  if ((target_flags & 0x00100000))
    mips16 = 1;
  else
    mips16 = 0;





  mips_print_operand_punct['?'] = 1;
  mips_print_operand_punct['#'] = 1;
  mips_print_operand_punct['&'] = 1;
  mips_print_operand_punct['!'] = 1;
  mips_print_operand_punct['*'] = 1;
  mips_print_operand_punct['@'] = 1;
  mips_print_operand_punct['.'] = 1;
  mips_print_operand_punct['('] = 1;
  mips_print_operand_punct[')'] = 1;
  mips_print_operand_punct['['] = 1;
  mips_print_operand_punct[']'] = 1;
  mips_print_operand_punct['<'] = 1;
  mips_print_operand_punct['>'] = 1;
  mips_print_operand_punct['{'] = 1;
  mips_print_operand_punct['}'] = 1;
  mips_print_operand_punct['^'] = 1;
  mips_print_operand_punct['$'] = 1;
  mips_print_operand_punct['+'] = 1;
  mips_print_operand_punct['~'] = 1;

  mips_char_to_class['d'] = (target_flags & 0x00100000) ? M16_REGS : GR_REGS;
  mips_char_to_class['e'] = M16_NA_REGS;
  mips_char_to_class['t'] = T_REG;
  mips_char_to_class['f'] = ((! (target_flags & 0x00000100)) ? FP_REGS : NO_REGS);
  mips_char_to_class['h'] = HI_REG;
  mips_char_to_class['l'] = LO_REG;
  mips_char_to_class['a'] = HILO_REG;
  mips_char_to_class['x'] = MD_REGS;
  mips_char_to_class['b'] = ALL_REGS;
  mips_char_to_class['y'] = GR_REGS;
  mips_char_to_class['z'] = ST_REGS;
  mips_char_to_class['B'] = COP0_REGS;
  mips_char_to_class['C'] = COP2_REGS;
  mips_char_to_class['D'] = COP3_REGS;




  for (i = 0; i < 176; i++)
    mips_dbx_regno[i] = -1;

  start = 0 - 0;
  for (i = 0; i <= 31; i++)
    mips_dbx_regno[i] = i + start;

  start = ((write_symbols == DBX_DEBUG) ? 38 : 32) - 32;
  for (i = 32; i <= 63; i++)
    mips_dbx_regno[i] = i + start;
# 5444 "../../../kgccfe/gnu/mips.c"
  for (mode = VOIDmode;
       mode != MAX_MACHINE_MODE;
       mode = (enum machine_mode) ((int)mode + 1))
    {
      register int size = (mode_size[(int) (mode)]);
      register enum mode_class class = (mode_class[(int) (mode)]);

      for (regno = 0; regno < 176; regno++)
 {
   register int temp;

   if (mode == CCmode)
     {
       if (! ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
  temp = (regno == 67);
       else
  temp = (((unsigned int) ((int) (regno) - 67) < (74 - 67 + 1)) || ((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1))
   || ((unsigned int) ((int) (regno) - 32) < (63 - 32 + 1)));
     }

   else if (((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1)))
     temp = ((regno & 1) == 0 || size <= ((target_flags & 0x00002000) ? 8 : 4));

   else if (((unsigned int) ((int) (regno) - 32) < (63 - 32 + 1)))
     temp = (((regno % ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2)) == 0






       || (mips_abi == 5 && size <= 4))
      && (((class == MODE_FLOAT || class == MODE_COMPLEX_FLOAT)
    && size <= ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)))



   || (class == MODE_INT && size <= ((target_flags & 0x00000200) ? 8 : 4))

   || (((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && mode == TFmode)));

   else if (((unsigned int) ((int) (regno) - 64) < (66 - 64 + 1)))
     temp = (class == MODE_INT
      && (size <= ((target_flags & 0x00002000) ? 8 : 4)
   || (regno == 64
       && size == 2 * ((target_flags & 0x00002000) ? 8 : 4))));

   else if (((unsigned int) ((int) (regno) - 80) < (175 - 80 + 1)))
     temp = (class == MODE_INT && size <= ((target_flags & 0x00002000) ? 8 : 4));
   else
     temp = 0;

   mips_hard_regno_mode_ok[(int)mode][regno] = temp;
 }
    }



  gpr_mode = (target_flags & 0x00002000) ? DImode : SImode;


  if ((target_flags & 0x00002000) && !(target_flags & 0x00100000))
    {
      if (align_loops == 0)
 align_loops = 8;
      if (align_jumps == 0)
 align_jumps = 8;
      if (align_functions == 0)
 align_functions = 8;
    }


  init_machine_status = &mips_init_machine_status;
}



void
mips_conditional_register_usage ()
{
  if (!(! (target_flags & 0x00000100)))
    {
      int regno;

      for (regno = 32; regno <= 63; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
      for (regno = 67; regno <= 74; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
    }
  else if (! ((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)))
    {
      int regno;




      for (regno = 67; regno <= 74; regno++)
 fixed_regs[regno] = call_used_regs[regno] = 1;
    }




  if ((target_flags & 0x00100000))
    {
      fixed_regs[18] = call_used_regs[18] = 1;
      fixed_regs[19] = call_used_regs[19] = 1;
      fixed_regs[20] = call_used_regs[20] = 1;
      fixed_regs[21] = call_used_regs[21] = 1;
      fixed_regs[22] = call_used_regs[22] = 1;
      fixed_regs[23] = call_used_regs[23] = 1;
      fixed_regs[26] = call_used_regs[26] = 1;
      fixed_regs[27] = call_used_regs[27] = 1;
      fixed_regs[30] = call_used_regs[30] = 1;
    }

  if (mips_abi == 2)
    {
      int regno;
      for (regno = 32 + 20; regno < 32 + 24; regno++)
 call_really_used_regs[regno] = call_used_regs[regno] = 1;
    }

  if (mips_abi == 1 || mips_abi == 5)
    {
      int regno;
      for (regno = 32 + 21; regno <= 32 + 31; regno+=2)
 call_really_used_regs[regno] = call_used_regs[regno] = 1;
    }
}


static struct machine_function *
mips_init_machine_status ()
{
  return ((struct machine_function *)
   ggc_alloc_cleared (sizeof (struct machine_function)));
}






void
mips_order_regs_for_local_alloc ()
{
  register int i;

  for (i = 0; i < 176; i++)
    reg_alloc_order[i] = i;

  if ((target_flags & 0x00100000))
    {


      reg_alloc_order[0] = 24;
      reg_alloc_order[24] = 0;
    }
}
# 5615 "../../../kgccfe/gnu/mips.c"
long long
mips_debugger_offset (addr, offset)
     rtx addr;
     long long offset;
{
  rtx offset2 = (const_int_rtx[64]);
  rtx reg = eliminate_constant_term (addr, &offset2);

  if (offset == 0)
    offset = (((offset2)->fld[0]).rtwint);

  if (reg == (global_rtl[GR_STACK_POINTER]) || reg == (global_rtl[GR_FRAME_POINTER])
      || reg == (global_rtl[GR_HARD_FRAME_POINTER]))
    {
      long long frame_size = (!cfun->machine->frame.initialized)
      ? compute_frame_size (get_frame_size ())
      : cfun->machine->frame.total_size;


      if (frame_pointer_needed && (target_flags & 0x00100000))
 frame_size -= (cfun->outgoing_args_size);

      offset = offset - frame_size;
    }







  return offset;
}
# 5708 "../../../kgccfe/gnu/mips.c"
void
print_operand (file, op, letter)
     FILE *file;
     rtx op;
     int letter;
{
  register enum rtx_code code;

  if (mips_print_operand_punct[letter])
    {
      switch (letter)
 {
 case '?':
   if (mips_branch_likely)
     putc_unlocked ('l', file);
   break;

 case '@':
   fputs_unlocked (reg_names [0 + 1], file);
   break;

 case '^':
   fputs_unlocked (reg_names [(0 + 25)], file);
   break;

 case '.':
   fputs_unlocked (reg_names [0 + 0], file);
   break;

 case '$':
   fputs_unlocked (reg_names[(0 + 29)], file);
   break;

 case '+':
   fputs_unlocked (reg_names[0 + 28], file);
   break;

 case '&':
   if (final_sequence != 0 && set_noreorder++ == 0)
     fputs_unlocked (".set\tnoreorder\n\t", file);
   break;

 case '*':
   if (final_sequence != 0)
     {
       if (set_noreorder++ == 0)
  fputs_unlocked (".set\tnoreorder\n\t", file);

       if (set_nomacro++ == 0)
  fputs_unlocked (".set\tnomacro\n\t", file);
     }
   break;

 case '!':
   if (final_sequence != 0 && set_nomacro++ == 0)
     fputs_unlocked ("\n\t.set\tnomacro", file);
   break;

 case '#':
   if (set_noreorder != 0)
     fputs_unlocked ("\n\tnop", file);
   else if ((target_flags & 0x00000040))
     fputs_unlocked ("\n\t#nop", file);

   break;

 case '(':
   if (set_noreorder++ == 0)
     fputs_unlocked (".set\tnoreorder\n\t", file);
   break;

 case ')':
   if (set_noreorder == 0)
     error ("internal error: %%) found without a %%( in assembler pattern");

   else if (--set_noreorder == 0)
     fputs_unlocked ("\n\t.set\treorder", file);

   break;

 case '[':
   if (set_noat++ == 0)
     fputs_unlocked (".set\tnoat\n\t", file);
   break;

 case ']':
   if (set_noat == 0)
     error ("internal error: %%] found without a %%[ in assembler pattern");
   else if (--set_noat == 0)
     fputs_unlocked ("\n\t.set\tat", file);

   break;

 case '<':
   if (set_nomacro++ == 0)
     fputs_unlocked (".set\tnomacro\n\t", file);
   break;

 case '>':
   if (set_nomacro == 0)
     error ("internal error: %%> found without a %%< in assembler pattern");
   else if (--set_nomacro == 0)
     fputs_unlocked ("\n\t.set\tmacro", file);

   break;

 case '{':
   if (set_volatile++ == 0)
     fprintf (file, "%s.set\tvolatile\n\t", (!(target_flags & 0x00000010)) ? "" : "#");
   break;

 case '}':
   if (set_volatile == 0)
     error ("internal error: %%} found without a %%{ in assembler pattern");
   else if (--set_volatile == 0)
     fprintf (file, "\n\t%s.set\tnovolatile", ((!(target_flags & 0x00000010))) ? "" : "#");

   break;

 case '~':
   {
     if (align_labels_log > 0)
       fprintf (file, "\t.align\t%d\n", (align_labels_log));
   }
 break;

 default:
   error ("PRINT_OPERAND: unknown punctuation '%c'", letter);
   break;
 }

      return;
    }

  if (! op)
    {
      error ("PRINT_OPERAND null pointer");
      return;
    }

  code = ((enum rtx_code) (op)->code);

  if (code == SIGN_EXTEND)
    op = (((op)->fld[0]).rtx), code = ((enum rtx_code) (op)->code);

  if (letter == 'C')
    switch (code)
      {
      case EQ: fputs_unlocked ("eq", file); break;
      case NE: fputs_unlocked ("ne", file); break;
      case GT: fputs_unlocked ("gt", file); break;
      case GE: fputs_unlocked ("ge", file); break;
      case LT: fputs_unlocked ("lt", file); break;
      case LE: fputs_unlocked ("le", file); break;
      case GTU: fputs_unlocked ("gtu", file); break;
      case GEU: fputs_unlocked ("geu", file); break;
      case LTU: fputs_unlocked ("ltu", file); break;
      case LEU: fputs_unlocked ("leu", file); break;
      default:
 abort_with_insn (op, "PRINT_OPERAND, invalid insn for %%C");
      }

  else if (letter == 'N')
    switch (code)
      {
      case EQ: fputs_unlocked ("ne", file); break;
      case NE: fputs_unlocked ("eq", file); break;
      case GT: fputs_unlocked ("le", file); break;
      case GE: fputs_unlocked ("lt", file); break;
      case LT: fputs_unlocked ("ge", file); break;
      case LE: fputs_unlocked ("gt", file); break;
      case GTU: fputs_unlocked ("leu", file); break;
      case GEU: fputs_unlocked ("ltu", file); break;
      case LTU: fputs_unlocked ("geu", file); break;
      case LEU: fputs_unlocked ("gtu", file); break;
      default:
 abort_with_insn (op, "PRINT_OPERAND, invalid insn for %%N");
      }

  else if (letter == 'F')
    switch (code)
      {
      case EQ: fputs_unlocked ("c1f", file); break;
      case NE: fputs_unlocked ("c1t", file); break;
      default:
 abort_with_insn (op, "PRINT_OPERAND, invalid insn for %%F");
      }

  else if (letter == 'W')
    switch (code)
      {
      case EQ: fputs_unlocked ("c1t", file); break;
      case NE: fputs_unlocked ("c1f", file); break;
      default:
 abort_with_insn (op, "PRINT_OPERAND, invalid insn for %%W");
      }

  else if (letter == 'S')
    {
      char buffer[100];

      sprintf ((buffer), "*%s%s%ld", ("$"), ("LS"), (long)((((op)->fld[6]).rtint)));
      assemble_name (file, buffer);
    }

  else if (letter == 'Z')
    {
      register int regnum;

      if (code != REG)
 fancy_abort ("../../../kgccfe/gnu/mips.c", 5918, __FUNCTION__);

      regnum = (((op)->fld[0]).rtuint);
      if (! ((unsigned int) ((int) (regnum) - 67) < (74 - 67 + 1)))
 fancy_abort ("../../../kgccfe/gnu/mips.c", 5922, __FUNCTION__);

      if (regnum != 67)
 fprintf (file, "%s,", reg_names[regnum]);
    }

  else if (code == REG || code == SUBREG)
    {
      register int regnum;

      if (code == REG)
 regnum = (((op)->fld[0]).rtuint);
      else
 regnum = true_regnum (op);

      if ((letter == 'M' && ! ((target_flags & 0x00010000) != 0))
   || (letter == 'L' && ((target_flags & 0x00010000) != 0))
   || letter == 'D')
 regnum++;

      fprintf (file, "%s", reg_names[regnum]);
    }

  else if (code == MEM)
    {
      if (letter == 'D')
 output_address (plus_constant_wide (((((op)->fld[0]).rtx)), (long long) (4)));
      else
 output_address ((((op)->fld[0]).rtx));
    }

  else if (code == CONST_DOUBLE
    && (mode_class[(int) (((enum machine_mode) (op)->mode))]) == MODE_FLOAT)
    {
      char s[60];

      real_to_decimal (s, ((struct real_value *)&(((op)->fld[0]).rtwint)), sizeof (s), 0, 1);
      fputs_unlocked (s, file);
    }

  else if (letter == 'x' && ((enum rtx_code) (op)->code) == CONST_INT)
    fprintf (file, "0x%llx", 0xffff & (((op)->fld[0]).rtwint));

  else if (letter == 'X' && ((enum rtx_code) (op)->code) == CONST_INT)
    fprintf (file, "0x%llx", (((op)->fld[0]).rtwint));

  else if (letter == 'd' && ((enum rtx_code) (op)->code) == CONST_INT)
    fprintf (file, "%lld", ((((op)->fld[0]).rtwint)));

  else if (letter == 'z' && ((enum rtx_code) (op)->code) == CONST_INT && (((op)->fld[0]).rtwint) == 0)
    fputs_unlocked (reg_names[0], file);

  else if (letter == 'd' || letter == 'x' || letter == 'X')
    output_operand_lossage ("invalid use of %%d, %%x, or %%X");

  else if (letter == 'B')
    fputs_unlocked (code == EQ ? "z" : "n", file);
  else if (letter == 'b')
    fputs_unlocked (code == EQ ? "n" : "z", file);
  else if (letter == 'T')
    fputs_unlocked (code == EQ ? "f" : "t", file);
  else if (letter == 't')
    fputs_unlocked (code == EQ ? "t" : "f", file);

  else if (code == CONST && ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == REG)
    {

      print_operand (file, (((op)->fld[0]).rtx), letter);
    }

  else if ((target_flags & 0x00100000) && code == CONST && mips16_gp_offset_p (op))
    {
      fputs_unlocked ("%gprel(", file);
      mips16_output_gp_offset (file, op);
      fputs_unlocked (")", file);
    }

  else
    output_addr_const (file, op);
}





void
print_operand_address (file, addr)
     FILE *file;
     rtx addr;
{
  if (!addr)
    error ("PRINT_OPERAND_ADDRESS, null pointer");

  else
    switch (((enum rtx_code) (addr)->code))
      {
      case REG:
 if (! (target_flags & 0x00100000) && (((addr)->fld[0]).rtuint) == 0)
   abort_with_insn (addr, "arg pointer not eliminated");

 fprintf (file, "0(%s)", reg_names [(((addr)->fld[0]).rtuint)]);
 break;

      case LO_SUM:
 {
   register rtx arg0 = (((addr)->fld[0]).rtx);
   register rtx arg1 = (((addr)->fld[1]).rtx);

   if (! mips_split_addresses)
     abort_with_insn (addr, "PRINT_OPERAND_ADDRESS, Spurious LO_SUM");

   if (((enum rtx_code) (arg0)->code) != REG)
     abort_with_insn (addr,
        "PRINT_OPERAND_ADDRESS, LO_SUM with #1 not REG");

   fprintf (file, "%%lo(");
   print_operand_address (file, arg1);
   fprintf (file, ")(%s)", reg_names [(((arg0)->fld[0]).rtuint)]);
 }
 break;

      case PLUS:
 {
   register rtx reg = 0;
   register rtx offset = 0;
   register rtx arg0 = (((addr)->fld[0]).rtx);
   register rtx arg1 = (((addr)->fld[1]).rtx);

   if (((enum rtx_code) (arg0)->code) == REG)
     {
       reg = arg0;
       offset = arg1;
       if (((enum rtx_code) (offset)->code) == REG)
  abort_with_insn (addr, "PRINT_OPERAND_ADDRESS, 2 regs");
     }

   else if (((enum rtx_code) (arg1)->code) == REG)
       reg = arg1, offset = arg0;
   else if ((((enum rtx_code) (arg0)->code) == LABEL_REF || ((enum rtx_code) (arg0)->code) == SYMBOL_REF || ((enum rtx_code) (arg0)->code) == CONST_INT || ((enum rtx_code) (arg0)->code) == CONST_DOUBLE || ((enum rtx_code) (arg0)->code) == CONST || ((enum rtx_code) (arg0)->code) == HIGH || ((enum rtx_code) (arg0)->code) == CONST_VECTOR || ((enum rtx_code) (arg0)->code) == CONSTANT_P_RTX) && (((enum rtx_code) (arg1)->code) == LABEL_REF || ((enum rtx_code) (arg1)->code) == SYMBOL_REF || ((enum rtx_code) (arg1)->code) == CONST_INT || ((enum rtx_code) (arg1)->code) == CONST_DOUBLE || ((enum rtx_code) (arg1)->code) == CONST || ((enum rtx_code) (arg1)->code) == HIGH || ((enum rtx_code) (arg1)->code) == CONST_VECTOR || ((enum rtx_code) (arg1)->code) == CONSTANT_P_RTX))
     {
       output_addr_const (file, addr);
       break;
     }
   else
     abort_with_insn (addr, "PRINT_OPERAND_ADDRESS, no regs");

   if (! (((enum rtx_code) (offset)->code) == LABEL_REF || ((enum rtx_code) (offset)->code) == SYMBOL_REF || ((enum rtx_code) (offset)->code) == CONST_INT || ((enum rtx_code) (offset)->code) == CONST_DOUBLE || ((enum rtx_code) (offset)->code) == CONST || ((enum rtx_code) (offset)->code) == HIGH || ((enum rtx_code) (offset)->code) == CONST_VECTOR || ((enum rtx_code) (offset)->code) == CONSTANT_P_RTX))
     abort_with_insn (addr, "PRINT_OPERAND_ADDRESS, invalid insn #2");

   if ((((reg)->fld[0]).rtuint) == 0)
     abort_with_insn (addr, "arg pointer not eliminated");

   if ((target_flags & 0x00100000)
       && ((enum rtx_code) (offset)->code) == CONST
       && mips16_gp_offset_p (offset))
     {
       fputs_unlocked ("%gprel(", file);
       mips16_output_gp_offset (file, offset);
       fputs_unlocked (")", file);
     }
   else
     output_addr_const (file, offset);
   fprintf (file, "(%s)", reg_names [(((reg)->fld[0]).rtuint)]);
 }
 break;

      case LABEL_REF:
      case SYMBOL_REF:
      case CONST_INT:
      case CONST:
 output_addr_const (file, addr);
 break;

      default:
 abort_with_insn (addr, "PRINT_OPERAND_ADDRESS, invalid insn #1");
 break;
    }
}





static _Bool
mips_assemble_integer (x, size, aligned_p)
     rtx x;
     unsigned int size;
     int aligned_p;
{
  if (((target_flags & 0x00002000) || (target_flags & 0x00000010)) && size == 8 && aligned_p)
    {
      fputs_unlocked ("\t.dword\t", asm_out_file);
      if ((8 * 8) < 64 || ((enum rtx_code) (x)->code) != CONST_INT)
 output_addr_const (asm_out_file, x);
      else
 print_operand (asm_out_file, x, 'X');
      fputc_unlocked ('\n', asm_out_file);
      return 1;
    }
  return default_assemble_integer (x, size, aligned_p);
}
# 6135 "../../../kgccfe/gnu/mips.c"
int
mips_output_external (file, decl, name)
     FILE *file __attribute__ ((__unused__));
     tree decl;
     const char *name;
{
  register struct extern_list *p;
  int len;
  tree section_name;

  if ((target_flags & 0x00000008)
      && ((enum tree_code) (decl)->common.code) != FUNCTION_DECL
      && !((decl)->decl.comdat_flag)
      && (len = int_size_in_bytes (((decl)->common.type))) > 0
      && ((section_name = ((decl)->decl.section_name)) == ((void *)0)
   || strcmp (((section_name)->string.pointer), ".sbss") == 0
   || strcmp (((section_name)->string.pointer), ".sdata") == 0))
    {
      p = (struct extern_list *) xmalloc (sizeof (struct extern_list));
      p->next = extern_head;
      p->name = name;
      p->size = len;
      extern_head = p;
    }
# 6177 "../../../kgccfe/gnu/mips.c"
  return 0;
}
# 6202 "../../../kgccfe/gnu/mips.c"
void
mips_output_filename (stream, name)
     FILE *stream;
     const char *name;
{
  static int first_time = 1;
  char ltext_label_name[100];



  if (write_symbols == DWARF2_DEBUG)
    return;
  else if (first_time)
    {
      first_time = 0;
      ++num_source_filenames;
      current_function_file = name;
      do { fprintf (stream, "\t.file\t%d ", num_source_filenames); output_quoted_string (stream, name); fputs_unlocked ("\n", stream); } while (0);

      if (!(target_flags & 0x00000010) && write_symbols == DBX_DEBUG)
 fprintf (stream, "\t#@stabs\n");
    }

  else if (write_symbols == DBX_DEBUG)
    {
      sprintf ((ltext_label_name), "*%s%s%ld", ("$"), ("Ltext"), (long)(0));
      fprintf (stream, "%s", (((target_flags & 0x00000010)) ? "\t.stabs\t" : " #.stabs\t"));
      output_quoted_string (stream, name);
      fprintf (stream, ",%d,0,0,%s\n", N_SOL, &ltext_label_name[1]);
    }

  else if (name != current_function_file
      && strcmp (name, current_function_file) != 0)
    {
      if (inside_function && !(target_flags & 0x00000010))
 {
   if (!file_in_function_warning)
     {
       file_in_function_warning = 1;
       ignore_line_number = 1;
       warning ("MIPS ECOFF format does not allow changing filenames within functions with #line");
     }
 }
      else
 {
   ++num_source_filenames;
   current_function_file = name;
   do { fprintf (stream, "\t.file\t%d ", num_source_filenames); output_quoted_string (stream, name); fputs_unlocked ("\n", stream); } while (0);
 }
    }
}






void
mips_output_lineno (stream, line)
     FILE *stream;
     int line;
{
  if (write_symbols == DBX_DEBUG)
    {
      ++sym_lineno;
      fprintf (stream, "%sLM%d:\n%s%d,0,%d,%sLM%d\n",
        "$", sym_lineno, (((target_flags & 0x00000010)) ? "\t.stabn\t" : " #.stabn\t"), N_SLINE, line,
        "$", sym_lineno);
    }
  else
    {
      fprintf (stream, "\n\t%s.loc\t%d %d\n",
        (ignore_line_number) ? "#" : "",
        num_source_filenames, line);

      ;
    }
}



void
mips_output_ascii (stream, string_param, len)
     FILE *stream;
     const char *string_param;
     size_t len;
{
  size_t i;
  int cur_pos = 17;
  register const unsigned char *string =
    (const unsigned char *)string_param;

  fprintf (stream, "\t.ascii\t\"");
  for (i = 0; i < len; i++)
    {
      register int c = string[i];

      switch (c)
 {
 case '\"':
 case '\\':
   putc_unlocked ('\\', stream);
   putc_unlocked (c, stream);
   cur_pos += 2;
   break;

 case 012:
   fputs_unlocked ("\\n", stream);
   if (i+1 < len
       && (((c = string[i+1]) >= '\040' && c <= '~')
    || c == 011))
     cur_pos = 32767;
   else
     cur_pos += 2;
   break;

 case 011:
   fputs_unlocked ("\\t", stream);
   cur_pos += 2;
   break;

 case 014:
   fputs_unlocked ("\\f", stream);
   cur_pos += 2;
   break;

 case 010:
   fputs_unlocked ("\\b", stream);
   cur_pos += 2;
   break;

 case 015:
   fputs_unlocked ("\\r", stream);
   cur_pos += 2;
   break;

 default:
   if (c >= ' ' && c < 0177)
     {
       putc_unlocked (c, stream);
       cur_pos++;
     }
   else
     {
       fprintf (stream, "\\%03o", c);
       cur_pos += 4;
     }
 }

      if (cur_pos > 72 && i+1 < len)
 {
   cur_pos = 17;
   fprintf (stream, "\"\n\t.ascii\t\"");
 }
    }
  fprintf (stream, "\"\n");
}
# 6376 "../../../kgccfe/gnu/mips.c"
void
final_prescan_insn (insn, opvec, noperands)
     rtx insn;
     rtx opvec[] __attribute__ ((__unused__));
     int noperands __attribute__ ((__unused__));
{
  if (dslots_number_nops > 0)
    {
      rtx pattern = (((insn)->fld[5]).rtx);
      int length = get_attr_length (insn);


      if (length == 0
   || (mips_load_reg != 0 && reg_mentioned_p (mips_load_reg, pattern))
   || (mips_load_reg2 != 0 && reg_mentioned_p (mips_load_reg2, pattern))
   || (mips_load_reg3 != 0 && reg_mentioned_p (mips_load_reg3, pattern))
   || (mips_load_reg4 != 0
       && reg_mentioned_p (mips_load_reg4, pattern)))
 fputs_unlocked ("\t#nop\n", asm_out_file);

      else
 dslots_load_filled++;

      while (--dslots_number_nops > 0)
 fputs_unlocked ("\t#nop\n", asm_out_file);

      mips_load_reg = 0;
      mips_load_reg2 = 0;
      mips_load_reg3 = 0;
      mips_load_reg4 = 0;
    }

  if ((target_flags & 0x00000040)
      && (((enum rtx_code) (insn)->code) == JUMP_INSN || ((enum rtx_code) (insn)->code) == CALL_INSN))
    dslots_jump_total++;
}
# 6421 "../../../kgccfe/gnu/mips.c"
void
mips_asm_file_start (stream)
     FILE *stream;
{
  mips_output_filename (stream, main_input_filename);






  if ((!(target_flags & 0x00000010)) && optimize && flag_delayed_branch)
    fprintf (stream, "\t.set\tnobopt\n");

  if ((target_flags & 0x00000010))
    {
# 6445 "../../../kgccfe/gnu/mips.c"
      const char * abi_string = ((void *)0);

      switch (mips_abi)
 {
 case 0: abi_string = "abi32"; break;
 case 1: abi_string = "abiN32"; break;
 case 2: abi_string = "abi64"; break;
 case 4: abi_string = "abiO64"; break;
 case 3: abi_string = (target_flags & 0x00002000) ? "eabi64" : "eabi32"; break;
 case 5:abi_string = (target_flags & 0x00002000) ? "meabi64" : "meabi32"; break;
 default:
   fancy_abort ("../../../kgccfe/gnu/mips.c", 6456, __FUNCTION__);
 }




      fprintf (stream, "\t.section .mdebug.%s\n", abi_string);


      fprintf (stream, "\t.previous\n");

    }







  if ((target_flags & 0x00000400))

    fprintf (stream, "%s\n", "\t.abicalls");

  if ((target_flags & 0x00100000))
    fprintf (stream, "\t.set\tmips16\n");




  if (((target_flags & 0x00000008) && ! (target_flags & 0x00000010) && ! (target_flags & 0x00100000)))
    {
      asm_out_data_file = stream;
      asm_out_text_file = tmpfile ();
    }
  else
    asm_out_data_file = asm_out_text_file = stream;

  if (flag_verbose_asm)
    fprintf (stream, "\n%s -G value = %d, Arch = %s, ISA = %d\n",
      " #",
      mips_section_threshold, mips_arch_info->name, mips_isa);
}






void
mips_asm_file_end (file)
     FILE *file;
{
  tree name_tree;
  struct extern_list *p;

  if (extern_head)
    {
      fputs_unlocked ("\n", file);

      for (p = extern_head; p != 0; p = p->next)
 {
   name_tree = (__builtin_constant_p (p->name) ? get_identifier_with_length ((p->name), (unsigned) strlen (p->name)) : (get_identifier) (p->name));


   if (! ((name_tree)->common.asm_written_flag))
     {
       ((name_tree)->common.asm_written_flag) = 1;





  {
    fputs_unlocked ("\t.extern\t", file);
    assemble_name (file, p->name);
    fprintf (file, ", %d\n", p->size);
  }
     }
 }
    }

  if (((target_flags & 0x00000008) && ! (target_flags & 0x00000010) && ! (target_flags & 0x00100000)))
    {
      fprintf (file, "\n\t.text\n");
      copy_file_data (file, asm_out_text_file);
    }
}

static void
copy_file_data (to, from)
     FILE *to, *from;
{
  char buffer[8192];
  size_t len;
  rewind (from);
  if (ferror (from))
    fatal_io_error ("can't rewind temp file");

  while ((len = fread (buffer, 1, sizeof (buffer), from)) > 0)
    if (fwrite_unlocked (buffer, 1, len, to) != len)
      fatal_io_error ("can't write to output file");

  if (ferror (from))
    fatal_io_error ("can't read from temp file");

  if (fclose (from))
    fatal_io_error ("can't close temp file");
}





void
mips_output_aligned_decl_common (stream, decl, name, size, align)
     FILE *stream;
     tree decl;
     const char *name;
     unsigned long long size;
     unsigned int align;
{
  const char *format;



  if ((target_flags & 0x00008000) && (target_flags & 0x00800000)
      && ((enum tree_code) (decl)->common.code) == VAR_DECL && ((decl)->common.readonly_flag)
      && (((decl)->decl.initial) == 0 || ((decl)->decl.initial) == global_trees[TI_ERROR_MARK]))
    {
      if (((decl)->common.public_flag) && ((decl)->decl.name))
 targetm.asm_out.globalize_label (stream, name);

      readonly_data_section ();
      fprintf (stream, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) (align / 8))));

      format = (libiberty_concat_ptr = __builtin_alloca(concat_length (":\n\t.space\t", "%llu", "\n", ((void *)0)) + 1), concat_copy2 (":\n\t.space\t", "%llu", "\n", ((void *)0)));

      mips_declare_object (stream, name, "", format, size);
    }
# 6606 "../../../kgccfe/gnu/mips.c"
  else
    {
      format = (libiberty_concat_ptr = __builtin_alloca(concat_length (",", "%llu", ",%u\n", ((void *)0)) + 1), concat_copy2 (",", "%llu", ",%u\n", ((void *)0)));
      mips_declare_object (stream, name, "\n\t.comm\t", format,
      size, align / 8);
    }
}
# 6621 "../../../kgccfe/gnu/mips.c"
void
mips_declare_object (FILE *stream, const char *name, const char *init_string, const char *final_string, ...)


{
  { va_list ap; __builtin_va_start(ap,final_string); { struct Qdmy;
  struct Qdmy;
  struct Qdmy;
  struct Qdmy;
  struct Qdmy;

  fputs_unlocked (init_string, stream);
  assemble_name (stream, name);
  vfprintf (stream, final_string, ap);

  if ((target_flags & 0x00000008))
    {
      tree name_tree = (__builtin_constant_p (name) ? get_identifier_with_length ((name), (unsigned) strlen (name)) : (get_identifier) (name));
      ((name_tree)->common.asm_written_flag) = 1;
    }

  } __builtin_va_end(ap); };
}
# 6698 "../../../kgccfe/gnu/mips.c"
long long
compute_frame_size (size)
     long long size;
{
  unsigned int regno;
  long long total_size;
  long long var_size;
  long long args_size;
  long long extra_size;
  long long gp_reg_rounded;
  long long gp_reg_size;
  long long fp_reg_size;
  long mask;
  long fmask;
  tree return_type;

  gp_reg_size = 0;
  fp_reg_size = 0;
  mask = 0;
  fmask = 0;
  extra_size = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? (((((target_flags & 0x00000400)) ? ((target_flags & 0x00002000) ? 8 : 4) : 0)) + 7) & ~7 : (((((target_flags & 0x00000400)) ? ((target_flags & 0x00002000) ? 8 : 4) : 0)) + 15) & ~15);
  var_size = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((size) + 7) & ~7 : ((size) + 15) & ~15);
  args_size = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? (((cfun->outgoing_args_size)) + 7) & ~7 : (((cfun->outgoing_args_size)) + 15) & ~15);






  if (args_size == 0 && (cfun->calls_alloca))
    args_size = 4 * ((target_flags & 0x00002000) ? 8 : 4);

  total_size = var_size + args_size + extra_size;
  return_type = ((current_function_decl)->decl.result);


  for (regno = 0; regno <= 31; regno++)
    {






      if (((regs_ever_live[regno] && !call_used_regs[regno]) || (regno == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30) && frame_pointer_needed) || (regno == (0 + 31) && regs_ever_live[0 + 31]))
   || ((target_flags & 0x00100000)
       && regno == 0 + 18
       && regs_ever_live[regno])
   || ((target_flags & 0x00100000)
       && regno == 0 + 31
       && mips16_hard_float
       && ! mips_entry
       && ! aggregate_value_p (return_type)
       && (mode_class[(int) (((return_type)->decl.mode))]) == MODE_FLOAT
       && (mode_size[(int) (((return_type)->decl.mode))]) <= ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8))))
 {
   gp_reg_size += (mode_size[(int) (gpr_mode)]);
   mask |= 1L << (regno - 0);



   if (mips_entry
       && regno == 0 + 17
       && ! ((regs_ever_live[0 + 16] && !call_used_regs[0 + 16]) || (0 + 16 == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30) && frame_pointer_needed) || (0 + 16 == (0 + 31) && regs_ever_live[0 + 31])))
     {
       gp_reg_size += ((target_flags & 0x00002000) ? 8 : 4);
       mask |= 1L << 16;
     }
 }
    }


  if ((cfun->calls_eh_return))
    {
      unsigned int i;
      for (i = 0; ; ++i)
 {
   regno = ((i) < ((target_flags & 0x00100000) ? 2 : 4) ? (i) + (0 + 4) : (~(unsigned int) 0));
   if (regno == (~(unsigned int) 0))
     break;
   gp_reg_size += (mode_size[(int) (gpr_mode)]);
   mask |= 1L << (regno - 0);
 }
    }



  for (regno = (63 - ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) + 1);
       regno >= 32;
       regno -= ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2))
    {
      if (regs_ever_live[regno] && !call_used_regs[regno])
 {
   fp_reg_size += ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4);
   fmask |= ((1 << ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2)) - 1) << (regno - 32);
 }
    }

  gp_reg_rounded = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((gp_reg_size) + 7) & ~7 : ((gp_reg_size) + 15) & ~15);
  total_size += gp_reg_rounded + ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((fp_reg_size) + 7) & ~7 : ((fp_reg_size) + 15) & ~15);






  if (total_size == extra_size
      && (mips_abi == 0 || mips_abi == 4 || mips_abi == 3)
      && ! (cfun->profile))
    total_size = extra_size = 0;
  else if ((target_flags & 0x00000400))
    {

      gp_reg_size += ((target_flags & 0x00002000) ? 8 : 4);
      mask |= 1L << ((0 + 28) - 0);
      total_size -= gp_reg_rounded;
      gp_reg_rounded = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((gp_reg_size) + 7) & ~7 : ((gp_reg_size) + 15) & ~15);
      total_size += gp_reg_rounded;
    }



  if (mips_abi != 0 && mips_abi != 4)
    total_size += ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? (((cfun->pretend_args_size)) + 7) & ~7 : (((cfun->pretend_args_size)) + 15) & ~15);


  if (mips_entry && total_size > 0 && total_size < 32)
    total_size = 32;


  cfun->machine->frame.total_size = total_size;
  cfun->machine->frame.var_size = var_size;
  cfun->machine->frame.args_size = args_size;
  cfun->machine->frame.extra_size = extra_size;
  cfun->machine->frame.gp_reg_size = gp_reg_size;
  cfun->machine->frame.fp_reg_size = fp_reg_size;
  cfun->machine->frame.mask = mask;
  cfun->machine->frame.fmask = fmask;
  cfun->machine->frame.initialized = reload_completed;
  cfun->machine->frame.num_gp = gp_reg_size / ((target_flags & 0x00002000) ? 8 : 4);
  cfun->machine->frame.num_fp = fp_reg_size / (((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4));

  if (mask)
    {
      unsigned long offset;



      if (! mips_entry)
 offset = (args_size + extra_size + var_size
    + gp_reg_size - (mode_size[(int) (gpr_mode)]));
      else
 offset = total_size - (mode_size[(int) (gpr_mode)]);

      cfun->machine->frame.gp_sp_offset = offset;
      cfun->machine->frame.gp_save_offset = offset - total_size;
    }
  else
    {
      cfun->machine->frame.gp_sp_offset = 0;
      cfun->machine->frame.gp_save_offset = 0;
    }

  if (fmask)
    {
      unsigned long offset = (args_size + extra_size + var_size
         + gp_reg_rounded + fp_reg_size
         - ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4));
      cfun->machine->frame.fp_sp_offset = offset;
      cfun->machine->frame.fp_save_offset = offset - total_size;
    }
  else
    {
      cfun->machine->frame.fp_sp_offset = 0;
      cfun->machine->frame.fp_save_offset = 0;
    }


  return total_size;
}





int
mips_initial_elimination_offset (from, to)
     int from, to;
{
  int offset;


  switch (from)
    {
    case (0 + 1):
      offset = 0;
      break;

    case 0:
      compute_frame_size (get_frame_size ());
      offset = cfun->machine->frame.total_size;
      if (mips_abi == 1 || mips_abi == 2 || mips_abi == 5)
 offset -= (cfun->pretend_args_size);
      break;

    case 75:
      compute_frame_size (get_frame_size ());
      offset = cfun->machine->frame.gp_sp_offset;
      if (((target_flags & 0x00010000) != 0))
 offset += ((target_flags & 0x00002000) ? 8 : 4) - (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8);
      break;

    default:
      fancy_abort ("../../../kgccfe/gnu/mips.c", 6911, __FUNCTION__);
    }

  if ((target_flags & 0x00100000) && to == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30))
    offset -= (cfun->outgoing_args_size);

  return offset;
}
# 6934 "../../../kgccfe/gnu/mips.c"
static rtx
mips_add_large_offset_to_sp (offset)
     long long offset;
{
  rtx reg = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (0 + 13));
  rtx offset_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (offset));

  emit_move_insn (reg, offset_rtx);
  if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
    emit_insn (gen_adddi3 (reg, reg, (global_rtl[GR_STACK_POINTER])));
  else
    emit_insn (gen_addsi3 (reg, reg, (global_rtl[GR_STACK_POINTER])));
  return reg;
}




static void
mips_annotate_frame_insn (insn, dwarf_pattern)
     rtx insn, dwarf_pattern;
{
  (((insn))->frame_related) = 1;
  (((insn)->fld[8]).rtx) = alloc_EXPR_LIST (REG_FRAME_RELATED_EXPR,
          dwarf_pattern,
          (((insn)->fld[8]).rtx));
}




static rtx
mips_frame_set (mode, regno, offset)
     enum machine_mode mode;
     int regno;
     int offset;
{
  rtx address = plus_constant_wide (((global_rtl[GR_STACK_POINTER])), (long long) (offset));
  rtx set = gen_rtx_fmt_ee (SET, (mode), (gen_rtx_MEM (mode, address)), (gen_rtx_REG (mode, regno)));


  (((set))->frame_related) = 1;
  return set;
}






static void
mips_emit_frame_related_store (mem, reg, offset)
     rtx mem;
     rtx reg;
     long long offset;
{
  rtx dwarf_expr;

  if (((enum machine_mode) (reg)->mode) == DFmode && ! (target_flags & 0x00000200))
    {




      int regno1 = (target_flags & 0x00010000) ? (((reg)->fld[0]).rtuint) + 1 : (((reg)->fld[0]).rtuint);
      int regno2 = (target_flags & 0x00010000) ? (((reg)->fld[0]).rtuint) : (((reg)->fld[0]).rtuint) + 1;
      rtx set1 = mips_frame_set (SFmode, regno1, offset);
      rtx set2 = mips_frame_set (SFmode, regno2, offset + ((target_flags & 0x00000200) ? 8 : 4));
      dwarf_expr = gen_rtx_fmt_E (PARALLEL, (VOIDmode), (gen_rtvec (2, set1, set2)));
    }
  else
    dwarf_expr = mips_frame_set (((enum machine_mode) (reg)->mode), (((reg)->fld[0]).rtuint), offset);

  mips_annotate_frame_insn (emit_move_insn (mem, reg), dwarf_expr);
}

static void
save_restore_insns (store_p, large_reg, large_offset)
     int store_p;
     rtx large_reg;
     long large_offset;
{
  long mask = cfun->machine->frame.mask;
  long fmask = cfun->machine->frame.fmask;
  long real_mask = mask;
  int regno;
  rtx base_reg_rtx;
  long long base_offset;
  long long gp_offset;
  long long fp_offset;
  long long end_offset;
  rtx insn;

  if (frame_pointer_needed
      && ! (((mask) & (1L << (((target_flags & 0x00100000) ? 0 + 17 : 0 + 30) - 0))) != 0))
    fancy_abort ("../../../kgccfe/gnu/mips.c", 7029, __FUNCTION__);


  if (! store_p
      && (target_flags & 0x00000400)
      && (mips_abi == 0 || mips_abi == 4))
    mask &= ~(1L << ((0 + 28) - 0));

  if (mask == 0 && fmask == 0)
    return;







  if (mask)
    {






      gp_offset = cfun->machine->frame.gp_sp_offset;
      end_offset
 = gp_offset - (cfun->machine->frame.gp_reg_size
         - (mode_size[(int) (gpr_mode)]));

      if (gp_offset < 0 || end_offset < 0)
 internal_error
   ("gp_offset (%ld) or end_offset (%ld) is less than zero",
    (long) gp_offset, (long) end_offset);



      else if ((target_flags & 0x00100000) && large_offset > 32767)
 base_reg_rtx = (global_rtl[GR_STACK_POINTER]), base_offset = large_offset;

      else if (gp_offset < 32768)
 base_reg_rtx = (global_rtl[GR_STACK_POINTER]), base_offset = 0;

      else if (large_reg != 0
        && (unsigned long long) (large_offset - gp_offset) < 32768
        && (unsigned long long) (large_offset - end_offset) < 32768)
 {
   base_reg_rtx = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (0 + 13));
   base_offset = large_offset;
   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     insn = emit_insn (gen_adddi3 (base_reg_rtx, large_reg,
       (global_rtl[GR_STACK_POINTER])));
   else
     insn = emit_insn (gen_addsi3 (base_reg_rtx, large_reg,
       (global_rtl[GR_STACK_POINTER])));
 }
      else
 {
   base_offset = gp_offset;
   base_reg_rtx = mips_add_large_offset_to_sp (base_offset);
 }
# 7098 "../../../kgccfe/gnu/mips.c"
      if ((target_flags & 0x00100000)
   && ! store_p
   && frame_pointer_needed
   && large_offset <= 32767)
 base_offset += (cfun->outgoing_args_size);

      for (regno = 31; regno >= 0; regno--)
 {
   if ((((mask) & (1L << (regno - 0))) != 0))
     {
       rtx reg_rtx;
       rtx mem_rtx
  = gen_rtx (MEM, gpr_mode,
      gen_rtx (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), base_reg_rtx,
        gen_rtx_CONST_INT (VOIDmode, (long long) (gp_offset - base_offset))));

       if (! (cfun->calls_eh_return))
  (((mem_rtx))->unchanging) = 1;




       if ((target_flags & 0x00100000) && ! store_p && regno == 0 + 31)
  reg_rtx = gen_rtx (REG, gpr_mode, 0 + 7);

       else if ((target_flags & 0x00100000)
         && regno != 0 + 31
         && ! (((regno) >= 2 && (regno) <= 7) || (regno) == 16 || (regno) == 17))
  {
    if (! store_p)
      reg_rtx = gen_rtx (REG, gpr_mode, 6);
    else
      {
        reg_rtx = gen_rtx (REG, gpr_mode, 3);
        emit_move_insn (reg_rtx,
          gen_rtx (REG, gpr_mode, regno));
      }
  }
       else
  reg_rtx = gen_rtx (REG, gpr_mode, regno);

       if (store_p)
  mips_emit_frame_related_store (mem_rtx, reg_rtx, gp_offset);
       else
  {
    emit_move_insn (reg_rtx, mem_rtx);
    if ((target_flags & 0x00100000)
        && regno != 0 + 31
        && ! (((regno) >= 2 && (regno) <= 7) || (regno) == 16 || (regno) == 17))
      emit_move_insn (gen_rtx (REG, gpr_mode, regno),
        reg_rtx);
  }
     }


   if ((((real_mask) & (1L << (regno - 0))) != 0))
     gp_offset -= (mode_size[(int) (gpr_mode)]);
 }
    }
  else
    base_reg_rtx = 0, base_offset = 0;


  if (fmask)
    {

      fp_offset = cfun->machine->frame.fp_sp_offset;
      end_offset = fp_offset - (cfun->machine->frame.fp_reg_size
    - ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4)));

      if (fp_offset < 0 || end_offset < 0)
 internal_error
   ("fp_offset (%ld) or end_offset (%ld) is less than zero",
    (long) fp_offset, (long) end_offset);

      else if (fp_offset < 32768)
 base_reg_rtx = (global_rtl[GR_STACK_POINTER]), base_offset = 0;

      else if (base_reg_rtx != 0
        && (unsigned long long) (base_offset - fp_offset) < 32768
        && (unsigned long long) (base_offset - end_offset) < 32768)
 ;

      else if (large_reg != 0
        && (unsigned long long) (large_offset - fp_offset) < 32768
        && (unsigned long long) (large_offset - end_offset) < 32768)
 {
   base_reg_rtx = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (0 + 13));
   base_offset = large_offset;
   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     insn = emit_insn (gen_adddi3 (base_reg_rtx, large_reg,
       (global_rtl[GR_STACK_POINTER])));
   else
     insn = emit_insn (gen_addsi3 (base_reg_rtx, large_reg,
       (global_rtl[GR_STACK_POINTER])));
 }
      else
 {
   base_offset = fp_offset;
   base_reg_rtx = mips_add_large_offset_to_sp (fp_offset);
 }



      for (regno = (63 - ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) + 1);
    regno >= 32;
    regno -= ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2))
 if ((((fmask) & (1L << (regno - 32))) != 0))
   {
     enum machine_mode sz = (target_flags & 0x00020000) ? SFmode : DFmode;
     rtx reg_rtx = gen_rtx (REG, sz, regno);
     rtx mem_rtx = gen_rtx (MEM, sz,
       gen_rtx (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), base_reg_rtx,
         gen_rtx_CONST_INT (VOIDmode, (long long) (fp_offset - base_offset))));

     if (! (cfun->calls_eh_return))
       (((mem_rtx))->unchanging) = 1;

     if (store_p)
       mips_emit_frame_related_store (mem_rtx, reg_rtx, fp_offset);
     else
       emit_move_insn (reg_rtx, mem_rtx);

     fp_offset -= ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4));
   }
    }
}



static void
mips_output_function_prologue (file, size)
     FILE *file;
     long long size __attribute__ ((__unused__));
{



  long long tsize = cfun->machine->frame.total_size;




  if (!(target_flags & 0x00000010))
    mips_output_filename (file, (((current_function_decl)->decl.locus).file));
# 7253 "../../../kgccfe/gnu/mips.c"
  if ((target_flags & 0x00100000) && !(target_flags & 0x00000100)
      && (cfun->args_info).fp_code != 0)
    build_mips16_function_stub (file);

  inside_function = 1;
# 7276 "../../../kgccfe/gnu/mips.c"
  if (!flag_inhibit_size_directive)
    {

      fprintf (file,
        "\t.frame\t%s,%ld,%s\t\t# vars= %ld, regs= %d/%d, args= %d, extra= %ld\n",
        (reg_names[(frame_pointer_needed)
     ? ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30) : (0 + 29)]),
        ((frame_pointer_needed && (target_flags & 0x00100000))
  ? ((long) tsize - (cfun->outgoing_args_size))
  : (long) tsize),
        reg_names[0 + 31],
        cfun->machine->frame.var_size,
        cfun->machine->frame.num_gp,
        cfun->machine->frame.num_fp,
        (cfun->outgoing_args_size),
        cfun->machine->frame.extra_size);


      fprintf (file, "\t.mask\t0x%08lx,%ld\n\t.fmask\t0x%08lx,%ld\n",
        cfun->machine->frame.mask,
        cfun->machine->frame.gp_save_offset,
        cfun->machine->frame.fmask,
        cfun->machine->frame.fp_save_offset);




    }

  if (mips_entry && ! mips_can_use_return_insn ())
    {
      int save16 = (((cfun->machine->frame.mask) & (1L << (16))) != 0);
      int save17 = (((cfun->machine->frame.mask) & (1L << (17))) != 0);
      int save31 = (((cfun->machine->frame.mask) & (1L << (31))) != 0);
      int savearg = 0;
      rtx insn;






      for (insn = get_insns (); insn != (rtx) 0; insn = (((insn)->fld[2]).rtx))
 {
   rtx note, set, src, dest, base, offset;
   int hireg;

   if (((enum rtx_code) (insn)->code) == CODE_LABEL
       || ((enum rtx_code) (insn)->code) == JUMP_INSN
       || ((enum rtx_code) (insn)->code) == CALL_INSN)
     break;
   if (((enum rtx_code) (insn)->code) != INSN)
     continue;
   set = (((insn)->fld[5]).rtx);
   if (((enum rtx_code) (set)->code) != SET)
     continue;



   note = find_reg_note (insn, REG_EQUIV, (rtx) 0);
   if (note == (rtx) 0)
     continue;
   if (! reg_mentioned_p ((global_rtl[GR_ARG_POINTER]), (((note)->fld[0]).rtx)))
     continue;

   src = (((set)->fld[1]).rtx);
   if (((enum rtx_code) (src)->code) != REG
       || (((src)->fld[0]).rtuint) < 0 + 4
       || (((src)->fld[0]).rtuint) > 0 + 7)
     continue;

   dest = (((set)->fld[0]).rtx);
   if (((enum rtx_code) (dest)->code) != MEM)
     continue;
   if ((mode_size[(int) (((enum machine_mode) (dest)->mode))]) == (unsigned) ((target_flags & 0x00002000) ? 8 : 4))
     ;
   else if ((mode_size[(int) (((enum machine_mode) (dest)->mode))]) == (unsigned)2 * ((target_flags & 0x00002000) ? 8 : 4)
     && (((src)->fld[0]).rtuint) < 0 + 7)
     ;
   else
     continue;
   offset = (const_int_rtx[64]);
   base = eliminate_constant_term ((((dest)->fld[0]).rtx), &offset);
   if (((enum rtx_code) (base)->code) != REG
       || ((enum rtx_code) (offset)->code) != CONST_INT)
     continue;
   if ((((base)->fld[0]).rtuint) == (unsigned) (0 + 29)
       && (((offset)->fld[0]).rtwint) == tsize + ((((src)->fld[0]).rtuint) - 4) * ((target_flags & 0x00002000) ? 8 : 4))
     ;
   else if ((((base)->fld[0]).rtuint) == (unsigned) ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)
     && ((((offset)->fld[0]).rtwint)
         == (tsize
      + ((((src)->fld[0]).rtuint) - 4) * ((target_flags & 0x00002000) ? 8 : 4)
      - (cfun->outgoing_args_size))))
     ;
   else
     continue;





   ((insn)->code = (enum rtx_code) (NOTE));
   (((insn)->fld[5]).rtint) = NOTE_INSN_DELETED;
   (((insn)->fld[4]).rtstr) = 0;

   hireg = ((((src)->fld[0]).rtuint)
     + mips_hard_regno_nregs ((((src)->fld[0]).rtuint), ((enum machine_mode) (dest)->mode))
     - 1);
   if (hireg > savearg)
     savearg = hireg;
 }



      if ((cfun->stdarg))
 savearg = 0 + 7;

      fprintf (file, "\tentry\t");
      if (savearg > 0)
 {
   if (savearg == 0 + 4)
     fprintf (file, "%s", reg_names[savearg]);
   else
     fprintf (file, "%s-%s", reg_names[0 + 4],
       reg_names[savearg]);
 }
      if (save16 || save17)
 {
   if (savearg > 0)
     fprintf (file, ",");
   fprintf (file, "%s", reg_names[0 + 16]);
   if (save17)
     fprintf (file, "-%s", reg_names[0 + 17]);
 }
      if (save31)
 {
   if (savearg > 0 || save16 || save17)
     fprintf (file, ",");
   fprintf (file, "%s", reg_names[0 + 31]);
 }
      fprintf (file, "\n");
    }

  if ((target_flags & 0x00000400) && (mips_abi == 0 || mips_abi == 4))
    {
      const char *const sp_str = reg_names[(0 + 29)];

      fprintf (file, "\t.set\tnoreorder\n\t.cpload\t%s\n\t.set\treorder\n",
        reg_names[(0 + 25)]);
      if (tsize > 0)
 {
   fprintf (file, "\t%s\t%s,%s,%ld\n",
     ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? "dsubu" : "subu"),
     sp_str, sp_str, (long) tsize);
   fprintf (file, "\t.cprestore %ld\n", cfun->machine->frame.args_size);
 }

      if (dwarf2out_do_frame ())
 dwarf2out_def_cfa ("", (0 + 29), tsize);
    }
}



void
mips_expand_prologue ()
{
  int regno;
  long long tsize;
  rtx tmp_rtx = 0;
  int last_arg_is_vararg_marker = 0;
  tree fndecl = current_function_decl;
  tree fntype = ((fndecl)->common.type);
  tree fnargs = ((fndecl)->decl.arguments);
  rtx next_arg_reg;
  int i;
  tree next_arg;
  tree cur_arg;
  CUMULATIVE_ARGS args_so_far;
  rtx reg_18_save = (rtx) 0;
  int store_args_on_stack = (mips_abi == 0 || mips_abi == 4)
                            && (! mips_entry || mips_can_use_return_insn ());


  if (aggregate_value_p (((fndecl)->decl.result))
      && ! (cfun->returns_pcc_struct)
      && struct_value_incoming_rtx == 0)
    {
      tree type = build_pointer_type (fntype);
      tree function_result_decl = build_decl (PARM_DECL, (tree) ((void *)0), type);

      ((function_result_decl)->decl.initial) = type;
      ((function_result_decl)->common.chain) = fnargs;
      fnargs = function_result_decl;
    }
# 7481 "../../../kgccfe/gnu/mips.c"
  init_cumulative_args (&args_so_far, fntype, (rtx) 0);
  regno = (0 + 4);

  for (cur_arg = fnargs; cur_arg != 0; cur_arg = next_arg)
    {
      tree passed_type = ((cur_arg)->decl.initial);
      enum machine_mode passed_mode = ((passed_type)->type.mode);
      rtx entry_parm;

      if (((passed_type)->common.addressable_flag))
 {
   passed_type = build_pointer_type (passed_type);
   passed_mode = (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode);
 }

      entry_parm = function_arg( &args_so_far, passed_mode, passed_type, 1);

      function_arg_advance (&args_so_far, passed_mode, passed_type, 1);
      next_arg = ((cur_arg)->common.chain);

      if (entry_parm && store_args_on_stack)
 {
   if (next_arg == 0
       && ((cur_arg)->decl.name)
       && ((0 == strcmp (((char *)(((cur_arg)->decl.name))->identifier.id.str),
    "__builtin_va_alist"))
    || (0 == strcmp (((char *)(((cur_arg)->decl.name))->identifier.id.str),
       "va_alist"))))
     {
       last_arg_is_vararg_marker = 1;
       if (((enum rtx_code) (entry_parm)->code) == REG)
  regno = (((entry_parm)->fld[0]).rtuint);
       else
  regno = ((0 + 4) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1) + 1;
       break;
     }
   else
     regno = (0 + 4) + args_so_far.num_gprs;
 }
      else
 {
   regno = ((0 + 4) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1)+1;
   break;
 }
    }







  next_arg_reg = function_arg( &args_so_far, VOIDmode, global_trees[TI_VOID_TYPE], 1);
  if (next_arg_reg != 0 && ((enum rtx_code) (next_arg_reg)->code) == PARALLEL)
    {
      rtvec adjust = (((next_arg_reg)->fld[0]).rtvec);
      int num = ((adjust)->num_elem);

      for (i = 0; i < num; i++)
 {
   rtx insn, pattern;

   pattern = ((adjust)->elem[i]);
   if (((enum rtx_code) (pattern)->code) != SET
       || ((enum rtx_code) ((((pattern)->fld[1]).rtx))->code) != ASHIFT)
     abort_with_insn (pattern, "insn is not a shift");
   (((((pattern)->fld[1]).rtx))->code = (enum rtx_code) (ASHIFTRT));

   insn = emit_insn (pattern);





   (((insn)->fld[8]).rtx) = gen_rtx_fmt_ee (EXPR_LIST, (REG_MAYBE_DEAD), ((rtx) 0), ((((insn)->fld[8]).rtx)));

 }
    }

  tsize = compute_frame_size (get_frame_size ());



  if (store_args_on_stack
      && ((((fntype)->type.values) != 0
    && (((tree_last (((fntype)->type.values)))->list.value)
        != global_trees[TI_VOID_TYPE]))
   || last_arg_is_vararg_marker))
    {
      int offset = (regno - (0 + 4)) * ((target_flags & 0x00002000) ? 8 : 4);
      rtx ptr = (global_rtl[GR_STACK_POINTER]);


      if ((target_flags & 0x00000400))
 offset += tsize;

      for (; regno <= ((0 + 4) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1); regno++)
 {
   if (offset != 0)
     ptr = gen_rtx (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (global_rtl[GR_STACK_POINTER]), gen_rtx_CONST_INT (VOIDmode, (long long) (offset)));
   emit_move_insn (gen_rtx (MEM, gpr_mode, ptr),
     gen_rtx (REG, gpr_mode, regno));

   offset += (mode_size[(int) (gpr_mode)]);
 }
    }





  if (mips_entry && ! mips_can_use_return_insn ())
    {
      if (tsize > 0 && tsize <= 32 && frame_pointer_needed)
 {
          rtx insn;




   if ((target_flags & 0x00100000) && (cfun->outgoing_args_size) != 0)
     {
       rtx incr = gen_rtx_CONST_INT (VOIDmode, (long long) ((cfun->outgoing_args_size)));
       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  insn = emit_insn (gen_adddi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                              (global_rtl[GR_STACK_POINTER]),
                                              incr));
       else
  insn = emit_insn (gen_addsi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                              (global_rtl[GR_STACK_POINTER]),
                                              incr));
     }
   else if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     insn = emit_insn (gen_movdi ((global_rtl[GR_HARD_FRAME_POINTER]),
      (global_rtl[GR_STACK_POINTER])));
   else
     insn = emit_insn (gen_movsi ((global_rtl[GR_HARD_FRAME_POINTER]),
      (global_rtl[GR_STACK_POINTER])));

          (((insn))->frame_related) = 1;
 }





      if ((target_flags & 0x00100000) && (((cfun->machine->frame.mask) & (1L << (18))) != 0))
 {
   rtx reg_rtx = gen_rtx (REG, gpr_mode, 0 + 3);
   long gp_offset, base_offset;

   gp_offset = cfun->machine->frame.gp_sp_offset;
   if ((((cfun->machine->frame.mask) & (1L << (16))) != 0))
     gp_offset -= ((target_flags & 0x00002000) ? 8 : 4);
   if ((((cfun->machine->frame.mask) & (1L << (17))) != 0))
     gp_offset -= ((target_flags & 0x00002000) ? 8 : 4);
   if ((((cfun->machine->frame.mask) & (1L << (31))) != 0))
     gp_offset -= ((target_flags & 0x00002000) ? 8 : 4);
   if (tsize > 32767)
     base_offset = tsize;
   else
     base_offset = 0;
   start_sequence ();
   emit_move_insn (reg_rtx,
     gen_rtx (REG, gpr_mode, 0 + 18));
   emit_move_insn (gen_rtx (MEM, gpr_mode,
       gen_rtx (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (global_rtl[GR_STACK_POINTER]),
         gen_rtx_CONST_INT (VOIDmode, (long long) (gp_offset - base_offset)))),

     reg_rtx);
   reg_18_save = get_insns ();
   end_sequence ();
 }

      if (tsize > 32)
 tsize -= 32;
      else
 {
   tsize = 0;
   if (reg_18_save != (rtx) 0)
     emit_insn (reg_18_save);
 }
    }

  if (tsize > 0)
    {
      rtx tsize_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (tsize));




      if ((!(target_flags & 0x00000400) || (mips_abi != 0 && mips_abi != 4))
   && (!(target_flags & 0x00100000) || tsize <= 32767))
 {
   rtx adjustment_rtx, insn, dwarf_pattern;

   if (tsize > 32767)
     {
       adjustment_rtx = gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (0 + 12));
       emit_move_insn (adjustment_rtx, tsize_rtx);
     }
   else
     adjustment_rtx = tsize_rtx;

   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     insn = emit_insn (gen_subdi3 ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_STACK_POINTER]),
       adjustment_rtx));
   else
     insn = emit_insn (gen_subsi3 ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_STACK_POINTER]),
       adjustment_rtx));

   dwarf_pattern = gen_rtx_fmt_ee (SET, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ((global_rtl[GR_STACK_POINTER])), (plus_constant_wide (((global_rtl[GR_STACK_POINTER])), (long long) (-tsize))));



   mips_annotate_frame_insn (insn, dwarf_pattern);
 }

      if (! mips_entry)
 save_restore_insns (1, tmp_rtx, tsize);
      else if (reg_18_save != (rtx) 0)
 emit_insn (reg_18_save);

      if ((!(target_flags & 0x00000400) || (mips_abi != 0 && mips_abi != 4))
   && (target_flags & 0x00100000)
   && tsize > 32767)
 {
   rtx reg_rtx;

   if (!frame_pointer_needed)
     fancy_abort ("../../../kgccfe/gnu/mips.c", 7711, __FUNCTION__);

   reg_rtx = gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 3);
     emit_move_insn ((global_rtl[GR_HARD_FRAME_POINTER]), (global_rtl[GR_STACK_POINTER]));
     emit_move_insn (reg_rtx, tsize_rtx);
     if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     emit_insn (gen_subdi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
       (global_rtl[GR_HARD_FRAME_POINTER]),
       reg_rtx));
   else
     emit_insn (gen_subsi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
       (global_rtl[GR_HARD_FRAME_POINTER]),
       reg_rtx));
   emit_move_insn ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_HARD_FRAME_POINTER]));
 }

      if (frame_pointer_needed)
 {
          rtx insn = 0;





   if ((! (target_flags & 0x00000400) || (mips_abi != 0 && mips_abi != 4))
       && (target_flags & 0x00100000)
       && tsize > 32767)
     {



       if ((cfun->outgoing_args_size) != 0)
  {
    rtx incr = gen_rtx_CONST_INT (VOIDmode, (long long) ((cfun->outgoing_args_size)));
    if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
      insn = emit_insn (gen_adddi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                                  (global_rtl[GR_HARD_FRAME_POINTER]),
                                                  incr));
    else
      insn = emit_insn (gen_addsi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                                  (global_rtl[GR_HARD_FRAME_POINTER]),
                                                  incr));
  }
     }
   else if ((target_flags & 0x00100000) && (cfun->outgoing_args_size) != 0)
     {
       rtx incr = gen_rtx_CONST_INT (VOIDmode, (long long) ((cfun->outgoing_args_size)));
       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  insn = emit_insn (gen_adddi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                              (global_rtl[GR_STACK_POINTER]),
                                              incr));
       else
  insn = emit_insn (gen_addsi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
                                              (global_rtl[GR_STACK_POINTER]),
                                              incr));
     }
   else if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     insn = emit_insn (gen_movdi ((global_rtl[GR_HARD_FRAME_POINTER]),
      (global_rtl[GR_STACK_POINTER])));
   else
     insn = emit_insn (gen_movsi ((global_rtl[GR_HARD_FRAME_POINTER]),
      (global_rtl[GR_STACK_POINTER])));

   if (insn)
     (((insn))->frame_related) = 1;
 }

      if ((target_flags & 0x00000400) && (mips_abi != 0 && mips_abi != 4))
 emit_insn (gen_loadgp ((((((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl)))->fld[0]).rtx),
          gen_rtx_REG (DImode, 25)));
    }




  if ((cfun->profile))
    emit_insn (gen_blockage ());
}







static void
mips_output_function_epilogue (file, size)
     FILE *file __attribute__ ((__unused__));
     long long size __attribute__ ((__unused__));
{
  const char *fnname = "";
  rtx string;
# 7818 "../../../kgccfe/gnu/mips.c"
  if ((target_flags & 0x00000040))
    {
      int num_gp_regs = cfun->machine->frame.gp_reg_size / 4;
      int num_fp_regs = cfun->machine->frame.fp_reg_size / 8;
      int num_regs = num_gp_regs + num_fp_regs;
      const char *name = fnname;

      if (name[0] == '*')
 name++;

      dslots_load_total += num_regs;

      fprintf (stderr,
        "%-20s fp=%c leaf=%c alloca=%c setjmp=%c stack=%4ld arg=%3d reg=%2d/%d delay=%3d/%3dL %3d/%3dJ refs=%3d/%3d/%3d",
        name, frame_pointer_needed ? 'y' : 'n',
        (cfun->machine->frame.mask & (((unsigned long)1) << 31)) != 0 ? 'n' : 'y',
        (cfun->calls_alloca) ? 'y' : 'n',
        (cfun->calls_setjmp) ? 'y' : 'n',
        cfun->machine->frame.total_size,
        (cfun->outgoing_args_size), num_gp_regs, num_fp_regs,
        dslots_load_total, dslots_load_filled,
        dslots_jump_total, dslots_jump_filled,
        num_refs[0], num_refs[1], num_refs[2]);

      fputc_unlocked ('\n', stderr);
    }


  inside_function = 0;
  ignore_line_number = 0;
  dslots_load_total = 0;
  dslots_jump_total = 0;
  dslots_load_filled = 0;
  dslots_jump_filled = 0;
  num_refs[0] = 0;
  num_refs[1] = 0;
  num_refs[2] = 0;
  mips_load_reg = 0;
  mips_load_reg2 = 0;

  while (string_constants != ((void *)0))
    {
      struct string_constant *next;

      next = string_constants->next;
      free (string_constants);
      string_constants = next;
    }
# 7874 "../../../kgccfe/gnu/mips.c"
  for (string = mips16_strings; string != 0; string = (((string)->fld[1]).rtx))
    ((((((string)->fld[0]).rtx)))->volatil) = 0;
  free_EXPR_LIST_list (&mips16_strings);




  if (((target_flags & 0x00000008) && ! (target_flags & 0x00000010) && ! (target_flags & 0x00100000)))
    {
      asm_out_file = asm_out_data_file;
      data_section ();
    }
}



void
mips_expand_epilogue ()
{
  long long tsize = cfun->machine->frame.total_size;
  rtx tsize_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (tsize));
  rtx tmp_rtx = (rtx)0;

  if (mips_can_use_return_insn ())
    {
      emit_jump_insn (gen_return ());
      return;
    }

  if (mips_entry && ! mips_can_use_return_insn ())
    tsize -= 32;

  if (tsize > 32767 && ! (target_flags & 0x00100000))
    {
      tmp_rtx = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (0 + 12));
      emit_move_insn (tmp_rtx, tsize_rtx);
      tsize_rtx = tmp_rtx;
    }

  if (tsize > 0)
    {
      long orig_tsize = tsize;

      if (frame_pointer_needed)
 {
   emit_insn (gen_blockage ());





   if ((target_flags & 0x00100000))
     {
       tsize -= (cfun->outgoing_args_size);




       if (orig_tsize > 32767)
  {
    rtx g6_rtx = gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 0 + 6);

    emit_move_insn (g6_rtx, gen_rtx_CONST_INT (VOIDmode, (long long) (tsize)));
    if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
      emit_insn (gen_adddi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
        (global_rtl[GR_HARD_FRAME_POINTER]),
        g6_rtx));
    else
      emit_insn (gen_addsi3 ((global_rtl[GR_HARD_FRAME_POINTER]),
        (global_rtl[GR_HARD_FRAME_POINTER]),
        g6_rtx));
    tsize = 0;
  }

       if (tsize && tsize != orig_tsize)
  tsize_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (tsize));
     }

   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     emit_insn (gen_movdi ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_HARD_FRAME_POINTER])));
   else
     emit_insn (gen_movsi ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_HARD_FRAME_POINTER])));
 }




      else if ((target_flags & 0x00000400) && mips_abi != 0 && mips_abi != 4
        && (cfun->machine->frame.mask
     & (1L << ((0 + 28) - 0))))
 emit_insn (gen_blockage ());

      save_restore_insns (0, tmp_rtx, orig_tsize);





      if (tsize > 32767 && (target_flags & 0x00100000))
 fancy_abort ("../../../kgccfe/gnu/mips.c", 7973, __FUNCTION__);

      if ((cfun->calls_eh_return))
 {
   rtx eh_ofs = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 0 + 3);
   if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
     emit_insn (gen_adddi3 (eh_ofs, eh_ofs, tsize_rtx));
   else
     emit_insn (gen_addsi3 (eh_ofs, eh_ofs, tsize_rtx));
   tsize_rtx = eh_ofs;
 }

      emit_insn (gen_blockage ());

      if (tsize != 0 || (cfun->calls_eh_return))
 {
   if (!(target_flags & 0x00100000))
     {
       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  emit_insn (gen_adddi3 ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_STACK_POINTER]),
           tsize_rtx));
       else
  emit_insn (gen_addsi3 ((global_rtl[GR_STACK_POINTER]), (global_rtl[GR_STACK_POINTER]),
           tsize_rtx));
     }
   else
     {




       rtx g6_rtx = gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 0 + 6);

       if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
  {
    emit_insn (gen_movdi (g6_rtx, (global_rtl[GR_STACK_POINTER])));
    emit_insn (gen_adddi3 (g6_rtx, g6_rtx, tsize_rtx));
    emit_insn (gen_movdi ((global_rtl[GR_STACK_POINTER]), g6_rtx));
  }
       else
  {
    emit_insn (gen_movsi (g6_rtx, (global_rtl[GR_STACK_POINTER])));
    emit_insn (gen_addsi3 (g6_rtx, g6_rtx, tsize_rtx));
    emit_insn (gen_movsi ((global_rtl[GR_STACK_POINTER]), g6_rtx));
  }
     }

 }
    }


  if ((target_flags & 0x00100000) && (cfun->machine->frame.mask & (((unsigned long)1) << 31)) != 0)
    emit_jump_insn (gen_return_internal (gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
        0 + 7)));
  else
    emit_jump_insn (gen_return_internal (gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
        0 + 31)));
}





int
mips_can_use_return_insn ()
{
  tree return_type;

  if (! reload_completed)
    return 0;

  if (regs_ever_live[31] || (cfun->profile))
    return 0;

  return_type = ((current_function_decl)->decl.result);




  if ((target_flags & 0x00100000)
      && mips16_hard_float
      && ! aggregate_value_p (return_type)
      && (mode_class[(int) (((return_type)->decl.mode))]) == MODE_FLOAT
      && (mode_size[(int) (((return_type)->decl.mode))]) <= ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)))
    return 0;

  if (cfun->machine->frame.initialized)
    return cfun->machine->frame.total_size == 0;

  return compute_frame_size (get_frame_size ()) == 0;
}



static int
symbolic_expression_p (x)
     rtx x;
{
  if (((enum rtx_code) (x)->code) == SYMBOL_REF)
    return 1;

  if (((enum rtx_code) (x)->code) == CONST)
    return symbolic_expression_p ((((x)->fld[0]).rtx));

  if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '1')
    return symbolic_expression_p ((((x)->fld[0]).rtx));

  if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == 'c'
      || (rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2')
    return (symbolic_expression_p ((((x)->fld[0]).rtx))
     || symbolic_expression_p ((((x)->fld[1]).rtx)));

  return 0;
}




static void
mips_select_rtx_section (mode, x, align)
     enum machine_mode mode;
     rtx x;
     unsigned long long align;
{
  if ((target_flags & 0x00100000))
    {



      function_section (current_function_decl);
    }
  else if ((target_flags & 0x00008000))
    {


      mergeable_constant_section (mode, align, 0);
    }
  else
    {




      if ((mode_size[(int) (mode)]) <= (unsigned) mips_section_threshold
   && mips_section_threshold > 0)
 sdata_section ();
      else if (flag_pic && symbolic_expression_p (x))
 {
   if (targetm.have_named_sections)
     named_section ((tree) ((void *)0), ".data.rel.ro", 3);
   else
     data_section ();
 }
      else
 mergeable_constant_section (mode, align, 0);
    }
}
# 8146 "../../../kgccfe/gnu/mips.c"
static void
mips_select_section (decl, reloc, align)
     tree decl;
     int reloc;
     unsigned long long align __attribute__ ((__unused__));
{
  int size = int_size_in_bytes (((decl)->common.type));

  if (((target_flags & 0x00004000) || (target_flags & 0x00100000))
      && ((enum tree_code) (decl)->common.code) == STRING_CST
      && !flag_writable_strings)




    text_section ();
  else if ((target_flags & 0x00008000))
    {



      if (((((enum tree_code) (decl)->common.code) == VAR_DECL
     && ((decl)->common.readonly_flag) && !((decl)->common.side_effects_flag)
     && ((decl)->decl.initial)
     && (((decl)->decl.initial) == global_trees[TI_ERROR_MARK]
  || ((((decl)->decl.initial))->common.constant_flag)))

    || (((enum tree_code) (decl)->common.code) != VAR_DECL
        && (((enum tree_code) (decl)->common.code) != STRING_CST
     || !flag_writable_strings)))
   && ! (flag_pic && reloc))
 readonly_data_section ();
      else if (size > 0 && size <= mips_section_threshold)
 sdata_section ();
      else
 data_section ();
    }
  else
    {



      if (size > 0 && size <= mips_section_threshold)
 sdata_section ();
      else if (((((enum tree_code) (decl)->common.code) == VAR_DECL
   && ((decl)->common.readonly_flag) && !((decl)->common.side_effects_flag)
   && ((decl)->decl.initial)
   && (((decl)->decl.initial) == global_trees[TI_ERROR_MARK]
       || ((((decl)->decl.initial))->common.constant_flag)))

  || (((enum tree_code) (decl)->common.code) != VAR_DECL
      && (((enum tree_code) (decl)->common.code) != STRING_CST
   || !flag_writable_strings)))
        && ! (flag_pic && reloc))
 readonly_data_section ();
      else
 data_section ();
    }
}
# 8233 "../../../kgccfe/gnu/mips.c"
static void
mips_encode_section_info (decl, first)
     tree decl;
     int first;
{
  if ((target_flags & 0x00100000))
    {
      if (first && ((enum tree_code) (decl)->common.code) == STRING_CST
   && ! flag_writable_strings
# 8253 "../../../kgccfe/gnu/mips.c"
   && (! current_function_decl
       || ! ((current_function_decl)->decl.transparent_union)))
 {
   rtx symref;

   symref = (((((decl)->real_cst.rtl))->fld[0]).rtx);
   mips16_strings = alloc_EXPR_LIST (0, symref, mips16_strings);
   (((symref))->volatil) = 1;
   mips_string_length += ((decl)->string.length);
 }
    }

  if ((target_flags & 0x00008000)
      && (((enum tree_code) (decl)->common.code) == VAR_DECL
   && ((decl)->common.readonly_flag) && !((decl)->common.side_effects_flag))
      && (!((decl)->decl.initial)
   || ((((decl)->decl.initial))->common.constant_flag)))
    {
      ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx)))->volatil) = 0;
    }

  else if ((target_flags & 0x00004000))
    {
      if (((enum tree_code) (decl)->common.code) == VAR_DECL)
 ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx)))->volatil) = 1;
      else if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL)
 ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx)))->volatil) = 0;
      else if (((enum tree_code) (decl)->common.code) == STRING_CST
        && ! flag_writable_strings)
 ((((((((decl)->real_cst.rtl))->fld[0]).rtx)))->volatil) = 0;
      else
 ((((((((decl)->real_cst.rtl))->fld[0]).rtx)))->volatil) = 1;
    }

  else if (((enum tree_code) (decl)->common.code) == VAR_DECL
    && ((decl)->decl.section_name) != (tree) ((void *)0)
    && (0 == strcmp (((((decl)->decl.section_name))->string.pointer),
       ".sdata")
        || 0 == strcmp (((((decl)->decl.section_name))->string.pointer),
          ".sbss")))
    {
      ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx)))->volatil) = 1;
    }




  else if ((target_flags & 0x00000008) && ((enum tree_code) (decl)->common.code) == VAR_DECL
    && ((decl)->decl.section_name) == (tree) ((void *)0)
    && ! ((target_flags & 0x00100000) && ((decl)->common.public_flag)
   && (((decl)->decl.common_flag)
       || ((decl)->decl.transparent_union)
       || ((decl)->decl.weak_flag))))
    {
      int size = int_size_in_bytes (((decl)->common.type));

      if (size > 0 && size <= mips_section_threshold)
 ((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx)))->volatil) = 1;
    }

}




rtx
mips_function_value (valtype, func, mode)
     tree valtype;
     tree func __attribute__ ((__unused__));
     enum machine_mode mode;
{
  int reg = (0 + 2);
  enum mode_class mclass;
  int unsignedp = 1;

  if (valtype)
    {
      mode = ((valtype)->type.mode);
      unsignedp = ((valtype)->common.unsigned_flag);



      mode = promote_mode (valtype, mode, &unsignedp, 1);
    }
  mclass = (mode_class[(int) (mode)]);

  if (mclass == MODE_FLOAT && (mode_size[(int) (mode)]) <= ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4)))
    reg = (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0));

  else if (mclass == MODE_FLOAT && mode == TFmode)



    return gen_rtx_fmt_E (PARALLEL, (VOIDmode), (gen_rtvec (2, gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (DImode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)))), (gen_rtx_CONST_INT (VOIDmode, (long long) (0)))), gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (DImode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)) + 2)), (gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (mode)]) / 2)))))));
# 8357 "../../../kgccfe/gnu/mips.c"
  else if (mclass == MODE_COMPLEX_FLOAT
    && (mode_size[(int) (mode)]) <= ((target_flags & 0x00000100) ? 0 : ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) * ((target_flags & 0x00000200) ? 8 : 4)) * 2)
    {
      enum machine_mode cmode = inner_mode_array[(int) (mode)];

      return gen_rtx_fmt_E (PARALLEL, (VOIDmode), (gen_rtvec (2, gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (cmode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)))), (gen_rtx_CONST_INT (VOIDmode, (long long) (0)))), gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (cmode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)) + ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2))), (gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_size[(int) (cmode)]))))))));
# 8371 "../../../kgccfe/gnu/mips.c"
    }

  else if (valtype && ((enum tree_code) (valtype)->common.code) == RECORD_TYPE
    && mips_abi != 0
    && mips_abi != 4
    && mips_abi != 3)
    {


      tree field, fields[2];
      int i;

      for (i = 0, field = ((valtype)->type.values); field;
    field = ((field)->common.chain))
 {
   if (((enum tree_code) (field)->common.code) != FIELD_DECL)
     continue;

   if (((enum tree_code) (((field)->common.type))->common.code) != REAL_TYPE || i >= 2)
     break;

   fields[i++] = field;
 }


      if (! field)
 {
   if (i == 1)
     {



       enum machine_mode field_mode = ((((fields[0])->common.type))->type.mode);

       return gen_rtx_fmt_E (PARALLEL, (mode), (gen_rtvec (1, gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (field_mode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)))), ((const_int_rtx[64]))))));






     }

   else if (i == 2)
     {
       enum machine_mode first_mode
  = ((((fields[0])->common.type))->type.mode);
       enum machine_mode second_mode
  = ((((fields[1])->common.type))->type.mode);
       long long first_offset = int_byte_position (fields[0]);
       long long second_offset = int_byte_position (fields[1]);

       return gen_rtx_fmt_E (PARALLEL, (mode), (gen_rtvec (2, gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (first_mode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)))), (gen_rtx_CONST_INT (VOIDmode, (long long) (first_offset)))), gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (gen_rtx_REG (second_mode, (((target_flags & 0x00000100)) ? (0 + 2) : (32 + 0)) + 2)), (gen_rtx_CONST_INT (VOIDmode, (long long) (second_offset)))))));
# 8434 "../../../kgccfe/gnu/mips.c"
     }
 }
    }

  return gen_rtx_REG (mode, reg);
}




int
function_arg_pass_by_reference (cum, mode, type, named)
     const CUMULATIVE_ARGS *cum;
     enum machine_mode mode;
     tree type;
     int named __attribute__ ((__unused__));
{
  int size;

  if (mips_abi == 0 || mips_abi == 4)
    return 0;
# 8465 "../../../kgccfe/gnu/mips.c"
  if (cum && ((type) != 0 && (((enum tree_code) (((type)->type.size))->common.code) != INTEGER_CST || ((type)->common.addressable_flag) || ((mode) == BLKmode && mips_abi != 0 && mips_abi != 4 && ! ((type) != 0 && ((enum tree_code) (((type)->type.size))->common.code) == INTEGER_CST && 0 == (int_size_in_bytes (type) % (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8))) && ((! ((target_flags & 0x00010000) != 0) ? upward : (((mode) == BLKmode ? ((type) && ((enum tree_code) (((type)->type.size))->common.code) == INTEGER_CST && int_size_in_bytes (type) < (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)) : ((mode_bitsize[(int) (mode)]) < ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && (mips_abi == 0 || mips_abi == 4 || mips_abi == 3 || (mode_class[(int) (mode)]) == MODE_INT))) ? downward : upward)) == (((target_flags & 0x00010000) != 0) ? upward : downward)))))
      && mips_abi != 5
      && function_arg( &*cum, mode, type, named) != 0)
    return 1;


  if (mips_abi != 3)
    return 0;


  if (type == (tree) ((void *)0) || mode == DImode || mode == DFmode)
    return 0;

  size = int_size_in_bytes (type);
  return size == -1 || size > ((target_flags & 0x00002000) ? 8 : 4);
}
# 8499 "../../../kgccfe/gnu/mips.c"
_Bool
mips_cannot_change_mode_class (from, to, class)
     enum machine_mode from, to;
     enum reg_class class;
{
  if ((mode_size[(int) (from)]) != (mode_size[(int) (to)]))
    {
      if ((target_flags & 0x00010000))
 return reg_classes_intersect_p (FP_REGS, class);
      if ((target_flags & 0x00000200))
 return reg_classes_intersect_p (HI_AND_FP_REGS, class);
      return reg_classes_intersect_p (HI_REG, class);
    }
  return 0;
}







enum reg_class
mips_secondary_reload_class (class, mode, x, in_p)
     enum reg_class class;
     enum machine_mode mode;
     rtx x;
     int in_p;
{
  enum reg_class gr_regs = (target_flags & 0x00100000) ? M16_REGS : GR_REGS;
  int regno = -1;
  int gp_reg_p;

  if (((enum rtx_code) (x)->code) == SIGN_EXTEND)
    {
      int off = 0;

      x = (((x)->fld[0]).rtx);



      if (reg_renumber)
 regno = true_regnum (x);
      else
 {
   while (((enum rtx_code) (x)->code) == SUBREG)
     {
       off += subreg_regno_offset (((((((x)->fld[0]).rtx))->fld[0]).rtuint),
       ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
       (((x)->fld[1]).rtuint),
       ((enum machine_mode) (x)->mode));
       x = (((x)->fld[0]).rtx);
     }

   if (((enum rtx_code) (x)->code) == REG)
     regno = (((x)->fld[0]).rtuint) + off;
 }





      if (((unsigned int) ((int) (regno) - 32) < (63 - 32 + 1)))
 return (class == GR_REGS ? NO_REGS : GR_REGS);



      if (class == FP_REGS)
 return (((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1)) ? NO_REGS : GR_REGS);
    }

  else if (((enum rtx_code) (x)->code) == REG || ((enum rtx_code) (x)->code) == SUBREG)
    regno = true_regnum (x);

  gp_reg_p = (target_flags & 0x00100000) ? (((regno) >= 2 && (regno) <= 7) || (regno) == 16 || (regno) == 17) : ((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1));




  if (class == HILO_REG && regno != 0 + 0)
    return ((! in_p
      && gp_reg_p
      && (mode_size[(int) (mode)]) <= (mode_size[(int) (SImode)]))
     ? NO_REGS : gr_regs);
  else if (regno == (64 + 2))
    return ((in_p
      && class == gr_regs
      && (mode_size[(int) (mode)]) <= (mode_size[(int) (SImode)]))
     ? NO_REGS : gr_regs);



  if (class == HI_REG || class == LO_REG || class == MD_REGS)
    {
      if ((target_flags & 0x00100000) && in_p)
 {

   return M16_REGS;
 }
      return gp_reg_p ? NO_REGS : gr_regs;
    }
  if (((unsigned int) ((int) (regno) - 64) < (66 - 64 + 1)))
    {
      if ((target_flags & 0x00100000) && ! in_p)
 {

   return M16_REGS;
 }
      return class == gr_regs ? NO_REGS : gr_regs;
    }





  if (class == ST_REGS)
    {
      if (in_p)
 return FP_REGS;
      return ((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1)) ? NO_REGS : GR_REGS;
    }
  if (((unsigned int) ((int) (regno) - 67) < (74 - 67 + 1)))
    {
      if (! in_p)
 return FP_REGS;
      return class == GR_REGS ? NO_REGS : GR_REGS;
    }

  if (class == FP_REGS)
    {
      if (((enum rtx_code) (x)->code) == MEM)
 {

   return NO_REGS;
 }
      else if ((((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX) && (mode_class[(int) (mode)]) == MODE_FLOAT)
 {



   return NO_REGS;
 }
      else if (((unsigned int) ((int) (regno) - 0) < (31 - 0 + 1)) || x == (const_tiny_rtx[0][(int) (mode)]))
 {

   return NO_REGS;
 }
      else if (((unsigned int) ((int) (regno) - 32) < (63 - 32 + 1)))
 {

   return NO_REGS;
 }
      else
 {

   return GR_REGS;
 }
    }



  if ((target_flags & 0x00100000))
    {
      if (class != M16_REGS && class != M16_NA_REGS)
 {
   if (gp_reg_p)
     return NO_REGS;
   return M16_REGS;
 }
      if (! gp_reg_p)
 {







   if (((enum rtx_code) (x)->code) == PLUS && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
       && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == REG
       && ((((x)->fld[0]).rtx) == (global_rtl[GR_STACK_POINTER])
    || (((x)->fld[1]).rtx) == (global_rtl[GR_STACK_POINTER])))
     return (class == M16_REGS ? M16_NA_REGS : M16_REGS);

   if (class == M16_REGS || class == M16_NA_REGS)
     return NO_REGS;
   return M16_REGS;
 }
    }

  return NO_REGS;
}




int
mips_class_max_nregs (class, mode)
     enum reg_class class;
     enum machine_mode mode;
{
  if (class == FP_REGS)
    return ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2);
  else
    return ((mode_size[(int) (mode)]) + ((target_flags & 0x00002000) ? 8 : 4) - 1) / ((target_flags & 0x00002000) ? 8 : 4);
}





rtx
mips16_gp_pseudo_reg ()
{
  if (cfun->machine->mips16_gp_pseudo_rtx == (rtx) 0)
    {
      rtx const_gp;
      rtx insn, scan;

      cfun->machine->mips16_gp_pseudo_rtx = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
      (((cfun->machine->mips16_gp_pseudo_rtx))->unchanging) = 1;



      const_gp = gen_rtx (CONST, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
     gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 0 + 28));

      start_sequence ();
      emit_move_insn (cfun->machine->mips16_gp_pseudo_rtx,
        const_gp);
      insn = get_insns ();
      end_sequence ();

      push_topmost_sequence ();


      for (scan = get_insns (); scan != (rtx) 0; scan = (((scan)->fld[2]).rtx))
 if (((enum rtx_code) (scan)->code) == NOTE
     && (((scan)->fld[5]).rtint) == NOTE_INSN_FUNCTION_BEG)
   break;
      if (scan == (rtx) 0)
 scan = get_insns ();
      insn = emit_insn_after (insn, scan);
      pop_topmost_sequence ();
    }

  return cfun->machine->mips16_gp_pseudo_rtx;
}





rtx
mips16_gp_offset (sym)
     rtx sym;
{
  tree gp;

  if (((enum rtx_code) (sym)->code) != SYMBOL_REF
      || ! (((sym))->volatil))
    fancy_abort ("../../../kgccfe/gnu/mips.c", 8760, __FUNCTION__);



  gp = (__builtin_constant_p ("__mips16_gp_value") ? get_identifier_with_length (("__mips16_gp_value"), (unsigned) strlen ("__mips16_gp_value")) : (get_identifier) ("__mips16_gp_value"));

  return gen_rtx (CONST, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
    gen_rtx (MINUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), sym,
      gen_rtx (SYMBOL_REF, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
        ((char *)(gp)->identifier.id.str))));
}




int
mips16_gp_offset_p (x)
     rtx x;
{
  if (((enum rtx_code) (x)->code) == CONST)
    x = (((x)->fld[0]).rtx);


  if (((enum rtx_code) (x)->code) == PLUS)
    {
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
 return mips16_gp_offset_p ((((x)->fld[0]).rtx));
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT
   && ((unsigned long long) (((((((x)->fld[0]).rtx))->fld[0]).rtwint) + 0x8000) < 0x10000))
 return mips16_gp_offset_p ((((x)->fld[1]).rtx));
      return 0;
    }


  return (((enum rtx_code) (x)->code) == MINUS
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF
   && ((((((x)->fld[0]).rtx)))->volatil)
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SYMBOL_REF
   && strcmp (((((((x)->fld[1]).rtx))->fld[0]).rtstr), "__mips16_gp_value") == 0);
}





static void
mips16_output_gp_offset (file, x)
     FILE *file;
     rtx x;
{
  if (((enum rtx_code) (x)->code) == CONST)
    x = (((x)->fld[0]).rtx);

  if (((enum rtx_code) (x)->code) == PLUS)
    {
      mips16_output_gp_offset (file, (((x)->fld[0]).rtx));
      fputs_unlocked ("+", file);
      mips16_output_gp_offset (file, (((x)->fld[1]).rtx));
      return;
    }

  if (((enum rtx_code) (x)->code) == MINUS
      && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SYMBOL_REF
      && strcmp (((((((x)->fld[1]).rtx))->fld[0]).rtstr), "__mips16_gp_value") == 0)
    {
      mips16_output_gp_offset (file, (((x)->fld[0]).rtx));
      return;
    }

  output_addr_const (file, x);
}
# 8846 "../../../kgccfe/gnu/mips.c"
int
mips16_constant_after_function_p (x)
     tree x;
{
  if (((enum tree_code) (x)->common.code) == STRING_CST
      && ! flag_writable_strings
      && current_function_decl != 0
      && ! ((current_function_decl)->decl.defer_output)
      && ! (((current_function_decl)->decl.inline_flag)
     && ((! ((current_function_decl)->common.public_flag)
   && ! ((current_function_decl)->common.addressable_flag)
   && ! flag_keep_inline_functions)
  || ((current_function_decl)->decl.external_flag))))
    {
      struct string_constant *n;

      n = (struct string_constant *) xmalloc (sizeof *n);
      n->label = ((((((((x)->real_cst.rtl))->fld[0]).rtx))->fld[0]).rtstr);
      n->next = string_constants;
      string_constants = n;

      return 1;
    }

  return 0;
}






int
mips16_constant (x, mode, addr, addend)
     rtx x;
     enum machine_mode mode;
     int addr;
     int addend;
{
  while (((enum rtx_code) (x)->code) == CONST)
    x = (((x)->fld[0]).rtx);

  switch (((enum rtx_code) (x)->code))
    {
    default:
      return 0;

    case PLUS:
      return (mips16_constant ((((x)->fld[0]).rtx), mode, addr, 1)
       && mips16_constant ((((x)->fld[1]).rtx), mode, addr, 1));

    case SYMBOL_REF:
      if (addr && (mode_size[(int) (mode)]) != 4 && (mode_size[(int) (mode)]) != 8)
 return 0;
      if ((((x))->unchanging))
 return 1;






      if (! addr
   && ! addend
   && (((x))->volatil)
   && mode == (enum machine_mode) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
 return 1;






      if ((((x))->volatil))
 {
   const char *name = (((x)->fld[0]).rtstr);

   return (name[0] == '*'
    && strncmp (name + 1, "$",
         sizeof "$" - 1) == 0);
 }

      return 0;

    case LABEL_REF:
      if (addr && (mode_size[(int) (mode)]) != 4 && (mode_size[(int) (mode)]) != 8)
 return 0;
      return 1;

    case CONST_INT:
      if (addr && ! addend)
 return 0;
      return (((x)->fld[0]).rtwint) > - 0x10000 && (((x)->fld[0]).rtwint) <= 0xffff;

    case REG:


      return (((x)->fld[0]).rtuint) == 0 + 28;
    }
}







static void
mips16_fp_args (file, fp_code, from_fp_p)
     FILE *file;
     int fp_code;
     int from_fp_p;
{
  const char *s;
  int gparg, fparg;
  unsigned int f;


  if (mips_abi != 0 && mips_abi != 4)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 8965, __FUNCTION__);

  if (from_fp_p)
    s = "mfc1";
  else
    s = "mtc1";
  gparg = (0 + 4);
  fparg = (32 + 12);
  for (f = (unsigned int) fp_code; f != 0; f >>= 2)
    {
      if ((f & 3) == 1)
 {
   if ((fparg & 1) != 0)
     ++fparg;
   fprintf (file, "\t%s\t%s,%s\n", s,
     reg_names[gparg], reg_names[fparg]);
 }
      else if ((f & 3) == 2)
 {
   if ((target_flags & 0x00002000))
     fprintf (file, "\td%s\t%s,%s\n", s,
       reg_names[gparg], reg_names[fparg]);
   else
     {
       if ((fparg & 1) != 0)
  ++fparg;
       if ((target_flags & 0x00010000))
  fprintf (file, "\t%s\t%s,%s\n\t%s\t%s,%s\n", s,
    reg_names[gparg], reg_names[fparg + 1], s,
    reg_names[gparg + 1], reg_names[fparg]);
       else
  fprintf (file, "\t%s\t%s,%s\n\t%s\t%s,%s\n", s,
    reg_names[gparg], reg_names[fparg], s,
    reg_names[gparg + 1], reg_names[fparg + 1]);
       ++gparg;
       ++fparg;
     }
 }
      else
 fancy_abort ("../../../kgccfe/gnu/mips.c", 9004, __FUNCTION__);

      ++gparg;
      ++fparg;
    }
}






static void
build_mips16_function_stub (file)
     FILE *file;
{
  const char *fnname;
  char *secname, *stubname;
  tree stubid, stubdecl;
  int need_comma;
  unsigned int f;

  fnname = ((((((((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl)))->fld[0]).rtx))->fld[0]).rtstr);
  secname = (char *) __builtin_alloca(strlen (fnname) + 20);
  sprintf (secname, ".mips16.fn.%s", fnname);
  stubname = (char *) __builtin_alloca(strlen (fnname) + 20);
  sprintf (stubname, "__fn_stub_%s", fnname);
  stubid = (__builtin_constant_p (stubname) ? get_identifier_with_length ((stubname), (unsigned) strlen (stubname)) : (get_identifier) (stubname));
  stubdecl = build_decl (FUNCTION_DECL, stubid,
    build_function_type (global_trees[TI_VOID_TYPE], (tree) ((void *)0)));
  ((stubdecl)->decl.section_name) = build_string (strlen (secname), secname);

  fprintf (file, "\t# Stub function for %s (", (cfun->name));
  need_comma = 0;
  for (f = (unsigned int) (cfun->args_info).fp_code; f != 0; f >>= 2)
    {
      fprintf (file, "%s%s",
        need_comma ? ", " : "",
        (f & 3) == 1 ? "float" : "double");
      need_comma = 1;
    }
  fprintf (file, ")\n");

  fprintf (file, "\t.set\tnomips16\n");
  function_section (stubdecl);
  fprintf (file, "\t.align\t%d\n", (floor_log2_wide ((unsigned long long) (32 / 8))));
# 9059 "../../../kgccfe/gnu/mips.c"
  assemble_name (file, stubname);
  fputs_unlocked (":\n", file);


  fprintf (file, "\t.set\tnoreorder\n");

  mips16_fp_args (file, (cfun->args_info).fp_code, 1);

  fprintf (asm_out_file, "\t.set\tnoat\n");
  fprintf (asm_out_file, "\tla\t%s,", reg_names[0 + 1]);
  assemble_name (file, fnname);
  fprintf (file, "\n");
  fprintf (asm_out_file, "\tjr\t%s\n", reg_names[0 + 1]);
  fprintf (asm_out_file, "\t.set\tat\n");






  fprintf (file, "\tnop\n");

  fprintf (file, "\t.set\treorder\n");







  fprintf (file, "\t.set\tmips16\n");

  function_section (current_function_decl);
}




struct mips16_stub
{
  struct mips16_stub *next;
  char *name;
  int fpret;
};

static struct mips16_stub *mips16_stubs;
# 9123 "../../../kgccfe/gnu/mips.c"
int
build_mips16_call_stub (retval, fnmem, arg_size, fp_code)
     rtx retval;
     rtx fnmem;
     rtx arg_size;
     int fp_code;
{
  int fpret;
  rtx fn;
  const char *fnname;
  char *secname, *stubname;
  struct mips16_stub *l;
  tree stubid, stubdecl;
  int need_comma;
  unsigned int f;



  if (! (target_flags & 0x00100000) || ! mips16_hard_float)
    return 0;



  fpret = (retval != 0
    && (mode_class[(int) (((enum machine_mode) (retval)->mode))]) == MODE_FLOAT
    && (mode_size[(int) (((enum machine_mode) (retval)->mode))]) <= ((target_flags & 0x00000100) ? 0 : ((mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8)));




  if (fp_code == 0 && ! fpret)
    return 0;

  if (((enum rtx_code) (fnmem)->code) != MEM)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 9157, __FUNCTION__);
  fn = (((fnmem)->fld[0]).rtx);



  if (((enum rtx_code) (fn)->code) == SYMBOL_REF
      && strncmp ((((fn)->fld[0]).rtstr), "__mips16_", 9) == 0)
    return 0;



  if (mips_abi != 0 && mips_abi != 4)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 9169, __FUNCTION__);



  if (fpret && ((enum machine_mode) (retval)->mode) != SFmode && ((enum machine_mode) (retval)->mode) != DFmode)
    fancy_abort ("../../../kgccfe/gnu/mips.c", 9174, __FUNCTION__);






  if (((enum rtx_code) (fn)->code) != SYMBOL_REF)
    {
      char buf[30];
      tree id;
      rtx stub_fn, stub_mem, insn;




      sprintf (buf, "__mips16_call_stub_%s%d",
        (fpret
  ? (((enum machine_mode) (retval)->mode) == SFmode ? "sf_" : "df_")
  : ""),
        fp_code);
      id = (__builtin_constant_p (buf) ? get_identifier_with_length ((buf), (unsigned) strlen (buf)) : (get_identifier) (buf));
      stub_fn = gen_rtx (SYMBOL_REF, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), ((char *)(id)->identifier.id.str));
      stub_mem = gen_rtx (MEM, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), stub_fn);

      emit_move_insn (gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 2), fn);

      if (retval == (rtx) 0)
 insn = gen_call_internal0 (stub_mem, arg_size,
       gen_rtx (REG, SImode,
         0 + 31));
      else
 insn = gen_call_value_internal0 (retval, stub_mem, arg_size,
      gen_rtx (REG, SImode,
        0 + 31));
      insn = emit_call_insn (insn);


      if (((enum rtx_code) (insn)->code) != CALL_INSN)
 fancy_abort ("../../../kgccfe/gnu/mips.c", 9213, __FUNCTION__);
      (((insn)->fld[9]).rtx) =
 gen_rtx (EXPR_LIST, VOIDmode,
   gen_rtx (USE, VOIDmode, gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), 2)),
   (((insn)->fld[9]).rtx));






      if (fpret)
 (((insn)->fld[9]).rtx) =
   gen_rtx (EXPR_LIST, VOIDmode,
     gen_rtx (USE, VOIDmode, gen_rtx (REG, word_mode, 18)),
     (((insn)->fld[9]).rtx));



      return 1;
    }




  fnname = (((fn)->fld[0]).rtstr);
  for (l = mips16_stubs; l != ((void *)0); l = l->next)
    if (strcmp (l->name, fnname) == 0)
      break;

  if (l == ((void *)0))
    {
# 9264 "../../../kgccfe/gnu/mips.c"
      secname = (char *) __builtin_alloca(strlen (fnname) + 40);
      sprintf (secname, ".mips16.call.%s%s",
        fpret ? "fp." : "",
        fnname);
      stubname = (char *) __builtin_alloca(strlen (fnname) + 20);
      sprintf (stubname, "__call_stub_%s%s",
        fpret ? "fp_" : "",
        fnname);
      stubid = (__builtin_constant_p (stubname) ? get_identifier_with_length ((stubname), (unsigned) strlen (stubname)) : (get_identifier) (stubname));
      stubdecl = build_decl (FUNCTION_DECL, stubid,
        build_function_type (global_trees[TI_VOID_TYPE], (tree) ((void *)0)));
      ((stubdecl)->decl.section_name) = build_string (strlen (secname), secname);

      fprintf (asm_out_file, "\t# Stub function to call %s%s (",
        (fpret
  ? (((enum machine_mode) (retval)->mode) == SFmode ? "float " : "double ")
  : ""),
        fnname);
      need_comma = 0;
      for (f = (unsigned int) fp_code; f != 0; f >>= 2)
 {
   fprintf (asm_out_file, "%s%s",
     need_comma ? ", " : "",
     (f & 3) == 1 ? "float" : "double");
   need_comma = 1;
 }
      fprintf (asm_out_file, ")\n");

      fprintf (asm_out_file, "\t.set\tnomips16\n");
      assemble_start_function (stubdecl, stubname);
# 9309 "../../../kgccfe/gnu/mips.c"
      fprintf (asm_out_file, "\t.set\tnoreorder\n");

      mips16_fp_args (asm_out_file, fp_code, 0);

      if (! fpret)
 {
   fprintf (asm_out_file, "\t.set\tnoat\n");
   fprintf (asm_out_file, "\tla\t%s,%s\n", reg_names[0 + 1],
     fnname);
   fprintf (asm_out_file, "\tjr\t%s\n", reg_names[0 + 1]);
   fprintf (asm_out_file, "\t.set\tat\n");





   fprintf (asm_out_file, "\tnop\n");
 }
      else
 {
   fprintf (asm_out_file, "\tmove\t%s,%s\n",
     reg_names[0 + 18], reg_names[0 + 31]);
   fprintf (asm_out_file, "\tjal\t%s\n", fnname);

   fprintf (asm_out_file, "\tnop\n");
   if (((enum machine_mode) (retval)->mode) == SFmode)
     fprintf (asm_out_file, "\tmfc1\t%s,%s\n",
       reg_names[0 + 2], reg_names[32 + 0]);
   else
     {
       if ((target_flags & 0x00010000))
  {
    fprintf (asm_out_file, "\tmfc1\t%s,%s\n",
      reg_names[0 + 2],
      reg_names[32 + 1]);
    fprintf (asm_out_file, "\tmfc1\t%s,%s\n",
      reg_names[0 + 3],
      reg_names[32 + 0]);
  }
       else
  {
    fprintf (asm_out_file, "\tmfc1\t%s,%s\n",
      reg_names[0 + 2],
      reg_names[32 + 0]);
    fprintf (asm_out_file, "\tmfc1\t%s,%s\n",
      reg_names[0 + 3],
      reg_names[32 + 1]);
  }
     }
   fprintf (asm_out_file, "\tj\t%s\n", reg_names[0 + 18]);

   fprintf (asm_out_file, "\tnop\n");
 }

      fprintf (asm_out_file, "\t.set\treorder\n");


      do { if (!flag_inhibit_size_directive) { fputs_unlocked ("\t.end\t", asm_out_file); assemble_name (asm_out_file, stubname); putc_unlocked ('\n', asm_out_file); } } while (0);
# 9375 "../../../kgccfe/gnu/mips.c"
      fprintf (asm_out_file, "\t.set\tmips16\n");


      l = (struct mips16_stub *) xmalloc (sizeof *l);
      l->name = xstrdup (fnname);
      l->fpret = fpret;
      l->next = mips16_stubs;
      mips16_stubs = l;
    }
# 9392 "../../../kgccfe/gnu/mips.c"
  if (fpret && ! l->fpret)
    error ("can not handle inconsistent calls to `%s'", fnname);







  if (l->fpret)
    {
      rtx insn;

      if (retval == (rtx) 0)
 insn = gen_call_internal0 (fnmem, arg_size,
       gen_rtx (REG, SImode,
         0 + 31));
      else
 insn = gen_call_value_internal0 (retval, fnmem, arg_size,
      gen_rtx (REG, SImode,
        0 + 31));
      insn = emit_call_insn (insn);

      if (((enum rtx_code) (insn)->code) != CALL_INSN)
 fancy_abort ("../../../kgccfe/gnu/mips.c", 9416, __FUNCTION__);

      (((insn)->fld[9]).rtx) =
 gen_rtx (EXPR_LIST, VOIDmode,
   gen_rtx (USE, VOIDmode, gen_rtx (REG, word_mode, 18)),
   (((insn)->fld[9]).rtx));



      return 1;
    }


  return 0;
}
# 9445 "../../../kgccfe/gnu/mips.c"
static void
mips16_optimize_gp (first)
     rtx first;
{
  rtx gpcopy, slot, insn;
# 9458 "../../../kgccfe/gnu/mips.c"
  gpcopy = (rtx) 0;
  slot = (rtx) 0;
  for (insn = first; insn != (rtx) 0; insn = next_active_insn (insn))
    {
      rtx set;

      if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 continue;

      set = (((insn)->fld[5]).rtx);





      if (((enum rtx_code) (set)->code) != SET)
 continue;

      if (gpcopy == (rtx) 0
   && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONST
   && ((enum rtx_code) (((((((set)->fld[1]).rtx))->fld[0]).rtx))->code) == REG
   && (((((((((set)->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtuint) == 0 + 28
   && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
   && ((enum machine_mode) ((((set)->fld[0]).rtx))->mode) == (unsigned) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
 gpcopy = (((set)->fld[0]).rtx);
      else if (slot == (rtx) 0
        && gpcopy != (rtx) 0
        && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == MEM
        && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
        && ((((((set)->fld[1]).rtx))->fld[0]).rtuint) == (((gpcopy)->fld[0]).rtuint)
        && ((enum machine_mode) ((((set)->fld[0]).rtx))->mode) == (unsigned) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
 {
   rtx base, offset;

   offset = (const_int_rtx[64]);
   base = eliminate_constant_term (((((((set)->fld[0]).rtx))->fld[0]).rtx), &offset);
   if (((enum rtx_code) (base)->code) == REG
       && ((((base)->fld[0]).rtuint) == (0 + 29)
    || (((base)->fld[0]).rtuint) == (0 + 1)))
     slot = (((set)->fld[0]).rtx);
 }
      else if (gpcopy != (rtx) 0
        && (((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
     || ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == SUBREG)
        && reg_overlap_mentioned_p ((((set)->fld[0]).rtx), gpcopy)
        && (((enum rtx_code) ((((set)->fld[0]).rtx))->code) != REG
     || ((((((set)->fld[0]).rtx))->fld[0]).rtuint) != (((gpcopy)->fld[0]).rtuint)
     || ((enum machine_mode) ((((set)->fld[0]).rtx))->mode) != (unsigned) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)
     || ((((enum rtx_code) ((((set)->fld[1]).rtx))->code) != CONST
   || ((enum rtx_code) (((((((set)->fld[1]).rtx))->fld[0]).rtx))->code) != REG
   || ((((((((((set)->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtuint)
       != 0 + 28))
         && ! rtx_equal_p ((((set)->fld[1]).rtx), slot))))
 break;
      else if (slot != (rtx) 0
        && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == MEM
        && rtx_equal_p ((((set)->fld[0]).rtx), slot)
        && (((enum rtx_code) ((((set)->fld[1]).rtx))->code) != REG
     || ((((((set)->fld[1]).rtx))->fld[0]).rtuint) != (((gpcopy)->fld[0]).rtuint)))
 break;
    }
# 9536 "../../../kgccfe/gnu/mips.c"
  if (insn != (rtx) 0 || gpcopy == (rtx) 0 || slot == (rtx) 0)
    {
      rtx next;



      if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) != SImode)
 return;

      for (insn = first; insn != (rtx) 0; insn = next)
 {
   rtx set1, set2;

   next = insn;
   do
     {
       next = (((next)->fld[2]).rtx);
     }
   while (next != (rtx) 0
   && (((enum rtx_code) (next)->code) == NOTE
       || (((enum rtx_code) (next)->code) == INSN
    && (((enum rtx_code) ((((next)->fld[5]).rtx))->code) == USE
        || ((enum rtx_code) ((((next)->fld[5]).rtx))->code) == CLOBBER))));

   if (next == (rtx) 0)
     break;

   if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
     continue;

   if (! ((rtx_class[(int) (((enum rtx_code) (next)->code))]) == 'i'))
     continue;

   set1 = (((insn)->fld[5]).rtx);
   if (((enum rtx_code) (set1)->code) != SET)
     continue;
   set2 = (((next)->fld[5]).rtx);
   if (((enum rtx_code) (set2)->code) != SET)
     continue;

   if (((enum rtx_code) ((((set1)->fld[0]).rtx))->code) == REG
       && ((enum rtx_code) ((((set1)->fld[1]).rtx))->code) == CONST
       && ((enum rtx_code) (((((((set1)->fld[1]).rtx))->fld[0]).rtx))->code) == REG
       && (((((((((set1)->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtuint) == 0 + 28
       && rtx_equal_p ((((set1)->fld[0]).rtx), (((set2)->fld[0]).rtx))
       && ((enum rtx_code) ((((set2)->fld[1]).rtx))->code) == PLUS
       && rtx_equal_p ((((set1)->fld[0]).rtx), ((((((set2)->fld[1]).rtx))->fld[0]).rtx))
       && mips16_gp_offset_p (((((((set2)->fld[1]).rtx))->fld[1]).rtx))
       && ((enum rtx_code) ((((((((((set2)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtx))->code) == MINUS)
     {
       rtx sym;




       sym = ((((((((((((set2)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtx);
       if (((enum rtx_code) (sym)->code) != SYMBOL_REF)
  fancy_abort ("../../../kgccfe/gnu/mips.c", 9593, __FUNCTION__);
       emit_insn_after (gen_rtx (SET, VOIDmode, (((set1)->fld[0]).rtx),
     force_const_mem ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), sym)),
          next);

       ((insn)->code = (enum rtx_code) (NOTE));
       (((insn)->fld[5]).rtint) = NOTE_INSN_DELETED;
       (((insn)->fld[4]).rtstr) = 0;

       ((next)->code = (enum rtx_code) (NOTE));
       (((next)->fld[5]).rtint) = NOTE_INSN_DELETED;
       (((next)->fld[4]).rtstr) = 0;
     }
 }

      return;
    }





  for (insn = first; insn != (rtx) 0; insn = next_active_insn (insn))
    {
      rtx set;

      if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 continue;

      set = (((insn)->fld[5]).rtx);
      if (((enum rtx_code) (set)->code) != SET
   || ((enum machine_mode) ((((set)->fld[0]).rtx))->mode) != (unsigned) (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))
 continue;

      if (((enum rtx_code) ((((set)->fld[0]).rtx))->code) == MEM
   && rtx_equal_p ((((set)->fld[0]).rtx), slot)
   && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
   && ((((((set)->fld[1]).rtx))->fld[0]).rtuint) == (((gpcopy)->fld[0]).rtuint))
 {
   ((insn)->code = (enum rtx_code) (NOTE));
   (((insn)->fld[5]).rtint) = NOTE_INSN_DELETED;
   (((insn)->fld[4]).rtstr) = 0;
 }
      else if (((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
        && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) == (((gpcopy)->fld[0]).rtuint)
        && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == MEM
        && rtx_equal_p ((((set)->fld[1]).rtx), slot))
 {
   emit_insn_after (gen_rtx (SET, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((set)->fld[0]).rtx),
        gen_rtx (CONST, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
          gen_rtx (REG, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
            0 + 28))),
      insn);
   ((insn)->code = (enum rtx_code) (NOTE));
   (((insn)->fld[5]).rtint) = NOTE_INSN_DELETED;
   (((insn)->fld[4]).rtstr) = 0;
 }
    }
}




struct constant
{
  struct constant *next;
  rtx value;
  rtx label;
  enum machine_mode mode;
};



static rtx
add_constant (pconstants, val, mode)
     struct constant **pconstants;
     rtx val;
     enum machine_mode mode;
{
  struct constant *c;

  for (c = *pconstants; c != ((void *)0); c = c->next)
    if (mode == c->mode && rtx_equal_p (val, c->value))
      return c->label;

  c = (struct constant *) xmalloc (sizeof *c);
  c->value = val;
  c->mode = mode;
  c->label = gen_label_rtx ();
  c->next = *pconstants;
  *pconstants = c;
  return c->label;
}



static void
dump_constants (constants, insn)
     struct constant *constants;
     rtx insn;
{
  struct constant *c;
  int align;

  c = constants;
  align = 0;
  while (c != ((void *)0))
    {
      rtx r;
      struct constant *next;

      switch ((mode_size[(int) (c->mode)]))
 {
 case 1:
   align = 0;
   break;
 case 2:
   if (align < 1)
     insn = emit_insn_after (gen_align_2 (), insn);
   align = 1;
   break;
 case 4:
   if (align < 2)
     insn = emit_insn_after (gen_align_4 (), insn);
   align = 2;
   break;
 default:
   if (align < 3)
     insn = emit_insn_after (gen_align_8 (), insn);
   align = 3;
   break;
 }

      insn = emit_label_after (c->label, insn);

      switch (c->mode)
 {
 case QImode:
   r = gen_consttable_qi (c->value);
   break;
 case HImode:
   r = gen_consttable_hi (c->value);
   break;
 case SImode:
   r = gen_consttable_si (c->value);
   break;
 case SFmode:
   r = gen_consttable_sf (c->value);
   break;
 case DImode:
   r = gen_consttable_di (c->value);
   break;
 case DFmode:
   r = gen_consttable_df (c->value);
   break;
 default:
   fancy_abort ("../../../kgccfe/gnu/mips.c", 9749, __FUNCTION__);
 }

      insn = emit_insn_after (r, insn);

      next = c->next;
      free (c);
      c = next;
    }

  emit_barrier_after (insn);
}



static rtx
mips_find_symbol (addr)
     rtx addr;
{
  if (((enum rtx_code) (addr)->code) == MEM)
    addr = (((addr)->fld[0]).rtx);
  while (((enum rtx_code) (addr)->code) == CONST)
    addr = (((addr)->fld[0]).rtx);
  if (((enum rtx_code) (addr)->code) == SYMBOL_REF || ((enum rtx_code) (addr)->code) == LABEL_REF)
    return addr;
  if (((enum rtx_code) (addr)->code) == PLUS)
    {
      rtx l1, l2;

      l1 = mips_find_symbol ((((addr)->fld[0]).rtx));
      l2 = mips_find_symbol ((((addr)->fld[1]).rtx));
      if (l1 != (rtx) 0 && l2 == (rtx) 0)
 return l1;
      else if (l1 == (rtx) 0 && l2 != (rtx) 0)
 return l2;
    }
  return (rtx) 0;
}






void
machine_dependent_reorg (first)
     rtx first;
{
  int insns_len, max_internal_pool_size, pool_size, addr, first_constant_ref;
  rtx insn;
  struct constant *constants;

  if (! (target_flags & 0x00100000))
    return;



  if (optimize)
    mips16_optimize_gp (first);







  insns_len = 0;
  for (insn = first; insn; insn = (((insn)->fld[2]).rtx))
    {
      insns_len += get_attr_length (insn);




      if (((enum rtx_code) (insn)->code) == JUMP_INSN)
 {
   rtx body;

   body = (((insn)->fld[5]).rtx);
   if (((enum rtx_code) (body)->code) == ADDR_VEC || ((enum rtx_code) (body)->code) == ADDR_DIFF_VEC)
     insns_len += ((((((body)->fld[((enum rtx_code) (body)->code) == ADDR_DIFF_VEC]).rtvec))->num_elem)
     * (mode_size[(int) (((enum machine_mode) (body)->mode))]));
   insns_len += (mode_size[(int) (((enum machine_mode) (body)->mode))]) - 1;
 }
    }



  cfun->machine->insns_len = insns_len;

  pool_size = get_pool_size ();
  if (insns_len + pool_size + mips_string_length < 0x8000)
    return;



  max_internal_pool_size = 0;
  for (insn = first; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == INSN
   && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
 {
   rtx src;

   src = mips_find_symbol (((((((insn)->fld[5]).rtx))->fld[1]).rtx));
   if (src == (rtx) 0)
     continue;
   if ((((src))->unchanging))
     max_internal_pool_size += (mode_size[(int) (get_pool_mode (src))]);
   else if ((((src))->volatil))
     max_internal_pool_size += (mode_size[(int) ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))]);
 }
    }

  constants = ((void *)0);
  addr = 0;
  first_constant_ref = -1;

  for (insn = first; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == INSN
   && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
 {
   rtx val, src;
   enum machine_mode mode = VOIDmode;

   val = (rtx) 0;
   src = mips_find_symbol (((((((insn)->fld[5]).rtx))->fld[1]).rtx));
   if (src != (rtx) 0 && (((src))->unchanging))
     {




       if (((insns_len - addr)
     + max_internal_pool_size
     + get_pool_offset (src))
    >= 0x8000)
  {
    val = get_pool_constant (src);
    mode = get_pool_mode (src);
  }
       max_internal_pool_size -= (mode_size[(int) (get_pool_mode (src))]);
     }
   else if (src != (rtx) 0 && (((src))->volatil))
     {


       if (((insns_len - addr)
     + max_internal_pool_size
     + pool_size
     + mips_string_length)
    >= 0x8000)
  {
    val = src;
    mode = (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode);
  }
       max_internal_pool_size -= (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode);
     }

   if (val != (rtx) 0)
     {
       rtx lab, newsrc;






       lab = add_constant (&constants, val, mode);
       newsrc = gen_rtx (MEM, mode,
    gen_rtx (LABEL_REF, VOIDmode, lab));
       (((newsrc))->unchanging) = 1;
       (((insn)->fld[5]).rtx) = gen_rtx (SET, VOIDmode,
     ((((((insn)->fld[5]).rtx))->fld[0]).rtx),
     newsrc);
       (((insn)->fld[6]).rtint) = -1;

       if (first_constant_ref < 0)
  first_constant_ref = addr;
     }
 }

      addr += get_attr_length (insn);




      if (((enum rtx_code) (insn)->code) == JUMP_INSN)
 {
   rtx body;

   body = (((insn)->fld[5]).rtx);
   if (((enum rtx_code) (body)->code) == ADDR_VEC || ((enum rtx_code) (body)->code) == ADDR_DIFF_VEC)
     addr += ((((((body)->fld[((enum rtx_code) (body)->code) == ADDR_DIFF_VEC]).rtvec))->num_elem)
     * (mode_size[(int) (((enum machine_mode) (body)->mode))]));
   addr += (mode_size[(int) (((enum machine_mode) (body)->mode))]) - 1;
 }

      if (((enum rtx_code) (insn)->code) == BARRIER)
 {







   if (constants != ((void *)0))
     dump_constants (constants, insn);
   constants = ((void *)0);
   first_constant_ref = -1;
 }

      if (constants != ((void *)0)
        && ((((insn)->fld[2]).rtx) == ((void *)0)
     || (first_constant_ref >= 0
         && (((addr - first_constant_ref)
       + 2
       + 2
       + pool_size)
      >= 0x8000))))
 {




   rtx label, jump, barrier;

   label = gen_label_rtx ();
   jump = emit_jump_insn_after (gen_jump (label), insn);
   (((jump)->fld[9]).rtx) = label;
   (((label)->fld[4]).rtint) = 1;
   barrier = emit_barrier_after (jump);
   emit_label_after (label, barrier);
   first_constant_ref = -1;
 }
     }




}


int
extend_operator (x, mode)
     rtx x;
     enum machine_mode mode __attribute__ ((__unused__));
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  return code == SIGN_EXTEND || code == ZERO_EXTEND;
}





int
highpart_shift_operator (x, mode)
     rtx x;
     enum machine_mode mode __attribute__ ((__unused__));
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  return (code == LSHIFTRT
   || code == ASHIFTRT
   || code == ROTATERT
   || code == ROTATE);
}
# 10050 "../../../kgccfe/gnu/mips.c"
int
mips_register_move_cost (mode, to, from)
     enum machine_mode mode __attribute__ ((__unused__));
     enum reg_class to, from;
{
  if (from == M16_REGS && ((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
    return 2;
  else if (from == M16_NA_REGS && ((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
    return 2;
  else if (((from) == GR_REGS || (from) == M16_REGS || (from) == T_REG || (from) == M16_T_REGS || (from) == M16_NA_REGS))
    {
      if (to == M16_REGS)
 return 2;
      else if (to == M16_NA_REGS)
 return 2;
      else if (((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
 {
   if ((target_flags & 0x00100000))
     return 4;
   else
     return 2;
 }
      else if (to == FP_REGS)
 return 4;
      else if (to == HI_REG || to == LO_REG || to == MD_REGS
        || to == HILO_REG)
 {
   if ((target_flags & 0x00100000))
     return 12;
   else
     return 6;
 }
      else if (((to) == COP0_REGS || (to) == COP2_REGS || (to) == COP3_REGS))
 {
   return 5;
 }
    }
  else if (from == FP_REGS)
    {
      if (((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
 return 4;
      else if (to == FP_REGS)
 return 2;
      else if (to == ST_REGS)
 return 8;
    }
  else if (from == HI_REG || from == LO_REG || from == MD_REGS
    || from == HILO_REG)
    {
      if (((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
 {
   if ((target_flags & 0x00100000))
     return 12;
   else
     return 6;
 }
    }
  else if (from == ST_REGS && ((to) == GR_REGS || (to) == M16_REGS || (to) == T_REG || (to) == M16_T_REGS || (to) == M16_NA_REGS))
    return 4;
  else if (((from) == COP0_REGS || (from) == COP2_REGS || (from) == COP3_REGS))
    {
      return 5;
    }



  return 12;
}




int
mips_adjust_insn_length (insn, length)
     rtx insn;
     int length;
{



  if (simplejump_p (insn)
      || (!(target_flags & 0x00100000) && (((enum rtx_code) (insn)->code) == JUMP_INSN
         || ((enum rtx_code) (insn)->code) == CALL_INSN)))
    length += 4;


  if ((target_flags & 0x00100000))
    length /= 2;

  return length;
}
# 10156 "../../../kgccfe/gnu/mips.c"
const char *
mips_output_conditional_branch (insn,
    operands,
    two_operands_p,
    float_p,
    inverted_p,
    length)
     rtx insn;
     rtx *operands;
     int two_operands_p;
     int float_p;
     int inverted_p;
     int length;
{
  static char buffer[200];

  enum rtx_code code = ((enum rtx_code) (operands[0])->code);


  int need_z_p;


  const char *op1 = "%z2";



  const char *op2 = (two_operands_p ? ",%z3" : ",%.");

  const char *const comp = (float_p ? "%F0" : "%C0");

  const char *const inverted_comp = (float_p ? "%W0" : "%N0");





  mips_branch_likely = (final_sequence && (((insn))->unchanging));

  if (!two_operands_p)
    {






      switch (code)
 {
 case GTU:
   code = NE;
   break;

 case LEU:
   code = EQ;
   break;

 case GEU:

   code = EQ;
   op1 = "%.";
   break;

 case LTU:

   code = NE;
   op1 = "%.";
   break;

 default:

   break;
 }
    }




  need_z_p = (!float_p && code != EQ && code != NE);


  if (need_z_p)
    op2 = "";



  buffer[0] = '\0';

  switch (length)
    {
    case 4:
    case 8:

      if (float_p)
 sprintf (buffer, "%%*b%s%%?\t%%Z2%%1",
   inverted_p ? inverted_comp : comp);
      else
 sprintf (buffer, "%%*b%s%s%%?\t%s%s,%%1",
   inverted_p ? inverted_comp : comp,
   need_z_p ? "z" : "",
   op1,
   op2);
      return buffer;

    case 12:
    case 16:
    case 24:
    case 28:
      {
# 10302 "../../../kgccfe/gnu/mips.c"
        rtx orig_target;
 rtx target = gen_label_rtx ();

        orig_target = operands[1];
        operands[1] = target;


 if (float_p)
   sprintf (buffer, "%%*b%s\t%%Z2%%1",
     inverted_p ? comp : inverted_comp);
 else
   sprintf (buffer, "%%*b%s%s\t%s%s,%%1",
     inverted_p ? comp : inverted_comp,
     need_z_p ? "z" : "",
     op1,
     op2);
        output_asm_insn (buffer, operands);

        if (length != 16 && length != 28 && ! mips_branch_likely)
          {

            rtx insn = final_sequence;
            final_scan_insn ((((((insn)->fld[0]).rtvec))->elem[1]), asm_out_file,
                             optimize, 0, 1);
            ((((((((insn)->fld[0]).rtvec))->elem[1])))->volatil) = 1;
          }
 else
   output_asm_insn ("%#", 0);

 if (length <= 16)
   output_asm_insn ("j\t%0", &orig_target);
 else
   {
     if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)
       output_asm_insn ("%[dla\t%@,%0\n\tjr\t%@%]", &orig_target);
     else
       output_asm_insn ("%[la\t%@,%0\n\tjr\t%@%]", &orig_target);
   }

        if (length != 16 && length != 28 && mips_branch_likely)
          {

            rtx insn = final_sequence;
            final_scan_insn ((((((insn)->fld[0]).rtvec))->elem[1]), asm_out_file,
                             optimize, 0, 1);
            ((((((((insn)->fld[0]).rtvec))->elem[1])))->volatil) = 1;
          }
 else
   output_asm_insn ("%#", 0);

        fprintf (asm_out_file, "%s%s%d:\n", "$", "L", (((target)->fld[6]).rtint));


        return "";
      }
# 10447 "../../../kgccfe/gnu/mips.c"
    default:
      fancy_abort ("../../../kgccfe/gnu/mips.c", 10448, __FUNCTION__);
    }


  return 0;
}






static _Bool
mips_strict_matching_cpu_name_p (canonical, given)
     const char *canonical, *given;
{
  while (*given != 0 && _sch_tolower[(*given) & 0xff] == _sch_tolower[(*canonical) & 0xff])
    given++, canonical++;

  return ((*given == 0 && *canonical == 0)
   || (strcmp (canonical, "000") == 0 && strcasecmp (given, "k") == 0));
}







static _Bool
mips_matching_cpu_name_p (canonical, given)
     const char *canonical, *given;
{


  if (mips_strict_matching_cpu_name_p (canonical, given))
    return 1;



  if (_sch_tolower[(*given) & 0xff] == 'r')
    given++;
  if (!(_sch_istable[(*given) & 0xff] & (unsigned short)(_sch_isdigit)))
    return 0;



  if (_sch_tolower[(canonical[0]) & 0xff] == 'v' && _sch_tolower[(canonical[1]) & 0xff] == 'r')
    canonical += 2;
  else if (_sch_tolower[(canonical[0]) & 0xff] == 'r' && _sch_tolower[(canonical[1]) & 0xff] == 'm')
    canonical += 2;
  else if (_sch_tolower[(canonical[0]) & 0xff] == 'r')
    canonical += 1;

  return mips_strict_matching_cpu_name_p (canonical, given);
}
# 10513 "../../../kgccfe/gnu/mips.c"
static const struct mips_cpu_info *
mips_parse_cpu (option, cpu_string)
     const char *option, *cpu_string;
{
  const struct mips_cpu_info *p;
  const char *s;



  for (s = cpu_string; *s != 0; s++)
    if ((_sch_istable[(*s) & 0xff] & (unsigned short)(_sch_isupper)))
      {
 warning ("the cpu name must be lower case");
 break;
      }






  if (strcasecmp (cpu_string, "from-abi") == 0)
    return mips_cpu_info_from_isa ((mips_abi == 0) ? 1
       : (mips_abi == 2 || mips_abi == 4 || mips_abi == 1) ? 3
       : ((target_flags & 0x00002000) ? 3 : 1));


  if (strcasecmp (cpu_string, "default") == 0)
    return 0;

  for (p = mips_cpu_info_table; p->name != 0; p++)
    if (mips_matching_cpu_name_p (p->name, cpu_string))
      return p;

  error ("bad value (%s) for %s", cpu_string, option);
  return 0;
}





static const struct mips_cpu_info *
mips_cpu_info_from_isa (isa)
     int isa;
{
  const struct mips_cpu_info *p;

  for (p = mips_cpu_info_table; p->name != 0; p++)
    if (p->isa == isa)
      return p;

  return 0;
}






static int
mips_adjust_cost (insn, link, dep, cost)
     rtx insn __attribute__ ((__unused__));
     rtx link;
     rtx dep __attribute__ ((__unused__));
     int cost;
{
  if (((enum reg_note) ((enum machine_mode) (link)->mode)) != 0)
    return 0;
  return cost;
}




static void
mips_unique_section (decl, reloc)
     tree decl;
     int reloc;
{
  int len, size, sec;
  const char *name, *prefix;
  char *string;
  static const char *const prefixes[4][2] = {
    { ".text.", ".gnu.linkonce.t." },
    { ".rodata.", ".gnu.linkonce.r." },
    { ".data.", ".gnu.linkonce.d." },
    { ".sdata.", ".gnu.linkonce.s." }
  };

  name = ((char *)(decl_assembler_name (decl))->identifier.id.str);
  name = (* targetm.strip_name_encoding) (name);
  size = int_size_in_bytes (((decl)->common.type));



  if (((enum tree_code) (decl)->common.code) == FUNCTION_DECL)
    sec = 0;
  else if (((decl)->decl.initial) == 0
           || ((decl)->decl.initial) == global_trees[TI_ERROR_MARK])
    sec = 2;
  else if (((target_flags & 0x00004000) || (target_flags & 0x00100000))
      && ((enum tree_code) (decl)->common.code) == STRING_CST
      && !flag_writable_strings)
    {





      sec = 0;
    }
  else if ((target_flags & 0x00008000))
    {




      if (decl_readonly_section (decl, reloc))
 sec = 1;
      else if (size > 0 && size <= mips_section_threshold)
 sec = 3;
      else
 sec = 2;
    }
  else
    {




      if (size > 0 && size <= mips_section_threshold)
 sec = 3;
      else if (decl_readonly_section (decl, reloc))
 sec = 1;
      else
 sec = 2;
    }

  prefix = prefixes[sec][((decl)->decl.transparent_union)];
  len = strlen (name) + strlen (prefix);
  string = __builtin_alloca(len + 1);
  sprintf (string, "%s%s", prefix, name);

  ((decl)->decl.section_name) = build_string (len, string);
}

unsigned int
mips_hard_regno_nregs (regno, mode)
    int regno;
    enum machine_mode mode;
{
  if (! ((unsigned int) ((int) (regno) - 32) < (63 - 32 + 1)))
    return (((mode_size[(int) (mode)]) + ((target_flags & 0x00002000) ? 8 : 4) - 1) / ((target_flags & 0x00002000) ? 8 : 4));
  else
    return (((mode_size[(int) (mode)]) + ((target_flags & 0x00000200) ? 8 : 4) - 1) / ((target_flags & 0x00000200) ? 8 : 4));
}

int
mips_return_in_memory (type)
     tree type;
{





  if (mips_abi == 0 || mips_abi == 4)
    return (((type)->type.mode) == BLKmode);
  else
    return ((int_size_in_bytes (type) > (2 * ((target_flags & 0x00002000) ? 8 : 4)))
     || (int_size_in_bytes (type) == -1));
}

static int
mips_issue_rate ()
{
  switch (mips_tune)
    {
    case PROCESSOR_R3000: return 1;
    case PROCESSOR_R5400: return 2;
    case PROCESSOR_R5500: return 2;

    default:
      return 1;
    }

  fancy_abort ("../../../kgccfe/gnu/mips.c", 10700, __FUNCTION__);

}




static int
mips_use_dfa_pipeline_interface ()
{
  switch (mips_tune)
    {
    case PROCESSOR_R5400:
    case PROCESSOR_R5500:
    case PROCESSOR_SR71000:
      return 1;

    default:
      return 0;
    }
}


const char *
mips_emit_prefetch (operands)
     rtx operands[];
{





    int write = (((operands[1])->fld[0]).rtwint);
    int locality = (((operands[2])->fld[0]).rtwint);

    static const char * const alt[2][4] = {
 {
  "pref\t4,%a0",
  "pref\t0,%a0",
  "pref\t0,%a0",
  "pref\t6,%a0"
 },
 {
  "pref\t5,%a0",
  "pref\t1,%a0",
  "pref\t1,%a0",
  "pref\t7,%a0"
 }
    };

    return alt[write][locality];
}
# 10915 "../../../kgccfe/gnu/mips.c"
# 1 "../../../kgccfe/gnu/MIPS/gt-mips.h" 1
# 23 "../../../kgccfe/gnu/MIPS/gt-mips.h"
void
gt_ggc_mx_machine_function (x_p)
      void *x_p;
{
  struct machine_function * const x = (struct machine_function *)x_p;
  if (((x) != ((void *)0) && ((void *) (x)) != (void *) 1 && ! ggc_set_mark (x)))
    {
      do { if ((*x).embedded_pic_fnaddr_rtx != ((void *)0)) gt_ggc_mx_rtx_def ((*x).embedded_pic_fnaddr_rtx); } while (0);
      do { if ((*x).mips16_gp_pseudo_rtx != ((void *)0)) gt_ggc_mx_rtx_def ((*x).mips16_gp_pseudo_rtx); } while (0);
  }
}



const struct ggc_root_tab gt_ggc_r_gt_mips_h[] = {
  {
    &mips16_strings,
    1,
    sizeof (mips16_strings),
    &gt_ggc_mx_rtx_def

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 10915 "../../../kgccfe/gnu/mips.c" 2
