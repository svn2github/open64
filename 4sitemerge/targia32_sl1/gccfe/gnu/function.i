# 1 "../../../kgccfe/gnu/function.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/gccfe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kgccfe/gnu/function.c"
# 47 "../../../kgccfe/gnu/function.c"
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
# 48 "../../../kgccfe/gnu/function.c" 2
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
        
# 49 "../../../kgccfe/gnu/function.c" 2
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
# 50 "../../../kgccfe/gnu/function.c" 2
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
# 51 "../../../kgccfe/gnu/function.c" 2
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
# 52 "../../../kgccfe/gnu/function.c" 2
# 1 "../../../kgccfe/gnu/except.h" 1
# 35 "../../../kgccfe/gnu/except.h"
struct varray_head_tag;



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
# 53 "../../../kgccfe/gnu/function.c" 2
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
# 54 "../../../kgccfe/gnu/function.c" 2
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
# 55 "../../../kgccfe/gnu/function.c" 2
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
# 56 "../../../kgccfe/gnu/function.c" 2
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
# 57 "../../../kgccfe/gnu/function.c" 2

# 1 "../../../kgccfe/gnu/insn-config.h" 1
# 59 "../../../kgccfe/gnu/function.c" 2
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
# 60 "../../../kgccfe/gnu/function.c" 2
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
# 348 "../../../kgccfe/gnu/output.h"
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
# 61 "../../../kgccfe/gnu/function.c" 2

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
# 63 "../../../kgccfe/gnu/function.c" 2
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
# 64 "../../../kgccfe/gnu/function.c" 2
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
# 65 "../../../kgccfe/gnu/function.c" 2
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
# 66 "../../../kgccfe/gnu/function.c" 2
# 1 "../../../kgccfe/gnu/integrate.h" 1
# 35 "../../../kgccfe/gnu/integrate.h"
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
# 78 "../../../kgccfe/gnu/integrate.h"
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
# 173 "../../../kgccfe/gnu/integrate.h"
extern varray_type global_const_equiv_varray;
# 67 "../../../kgccfe/gnu/function.c" 2
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
# 68 "../../../kgccfe/gnu/function.c" 2


# 1 "../../../kgccfe/wfe_stmt.h" 1
# 54 "../../../kgccfe/wfe_stmt.h"
extern void WFE_Expand_Start_Cond (tree cond, int exitflag);
extern void WFE_Expand_Start_Else (void);
extern void WFE_Expand_End_Cond (void);

extern void WFE_Expand_Start_Loop (int exitflag, struct nesting *whichloop);
extern void WFE_Expand_Start_Loop_Continue_Elsewhere (int exitflag, struct nesting *whichloop);
extern void WFE_Expand_Loop_Continue_Here (void);
extern void WFE_Expand_End_Loop (void);
extern void WFE_Expand_Continue_Loop (struct nesting *whichloop);
extern void WFE_Expand_Exit_Loop (struct nesting *whichloop);
extern void WFE_Expand_Exit_Loop_If_False (struct nesting *whichloop, tree cond);

extern void WFE_Expand_Start_Case (int exit_flag, tree expr, tree type, char *printname);
extern void WFE_Expand_Start_Case_Dummy (void);
extern void WFE_Add_Case_Node (tree low, tree high, tree label);
extern void WFE_Emit_Case_Nodes (void);
extern void WFE_Expand_End_Case_Dummy (void);
extern void WFE_Expand_End_Case (tree orig_index);
extern void WFE_Expand_Label (tree label);
extern void WFE_Expand_Goto (tree label);
extern void WFE_Expand_Exit_Something (struct nesting *n,
                                struct nesting *cond_stack,
                                struct nesting *loop_stack,
                                struct nesting *case_stack,
                                LABEL_IDX *label_idx);
extern void WFE_Record_Switch_Default_Label (tree label);
extern void WFE_Expand_Return (tree retval);
extern void WFE_Check_Undefined_Labels (void);
extern void WFE_Expand_Computed_Goto (tree exp);
extern void WFE_Declare_Nonlocal_Label (tree label);

extern void Wfe_Expand_Asm_Operands (tree, tree, tree, tree,
         int, const char *, int);

extern LABEL_IDX WFE_Get_LABEL (tree label, int def);



extern int WFE_Emit_Side_Effects_Pending (tree* node);
extern int WFE_Null_ST_References (tree* node);

extern void WFE_Start_Do_Loop (struct nesting *);
extern void WFE_End_Do_Loop (struct nesting *);
extern void WFE_Terminate_Do_Loop (struct nesting *);
extern void WFE_Expand_Pragma (tree);


extern void WFE_Expand_Freq_Hint (tree exp);





extern void WFE_Stmt_Init (void);
# 71 "../../../kgccfe/gnu/function.c" 2
# 1 "../../../kgccfe/gnu/tree-inline.h" 1
# 27 "../../../kgccfe/gnu/tree-inline.h"
void optimize_inline_calls (tree);
int tree_inlinable_function_p (tree);
tree walk_tree (tree*, walk_tree_fn, void*, void*);
tree walk_tree_without_duplicates (tree*, walk_tree_fn, void*);
tree copy_tree_r (tree*, int*, void*);
void clone_body (tree, tree, void*);
void remap_save_expr (tree*, void*, tree, int*);






extern int flag_inline_trees;
# 72 "../../../kgccfe/gnu/function.c" 2
# 113 "../../../kgccfe/gnu/function.c"
int current_function_is_leaf;




int current_function_nothrow;




int current_function_sp_is_unchanging;




int current_function_uses_only_leaf_regs;





int virtuals_instantiated;


int trampolines_created;


static int funcdef_no;



struct machine_function * (*init_machine_status) (void);


tree inline_function_decl;


struct function *cfun = 0;


static varray_type prologue;
static varray_type epilogue;



static varray_type sibcall_epilogue;
# 178 "../../../kgccfe/gnu/function.c"
struct temp_slot
{

  struct temp_slot *next;

  rtx slot;


  rtx address;

  unsigned int align;

  long long size;




  tree type;

  tree rtl_expr;

  char in_use;

  char addr_taken;

  int level;

  int keep;


  long long base_offset;


  long long full_size;
};






struct fixup_replacement
{
  rtx old;
  rtx new;
  struct fixup_replacement *next;
};

struct insns_for_mem_entry
{

  rtx key;

  rtx insns;
};



static rtx assign_stack_local_1 (enum machine_mode, long long, int, struct function *);

static struct temp_slot *find_temp_slot_from_address (rtx);
static void put_reg_into_stack (struct function *, rtx, tree, enum machine_mode, enum machine_mode, int, unsigned int, int, htab_t);



static void schedule_fixup_var_refs (struct function *, rtx, tree, enum machine_mode, htab_t);


static void fixup_var_refs (rtx, enum machine_mode, int, rtx, htab_t);

static struct fixup_replacement
  *find_fixup_replacement (struct fixup_replacement **, rtx);
static void fixup_var_refs_insns (rtx, rtx, enum machine_mode, int, int, rtx);

static void fixup_var_refs_insns_with_hash
    (htab_t, rtx, enum machine_mode, int, rtx);

static void fixup_var_refs_insn (rtx, rtx, enum machine_mode, int, int, rtx);

static void fixup_var_refs_1 (rtx, enum machine_mode, rtx *, rtx, struct fixup_replacement **, rtx);

static rtx fixup_memory_subreg (rtx, rtx, enum machine_mode, int);
static rtx walk_fixup_memory_subreg (rtx, rtx, enum machine_mode, int);

static rtx fixup_stack_1 (rtx, rtx);
static void optimize_bit_field (rtx, rtx, rtx *);
static void instantiate_decls (tree, int);
static void instantiate_decls_1 (tree, int);
static void instantiate_decl (rtx, long long, int);
static rtx instantiate_new_reg (rtx, long long *);
static int instantiate_virtual_regs_1 (rtx *, rtx, int);
static void delete_handlers (void);
static void pad_to_arg_alignment (struct args_size *, int, struct args_size *);

static void pad_below (struct args_size *, enum machine_mode, tree);

static rtx round_trampoline_addr (rtx);
static rtx adjust_trampoline_addr (rtx);
static tree *identify_blocks_1 (rtx, tree *, tree *, tree *);
static void reorder_blocks_0 (tree);
static void reorder_blocks_1 (rtx, tree, varray_type *);
static void reorder_fix_fragments (tree);
static tree blocks_nreverse (tree);
static int all_blocks (tree, tree *);
static tree *get_block_vector (tree, int *);
extern tree debug_find_var_in_block_tree (tree, tree);


static void record_insns (rtx, varray_type *) __attribute__ ((__unused__));
static int contains (rtx, varray_type);

static void emit_return_into_block (basic_block, rtx);

static void put_addressof_into_stack (rtx, htab_t);
static _Bool purge_addressof_1 (rtx *, rtx, int, int, htab_t);

static void purge_single_hard_subreg_set (rtx);

static rtx keep_stack_depressed (rtx);

static int is_addressof (rtx *, void *);
static hashval_t insns_for_mem_hash (const void *);
static int insns_for_mem_comp (const void *, const void *);
static int insns_for_mem_walk (rtx *, void *);
static void compute_insns_for_mem (rtx, rtx, htab_t);
static void prepare_function_start (void);
static void do_clobber_return_reg (rtx, void *);
static void do_use_return_reg (rtx, void *);
static void instantiate_virtual_regs_lossage (rtx);


static struct function *outer_function_chain;




struct function *
find_function_data (decl)
     tree decl;
{
  struct function *p;

  for (p = outer_function_chain; p; p = p->outer)
    if (p->decl == decl)
      return p;

  fancy_abort ("../../../kgccfe/gnu/function.c", 324, __FUNCTION__);
}







void
push_function_context_to (context)
     tree context;
{
  struct function *p;

  if (context)
    {
      if (context == current_function_decl)
 cfun->contains_functions = 1;
      else
 {
   struct function *containing = find_function_data (context);
   containing->contains_functions = 1;
 }
    }

  if (cfun == 0)
    init_dummy_function_start ();
  p = cfun;

  p->outer = outer_function_chain;
  outer_function_chain = p;
  p->fixup_var_refs_queue = 0;

  (*lang_hooks.function.enter_nested) (p);

  cfun = 0;
}

void
push_function_context ()
{
  push_function_context_to (current_function_decl);
}




void
pop_function_context_from (context)
     tree context __attribute__ ((__unused__));
{
  struct function *p = outer_function_chain;
  struct var_refs_queue *queue;

  cfun = p;
  outer_function_chain = p->outer;

  current_function_decl = p->decl;
  reg_renumber = 0;

  restore_emit_status (p);

  (*lang_hooks.function.leave_nested) (p);





  if (p->fixup_var_refs_queue == 0)
    ;
  else if (p->fixup_var_refs_queue->next == 0)
    fixup_var_refs (p->fixup_var_refs_queue->modified,
      p->fixup_var_refs_queue->promoted_mode,
      p->fixup_var_refs_queue->unsignedp,
      p->fixup_var_refs_queue->modified, 0);
  else
    {
      rtx list = 0;

      for (queue = p->fixup_var_refs_queue; queue; queue = queue->next)
 list = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (queue->modified), (list));

      for (queue = p->fixup_var_refs_queue; queue; queue = queue->next)
 fixup_var_refs (queue->modified, queue->promoted_mode,
   queue->unsignedp, list, 0);

    }

  p->fixup_var_refs_queue = 0;


  rtx_equal_function_value_matters = 1;
  virtuals_instantiated = 0;
  generating_concat_p = 1;
}

void
pop_function_context ()
{
  pop_function_context_from (current_function_decl);
}





void
free_after_parsing (f)
     struct function *f;
{





  (*lang_hooks.function.final) (f);
  f->stmt = ((void *)0);
}





void
free_after_compilation (f)
     struct function *f;
{
  f->eh = ((void *)0);
  f->expr = ((void *)0);
  f->emit = ((void *)0);
  f->varasm = ((void *)0);
  f->machine = ((void *)0);

  f->x_temp_slots = ((void *)0);
  f->arg_offset_rtx = ((void *)0);
  f->return_rtx = ((void *)0);
  f->internal_arg_pointer = ((void *)0);
  f->x_nonlocal_labels = ((void *)0);
  f->x_nonlocal_goto_handler_slots = ((void *)0);
  f->x_nonlocal_goto_handler_labels = ((void *)0);
  f->x_nonlocal_goto_stack_level = ((void *)0);
  f->x_cleanup_label = ((void *)0);
  f->x_return_label = ((void *)0);
  f->computed_goto_common_label = ((void *)0);
  f->computed_goto_common_reg = ((void *)0);
  f->x_save_expr_regs = ((void *)0);
  f->x_stack_slot_list = ((void *)0);
  f->x_rtl_expr_chain = ((void *)0);
  f->x_tail_recursion_label = ((void *)0);
  f->x_tail_recursion_reentry = ((void *)0);
  f->x_arg_pointer_save_area = ((void *)0);
  f->x_clobber_return_insn = ((void *)0);
  f->x_context_display = ((void *)0);
  f->x_trampoline_list = ((void *)0);
  f->x_parm_birth_insn = ((void *)0);
  f->x_last_parm_insn = ((void *)0);
  f->x_parm_reg_stack_loc = ((void *)0);
  f->fixup_var_refs_queue = ((void *)0);
  f->original_arg_vector = ((void *)0);
  f->original_decl_initial = ((void *)0);
  f->inl_last_parm_insn = ((void *)0);
  f->epilogue_delay_list = ((void *)0);
}
# 496 "../../../kgccfe/gnu/function.c"
long long
get_func_frame_size (f)
     struct function *f;
{



  return f->x_frame_offset;

}




long long
get_frame_size ()
{
  return get_func_frame_size (cfun);
}
# 528 "../../../kgccfe/gnu/function.c"
static rtx
assign_stack_local_1 (mode, size, align, function)
     enum machine_mode mode;
     long long size;
     int align;
     struct function *function;
{
  rtx x, addr;
  int bigend_correction = 0;
  int alignment;
  int frame_off, frame_alignment, frame_phase;

  if (align == 0)
    {
      tree type;

      if (mode == BLKmode)
 alignment = (mips_abi == 1 || mips_abi == 2 ? 128 : 64);
      else
 alignment = get_mode_alignment (mode);



      type = (*lang_hooks.types.type_for_mode) (mode, 0);
      if (type)
 alignment = alignment;

      alignment /= 8;
    }
  else if (align == -1)
    {
      alignment = (mips_abi == 1 || mips_abi == 2 ? 128 : 64) / 8;
      size = (((size) + (alignment) - 1) & ~((alignment)- 1));
    }
  else
    alignment = align / 8;






  if (alignment * 8 > ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128))
    alignment = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128) / 8;

  if (function->stack_alignment_needed < alignment * 8)
    function->stack_alignment_needed = alignment * 8;



  frame_alignment = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128) / 8;
  frame_off = ((cfun->outgoing_args_size) + ((target_flags & 0x00000400) ? ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((((target_flags & 0x00002000) ? 8 : 4)) + 7) & ~7 : ((((target_flags & 0x00002000) ? 8 : 4)) + 15) & ~15) : 0)) % frame_alignment;
  frame_phase = frame_off ? frame_alignment - frame_off : 0;
# 590 "../../../kgccfe/gnu/function.c"
  function->x_frame_offset = (((function->x_frame_offset - frame_phase) + (alignment) - 1) & ~((alignment)- 1)) + frame_phase;




  if (((target_flags & 0x00010000) != 0) && mode != BLKmode)
    bigend_correction = size - (mode_size[(int) (mode)]);



  if (function == cfun && virtuals_instantiated)
    addr = plus_constant_wide (((global_rtl[GR_FRAME_POINTER])), (long long) (((cfun->x_frame_offset) + bigend_correction + ((cfun->outgoing_args_size) + ((target_flags & 0x00000400) ? ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((((target_flags & 0x00002000) ? 8 : 4)) + 7) & ~7 : ((((target_flags & 0x00002000) ? 8 : 4)) + 15) & ~15) : 0)))));


  else
    addr = plus_constant_wide (((global_rtl[GR_VIRTUAL_STACK_ARGS])), (long long) (function->x_frame_offset + bigend_correction));



  function->x_frame_offset += size;


  x = gen_rtx_MEM (mode, addr);

  function->x_stack_slot_list
    = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (x), (function->x_stack_slot_list));

  return x;
}




rtx
assign_stack_local (mode, size, align)
     enum machine_mode mode;
     long long size;
     int align;
{
  return assign_stack_local_1 (mode, size, align, cfun);
}
# 649 "../../../kgccfe/gnu/function.c"
rtx
assign_stack_temp_for_type (mode, size, keep, type)
     enum machine_mode mode;
     long long size;
     int keep;
     tree type;
{
  unsigned int align;
  struct temp_slot *p, *best_p = 0;
  rtx slot;



  if (size == -1)
    fancy_abort ("../../../kgccfe/gnu/function.c", 663, __FUNCTION__);

  if (mode == BLKmode)
    align = (mips_abi == 1 || mips_abi == 2 ? 128 : 64);
  else
    align = get_mode_alignment (mode);

  if (! type)
    type = (*lang_hooks.types.type_for_mode) (mode, 0);

  if (type)
    align = align;




  for (p = (cfun->x_temp_slots); p; p = p->next)
    if (p->align >= align && p->size >= size && ((enum machine_mode) (p->slot)->mode) == mode
 && ! p->in_use
 && objects_must_conflict_p (p->type, type)
 && (best_p == 0 || best_p->size > p->size
     || (best_p->size == p->size && best_p->align > p->align)))
      {
 if (p->align == align && p->size == size)
   {
     best_p = 0;
     break;
   }
 best_p = p;
      }


  if (best_p)
    {



      if (((enum machine_mode) (best_p->slot)->mode) == BLKmode)
 {
   int alignment = best_p->align / 8;
   long long rounded_size = (((size) + (alignment) - 1) & ~((alignment)- 1));

   if (best_p->size - rounded_size >= alignment)
     {
       p = (struct temp_slot *) ggc_alloc (sizeof (struct temp_slot));
       p->in_use = p->addr_taken = 0;
       p->size = best_p->size - rounded_size;
       p->base_offset = best_p->base_offset + rounded_size;
       p->full_size = best_p->full_size - rounded_size;
       p->slot = gen_rtx_MEM (BLKmode,
         plus_constant_wide (((((best_p->slot)->fld[0]).rtx)), (long long) (rounded_size)));

       p->align = best_p->align;
       p->address = 0;
       p->rtl_expr = 0;
       p->type = best_p->type;
       p->next = (cfun->x_temp_slots);
       (cfun->x_temp_slots) = p;

       (cfun->x_stack_slot_list) = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (p->slot), ((cfun->x_stack_slot_list)));


       best_p->size = rounded_size;
       best_p->full_size = rounded_size;
     }
 }

      p = best_p;
    }


  if (p == 0)
    {
      long long frame_offset_old = (cfun->x_frame_offset);

      p = (struct temp_slot *) ggc_alloc (sizeof (struct temp_slot));
# 747 "../../../kgccfe/gnu/function.c"
      if (mode == BLKmode && align < (mips_abi == 1 || mips_abi == 2 ? 128 : 64))
 fancy_abort ("../../../kgccfe/gnu/function.c", 748, __FUNCTION__);
      p->slot = assign_stack_local (mode,
        (mode == BLKmode
         ? (((size) + (align / 8) - 1) & ~((align / 8)- 1))
         : size),
        align);

      p->align = align;
# 767 "../../../kgccfe/gnu/function.c"
      p->size = size;







      p->base_offset = frame_offset_old;
      p->full_size = (cfun->x_frame_offset) - frame_offset_old;

      p->address = 0;
      p->next = (cfun->x_temp_slots);
      (cfun->x_temp_slots) = p;
    }

  p->in_use = 1;
  p->addr_taken = 0;
  p->rtl_expr = (cfun->emit->sequence_rtl_expr);
  p->type = type;

  if (keep == 2)
    {
      p->level = (cfun->x_target_temp_slot_level);
      p->keep = 0;
    }
  else if (keep == 3)
    {
      p->level = (cfun->x_var_temp_slot_level);
      p->keep = 0;
    }
  else
    {
      p->level = (cfun->x_temp_slot_level);
      p->keep = keep;
    }



  slot = gen_rtx_MEM (mode, (((p->slot)->fld[0]).rtx));
  (cfun->x_stack_slot_list) = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (slot), ((cfun->x_stack_slot_list)));




  set_mem_alias_set (slot, type ? get_alias_set (type) : 0);
  set_mem_align (slot, align);


  if (type != 0)
    {
      (((slot))->unchanging) = (lang_hooks.honor_readonly
     && ((type)->common.readonly_flag));
      (((slot))->volatil) = ((type)->common.volatile_flag);
      do { if ((((enum tree_code) (type)->common.code) == ARRAY_TYPE || ((enum tree_code) (type)->common.code) == RECORD_TYPE || ((enum tree_code) (type)->common.code) == UNION_TYPE || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (type)->common.code) == SET_TYPE)) { (((slot))->in_struct) = 1; (((slot))->frame_related) = 0; } else { (((slot))->in_struct) = 0; (((slot))->frame_related) = 1; } } while (0);
    }

  return slot;
}




rtx
assign_stack_temp (mode, size, keep)
     enum machine_mode mode;
     long long size;
     int keep;
{
  return assign_stack_temp_for_type (mode, size, keep, (tree) ((void *)0));
}
# 849 "../../../kgccfe/gnu/function.c"
rtx
assign_temp (type_or_decl, keep, memory_required, dont_promote)
     tree type_or_decl;
     int keep;
     int memory_required;
     int dont_promote __attribute__ ((__unused__));
{
  tree type, decl;
  enum machine_mode mode;

  int unsignedp;


  if ((tree_code_type[(int) (((enum tree_code) (type_or_decl)->common.code))] == 'd'))
    decl = type_or_decl, type = ((decl)->common.type);
  else
    decl = ((void *)0), type = type_or_decl;

  mode = ((type)->type.mode);

  unsignedp = ((type)->common.unsigned_flag);


  if (mode == BLKmode || memory_required)
    {
      long long size = int_size_in_bytes (type);
      rtx tmp;



      if (size == 0)
 size = 1;





      if (size == -1 && ((enum tree_code) (type)->common.code) == ARRAY_TYPE
   && (((type))->type.maxval) != (tree) ((void *)0)
   && host_integerp ((((type))->type.maxval), 1))
 size = tree_low_cst ((((type))->type.maxval), 1);





      if (decl && size == -1
   && ((enum tree_code) (((type)->type.size_unit))->common.code) == INTEGER_CST)
 {
   error_with_decl (decl, "size of variable `%s' is too large");
   size = 1;
 }

      tmp = assign_stack_temp_for_type (mode, size, keep, type);
      return tmp;
    }


  if (! dont_promote)
    mode = promote_mode (type, mode, &unsignedp, 0);


  return gen_reg_rtx (mode);
}







void
combine_temp_slots ()
{
  struct temp_slot *p, *q;
  struct temp_slot *prev_p, *prev_q;
  int num_slots;



  if (flag_strict_aliasing)
    return;



  if (! flag_expensive_optimizations)
    for (p = (cfun->x_temp_slots), num_slots = 0; p; p = p->next, num_slots++)
      if (num_slots > 100 || (num_slots > 10 && optimize == 0))
 return;

  for (p = (cfun->x_temp_slots), prev_p = 0; p; p = prev_p ? prev_p->next : (cfun->x_temp_slots))
    {
      int delete_p = 0;

      if (! p->in_use && ((enum machine_mode) (p->slot)->mode) == BLKmode)
 for (q = p->next, prev_q = p; q; q = prev_q->next)
   {
     int delete_q = 0;
     if (! q->in_use && ((enum machine_mode) (q->slot)->mode) == BLKmode)
       {
  if (p->base_offset + p->full_size == q->base_offset)
    {

      p->size += q->size;
      p->full_size += q->full_size;
      delete_q = 1;
    }
  else if (q->base_offset + q->full_size == p->base_offset)
    {

      q->size += p->size;
      q->full_size += p->full_size;
      delete_p = 1;
      break;
    }
       }

     if (delete_q)
       prev_q->next = q->next;
     else
       prev_q = q;
   }

      if (delete_p)
 {
   if (prev_p)
     prev_p->next = p->next;
   else
     (cfun->x_temp_slots) = p->next;
 }
      else
 prev_p = p;
    }
}



static struct temp_slot *
find_temp_slot_from_address (x)
     rtx x;
{
  struct temp_slot *p;
  rtx next;

  for (p = (cfun->x_temp_slots); p; p = p->next)
    {
      if (! p->in_use)
 continue;

      else if ((((p->slot)->fld[0]).rtx) == x
        || p->address == x
        || (((enum rtx_code) (x)->code) == PLUS
     && (((x)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_STACK_ARGS])
     && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
     && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= p->base_offset
     && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < p->base_offset + p->full_size))
 return p;

      else if (p->address != 0 && ((enum rtx_code) (p->address)->code) == EXPR_LIST)
 for (next = p->address; next; next = (((next)->fld[1]).rtx))
   if ((((next)->fld[0]).rtx) == x)
     return p;
    }



  if (((enum rtx_code) (x)->code) == PLUS && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
      && (p = find_temp_slot_from_address ((((x)->fld[0]).rtx))) != 0)
    return p;
  else if (((enum rtx_code) (x)->code) == PLUS && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == REG
    && (p = find_temp_slot_from_address ((((x)->fld[1]).rtx))) != 0)
    return p;

  return 0;
}




void
update_temp_slot_address (old, new)
     rtx old, new;
{
  struct temp_slot *p;

  if (rtx_equal_p (old, new))
    return;

  p = find_temp_slot_from_address (old);






  if (p == 0)
    {
      if (((enum rtx_code) (old)->code) != PLUS)
 return;

      if (((enum rtx_code) (new)->code) == REG)
 {
   update_temp_slot_address ((((old)->fld[0]).rtx), new);
   update_temp_slot_address ((((old)->fld[1]).rtx), new);
   return;
 }
      else if (((enum rtx_code) (new)->code) != PLUS)
 return;

      if (rtx_equal_p ((((old)->fld[0]).rtx), (((new)->fld[0]).rtx)))
 update_temp_slot_address ((((old)->fld[1]).rtx), (((new)->fld[1]).rtx));
      else if (rtx_equal_p ((((old)->fld[1]).rtx), (((new)->fld[0]).rtx)))
 update_temp_slot_address ((((old)->fld[0]).rtx), (((new)->fld[1]).rtx));
      else if (rtx_equal_p ((((old)->fld[0]).rtx), (((new)->fld[1]).rtx)))
 update_temp_slot_address ((((old)->fld[1]).rtx), (((new)->fld[0]).rtx));
      else if (rtx_equal_p ((((old)->fld[1]).rtx), (((new)->fld[1]).rtx)))
 update_temp_slot_address ((((old)->fld[0]).rtx), (((new)->fld[0]).rtx));

      return;
    }


  else if (p->address == 0)
    p->address = new;
  else
    {
      if (((enum rtx_code) (p->address)->code) != EXPR_LIST)
 p->address = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (p->address), ((rtx) 0));

      p->address = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (new), (p->address));
    }
}




void
mark_temp_addr_taken (x)
     rtx x;
{
  struct temp_slot *p;

  if (x == 0)
    return;



  if (((enum rtx_code) (x)->code) != MEM || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
    return;

  p = find_temp_slot_from_address ((((x)->fld[0]).rtx));
  if (p != 0)
    p->addr_taken = 1;
}
# 1113 "../../../kgccfe/gnu/function.c"
void
preserve_temp_slots (x)
     rtx x;
{
  struct temp_slot *p = 0;



  if (x == 0)
    {
      for (p = (cfun->x_temp_slots); p; p = p->next)
 if (p->in_use && p->level == (cfun->x_temp_slot_level) && p->addr_taken)
   p->level--;

      return;
    }





  if (((enum rtx_code) (x)->code) == REG && (((x))->frame_related))
    p = find_temp_slot_from_address (x);




  if (p == 0 && (((enum rtx_code) (x)->code) != MEM || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONSTANT_P_RTX)))
    {
      for (p = (cfun->x_temp_slots); p; p = p->next)
 if (p->in_use && p->level == (cfun->x_temp_slot_level) && p->addr_taken)
   p->level--;

      return;
    }


  if (p == 0)
    p = find_temp_slot_from_address ((((x)->fld[0]).rtx));

  if (p != 0)
    {


      struct temp_slot *q;

      if (p->level == (cfun->x_temp_slot_level))
 {
   for (q = (cfun->x_temp_slots); q; q = q->next)
     if (q != p && q->addr_taken && q->level == p->level)
       q->level--;

   p->level--;
   p->addr_taken = 0;
 }
      return;
    }


  for (p = (cfun->x_temp_slots); p; p = p->next)
    if (p->in_use && p->level == (cfun->x_temp_slot_level) && ! p->keep)
      p->level--;
}






void
preserve_rtl_expr_result (x)
     rtx x;
{
  struct temp_slot *p;



  if (x == 0 || ((enum rtx_code) (x)->code) != MEM || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
    return;



  p = find_temp_slot_from_address ((((x)->fld[0]).rtx));
  if (p != 0)
    {
      p->level = ((p->level) < ((cfun->x_temp_slot_level)) ? (p->level) : ((cfun->x_temp_slot_level)));
      p->rtl_expr = 0;
    }

  return;
}
# 1212 "../../../kgccfe/gnu/function.c"
void
free_temp_slots ()
{
  struct temp_slot *p;

  for (p = (cfun->x_temp_slots); p; p = p->next)
    if (p->in_use && p->level == (cfun->x_temp_slot_level) && ! p->keep
 && p->rtl_expr == 0)
      p->in_use = 0;

  combine_temp_slots ();
}



void
free_temps_for_rtl_expr (t)
     tree t;
{
  struct temp_slot *p;

  for (p = (cfun->x_temp_slots); p; p = p->next)
    if (p->rtl_expr == t)
      {




 if ((cfun->x_temp_slot_level) <= p->level)
   p->in_use = 0;
 else
   p->rtl_expr = (tree) ((void *)0);
      }

  combine_temp_slots ();
}




void
mark_all_temps_used ()
{
  struct temp_slot *p;

  for (p = (cfun->x_temp_slots); p; p = p->next)
    {
      p->in_use = p->keep = 1;
      p->level = ((p->level) < ((cfun->x_temp_slot_level)) ? (p->level) : ((cfun->x_temp_slot_level)));
    }
}



void
push_temp_slots ()
{
  (cfun->x_temp_slot_level)++;
}
# 1315 "../../../kgccfe/gnu/function.c"
void
pop_temp_slots ()
{
  struct temp_slot *p;

  for (p = (cfun->x_temp_slots); p; p = p->next)
    if (p->in_use && p->level == (cfun->x_temp_slot_level) && p->rtl_expr == 0)
      p->in_use = 0;

  combine_temp_slots ();

  (cfun->x_temp_slot_level)--;
}



void
init_temp_slots ()
{

  (cfun->x_temp_slots) = 0;
  (cfun->x_temp_slot_level) = 0;
  (cfun->x_var_temp_slot_level) = 0;
  (cfun->x_target_temp_slot_level) = 0;
}







void
put_var_into_stack (decl, rescan)
     tree decl;
     int rescan;
{
  rtx reg;
  enum machine_mode promoted_mode, decl_mode;
  struct function *function = 0;
  tree context;
  int can_use_addressof;
  int volatilep = ((enum tree_code) (decl)->common.code) != SAVE_EXPR && ((decl)->common.volatile_flag);
  int usedp = (((decl)->common.used_flag)
        || (((enum tree_code) (decl)->common.code) != SAVE_EXPR && ((decl)->decl.initial) != 0));

  context = decl_function_context (decl);


  reg = (((enum tree_code) (decl)->common.code) == SAVE_EXPR
  ? (*(rtx *) &(decl)->exp.operands[2])
  : (((decl)->decl.rtl != ((void *)0)) ? ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) : ((void *)0)));




  if (reg == 0)
    return;


  decl_mode = (((enum tree_code) (decl)->common.code) == SAVE_EXPR ? ((((decl)->common.type))->type.mode)
        : ((decl)->decl.mode));

  promoted_mode = ((enum machine_mode) (reg)->mode);






  if (context != current_function_decl && context != inline_function_decl)
    for (function = outer_function_chain; function; function = function->outer)
      if (function->decl == context)
 break;



  if (((enum tree_code) (decl)->common.code) != SAVE_EXPR && ((decl)->decl.nonlocal_flag)
      && ((enum rtx_code) (reg)->code) == MEM
      && ((enum rtx_code) ((((reg)->fld[0]).rtx))->code) == REG
      && ((((((reg)->fld[0]).rtx))->fld[0]).rtuint) > (((176)) + 4))
    {
      reg = (((reg)->fld[0]).rtx);
      decl_mode = promoted_mode = ((enum machine_mode) (reg)->mode);
    }

  can_use_addressof
    = (function == 0
       && optimize > 0

       && decl_mode == promoted_mode



       );



  if (! can_use_addressof && ((enum rtx_code) (reg)->code) == MEM
      && ((enum rtx_code) ((((reg)->fld[0]).rtx))->code) == ADDRESSOF)
    reg = ((((((reg)->fld[0]).rtx))->fld[0]).rtx);



  if (((enum rtx_code) (reg)->code) == REG)
    {



      if (can_use_addressof)
 gen_mem_addressof (reg, decl, rescan);
      else
 put_reg_into_stack (function, reg, ((decl)->common.type), promoted_mode,
       decl_mode, volatilep, 0, usedp, 0);
    }
  else if (((enum rtx_code) (reg)->code) == CONCAT)
    {





      enum machine_mode part_mode = ((enum machine_mode) ((((reg)->fld[0]).rtx))->mode);
      tree part_type = (*lang_hooks.types.type_for_mode) (part_mode, 0);
      rtx lopart = (((reg)->fld[0]).rtx);
      rtx hipart = (((reg)->fld[1]).rtx);







      put_reg_into_stack (function, lopart, part_type, part_mode,
     part_mode, volatilep, 0, 0, 0);
      put_reg_into_stack (function, hipart, part_type, part_mode,
     part_mode, volatilep, 0, 0, 0);



      ((reg)->code = (enum rtx_code) (MEM));
      (((reg)->fld[1]).rtmem) = 0;



      if ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd'))
 ((decl)->decl.rtl = (((void *)0)));
      set_mem_attributes (reg, decl, 1);
      if ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd'))
 ((decl)->decl.rtl = (reg));



      (((reg)->fld[0]).rtx) = ((((((reg)->fld[0]).rtx))->fld[0]).rtx);

      if (((enum rtx_code) ((((reg)->fld[0]).rtx))->code) == PLUS)
 (((reg)->fld[0]).rtx) = copy_rtx ((((reg)->fld[0]).rtx));
      if (usedp && rescan)
 {
   schedule_fixup_var_refs (function, reg, ((decl)->common.type),
       promoted_mode, 0);
   schedule_fixup_var_refs (function, lopart, part_type, part_mode, 0);
   schedule_fixup_var_refs (function, hipart, part_type, part_mode, 0);
 }
    }
  else
    return;
}
# 1491 "../../../kgccfe/gnu/function.c"
static void
put_reg_into_stack (function, reg, type, promoted_mode, decl_mode, volatile_p,
      original_regno, used_p, ht)
     struct function *function;
     rtx reg;
     tree type;
     enum machine_mode promoted_mode, decl_mode;
     int volatile_p;
     unsigned int original_regno;
     int used_p;
     htab_t ht;
{
  struct function *func = function ? function : cfun;
  rtx new = 0;
  unsigned int regno = original_regno;

  if (regno == 0)
    regno = (((reg)->fld[0]).rtuint);

  if (regno < func->x_max_parm_reg)
    new = func->x_parm_reg_stack_loc[regno];

  if (new == 0)
    new = assign_stack_local_1 (decl_mode, (mode_size[(int) (decl_mode)]), 0, func);

  ((reg)->code = (enum rtx_code) (MEM));
  ((reg)->mode = (enum machine_mode) (decl_mode));
  (((reg)->fld[0]).rtx) = (((new)->fld[0]).rtx);
  (((reg)->fld[1]).rtmem) = 0;

  (((reg))->volatil) = volatile_p;






  if (type)
    {
      do { if ((((enum tree_code) (type)->common.code) == ARRAY_TYPE || ((enum tree_code) (type)->common.code) == RECORD_TYPE || ((enum tree_code) (type)->common.code) == UNION_TYPE || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (type)->common.code) == SET_TYPE) || (((new))->in_struct)) { (((reg))->in_struct) = 1; (((reg))->frame_related) = 0; } else { (((reg))->in_struct) = 0; (((reg))->frame_related) = 1; } } while (0);

      set_mem_alias_set (reg, get_alias_set (type));
    }

  if (used_p)
    schedule_fixup_var_refs (function, reg, type, promoted_mode, ht);
}





static void
schedule_fixup_var_refs (function, reg, type, promoted_mode, ht)
     struct function *function;
     rtx reg;
     tree type;
     enum machine_mode promoted_mode;
     htab_t ht;
{
  int unsigned_p = type ? ((type)->common.unsigned_flag) : 0;

  if (function != 0)
    {
      struct var_refs_queue *temp;

      temp
 = (struct var_refs_queue *) ggc_alloc (sizeof (struct var_refs_queue));
      temp->modified = reg;
      temp->promoted_mode = promoted_mode;
      temp->unsignedp = unsigned_p;
      temp->next = function->fixup_var_refs_queue;
      function->fixup_var_refs_queue = temp;
    }
  else

    fixup_var_refs (reg, promoted_mode, unsigned_p, reg, ht);
}

static void
fixup_var_refs (var, promoted_mode, unsignedp, may_share, ht)
     rtx var;
     enum machine_mode promoted_mode;
     int unsignedp;
     htab_t ht;
     rtx may_share;
{
  tree pending;
  rtx first_insn = get_insns ();
  struct sequence_stack *stack = (cfun->emit->sequence_stack);
  tree rtl_exps = (cfun->x_rtl_expr_chain);


  if (ht)
    {
      if (stack != 0)
 fancy_abort ("../../../kgccfe/gnu/function.c", 1587, __FUNCTION__);
      fixup_var_refs_insns_with_hash (ht, var, promoted_mode, unsignedp,
          may_share);
      return;
    }

  fixup_var_refs_insns (first_insn, var, promoted_mode, unsignedp,
   stack == 0, may_share);


  for (; stack; stack = stack->next)
    {
      push_to_full_sequence (stack->first, stack->last);
      fixup_var_refs_insns (stack->first, var, promoted_mode, unsignedp,
       stack->next != 0, may_share);


      stack->last = get_last_insn ();
      end_sequence ();
    }


  for (pending = rtl_exps; pending; pending = ((pending)->common.chain))
    {
      rtx seq = (*(rtx *) &(((pending)->list.value))->exp.operands[0]);
      if (seq != (const_int_rtx[64]) && seq != 0)
 {
   push_to_sequence (seq);
   fixup_var_refs_insns (seq, var, promoted_mode, unsignedp, 0,
    may_share);
   end_sequence ();
 }
    }
}





static struct fixup_replacement *
find_fixup_replacement (replacements, x)
     struct fixup_replacement **replacements;
     rtx x;
{
  struct fixup_replacement *p;


  for (p = *replacements; p != 0 && ! rtx_equal_p (p->old, x); p = p->next)
    ;

  if (p == 0)
    {
      p = (struct fixup_replacement *) xmalloc (sizeof (struct fixup_replacement));
      p->old = x;
      p->new = 0;
      p->next = *replacements;
      *replacements = p;
    }

  return p;
}






static void
fixup_var_refs_insns (insn, var, promoted_mode, unsignedp, toplevel, may_share)
     rtx insn;
     rtx var;
     enum machine_mode promoted_mode;
     int unsignedp;
     int toplevel;
     rtx may_share;
{
  while (insn)
    {


      rtx next = (((insn)->fld[2]).rtx);





      if (((enum rtx_code) (insn)->code) == CALL_INSN
   && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == CALL_PLACEHOLDER)
 {
   int i;



   for (i = 0; i < 3; i++)
     {
       rtx seq = ((((((insn)->fld[5]).rtx))->fld[i]).rtx);
       if (seq)
  {
    push_to_sequence (seq);
    fixup_var_refs_insns (seq, var, promoted_mode, unsignedp, 0,
     may_share);
    ((((((insn)->fld[5]).rtx))->fld[i]).rtx) = get_insns ();
    end_sequence ();
  }
     }
 }

      else if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 fixup_var_refs_insn (insn, var, promoted_mode, unsignedp, toplevel,
        may_share);

      insn = next;
    }
}
# 1709 "../../../kgccfe/gnu/function.c"
static void
fixup_var_refs_insns_with_hash (ht, var, promoted_mode, unsignedp, may_share)
     htab_t ht;
     rtx var;
     enum machine_mode promoted_mode;
     int unsignedp;
     rtx may_share;
{
  struct insns_for_mem_entry tmp;
  struct insns_for_mem_entry *ime;
  rtx insn_list;

  tmp.key = var;
  ime = (struct insns_for_mem_entry *) htab_find (ht, &tmp);
  for (insn_list = ime->insns; insn_list != 0; insn_list = (((insn_list)->fld[1]).rtx))
    if (((rtx_class[(int) (((enum rtx_code) ((((insn_list)->fld[0]).rtx))->code))]) == 'i'))
      fixup_var_refs_insn ((((insn_list)->fld[0]).rtx), var, promoted_mode,
      unsignedp, 1, may_share);
}
# 1736 "../../../kgccfe/gnu/function.c"
static void
fixup_var_refs_insn (insn, var, promoted_mode, unsignedp, toplevel, no_share)
     rtx insn;
     rtx var;
     enum machine_mode promoted_mode;
     int unsignedp;
     int toplevel;
     rtx no_share;
{
  rtx call_dest = 0;
  rtx set, prev, prev_set;
  rtx note;


  note = (((insn)->fld[8]).rtx);





  if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == CLOBBER
      && (((((((insn)->fld[5]).rtx))->fld[0]).rtx) == var
   || (((enum rtx_code) (((((((insn)->fld[5]).rtx))->fld[0]).rtx))->code) == CONCAT
       && ((((((((((insn)->fld[5]).rtx))->fld[0]).rtx))->fld[0]).rtx) == var
    || (((((((((insn)->fld[5]).rtx))->fld[0]).rtx))->fld[1]).rtx) == var))))
    {
      if ((note = find_reg_note (insn, REG_LIBCALL, (rtx) 0)) != 0)



 remove_note ((((note)->fld[0]).rtx),
       find_reg_note ((((note)->fld[0]).rtx), REG_RETVAL,
        (rtx) 0));

      delete_insn (insn);
    }






  else if (toplevel
    && (set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0)) != 0
    && (((set)->fld[0]).rtx) == var


    && find_reg_note (insn, REG_RETVAL, (rtx) 0) == 0
    && (rtx_equal_p ((((set)->fld[1]).rtx), var)
        || (((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
     && (prev = prev_nonnote_insn (insn)) != 0
     && (prev_set = (((rtx_class[(int) (((enum rtx_code) (prev)->code))]) == 'i') ? (((enum rtx_code) ((((prev)->fld[5]).rtx))->code) == SET ? (((prev)->fld[5]).rtx) : single_set_2 (prev, (((prev)->fld[5]).rtx))) : (rtx) 0)) != 0
     && (((prev_set)->fld[0]).rtx) == (((set)->fld[1]).rtx)
     && rtx_equal_p ((((prev_set)->fld[1]).rtx), var))))
    {
      delete_insn (insn);
    }
  else
    {
      struct fixup_replacement *replacements = 0;
      rtx next_insn = (((insn)->fld[2]).rtx);

      if (((target_flags & 0x00100000)))
 {
# 1813 "../../../kgccfe/gnu/function.c"
   if (call_dest != 0 && ((enum rtx_code) (insn)->code) == INSN
       && reg_mentioned_p (var, (((insn)->fld[5]).rtx))
       && reg_mentioned_p (call_dest, (((insn)->fld[5]).rtx)))
     {
       rtx temp = gen_reg_rtx (((enum machine_mode) (call_dest)->mode));

       emit_insn_before (gen_move_insn (temp, call_dest), insn);

       (((insn)->fld[5]).rtx) = replace_rtx ((((insn)->fld[5]).rtx),
         call_dest, temp);
     }

   if (((enum rtx_code) (insn)->code) == CALL_INSN
       && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
     call_dest = ((((((insn)->fld[5]).rtx))->fld[0]).rtx);
   else if (((enum rtx_code) (insn)->code) == CALL_INSN
     && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
     && ((enum rtx_code) (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->code) == SET)
     call_dest = (((((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[0]).rtx);
   else
     call_dest = 0;
 }
# 1847 "../../../kgccfe/gnu/function.c"
      fixup_var_refs_1 (var, promoted_mode, &(((insn)->fld[5]).rtx), insn,
   &replacements, no_share);




      if (insn == (cfun->x_last_parm_insn))
 (cfun->x_last_parm_insn) = (((next_insn)->fld[1]).rtx);

      while (replacements)
 {
   struct fixup_replacement *next;

   if (((enum rtx_code) (replacements->new)->code) == REG)
     {
       rtx insert_before;
       rtx seq;


       if (((enum rtx_code) (replacements->old)->code) == SUBREG)
  replacements->old
    = fixup_memory_subreg (replacements->old, insn,
      promoted_mode, 0);
       else
  replacements->old
    = fixup_stack_1 (replacements->old, insn);

       insert_before = insn;





       if (((enum machine_mode) (replacements->new)->mode)
    != ((enum machine_mode) (replacements->old)->mode))
  {
    start_sequence ();
    convert_move (replacements->new,
    replacements->old, unsignedp);
    seq = get_insns ();
    end_sequence ();
  }
       else
  seq = gen_move_insn (replacements->new,
         replacements->old);

       emit_insn_before (seq, insert_before);
     }

   next = replacements->next;
   free (replacements);
   replacements = next;
 }
    }




  while (note)
    {
      if (((enum rtx_code) (note)->code) != INSN_LIST)
 (((note)->fld[0]).rtx)
   = walk_fixup_memory_subreg ((((note)->fld[0]).rtx), insn,
          promoted_mode, 1);
      note = (((note)->fld[1]).rtx);
    }
}
# 1926 "../../../kgccfe/gnu/function.c"
static void
fixup_var_refs_1 (var, promoted_mode, loc, insn, replacements, no_share)
     rtx var;
     enum machine_mode promoted_mode;
     rtx *loc;
     rtx insn;
     struct fixup_replacement **replacements;
     rtx no_share;
{
  int i;
  rtx x = *loc;
  enum rtx_code code = ((enum rtx_code) (x)->code);
  const char *fmt;
  rtx tem, tem1;
  struct fixup_replacement *replacement;

  switch (code)
    {
    case ADDRESSOF:
      if ((((x)->fld[0]).rtx) == var)
 {

   rtx sub = copy_rtx ((((var)->fld[0]).rtx));

   if (! validate_change (insn, loc, sub, 0))
     {
       rtx y = gen_reg_rtx (((enum machine_mode) (sub)->mode));
       rtx seq, new_insn;




       if (! validate_replace_rtx (*loc, y, insn))
  fancy_abort ("../../../kgccfe/gnu/function.c", 1959, __FUNCTION__);






       start_sequence ();
       new_insn = emit_insn (gen_rtx_fmt_ee (SET, (VOIDmode), (y), (sub)));
       seq = get_insns ();
       end_sequence ();

       if (((((new_insn)->fld[6]).rtint) >= 0 ? (((new_insn)->fld[6]).rtint) : recog_memoized_1 (new_insn)) < 0)
  {


    start_sequence ();
    sub = force_operand (sub, y);
    if (sub != y)
      emit_insn (gen_move_insn (y, sub));
    seq = get_insns ();
    end_sequence ();
  }







       emit_insn_before (seq, insn);
     }
 }
      return;

    case MEM:
      if (var == x)
 {



   replacement = find_fixup_replacement (replacements, var);
   if (replacement->new)
     {
       *loc = replacement->new;
       return;
     }

   *loc = replacement->new = x = fixup_stack_1 (x, insn);




   (((insn)->fld[6]).rtint) = -1;
   if (! flag_force_mem && ((enum machine_mode) (x)->mode) == promoted_mode
       && ((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
     return;

   *loc = replacement->new = gen_reg_rtx (promoted_mode);
   return;
 }






      if (reg_mentioned_p (var, x))
 {
   replacement = find_fixup_replacement (replacements, x);
   if (replacement->new == 0)
     replacement->new = copy_most_rtx (x, no_share);

   *loc = x = replacement->new;
   code = ((enum rtx_code) (x)->code);
 }
      break;

    case REG:
    case CC0:
    case PC:
    case CONST_INT:
    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
    case CONST_DOUBLE:
    case CONST_VECTOR:
      return;

    case SIGN_EXTRACT:
    case ZERO_EXTRACT:


      if ((((x)->fld[0]).rtx) == var
   || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
       && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == var))
 {





   tem = (((x)->fld[0]).rtx);
   if (((enum rtx_code) (tem)->code) == SUBREG)
     {
       if ((mode_bitsize[(int) (((enum machine_mode) (tem)->mode))])
    > (mode_bitsize[(int) (((enum machine_mode) (var)->mode))]))
  {
    replacement = find_fixup_replacement (replacements, var);
    if (replacement->new == 0)
      replacement->new = gen_reg_rtx (((enum machine_mode) (var)->mode));
    (((tem)->fld[0]).rtx) = replacement->new;






    (((x)->fld[0]).rtx) = tem;
    return;
  }
       else
  tem = fixup_memory_subreg (tem, insn, promoted_mode, 0);
     }
   else
     tem = fixup_stack_1 (tem, insn);





   if (! flag_force_mem && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) ((((x)->fld[2]).rtx))->code) == CONST_INT
       && ! mode_dependent_address_p ((((tem)->fld[0]).rtx))
       && ! (((tem))->volatil))
     {
       enum machine_mode wanted_mode = VOIDmode;
       enum machine_mode is_mode = ((enum machine_mode) (tem)->mode);
       long long pos = ((((((x)->fld[2]).rtx))->fld[0]).rtwint);

       if (((enum rtx_code) (x)->code) == ZERO_EXTRACT)
  {
    enum machine_mode new_mode
      = mode_for_extraction (EP_extzv, 1);
    if (new_mode != MAX_MACHINE_MODE)
      wanted_mode = new_mode;
  }
       else if (((enum rtx_code) (x)->code) == SIGN_EXTRACT)
  {
    enum machine_mode new_mode
      = mode_for_extraction (EP_extv, 1);
    if (new_mode != MAX_MACHINE_MODE)
      wanted_mode = new_mode;
  }


       if (wanted_mode != VOIDmode
    && (mode_size[(int) (wanted_mode)]) < (mode_size[(int) (is_mode)]))
  {
    long long offset = pos / 8;
    rtx old_pos = (((x)->fld[2]).rtx);
    rtx newmem;



    if (((target_flags & 0x00010000) != 0) != 0)
      offset = ((mode_size[(int) (is_mode)])
         - (mode_size[(int) (wanted_mode)]) - offset);

    pos %= (mode_bitsize[(int) (wanted_mode)]);

    newmem = adjust_address_1 (tem, wanted_mode, offset, 0, 1);


    (((insn)->fld[6]).rtint) = -1;
    (((x)->fld[0]).rtx) = newmem;
    (((x)->fld[2]).rtx) = gen_rtx_CONST_INT (VOIDmode, (long long) (pos));

    if (((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
      return;



    (((x)->fld[2]).rtx) = old_pos;
  }
     }




   tem1 = gen_reg_rtx (((enum machine_mode) (tem)->mode));
   emit_insn_before (gen_move_insn (tem1, tem), insn);
   (((x)->fld[0]).rtx) = tem1;
   return;
 }
      break;

    case SUBREG:
      if ((((x)->fld[0]).rtx) == var)
 {





   if ((((x))->in_struct))
     {
       *loc = var;
       fixup_var_refs_1 (var, ((enum machine_mode) (var)->mode), loc, insn, replacements,
    no_share);
       return;
     }





   if ((mode_size[(int) (((enum machine_mode) (x)->mode))]) > (mode_size[(int) (((enum machine_mode) (var)->mode))]))
     {
       replacement = find_fixup_replacement (replacements, var);
       if (replacement->new == 0)
  replacement->new = gen_reg_rtx (promoted_mode);
       (((x)->fld[0]).rtx) = replacement->new;
       return;
     }





   replacement = find_fixup_replacement (replacements, x);
   if (replacement->new)
     {
       *loc = replacement->new;
       return;
     }

   replacement->new = *loc = fixup_memory_subreg (x, insn,
        promoted_mode, 0);

   (((insn)->fld[6]).rtint) = -1;
   if (! flag_force_mem && ((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
     return;

   *loc = replacement->new = gen_reg_rtx (((enum machine_mode) (x)->mode));
   return;
 }
      break;

    case SET:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SIGN_EXTRACT
   || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTRACT)
 optimize_bit_field (x, insn, 0);
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SIGN_EXTRACT
   || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == ZERO_EXTRACT)
 optimize_bit_field (x, insn, 0);



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTRACT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG
   && (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx) == var
   && ((mode_size[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))])
       > (mode_size[(int) (((enum machine_mode) (var)->mode))])))
 {
   replacement = find_fixup_replacement (replacements, var);
   if (replacement->new == 0)
     replacement->new = gen_reg_rtx (((enum machine_mode) (var)->mode));

   (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx) = replacement->new;
   emit_insn_after (gen_move_insn (var, replacement->new), insn);
 }



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == var
   && ((mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       > (mode_size[(int) (((enum machine_mode) (var)->mode))])))
 {
   (((x)->fld[0]).rtx) = tem = gen_reg_rtx (((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
   emit_insn_after (gen_move_insn (var, gen_lowpart (((enum machine_mode) (var)->mode),
           tem)),
      insn);
   break;
 }

      {
 rtx dest = (((x)->fld[0]).rtx);
 rtx src = (((x)->fld[1]).rtx);
 rtx outerdest = dest;

 while (((enum rtx_code) (dest)->code) == SUBREG || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART
        || ((enum rtx_code) (dest)->code) == SIGN_EXTRACT
        || ((enum rtx_code) (dest)->code) == ZERO_EXTRACT)
   dest = (((dest)->fld[0]).rtx);

 if (((enum rtx_code) (src)->code) == SUBREG)
   src = (((src)->fld[0]).rtx);




 if (src != var && dest != var)
   break;


 (((insn)->fld[6]).rtint) = -1;

 if (((enum rtx_code) (outerdest)->code) == ZERO_EXTRACT && dest == var
     && mode_for_extraction (EP_insv, -1) != MAX_MACHINE_MODE)
   {


     fixup_var_refs_1 (var, promoted_mode, &(((outerdest)->fld[1]).rtx),
         insn, replacements, no_share);
     fixup_var_refs_1 (var, promoted_mode, &(((outerdest)->fld[2]).rtx),
         insn, replacements, no_share);
     fixup_var_refs_1 (var, promoted_mode, &(((x)->fld[1]).rtx),
         insn, replacements, no_share);

     tem = (((outerdest)->fld[0]).rtx);




     if (((enum rtx_code) (tem)->code) == SUBREG
  && (((tem)->fld[0]).rtx) == var)
       tem = fixup_memory_subreg (tem, insn, promoted_mode, 0);
     else
       tem = fixup_stack_1 (tem, insn);

     if (((enum rtx_code) ((((outerdest)->fld[1]).rtx))->code) == CONST_INT
  && ((enum rtx_code) ((((outerdest)->fld[2]).rtx))->code) == CONST_INT
  && ! mode_dependent_address_p ((((tem)->fld[0]).rtx))
  && ! (((tem))->volatil))
       {
  enum machine_mode wanted_mode;
  enum machine_mode is_mode = ((enum machine_mode) (tem)->mode);
  long long pos = ((((((outerdest)->fld[2]).rtx))->fld[0]).rtwint);

  wanted_mode = mode_for_extraction (EP_insv, 0);


  if ((mode_size[(int) (wanted_mode)]) < (mode_size[(int) (is_mode)]))
    {
      long long offset = pos / 8;
      rtx old_pos = (((outerdest)->fld[2]).rtx);
      rtx newmem;

      if (((target_flags & 0x00010000) != 0) != 0)
        offset = ((mode_size[(int) (is_mode)])
    - (mode_size[(int) (wanted_mode)]) - offset);

      pos %= (mode_bitsize[(int) (wanted_mode)]);

      newmem = adjust_address_1 (tem, wanted_mode, offset, 0, 1);


      (((insn)->fld[6]).rtint) = -1;
      (((outerdest)->fld[0]).rtx) = newmem;
      (((outerdest)->fld[2]).rtx) = gen_rtx_CONST_INT (VOIDmode, (long long) (pos));

      if (((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
        return;



      (((outerdest)->fld[2]).rtx) = old_pos;
    }
       }





     tem1 = gen_reg_rtx (((enum machine_mode) (tem)->mode));
     emit_insn_before (gen_move_insn (tem1, tem), insn);
     emit_insn_after (gen_move_insn (tem, tem1), insn);
     (((outerdest)->fld[0]).rtx) = tem1;
     return;
   }





 if (dest == var && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == STRICT_LOW_PART)
   (((x)->fld[0]).rtx) = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
# 2361 "../../../kgccfe/gnu/function.c"
 if (((((x)->fld[1]).rtx) == var
      || (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG
   && ((((((x)->fld[1]).rtx))->fld[0]).rtx) == var))
     && (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
  || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
      && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == REG))
     && ((enum machine_mode) (var)->mode) == promoted_mode
     && x == (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0))
   {
     rtx pat, last;

     if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG
  && ((mode_size[(int) (((enum machine_mode) ((((x)->fld[1]).rtx))->mode))])
      > (mode_size[(int) (((enum machine_mode) (var)->mode))])))
       {


  replacement = find_fixup_replacement (replacements, var);
  if (replacement->new == (rtx) 0)
    replacement->new = gen_reg_rtx (((enum machine_mode) (var)->mode));
  ((((((x)->fld[1]).rtx))->fld[0]).rtx) = replacement->new;
       }
     else
       {
  replacement = find_fixup_replacement (replacements, (((x)->fld[1]).rtx));
  if (replacement->new)
    (((x)->fld[1]).rtx) = replacement->new;
  else if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG)
    (((x)->fld[1]).rtx) = replacement->new
      = fixup_memory_subreg ((((x)->fld[1]).rtx), insn, promoted_mode,
        0);
  else
    (((x)->fld[1]).rtx) = replacement->new
      = fixup_stack_1 ((((x)->fld[1]).rtx), insn);
       }

     if (((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
       return;
# 2408 "../../../kgccfe/gnu/function.c"
     pat = gen_move_insn ((((x)->fld[0]).rtx), (((x)->fld[1]).rtx));
     if ((((pat)->fld[2]).rtx) != (rtx) 0)
       {
  last = emit_insn_before (pat, insn);






  if ((((last)->fld[8]).rtx) && (((insn)->fld[8]).rtx))
    fancy_abort ("../../../kgccfe/gnu/function.c", 2419, __FUNCTION__);
  if ((((last)->fld[8]).rtx))
    (((insn)->fld[8]).rtx) = (((last)->fld[8]).rtx);
  (((insn)->fld[5]).rtx) = (((last)->fld[5]).rtx);

  delete_insn (last);
       }
     else
       (((insn)->fld[5]).rtx) = (((pat)->fld[5]).rtx);

     return;
   }

 if (((((x)->fld[0]).rtx) == var
      || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == var))
     && (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == REG
  || (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG
      && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == REG))
     && ((enum machine_mode) (var)->mode) == promoted_mode
     && x == (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0))
   {
     rtx pat, last;

     if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG)
       (((x)->fld[0]).rtx) = fixup_memory_subreg ((((x)->fld[0]).rtx), insn,
        promoted_mode, 0);
     else
       (((x)->fld[0]).rtx) = fixup_stack_1 ((((x)->fld[0]).rtx), insn);

     if (((((insn)->fld[6]).rtint) >= 0 ? (((insn)->fld[6]).rtint) : recog_memoized_1 (insn)) >= 0)
       return;

     pat = gen_move_insn ((((x)->fld[0]).rtx), (((x)->fld[1]).rtx));
     if ((((pat)->fld[2]).rtx) != (rtx) 0)
       {
  last = emit_insn_before (pat, insn);






  if ((((last)->fld[8]).rtx) && (((insn)->fld[8]).rtx))
    fancy_abort ("../../../kgccfe/gnu/function.c", 2463, __FUNCTION__);
  if ((((last)->fld[8]).rtx))
    (((insn)->fld[8]).rtx) = (((last)->fld[8]).rtx);
  (((insn)->fld[5]).rtx) = (((last)->fld[5]).rtx);

  delete_insn (last);
       }
     else
       (((insn)->fld[5]).rtx) = (((pat)->fld[5]).rtx);

     return;
   }
# 2486 "../../../kgccfe/gnu/function.c"
 if (dest == var)
   {
     rtx temp;
     rtx fixeddest = (((x)->fld[0]).rtx);
     enum machine_mode temp_mode;


     if (((enum rtx_code) (fixeddest)->code) == STRICT_LOW_PART)
       fixeddest = (((fixeddest)->fld[0]).rtx);

     if (((enum rtx_code) (fixeddest)->code) == SUBREG)
       {
  fixeddest = fixup_memory_subreg (fixeddest, insn,
       promoted_mode, 0);
  temp_mode = ((enum machine_mode) (fixeddest)->mode);
       }
     else
       {
  fixeddest = fixup_stack_1 (fixeddest, insn);
  temp_mode = promoted_mode;
       }

     temp = gen_reg_rtx (temp_mode);

     emit_insn_after (gen_move_insn (fixeddest,
         gen_lowpart (((enum machine_mode) (fixeddest)->mode),
        temp)),
        insn);

     (((x)->fld[0]).rtx) = temp;
   }
      }

    default:
      break;
    }



  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 fixup_var_refs_1 (var, promoted_mode, &(((x)->fld[i]).rtx), insn, replacements,
     no_share);
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     fixup_var_refs_1 (var, promoted_mode, &(((((x)->fld[i]).rtvec))->elem[j]),
         insn, replacements, no_share);
 }
    }
}
# 2551 "../../../kgccfe/gnu/function.c"
static rtx
fixup_memory_subreg (x, insn, promoted_mode, uncritical)
     rtx x;
     rtx insn;
     enum machine_mode promoted_mode;
     int uncritical;
{
  int offset;
  rtx mem = (((x)->fld[0]).rtx);
  rtx addr = (((mem)->fld[0]).rtx);
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx result, seq;


  if ((mode_size[(int) (mode)]) > (mode_size[(int) (((enum machine_mode) (mem)->mode))]) && ! uncritical)
    fancy_abort ("../../../kgccfe/gnu/function.c", 2566, __FUNCTION__);

  offset = (((x)->fld[1]).rtuint);
  if (((target_flags & 0x00010000) != 0))



    offset -= ((mode_size[(int) (promoted_mode)]) - (mode_size[(int) (((enum machine_mode) (mem)->mode))]));

  if (!flag_force_addr
      && memory_address_p (mode, plus_constant_wide ((addr), (long long) (offset))))

    return adjust_address_1 (mem, mode, offset, 1, 1);

  start_sequence ();
  result = adjust_address_1 (mem, mode, offset, 1, 1);
  seq = get_insns ();
  end_sequence ();

  emit_insn_before (seq, insn);
  return result;
}
# 2597 "../../../kgccfe/gnu/function.c"
static rtx
walk_fixup_memory_subreg (x, insn, promoted_mode, uncritical)
     rtx x;
     rtx insn;
     enum machine_mode promoted_mode;
     int uncritical;
{
  enum rtx_code code;
  const char *fmt;
  int i;

  if (x == 0)
    return 0;

  code = ((enum rtx_code) (x)->code);

  if (code == SUBREG && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
    return fixup_memory_subreg (x, insn, promoted_mode, uncritical);



  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 (((x)->fld[i]).rtx) = walk_fixup_memory_subreg ((((x)->fld[i]).rtx), insn,
      promoted_mode, uncritical);
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     (((((x)->fld[i]).rtvec))->elem[j])
       = walk_fixup_memory_subreg ((((((x)->fld[i]).rtvec))->elem[j]), insn,
       promoted_mode, uncritical);
 }
    }
  return x;
}







static rtx
fixup_stack_1 (x, insn)
     rtx x;
     rtx insn;
{
  int i;
  enum rtx_code code = ((enum rtx_code) (x)->code);
  const char *fmt;

  if (code == MEM)
    {
      rtx ad = (((x)->fld[0]).rtx);


      if (((enum rtx_code) (ad)->code) == PLUS
   && ((enum rtx_code) ((((ad)->fld[0]).rtx))->code) == REG
   && ((((((((ad)->fld[0]).rtx))->fld[0]).rtuint) >= (176)
        && ((((((ad)->fld[0]).rtx))->fld[0]).rtuint) <= (((176)) + 4))
       || ((((((ad)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 1)

       || ((((((ad)->fld[0]).rtx))->fld[0]).rtuint) == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)

       || ((((((ad)->fld[0]).rtx))->fld[0]).rtuint) == (0 + 29)
       || ((((((ad)->fld[0]).rtx))->fld[0]).rtuint) == 0
       || (((ad)->fld[0]).rtx) == (cfun->internal_arg_pointer))
   && ((enum rtx_code) ((((ad)->fld[1]).rtx))->code) == CONST_INT)
 {
   rtx temp, seq;
   if (memory_address_p (((enum machine_mode) (x)->mode), ad))
     return x;

   start_sequence ();
   temp = copy_to_reg (ad);
   seq = get_insns ();
   end_sequence ();
   emit_insn_before (seq, insn);
   return replace_equiv_address (x, temp);
 }
      return x;
    }

  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 (((x)->fld[i]).rtx) = fixup_stack_1 ((((x)->fld[i]).rtx), insn);
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     (((((x)->fld[i]).rtvec))->elem[j]) = fixup_stack_1 ((((((x)->fld[i]).rtvec))->elem[j]), insn);
 }
    }
  return x;
}
# 2709 "../../../kgccfe/gnu/function.c"
static void
optimize_bit_field (body, insn, equiv_mem)
     rtx body;
     rtx insn;
     rtx *equiv_mem;
{
# 2859 "../../../kgccfe/gnu/function.c"
}
# 2868 "../../../kgccfe/gnu/function.c"
static int in_arg_offset;
static int var_offset;
static int dynamic_offset;
static int out_arg_offset;
static int cfa_offset;
# 2922 "../../../kgccfe/gnu/function.c"
rtx
gen_mem_addressof (reg, decl, rescan)
     rtx reg;
     tree decl;
     int rescan;
{
  rtx r = gen_rtx_fmt_eit (ADDRESSOF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (gen_reg_rtx (((enum machine_mode) (reg)->mode))), ((((reg)->fld[0]).rtuint)), (decl));



  long long set = decl ? get_alias_set (decl) : 0;



  ((((((r)->fld[0]).rtx)))->volatil) = (((reg))->volatil);
  ((((((r)->fld[0]).rtx)))->unchanging) = (((reg))->unchanging);

  ((reg)->code = (enum rtx_code) (MEM));
  (((reg)->fld[1]).rtmem) = 0;
  (((reg)->fld[0]).rtx) = r;

  if (decl)
    {
      tree type = ((decl)->common.type);
      enum machine_mode decl_mode
 = ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') ? ((decl)->decl.mode) : ((((decl)->common.type))->type.mode));
      rtx decl_rtl = (((enum tree_code) (decl)->common.code) == SAVE_EXPR ? (*(rtx *) &(decl)->exp.operands[2])
        : (((decl)->decl.rtl != ((void *)0)) ? ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) : ((void *)0)));

      ((reg)->mode = (enum machine_mode) (decl_mode));



      if ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') && decl_rtl == reg)
 ((decl)->decl.rtl = (0));

      set_mem_attributes (reg, decl, 1);
      set_mem_alias_set (reg, set);

      if ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') && decl_rtl == reg)
 ((decl)->decl.rtl = (reg));

      if (rescan
   && (((decl)->common.used_flag) || ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') && ((decl)->decl.initial) != 0)))
 fixup_var_refs (reg, ((enum machine_mode) (reg)->mode), ((type)->common.unsigned_flag), reg, 0);
    }
  else if (rescan)
    fixup_var_refs (reg, ((enum machine_mode) (reg)->mode), 0, reg, 0);

  return reg;
}



void
flush_addressof (decl)
     tree decl;
{
  if ((((enum tree_code) (decl)->common.code) == PARM_DECL || ((enum tree_code) (decl)->common.code) == VAR_DECL)
      && ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
      && ((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == MEM
      && ((enum rtx_code) ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx))->code) == ADDRESSOF
      && ((enum rtx_code) (((((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx))->fld[0]).rtx))->code) == REG)
    put_addressof_into_stack ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx), 0);
}



static void
put_addressof_into_stack (r, ht)
     rtx r;
     htab_t ht;
{
  tree decl, type;
  int volatile_p, used_p;

  rtx reg = (((r)->fld[0]).rtx);

  if (((enum rtx_code) (reg)->code) != REG)
    fancy_abort ("../../../kgccfe/gnu/function.c", 3001, __FUNCTION__);

  decl = (((r)->fld[2]).rttree);
  if (decl)
    {
      type = ((decl)->common.type);
      volatile_p = (((enum tree_code) (decl)->common.code) != SAVE_EXPR
      && ((decl)->common.volatile_flag));
      used_p = (((decl)->common.used_flag)
  || ((tree_code_type[(int) (((enum tree_code) (decl)->common.code))] == 'd') && ((decl)->decl.initial) != 0));
    }
  else
    {
      type = (tree) ((void *)0);
      volatile_p = 0;
      used_p = 1;
    }

  put_reg_into_stack (0, reg, type, ((enum machine_mode) (reg)->mode), ((enum machine_mode) (reg)->mode),
        volatile_p, (((r)->fld[1]).rtuint), used_p, ht);
}



static rtx purge_bitfield_addressof_replacements;







static rtx purge_addressof_replacements;






static _Bool
purge_addressof_1 (loc, insn, force, store, ht)
     rtx *loc;
     rtx insn;
     int force, store;
     htab_t ht;
{
  rtx x;
  enum rtx_code code;
  int i, j;
  const char *fmt;
  _Bool result = 1;


 restart:

  x = *loc;
  if (x == 0)
    return 1;

  code = ((enum rtx_code) (x)->code);




  if (code == SET)
    {
      result = purge_addressof_1 (&(((x)->fld[0]).rtx), insn, force, 1, ht);
      result &= purge_addressof_1 (&(((x)->fld[1]).rtx), insn, force, 0, ht);
      return result;
    }
  else if (code == ADDRESSOF)
    {
      rtx sub, insns;

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) != MEM)
 put_addressof_into_stack (x, ht);



      sub = copy_rtx (((((((x)->fld[0]).rtx))->fld[0]).rtx));
      if (validate_change (insn, loc, sub, 0)
   || validate_replace_rtx (x, sub, insn))
 return 1;

      start_sequence ();
      sub = force_operand (sub, (rtx) 0);
      if (! validate_change (insn, loc, sub, 0)
   && ! validate_replace_rtx (x, sub, insn))
 fancy_abort ("../../../kgccfe/gnu/function.c", 3089, __FUNCTION__);

      insns = get_insns ();
      end_sequence ();
      emit_insn_before (insns, insn);
      return 1;
    }

  else if (code == MEM && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ADDRESSOF && ! force)
    {
      rtx sub = ((((((x)->fld[0]).rtx))->fld[0]).rtx);

      if (((enum rtx_code) (sub)->code) == MEM)
 sub = adjust_address_1 (sub, ((enum machine_mode) (x)->mode), 0, 0, 1);
      else if (((enum rtx_code) (sub)->code) == REG
        && ((((x))->volatil) || ((enum machine_mode) (x)->mode) == BLKmode))
 ;
      else if (((enum rtx_code) (sub)->code) == REG && ((enum machine_mode) (x)->mode) != ((enum machine_mode) (sub)->mode))
 {
   int size_x, size_sub;

   if (!insn)
     {



       rtx tem;

       for (tem = purge_bitfield_addressof_replacements;
     tem != (rtx) 0;
     tem = ((((((tem)->fld[1]).rtx))->fld[1]).rtx))
  if (rtx_equal_p (x, (((tem)->fld[0]).rtx)))
    {
      *loc = ((((((tem)->fld[1]).rtx))->fld[0]).rtx);
      return 1;
    }


       for (tem = purge_addressof_replacements;
     tem != (rtx) 0;
     tem = ((((((tem)->fld[1]).rtx))->fld[1]).rtx))
  if (rtx_equal_p ((((x)->fld[0]).rtx), (((tem)->fld[0]).rtx)))
    {
      rtx z = ((((((tem)->fld[1]).rtx))->fld[0]).rtx);

      if (((enum machine_mode) (x)->mode) == ((enum machine_mode) (z)->mode)
   || (((enum rtx_code) (((((((tem)->fld[1]).rtx))->fld[0]).rtx))->code) != REG
       && ((enum rtx_code) (((((((tem)->fld[1]).rtx))->fld[0]).rtx))->code) != SUBREG))
        fancy_abort ("../../../kgccfe/gnu/function.c", 3137, __FUNCTION__);






      if (((enum rtx_code) (z)->code) == SUBREG && (((z)->fld[1]).rtuint) == 0)
        z = (((z)->fld[0]).rtx);

      if ((mode_size[(int) (((enum machine_mode) (x)->mode))]) > ((target_flags & 0x00002000) ? 8 : 4)
   && ((mode_size[(int) (((enum machine_mode) (x)->mode))])
       > (mode_size[(int) (((enum machine_mode) (z)->mode))])))
        {






   z = gen_rtx_SUBREG (((enum machine_mode) (x)->mode), z, 0);
        }
      else
        z = gen_lowpart (((enum machine_mode) (x)->mode), z);

      *loc = z;
      return 1;
    }
# 3173 "../../../kgccfe/gnu/function.c"
       return 0;
     }

   size_x = (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]);
   size_sub = (mode_bitsize[(int) (((enum machine_mode) (sub)->mode))]);




   if ((((x))->unchanging) && size_x != size_sub)
     ;



   else if (size_x <= size_sub
            && int_mode_for_mode (((enum machine_mode) (sub)->mode)) != BLKmode)
     {



       rtx val, seq;

       if (store)
  {
    rtx p = (((insn)->fld[1]).rtx);

    start_sequence ();
    val = gen_reg_rtx (((enum machine_mode) (x)->mode));
    if (! validate_change (insn, loc, val, 0))
      {


        end_sequence ();
        goto give_up;
      }
    seq = get_insns ();
    end_sequence ();
    emit_insn_before (seq, insn);
    compute_insns_for_mem (p ? (((p)->fld[2]).rtx) : get_insns (),
      insn, ht);

    start_sequence ();
    store_bit_field (sub, size_x, 0, ((enum machine_mode) (x)->mode),
       val, (mode_size[(int) (((enum machine_mode) (sub)->mode))]));



    unshare_all_rtl_again (get_insns ());

    seq = get_insns ();
    end_sequence ();
    p = emit_insn_after (seq, insn);
    if ((((insn)->fld[2]).rtx))
      compute_insns_for_mem ((((insn)->fld[2]).rtx),
        p ? (((p)->fld[2]).rtx) : (rtx) 0,
        ht);
  }
       else
  {
    rtx p = (((insn)->fld[1]).rtx);

    start_sequence ();
    val = extract_bit_field (sub, size_x, 0, 1, (rtx) 0,
        ((enum machine_mode) (x)->mode), ((enum machine_mode) (x)->mode),
        (mode_size[(int) (((enum machine_mode) (sub)->mode))]));

    if (! validate_change (insn, loc, val, 0))
      {


        end_sequence ();
        goto give_up;
      }

    seq = get_insns ();
    end_sequence ();
    emit_insn_before (seq, insn);
    compute_insns_for_mem (p ? (((p)->fld[2]).rtx) : get_insns (),
      insn, ht);
  }



       purge_bitfield_addressof_replacements
  = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (x), (gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (val), (purge_bitfield_addressof_replacements))));





       return 1;
     }
 }

      else if (validate_change (insn, loc, sub, 0))
 {


   if (((enum rtx_code) (sub)->code) == REG || ((enum rtx_code) (sub)->code) == SUBREG)
     {
       rtx tem;

       for (tem = purge_addressof_replacements;
     tem != (rtx) 0;
     tem = ((((((tem)->fld[1]).rtx))->fld[1]).rtx))
  if (rtx_equal_p ((((x)->fld[0]).rtx), (((tem)->fld[0]).rtx)))
    {
      ((((((tem)->fld[1]).rtx))->fld[0]).rtx) = sub;
      return 1;
    }
       purge_addressof_replacements
  = gen_rtx (EXPR_LIST, VOIDmode, (((x)->fld[0]).rtx),
      gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (sub), (purge_addressof_replacements)));

       return 1;
     }
   goto restart;
 }
    }

 give_up:

  fmt = (rtx_format[(int) (code)]);
  for (i = 0; i < (rtx_length[(int) (code)]); i++, fmt++)
    {
      if (*fmt == 'e')
 result &= purge_addressof_1 (&(((x)->fld[i]).rtx), insn, force, 0, ht);
      else if (*fmt == 'E')
 for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
   result &= purge_addressof_1 (&(((((x)->fld[i]).rtvec))->elem[j]), insn, force, 0, ht);
    }

  return result;
}



static hashval_t
insns_for_mem_hash (k)
     const void * k;
{

  struct insns_for_mem_entry *m = (struct insns_for_mem_entry *) k;
  return htab_hash_pointer (m->key);
}



static int
insns_for_mem_comp (k1, k2)
     const void * k1;
     const void * k2;
{
  struct insns_for_mem_entry *m1 = (struct insns_for_mem_entry *) k1;
  struct insns_for_mem_entry *m2 = (struct insns_for_mem_entry *) k2;
  return m1->key == m2->key;
}

struct insns_for_mem_walk_info
{


  htab_t ht;


  rtx insn;



  int pass;
};






static int
insns_for_mem_walk (r, data)
     rtx *r;
     void *data;
{
  struct insns_for_mem_walk_info *ifmwi
    = (struct insns_for_mem_walk_info *) data;
  struct insns_for_mem_entry tmp;
  tmp.insns = (rtx) 0;

  if (ifmwi->pass == 0 && *r && ((enum rtx_code) (*r)->code) == ADDRESSOF
      && ((enum rtx_code) ((((*r)->fld[0]).rtx))->code) == REG)
    {
      void * *e;
      tmp.key = (((*r)->fld[0]).rtx);
      e = htab_find_slot (ifmwi->ht, &tmp, INSERT);
      if (*e == ((void *)0))
 {
   *e = ggc_alloc (sizeof (tmp));
   memcpy (*e, &tmp, sizeof (tmp));
 }
    }
  else if (ifmwi->pass == 1 && *r && ((enum rtx_code) (*r)->code) == REG)
    {
      struct insns_for_mem_entry *ifme;
      tmp.key = *r;
      ifme = (struct insns_for_mem_entry *) htab_find (ifmwi->ht, &tmp);




      if (ifme && (!ifme->insns || (((ifme->insns)->fld[0]).rtx) != ifmwi->insn))
 ifme->insns = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (ifmwi->insn), (ifme->insns));

    }

  return 0;
}




static void
compute_insns_for_mem (insns, last_insn, ht)
     rtx insns;
     rtx last_insn;
     htab_t ht;
{
  rtx insn;
  struct insns_for_mem_walk_info ifmwi;
  ifmwi.ht = ht;

  for (ifmwi.pass = 0; ifmwi.pass < 2; ++ifmwi.pass)
    for (insn = insns; insn != last_insn; insn = (((insn)->fld[2]).rtx))
      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 {
   ifmwi.insn = insn;
   for_each_rtx (&insn, insns_for_mem_walk, &ifmwi);
 }
}




static int
is_addressof (rtl, data)
     rtx *rtl;
     void *data __attribute__ ((__unused__));
{
  return ((enum rtx_code) (*rtl)->code) == ADDRESSOF;
}





void
purge_addressof (insns)
     rtx insns;
{
  rtx insn;
  htab_t ht;
# 3440 "../../../kgccfe/gnu/function.c"
  ht = htab_create_alloc (1000, insns_for_mem_hash, insns_for_mem_comp, ((void *)0), ggc_calloc, ((void *)0));
  compute_insns_for_mem (insns, (rtx) 0, ht);

  for (insn = insns; insn; insn = (((insn)->fld[2]).rtx))
    if (((enum rtx_code) (insn)->code) == INSN || ((enum rtx_code) (insn)->code) == JUMP_INSN
 || ((enum rtx_code) (insn)->code) == CALL_INSN)
      {
 if (! purge_addressof_1 (&(((insn)->fld[5]).rtx), insn,
     asm_noperands ((((insn)->fld[5]).rtx)) > 0, 0, ht))


   fancy_abort ("../../../kgccfe/gnu/function.c", 3451, __FUNCTION__);

 if (! purge_addressof_1 (&(((insn)->fld[8]).rtx), (rtx) 0, 0, 0, ht))
   {


     rtx note;

     for (note = (((insn)->fld[8]).rtx); note; note = (((note)->fld[1]).rtx))
       {




  if (((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_RETVAL)
    fancy_abort ("../../../kgccfe/gnu/function.c", 3466, __FUNCTION__);
  if (for_each_rtx (&note, is_addressof, ((void *)0)))
    remove_note (insn, note);
       }
   }
      }


  purge_bitfield_addressof_replacements = 0;
  purge_addressof_replacements = 0;
# 3489 "../../../kgccfe/gnu/function.c"
  unshare_all_rtl_again (get_insns ());
}




static void
purge_single_hard_subreg_set (pattern)
     rtx pattern;
{
  rtx reg = (((pattern)->fld[0]).rtx);
  enum machine_mode mode = ((enum machine_mode) ((((pattern)->fld[0]).rtx))->mode);
  int offset = 0;

  if (((enum rtx_code) (reg)->code) == SUBREG && ((enum rtx_code) ((((reg)->fld[0]).rtx))->code) == REG
      && ((((((reg)->fld[0]).rtx))->fld[0]).rtuint) < 176)
    {
      offset = subreg_regno_offset (((((((reg)->fld[0]).rtx))->fld[0]).rtuint),
        ((enum machine_mode) ((((reg)->fld[0]).rtx))->mode),
        (((reg)->fld[1]).rtuint),
        ((enum machine_mode) (reg)->mode));
      reg = (((reg)->fld[0]).rtx);
    }


  if (((enum rtx_code) (reg)->code) == REG && (((reg)->fld[0]).rtuint) < 176)
    {
      reg = gen_rtx_REG (mode, (((reg)->fld[0]).rtuint) + offset);
      (((pattern)->fld[0]).rtx) = reg;
    }
}
# 3528 "../../../kgccfe/gnu/function.c"
void
purge_hard_subreg_sets (insn)
     rtx insn;
{
  for (; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 {
   rtx pattern = (((insn)->fld[5]).rtx);
   switch (((enum rtx_code) (pattern)->code))
     {
     case SET:
       if (((enum rtx_code) ((((pattern)->fld[0]).rtx))->code) == SUBREG)
  purge_single_hard_subreg_set (pattern);
       break;
     case PARALLEL:
       {
  int j;
  for (j = (((((pattern)->fld[0]).rtvec))->num_elem) - 1; j >= 0; j--)
    {
      rtx inner_pattern = (((((pattern)->fld[0]).rtvec))->elem[j]);
      if (((enum rtx_code) (inner_pattern)->code) == SET
   && ((enum rtx_code) ((((inner_pattern)->fld[0]).rtx))->code) == SUBREG)
        purge_single_hard_subreg_set (inner_pattern);
    }
       }
       break;
     default:
       break;
     }
 }
    }
}




void
instantiate_virtual_regs (fndecl, insns)
     tree fndecl;
     rtx insns;
{
  rtx insn;
  unsigned int i;


  in_arg_offset = 0;
  var_offset = ((cfun->outgoing_args_size) + ((target_flags & 0x00000400) ? ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? ((((target_flags & 0x00002000) ? 8 : 4)) + 7) & ~7 : ((((target_flags & 0x00002000) ? 8 : 4)) + 15) & ~15) : 0));
  dynamic_offset = ((1 ? (cfun->outgoing_args_size) : 0) + (0));
  out_arg_offset = 0;
  cfa_offset = 0;





  instantiate_decls (fndecl, 1);


  init_recog ();



  for (insn = insns; insn; insn = (((insn)->fld[2]).rtx))
    if (((enum rtx_code) (insn)->code) == INSN || ((enum rtx_code) (insn)->code) == JUMP_INSN
 || ((enum rtx_code) (insn)->code) == CALL_INSN)
      {
 instantiate_virtual_regs_1 (&(((insn)->fld[5]).rtx), insn, 1);
 if ((((insn))->volatil))
   continue;
 instantiate_virtual_regs_1 (&(((insn)->fld[8]).rtx), (rtx) 0, 0);

 if (((enum rtx_code) (insn)->code) == CALL_INSN)
   instantiate_virtual_regs_1 (&(((insn)->fld[9]).rtx),
          (rtx) 0, 0);



        if (asm_noperands ((((insn)->fld[5]).rtx)) >= 0
     && ! check_asm_operands ((((insn)->fld[5]).rtx)))
          instantiate_virtual_regs_lossage (insn);
      }



  for (i = 0; i < (cfun->x_max_parm_reg); ++i)
    if ((cfun->x_parm_reg_stack_loc)[i])
      instantiate_virtual_regs_1 (&(cfun->x_parm_reg_stack_loc)[i], (rtx) 0, 0);



  instantiate_decls (fndecl, 0);



  virtuals_instantiated = 1;
}







static void
instantiate_decls (fndecl, valid_only)
     tree fndecl;
     int valid_only;
{
  tree decl;


  for (decl = ((fndecl)->decl.arguments); decl; decl = ((decl)->common.chain))
    {
      long long size = int_size_in_bytes (((decl)->common.type));
      long long size_rtl;

      instantiate_decl (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)), size, valid_only);




      size_rtl = (mode_size[(int) (((enum machine_mode) (((decl)->decl.u2.r))->mode))]);
      size = ((size_rtl) > (size) ? (size_rtl) : (size));
      instantiate_decl (((decl)->decl.u2.r), size, valid_only);
    }


  instantiate_decls_1 (((fndecl)->decl.initial), valid_only);
}




static void
instantiate_decls_1 (let, valid_only)
     tree let;
     int valid_only;
{
  tree t;

  for (t = ((let)->block.vars); t; t = ((t)->common.chain))
    if (((t)->decl.rtl != ((void *)0)))
      instantiate_decl (((t)->decl.rtl ? (t)->decl.rtl : (make_decl_rtl (t, ((void *)0)), (t)->decl.rtl)),
   int_size_in_bytes (((t)->common.type)),
   valid_only);


  for (t = ((let)->block.subblocks); t; t = ((t)->common.chain))
    instantiate_decls_1 (t, valid_only);
}







static void
instantiate_decl (x, size, valid_only)
     rtx x;
     long long size;
     int valid_only;
{
  enum machine_mode mode;
  rtx addr;




  if (x == 0 || ((enum rtx_code) (x)->code) != MEM)
    return;

  addr = (((x)->fld[0]).rtx);
  if ((((enum rtx_code) (addr)->code) == LABEL_REF || ((enum rtx_code) (addr)->code) == SYMBOL_REF || ((enum rtx_code) (addr)->code) == CONST_INT || ((enum rtx_code) (addr)->code) == CONST_DOUBLE || ((enum rtx_code) (addr)->code) == CONST || ((enum rtx_code) (addr)->code) == HIGH || ((enum rtx_code) (addr)->code) == CONST_VECTOR || ((enum rtx_code) (addr)->code) == CONSTANT_P_RTX)
      || (((enum rtx_code) (addr)->code) == ADDRESSOF && ((enum rtx_code) ((((addr)->fld[0]).rtx))->code) == REG)
      || (((enum rtx_code) (addr)->code) == REG
   && ((((addr)->fld[0]).rtuint) < (176)
       || (((addr)->fld[0]).rtuint) > (((176)) + 4))))
    return;






  if (valid_only)
    addr = copy_rtx (addr);

  instantiate_virtual_regs_1 (&addr, (rtx) 0, 0);

  if (valid_only && size >= 0)
    {
      unsigned long long decl_size = size;






      for (mode = class_narrowest_mode[(int) (MODE_INT)];
    mode != VOIDmode && (mode_size[(int) (mode)]) <= decl_size;
    mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
 if (! memory_address_p (mode, addr))
   return;

      for (mode = class_narrowest_mode[(int) (MODE_FLOAT)];
    mode != VOIDmode && (mode_size[(int) (mode)]) <= decl_size;
    mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
 if (! memory_address_p (mode, addr))
   return;
    }




  (((x)->fld[0]).rtx) = addr;
}





static rtx
instantiate_new_reg (x, poffset)
     rtx x;
     long long *poffset;
{
  rtx new;
  long long offset;

  if (x == (global_rtl[GR_VIRTUAL_INCOMING_ARGS]))
    new = (global_rtl[GR_ARG_POINTER]), offset = in_arg_offset;
  else if (x == (global_rtl[GR_VIRTUAL_STACK_ARGS]))
    new = (global_rtl[GR_FRAME_POINTER]), offset = var_offset;
  else if (x == (global_rtl[GR_VIRTUAL_STACK_DYNAMIC]))
    new = (global_rtl[GR_STACK_POINTER]), offset = dynamic_offset;
  else if (x == (global_rtl[GR_VIRTUAL_OUTGOING_ARGS]))
    new = (global_rtl[GR_STACK_POINTER]), offset = out_arg_offset;
  else if (x == (global_rtl[GR_VIRTUAL_CFA]))
    new = (global_rtl[GR_ARG_POINTER]), offset = cfa_offset;
  else
    return 0;

  *poffset = offset;
  return new;
}





static void
instantiate_virtual_regs_lossage (insn)
     rtx insn;
{
  if (asm_noperands ((((insn)->fld[5]).rtx)) >= 0)
    {
      error_for_asm (insn, "impossible constraint in `asm'");
      delete_insn (insn);
    }
  else
    fancy_abort ("../../../kgccfe/gnu/function.c", 3790, __FUNCTION__);
}
# 3806 "../../../kgccfe/gnu/function.c"
static int
instantiate_virtual_regs_1 (loc, object, extra_insns)
     rtx *loc;
     rtx object;
     int extra_insns;
{
  rtx x;
  enum rtx_code code;
  rtx new = 0;
  long long offset = 0;
  rtx temp;
  rtx seq;
  int i, j;
  const char *fmt;


 restart:

  x = *loc;
  if (x == 0)
    return 1;


  if (object && ((rtx_class[(int) (((enum rtx_code) (object)->code))]) == 'i') && (((object))->volatil))
    return 1;

  code = ((enum rtx_code) (x)->code);


  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CONST:
    case SYMBOL_REF:
    case CODE_LABEL:
    case PC:
    case CC0:
    case ASM_INPUT:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
    case RETURN:
      return 1;

    case SET:




      if ((new = instantiate_new_reg ((((x)->fld[0]).rtx), &offset)) != 0)
 {
   rtx src = (((x)->fld[1]).rtx);




   offset = - offset;
   instantiate_virtual_regs_1 (&src, (rtx) 0, 0);



   if (((enum rtx_code) (src)->code) != REG && ((enum rtx_code) (src)->code) != PLUS)
     {
       instantiate_virtual_regs_lossage (object);
       return 1;
     }

   start_sequence ();
   if (((enum rtx_code) (src)->code) != REG)
     temp = force_operand (src, (rtx) 0);
   else
     temp = src;
   temp = force_operand (plus_constant_wide ((temp), (long long) (offset)), (rtx) 0);
   seq = get_insns ();
   end_sequence ();

   emit_insn_before (seq, object);
   (((x)->fld[0]).rtx) = new;

   if (! validate_change (object, &(((x)->fld[1]).rtx), temp, 0)
       || ! extra_insns)
     instantiate_virtual_regs_lossage (object);

   return 1;
 }

      instantiate_virtual_regs_1 (&(((x)->fld[0]).rtx), object, extra_insns);
      loc = &(((x)->fld[1]).rtx);
      goto restart;

    case PLUS:

      if ((((enum rtx_code) ((((x)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
 {
   rtx old, new_offset;


   if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS)
     {
       if ((new = instantiate_new_reg (((((((x)->fld[0]).rtx))->fld[0]).rtx), &offset)))
  {
    instantiate_virtual_regs_1 (&((((((x)->fld[0]).rtx))->fld[1]).rtx), object,
           extra_insns);
    new = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (new), (((((((x)->fld[0]).rtx))->fld[1]).rtx)));
  }
       else
  {
    loc = &(((x)->fld[0]).rtx);
    goto restart;
  }
     }
# 3936 "../../../kgccfe/gnu/function.c"
   else if ((new = instantiate_new_reg ((((x)->fld[0]).rtx), &offset)) == 0)
     {



       if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) != REG)
  {
    loc = &(((x)->fld[0]).rtx);
    goto restart;
  }
       return 1;
     }

   new_offset = plus_constant_wide (((((x)->fld[1]).rtx)), (long long) (offset));



   if (new_offset == (const_int_rtx[64])
       && validate_change (object, loc, new, 0))
     return 1;
# 3964 "../../../kgccfe/gnu/function.c"
   old = (((x)->fld[0]).rtx);
   if (offset == 0
       ? ! validate_change (object, &(((x)->fld[0]).rtx), new, 0)
       : ((((x)->fld[0]).rtx) = new,
   ! validate_change (object, &(((x)->fld[1]).rtx), new_offset, 0)))
     {
       if (! extra_insns)
  {
    (((x)->fld[0]).rtx) = old;
    return 0;
  }



       temp = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
       (((x)->fld[0]).rtx) = new;
       if (validate_change (object, &(((x)->fld[1]).rtx), temp, 0))
  emit_insn_before (gen_move_insn (temp, new_offset), object);
       else
  {



    (((x)->fld[0]).rtx) = old;
    new = gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (new), (new_offset));

    start_sequence ();
    temp = force_operand (new, (rtx) 0);
    seq = get_insns ();
    end_sequence ();

    emit_insn_before (seq, object);
    if (! validate_change (object, loc, temp, 0)
        && ! validate_replace_rtx (x, temp, object))
      {
        instantiate_virtual_regs_lossage (object);
        return 1;
      }
  }
     }

   return 1;
 }


    case EXPR_LIST:
    case CALL:
    case COMPARE:
    case MINUS:
    case MULT:
    case DIV: case UDIV:
    case MOD: case UMOD:
    case AND: case IOR: case XOR:
    case ROTATERT: case ROTATE:
    case ASHIFTRT: case LSHIFTRT: case ASHIFT:
    case NE: case EQ:
    case GE: case GT: case GEU: case GTU:
    case LE: case LT: case LEU: case LTU:
      if ((((x)->fld[1]).rtx) && ! (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
 instantiate_virtual_regs_1 (&(((x)->fld[1]).rtx), object, extra_insns);
      loc = &(((x)->fld[0]).rtx);
      goto restart;

    case MEM:
# 4042 "../../../kgccfe/gnu/function.c"
      temp = (((x)->fld[0]).rtx);
      if ((((enum rtx_code) (temp)->code) == LABEL_REF || ((enum rtx_code) (temp)->code) == SYMBOL_REF || ((enum rtx_code) (temp)->code) == CONST_INT || ((enum rtx_code) (temp)->code) == HIGH || (((enum rtx_code) (temp)->code) == CONST && ! (flag_pic && pic_address_needs_scratch (temp)) && ((target_flags & 0x00000010) || mips_abi == 0)))

   || temp == (global_rtl[GR_ARG_POINTER])


   || temp == (global_rtl[GR_HARD_FRAME_POINTER])

   || temp == (global_rtl[GR_FRAME_POINTER]))
 return 1;

      if (((enum rtx_code) (temp)->code) == PLUS
   && (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == HIGH || (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch ((((temp)->fld[1]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0)))
   && ((((temp)->fld[0]).rtx) == (global_rtl[GR_FRAME_POINTER])

       || (((temp)->fld[0]).rtx) == (global_rtl[GR_HARD_FRAME_POINTER])


       || (((temp)->fld[0]).rtx) == (global_rtl[GR_ARG_POINTER])

       ))
 return 1;

      if (temp == (global_rtl[GR_VIRTUAL_STACK_ARGS])
   || temp == (global_rtl[GR_VIRTUAL_INCOMING_ARGS])
   || (((enum rtx_code) (temp)->code) == PLUS
       && (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == HIGH || (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch ((((temp)->fld[1]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0)))
       && ((((temp)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_STACK_ARGS])
    || (((temp)->fld[0]).rtx) == (global_rtl[GR_VIRTUAL_INCOMING_ARGS]))))
 {
# 4091 "../../../kgccfe/gnu/function.c"
   if (instantiate_virtual_regs_1 (&(((x)->fld[0]).rtx),
       object ? object : x, 0))
     return 1;




   *loc = x = copy_rtx (x);
 }


    case PREFETCH:
    case SUBREG:
    case STRICT_LOW_PART:
    case NEG: case NOT:
    case PRE_DEC: case PRE_INC: case POST_DEC: case POST_INC:
    case SIGN_EXTEND: case ZERO_EXTEND:
    case TRUNCATE: case FLOAT_EXTEND: case FLOAT_TRUNCATE:
    case FLOAT: case FIX:
    case UNSIGNED_FIX: case UNSIGNED_FLOAT:
    case ABS:
    case SQRT:
    case FFS:


      loc = &(((x)->fld[0]).rtx);
      goto restart;

    case USE:
    case CLOBBER:




      if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM
    && instantiate_virtual_regs_1 (&((((((x)->fld[0]).rtx))->fld[0]).rtx), (((x)->fld[0]).rtx),
       0))
   || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
       && instantiate_virtual_regs_1 (&(((x)->fld[0]).rtx), object, 0)))
 return 1;

      (((x)->fld[0]).rtx) = copy_rtx ((((x)->fld[0]).rtx));
      loc = &(((x)->fld[0]).rtx);
      goto restart;

    case REG:


      if ((new = instantiate_new_reg (x, &offset)) != 0)
 {
   temp = plus_constant_wide ((new), (long long) (offset));
   if (!validate_change (object, loc, temp, 0))
     {
       if (! extra_insns)
  return 0;

       start_sequence ();
       temp = force_operand (temp, (rtx) 0);
       seq = get_insns ();
       end_sequence ();

       emit_insn_before (seq, object);
       if (! validate_change (object, loc, temp, 0)
    && ! validate_replace_rtx (x, temp, object))
         instantiate_virtual_regs_lossage (object);
     }
 }

      return 1;

    case ADDRESSOF:
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG)
 return 1;

      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
 {



   instantiate_virtual_regs_1 (&((((((x)->fld[0]).rtx))->fld[0]).rtx), (rtx) 0, 0);
   return 1;
 }
      break;

    default:
      break;
    }


  fmt = (rtx_format[(int) (code)]);
  for (i = 0; i < (rtx_length[(int) (code)]); i++, fmt++)
    if (*fmt == 'e')
      {
 if (!instantiate_virtual_regs_1 (&(((x)->fld[i]).rtx), object, extra_insns))
   return 0;
      }
    else if (*fmt == 'E')
      for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
 if (! instantiate_virtual_regs_1 (&(((((x)->fld[i]).rtvec))->elem[j]), object,
       extra_insns))
   return 0;

  return 1;
}





static void
delete_handlers ()
{
  rtx insn;
  for (insn = get_insns (); insn; insn = (((insn)->fld[2]).rtx))
    {




      if (((enum rtx_code) (insn)->code) == CODE_LABEL)
 {
   tree t, last_t;

   (((insn))->in_struct) = 0;



   for (t = (cfun->x_nonlocal_labels), last_t = 0; t;
        last_t = t, t = ((t)->common.chain))
     if (((((t)->list.value))->decl.rtl ? (((t)->list.value))->decl.rtl : (make_decl_rtl (((t)->list.value), ((void *)0)), (((t)->list.value))->decl.rtl)) == insn)
       break;
   if (t)
     {
       if (! last_t)
  (cfun->x_nonlocal_labels) = (((cfun->x_nonlocal_labels))->common.chain);
       else
  ((last_t)->common.chain) = ((t)->common.chain);
     }
 }
      if (((enum rtx_code) (insn)->code) == INSN)
 {
   int can_delete = 0;
   rtx t;
   for (t = (cfun->x_nonlocal_goto_handler_slots); t != 0; t = (((t)->fld[1]).rtx))
     if (reg_mentioned_p (t, (((insn)->fld[5]).rtx)))
       {
  can_delete = 1;
  break;
       }
   if (can_delete
       || ((cfun->x_nonlocal_goto_stack_level) != 0
    && reg_mentioned_p ((cfun->x_nonlocal_goto_stack_level),
          (((insn)->fld[5]).rtx))))
     delete_related_insns (insn);
 }
    }
}

int
max_parm_reg_num ()
{
  return (cfun->x_max_parm_reg);
}



rtx
get_first_nonparm_insn ()
{
  if ((cfun->x_last_parm_insn))
    return ((((cfun->x_last_parm_insn))->fld[2]).rtx);
  return get_insns ();
}




rtx
get_first_block_beg ()
{
  rtx searcher;
  rtx insn = get_first_nonparm_insn ();

  for (searcher = insn; searcher; searcher = (((searcher)->fld[2]).rtx))
    if (((enum rtx_code) (searcher)->code) == NOTE
 && (((searcher)->fld[5]).rtint) == NOTE_INSN_BLOCK_BEG)
      return searcher;

  fancy_abort ("../../../kgccfe/gnu/function.c", 4279, __FUNCTION__);
  return (rtx) 0;
}






int
aggregate_value_p (exp)
     tree exp;
{
  int i, regno, nregs;
  rtx reg;

  tree type = ((tree_code_type[(int) (((enum tree_code) (exp)->common.code))] == 't')) ? exp : ((exp)->common.type);

  if (((enum tree_code) (type)->common.code) == VOID_TYPE)
    return 0;
  if (mips_return_in_memory (type))
    return 1;


  if (((type)->common.addressable_flag))
    return 1;
  if (flag_pcc_struct_return && (((enum tree_code) (type)->common.code) == ARRAY_TYPE || ((enum tree_code) (type)->common.code) == RECORD_TYPE || ((enum tree_code) (type)->common.code) == UNION_TYPE || ((enum tree_code) (type)->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (type)->common.code) == SET_TYPE))
    return 1;


  reg = hard_function_value (type, 0, 0);



  if (((enum rtx_code) (reg)->code) != REG)
    return 0;

  regno = (((reg)->fld[0]).rtuint);
  nregs = mips_hard_regno_nregs (regno, ((type)->type.mode));
  for (i = 0; i < nregs; i++)
    if (! call_used_regs[regno + i])
      return 1;
  return 0;
}





void
assign_parms (fndecl)
     tree fndecl;
{
  tree parm;
  rtx entry_parm = 0;
  rtx stack_parm = 0;
  CUMULATIVE_ARGS args_so_far;
  enum machine_mode promoted_mode, passed_mode;
  enum machine_mode nominal_mode, promoted_nominal_mode;
  int unsignedp;


  struct args_size stack_args_size;
  tree fntype = ((fndecl)->common.type);
  tree fnargs = ((fndecl)->decl.arguments);

  rtx internal_arg_pointer;


  tree function_result_decl = 0;

  int varargs_setup = 0;

  rtx conversion_insns = 0;
  struct args_size alignment_pad;




  int stdarg
    = (((fntype)->type.values) != 0
       && (((tree_last (((fntype)->type.values)))->list.value)
    != global_trees[TI_VOID_TYPE]));

  (cfun->stdarg) = stdarg;
# 4372 "../../../kgccfe/gnu/function.c"
  if ((0 == (0 + 29)
       || ! (fixed_regs[0]
      || 0 == (0 + 1))))
    internal_arg_pointer = copy_to_reg ((global_rtl[GR_VIRTUAL_INCOMING_ARGS]));
  else
    internal_arg_pointer = (global_rtl[GR_VIRTUAL_INCOMING_ARGS]);
  (cfun->internal_arg_pointer) = internal_arg_pointer;

  stack_args_size.constant = 0;
  stack_args_size.var = 0;


  if (aggregate_value_p (((fndecl)->decl.result))
      && ! (cfun->returns_pcc_struct)
      && struct_value_incoming_rtx == 0)
    {
      tree type = build_pointer_type (((fntype)->common.type));

      function_result_decl = build_decl (PARM_DECL, (tree) ((void *)0), type);

      ((function_result_decl)->decl.initial) = type;
      ((function_result_decl)->common.chain) = fnargs;
      fnargs = function_result_decl;
    }

  (cfun->x_max_parm_reg) = (((176)) + 4) + 1;
  (cfun->x_parm_reg_stack_loc) = (rtx *) ggc_alloc_cleared ((cfun->x_max_parm_reg) * sizeof (rtx));




  init_cumulative_args (&args_so_far, fntype, (rtx) 0);




  (cfun->pretend_args_size) = 0;

  for (parm = fnargs; parm; parm = ((parm)->common.chain))
    {
      struct args_size stack_offset;
      struct args_size arg_size;
      int passed_pointer = 0;
      int did_conversion = 0;
      tree passed_type = ((parm)->decl.initial);
      tree nominal_type = ((parm)->common.type);
      int pretend_named;
      int last_named = 0, named_arg;



      if (stdarg)
 {
   tree tem;

   for (tem = ((parm)->common.chain); tem; tem = ((tem)->common.chain))
     if (((tem)->decl.name))
       break;

   if (tem == 0)
     last_named = 1;
 }



      named_arg = (mips_abi != 0 && mips_abi != 4) ? 1 : ! last_named;

      if (((parm)->common.type) == global_trees[TI_ERROR_MARK]


   || ((enum tree_code) (parm)->common.code) != PARM_DECL
   || passed_type == ((void *)0))
 {
   ((parm)->decl.rtl = (gen_rtx_MEM (BLKmode, (const_int_rtx[64]))));
   ((parm)->decl.u2.r) = ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl));
   ((parm)->common.used_flag) = 1;
   continue;
 }



      passed_mode = ((passed_type)->type.mode);
      nominal_mode = ((nominal_type)->type.mode);



      if (nominal_mode == VOIDmode)
 {
   ((parm)->decl.rtl = ((const_int_rtx[64])));
   ((parm)->decl.u2.r) = ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl));
   continue;
 }




      if (((parm)->decl.transparent_union)
   || (((enum tree_code) (passed_type)->common.code) == UNION_TYPE
       && ((passed_type)->type.transparent_union_flag)))
 passed_type = ((((passed_type)->type.values))->common.type);






      if ((((enum tree_code) (((passed_type)->type.size))->common.code) != INTEGER_CST
    && contains_placeholder_p (((passed_type)->type.size)))
   || ((passed_type)->common.addressable_flag)

   || function_arg_pass_by_reference (&args_so_far, passed_mode, passed_type, named_arg)


   )
 {
   passed_type = nominal_type = build_pointer_type (passed_type);
   passed_pointer = 1;
   passed_mode = nominal_mode = (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode);
 }

      else if (passed_type != nominal_type
        && (((enum tree_code) (passed_type)->common.code) == POINTER_TYPE || ((enum tree_code) (passed_type)->common.code) == REFERENCE_TYPE)
        && ((passed_type)->common.type) == nominal_type)
 {
   nominal_type = passed_type;
   passed_pointer = 1;
   passed_mode = nominal_mode = (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode);
 }

      promoted_mode = passed_mode;



      unsignedp = ((passed_type)->common.unsigned_flag);
      promoted_mode = promote_mode (passed_type, promoted_mode, &unsignedp, 1);
# 4515 "../../../kgccfe/gnu/function.c"
      entry_parm = function_arg( &args_so_far, promoted_mode, passed_type, named_arg);



      if (entry_parm == 0)
 promoted_mode = passed_mode;
# 4533 "../../../kgccfe/gnu/function.c"
      if (last_named && !varargs_setup)
 {
   ((cfun->pretend_args_size)) = mips_setup_incoming_varargs (&(args_so_far), (promoted_mode), (passed_type), (0));

   varargs_setup = 1;
 }
# 4554 "../../../kgccfe/gnu/function.c"
      pretend_named = named_arg || 1;
      locate_and_pad_parm (promoted_mode, passed_type,
# 4564 "../../../kgccfe/gnu/function.c"
      function_arg( &args_so_far, promoted_mode, passed_type, pretend_named) != 0,




      fndecl, &stack_args_size, &stack_offset, &arg_size,
      &alignment_pad);

      {
 rtx offset_rtx = ((stack_offset).var == 0 ? gen_rtx_CONST_INT (VOIDmode, (long long) ((stack_offset).constant)) : expand_expr (((stack_offset).var == 0 ? size_int_wide ((long long) ((stack_offset).constant), SSIZETYPE) : size_binop (PLUS_EXPR, convert (sizetype_tab[(int) SSIZETYPE], (stack_offset).var), size_int_wide ((long long) ((stack_offset).constant), SSIZETYPE))), (rtx) 0, VOIDmode, 0));

 if (offset_rtx == (const_int_rtx[64]))
   stack_parm = gen_rtx_MEM (promoted_mode, internal_arg_pointer);
 else
   stack_parm = gen_rtx_MEM (promoted_mode,
        gen_rtx_fmt_ee (PLUS, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (internal_arg_pointer), (offset_rtx)));



 set_mem_attributes (stack_parm, parm, 1);
      }



      if (((passed_type) != 0 && (((enum tree_code) (((passed_type)->type.size))->common.code) != INTEGER_CST || ((passed_type)->common.addressable_flag) || ((promoted_mode) == BLKmode && mips_abi != 0 && mips_abi != 4 && ! ((passed_type) != 0 && ((enum tree_code) (((passed_type)->type.size))->common.code) == INTEGER_CST && 0 == (int_size_in_bytes (passed_type) % (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8))) && ((! ((target_flags & 0x00010000) != 0) ? upward : (((promoted_mode) == BLKmode ? ((passed_type) && ((enum tree_code) (((passed_type)->type.size))->common.code) == INTEGER_CST && int_size_in_bytes (passed_type) < (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)) : ((mode_bitsize[(int) (promoted_mode)]) < ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && (mips_abi == 0 || mips_abi == 4 || mips_abi == 3 || (mode_class[(int) (promoted_mode)]) == MODE_INT))) ? downward : upward)) == (((target_flags & 0x00010000) != 0) ? upward : downward))))))
 entry_parm = 0;
# 4600 "../../../kgccfe/gnu/function.c"
      if (entry_parm)
 {
   int nregs = function_arg_partial_nregs (&args_so_far, promoted_mode, passed_type, named_arg);


   if (nregs > 0)
     {




       if (((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0) == 0)

       (cfun->pretend_args_size)
  = (((nregs * ((target_flags & 0x00002000) ? 8 : 4)) + (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8) - 1)
     / (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)
     * (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8));



       if (((enum rtx_code) (entry_parm)->code) == PARALLEL)
  emit_group_store (validize_mem (stack_parm), entry_parm,
      int_size_in_bytes (((parm)->common.type)));

       else
  move_block_from_reg ((((entry_parm)->fld[0]).rtuint),
         validize_mem (stack_parm), nregs,
         int_size_in_bytes (((parm)->common.type)));

       entry_parm = stack_parm;
     }
 }




      if (entry_parm == 0)
 entry_parm = stack_parm;


      ((parm)->decl.u2.r) = entry_parm;





      if (entry_parm == stack_parm
   || (((enum rtx_code) (entry_parm)->code) == PARALLEL
       && ((((((((entry_parm)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx) == (rtx) 0)
# 4659 "../../../kgccfe/gnu/function.c"
   || ((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0) > 0

   )
 {
   stack_args_size.constant += arg_size.constant;
   if (arg_size.var)
     do { tree inc = (arg_size.var); if (host_integerp (inc, 0)) (stack_args_size).constant += tree_low_cst (inc, 0); else if ((stack_args_size).var == 0) (stack_args_size).var = convert (sizetype_tab[(int) SSIZETYPE], inc); else (stack_args_size).var = size_binop (PLUS_EXPR, (stack_args_size).var, convert (sizetype_tab[(int) SSIZETYPE], inc)); } while (0);
 }
      else

 stack_parm = 0;



      function_arg_advance (&args_so_far, promoted_mode, passed_type, named_arg);





      {
 unsigned int thisparm_boundary
   = (((passed_type) != 0) ? ((((passed_type)->type.align) <= ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32)) ? ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) : ((passed_type)->type.align)) : ((get_mode_alignment (promoted_mode) <= ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32)) ? ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) : get_mode_alignment (promoted_mode)));

 if (get_mode_alignment (nominal_mode) > thisparm_boundary)
   stack_parm = 0;
      }



      if (entry_parm != 0
   && nominal_mode != BLKmode && nominal_mode != passed_mode)
 stack_parm = 0;




      if (((enum rtx_code) (entry_parm)->code) == PARALLEL
   && nominal_mode != BLKmode && passed_mode != BLKmode)
 {
   int i, len = (((((entry_parm)->fld[0]).rtvec))->num_elem);

   for (i = 0; i < len; i++)
     if (((((((((entry_parm)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx) != (rtx) 0
  && ((enum rtx_code) (((((((((entry_parm)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->code) == REG
  && (((enum machine_mode) (((((((((entry_parm)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->mode)
      == passed_mode)
  && (((((((((((entry_parm)->fld[0]).rtvec))->elem[i]))->fld[1]).rtx))->fld[0]).rtwint) == 0)
       {
  entry_parm = ((((((((entry_parm)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx);
  ((parm)->decl.u2.r) = entry_parm;
  break;
       }
 }
# 4728 "../../../kgccfe/gnu/function.c"
      if (nominal_mode == BLKmode || ((enum rtx_code) (entry_parm)->code) == PARALLEL)
 {



   if (((enum rtx_code) (entry_parm)->code) == REG
       || ((enum rtx_code) (entry_parm)->code) == PARALLEL)
     {
       int size_stored
  = (((int_size_in_bytes (((parm)->common.type))) + (((target_flags & 0x00002000) ? 8 : 4)) - 1) & ~((((target_flags & 0x00002000) ? 8 : 4))- 1));
# 4748 "../../../kgccfe/gnu/function.c"
       if (stack_parm == 0)
  {
    stack_parm
      = assign_stack_local (((enum machine_mode) (entry_parm)->mode),
       size_stored, 0);
    set_mem_attributes (stack_parm, parm, 1);
  }

       else if (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) % (8 * ((target_flags & 0x00002000) ? 8 : 4)) != 0)
  fancy_abort ("../../../kgccfe/gnu/function.c", 4757, __FUNCTION__);



       if (((enum rtx_code) (entry_parm)->code) == PARALLEL)
  emit_group_store (validize_mem (stack_parm), entry_parm,
      int_size_in_bytes (((parm)->common.type)));
       else
  move_block_from_reg ((((entry_parm)->fld[0]).rtuint),
         validize_mem (stack_parm),
         size_stored / ((target_flags & 0x00002000) ? 8 : 4),
         int_size_in_bytes (((parm)->common.type)));
     }
   ((parm)->decl.rtl = (stack_parm));
 }
      else if (! ((! optimize
     && ! ((parm)->decl.regdecl_flag))
    || ((parm)->common.side_effects_flag)


    || (flag_float_store
        && ((enum tree_code) (((parm)->common.type))->common.code) == REAL_TYPE))


        || passed_pointer || parm == function_result_decl)
 {



   rtx parmreg;
   unsigned int regno, regnoi = 0, regnor = 0;

   unsignedp = ((((parm)->common.type))->common.unsigned_flag);

   promoted_nominal_mode
     = promote_mode (((parm)->common.type), nominal_mode, &unsignedp, 0);

   parmreg = gen_reg_rtx (promoted_nominal_mode);
   mark_user_reg (parmreg);



   if (passed_pointer)
     {
       rtx x = gen_rtx_MEM (((((passed_type)->common.type))->type.mode),
       parmreg);
       set_mem_attributes (x, parm, 1);
       ((parm)->decl.rtl = (x));
     }
   else
     {
       ((parm)->decl.rtl = (parmreg));
       maybe_set_unchanging (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)), parm);
     }


   if (nominal_mode != passed_mode
       || promoted_nominal_mode != promoted_mode)
     {
       int save_tree_used;
# 4836 "../../../kgccfe/gnu/function.c"
       rtx tempreg = gen_reg_rtx (((enum machine_mode) (entry_parm)->mode));

       emit_move_insn (tempreg, validize_mem (entry_parm));

       push_to_sequence (conversion_insns);
       tempreg = convert_to_mode (nominal_mode, tempreg, unsignedp);

       if (((enum rtx_code) (tempreg)->code) == SUBREG
    && ((enum machine_mode) (tempreg)->mode) == nominal_mode
    && ((enum rtx_code) ((((tempreg)->fld[0]).rtx))->code) == REG
    && nominal_mode == passed_mode
    && ((enum machine_mode) ((((tempreg)->fld[0]).rtx))->mode) == ((enum machine_mode) (entry_parm)->mode)
    && (mode_size[(int) (((enum machine_mode) (tempreg)->mode))])
       < (mode_size[(int) (((enum machine_mode) (entry_parm)->mode))]))
  {


    (((tempreg))->in_struct) = 1;
    do { rtx const _rtx = ((tempreg)); if ((unsignedp) < 0) _rtx->volatil = 1; else { _rtx->volatil = 0; _rtx->unchanging = (unsignedp); } } while (0);
  }


       save_tree_used = ((parm)->common.used_flag);
       expand_assignment (parm,
     make_tree (nominal_type, tempreg), 0, 0);
       ((parm)->common.used_flag) = save_tree_used;
       conversion_insns = get_insns ();
       did_conversion = 1;
       end_sequence ();
     }
   else
     emit_move_insn (parmreg, validize_mem (entry_parm));



   if (passed_pointer && ((((parm)->common.type))->type.mode) != BLKmode

       && (((((parm)->common.type))->type.mode) != ((enum machine_mode) (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->mode)
    || ! ((! optimize
    && ! ((parm)->decl.regdecl_flag))
   || ((parm)->common.side_effects_flag)


   || (flag_float_store
       && ((enum tree_code) (((parm)->common.type))->common.code) == REAL_TYPE))))
     {


       parmreg = gen_reg_rtx (((((parm)->common.type))->type.mode));
       mark_user_reg (parmreg);
       if (((enum machine_mode) (parmreg)->mode) != ((enum machine_mode) (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->mode))
  {
    rtx tempreg = gen_reg_rtx (((enum machine_mode) (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->mode));
    int unsigned_p = ((((parm)->common.type))->common.unsigned_flag);
    push_to_sequence (conversion_insns);
    emit_move_insn (tempreg, ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)));
    ((parm)->decl.rtl = (convert_to_mode (((enum machine_mode) (parmreg)->mode), tempreg, unsigned_p)));



    emit_move_insn (parmreg, ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)));
    conversion_insns = get_insns();
    did_conversion = 1;
    end_sequence ();
  }
       else
  emit_move_insn (parmreg, ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)));
       ((parm)->decl.rtl = (parmreg));


       stack_parm = 0;
     }
# 4917 "../../../kgccfe/gnu/function.c"
   else if (passed_pointer
     && (mips_abi == 3 && (named_arg) && function_arg_pass_by_reference (&args_so_far, ((((parm)->decl.initial))->type.mode), ((parm)->decl.initial), named_arg))



     && ! ((((parm)->decl.initial))->common.addressable_flag))
     {
       rtx copy;
       tree type = ((parm)->decl.initial);




       push_to_sequence (conversion_insns);

       if (!(((type)->type.size) != (tree) ((void *)0))
    || ((enum tree_code) (((type)->type.size))->common.code) != INTEGER_CST)

  copy = gen_rtx_MEM (BLKmode,
        allocate_dynamic_stack_space
        (expr_size (parm), (rtx) 0,
         ((type)->type.align)));
       else
  copy = assign_stack_temp (((type)->type.mode),
       int_size_in_bytes (type), 1);
       set_mem_attributes (copy, parm, 1);

       store_expr (parm, copy, 0);
       emit_move_insn (parmreg, (((copy)->fld[0]).rtx));
       conversion_insns = get_insns ();
       did_conversion = 1;
       end_sequence ();
     }
# 4958 "../../../kgccfe/gnu/function.c"
   if (((enum rtx_code) (parmreg)->code) == CONCAT)
     regno = ((((((((parmreg)->fld[0]).rtx))->fld[0]).rtuint)) > (((((((parmreg)->fld[1]).rtx))->fld[0]).rtuint)) ? (((((((parmreg)->fld[0]).rtx))->fld[0]).rtuint)) : (((((((parmreg)->fld[1]).rtx))->fld[0]).rtuint)));
   else
     regno = (((parmreg)->fld[0]).rtuint);

   if (regno >= (cfun->x_max_parm_reg))
     {
       rtx *new;
       int old_max_parm_reg = (cfun->x_max_parm_reg);




       (cfun->x_max_parm_reg) = regno + 1;
       new = (rtx *) ggc_realloc ((cfun->x_parm_reg_stack_loc),
          (cfun->x_max_parm_reg) * sizeof (rtx));
       memset ((char *) (new + old_max_parm_reg), 0,
       ((cfun->x_max_parm_reg) - old_max_parm_reg) * sizeof (rtx));
       (cfun->x_parm_reg_stack_loc) = new;
     }

   if (((enum rtx_code) (parmreg)->code) == CONCAT)
     {
       enum machine_mode submode = ((enum machine_mode) ((((parmreg)->fld[0]).rtx))->mode);

       regnor = (((gen_realpart (submode, parmreg))->fld[0]).rtuint);
       regnoi = (((gen_imagpart (submode, parmreg))->fld[0]).rtuint);

       if (stack_parm != 0)
  {
    (cfun->x_parm_reg_stack_loc)[regnor]
      = gen_realpart (submode, stack_parm);
    (cfun->x_parm_reg_stack_loc)[regnoi]
      = gen_imagpart (submode, stack_parm);
  }
       else
  {
    (cfun->x_parm_reg_stack_loc)[regnor] = 0;
    (cfun->x_parm_reg_stack_loc)[regnoi] = 0;
  }
     }
   else
     (cfun->x_parm_reg_stack_loc)[(((parmreg)->fld[0]).rtuint)] = stack_parm;







   if (nominal_mode == passed_mode
       && ! did_conversion
       && stack_parm != 0
       && ((enum rtx_code) (stack_parm)->code) == MEM
       && stack_offset.var == 0
       && reg_mentioned_p ((global_rtl[GR_VIRTUAL_INCOMING_ARGS]),
      (((stack_parm)->fld[0]).rtx)))
     {
       rtx linsn = get_last_insn ();
       rtx sinsn, set;


       if (((enum rtx_code) (parmreg)->code) == CONCAT)


  for (sinsn = linsn; sinsn != 0;
       sinsn = prev_nonnote_insn (sinsn))
    {
      set = (((rtx_class[(int) (((enum rtx_code) (sinsn)->code))]) == 'i') ? (((enum rtx_code) ((((sinsn)->fld[5]).rtx))->code) == SET ? (((sinsn)->fld[5]).rtx) : single_set_2 (sinsn, (((sinsn)->fld[5]).rtx))) : (rtx) 0);
      if (set != 0
   && (((set)->fld[0]).rtx) == (cfun->emit->x_regno_reg_rtx) [regnoi])
        (((sinsn)->fld[8]).rtx)
   = gen_rtx_fmt_ee (EXPR_LIST, (REG_EQUIV), ((cfun->x_parm_reg_stack_loc)[regnoi]), ((((sinsn)->fld[8]).rtx)));


      else if (set != 0
        && (((set)->fld[0]).rtx) == (cfun->emit->x_regno_reg_rtx) [regnor])
        (((sinsn)->fld[8]).rtx)
   = gen_rtx_fmt_ee (EXPR_LIST, (REG_EQUIV), ((cfun->x_parm_reg_stack_loc)[regnor]), ((((sinsn)->fld[8]).rtx)));


    }
       else if ((set = (((rtx_class[(int) (((enum rtx_code) (linsn)->code))]) == 'i') ? (((enum rtx_code) ((((linsn)->fld[5]).rtx))->code) == SET ? (((linsn)->fld[5]).rtx) : single_set_2 (linsn, (((linsn)->fld[5]).rtx))) : (rtx) 0)) != 0
         && (((set)->fld[0]).rtx) == parmreg)
  (((linsn)->fld[8]).rtx)
    = gen_rtx_fmt_ee (EXPR_LIST, (REG_EQUIV), (stack_parm), ((((linsn)->fld[8]).rtx)));

     }


   if ((((enum tree_code) (((parm)->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((parm)->common.type))->common.code) == REFERENCE_TYPE))
     mark_reg_pointer (parmreg,
         ((((((parm)->common.type))->common.type))->type.align));


   if (((parm)->common.addressable_flag))
     {







       push_to_sequence (conversion_insns);
       put_var_into_stack (parm, 1);
       conversion_insns = get_insns ();
       end_sequence ();
     }
 }
      else
 {



   if (promoted_mode != nominal_mode)
     {

       rtx tempreg = gen_reg_rtx (((enum machine_mode) (entry_parm)->mode));

       emit_move_insn (tempreg, validize_mem (entry_parm));

       push_to_sequence (conversion_insns);
       entry_parm = convert_to_mode (nominal_mode, tempreg,
         ((((parm)->common.type))->common.unsigned_flag));
       if (stack_parm)

  stack_parm = adjust_address_1 (stack_parm, nominal_mode, 0, 1, 1);

       conversion_insns = get_insns ();
       did_conversion = 1;
       end_sequence ();
     }

   if (entry_parm != stack_parm)
     {
       if (stack_parm == 0)
  {
    stack_parm
      = assign_stack_local (((enum machine_mode) (entry_parm)->mode),
       (mode_size[(int) (((enum machine_mode) (entry_parm)->mode))]), 0);
    set_mem_attributes (stack_parm, parm, 1);
  }

       if (promoted_mode != nominal_mode)
  {
    push_to_sequence (conversion_insns);
    emit_move_insn (validize_mem (stack_parm),
      validize_mem (entry_parm));
    conversion_insns = get_insns ();
    end_sequence ();
  }
       else
  emit_move_insn (validize_mem (stack_parm),
    validize_mem (entry_parm));
     }

   ((parm)->decl.rtl = (stack_parm));
 }



      if (parm == function_result_decl)
 {
   tree result = ((fndecl)->decl.result);
   rtx addr = ((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl));
   rtx x;






   x = gen_rtx_MEM (((result)->decl.mode), addr);
   set_mem_attributes (x, result, 1);
   ((result)->decl.rtl = (x));
 }

      if (((enum rtx_code) (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->code) == REG)
 (cfun->emit->regno_decl[(((((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->fld[0]).rtuint)]) = parm;
      else if (((enum rtx_code) (((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->code) == CONCAT)
 {
   (cfun->emit->regno_decl[((((((((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->fld[0]).rtx))->fld[0]).rtuint)]) = parm;
   (cfun->emit->regno_decl[((((((((parm)->decl.rtl ? (parm)->decl.rtl : (make_decl_rtl (parm, ((void *)0)), (parm)->decl.rtl)))->fld[1]).rtx))->fld[0]).rtuint)]) = parm;
 }

    }



  emit_insn (conversion_insns);

  (cfun->x_last_parm_insn) = get_last_insn ();

  (cfun->args_size) = stack_args_size.constant;






  (cfun->args_size) = (((cfun->args_size)) > (((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0)) ? ((cfun->args_size)) : (((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0)));






  (cfun->args_size)
    = (((cfun->args_size) + (((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128) / 8) - 1)
       / (((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128) / 8)) * (((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128) / 8);
# 5177 "../../../kgccfe/gnu/function.c"
  (cfun->arg_offset_rtx) = ((stack_args_size).var == 0 ? gen_rtx_CONST_INT (VOIDmode, (long long) ((stack_args_size).constant)) : expand_expr (((stack_args_size).var == 0 ? size_int_wide ((long long) ((stack_args_size).constant), SSIZETYPE) : size_binop (PLUS_EXPR, convert (sizetype_tab[(int) SSIZETYPE], (stack_args_size).var), size_int_wide ((long long) ((stack_args_size).constant), SSIZETYPE))), (rtx) 0, VOIDmode, 0));





  (cfun->pops_args) = 0;





  (cfun->args_info) = args_so_far;






  (cfun->return_rtx)
    = (((((fndecl)->decl.result))->decl.rtl != ((void *)0))
       ? ((((fndecl)->decl.result))->decl.rtl ? (((fndecl)->decl.result))->decl.rtl : (make_decl_rtl (((fndecl)->decl.result), ((void *)0)), (((fndecl)->decl.result))->decl.rtl)) : (rtx) 0);




  if (((((fndecl)->decl.result))->decl.rtl != ((void *)0)))
    {
      tree decl_result = ((fndecl)->decl.result);
      rtx decl_rtl = ((decl_result)->decl.rtl ? (decl_result)->decl.rtl : (make_decl_rtl (decl_result, ((void *)0)), (decl_result)->decl.rtl));

      if ((((enum rtx_code) (decl_rtl)->code) == REG)
   ? (((decl_rtl)->fld[0]).rtuint) >= 176
   : ((decl_result)->decl.regdecl_flag))
 {
   rtx real_decl_rtl;





   real_decl_rtl = mips_function_value ((((decl_result)->common.type)), (fndecl), VOIDmode);


   (((real_decl_rtl))->integrated) = 1;



   (cfun->return_rtx) = real_decl_rtl;
 }
    }
}
# 5238 "../../../kgccfe/gnu/function.c"
rtx
promoted_input_arg (regno, pmode, punsignedp)
     unsigned int regno;
     enum machine_mode *pmode;
     int *punsignedp;
{
  tree arg;

  for (arg = ((current_function_decl)->decl.arguments); arg;
       arg = ((arg)->common.chain))
    if (((enum rtx_code) (((arg)->decl.u2.r))->code) == REG
 && (((((arg)->decl.u2.r))->fld[0]).rtuint) == regno
 && ((((arg)->decl.initial))->type.mode) == ((((arg)->common.type))->type.mode))
      {
 enum machine_mode mode = ((((arg)->common.type))->type.mode);
 int unsignedp = ((((arg)->common.type))->common.unsigned_flag);

 mode = promote_mode (((arg)->common.type), mode, &unsignedp, 1);
 if (mode == ((enum machine_mode) (((arg)->decl.u2.r))->mode)
     && mode != ((arg)->decl.mode))
   {
     *pmode = ((arg)->decl.mode);
     *punsignedp = unsignedp;
     return ((arg)->decl.u2.r);
   }
      }

  return 0;
}
# 5299 "../../../kgccfe/gnu/function.c"
void
locate_and_pad_parm (passed_mode, type, in_regs, fndecl,
       initial_offset_ptr, offset_ptr, arg_size_ptr,
       alignment_pad)
     enum machine_mode passed_mode;
     tree type;
     int in_regs __attribute__ ((__unused__));
     tree fndecl __attribute__ ((__unused__));
     struct args_size *initial_offset_ptr;
     struct args_size *offset_ptr;
     struct args_size *arg_size_ptr;
     struct args_size *alignment_pad;

{
  tree sizetree
    = type ? size_in_bytes (type) : size_int_wide ((long long) ((mode_size[(int) (passed_mode)])), SIZETYPE);
  enum direction where_pad = (! ((target_flags & 0x00010000) != 0) ? upward : (((passed_mode) == BLKmode ? ((type) && ((enum tree_code) (((type)->type.size))->common.code) == INTEGER_CST && int_size_in_bytes (type) < (((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)) : ((mode_bitsize[(int) (passed_mode)]) < ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && (mips_abi == 0 || mips_abi == 4 || mips_abi == 3 || (mode_class[(int) (passed_mode)]) == MODE_INT))) ? downward : upward));
  int boundary = (((type) != 0) ? ((((type)->type.align) <= ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32)) ? ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) : ((type)->type.align)) : ((get_mode_alignment (passed_mode) <= ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32)) ? ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) : get_mode_alignment (passed_mode)));







  if (! in_regs)
    {
      int reg_parm_stack_space = 0;




      reg_parm_stack_space = ((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0);

      if (reg_parm_stack_space > 0)
 {
   if (initial_offset_ptr->var)
     {
       initial_offset_ptr->var
  = size_binop (MAX_EXPR, ((*initial_offset_ptr).var == 0 ? size_int_wide ((long long) ((*initial_offset_ptr).constant), SSIZETYPE) : size_binop (PLUS_EXPR, convert (sizetype_tab[(int) SSIZETYPE], (*initial_offset_ptr).var), size_int_wide ((long long) ((*initial_offset_ptr).constant), SSIZETYPE))),
         size_int_wide ((long long) (reg_parm_stack_space), SSIZETYPE));
       initial_offset_ptr->constant = 0;
     }
   else if (initial_offset_ptr->constant < reg_parm_stack_space)
     initial_offset_ptr->constant = reg_parm_stack_space;
 }
    }


  arg_size_ptr->var = 0;
  arg_size_ptr->constant = 0;
  alignment_pad->var = 0;
  alignment_pad->constant = 0;
# 5398 "../../../kgccfe/gnu/function.c"
  if (!in_regs

      || ((mips_abi == 0 || mips_abi == 4) ? (((mips_abi == 0 || mips_abi == 4) ? 4 : 8) * ((target_flags & 0x00002000) ? 8 : 4)) - 0 : 0) > 0

      )
    pad_to_arg_alignment (initial_offset_ptr, boundary, alignment_pad);
  *offset_ptr = *initial_offset_ptr;
# 5413 "../../../kgccfe/gnu/function.c"
  if (where_pad == downward


      && !(in_regs && passed_mode == BLKmode))
    pad_below (offset_ptr, passed_mode, sizetree);

  if (where_pad != none
      && (!host_integerp (sizetree, 1)
   || (tree_low_cst (sizetree, 1) * 8) % ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32)))
    sizetree = round_up (sizetree, ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8);

  do { tree inc = (sizetree); if (host_integerp (inc, 0)) (*arg_size_ptr).constant += tree_low_cst (inc, 0); else if ((*arg_size_ptr).var == 0) (*arg_size_ptr).var = convert (sizetype_tab[(int) SSIZETYPE], inc); else (*arg_size_ptr).var = size_binop (PLUS_EXPR, (*arg_size_ptr).var, convert (sizetype_tab[(int) SSIZETYPE], inc)); } while (0);

}




static void
pad_to_arg_alignment (offset_ptr, boundary, alignment_pad)
     struct args_size *offset_ptr;
     int boundary;
     struct args_size *alignment_pad;
{
  tree save_var = (tree) ((void *)0);
  long long save_constant = 0;

  int boundary_in_bytes = boundary / 8;

  if (boundary > ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && boundary > ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128))
    {
      save_var = offset_ptr->var;
      save_constant = offset_ptr->constant;
    }

  alignment_pad->var = (tree) ((void *)0);
  alignment_pad->constant = 0;

  if (boundary > 8)
    {
      if (offset_ptr->var)
 {
   offset_ptr->var =



     round_up

       (((*offset_ptr).var == 0 ? size_int_wide ((long long) ((*offset_ptr).constant), SSIZETYPE) : size_binop (PLUS_EXPR, convert (sizetype_tab[(int) SSIZETYPE], (*offset_ptr).var), size_int_wide ((long long) ((*offset_ptr).constant), SSIZETYPE))),
        boundary / 8);
   offset_ptr->constant = 0;
   if (boundary > ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && boundary > ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128))
     alignment_pad->var = size_binop (MINUS_EXPR, offset_ptr->var,
          save_var);
 }
      else
 {
   offset_ptr->constant =



     (((offset_ptr->constant) + (boundary_in_bytes) - 1) & ~((boundary_in_bytes)- 1));

     if (boundary > ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) && boundary > ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128))
       alignment_pad->constant = offset_ptr->constant - save_constant;
 }
    }
}

static void
pad_below (offset_ptr, passed_mode, sizetree)
     struct args_size *offset_ptr;
     enum machine_mode passed_mode;
     tree sizetree;
{
  if (passed_mode != BLKmode)
    {
      if ((mode_bitsize[(int) (passed_mode)]) % ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32))
 offset_ptr->constant
   += ((((mode_bitsize[(int) (passed_mode)]) + ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) - 1)
        / ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) * ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8)
       - (mode_size[(int) (passed_mode)]));
    }
  else
    {
      if (((enum tree_code) (sizetree)->common.code) != INTEGER_CST
   || ((((sizetree)->int_cst.int_cst).low) * 8) % ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32))
 {

   tree s2 = round_up (sizetree, ((mips_abi == 4 || mips_abi == 1 || mips_abi == 2 || (mips_abi == 3 && (target_flags & 0x00002000))) ? 64 : 32) / 8);

   do { tree inc = (s2); if (host_integerp (inc, 0)) (*offset_ptr).constant += tree_low_cst (inc, 0); else if ((*offset_ptr).var == 0) (*offset_ptr).var = convert (sizetype_tab[(int) SSIZETYPE], inc); else (*offset_ptr).var = size_binop (PLUS_EXPR, (*offset_ptr).var, convert (sizetype_tab[(int) SSIZETYPE], inc)); } while (0);
   do { tree dec = (sizetree); if (host_integerp (dec, 0)) (*offset_ptr).constant -= tree_low_cst (dec, 0); else if ((*offset_ptr).var == 0) (*offset_ptr).var = size_binop (MINUS_EXPR, size_int_wide ((long long) (0), SSIZETYPE), convert (sizetype_tab[(int) SSIZETYPE], dec)); else (*offset_ptr).var = size_binop (MINUS_EXPR, (*offset_ptr).var, convert (sizetype_tab[(int) SSIZETYPE], dec)); } while (0);
 }
    }
}






void
uninitialized_vars_warning (block)
     tree block;
{
  tree decl, sub;
  for (decl = ((block)->block.vars); decl; decl = ((decl)->common.chain))
    {
      if (warn_uninitialized
   && ((enum tree_code) (decl)->common.code) == VAR_DECL




   && ! (((enum tree_code) (((decl)->common.type))->common.code) == ARRAY_TYPE || ((enum tree_code) (((decl)->common.type))->common.code) == RECORD_TYPE || ((enum tree_code) (((decl)->common.type))->common.code) == UNION_TYPE || ((enum tree_code) (((decl)->common.type))->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (((decl)->common.type))->common.code) == SET_TYPE)
   && ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
   && ((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == REG







   && ((decl)->decl.initial) == (tree) ((void *)0)
   && regno_uninitialized ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtuint)))
 warning_with_decl (decl,
      "`%s' might be used uninitialized in this function");
      if (extra_warnings
   && ((enum tree_code) (decl)->common.code) == VAR_DECL
   && ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
   && ((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == REG
   && regno_clobbered_at_setjmp ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtuint)))
 warning_with_decl (decl,
      "variable `%s' might be clobbered by `longjmp' or `vfork'");
    }
  for (sub = ((block)->block.subblocks); sub; sub = ((sub)->common.chain))
    uninitialized_vars_warning (sub);
}




void
setjmp_args_warning ()
{
  tree decl;
  for (decl = ((current_function_decl)->decl.arguments);
       decl; decl = ((decl)->common.chain))
    if (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
 && ((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == REG
 && regno_clobbered_at_setjmp ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtuint)))
      warning_with_decl (decl,
    "argument `%s' might be clobbered by `longjmp' or `vfork'");
}




void
setjmp_protect (block)
     tree block;
{
  tree decl, sub;
  for (decl = ((block)->block.vars); decl; decl = ((decl)->common.chain))
    if ((((enum tree_code) (decl)->common.code) == VAR_DECL
  || ((enum tree_code) (decl)->common.code) == PARM_DECL)
 && ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
 && (((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == REG
     || (((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == MEM
  && ((enum rtx_code) ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx))->code) == ADDRESSOF))





 && ! (((decl)->decl.abstract_origin) != (tree) ((void *)0) && ((decl)->decl.abstract_origin) != (decl))
 && (






     ! ((decl)->decl.regdecl_flag)))
      put_var_into_stack (decl, 1);
  for (sub = ((block)->block.subblocks); sub; sub = ((sub)->common.chain))
    setjmp_protect (sub);
}



void
setjmp_protect_args ()
{
  tree decl;
  for (decl = ((current_function_decl)->decl.arguments);
       decl; decl = ((decl)->common.chain))
    if ((((enum tree_code) (decl)->common.code) == VAR_DECL
  || ((enum tree_code) (decl)->common.code) == PARM_DECL)
 && ((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)) != 0
 && (((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == REG
     || (((enum rtx_code) (((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->code) == MEM
  && ((enum rtx_code) ((((((decl)->decl.rtl ? (decl)->decl.rtl : (make_decl_rtl (decl, ((void *)0)), (decl)->decl.rtl)))->fld[0]).rtx))->code) == ADDRESSOF))
 && (






     ! ((decl)->decl.regdecl_flag)))
      put_var_into_stack (decl, 1);
}




rtx
lookup_static_chain (decl)
     tree decl;
{
  tree context = decl_function_context (decl);
  tree link;

  if (context == 0
      || (((enum tree_code) (decl)->common.code) == FUNCTION_DECL && ((decl)->decl.regdecl_flag)))
    return 0;





  if (context == current_function_decl || context == inline_function_decl)
    return (global_rtl[GR_VIRTUAL_STACK_ARGS]);

  for (link = (cfun->x_context_display); link; link = ((link)->common.chain))
    if (((link)->list.purpose) == context)
      return (*(rtx *) &(((link)->list.value))->exp.operands[1]);

  fancy_abort ("../../../kgccfe/gnu/function.c", 5654, __FUNCTION__);
}





rtx
fix_lexical_addr (addr, var)
     rtx addr;
     tree var;
{
  rtx basereg;
  long long displacement;
  tree context = decl_function_context (var);
  struct function *fp;
  rtx base = 0;


  if (context == current_function_decl || context == inline_function_decl)
    return addr;

  fp = find_function_data (context);

  if (((enum rtx_code) (addr)->code) == ADDRESSOF && ((enum rtx_code) ((((addr)->fld[0]).rtx))->code) == MEM)
    addr = ((((((addr)->fld[0]).rtx))->fld[0]).rtx);


  if (((enum rtx_code) (addr)->code) == REG)
    basereg = addr, displacement = 0;
  else if (((enum rtx_code) (addr)->code) == PLUS && ((enum rtx_code) ((((addr)->fld[1]).rtx))->code) == CONST_INT)
    basereg = (((addr)->fld[0]).rtx), displacement = ((((((addr)->fld[1]).rtx))->fld[0]).rtwint);
  else
    fancy_abort ("../../../kgccfe/gnu/function.c", 5687, __FUNCTION__);



  if (basereg == fp->internal_arg_pointer)
    {
# 5703 "../../../kgccfe/gnu/function.c"
      rtx addr;

      addr = get_arg_pointer_save_area (fp);
      addr = fix_lexical_addr ((((addr)->fld[0]).rtx), var);
      addr = memory_address ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), addr);

      base = gen_rtx_MEM ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), addr);
      set_mem_alias_set (base, get_frame_alias_set ());
      base = copy_to_reg (base);




    }

  else if (basereg == (global_rtl[GR_VIRTUAL_STACK_ARGS]))
    {


      tree link;

      for (link = (cfun->x_context_display); link; link = ((link)->common.chain))
 if (((link)->list.purpose) == context)
   {
     base = (*(rtx *) &(((link)->list.value))->exp.operands[1]);
     break;
   }
    }

  if (base == 0)
    fancy_abort ("../../../kgccfe/gnu/function.c", 5733, __FUNCTION__);



  return plus_constant_wide ((base), (long long) (displacement));
}





rtx
trampoline_address (function)
     tree function;
{
  tree link;
  tree rtlexp;
  rtx tramp;
  struct function *fp;
  tree fn_context;


  for (link = (cfun->x_trampoline_list); link; link = ((link)->common.chain))
    if (((link)->list.purpose) == function)
      return
 adjust_trampoline_addr (((((*(rtx *) &(((link)->list.value))->exp.operands[1]))->fld[0]).rtx));

  for (fp = outer_function_chain; fp; fp = fp->outer)
    for (link = fp->x_trampoline_list; link; link = ((link)->common.chain))
      if (((link)->list.purpose) == function)
 {
   tramp = fix_lexical_addr (((((*(rtx *) &(((link)->list.value))->exp.operands[1]))->fld[0]).rtx),
        function);
   return adjust_trampoline_addr (tramp);
 }




  fp = 0;
  fn_context = decl_function_context (function);
  if (fn_context != current_function_decl
      && fn_context != inline_function_decl)
    fp = find_function_data (fn_context);
# 5787 "../../../kgccfe/gnu/function.c"
  tramp = assign_stack_local_1 (BLKmode, ((32 + ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 16 : 8)) + (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8) - 1), 0,
    fp ? fp : cfun);




  if (fp != 0)
    {
      rtlexp = make_node (RTL_EXPR);
      (*(rtx *) &(rtlexp)->exp.operands[1]) = tramp;
      fp->x_trampoline_list = tree_cons (function, rtlexp,
      fp->x_trampoline_list);
    }
  else
    {


      rtlexp = make_node (RTL_EXPR);

      (*(rtx *) &(rtlexp)->exp.operands[1]) = tramp;
      (cfun->x_trampoline_list) = tree_cons (function, rtlexp, (cfun->x_trampoline_list));
    }

  tramp = fix_lexical_addr ((((tramp)->fld[0]).rtx), function);
  return adjust_trampoline_addr (tramp);
}




static rtx
round_trampoline_addr (tramp)
     rtx tramp;
{

  rtx temp = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
  rtx addend = gen_rtx_CONST_INT (VOIDmode, (long long) (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8 - 1));
  rtx mask = gen_rtx_CONST_INT (VOIDmode, (long long) (-((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32) / 8));

  temp = expand_simple_binop ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), PLUS, tramp, addend,
          temp, 0, OPTAB_LIB_WIDEN);
  tramp = expand_simple_binop ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), AND, temp, mask,
          temp, 0, OPTAB_LIB_WIDEN);

  return tramp;
}





static rtx
adjust_trampoline_addr (tramp)
     rtx tramp;
{
  tramp = round_trampoline_addr (tramp);



  return tramp;
}
# 5856 "../../../kgccfe/gnu/function.c"
void
identify_blocks ()
{
  int n_blocks;
  tree *block_vector, *last_block_vector;
  tree *block_stack;
  tree block = ((current_function_decl)->decl.initial);

  if (block == 0)
    return;



  block_vector = get_block_vector (block, &n_blocks);
  block_stack = (tree *) xmalloc (n_blocks * sizeof (tree));

  last_block_vector = identify_blocks_1 (get_insns (),
      block_vector + 1,
      block_vector + n_blocks,
      block_stack);



  if (0 && last_block_vector != block_vector + n_blocks)
    fancy_abort ("../../../kgccfe/gnu/function.c", 5880, __FUNCTION__);

  free (block_vector);
  free (block_stack);
}







static tree *
identify_blocks_1 (insns, block_vector, end_block_vector, orig_block_stack)
     rtx insns;
     tree *block_vector;
     tree *end_block_vector;
     tree *orig_block_stack;
{
  rtx insn;
  tree *block_stack = orig_block_stack;

  for (insn = insns; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == NOTE)
 {
   if ((((insn)->fld[5]).rtint) == NOTE_INSN_BLOCK_BEG)
     {
       tree b;



       if (block_vector == end_block_vector)
  fancy_abort ("../../../kgccfe/gnu/function.c", 5913, __FUNCTION__);

       b = *block_vector++;
       (((insn)->fld[4]).rttree) = b;
       *block_stack++ = b;
     }
   else if ((((insn)->fld[5]).rtint) == NOTE_INSN_BLOCK_END)
     {


       if (block_stack == orig_block_stack)
  fancy_abort ("../../../kgccfe/gnu/function.c", 5924, __FUNCTION__);

       (((insn)->fld[4]).rttree) = *--block_stack;
     }
 }
      else if (((enum rtx_code) (insn)->code) == CALL_INSN
        && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == CALL_PLACEHOLDER)
 {
   rtx cp = (((insn)->fld[5]).rtx);

   block_vector = identify_blocks_1 ((((cp)->fld[0]).rtx), block_vector,
         end_block_vector, block_stack);
   if ((((cp)->fld[1]).rtx))
     block_vector = identify_blocks_1 ((((cp)->fld[1]).rtx), block_vector,
           end_block_vector, block_stack);
   if ((((cp)->fld[2]).rtx))
     block_vector = identify_blocks_1 ((((cp)->fld[2]).rtx), block_vector,
           end_block_vector, block_stack);
 }
    }



  if (block_stack != orig_block_stack)
    fancy_abort ("../../../kgccfe/gnu/function.c", 5948, __FUNCTION__);

  return block_vector;
}







void
reorder_blocks ()
{
  tree block = ((current_function_decl)->decl.initial);
  varray_type block_stack;

  if (block == (tree) ((void *)0))
    return;

  block_stack = varray_init (10, VARRAY_DATA_TREE, "block_stack");


  reorder_blocks_0 (block);


  ((block)->block.subblocks) = (tree) ((void *)0);
  (((block))->common.chain) = (tree) ((void *)0);


  reorder_blocks_1 (get_insns (), block, &block_stack);
  ((block)->block.subblocks) = blocks_nreverse (((block)->block.subblocks));


  reorder_fix_fragments (block);
}



static void
reorder_blocks_0 (block)
     tree block;
{
  while (block)
    {
      ((block)->common.asm_written_flag) = 0;
      reorder_blocks_0 (((block)->block.subblocks));
      block = (((block))->common.chain);
    }
}

static void
reorder_blocks_1 (insns, current_block, p_block_stack)
     rtx insns;
     tree current_block;
     varray_type *p_block_stack;
{
  rtx insn;

  for (insn = insns; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == NOTE)
 {
   if ((((insn)->fld[5]).rtint) == NOTE_INSN_BLOCK_BEG)
     {
       tree block = (((insn)->fld[4]).rttree);



       if (((block)->common.asm_written_flag))
  {
    tree new_block = copy_node (block);
    tree origin;

    origin = (((block)->block.fragment_origin)
       ? ((block)->block.fragment_origin)
       : block);
    ((new_block)->block.fragment_origin) = origin;
    ((new_block)->block.fragment_chain)
      = ((origin)->block.fragment_chain);
    ((origin)->block.fragment_chain) = new_block;

    (((insn)->fld[4]).rttree) = new_block;
    block = new_block;
  }

       ((block)->block.subblocks) = 0;
       ((block)->common.asm_written_flag) = 1;
       ((block)->block.supercontext) = current_block;
       (((block))->common.chain) = ((current_block)->block.subblocks);
       ((current_block)->block.subblocks) = block;
       current_block = block;
       do { if ((*p_block_stack)->elements_used >= (*p_block_stack)->num_elements) (((*p_block_stack)) = varray_grow ((*p_block_stack), 2 * (*p_block_stack)->num_elements)); (*p_block_stack)->data.tree[(*p_block_stack)->elements_used++] = (block); } while (0);
     }
   else if ((((insn)->fld[5]).rtint) == NOTE_INSN_BLOCK_END)
     {
       (((insn)->fld[4]).rttree) = ((*p_block_stack)->data.tree[(*p_block_stack)->elements_used - 1]);
       ((*p_block_stack)->elements_used--);
       ((current_block)->block.subblocks)
  = blocks_nreverse (((current_block)->block.subblocks));
       current_block = ((current_block)->block.supercontext);
     }
 }
      else if (((enum rtx_code) (insn)->code) == CALL_INSN
        && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == CALL_PLACEHOLDER)
 {
   rtx cp = (((insn)->fld[5]).rtx);
   reorder_blocks_1 ((((cp)->fld[0]).rtx), current_block, p_block_stack);
   if ((((cp)->fld[1]).rtx))
     reorder_blocks_1 ((((cp)->fld[1]).rtx), current_block, p_block_stack);
   if ((((cp)->fld[2]).rtx))
     reorder_blocks_1 ((((cp)->fld[2]).rtx), current_block, p_block_stack);
 }
    }
}





static void
reorder_fix_fragments (block)
     tree block;
{
  while (block)
    {
      tree dup_origin = ((block)->block.fragment_origin);
      tree new_origin = (tree) ((void *)0);

      if (dup_origin)
 {
   if (! ((dup_origin)->common.asm_written_flag))
     {
       new_origin = ((dup_origin)->block.fragment_chain);



       while (! ((new_origin)->common.asm_written_flag))
  new_origin = ((new_origin)->block.fragment_chain);
       ((new_origin)->block.fragment_origin) = (tree) ((void *)0);
     }
 }
      else if (! dup_origin)
 new_origin = block;





      if (new_origin)
 {
   tree *pp = &((new_origin)->block.fragment_chain);
   tree chain = *pp;

   while (chain)
     {
       if (((chain)->common.asm_written_flag))
  {
    ((chain)->block.fragment_origin) = new_origin;
    *pp = chain;
    pp = &((chain)->block.fragment_chain);
  }
       chain = ((chain)->block.fragment_chain);
     }
   *pp = (tree) ((void *)0);
 }

      reorder_fix_fragments (((block)->block.subblocks));
      block = (((block))->common.chain);
    }
}




static tree
blocks_nreverse (t)
     tree t;
{
  tree prev = 0, decl, next;
  for (decl = t; decl; decl = next)
    {
      next = (((decl))->common.chain);
      (((decl))->common.chain) = prev;
      prev = decl;
    }
  return prev;
}






static int
all_blocks (block, vector)
     tree block;
     tree *vector;
{
  int n_blocks = 0;

  while (block)
    {
      ((block)->common.asm_written_flag) = 0;


      if (vector)
 vector[n_blocks] = block;

      ++n_blocks;


      n_blocks += all_blocks (((block)->block.subblocks),
         vector ? vector + n_blocks : 0);
      block = (((block))->common.chain);
    }

  return n_blocks;
}






static tree *
get_block_vector (block, n_blocks_p)
     tree block;
     int *n_blocks_p;
{
  tree *block_vector;

  *n_blocks_p = all_blocks (block, ((void *)0));
  block_vector = (tree *) xmalloc (*n_blocks_p * sizeof (tree));
  all_blocks (block, block_vector);

  return block_vector;
}

static int next_block_index = 2;



void
number_blocks (fn)
     tree fn;
{
  int i;
  int n_blocks;
  tree *block_vector;
# 6207 "../../../kgccfe/gnu/function.c"
  block_vector = get_block_vector (((fn)->decl.initial), &n_blocks);


  for (i = 1; i < n_blocks; ++i)

    ((block_vector[i])->block.block_num) = next_block_index++;

  free (block_vector);

  return;
}



tree
debug_find_var_in_block_tree (var, block)
     tree var;
     tree block;
{
  tree t;

  for (t = ((block)->block.vars); t; t = ((t)->common.chain))
    if (t == var)
      return block;

  for (t = ((block)->block.subblocks); t; t = ((t)->common.chain))
    {
      tree ret = debug_find_var_in_block_tree (var, t);
      if (ret)
 return ret;
    }

  return (tree) ((void *)0);
}



static void
prepare_function_start ()
{
  cfun = (struct function *) ggc_alloc_cleared (sizeof (struct function));

  init_stmt_for_function ();
  init_eh_for_function ();

  cse_not_expected = ! optimize;


  caller_save_needed = 0;


  (cfun->x_stack_slot_list) = 0;

  (cfun->has_nonlocal_label) = 0;
  (cfun->has_nonlocal_goto) = 0;


  (cfun->x_nonlocal_goto_handler_slots) = 0;
  (cfun->x_nonlocal_goto_stack_level) = 0;


  (cfun->x_nonlocal_labels) = 0;
  (cfun->x_nonlocal_goto_handler_labels) = 0;


  (cfun->x_function_call_count) = 0;



  (cfun->x_max_parm_reg) = (((176)) + 4) + 1;


  init_emit ();



  init_expr ();


  reg_renumber = 0;

  init_varasm_status (cfun);


  cfun->inlinable = 0;
  cfun->original_decl_initial = 0;
  cfun->original_arg_vector = 0;

  cfun->stack_alignment_needed = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128);
  cfun->preferred_stack_boundary = ((mips_abi == 0 || mips_abi == 4 || mips_abi == 3) ? 64 : 128);


  (cfun->calls_setjmp) = 0;


  (cfun->calls_longjmp) = 0;

  (cfun->calls_alloca) = 0;
  (cfun->contains_functions) = 0;
  current_function_is_leaf = 0;
  current_function_nothrow = 0;
  current_function_sp_is_unchanging = 0;
  current_function_uses_only_leaf_regs = 0;
  (cfun->has_computed_jump) = 0;
  (cfun->is_thunk) = 0;

  (cfun->returns_pcc_struct) = 0;
  (cfun->returns_struct) = 0;
  (cfun->epilogue_delay_list) = 0;
  (cfun->uses_const_pool) = 0;
  (cfun->uses_pic_offset_table) = 0;
  (cfun->cannot_inline) = 0;


  (cfun->x_tail_recursion_label) = 0;


  (cfun->x_arg_pointer_save_area) = 0;


  (cfun->x_frame_offset) = 0;


  (cfun->x_save_expr_regs) = 0;


  (cfun->x_rtl_expr_chain) = 0;


  init_temp_slots ();



  rtx_equal_function_value_matters = 1;


  virtuals_instantiated = 0;


  generating_concat_p = 1;


  frame_pointer_needed = 0;


  (cfun->stdarg) = 0;


  (cfun->x_trampoline_list) = 0;

  init_pending_stack_adjust ();
  (cfun->expr->x_inhibit_defer_pop) = 0;

  (cfun->outgoing_args_size) = 0;

  (cfun->funcdef_no) = funcdef_no++;

  cfun->arc_profile = profile_arc_flag || flag_test_coverage;

  cfun->arc_profile = profile_arc_flag || flag_test_coverage;

  cfun->function_frequency = FUNCTION_FREQUENCY_NORMAL;

  cfun->max_jumptable_ents = 0;

  (*lang_hooks.function.init) (cfun);
  if (init_machine_status)
    cfun->machine = (*init_machine_status) ();
}




void
init_dummy_function_start ()
{
  prepare_function_start ();
}





void
init_function_start (subr, filename, line)
     tree subr;
     const char *filename;
     int line;
{
  prepare_function_start ();

  (cfun->name) = (*lang_hooks.decl_printable_name) (subr, 2);
  cfun->decl = subr;



  (cfun->needs_context)
    = (decl_function_context (current_function_decl) != 0
       && ! ((current_function_decl)->decl.regdecl_flag));


  immediate_size_expand++;




  if (line > 0)
    emit_line_note (filename, line);




  emit_note (((void *)0), NOTE_INSN_DELETED);


  if (aggregate_value_p (((subr)->decl.result)))
    {



      (cfun->returns_struct) = 1;
    }



  if (warn_aggregate_return
      && (((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == ARRAY_TYPE || ((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == RECORD_TYPE || ((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == UNION_TYPE || ((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == QUAL_UNION_TYPE || ((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == SET_TYPE))
    warning ("function returns an aggregate");

  (cfun->returns_pointer)
    = (((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == POINTER_TYPE || ((enum tree_code) (((((subr)->decl.result))->common.type))->common.code) == REFERENCE_TYPE);
}



void
init_function_for_compilation ()
{
  reg_renumber = 0;


  ((prologue) = varray_grow (prologue, 0));
  ((epilogue) = varray_grow (epilogue, 0));
  ((sibcall_epilogue) = varray_grow (sibcall_epilogue, 0));
}
# 6460 "../../../kgccfe/gnu/function.c"
void
expand_main_function ()
{
# 6503 "../../../kgccfe/gnu/function.c"
}







void
expand_pending_sizes (pending_sizes)
     tree pending_sizes;
{
  tree tem;




  if (pending_sizes && ((enum tree_code) (((pending_sizes)->list.value))->common.code) == SAVE_EXPR)
    walk_tree_without_duplicates(&pending_sizes,
     (walk_tree_fn)WFE_Emit_Side_Effects_Pending,
     ((void *)0));

  for (tem = pending_sizes; tem; tem = ((tem)->common.chain))
    {
      expand_expr (((tem)->list.value), (const_int_rtx[64]), VOIDmode, 0);


      emit_queue ();
    }
}







void
expand_function_start (subr, parms_have_cleanups)
     tree subr;
     int parms_have_cleanups;
{
  tree tem;
  rtx last_ptr = (rtx) 0;



  init_recog_no_volatile ();

  (cfun->instrument_entry_exit)
    = (flag_instrument_function_entry_exit
       && ! ((subr)->decl.no_instrument_function_entry_exit));

  (cfun->profile)
    = (profile_flag
       && ! ((subr)->decl.no_instrument_function_entry_exit));

  (cfun->limit_stack)
    = (stack_limit_rtx != (rtx) 0 && ! ((subr)->decl.no_limit_stack));



  if ((cfun->needs_context))
    {
      last_ptr = assign_stack_local ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (mode_size[(int) ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))]), 0);



      if (! ((target_flags & 0x00100000))
   || ((enum rtx_code) (static_chain_incoming_rtx)->code) == REG)
 emit_move_insn (last_ptr, static_chain_incoming_rtx);
    }




  if (parms_have_cleanups)
    (cfun->x_cleanup_label) = gen_label_rtx ();
  else
    (cfun->x_cleanup_label) = 0;




  (cfun->x_return_label) = gen_label_rtx ();






  if (aggregate_value_p (((subr)->decl.result)))
    {

      rtx value_address = 0;
# 6607 "../../../kgccfe/gnu/function.c"
 {



   if (struct_value_incoming_rtx)
     {
       value_address = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
       emit_move_insn (value_address, struct_value_incoming_rtx);
     }
 }
      if (value_address)
 {
   rtx x = gen_rtx_MEM (((((subr)->decl.result))->decl.mode), value_address);
   set_mem_attributes (x, ((subr)->decl.result), 1);
   ((((subr)->decl.result))->decl.rtl = (x));
 }
    }
  else if (((((subr)->decl.result))->decl.mode) == VOIDmode)

    ((((subr)->decl.result))->decl.rtl = ((rtx) 0));
  else
    {






      rtx hard_reg
 = hard_function_value (((((subr)->decl.result))->common.type),
          subr, 1);



      if ((((enum rtx_code) (hard_reg)->code) == REG))
 ((((subr)->decl.result))->decl.rtl = (gen_reg_rtx (((enum machine_mode) (hard_reg)->mode))));
      else if (((enum rtx_code) (hard_reg)->code) == PARALLEL)
 ((((subr)->decl.result))->decl.rtl = (gen_group_rtx (hard_reg)));
      else
 fancy_abort ("../../../kgccfe/gnu/function.c", 6646, __FUNCTION__);



      ((((subr)->decl.result))->decl.regdecl_flag) = 1;
    }




  assign_parms (subr);




  if (((target_flags & 0x00100000)) && (cfun->needs_context))
    if (((enum rtx_code) (static_chain_incoming_rtx)->code) != REG)
      emit_move_insn (last_ptr, static_chain_incoming_rtx);





  emit_note (((void *)0), NOTE_INSN_FUNCTION_BEG);

  if (((enum rtx_code) (get_last_insn ())->code) != NOTE)
    emit_note (((void *)0), NOTE_INSN_DELETED);
  (cfun->x_parm_birth_insn) = get_last_insn ();

  (cfun->x_context_display) = 0;
  if ((cfun->needs_context))
    {

      tem = decl_function_context (current_function_decl);



      if (tem)
 {



   if (((target_flags & 0x00100000))
       && ((enum rtx_code) (static_chain_incoming_rtx)->code) == REG)
     emit_move_insn (static_chain_incoming_rtx, last_ptr);
   last_ptr = copy_to_reg (static_chain_incoming_rtx);
 }

      while (tem)
 {
   tree rtlexp = make_node (RTL_EXPR);

   (*(rtx *) &(rtlexp)->exp.operands[1]) = last_ptr;
   (cfun->x_context_display) = tree_cons (tem, rtlexp, (cfun->x_context_display));
   tem = decl_function_context (tem);
   if (tem == 0)
     break;






   last_ptr = gen_rtx_MEM ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), memory_address ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), last_ptr));
   set_mem_alias_set (last_ptr, get_frame_alias_set ());
   last_ptr = copy_to_reg (last_ptr);



   if (! optimize)
     (cfun->x_save_expr_regs) = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (last_ptr), ((cfun->x_save_expr_regs)));

 }
    }

  if ((cfun->instrument_entry_exit))
    {
      rtx fun = ((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl));
      if (((enum rtx_code) (fun)->code) == MEM)
 fun = (((fun)->fld[0]).rtx);
      else
 fancy_abort ("../../../kgccfe/gnu/function.c", 6727, __FUNCTION__);
      emit_library_call ((libfunc_table[LTI_profile_function_entry]), LCT_NORMAL, VOIDmode,
    2, fun, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
    expand_builtin_return_addr (BUILT_IN_RETURN_ADDRESS,
           0,
           (global_rtl[GR_HARD_FRAME_POINTER])),
    (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
    }

  if ((cfun->profile))
    {



    }




  (cfun->x_tail_recursion_reentry) = emit_note (((void *)0), NOTE_INSN_DELETED);


  expand_pending_sizes (nreverse (get_pending_sizes ()));


  force_next_line_note ();
}


void
expand_dummy_function_end ()
{

  while (in_sequence_p ())
    end_sequence ();




  free_after_parsing (cfun);
  free_after_compilation (cfun);
  cfun = 0;
}




void
diddle_return_value (doit, arg)
     void (*doit) (rtx, void *);
     void *arg;
{
  rtx outgoing = (cfun->return_rtx);

  if (! outgoing)
    return;

  if (((enum rtx_code) (outgoing)->code) == REG)
    (*doit) (outgoing, arg);
  else if (((enum rtx_code) (outgoing)->code) == PARALLEL)
    {
      int i;

      for (i = 0; i < (((((outgoing)->fld[0]).rtvec))->num_elem); i++)
 {
   rtx x = ((((((((outgoing)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx);

   if (((enum rtx_code) (x)->code) == REG && (((x)->fld[0]).rtuint) < 176)
     (*doit) (x, arg);
 }
    }
}

static void
do_clobber_return_reg (reg, arg)
     rtx reg;
     void *arg __attribute__ ((__unused__));
{
  emit_insn (gen_rtx_fmt_e (CLOBBER, (VOIDmode), (reg)));
}

void
clobber_return_register ()
{
  diddle_return_value (do_clobber_return_reg, ((void *)0));


  if (((((current_function_decl)->decl.result))->decl.rtl != ((void *)0)))
    {
      tree decl_result = ((current_function_decl)->decl.result);
      rtx decl_rtl = ((decl_result)->decl.rtl ? (decl_result)->decl.rtl : (make_decl_rtl (decl_result, ((void *)0)), (decl_result)->decl.rtl));
      if ((((enum rtx_code) (decl_rtl)->code) == REG) && (((decl_rtl)->fld[0]).rtuint) >= 176)
 {
   do_clobber_return_reg (decl_rtl, ((void *)0));
 }
    }
}

static void
do_use_return_reg (reg, arg)
     rtx reg;
     void *arg __attribute__ ((__unused__));
{
  emit_insn (gen_rtx_fmt_e (USE, (VOIDmode), (reg)));
}

void
use_return_register ()
{
  diddle_return_value (do_use_return_reg, ((void *)0));
}

static rtx initial_trampoline;







void
expand_function_end (filename, line, end_bindings)
     const char *filename;
     int line;
     int end_bindings;
{
  tree link;
  rtx clobber_after;






  immediate_size_expand--;


  return;


  finish_expr_for_function ();



  if ((cfun->x_arg_pointer_save_area) && ! cfun->arg_pointer_save_area_init)
    get_arg_pointer_save_area (cfun);
# 6887 "../../../kgccfe/gnu/function.c"
  for (link = (cfun->x_trampoline_list); link; link = ((link)->common.chain))
    {
      tree function = ((link)->list.purpose);
      rtx context __attribute__ ((__unused__)) = lookup_static_chain (function);
      rtx tramp = (*(rtx *) &(((link)->list.value))->exp.operands[1]);

      rtx blktramp;

      rtx seq;




      if (initial_trampoline == 0)
 {
   initial_trampoline
     = gen_rtx_MEM (BLKmode, assemble_trampoline_template ());
   set_mem_align (initial_trampoline, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 64 : 32));
 }



      start_sequence ();
      tramp = round_trampoline_addr ((((tramp)->fld[0]).rtx));

      blktramp = replace_equiv_address (initial_trampoline, tramp);
      emit_block_move (blktramp, initial_trampoline,
         gen_rtx_CONST_INT (VOIDmode, (long long) ((32 + ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 16 : 8)))), BLOCK_OP_NORMAL);

      trampolines_created = 1;
      { rtx addr = tramp; if ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) { emit_move_insn (gen_rtx_MEM (DImode, plus_constant_wide ((addr), (long long) (32))), (((((function)->decl.rtl ? (function)->decl.rtl : (make_decl_rtl (function, ((void *)0)), (function)->decl.rtl)))->fld[0]).rtx)); emit_move_insn (gen_rtx_MEM (DImode, plus_constant_wide ((addr), (long long) (40))), context); } else { emit_move_insn (gen_rtx_MEM (SImode, plus_constant_wide ((addr), (long long) (32))), (((((function)->decl.rtl ? (function)->decl.rtl : (make_decl_rtl (function, ((void *)0)), (function)->decl.rtl)))->fld[0]).rtx)); emit_move_insn (gen_rtx_MEM (SImode, plus_constant_wide ((addr), (long long) (36))), context); } if (mips_cache_flush_func && mips_cache_flush_func[0]) emit_library_call (gen_rtx_fmt_s (SYMBOL_REF, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (mips_cache_flush_func)), 0, VOIDmode, 3, addr, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), gen_rtx_CONST_INT (VOIDmode, (long long) ((32 + ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode ? 16 : 8)))), ((integer_types[itk_int])->type.mode), gen_rtx_CONST_INT (VOIDmode, (long long) (3)), ((integer_types[itk_int])->type.mode)); };
      seq = get_insns ();
      end_sequence ();


      emit_insn_before (seq, (cfun->x_tail_recursion_reentry));
    }




  if (flag_stack_check && ! 0)
    {
      rtx insn, seq;

      for (insn = get_insns (); insn; insn = (((insn)->fld[2]).rtx))
 if (((enum rtx_code) (insn)->code) == CALL_INSN)
   {
     start_sequence ();
     probe_stack_range ((75 * ((target_flags & 0x00002000) ? 8 : 4)),
          gen_rtx_CONST_INT (VOIDmode, (long long) ((4096 - ((target_flags & 0x00002000) ? 8 : 4)))));
     seq = get_insns ();
     end_sequence ();
     emit_insn_before (seq, (cfun->x_tail_recursion_reentry));
     break;
   }
    }





  if (warn_unused_parameter > 0
      || (warn_unused_parameter < 0 && extra_warnings))
    {
      tree decl;

      for (decl = ((current_function_decl)->decl.arguments);
    decl; decl = ((decl)->common.chain))
 if (! ((decl)->common.used_flag) && ((enum tree_code) (decl)->common.code) == PARM_DECL
     && ((decl)->decl.name) && ! ((decl)->decl.artificial_flag))
   warning_with_decl (decl, "unused parameter `%s'");
    }


  if ((cfun->x_nonlocal_goto_handler_slots) != 0
      && ! (cfun->has_nonlocal_label))
    delete_handlers ();


  while (in_sequence_p ())
    end_sequence ();



  immediate_size_expand--;

  clear_pending_stack_adjust ();
  do_pending_stack_adjust ();




  emit_note (((void *)0), NOTE_INSN_FUNCTION_END);






  if (flag_test_coverage)
    emit_note (((void *)0), NOTE_INSN_REPEATED_LINE_NUMBER);



  emit_line_note_force (filename, line);
# 7002 "../../../kgccfe/gnu/function.c"
  clobber_after = get_last_insn ();






  if ((cfun->x_return_label))
    emit_label ((cfun->x_return_label));


  if (end_bindings)
    expand_end_bindings (0, 0, 0);

  if ((cfun->instrument_entry_exit))
    {
      rtx fun = ((current_function_decl)->decl.rtl ? (current_function_decl)->decl.rtl : (make_decl_rtl (current_function_decl, ((void *)0)), (current_function_decl)->decl.rtl));
      if (((enum rtx_code) (fun)->code) == MEM)
 fun = (((fun)->fld[0]).rtx);
      else
 fancy_abort ("../../../kgccfe/gnu/function.c", 7022, __FUNCTION__);
      emit_library_call ((libfunc_table[LTI_profile_function_exit]), LCT_NORMAL, VOIDmode,
    2, fun, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
    expand_builtin_return_addr (BUILT_IN_RETURN_ADDRESS,
           0,
           (global_rtl[GR_HARD_FRAME_POINTER])),
    (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
    }



  if (flag_exceptions && 0)
    sjlj_emit_function_exit_after (get_last_insn ());





  if (! 1)

    if ((cfun->calls_alloca))
      {
 rtx tem = 0;

 emit_stack_save (SAVE_FUNCTION, &tem, (cfun->x_parm_birth_insn));
 emit_stack_restore (SAVE_FUNCTION, tem, (rtx) 0);
      }




  if (((((current_function_decl)->decl.result))->decl.rtl != ((void *)0)))
    {
      tree decl_result = ((current_function_decl)->decl.result);
      rtx decl_rtl = ((decl_result)->decl.rtl ? (decl_result)->decl.rtl : (make_decl_rtl (decl_result, ((void *)0)), (decl_result)->decl.rtl));

      if ((((enum rtx_code) (decl_rtl)->code) == REG)
   ? (((decl_rtl)->fld[0]).rtuint) >= 176
   : ((decl_result)->decl.regdecl_flag))
 {
   rtx real_decl_rtl = (cfun->return_rtx);


   if (! (((real_decl_rtl))->integrated))
     fancy_abort ("../../../kgccfe/gnu/function.c", 7066, __FUNCTION__);





   if (((enum machine_mode) (real_decl_rtl)->mode) == BLKmode)
     ((real_decl_rtl)->mode = (enum machine_mode) (((enum machine_mode) (decl_rtl)->mode)));




   if (((enum machine_mode) (real_decl_rtl)->mode) != ((enum machine_mode) (decl_rtl)->mode))
     {
       int unsignedp = ((((decl_result)->common.type))->common.unsigned_flag);


       promote_mode (((decl_result)->common.type), ((enum machine_mode) (decl_rtl)->mode),
       &unsignedp, 1);


       convert_move (real_decl_rtl, decl_rtl, unsignedp);
     }
   else if (((enum rtx_code) (real_decl_rtl)->code) == PARALLEL)
     {



       if (((enum rtx_code) (decl_rtl)->code) == PARALLEL)
  emit_group_move (real_decl_rtl, decl_rtl);
       else
  emit_group_load (real_decl_rtl, decl_rtl,
     int_size_in_bytes (((decl_result)->common.type)));
     }
   else
     emit_move_insn (real_decl_rtl, decl_rtl);
 }
    }







  if ((cfun->returns_struct)
      || (cfun->returns_pcc_struct))
    {
      rtx value_address
 = (((((((current_function_decl)->decl.result))->decl.rtl ? (((current_function_decl)->decl.result))->decl.rtl : (make_decl_rtl (((current_function_decl)->decl.result), ((void *)0)), (((current_function_decl)->decl.result))->decl.rtl)))->fld[0]).rtx);
      tree type = ((((current_function_decl)->decl.result))->common.type);





      rtx outgoing
 = mips_function_value ((build_pointer_type (type)), (current_function_decl), VOIDmode);




      (((outgoing))->integrated) = 1;
# 7137 "../../../kgccfe/gnu/function.c"
      emit_move_insn (outgoing, value_address);



      (cfun->return_rtx) = outgoing;
    }



  expand_eh_return ();


  {
    rtx seq, after;

    start_sequence ();
    clobber_return_register ();
    seq = get_insns ();
    end_sequence ();

    after = emit_insn_after (seq, clobber_after);

    if (clobber_after != after)
      cfun->x_clobber_return_insn = after;
  }





  use_return_register ();
# 7176 "../../../kgccfe/gnu/function.c"
  expand_fixups (get_insns ());
}

rtx
get_arg_pointer_save_area (f)
     struct function *f;
{
  rtx ret = f->x_arg_pointer_save_area;

  if (! ret)
    {
      ret = assign_stack_local_1 ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (mode_size[(int) ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode))]), 0, f);
      f->x_arg_pointer_save_area = ret;
    }

  if (f == cfun && ! f->arg_pointer_save_area_init)
    {
      rtx seq;




      start_sequence ();
      emit_move_insn (validize_mem (ret), (global_rtl[GR_VIRTUAL_INCOMING_ARGS]));
      seq = get_insns ();
      end_sequence ();

      push_topmost_sequence ();
      emit_insn_after (seq, get_insns ());
      pop_topmost_sequence ();
    }

  return ret;
}




static void
record_insns (insns, vecp)
     rtx insns;
     varray_type *vecp;
{
  int i, len;
  rtx tmp;

  tmp = insns;
  len = 0;
  while (tmp != (rtx) 0)
    {
      len++;
      tmp = (((tmp)->fld[2]).rtx);
    }

  i = ((*vecp)->num_elements);
  ((*vecp) = varray_grow (*vecp, i + len));
  tmp = insns;
  while (tmp != (rtx) 0)
    {
      ((*vecp)->data.i[i]) = (((tmp)->fld[0]).rtint);
      i++;
      tmp = (((tmp)->fld[2]).rtx);
    }
}




static int
contains (insn, vec)
     rtx insn;
     varray_type vec;
{
  int i, j;

  if (((enum rtx_code) (insn)->code) == INSN
      && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SEQUENCE)
    {
      int count = 0;
      for (i = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
 for (j = ((vec)->num_elements) - 1; j >= 0; --j)
   if ((((((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtint) == ((vec)->data.i[j]))
     count++;
      return count;
    }
  else
    {
      for (j = ((vec)->num_elements) - 1; j >= 0; --j)
 if ((((insn)->fld[0]).rtint) == ((vec)->data.i[j]))
   return 1;
    }
  return 0;
}

int
prologue_epilogue_contains (insn)
     rtx insn;
{
  if (contains (insn, prologue))
    return 1;
  if (contains (insn, epilogue))
    return 1;
  return 0;
}

int
sibcall_epilogue_contains (insn)
     rtx insn;
{
  if (sibcall_epilogue)
    return contains (insn, sibcall_epilogue);
  return 0;
}





static void
emit_return_into_block (bb, line_note)
     basic_block bb;
     rtx line_note;
{
  rtx p, end;

  p = (((bb->end)->fld[2]).rtx);
  end = emit_jump_insn_after (gen_return (), bb->end);
  if (line_note)
    emit_line_note_after ((((line_note)->fld[4]).rtstr),
     (((line_note)->fld[5]).rtint), (((bb->end)->fld[1]).rtx));
}
# 7340 "../../../kgccfe/gnu/function.c"
struct epi_info
{
  rtx sp_equiv_reg;
  long long sp_offset;
  rtx new_sp_equiv_reg;
  long long new_sp_offset;
  rtx equiv_reg_src;


};

static void handle_epilogue_set (rtx, struct epi_info *);
static void emit_equiv_load (struct epi_info *);




static rtx
keep_stack_depressed (insns)
     rtx insns;
{
  int j;
  struct epi_info info;
  rtx insn, next;



  if ((((insns)->fld[2]).rtx) == (rtx) 0)
    return insns;



  start_sequence ();

  info.sp_equiv_reg = (global_rtl[GR_STACK_POINTER]);
  info.sp_offset = 0;
  info.equiv_reg_src = 0;

  insn = insns;
  next = (rtx) 0;
  while (insn != (rtx) 0)
    {
      next = (((insn)->fld[2]).rtx);

      if (!((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 {
   add_insn (insn);
   insn = next;
   continue;
 }




      if (info.equiv_reg_src != 0
   && reg_referenced_p (info.sp_equiv_reg, (((insn)->fld[5]).rtx)))
 {
   emit_equiv_load (&info);
   info.sp_equiv_reg = 0;
 }

      info.new_sp_equiv_reg = info.sp_equiv_reg;
      info.new_sp_offset = info.sp_offset;



      if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == RETURN
   || (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
       && ((enum rtx_code) (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->code) == RETURN))
 {
   rtx retaddr = gen_rtx_REG (VOIDmode, 0 + 31);
   rtx base = 0;
   long long offset = 0;
   rtx jump_insn, jump_set;





   if (((enum rtx_code) (retaddr)->code) == REG)
     {
       emit_equiv_load (&info);
       add_insn (insn);
       insn = next;
       continue;
     }
   else if (((enum rtx_code) (retaddr)->code) == MEM
     && ((enum rtx_code) ((((retaddr)->fld[0]).rtx))->code) == REG)
     base = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), ((((((retaddr)->fld[0]).rtx))->fld[0]).rtuint)), offset = 0;
   else if (((enum rtx_code) (retaddr)->code) == MEM
     && ((enum rtx_code) ((((retaddr)->fld[0]).rtx))->code) == PLUS
     && ((enum rtx_code) (((((((retaddr)->fld[0]).rtx))->fld[0]).rtx))->code) == REG
     && ((enum rtx_code) (((((((retaddr)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
     {
       base = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), (((((((((retaddr)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtuint));
       offset = (((((((((retaddr)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
     }
   else
     fancy_abort ("../../../kgccfe/gnu/function.c", 7438, __FUNCTION__);




   retaddr = plus_constant_wide ((base), (long long) (offset));
   if (base == (global_rtl[GR_STACK_POINTER]))
     retaddr = simplify_replace_rtx (retaddr, (global_rtl[GR_STACK_POINTER]),
         plus_constant_wide ((info.sp_equiv_reg), (long long) (info.sp_offset)));


   retaddr = gen_rtx_MEM ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), retaddr);




   if (info.equiv_reg_src
       && reg_overlap_mentioned_p (info.equiv_reg_src, retaddr))
     {
       unsigned int regno;
       rtx reg;

       for (regno = 0; regno < 176; regno++)
  if (mips_hard_regno_mode_ok[ (int)((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)) ][ (regno) ]
      && !fixed_regs[regno]
      && (!!((regs_invalidated_by_call)[(regno) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((regno) % ((unsigned) (8 * 8))))))
      && !bitmap_bit_p ((&entry_exit_blocks[1])->global_live_at_start, regno)

      && !refers_to_regno_p (regno,
        regno + mips_hard_regno_nregs (regno, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)),

        info.equiv_reg_src, ((void *)0)))
    break;

       if (regno == 176)
  fancy_abort ("../../../kgccfe/gnu/function.c", 7473, __FUNCTION__);

       reg = gen_rtx_REG ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), regno);
       emit_move_insn (reg, retaddr);
       retaddr = reg;
     }

   emit_equiv_load (&info);
   jump_insn = emit_jump_insn (gen_indirect_jump (retaddr));


   jump_set = (((rtx_class[(int) (((enum rtx_code) (jump_insn)->code))]) == 'i') ? (((enum rtx_code) ((((jump_insn)->fld[5]).rtx))->code) == SET ? (((jump_insn)->fld[5]).rtx) : single_set_2 (jump_insn, (((jump_insn)->fld[5]).rtx))) : (rtx) 0);
   if (jump_set == 0)
     fancy_abort ("../../../kgccfe/gnu/function.c", 7486, __FUNCTION__);
   else
     (((jump_set))->jump) = 1;
 }





      else if (!reg_mentioned_p ((global_rtl[GR_STACK_POINTER]), (((insn)->fld[5]).rtx))
        && (info.sp_equiv_reg == (global_rtl[GR_STACK_POINTER])
     || !reg_set_p (info.sp_equiv_reg, insn)))
 add_insn (insn);
      else if (! reg_set_p ((global_rtl[GR_STACK_POINTER]), insn)
        && (info.sp_equiv_reg == (global_rtl[GR_STACK_POINTER])
     || !reg_set_p (info.sp_equiv_reg, insn)))
 {
   if (! validate_replace_rtx ((global_rtl[GR_STACK_POINTER]),
          plus_constant_wide ((info.sp_equiv_reg), (long long) (info.sp_offset)),

          insn))
     fancy_abort ("../../../kgccfe/gnu/function.c", 7507, __FUNCTION__);

   add_insn (insn);
 }
      else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
 handle_epilogue_set ((((insn)->fld[5]).rtx), &info);
      else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL)
 {
   for (j = 0; j < ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem); j++)
     if (((enum rtx_code) (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[j]))->code) == SET)
       handle_epilogue_set (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[j]), &info);
 }
      else
 add_insn (insn);

      info.sp_equiv_reg = info.new_sp_equiv_reg;
      info.sp_offset = info.new_sp_offset;

      insn = next;
    }

  insns = get_insns ();
  end_sequence ();
  return insns;
}






static void
handle_epilogue_set (set, p)
     rtx set;
     struct epi_info *p;
{


  if (reg_set_p ((global_rtl[GR_STACK_POINTER]), set))
    {
      if ((((set)->fld[0]).rtx) != (global_rtl[GR_STACK_POINTER]))
 fancy_abort ("../../../kgccfe/gnu/function.c", 7548, __FUNCTION__);

      if (((enum rtx_code) ((((set)->fld[1]).rtx))->code) == PLUS
   && ((enum rtx_code) (((((((set)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT)
 {
   p->new_sp_equiv_reg = ((((((set)->fld[1]).rtx))->fld[0]).rtx);
   p->new_sp_offset = (((((((((set)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
 }
      else
 p->new_sp_equiv_reg = (((set)->fld[1]).rtx), p->new_sp_offset = 0;


      if (p->new_sp_equiv_reg == (global_rtl[GR_STACK_POINTER]))
 {
   p->new_sp_equiv_reg = p->sp_equiv_reg;
   p->new_sp_offset += p->sp_offset;
 }

      if (p->new_sp_equiv_reg == 0 || ((enum rtx_code) (p->new_sp_equiv_reg)->code) != REG)
 fancy_abort ("../../../kgccfe/gnu/function.c", 7567, __FUNCTION__);

      return;
    }







  else if (p->new_sp_equiv_reg != 0 && reg_set_p (p->new_sp_equiv_reg, set))
    {
      if (!rtx_equal_p (p->new_sp_equiv_reg, (((set)->fld[0]).rtx))
   || p->equiv_reg_src != 0)
 fancy_abort ("../../../kgccfe/gnu/function.c", 7582, __FUNCTION__);
      else
 p->equiv_reg_src
   = simplify_replace_rtx ((((set)->fld[1]).rtx), (global_rtl[GR_STACK_POINTER]),
      plus_constant_wide ((p->sp_equiv_reg), (long long) (p->sp_offset)));

    }



  else
    {
      (((set)->fld[1]).rtx) = simplify_replace_rtx ((((set)->fld[1]).rtx), (global_rtl[GR_STACK_POINTER]),
         plus_constant_wide ((p->sp_equiv_reg), (long long) (p->sp_offset)));

      (((set)->fld[0]).rtx) = simplify_replace_rtx ((((set)->fld[0]).rtx), (global_rtl[GR_STACK_POINTER]),
          plus_constant_wide ((p->sp_equiv_reg), (long long) (p->sp_offset)));

      emit_insn (set);
    }
}



static void
emit_equiv_load (p)
     struct epi_info *p;
{
  if (p->equiv_reg_src != 0)
    emit_move_insn (p->sp_equiv_reg, p->equiv_reg_src);

  p->equiv_reg_src = 0;
}






void
thread_prologue_and_epilogue_insns (f)
     rtx f __attribute__ ((__unused__));
{
  int inserted = 0;
  edge e;

  rtx seq;


  rtx prologue_end = (rtx) 0;


  rtx epilogue_end = (rtx) 0;



  if (1)
    {
      start_sequence ();
      seq = gen_prologue ();
      emit_insn (seq);


      record_insns (seq, &prologue);
      prologue_end = emit_note (((void *)0), NOTE_INSN_PROLOGUE_END);

      seq = get_insns ();
      end_sequence ();




      if (!(&entry_exit_blocks[0])->succ || (&entry_exit_blocks[0])->succ->succ_next)
 fancy_abort ("../../../kgccfe/gnu/function.c", 7655, __FUNCTION__);

      insert_insn_on_edge (seq, (&entry_exit_blocks[0])->succ);
      inserted = 1;
    }




  for (e = (&entry_exit_blocks[1])->pred; e; e = e->pred_next)
    if ((e->flags & 16) == 0)
      break;
  if (e == ((void *)0))
    goto epilogue_done;


  if (optimize && (mips_can_use_return_insn ()))
    {






      basic_block last;
      edge e_next;
      rtx label;

      for (e = (&entry_exit_blocks[1])->pred; e; e = e->pred_next)
 if (e->flags & 1)
   break;
      if (e == ((void *)0))
 goto epilogue_done;
      last = e->src;


      label = last->end;
      while (label && ((enum rtx_code) (label)->code) != CODE_LABEL)
 {
   if (active_insn_p (label))
     break;
   label = (((label)->fld[1]).rtx);
 }

      if (last->head == label && ((enum rtx_code) (label)->code) == CODE_LABEL)
 {
   rtx epilogue_line_note = (rtx) 0;



   for (seq = get_last_insn ();
        seq && ! active_insn_p (seq);
        seq = (((seq)->fld[1]).rtx))
     if (((enum rtx_code) (seq)->code) == NOTE && (((seq)->fld[5]).rtint) > 0)
       {
  epilogue_line_note = seq;
  break;
       }

   for (e = last->pred; e; e = e_next)
     {
       basic_block bb = e->src;
       rtx jump;

       e_next = e->pred_next;
       if (bb == (&entry_exit_blocks[0]))
  continue;

       jump = bb->end;
       if ((((enum rtx_code) (jump)->code) != JUMP_INSN) || (((jump)->fld[9]).rtx) != label)
  continue;



       if (simplejump_p (jump))
  {
    emit_return_into_block (bb, epilogue_line_note);
    delete_insn (jump);
  }



       else if (condjump_p (jump))
  {
    if (! redirect_jump (jump, 0, 0))
      continue;




    if (bb->succ->succ_next == ((void *)0))
      continue;
  }
       else
  continue;


       redirect_edge_succ (e, (&entry_exit_blocks[1]));
     }




   emit_barrier_after (last->end);
   emit_return_into_block (last, epilogue_line_note);
   epilogue_end = last->end;
   last->succ->flags &= ~1;
   goto epilogue_done;
 }
    }


  if (1)
    {





      for (e = (&entry_exit_blocks[1])->pred; e; e = e->pred_next)
 if (e->flags & 1)
   break;
      if (e == ((void *)0))
 goto epilogue_done;

      start_sequence ();
      epilogue_end = emit_note (((void *)0), NOTE_INSN_EPILOGUE_BEG);

      seq = gen_epilogue ();




      if (((enum tree_code) (((current_function_decl)->common.type))->common.code) == FUNCTION_TYPE
   && ((((current_function_decl)->common.type))->type.no_force_blk_flag))
 seq = keep_stack_depressed (seq);


      emit_jump_insn (seq);


      record_insns (seq, &epilogue);

      seq = get_insns ();
      end_sequence ();

      insert_insn_on_edge (seq, e);
      inserted = 1;
    }

epilogue_done:

  if (inserted)
    commit_edge_insertions ();
# 7839 "../../../kgccfe/gnu/function.c"
  if (prologue_end)
    {
      rtx insn, prev;
# 7856 "../../../kgccfe/gnu/function.c"
      for (insn = prologue_end; insn; insn = prev)
 {
   prev = (((insn)->fld[1]).rtx);
   if (((enum rtx_code) (insn)->code) == NOTE && (((insn)->fld[5]).rtint) > 0)
     {



       if (prev == ((void *)0))
  break;
       reorder_insns (insn, insn, prologue_end);
     }
 }


      for (insn = (&entry_exit_blocks[0])->next_bb->end;
    insn != prologue_end && insn;
    insn = (((insn)->fld[1]).rtx))
 if (((enum rtx_code) (insn)->code) == NOTE && (((insn)->fld[5]).rtint) > 0)
   break;



      if (! insn)
 {
   for (insn = next_active_insn (prologue_end);
        insn;
        insn = (((insn)->fld[1]).rtx))
     if (((enum rtx_code) (insn)->code) == NOTE && (((insn)->fld[5]).rtint) > 0)
       {
  emit_line_note_after ((((insn)->fld[4]).rtstr),
          (((insn)->fld[5]).rtint),
          prologue_end);
  break;
       }
 }
    }


  if (epilogue_end)
    {
      rtx insn, next;




      for (insn = epilogue_end; insn; insn = next)
 {
   next = (((insn)->fld[2]).rtx);
   if (((enum rtx_code) (insn)->code) == NOTE && (((insn)->fld[5]).rtint) > 0)
     reorder_insns (insn, insn, (((epilogue_end)->fld[1]).rtx));
 }
    }

}




void
reposition_prologue_and_epilogue_notes (f)
     rtx f __attribute__ ((__unused__));
{

  rtx insn, last, note;
  int len;

  if ((len = ((prologue)->num_elements)) > 0)
    {
      last = 0, note = 0;




      for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
 {
   if (((enum rtx_code) (insn)->code) == NOTE)
     {
       if ((((insn)->fld[5]).rtint) == NOTE_INSN_PROLOGUE_END)
  note = insn;
     }
   else if (contains (insn, prologue))
     {
       last = insn;
       if (--len == 0)
  break;
     }
 }

      if (last)
 {
   rtx next;



   if (note == 0)
     {
       for (note = last; (note = (((note)->fld[2]).rtx));)
  if (((enum rtx_code) (note)->code) == NOTE
      && (((note)->fld[5]).rtint) == NOTE_INSN_PROLOGUE_END)
    break;
     }

   next = (((note)->fld[2]).rtx);


   if (((enum rtx_code) (last)->code) == CODE_LABEL)
     last = (((last)->fld[2]).rtx);
   reorder_insns (note, note, last);
 }
    }

  if ((len = ((epilogue)->num_elements)) > 0)
    {
      last = 0, note = 0;




      for (insn = get_last_insn (); insn; insn = (((insn)->fld[1]).rtx))
 {
   if (((enum rtx_code) (insn)->code) == NOTE)
     {
       if ((((insn)->fld[5]).rtint) == NOTE_INSN_EPILOGUE_BEG)
  note = insn;
     }
   else if (contains (insn, epilogue))
     {
       last = insn;
       if (--len == 0)
  break;
     }
 }

      if (last)
 {


   if (note == 0)
     {
       for (note = insn; (note = (((note)->fld[1]).rtx));)
  if (((enum rtx_code) (note)->code) == NOTE
      && (((note)->fld[5]).rtint) == NOTE_INSN_EPILOGUE_BEG)
    break;
     }

   if ((((last)->fld[1]).rtx) != note)
     reorder_insns (note, note, (((last)->fld[1]).rtx));
 }
    }

}



void
init_function_once ()
{
  prologue = varray_init (0, VARRAY_DATA_I, "prologue");
  epilogue = varray_init (0, VARRAY_DATA_I, "epilogue");
  sibcall_epilogue = varray_init (0, VARRAY_DATA_I, "sibcall_epilogue");
}

# 1 "../../../kgccfe/gnu/MIPS/gt-function.h" 1
# 23 "../../../kgccfe/gnu/MIPS/gt-function.h"
void
gt_ggc_mx_temp_slot (x_p)
      void *x_p;
{
  struct temp_slot * const x = (struct temp_slot *)x_p;
  if (((x) != ((void *)0) && ((void *) (x)) != (void *) 1 && ! ggc_set_mark (x)))
    {
      do { if ((*x).next != ((void *)0)) gt_ggc_mx_temp_slot ((*x).next); } while (0);
      do { if ((*x).slot != ((void *)0)) gt_ggc_mx_rtx_def ((*x).slot); } while (0);
      do { if ((*x).address != ((void *)0)) gt_ggc_mx_rtx_def ((*x).address); } while (0);
      do { if ((*x).type != ((void *)0)) gt_ggc_mx_lang_tree_node ((*x).type); } while (0);
      do { if ((*x).rtl_expr != ((void *)0)) gt_ggc_mx_lang_tree_node ((*x).rtl_expr); } while (0);
  }
}



const struct ggc_root_tab gt_ggc_r_gt_function_h[] = {
  {
    &initial_trampoline,
    1,
    sizeof (initial_trampoline),
    &gt_ggc_mx_rtx_def

  },
  {
    &outer_function_chain,
    1,
    sizeof (outer_function_chain),
    &gt_ggc_mx_function

  },
  {
    &sibcall_epilogue,
    1,
    sizeof (sibcall_epilogue),
    &gt_ggc_mx_varray_head_tag

  },
  {
    &epilogue,
    1,
    sizeof (epilogue),
    &gt_ggc_mx_varray_head_tag

  },
  {
    &prologue,
    1,
    sizeof (prologue),
    &gt_ggc_mx_varray_head_tag

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 8019 "../../../kgccfe/gnu/function.c" 2
