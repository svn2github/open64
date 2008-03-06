# 1 "../../../kg++fe/gnu/cp/typeck.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/cp/typeck.c"
# 37 "../../../kg++fe/gnu/cp/typeck.c"
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
# 38 "../../../kg++fe/gnu/cp/typeck.c" 2
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
        
# 39 "../../../kg++fe/gnu/cp/typeck.c" 2
# 1 "../../../kg++fe/gnu/tree.h" 1
# 29 "../../../kg++fe/gnu/tree.h"
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
# 40 "../../../kg++fe/gnu/cp/typeck.c" 2
# 1 "../../../kg++fe/gnu/rtl.h" 1
# 25 "../../../kg++fe/gnu/rtl.h"
struct function;

# 1 "../../../kg++fe/gnu/machmode.h" 1
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
# 41 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 42 "../../../kg++fe/gnu/cp/typeck.c" 2
# 1 "../../../kg++fe/gnu/cp/cp-tree.h" 1
# 30 "../../../kg++fe/gnu/cp/cp-tree.h"
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
# 31 "../../../kg++fe/gnu/cp/cp-tree.h" 2
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
# 32 "../../../kg++fe/gnu/cp/cp-tree.h" 2
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
# 33 "../../../kg++fe/gnu/cp/cp-tree.h" 2
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
# 34 "../../../kg++fe/gnu/cp/cp-tree.h" 2





# 1 "../../../kg++fe/gnu/c-common.h" 1
# 29 "../../../kg++fe/gnu/c-common.h"
# 1 "../../../include/gnu/splay-tree.h" 1
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







typedef struct cpp_reader cpp_reader;

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
# 40 "../../../kg++fe/gnu/cp/cp-tree.h" 2

struct diagnostic_context;
# 228 "../../../kg++fe/gnu/cp/cp-tree.h"
typedef struct cxx_saved_binding cxx_saved_binding;



typedef struct cxx_binding cxx_binding;







struct cxx_binding
{

  cxx_binding *previous;

  tree value;

  tree type;
  union tree_binding_u {
    tree scope;
    struct cp_binding_level * level;
  } scope;
  unsigned has_level : 1;
  unsigned value_is_inherited : 1;
  unsigned is_local : 1;
};



typedef struct binding_table_s *binding_table;
typedef struct binding_entry_s *binding_entry;


typedef void (*bt_foreach_proc) (binding_entry, void *);

struct binding_entry_s
{
  binding_entry chain;
  tree name;
  tree type;
};

extern void binding_table_foreach (binding_table, bt_foreach_proc, void *);
extern binding_entry binding_table_find (binding_table, tree);
extern void cxx_remember_type_decls (binding_table);



struct lang_identifier
{
  struct c_common_identifier c_common;
  cxx_binding *namespace_bindings;
  cxx_binding *bindings;
  tree class_value;
  tree class_template_info;
  struct lang_id2 *x;
};







extern const short rid_to_yy[RID_MAX];





struct lang_id2
{
  tree label_value;
  tree implicit_decl;
  tree error_locus;
};

typedef struct flagged_type_tree_s
{
  tree t;
  int new_type_flag;
  tree lookups;
} flagged_type_tree;

typedef struct template_parm_index_s
{
  struct tree_common common;
  long long index;
  long long level;
  long long orig_level;
  tree decl;
} template_parm_index;

struct ptrmem_cst
{
  struct tree_common common;


  rtx rtl;
  tree member;
};
typedef struct ptrmem_cst * ptrmem_cst_t;
# 404 "../../../kg++fe/gnu/cp/cp-tree.h"
struct tree_overload
{
  struct tree_common common;
  tree function;
};
# 435 "../../../kg++fe/gnu/cp/cp-tree.h"
struct tree_wrapper
{
  struct tree_common common;
  struct z_candidate *z_c;
};



struct tree_srcloc
{
  struct tree_common common;
  const char *filename;
  int linenum;
};
# 539 "../../../kg++fe/gnu/cp/cp-tree.h"
enum cp_tree_node_structure_enum {
  TS_CP_COMMON,
  TS_CP_GENERIC,
  TS_CP_IDENTIFIER,
  TS_CP_TPI,
  TS_CP_PTRMEM,
  TS_CP_OVERLOAD,
  TS_CP_WRAPPER,
  TS_CP_SRCLOC,
  LAST_TS_CP_ENUM
};


union lang_tree_node

{
  struct tree_common common;
  union tree_node generic;

  struct template_parm_index_s tpi;
  struct ptrmem_cst ptrmem;
  struct tree_overload overload;
  struct tree_wrapper wrapper;
  struct tree_srcloc srcloc;
  struct lang_identifier identifier;
};


enum cp_tree_index
{
    CPTI_JAVA_BYTE_TYPE,
    CPTI_JAVA_SHORT_TYPE,
    CPTI_JAVA_INT_TYPE,
    CPTI_JAVA_LONG_TYPE,
    CPTI_JAVA_FLOAT_TYPE,
    CPTI_JAVA_DOUBLE_TYPE,
    CPTI_JAVA_CHAR_TYPE,
    CPTI_JAVA_BOOLEAN_TYPE,

    CPTI_WCHAR_DECL,
    CPTI_VTABLE_ENTRY_TYPE,
    CPTI_DELTA_TYPE,
    CPTI_VTABLE_INDEX_TYPE,
    CPTI_CLEANUP_TYPE,
    CPTI_VTT_PARM_TYPE,

    CPTI_TI_DESC_TYPE,
    CPTI_BLTN_DESC_TYPE,
    CPTI_PTR_DESC_TYPE,
    CPTI_ARY_DESC_TYPE,
    CPTI_FUNC_DESC_TYPE,
    CPTI_ENUM_DESC_TYPE,
    CPTI_CLASS_DESC_TYPE,
    CPTI_SI_CLASS_DESC_TYPE,
    CPTI_VMI_CLASS_DESC_TYPE,
    CPTI_PTM_DESC_TYPE,
    CPTI_BASE_DESC_TYPE,

    CPTI_CLASS_TYPE,
    CPTI_RECORD_TYPE,
    CPTI_UNION_TYPE,
    CPTI_ENUM_TYPE,
    CPTI_UNKNOWN_TYPE,
    CPTI_VTBL_TYPE,
    CPTI_VTBL_PTR_TYPE,
    CPTI_STD,
    CPTI_ABI,
    CPTI_TYPE_INFO_TYPE,
    CPTI_TYPE_INFO_PTR_TYPE,
    CPTI_ABORT_FNDECL,
    CPTI_GLOBAL_DELETE_FNDECL,
    CPTI_AGGR_TAG,

    CPTI_ACCESS_DEFAULT,
    CPTI_ACCESS_PUBLIC,
    CPTI_ACCESS_PROTECTED,
    CPTI_ACCESS_PRIVATE,
    CPTI_ACCESS_DEFAULT_VIRTUAL,
    CPTI_ACCESS_PUBLIC_VIRTUAL,
    CPTI_ACCESS_PROTECTED_VIRTUAL,
    CPTI_ACCESS_PRIVATE_VIRTUAL,

    CPTI_CTOR_IDENTIFIER,
    CPTI_COMPLETE_CTOR_IDENTIFIER,
    CPTI_BASE_CTOR_IDENTIFIER,
    CPTI_DTOR_IDENTIFIER,
    CPTI_COMPLETE_DTOR_IDENTIFIER,
    CPTI_BASE_DTOR_IDENTIFIER,
    CPTI_DELETING_DTOR_IDENTIFIER,
    CPTI_DELTA_IDENTIFIER,
    CPTI_IN_CHARGE_IDENTIFIER,
    CPTI_VTT_PARM_IDENTIFIER,
    CPTI_NELTS_IDENTIFIER,
    CPTI_THIS_IDENTIFIER,
    CPTI_PFN_IDENTIFIER,
    CPTI_VPTR_IDENTIFIER,
    CPTI_STD_IDENTIFIER,

    CPTI_LANG_NAME_C,
    CPTI_LANG_NAME_CPLUSPLUS,
    CPTI_LANG_NAME_JAVA,

    CPTI_EMPTY_EXCEPT_SPEC,
    CPTI_NULL,
    CPTI_JCLASS,
    CPTI_TERMINATE,
    CPTI_CALL_UNEXPECTED,
    CPTI_ATEXIT,
    CPTI_DSO_HANDLE,
    CPTI_DCAST,

    CPTI_KEYED_CLASSES,

    CPTI_MAX
};

extern tree cp_global_trees[CPTI_MAX];
# 789 "../../../kg++fe/gnu/cp/cp-tree.h"
struct saved_scope
{
  cxx_saved_binding *old_bindings;
  tree old_namespace;
  tree decl_ns_list;
  tree class_name;
  tree class_type;
  tree access_specifier;
  tree function_decl;
  varray_type lang_base;
  tree lang_name;
  tree template_parms;
  tree x_previous_class_type;
  tree x_previous_class_values;
  tree x_saved_tree;
  tree lookups;
  tree last_parms;

  long long x_processing_template_decl;
  int x_processing_specialization;
  int x_processing_explicit_instantiation;
  int need_pop_function_context;

  struct stmt_tree_s x_stmt_tree;

  struct cp_binding_level *class_bindings;
  struct cp_binding_level *bindings;

  struct saved_scope *prev;
};
# 872 "../../../kg++fe/gnu/cp/cp-tree.h"
extern struct saved_scope *scope_chain;

struct unparsed_text;



struct language_function
{
  struct c_language_function base;

  tree x_dtor_label;
  tree x_current_class_ptr;
  tree x_current_class_ref;
  tree x_eh_spec_block;
  tree x_in_charge_parm;
  tree x_vtt_parm;
  tree x_return_value;

  int returns_value;
  int returns_null;
  int returns_abnormally;
  int in_function_try_handler;
  int in_base_initializer;
  int x_expanding_p;


  _Bool can_throw : 1;

  struct named_label_use_list *x_named_label_uses;
  struct named_label_list *x_named_labels;
  struct cp_binding_level *bindings;
  varray_type x_local_names;

  const char *cannot_inline;
  struct unparsed_text *unparsed_inlines;
};
# 980 "../../../kg++fe/gnu/cp/cp-tree.h"
extern tree global_namespace;
# 998 "../../../kg++fe/gnu/cp/cp-tree.h"
extern int interface_only, interface_unknown;



enum cplus_tree_code {
  CP_DUMMY_TREE_CODE = LAST_C_TREE_CODE,
# 1 "../../../kg++fe/gnu/cp/cp-tree.def" 1
# 45 "../../../kg++fe/gnu/cp/cp-tree.def"
OFFSET_REF,




PTRMEM_CST,




NEW_EXPR,
VEC_NEW_EXPR,




DELETE_EXPR,
VEC_DELETE_EXPR,





SCOPE_REF,




MEMBER_REF,



TYPE_EXPR,




AGGR_INIT_EXPR,



THROW_EXPR,



EMPTY_CLASS_EXPR,
# 104 "../../../kg++fe/gnu/cp/cp-tree.def"
BASELINK,
# 121 "../../../kg++fe/gnu/cp/cp-tree.def"
TEMPLATE_DECL,
# 156 "../../../kg++fe/gnu/cp/cp-tree.def"
TEMPLATE_PARM_INDEX,
# 169 "../../../kg++fe/gnu/cp/cp-tree.def"
TEMPLATE_TYPE_PARM,
# 178 "../../../kg++fe/gnu/cp/cp-tree.def"
TEMPLATE_TEMPLATE_PARM,





BOUND_TEMPLATE_TEMPLATE_PARM,







TYPENAME_TYPE,




UNBOUND_CLASS_TEMPLATE,



TYPEOF_TYPE,



USING_DECL,


USING_STMT,


DEFAULT_ARG,







TEMPLATE_ID_EXPR,



OVERLOAD,



WRAPPER,





LOOKUP_EXPR,



MODOP_EXPR,
CAST_EXPR,
REINTERPRET_CAST_EXPR,
CONST_CAST_EXPR,
STATIC_CAST_EXPR,
DYNAMIC_CAST_EXPR,
DOTSTAR_EXPR,
TYPEID_EXPR,
PSEUDO_DTOR_EXPR,



CTOR_INITIALIZER,
RETURN_INIT,
TRY_BLOCK,
EH_SPEC_BLOCK,




HANDLER,



MUST_NOT_THROW_EXPR,

TAG_DEFN,
# 273 "../../../kg++fe/gnu/cp/cp-tree.def"
IDENTITY_CONV,
LVALUE_CONV,
QUAL_CONV,
STD_CONV,
PTR_CONV,
PMEM_CONV,
BASE_CONV,
REF_BIND,
USER_CONV,
AMBIG_CONV,
RVALUE_CONV,
# 1005 "../../../kg++fe/gnu/cp/cp-tree.h" 2
  LAST_CPLUS_TREE_CODE
};


enum languages { lang_c, lang_cplusplus, lang_java };
# 1123 "../../../kg++fe/gnu/cp/cp-tree.h"
struct lang_type_header
{
  unsigned is_lang_type_class : 1;

  unsigned has_type_conversion : 1;
  unsigned has_init_ref : 1;
  unsigned has_default_ctor : 1;
  unsigned uses_multiple_inheritance : 1;
  unsigned const_needs_init : 1;
  unsigned ref_needs_init : 1;
  unsigned has_const_assign_ref : 1;
};
# 1149 "../../../kg++fe/gnu/cp/cp-tree.h"
struct lang_type_class
{
  struct lang_type_header h;

  unsigned char align;

  unsigned has_mutable : 1;
  unsigned com_interface : 1;
  unsigned non_pod_class : 1;
  unsigned nearly_empty_p : 1;
  unsigned user_align : 1;
  unsigned has_assign_ref : 1;
  unsigned has_new : 1;
  unsigned has_array_new : 1;

  unsigned gets_delete : 2;
  unsigned has_call_overloaded : 1;
  unsigned has_array_ref_overloaded : 1;
  unsigned has_arrow_overloaded : 1;
  unsigned interface_only : 1;
  unsigned interface_unknown : 1;

  unsigned marks: 6;
  unsigned vec_new_uses_cookie : 1;
  unsigned declared_class : 1;

  unsigned being_defined : 1;
  unsigned redefined : 1;
  unsigned debug_requested : 1;
  unsigned use_template : 2;
  unsigned got_semicolon : 1;
  unsigned ptrmemfunc_flag : 1;
  unsigned was_anonymous : 1;

  unsigned has_real_assign_ref : 1;
  unsigned has_const_init_ref : 1;
  unsigned has_complex_init_ref : 1;
  unsigned has_complex_assign_ref : 1;
  unsigned has_abstract_assign_ref : 1;
  unsigned non_aggregate : 1;
  unsigned is_partial_instantiation : 1;
  unsigned java_interface : 1;

  unsigned anon_aggr : 1;
  unsigned non_zero_init : 1;
  unsigned empty_p : 1;
  unsigned contains_empty_class_p : 1;
# 1207 "../../../kg++fe/gnu/cp/cp-tree.h"
  unsigned has_implicit_copy_constructor : 1;
  unsigned dummy : 4;




  tree primary_base;
  tree vfields;
  tree vcall_indices;
  tree vtables;
  tree typeinfo_var;
  tree vbases;
  binding_table nested_udts;
  tree as_base;
  tree pure_virtuals;
  tree friend_classes;
  tree methods;
  tree key_method;
  tree decl_list;
  tree template_info;
  tree befriending_classes;



  tree copy_constructor;

};

struct lang_type_ptrmem
{
  struct lang_type_header h;
  tree record;
};

struct lang_type
{
  union lang_type_u
  {
    struct lang_type_header h;
    struct lang_type_class c;
    struct lang_type_ptrmem ptrmem;
  } u;
};
# 1794 "../../../kg++fe/gnu/cp/cp-tree.h"
struct lang_decl_flags
{
  struct c_lang_decl base;

  enum languages language : 8;

  unsigned operator_attr : 1;
  unsigned constructor_attr : 1;
  unsigned destructor_attr : 1;
  unsigned friend_attr : 1;
  unsigned static_function : 1;
  unsigned pure_virtual : 1;
  unsigned has_in_charge_parm_p : 1;
  unsigned has_vtt_parm_p : 1;

  unsigned deferred : 1;
  unsigned use_template : 2;
  unsigned nonconverting : 1;
  unsigned not_really_extern : 1;
  unsigned needs_final_overrider : 1;
  unsigned initialized_in_class : 1;
  unsigned assignment_operator_p : 1;

  unsigned global_ctor_p : 1;
  unsigned global_dtor_p : 1;
  unsigned anticipated_p : 1;
  unsigned template_conv_p : 1;
  unsigned u1sel : 1;
  unsigned u2sel : 1;
  unsigned can_be_full : 1;
  unsigned unused : 1;

  union lang_decl_u {


    tree template_info;


    struct cp_binding_level * level;
  } u;

  union lang_decl_u2 {

    tree access;


    int discriminator;



    tree vcall_offset;
  } u2;
};

struct lang_decl
{
  struct lang_decl_flags decl_flags;

  union lang_decl_u4
    {
      struct full_lang_decl
      {
 tree befriending_classes;




 tree context;


 tree cloned_function;



 long long delta;




 tree named_return_object;




 enum tree_code operator_code;

 unsigned u3sel : 1;
 unsigned pending_inline_p : 1;

 union lang_decl_u3
 {
   tree sorted_fields;
   struct unparsed_text * pending_inline_info;
   struct language_function *
        saved_language_function;
 } u;
      } f;
  } u;
};
# 3096 "../../../kg++fe/gnu/cp/cp-tree.h"
enum tag_types { record_type, class_type, union_type, enum_type };


typedef enum cp_lvalue_kind {
  clk_none = 0,
  clk_ordinary = 1,
  clk_class = 2,
  clk_bitfield = 4,
} cp_lvalue_kind;


typedef enum scope_kind {
  sk_template_parms,
  sk_template_spec


} scope_kind;


typedef enum tmpl_spec_kind {
  tsk_none,
  tsk_invalid_member_spec,



  tsk_invalid_expl_inst,

  tsk_excessive_parms,

  tsk_insufficient_parms,

  tsk_template,
  tsk_expl_spec,
  tsk_expl_inst
} tmpl_spec_kind;





typedef enum access_kind {
  ak_none = 0,
  ak_public = 1,
  ak_protected = 2,
  ak_private = 3
} access_kind;



typedef enum special_function_kind {
  sfk_none = 0,


  sfk_constructor,
  sfk_copy_constructor,
  sfk_assignment_operator,
  sfk_destructor,
  sfk_complete_destructor,
  sfk_base_destructor,
  sfk_deleting_destructor,


  sfk_conversion
} special_function_kind;
# 3178 "../../../kg++fe/gnu/cp/cp-tree.h"
typedef enum linkage_kind {
  lk_none,
  lk_internal,
  lk_external
} linkage_kind;


typedef enum tsubst_flags_t {
  tf_none = 0,
  tf_error = 1 << 0,
  tf_warning = 1 << 1,
  tf_no_attributes = 1 << 2,

  tf_ignore_bad_quals = 1 << 3,
  tf_keep_type_decl = 1 << 4,

  tf_ptrmem_ok = 1 << 5,

  tf_parsing = 1 << 6

} tsubst_flags_t;


typedef enum base_access {
  ba_any = 0,

  ba_ignore = 1,
  ba_check = 2,
  ba_not_special = 3,

  ba_quiet = 4,
} base_access;



typedef enum base_kind {
  bk_inaccessible = -3,
  bk_ambig = -2,
  bk_not_base = -1,
  bk_same_type = 0,
  bk_proper_base = 1,
  bk_via_virtual = 2


} base_kind;




extern int adding_implicit_members;



extern tree error_mark_list;







extern tree integer_two_node;
extern tree integer_three_node;

extern tree anonymous_namespace_name;




extern int function_depth;







typedef enum unification_kind_t {
  DEDUCE_CALL,
  DEDUCE_CONV,
  DEDUCE_EXACT,
  DEDUCE_ORDER
} unification_kind_t;
# 3271 "../../../kg++fe/gnu/cp/cp-tree.h"
extern int current_class_depth;



extern varray_type local_classes;
# 3405 "../../../kg++fe/gnu/cp/cp-tree.h"
extern int at_eof;





extern tree static_aggregates;



extern tree static_ctors;
extern tree static_dtors;

enum overload_flags { NO_SPECIAL = 0, DTOR_FLAG, OP_FLAG, TYPENAME_FLAG };
# 3614 "../../../kg++fe/gnu/cp/cp-tree.h"
extern void init_reswords (void);




extern const char **opname_tab, **assignop_tab;

typedef struct operator_name_info_t
{

  tree identifier;

  const char *name;

  const char *mangled_name;

  int arity;
} operator_name_info_t;


extern operator_name_info_t operator_name_info[];

extern operator_name_info_t assignment_operator_name_info[];


extern int check_dtor_name (tree, tree);
extern int get_arglist_len_in_bytes (tree);

extern tree build_vfield_ref (tree, tree);
extern tree build_scoped_method_call (tree, tree, tree, tree);
extern tree build_conditional_expr (tree, tree, tree);
extern tree build_addr_func (tree);
extern tree build_call (tree, tree);
extern tree build_method_call (tree, tree, tree, tree, int);
extern int null_ptr_cst_p (tree);
extern int sufficient_parms_p (tree);
extern tree type_decays_to (tree);
extern tree resolve_scoped_fn_name (tree, tree);
extern tree build_user_type_conversion (tree, tree, int);
extern tree build_new_function_call (tree, tree);
extern tree build_new_method_call (tree, tree, tree, tree, int);
extern tree build_special_member_call (tree, tree, tree, tree, int);
extern tree build_new_op (enum tree_code, int, tree, tree, tree);
extern tree build_op_delete_call (enum tree_code, tree, tree, int, tree);
extern int can_convert (tree, tree);
extern int can_convert_arg (tree, tree, tree);
extern int can_convert_arg_bad (tree, tree, tree);
extern int enforce_access (tree, tree);
extern tree convert_default_arg (tree, tree, tree, int);
extern tree convert_arg_to_ellipsis (tree);
extern tree build_x_va_arg (tree, tree);
extern tree cxx_type_promotes_to (tree);
extern tree type_passed_as (tree);
extern tree convert_for_arg_passing (tree, tree);
extern tree cp_convert_parm_for_inlining (tree, tree, tree);
extern int is_properly_derived_from (tree, tree);
extern tree initialize_reference (tree, tree, tree, tree *);
extern tree make_temporary_var_for_ref_to_temp (tree, tree);
extern tree strip_top_quals (tree);
extern tree perform_implicit_conversion (tree, tree);
extern tree perform_direct_initialization_if_possible (tree, tree);


extern tree build_base_path (enum tree_code, tree, tree, int);
extern tree convert_to_base (tree, tree, _Bool);
extern tree convert_to_base_statically (tree, tree);
extern tree build_vtbl_ref (tree, tree);
extern tree build_vfn_ref (tree, tree);
extern tree get_vtable_decl (tree, int);
extern void add_method (tree, tree, int);
extern int currently_open_class (tree);
extern tree currently_open_derived_class (tree);
extern void duplicate_tag_error (tree);
extern tree finish_struct (tree, tree);
extern void finish_struct_1 (tree);
extern int resolves_to_fixed_type_p (tree, int *);
extern void init_class_processing (void);
extern int is_empty_class (tree);
extern void pushclass (tree, int);
extern void popclass (void);
extern void push_nested_class (tree, int);
extern void pop_nested_class (void);
extern int current_lang_depth (void);
extern void push_lang_context (tree);
extern void pop_lang_context (void);
extern tree instantiate_type (tree, tree, tsubst_flags_t);
extern void print_class_statistics (void);
extern void cxx_print_statistics (void);
extern void cxx_print_xnode (FILE *, tree, int);
extern void cxx_print_decl (FILE *, tree, int);
extern void cxx_print_type (FILE *, tree, int);
extern void cxx_print_identifier (FILE *, tree, int);
extern void cxx_print_error_function (struct diagnostic_context *, const char *);

extern void build_self_reference (void);
extern int same_signature_p (tree, tree);
extern void warn_hidden (tree);
extern void maybe_add_class_template_decl_list (tree, tree, int);
extern tree get_enclosing_class (tree);
int is_base_of_enclosing_class (tree, tree);
extern void unreverse_member_declarations (tree);
extern void invalidate_class_lookup_cache (void);
extern void maybe_note_name_used_in_class (tree, tree);
extern void note_name_declared_in_class (tree, tree);
extern tree get_vtbl_decl_for_binfo (tree);
extern tree in_charge_arg_for_name (tree);
extern tree build_cxx_call (tree, tree, tree);
extern tree get_vtt_name (tree);
extern tree get_primary_binfo (tree);


extern tree convert_to_reference (tree, tree, int, int, tree);
extern tree convert_from_reference (tree);
extern tree convert_lvalue (tree, tree);
extern tree force_rvalue (tree);
extern tree ocp_convert (tree, tree, int, int);
extern tree cp_convert (tree, tree);
extern tree convert_to_void (tree, const char * );
extern tree convert_force (tree, tree, int);
extern tree build_type_conversion (tree, tree);
extern tree build_expr_type_conversion (int, tree, int);
extern tree type_promotes_to (tree);
extern tree perform_qualification_conversions (tree, tree);
extern void clone_function_decl (tree, int);
extern void adjust_clone_args (tree);


extern int global_bindings_p (void);
extern int kept_level_p (void);
extern _Bool innermost_scope_is_class_p (void);
extern tree getdecls (void);
extern void pushlevel (int);
extern tree poplevel (int,int, int);
extern void insert_block (tree);
extern void set_block (tree);
extern tree pushdecl (tree);
extern void cxx_init_decl_processing (void);
enum cp_tree_node_structure_enum cp_tree_node_structure
  (union lang_tree_node *);
extern void cxx_insert_default_attributes (tree);
extern _Bool cxx_mark_addressable (tree);
extern void cxx_push_function_context (struct function *);
extern void cxx_pop_function_context (struct function *);
extern void cxx_mark_function_context (struct function *);
extern int toplevel_bindings_p (void);
extern int namespace_bindings_p (void);
extern void keep_next_level (int);
extern int template_parm_scope_p (void);
extern void set_class_shadows (tree);
extern void maybe_push_cleanup_level (tree);
extern void begin_scope (scope_kind);
extern void finish_scope (void);
extern void note_level_for_for (void);
extern void note_level_for_try (void);
extern void note_level_for_catch (void);
extern void resume_level (struct cp_binding_level *);
extern void delete_block (tree);
extern void add_block_current_level (tree);
extern void pushlevel_class (void);
extern void poplevel_class (void);
extern void print_binding_stack (void);
extern void print_binding_level (struct cp_binding_level *);
extern void push_namespace (tree);
extern void pop_namespace (void);
extern void push_nested_namespace (tree);
extern void pop_nested_namespace (tree);
extern void maybe_push_to_top_level (int);
extern void push_to_top_level (void);
extern void pop_from_top_level (void);
extern void push_switch (tree);
extern void pop_switch (void);
extern tree identifier_type_value (tree);
extern void set_identifier_type_value (tree, tree);
extern void pop_everything (void);
extern void pushtag (tree, tree, int);
extern tree make_anon_name (void);
extern void clear_anon_tags (void);
extern int decls_match (tree, tree);
extern int duplicate_decls (tree, tree);
extern tree pushdecl_top_level (tree);
extern tree pushdecl_top_level_and_finish (tree, tree);
extern _Bool pushdecl_class_level (tree);
extern tree pushdecl_namespace_level (tree);
extern tree push_using_decl (tree, tree);
extern tree push_using_directive (tree);
extern _Bool push_class_level_binding (tree, tree);
extern tree implicitly_declare (tree);
extern tree declare_local_label (tree);
extern tree define_label (const char *, int, tree);
extern void check_goto (tree);
extern void define_case_label (void);
extern cxx_binding *binding_for_name (tree, tree);
extern tree namespace_binding (tree, tree);
extern void set_namespace_binding (tree, tree, tree);
extern tree lookup_namespace_name (tree, tree);
extern tree build_typename_type (tree, tree, tree, tree);
extern tree make_typename_type (tree, tree, tsubst_flags_t);
extern tree make_unbound_class_template (tree, tree, tsubst_flags_t);
extern tree lookup_name_nonclass (tree);
extern tree lookup_function_nonclass (tree, tree);
extern tree lookup_name (tree, int);
extern tree lookup_name_current_level (tree);
extern tree lookup_type_current_level (tree);
extern tree lookup_name_namespace_only (tree);
extern void begin_only_namespace_names (void);
extern void end_only_namespace_names (void);
extern tree namespace_ancestor (tree, tree);
extern _Bool is_ancestor (tree, tree);
extern tree unqualified_namespace_lookup (tree, int, tree *);
extern tree check_for_out_of_scope_variable (tree);
extern _Bool lookup_using_namespace (tree, cxx_binding *, tree, tree, int, tree *);
extern _Bool qualified_lookup_using_namespace (tree, tree, cxx_binding *, int);
extern tree build_library_fn (tree, tree);
extern tree build_library_fn_ptr (const char *, tree);
extern tree build_cp_library_fn_ptr (const char *, tree);
extern tree push_library_fn (tree, tree);
extern tree push_void_library_fn (tree, tree);
extern tree push_throw_library_fn (tree, tree);
extern int init_type_desc (void);
extern tree check_tag_decl (tree);
extern void shadow_tag (tree);
extern tree groktypename (tree);
extern tree start_decl (tree, tree, int, tree, tree);
extern void start_decl_1 (tree);
extern void cp_finish_decl (tree, tree, tree, int);
extern void finish_decl (tree, tree, tree);
extern void maybe_inject_for_scope_var (tree);
extern tree start_handler_parms (tree, tree);
extern int complete_array_type (tree, tree, int);
extern tree build_ptrmemfunc_type (tree);
extern tree build_ptrmem_type (tree, tree);

extern int parmlist_is_exprlist (tree);
extern int copy_fn_p (tree);
extern void grok_special_member_properties (tree);
extern int grok_ctor_properties (tree, tree);
extern void grok_op_properties (tree, int);
extern tree xref_tag (enum tag_types, tree, tree, _Bool);
extern tree xref_tag_from_type (tree, tree, int);
extern void xref_basetypes (tree, tree);
extern tree start_enum (tree);
extern void finish_enum (tree);
extern void build_enumerator (tree, tree, tree);
extern int start_function (tree, tree, tree, int);
extern tree begin_function_body (void);
extern void finish_function_body (tree);
extern tree finish_function (int);
extern tree start_method (tree, tree, tree);
extern tree finish_method (tree);
extern void maybe_register_incomplete_var (tree);
extern void complete_vars (tree);
extern void finish_stmt (void);
extern void print_other_binding_stack (struct cp_binding_level *);
extern void revert_static_member_fn (tree);
extern void fixup_anonymous_aggr (tree);
extern int check_static_variable_definition (tree, tree);
extern tree compute_array_index_type (tree, tree);
extern void push_local_binding (tree, tree, int);
extern int push_class_binding (tree, tree);
extern tree check_default_argument (tree, tree);
extern tree push_overloaded_decl (tree, int);
extern void clear_identifier_class_values (void);
extern void storetags (tree);
extern int vtable_decl_p (tree, void *);
extern int vtype_decl_p (tree, void *);
extern int sigtable_decl_p (tree, void *);
typedef int (*walk_globals_pred) (tree, void *);
typedef int (*walk_globals_fn) (tree *, void *);
extern int walk_globals (walk_globals_pred, walk_globals_fn, void *);


extern int walk_vtables (walk_globals_pred, walk_globals_fn, void *);


typedef int (*walk_namespaces_fn) (tree, void *);
extern int walk_namespaces (walk_namespaces_fn, void *);

extern int wrapup_globals_for_namespace (tree, void *);
extern tree cp_namespace_decls (tree);
extern tree create_implicit_typedef (tree, tree);
extern tree maybe_push_decl (tree);
extern tree build_target_expr_with_type (tree, tree);
extern int local_variable_p (tree);
extern int nonstatic_local_decl_p (tree);
extern tree declare_global_var (tree, tree);
extern void register_dtor_fn (tree);
extern tmpl_spec_kind current_tmpl_spec_kind (int);
extern cxx_binding *cxx_scope_find_binding_for_name (tree, tree);
extern tree cp_fname_init (const char *);
extern _Bool have_extern_spec;


extern int check_java_method (tree);
extern int grok_method_quals (tree, tree, tree);
extern void warn_if_unknown_interface (tree);
extern void grok_x_components (tree);
extern void maybe_retrofit_in_chrg (tree);
extern void maybe_make_one_only (tree);
extern void grokclassfn (tree, tree, enum overload_flags, tree);
extern tree grok_array_decl (tree, tree);
extern tree delete_sanity (tree, tree, int, int);
extern tree check_classfn (tree, tree);
extern void check_member_template (tree);
extern tree grokfield (tree, tree, tree, tree, tree);
extern tree grokbitfield (tree, tree, tree);
extern tree groktypefield (tree, tree);
extern tree grokoptypename (tree, tree, tree);
extern void cplus_decl_attributes (tree *, tree, int);
extern tree constructor_name_full (tree);
extern tree constructor_name (tree);
extern _Bool constructor_name_p (tree, tree);
extern void defer_fn (tree);
extern void finish_anon_union (tree);
extern tree finish_table (tree, tree, tree, int);
extern void finish_builtin_type (tree, const char *, tree *, int, tree);

extern tree coerce_new_type (tree);
extern tree coerce_delete_type (tree);
extern void comdat_linkage (tree);
extern void import_export_vtable (tree, tree, int);
extern void import_export_decl (tree);
extern void import_export_tinfo (tree, tree, int);
extern tree build_cleanup (tree);
extern void finish_file (void);
extern tree reparse_absdcl_as_expr (tree, tree);
extern tree reparse_absdcl_as_casts (tree, tree);
extern tree build_expr_from_tree (tree);
extern tree build_offset_ref_call_from_tree (tree, tree);
extern tree build_call_from_tree (tree, tree, _Bool);
extern tree reparse_decl_as_expr (tree, tree);
extern tree finish_decl_parsing (tree);
extern void set_decl_namespace (tree, tree, int);
extern tree current_decl_namespace (void);
extern void push_decl_namespace (tree);
extern void pop_decl_namespace (void);
extern void push_scope (tree);
extern void pop_scope (tree);
extern void do_namespace_alias (tree, tree);
extern void do_toplevel_using_decl (tree);
extern void do_local_using_decl (tree);
extern tree do_class_using_decl (tree);
extern void do_using_directive (tree);
extern void check_default_args (tree);
extern void mark_used (tree);
extern tree handle_class_head (enum tag_types, tree, tree, tree, int, int *);
extern tree handle_class_head_apparent_template (tree, int *);
extern tree lookup_arg_dependent (tree, tree, tree);
extern void finish_static_data_member_decl (tree, tree, tree, int);
extern tree cp_build_parm_decl (tree, tree);
extern tree build_artificial_parm (tree, tree);
extern tree get_guard (tree);
extern tree get_guard_cond (tree);
extern tree set_guard (tree);

extern void cp_error_at (const char *msgid, ...);
extern void cp_warning_at (const char *msgid, ...);
extern void cp_pedwarn_at (const char *msgid, ...);
# 3981 "../../../kg++fe/gnu/cp/cp-tree.h"
extern void init_error (void);
extern const char *type_as_string (tree, int);
extern const char *decl_as_string (tree, int);
extern const char *expr_as_string (tree, int);
extern const char *context_as_string (tree, int);
extern const char *lang_decl_name (tree, int);
extern const char *cp_file_of (tree);
extern int cp_line_of (tree);
extern const char *language_to_string (enum languages, int);
extern void print_instantiation_context (void);


extern void init_exception_processing (void);
extern tree expand_start_catch_block (tree);
extern void expand_end_catch_block (void);
extern void expand_builtin_throw (void);
extern void expand_eh_spec_block (tree);
extern void expand_exception_blocks (void);
extern tree build_exc_ptr (void);
extern tree build_throw (tree);
extern void mark_all_runtime_matches (void);
extern int nothrow_libfn_p (tree);
extern void check_handlers (tree);
extern void choose_personality_routine (enum languages);


extern rtx cxx_expand_expr (tree, rtx, enum machine_mode, int);


extern tree cplus_expand_constant (tree);


extern int is_friend (tree, tree);
extern void make_friend_class (tree, tree);
extern void add_friend (tree, tree);
extern tree do_friend (tree, tree, tree, tree, tree, enum overload_flags, tree, int);


extern tree expand_member_init (tree);
extern void emit_mem_initializers (tree);
extern tree build_aggr_init (tree, tree, int);
extern tree build_init (tree, tree, int);
extern int is_aggr_type (tree, int);
extern tree get_aggr_from_typedef (tree, int);
extern tree get_type_value (tree);
extern tree build_zero_init (tree, tree, _Bool);
extern tree build_member_call (tree, tree, tree);
extern tree build_offset_ref (tree, tree);
extern tree resolve_offset_ref (tree);
extern tree build_new (tree, tree, tree, int);
extern tree build_vec_init (tree, tree, tree, int);
extern tree build_x_delete (tree, int, tree);
extern tree build_delete (tree, tree, special_function_kind, int, int);
extern void push_base_cleanups (void);
extern tree build_vbase_delete (tree, tree);
extern tree build_vec_delete (tree, tree, special_function_kind, int);
extern tree create_temporary_var (tree);
extern void begin_init_stmts (tree *, tree *);
extern tree finish_init_stmts (tree, tree);
extern void initialize_vtbl_ptrs (tree);
extern tree build_java_class_ref (tree);




extern void cxx_dup_lang_specific_decl (tree);
extern tree make_pointer_declarator (tree, tree);
extern tree make_reference_declarator (tree, tree);
extern tree make_call_declarator (tree, tree, tree, tree);
extern void set_quals_and_spec (tree, tree, tree);
extern void print_parse_statistics (void);
extern void do_pending_inlines (void);
extern void process_next_inline (struct unparsed_text *);

extern void yyungetc (int, int);
extern void snarf_method (tree);

extern void check_for_missing_semicolon (tree);
extern void note_got_semicolon (tree);
extern void note_list_got_semicolon (tree);
extern void do_pending_lang_change (void);
extern void see_typename (void);
extern void unqualified_name_lookup_error (tree);
extern tree do_identifier (tree, int, tree);
extern tree do_scoped_id (tree, tree);
extern tree identifier_typedecl_value (tree);
extern tree build_lang_decl (enum tree_code, tree, tree);
extern void retrofit_lang_decl (tree);
extern tree copy_decl (tree);
extern tree copy_type (tree);
extern tree cxx_make_type (enum tree_code);
extern tree make_aggr_type (enum tree_code);
extern void yyerror (const char *);
extern void yyhook (int);
extern int cp_type_qual_from_rid (tree);
extern const char *cxx_init (const char *);
extern void cxx_finish (void);
extern void cxx_init_options (void);


extern void init_method (void);
extern void set_mangled_name_for_decl (tree);
extern tree build_opfncall (enum tree_code, int, tree, tree, tree);
extern tree hack_identifier (tree, tree);
extern tree make_thunk (tree, tree, tree);
extern void use_thunk (tree, int);
extern void synthesize_method (tree);
extern tree implicitly_declare_fn (special_function_kind, tree, int);
extern tree skip_artificial_parms_for (tree, tree);


extern void optimize_function (tree);
extern int calls_setjmp_p (tree);
extern int maybe_clone_body (tree);


extern void check_template_shadow (tree);
extern tree get_innermost_template_args (tree, int);
extern tree tsubst (tree, tree, tsubst_flags_t, tree);
extern tree tsubst_expr (tree, tree, tsubst_flags_t, tree);
extern tree tsubst_copy (tree, tree, tsubst_flags_t, tree);
extern void maybe_begin_member_template_processing (tree);
extern void maybe_end_member_template_processing (void);
extern tree finish_member_template_decl (tree);
extern void begin_template_parm_list (void);
extern void begin_specialization (void);
extern void reset_specialization (void);
extern void end_specialization (void);
extern void begin_explicit_instantiation (void);
extern void end_explicit_instantiation (void);
extern tree check_explicit_specialization (tree, tree, int, int);
extern tree process_template_parm (tree, tree);
extern tree end_template_parm_list (tree);
extern void end_template_decl (void);
extern tree current_template_args (void);
extern tree push_template_decl (tree);
extern tree push_template_decl_real (tree, int);
extern void redeclare_class_template (tree, tree);
extern tree lookup_template_class (tree, tree, tree, tree, int, tsubst_flags_t);
extern tree lookup_template_function (tree, tree);
extern int uses_template_parms (tree);
extern tree instantiate_class_template (tree);
extern tree instantiate_template (tree, tree);
extern int fn_type_unification (tree, tree, tree, tree, tree, unification_kind_t, int);
extern tree tinst_for_decl (void);
extern void mark_decl_instantiated (tree, int);
extern int more_specialized (tree, tree, int, int);
extern void mark_class_instantiated (tree, int);
extern void do_decl_instantiation (tree, tree);
extern void do_type_instantiation (tree, tree, tsubst_flags_t);
extern tree instantiate_decl (tree, int);
extern tree get_bindings (tree, tree, tree);
extern int push_tinst_level (tree);
extern void pop_tinst_level (void);
extern int more_specialized_class (tree, tree, tree);
extern int is_member_template (tree);
extern int comp_template_parms (tree, tree);
extern int template_class_depth (tree);
extern int is_specialization_of (tree, tree);
extern int comp_template_args (tree, tree);
extern void maybe_process_partial_specialization (tree);
extern void maybe_check_template_type (tree);
extern tree most_specialized_instantiation (tree);
extern void print_candidates (tree);
extern int instantiate_pending_templates (void);
extern tree tsubst_default_argument (tree, tree, tree);
extern tree most_general_template (tree);
extern tree get_mostly_instantiated_function_type (tree);
extern int problematic_instantiation_changed (void);
extern void record_last_problematic_instantiation (void);
extern tree current_instantiation (void);
extern int processing_template_parmlist;


extern void repo_template_used (tree);
extern void repo_template_instantiated (tree, int);
extern void init_repo (const char *);
extern void finish_repo (void);


extern void init_rtti_processing (void);
extern tree build_typeid (tree);
extern tree get_tinfo_decl (tree);
extern tree get_typeid (tree);
extern tree build_dynamic_cast (tree, tree);
extern void emit_support_tinfos (void);
extern int unemitted_tinfo_decl_p (tree, void *);
extern int emit_tinfo_decl (tree *, void *);


extern _Bool accessible_base_p (tree, tree);
extern tree lookup_base (tree, tree, base_access, base_kind *);
extern int types_overlap_p (tree, tree);
extern tree get_vbase (tree, tree);
extern tree get_dynamic_cast_base_type (tree, tree);
extern void type_access_control (tree, tree);
extern int accessible_p (tree, tree);
extern tree lookup_field_1 (tree, tree, _Bool);
extern tree lookup_field (tree, tree, int, int);
extern tree lookup_nested_field (tree, int);
extern int lookup_fnfields_1 (tree, tree);
extern tree lookup_fnfields (tree, tree, int);
extern tree lookup_member (tree, tree, int, int);
extern int look_for_overrides (tree, tree);
extern void get_pure_virtuals (tree);
extern void get_vbase_types (tree);
extern void maybe_suppress_debug_info (tree);
extern void note_debug_info_needed (tree);
extern void push_class_decls (tree);
extern void pop_class_decls (void);
extern void unuse_fields (tree);
extern void print_search_statistics (void);
extern void init_search_processing (void);
extern void reinit_search_statistics (void);
extern tree current_scope (void);
extern int at_function_scope_p (void);
extern _Bool at_class_scope_p (void);
extern tree context_for_name_lookup (tree);
extern tree lookup_conversions (tree);
extern tree binfo_for_vtable (tree);
extern tree binfo_from_vbase (tree);
extern tree look_for_overrides_here (tree, tree);
extern int check_final_overrider (tree, tree);
extern tree dfs_walk (tree, tree (*) (tree, void *), tree (*) (tree, void *), void *);



extern tree dfs_walk_real (tree, tree (*) (tree, void *), tree (*) (tree, void *), tree (*) (tree, void *), void *);




extern tree dfs_unmark (tree, void *);
extern tree markedp (tree, void *);
extern tree unmarkedp (tree, void *);
extern tree dfs_unmarked_real_bases_queue_p (tree, void *);
extern tree dfs_marked_real_bases_queue_p (tree, void *);
extern tree dfs_skip_vbases (tree, void *);
extern tree marked_vtable_pathp (tree, void *);
extern tree unmarked_vtable_pathp (tree, void *);
extern tree find_vbase_instance (tree, tree);
extern tree binfo_for_vbase (tree, tree);
extern tree binfo_via_virtual (tree, tree);
extern tree build_baselink (tree, tree, tree, tree);
extern tree adjust_result_of_qualified_name_lookup
                                                (tree, tree, tree);

extern void init_cp_semantics (void);
extern tree finish_expr_stmt (tree);
extern tree begin_if_stmt (void);
extern void finish_if_stmt_cond (tree, tree);
extern tree finish_then_clause (tree);
extern void begin_else_clause (void);
extern void finish_else_clause (tree);
extern void finish_if_stmt (void);
extern tree begin_while_stmt (void);
extern void finish_while_stmt_cond (tree, tree);
extern void finish_while_stmt (tree);
extern tree begin_do_stmt (void);
extern void finish_do_body (tree);
extern void finish_do_stmt (tree, tree);
extern tree finish_return_stmt (tree);
extern tree begin_for_stmt (void);
extern void finish_for_init_stmt (tree);
extern void finish_for_cond (tree, tree);
extern void finish_for_expr (tree, tree);
extern void finish_for_stmt (tree);
extern tree finish_break_stmt (void);
extern tree finish_continue_stmt (void);
extern tree begin_switch_stmt (void);
extern void finish_switch_cond (tree, tree);
extern void finish_switch_stmt (tree);
extern tree finish_case_label (tree, tree);
extern tree finish_goto_stmt (tree);
extern tree begin_try_block (void);
extern void finish_try_block (tree);
extern tree begin_eh_spec_block (void);
extern void finish_eh_spec_block (tree, tree);
extern void finish_handler_sequence (tree);
extern tree begin_function_try_block (void);
extern void finish_function_try_block (tree);
extern void finish_function_handler_sequence (tree);
extern void finish_cleanup_try_block (tree);
extern tree begin_handler (void);
extern void finish_handler_parms (tree, tree);
extern void begin_catch_block (tree);
extern void finish_handler (tree);
extern void finish_cleanup (tree, tree);
extern tree begin_compound_stmt (int);
extern tree finish_compound_stmt (int, tree);
extern tree finish_asm_stmt (tree, tree, tree, tree, tree);
extern void finish_label_stmt (tree);
extern void finish_label_decl (tree);
extern void finish_subobject (tree);
extern tree finish_parenthesized_expr (tree);
extern tree begin_stmt_expr (void);
extern tree finish_stmt_expr (tree);
extern tree finish_call_expr (tree, tree, _Bool);
extern tree finish_increment_expr (tree, enum tree_code);
extern tree finish_this_expr (void);
extern tree finish_object_call_expr (tree, tree, tree);
extern tree finish_qualified_object_call_expr (tree, tree, tree);
extern tree finish_pseudo_destructor_call_expr (tree, tree, tree);
extern tree finish_unary_op_expr (enum tree_code, tree);
extern tree finish_id_expr (tree);
extern tree finish_fname (tree);
extern void save_type_access_control (tree);
extern void reset_type_access_control (void);
extern void decl_type_access_control (tree);
extern int begin_function_definition (tree, tree, tree);
extern tree begin_constructor_declarator (tree, tree);
extern tree finish_declarator (tree, tree, tree, tree, int);
extern void finish_translation_unit (void);
extern tree finish_template_type_parm (tree, tree);
extern tree finish_template_template_parm (tree, tree);
extern tree finish_parmlist (tree, int);
extern tree begin_class_definition (tree);
extern tree finish_class_definition (tree, tree, int, int);
extern void finish_default_args (void);
extern void begin_inline_definitions (void);
extern tree finish_member_class_template (tree);
extern void finish_template_decl (tree);
extern tree finish_template_type (tree, tree, int);
extern void enter_scope_of (tree);
extern tree finish_base_specifier (tree, tree);
extern void finish_member_declaration (tree);
extern void check_multiple_declarators (void);
extern tree finish_typeof (tree);
extern tree finish_sizeof (tree);
extern tree finish_alignof (tree);
extern void finish_decl_cleanup (tree, tree);
extern void finish_eh_cleanup (tree);
extern void finish_named_return_value (tree, tree);
extern void expand_body (tree);
extern tree nullify_returns_r (tree *, int *, void *);
extern void do_pushlevel (void);
extern tree do_poplevel (void);
extern void begin_mem_initializers (void);
extern void finish_mem_initializers (tree);
extern void setup_vtbl_ptr (tree, tree);
extern void clear_out_block (void);
extern tree begin_global_stmt_expr (void);
extern tree finish_global_stmt_expr (tree);
extern tree check_template_template_default_arg (tree);


extern void init_spew (void);
extern int peekyylex (void);
extern tree arbitrate_lookup (tree, tree, tree);
extern tree frob_opname (tree);
extern void maybe_snarf_defarg (void);
extern void add_defarg_fn (tree);
extern void do_pending_defargs (void);
extern void done_pending_defargs (void);
extern void unprocessed_defarg_fn (tree);
extern void replace_defarg (tree, tree);
extern void end_input (void);


extern void lang_check_failed (const char *, int, const char *);

extern tree stabilize_expr (tree, tree *);
extern tree cxx_unsave_expr_now (tree);
extern tree cxx_maybe_build_cleanup (tree);
extern void init_tree (void);
extern int pod_type_p (tree);
extern int zero_init_p (tree);
extern tree canonical_type_variant (tree);
extern void unshare_base_binfos (tree);
extern int member_p (tree);
extern cp_lvalue_kind real_lvalue_p (tree);
extern cp_lvalue_kind real_non_cast_lvalue_p (tree);
extern int non_cast_lvalue_p (tree);
extern int non_cast_lvalue_or_else (tree, const char *);
extern tree build_min (enum tree_code, tree, ...);

extern tree build_min_nt (enum tree_code, ...);
extern tree build_cplus_new (tree, tree);
extern tree get_target_expr (tree);
extern tree break_out_calls (tree);
extern tree build_cplus_method_type (tree, tree, tree);
extern tree build_cplus_staticfn_type (tree, tree, tree);
extern tree build_cplus_array_type (tree, tree);
extern tree hash_tree_cons (tree, tree, tree);
extern tree hash_tree_chain (tree, tree);
extern tree hash_chainon (tree, tree);
extern tree make_binfo (tree, tree, tree, tree);
extern tree reverse_path (tree);
extern int count_functions (tree);
extern int is_overloaded_fn (tree);
extern tree get_overloaded_fn (tree);
extern tree get_first_fn (tree);
extern int bound_pmf_p (tree);
extern tree ovl_cons (tree, tree);
extern tree build_overload (tree, tree);
extern tree function_arg_chain (tree);
extern int promotes_to_aggr_type (tree, enum tree_code);
extern int is_aggr_type_2 (tree, tree);
extern const char *cxx_printable_name (tree, int);
extern tree build_exception_variant (tree, tree);
extern tree bind_template_template_parm (tree, tree);
extern tree array_type_nelts_total (tree);
extern tree array_type_nelts_top (tree);
extern tree break_out_target_exprs (tree);
extern tree get_type_decl (tree);
extern tree vec_binfo_member (tree, tree);
extern tree decl_namespace_context (tree);
extern tree lvalue_type (tree);
extern tree error_type (tree);
extern tree build_zc_wrapper (struct z_candidate *);
extern tree build_srcloc_here (void);
extern int varargs_function_p (tree);
extern int really_overloaded_fn (tree);
extern int cp_tree_equal (tree, tree);
extern tree no_linkage_check (tree);
extern void debug_binfo (tree);
extern tree build_dummy_object (tree);
extern tree maybe_dummy_object (tree, tree *);
extern int is_dummy_object (tree);
extern const struct attribute_spec cxx_attribute_table[];
extern tree make_ptrmem_cst (tree, tree);
extern tree cp_build_qualified_type_real (tree, int, tsubst_flags_t);


extern tree build_shared_int_cst (int);
extern special_function_kind special_function_p (tree);
extern _Bool name_p (tree);
extern int count_trees (tree);
extern int char_type_p (tree);
extern void verify_stmt_tree (tree);
extern tree find_tree (tree, tree);
extern linkage_kind decl_linkage (tree);
extern tree cp_walk_subtrees (tree*, int*, walk_tree_fn, void*, void*);

extern int cp_cannot_inline_tree_fn (tree*);
extern tree cp_add_pending_fn_decls (void*,tree);
extern int cp_is_overload_p (tree);
extern int cp_auto_var_in_fn_p (tree,tree);
extern tree cp_copy_res_decl_for_inlining (tree, tree, tree, void*, int*, void*);

extern int cp_start_inlining (tree);
extern void cp_end_inlining (tree);


extern int string_conv_p (tree, tree, int);
extern tree cp_truthvalue_conversion (tree);
extern tree condition_conversion (tree);
extern tree target_type (tree);
extern tree require_complete_type (tree);
extern tree complete_type (tree);
extern tree complete_type_or_diagnostic (tree, tree, int);

extern int type_unknown_p (tree);
extern tree commonparms (tree, tree);
extern tree original_type (tree);
extern int comp_except_specs (tree, tree, int);
extern int comptypes (tree, tree, int);
extern int comp_target_types (tree, tree, int);
extern int compparms (tree, tree);
extern int comp_cv_qualification (tree, tree);
extern int comp_cv_qual_signature (tree, tree);
extern tree expr_sizeof (tree);
extern tree cxx_sizeof_or_alignof_type (tree, enum tree_code, int);

extern tree inline_conversion (tree);
extern tree decay_conversion (tree);
extern tree build_class_member_access_expr (tree, tree, tree, _Bool);
extern tree finish_class_member_access_expr (tree, tree);
extern tree build_x_indirect_ref (tree, const char *);
extern tree build_indirect_ref (tree, const char *);
extern tree build_array_ref (tree, tree);
extern tree get_member_function_from_ptrfunc (tree *, tree);
extern tree build_function_call_real (tree, tree, int);
extern tree build_function_call_maybe (tree, tree);
extern tree convert_arguments (tree, tree, tree, int);
extern tree build_x_binary_op (enum tree_code, tree, tree);
extern tree build_x_unary_op (enum tree_code, tree);
extern tree unary_complex_lvalue (enum tree_code, tree);
extern tree build_x_conditional_expr (tree, tree, tree);
extern tree build_x_compound_expr (tree);
extern tree build_compound_expr (tree);
extern tree build_static_cast (tree, tree);
extern tree build_reinterpret_cast (tree, tree);
extern tree build_const_cast (tree, tree);
extern tree build_c_cast (tree, tree);
extern tree build_x_modify_expr (tree, enum tree_code, tree);
extern tree build_modify_expr (tree, enum tree_code, tree);
extern tree dubious_conversion_warnings (tree, tree, const char *, tree, int);
extern tree convert_for_initialization (tree, tree, tree, int, const char *, tree, int);
extern int comp_ptr_ttypes (tree, tree);
extern int ptr_reasonably_similar (tree, tree);
extern tree build_ptrmemfunc (tree, tree, int);
extern int cp_type_quals (tree);
extern int cp_has_mutable_p (tree);
extern int at_least_as_qualified_p (tree, tree);
extern int more_qualified_p (tree, tree);
extern tree build_ptrmemfunc1 (tree, tree, tree);
extern void expand_ptrmemfunc_cst (tree, tree *, tree *);
extern tree pfn_from_ptrmemfunc (tree);
extern tree type_after_usual_arithmetic_conversions (tree, tree);
extern tree composite_pointer_type (tree, tree, tree, tree, const char*);

extern tree merge_types (tree, tree);
extern tree check_return_expr (tree);




extern tree build_ptrmemfunc_access_expr (tree, tree);
extern tree build_address (tree);
extern tree build_nop (tree, tree);


extern void require_complete_eh_spec_types (tree, tree);
extern void cxx_incomplete_type_diagnostic (tree, tree, int);

extern void cxx_incomplete_type_error (tree, tree);


extern tree error_not_base_type (tree, tree);
extern tree binfo_or_else (tree, tree);
extern void readonly_error (tree, const char *, int);
extern int abstract_virtuals_error (tree, tree);

extern tree store_init_value (tree, tree);
extern tree digest_init (tree, tree, tree *);
extern tree build_scoped_ref (tree, tree, tree *);
extern tree build_x_arrow (tree);
extern tree build_m_component_ref (tree, tree);
extern tree build_functional_cast (tree, tree);
extern void check_for_new_type (const char *, flagged_type_tree);
extern tree add_exception_specifier (tree, tree, int);
extern tree merge_exception_specifiers (tree, tree);


extern void init_mangle (void);
extern void mangle_decl (tree);
extern const char *mangle_type_string (tree);
extern tree mangle_type (tree);
extern tree mangle_typeinfo_for_type (tree);
extern tree mangle_typeinfo_string_for_type (tree);
extern tree mangle_vtbl_for_type (tree);
extern tree mangle_vtt_for_type (tree);
extern tree mangle_ctor_vtbl_for_type (tree, tree);
extern tree mangle_thunk (tree, tree, tree);
extern tree mangle_conv_op_name_for_type (tree);
extern tree mangle_guard_variable (tree);
extern tree mangle_ref_init_variable (tree);


extern int cp_dump_tree (void *, tree);
# 43 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 44 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 45 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 46 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 47 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 48 "../../../kg++fe/gnu/cp/typeck.c" 2
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
# 49 "../../../kg++fe/gnu/cp/typeck.c" 2

# 1 "../../../kg++fe/gnu/defaults.h" 1
# 51 "../../../kg++fe/gnu/cp/typeck.c" 2


static tree convert_for_assignment (tree, tree, const char *, tree, int);

static tree cp_pointer_int_sum (enum tree_code, tree, tree);
static tree rationalize_conditional_expr (enum tree_code, tree);
static int comp_target_parms (tree, tree);
static int comp_ptr_ttypes_real (tree, tree, int);
static int comp_ptr_ttypes_const (tree, tree);
static int comp_ptr_ttypes_reinterpret (tree, tree);
static int comp_except_types (tree, tree, int);
static int comp_array_types (int (*) (tree, tree, int), tree, tree, int);

static tree common_base_type (tree, tree);
static tree lookup_anon_field (tree, tree);
static tree pointer_diff (tree, tree, tree);
static tree qualify_type_recursive (tree, tree);
static tree get_delta_difference (tree, tree, int);
static int comp_cv_target_types (tree, tree, int);
static void casts_away_constness_r (tree *, tree *);
static int casts_away_constness (tree, tree);
static void maybe_warn_about_returning_address_of_local (tree);
static tree strip_all_pointer_quals (tree);




tree
target_type (type)
     tree type;
{
  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    type = ((type)->common.type);
  while (((enum tree_code) (type)->common.code) == POINTER_TYPE
  || ((enum tree_code) (type)->common.code) == ARRAY_TYPE
  || ((enum tree_code) (type)->common.code) == FUNCTION_TYPE
  || ((enum tree_code) (type)->common.code) == METHOD_TYPE
  || ((enum tree_code) (type)->common.code) == OFFSET_TYPE)
    type = ((type)->common.type);
  return type;
}






tree
require_complete_type (value)
     tree value;
{
  tree type;

  if (scope_chain->x_processing_template_decl || value == global_trees[TI_ERROR_MARK])
    return value;

  if (((enum tree_code) (value)->common.code) == OVERLOAD)
    type = cp_global_trees[CPTI_UNKNOWN_TYPE];
  else
    type = ((value)->common.type);


  if ((((type)->type.size) != (tree) ((void *)0)))
    return value;




  if (((enum tree_code) (value)->common.code) == OFFSET_REF
      && (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)) != 0
      && ((value)->exp.operands[0]) == (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)))
    {
      value = resolve_offset_ref (value);
      return require_complete_type (value);
    }

  if ((complete_type_or_diagnostic ((type), (value), 0)))
    return value;
  else
    return global_trees[TI_ERROR_MARK];
}






tree
complete_type (type)
     tree type;
{
  if (type == (tree) ((void *)0))


    return global_trees[TI_ERROR_MARK];

  if (type == global_trees[TI_ERROR_MARK] || (((type)->type.size) != (tree) ((void *)0)))
    ;
  else if (((enum tree_code) (type)->common.code) == ARRAY_TYPE && ((type)->type.values))
    {
      tree t = complete_type (((type)->common.type));
      if ((((t)->type.size) != (tree) ((void *)0)) && ! scope_chain->x_processing_template_decl)
 layout_type (type);
      ((type)->type.needs_constructing_flag)
 = ((((t)->type.main_variant))->type.needs_constructing_flag);
      (((type)->type.lang_flag_4))
 = (((((t)->type.main_variant))->type.lang_flag_4));
    }
  else if ((((((enum tree_code) (type)->common.code)) == RECORD_TYPE || (((enum tree_code) (type)->common.code)) == UNION_TYPE) && (((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5))) && (((&((type)->type.lang_specific)->u.c)->use_template) & 1))
    instantiate_class_template (((type)->type.main_variant));

  return type;
}






tree
complete_type_or_diagnostic (type, value, diag_type)
     tree type;
     tree value;
     int diag_type;
{
  type = complete_type (type);
  if (type == global_trees[TI_ERROR_MARK])

    return (tree) ((void *)0);
  else if (!(((type)->type.size) != (tree) ((void *)0)))
    {
      cxx_incomplete_type_diagnostic (value, type, diag_type);
      return (tree) ((void *)0);
    }
  else
    return type;
}



int
type_unknown_p (exp)
     tree exp;
{
  return (((enum tree_code) (exp)->common.code) == OVERLOAD
          || ((enum tree_code) (exp)->common.code) == TREE_LIST
   || ((exp)->common.type) == cp_global_trees[CPTI_UNKNOWN_TYPE]
   || (((enum tree_code) (((exp)->common.type))->common.code) == OFFSET_TYPE
       && ((((exp)->common.type))->common.type) == cp_global_trees[CPTI_UNKNOWN_TYPE]));
}





static tree
qualify_type_recursive (t1, t2)
     tree t1, t2;
{
  if (((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) != OFFSET_TYPE) && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) != OFFSET_TYPE))
      || ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE) && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) == OFFSET_TYPE)))
    {
      tree tt1;
      tree tt2;
      tree b1;
      int type_quals;
      tree tgt;
      tree attributes = (*targetm.merge_type_attributes) (t1, t2);

      if ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE))
 {
   b1 = ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE) ? ((((t1)->common.type))->type.maxval) : (((((((((t1)->type.values))->common.type)))->common.type))->type.maxval));
   tt1 = ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE) ? ((((t1)->common.type))->common.type) : (((((((t1)->type.values))->common.type)))->common.type));
   tt2 = ((((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) == OFFSET_TYPE) ? ((((t2)->common.type))->common.type) : (((((((t2)->type.values))->common.type)))->common.type));
 }
      else
 {
   b1 = (tree) ((void *)0);
   tt1 = ((t1)->common.type);
   tt2 = ((t2)->common.type);
 }

      type_quals = (cp_type_quals (tt1) | cp_type_quals (tt2));
      tgt = qualify_type_recursive (tt1, tt2);
      tgt = cp_build_qualified_type_real ((tgt), (type_quals), tf_error | tf_warning);
      if (b1)
 t1 = build_ptrmem_type (b1, tgt);
      else
 t1 = build_pointer_type (tgt);
      t1 = build_type_attribute_variant (t1, attributes);
    }
  return t1;
}
# 252 "../../../kg++fe/gnu/cp/typeck.c"
tree
commonparms (p1, p2)
     tree p1, p2;
{
  tree oldargs = p1, newargs, n;
  int i, len;
  int any_change = 0;

  len = list_length (p1);
  newargs = tree_last (p1);

  if (newargs == global_trees[TI_VOID_LIST_NODE])
    i = 1;
  else
    {
      i = 0;
      newargs = 0;
    }

  for (; i < len; i++)
    newargs = tree_cons ((tree) ((void *)0), (tree) ((void *)0), newargs);

  n = newargs;

  for (i = 0; p1;
       p1 = ((p1)->common.chain), p2 = ((p2)->common.chain), n = ((n)->common.chain), i++)
    {
      if (((p1)->list.purpose) && !((p2)->list.purpose))
 {
   ((n)->list.purpose) = ((p1)->list.purpose);
   any_change = 1;
 }
      else if (! ((p1)->list.purpose))
 {
   if (((p2)->list.purpose))
     {
       ((n)->list.purpose) = ((p2)->list.purpose);
       any_change = 1;
     }
 }
      else
 {
   if (1 != simple_cst_equal (((p1)->list.purpose), ((p2)->list.purpose)))
     any_change = 1;
   ((n)->list.purpose) = ((p2)->list.purpose);
 }
      if (((p1)->list.value) != ((p2)->list.value))
 {
   any_change = 1;
   ((n)->list.value) = merge_types (((p1)->list.value), ((p2)->list.value));
 }
      else
 ((n)->list.value) = ((p1)->list.value);
    }
  if (! any_change)
    return oldargs;

  return newargs;
}



tree
original_type (t)
     tree t;
{
  while (((t)->type.name) != (tree) ((void *)0))
    {
      tree x = ((t)->type.name);
      if (((enum tree_code) (x)->common.code) != TYPE_DECL)
 break;
      x = ((x)->decl.result);
      if (x == (tree) ((void *)0))
 break;
      t = x;
    }
  return t;
}





tree
type_after_usual_arithmetic_conversions (t1, t2)
     tree t1;
     tree t2;
{
  enum tree_code code1 = ((enum tree_code) (t1)->common.code);
  enum tree_code code2 = ((enum tree_code) (t2)->common.code);
  tree attributes;


  (void) (((((((enum tree_code) (t1)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (t1)->common.code) == INTEGER_TYPE) || ((enum tree_code) (t1)->common.code) == REAL_TYPE) || ((enum tree_code) (t1)->common.code) == COMPLEX_TYPE || ((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 348, __FUNCTION__), 0) : 0);



  (void) (((((((enum tree_code) (t2)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (t2)->common.code) == INTEGER_TYPE) || ((enum tree_code) (t2)->common.code) == REAL_TYPE) || ((enum tree_code) (t2)->common.code) == COMPLEX_TYPE || ((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 352, __FUNCTION__), 0) : 0);







  attributes = (*targetm.merge_type_attributes) (t1, t2);




  if (code1 == COMPLEX_TYPE || code2 == COMPLEX_TYPE)
    {
      tree subtype1 = code1 == COMPLEX_TYPE ? ((t1)->common.type) : t1;
      tree subtype2 = code2 == COMPLEX_TYPE ? ((t2)->common.type) : t2;
      tree subtype
 = type_after_usual_arithmetic_conversions (subtype1, subtype2);

      if (code1 == COMPLEX_TYPE && ((t1)->common.type) == subtype)
 return build_type_attribute_variant (t1, attributes);
      else if (code2 == COMPLEX_TYPE && ((t2)->common.type) == subtype)
 return build_type_attribute_variant (t2, attributes);
      else
 return build_type_attribute_variant (build_complex_type (subtype),
          attributes);
    }


  if (code1 == REAL_TYPE && code2 != REAL_TYPE)
    return build_type_attribute_variant (t1, attributes);
  if (code2 == REAL_TYPE && code1 != REAL_TYPE)
    return build_type_attribute_variant (t2, attributes);


  if (code1 != REAL_TYPE)
    {
      t1 = type_promotes_to (t1);
      t2 = type_promotes_to (t2);
    }


  if (((t1)->type.precision) > ((t2)->type.precision))
    return build_type_attribute_variant (t1, attributes);
  else if (((t2)->type.precision) > ((t1)->type.precision))
    return build_type_attribute_variant (t2, attributes);


  if (((t1)->type.main_variant) == ((t2)->type.main_variant))
    return build_type_attribute_variant (t1, attributes);

  if (code1 != REAL_TYPE)
    {

      if (((t1)->type.no_force_blk_flag) > ((t2)->type.no_force_blk_flag))
 return build_type_attribute_variant (t1, attributes);
      if (((t2)->type.no_force_blk_flag) > ((t1)->type.no_force_blk_flag))
 return build_type_attribute_variant (t2, attributes);



      if (comptypes ((((t1)->type.main_variant)), (integer_types[itk_unsigned_long_long]), 0)
   || comptypes ((((t2)->type.main_variant)), (integer_types[itk_unsigned_long_long]), 0))
 return build_type_attribute_variant (integer_types[itk_unsigned_long_long],
          attributes);
# 425 "../../../kg++fe/gnu/cp/typeck.c"
      if (comptypes ((((t1)->type.main_variant)), (integer_types[itk_long_long]), 0)
   || comptypes ((((t2)->type.main_variant)), (integer_types[itk_long_long]), 0))
 {
   tree t = ((((t1)->common.unsigned_flag) || ((t2)->common.unsigned_flag))
      ? integer_types[itk_unsigned_long_long]
      : integer_types[itk_long_long]);
   return build_type_attribute_variant (t, attributes);
 }


      if (comptypes ((((t1)->type.main_variant)), (integer_types[itk_unsigned_long]), 0)
   || comptypes ((((t2)->type.main_variant)), (integer_types[itk_unsigned_long]), 0))
 return build_type_attribute_variant (integer_types[itk_unsigned_long],
          attributes);
      if (comptypes ((((t1)->type.main_variant)), (integer_types[itk_long]), 0)
   || comptypes ((((t2)->type.main_variant)), (integer_types[itk_long]), 0))
 {
   tree t = ((((t1)->common.unsigned_flag) || ((t2)->common.unsigned_flag))
      ? integer_types[itk_unsigned_long] : integer_types[itk_long]);
   return build_type_attribute_variant (t, attributes);
 }

      if (((t1)->common.unsigned_flag))
 return build_type_attribute_variant (t1, attributes);
      else
 return build_type_attribute_variant (t2, attributes);
    }
  else
    {
      if (comptypes ((((t1)->type.main_variant)), (global_trees[TI_LONG_DOUBLE_TYPE]), 0)
   || comptypes ((((t2)->type.main_variant)), (global_trees[TI_LONG_DOUBLE_TYPE]), 0))
 return build_type_attribute_variant (global_trees[TI_LONG_DOUBLE_TYPE],
          attributes);
      if (comptypes ((((t1)->type.main_variant)), (global_trees[TI_DOUBLE_TYPE]), 0)
   || comptypes ((((t2)->type.main_variant)), (global_trees[TI_DOUBLE_TYPE]), 0))
 return build_type_attribute_variant (global_trees[TI_DOUBLE_TYPE],
          attributes);
      if (comptypes ((((t1)->type.main_variant)), (global_trees[TI_FLOAT_TYPE]), 0)
   || comptypes ((((t2)->type.main_variant)), (global_trees[TI_FLOAT_TYPE]), 0))
 return build_type_attribute_variant (global_trees[TI_FLOAT_TYPE],
          attributes);






      return build_type_attribute_variant (t1, attributes);
    }
}





tree
composite_pointer_type (t1, t2, arg1, arg2, location)
     tree t1;
     tree t2;
     tree arg1;
     tree arg2;
     const char* location;
{
  tree result_type;
  tree attributes;





  if (null_ptr_cst_p (arg1))
    return t2;
  if (null_ptr_cst_p (arg2))
    return t1;



  if ((((enum tree_code) (t1)->common.code) == RECORD_TYPE && ((t1)->type.lang_specific) && ((&((t1)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t1 = (((((t1)->type.values))->common.type));
  if ((((enum tree_code) (t2)->common.code) == RECORD_TYPE && ((t2)->type.lang_specific) && ((&((t2)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t2 = (((((t2)->type.values))->common.type));


  attributes = (*targetm.merge_type_attributes) (t1, t2);
# 520 "../../../kg++fe/gnu/cp/typeck.c"
  if ((((enum tree_code) (((t2)->common.type))->common.code) == VOID_TYPE))
    {
      tree t;
      t = t1;
      t1 = t2;
      t2 = t;
    }

  if ((((enum tree_code) (((t1)->common.type))->common.code) == VOID_TYPE))
    {
      if (pedantic && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) == FUNCTION_TYPE))
 pedwarn ("ISO C++ forbids %s between pointer of type `void *' and pointer-to-function", location);
      t1 = ((t1)->common.type);
      t2 = ((t2)->common.type);
      result_type = cp_build_qualified_type_real ((global_trees[TI_VOID_TYPE]), ((cp_type_quals (t1) | cp_type_quals (t2))), tf_error | tf_warning);


      result_type = build_pointer_type (result_type);
    }
  else
    {
      tree full1 = qualify_type_recursive (t1, t2);
      tree full2 = qualify_type_recursive (t2, t1);

      int val = comp_target_types (full1, full2, 1);

      if (val > 0)
 result_type = full1;
      else if (val < 0)
 result_type = full2;
      else
 {
   pedwarn ("%s between distinct pointer types `%T' and `%T' lacks a cast",
        location, t1, t2);
   result_type = global_trees[TI_PTR_TYPE];
 }
    }

  return build_type_attribute_variant (result_type, attributes);
}
# 568 "../../../kg++fe/gnu/cp/typeck.c"
tree
merge_types (t1, t2)
     tree t1, t2;
{
  register enum tree_code code1;
  register enum tree_code code2;
  tree attributes;


  if (t1 == t2)
    return t1;
  if (original_type (t1) == original_type (t2))
    return t1;


  if (t1 == global_trees[TI_ERROR_MARK])
    return t2;
  if (t2 == global_trees[TI_ERROR_MARK])
    return t1;


  attributes = (*targetm.merge_type_attributes) (t1, t2);



  if ((((enum tree_code) (t1)->common.code) == RECORD_TYPE && ((t1)->type.lang_specific) && ((&((t1)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t1 = (((((t1)->type.values))->common.type));
  if ((((enum tree_code) (t2)->common.code) == RECORD_TYPE && ((t2)->type.lang_specific) && ((&((t2)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t2 = (((((t2)->type.values))->common.type));

  code1 = ((enum tree_code) (t1)->common.code);
  code2 = ((enum tree_code) (t2)->common.code);

  switch (code1)
    {
    case POINTER_TYPE:
    case REFERENCE_TYPE:

      {
 tree target = merge_types (((t1)->common.type), ((t2)->common.type));
 int quals = cp_type_quals (t1);

 if (code1 == POINTER_TYPE)
   t1 = build_pointer_type (target);
 else
   t1 = build_reference_type (target);
 t1 = build_type_attribute_variant (t1, attributes);
 t1 = cp_build_qualified_type_real ((t1), (quals), tf_error | tf_warning);

 if (((enum tree_code) (target)->common.code) == METHOD_TYPE)
   t1 = build_ptrmemfunc_type (t1);

 return t1;
      }

    case OFFSET_TYPE:
      {
 tree base = ((t1)->type.maxval);
 tree target = merge_types (((t1)->common.type), ((t2)->common.type));
 t1 = build_offset_type (base, target);
 break;
      }

    case ARRAY_TYPE:
      {
 tree elt = merge_types (((t1)->common.type), ((t2)->common.type));

 if (elt == ((t1)->common.type) && ((t1)->type.values))
   return build_type_attribute_variant (t1, attributes);
 if (elt == ((t2)->common.type) && ((t2)->type.values))
   return build_type_attribute_variant (t2, attributes);

 t1 = build_cplus_array_type
   (elt, ((((t1)->type.values) ? t1 : t2)->type.values));
 break;
      }

    case FUNCTION_TYPE:


      {
 tree valtype = merge_types (((t1)->common.type), ((t2)->common.type));
 tree p1 = ((t1)->type.values);
 tree p2 = ((t2)->type.values);
 tree rval, raises;


 if (valtype == ((t1)->common.type) && ! p2)
   return build_type_attribute_variant (t1, attributes);
 if (valtype == ((t2)->common.type) && ! p1)
   return build_type_attribute_variant (t2, attributes);


 if (p1 == (tree) ((void *)0) || ((p1)->list.value) == global_trees[TI_VOID_TYPE])
   {
     rval = build_function_type (valtype, p2);
     if ((raises = ((t2)->type.binfo)))
       rval = build_exception_variant (rval, raises);
     return build_type_attribute_variant (rval, attributes);
   }
 raises = ((t1)->type.binfo);
 if (p2 == (tree) ((void *)0) || ((p2)->list.value) == global_trees[TI_VOID_TYPE])
   {
     rval = build_function_type (valtype, p1);
     if (raises)
       rval = build_exception_variant (rval, raises);
     return build_type_attribute_variant (rval, attributes);
   }

 rval = build_function_type (valtype, commonparms (p1, p2));
 t1 = build_exception_variant (rval, raises);
 break;
      }

    case METHOD_TYPE:
      {


 tree basetype = ((((((t2)->type.values))->list.value))->common.type);
 tree raises = ((t1)->type.binfo);
 tree t3;




 t1 = build_function_type (((t1)->common.type),
      ((((t1)->type.values))->common.chain));
 t2 = build_function_type (((t2)->common.type),
      ((((t2)->type.values))->common.chain));
 t3 = merge_types (t1, t2);
 t3 = build_cplus_method_type (basetype, ((t3)->common.type),
          ((t3)->type.values));
 t1 = build_exception_variant (t3, raises);
 break;
      }

    default:;
    }
  return build_type_attribute_variant (t1, attributes);
}
# 716 "../../../kg++fe/gnu/cp/typeck.c"
tree
common_type (t1, t2)
     tree t1, t2;
{
  enum tree_code code1;
  enum tree_code code2;


  if (t1 == global_trees[TI_ERROR_MARK] || t2 == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  code1 = ((enum tree_code) (t1)->common.code);
  code2 = ((enum tree_code) (t2)->common.code);

  if ((((((enum tree_code) (t1)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (t1)->common.code) == INTEGER_TYPE) || ((enum tree_code) (t1)->common.code) == REAL_TYPE) || code1 == ENUMERAL_TYPE
       || code1 == COMPLEX_TYPE)
      && (((((enum tree_code) (t2)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (t2)->common.code) == INTEGER_TYPE) || ((enum tree_code) (t2)->common.code) == REAL_TYPE) || code2 == ENUMERAL_TYPE
   || code2 == COMPLEX_TYPE))
    return type_after_usual_arithmetic_conversions (t1, t2);

  else if (((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) != OFFSET_TYPE) && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) != OFFSET_TYPE))
    || ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE) && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) == OFFSET_TYPE))
    || ((((enum tree_code) (t1)->common.code) == RECORD_TYPE && ((t1)->type.lang_specific) && ((&((t1)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && (((enum tree_code) (t2)->common.code) == RECORD_TYPE && ((t2)->type.lang_specific) && ((&((t2)->type.lang_specific)->u.c)->ptrmemfunc_flag))))
    return composite_pointer_type (t1, t2, global_trees[TI_ERROR_MARK], global_trees[TI_ERROR_MARK],
       "conversion");

  else
    fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 743, __FUNCTION__);
}
# 761 "../../../kg++fe/gnu/cp/typeck.c"
static int
comp_except_types (a, b, exact)
     tree a, b;
     int exact;
{
  if (comptypes ((a), (b), 0))
    return 1;
  else if (!exact)
    {
      if (cp_type_quals (a) || cp_type_quals (b))
        return 0;

      if (((enum tree_code) (a)->common.code) == POINTER_TYPE
          && ((enum tree_code) (b)->common.code) == POINTER_TYPE)
        {
          a = ((a)->common.type);
          b = ((b)->common.type);
          if (cp_type_quals (a) || cp_type_quals (b))
            return 0;
        }

      if (((enum tree_code) (a)->common.code) != RECORD_TYPE
          || ((enum tree_code) (b)->common.code) != RECORD_TYPE)
        return 0;

      if ((lookup_base ((b), (a), ba_check | ba_quiet, ((void *)0)) != (tree) ((void *)0)))
        return 2;
    }
  return 0;
}







int
comp_except_specs (t1, t2, exact)
     tree t1, t2;
     int exact;
{
  tree probe;
  tree base;
  int length = 0;

  if (t1 == t2)
    return 1;

  if (t1 == (tree) ((void *)0))
    return t2 == (tree) ((void *)0) || !exact;
  if (!((t1)->list.value))
    return t2 != (tree) ((void *)0) && !((t2)->list.value);
  if (t2 == (tree) ((void *)0))
    return 0;
  if (((t1)->list.value) && !((t2)->list.value))
    return !exact;





  for (base = t1; t2 != (tree) ((void *)0); t2 = ((t2)->common.chain))
    {
      for (probe = base; probe != (tree) ((void *)0); probe = ((probe)->common.chain))
        {
          tree a = ((probe)->list.value);
          tree b = ((t2)->list.value);

          if (comp_except_types (a, b, exact))
            {
              if (probe == base && exact)
                base = ((probe)->common.chain);
              length++;
              break;
            }
        }
      if (probe == (tree) ((void *)0))
        return 0;
    }
  return !exact || base == (tree) ((void *)0) || length == list_length (t1);
}




static int
comp_array_types (cmp, t1, t2, strict)
     register int (*cmp) (tree, tree, int);
     tree t1, t2;
     int strict;
{
  tree d1;
  tree d2;

  if (t1 == t2)
    return 1;


  if (!(((t1)->common.type) == ((t2)->common.type)
 || (*cmp) (((t1)->common.type), ((t2)->common.type),
     strict & ~4)))
    return 0;

  d1 = ((t1)->type.values);
  d2 = ((t2)->type.values);

  if (d1 == d2)
    return 1;
# 883 "../../../kg++fe/gnu/cp/typeck.c"
  if (!d1 || !d2)
    return strict & 4;


  return (cp_tree_equal (((d1)->type.minval),
    ((d2)->type.minval))
   && cp_tree_equal (((d1)->type.maxval),
       ((d2)->type.maxval)));
}





int
comptypes (t1, t2, strict)
     tree t1;
     tree t2;
     int strict;
{
  int attrval, val;
  int orig_strict = strict;
# 913 "../../../kg++fe/gnu/cp/typeck.c"
  strict &= ~4;


  if (t1 == t2)
    return 1;


  (void) (((t1 != global_trees[TI_ERROR_MARK]) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 920, __FUNCTION__), 0) : 0);

  if (t2 == global_trees[TI_ERROR_MARK])
    return 0;



  if (((enum tree_code) (t1)->common.code) == INTEGER_TYPE && ((t1)->type.no_force_blk_flag)
      && ((t1)->type.values) != 0)
    t1 = ((t1)->type.values);

  if (((enum tree_code) (t2)->common.code) == INTEGER_TYPE && ((t2)->type.no_force_blk_flag)
      && ((t2)->type.values) != 0)
    t2 = ((t2)->type.values);

  if (strict & 2)
    {


      if (((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE)
 t1 = c_common_type_for_size (((t1)->type.precision), 1);
      if (((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE)
 t2 = c_common_type_for_size (((t2)->type.precision), 1);

      if (t1 == t2)
 return 1;
    }

  if ((((enum tree_code) (t1)->common.code) == RECORD_TYPE && ((t1)->type.lang_specific) && ((&((t1)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t1 = (((((t1)->type.values))->common.type));
  if ((((enum tree_code) (t2)->common.code) == RECORD_TYPE && ((t2)->type.lang_specific) && ((&((t2)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    t2 = (((((t2)->type.values))->common.type));


  if (((enum tree_code) (t1)->common.code) != ((enum tree_code) (t2)->common.code))
    return 0;


  if (cp_type_quals (t1) != cp_type_quals (t2))
    return 0;
  if (strict == 0
      && ((t1)->type.lang_flag_3) != ((t2)->type.lang_flag_3))
    return 0;





  if (((t1)->type.main_variant) == ((t2)->type.main_variant))
    return 1;

  if (strict & 8)
    attrval = 1;

  else if (! (attrval = (*targetm.comp_type_attributes) (t1, t2)))
     return 0;


  val = 0;

  switch (((enum tree_code) (t1)->common.code))
    {
    case TEMPLATE_TEMPLATE_PARM:
    case BOUND_TEMPLATE_TEMPLATE_PARM:
      if (((((template_parm_index*)((((t1)->type.values))))->index)) != ((((template_parm_index*)((((t2)->type.values))))->index))
   || ((((template_parm_index*)((((t1)->type.values))))->level)) != ((((template_parm_index*)((((t2)->type.values))))->level)))
 return 0;
      if (! comp_template_parms
       (((((((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM) ? (((((((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE ? ((((t1))->type.binfo)) : (((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t1))->type.lang_specific)->u.c) ->template_info) : (((t1)->type.lang_specific) ? ((&(((t1))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.purpose))) : ((t1)->type.name)))->decl.arguments),
        ((((((enum tree_code) (t2)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM) ? (((((((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE ? ((((t2))->type.binfo)) : (((enum tree_code) (t2)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t2))->type.lang_specific)->u.c) ->template_info) : (((t2)->type.lang_specific) ? ((&(((t2))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.purpose))) : ((t2)->type.name)))->decl.arguments)))
 return 0;
      if (((enum tree_code) (t1)->common.code) == TEMPLATE_TEMPLATE_PARM)
 return 1;

      strict = 0;


    case RECORD_TYPE:
    case UNION_TYPE:
      if ((((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE ? ((((t1))->type.binfo)) : (((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t1))->type.lang_specific)->u.c) ->template_info) : (((t1)->type.lang_specific) ? ((&(((t1))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))) && (((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE ? ((((t2))->type.binfo)) : (((enum tree_code) (t2)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t2))->type.lang_specific)->u.c) ->template_info) : (((t2)->type.lang_specific) ? ((&(((t2))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0))))
   && ((((((((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE ? ((((t1))->type.binfo)) : (((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t1))->type.lang_specific)->u.c) ->template_info) : (((t1)->type.lang_specific) ? ((&(((t1))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.purpose))) == (((((((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE ? ((((t2))->type.binfo)) : (((enum tree_code) (t2)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t2))->type.lang_specific)->u.c) ->template_info) : (((t2)->type.lang_specific) ? ((&(((t2))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.purpose)))
       || ((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM))
 val = comp_template_args ((((((((enum tree_code) (t1)->common.code) == ENUMERAL_TYPE ? ((((t1))->type.binfo)) : (((enum tree_code) (t1)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t1))->type.lang_specific)->u.c) ->template_info) : (((t1)->type.lang_specific) ? ((&(((t1))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.value))),
      (((((((enum tree_code) (t2)->common.code) == ENUMERAL_TYPE ? ((((t2))->type.binfo)) : (((enum tree_code) (t2)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM ? ((&(((t2))->type.lang_specific)->u.c) ->template_info) : (((t2)->type.lang_specific) ? ((&(((t2))->type.lang_specific)->u.c)->template_info) : (tree) ((void *)0)))))->list.value))));
    look_hard:
      if ((strict & 1) && (lookup_base ((t2), t1, ba_any, ((void *)0)) != (tree) ((void *)0)))
 val = 1;
      else if ((strict & 2) && (lookup_base ((t1), t2, ba_any, ((void *)0)) != (tree) ((void *)0)))
 val = 1;
      break;

    case OFFSET_TYPE:
      val = (comptypes (build_pointer_type (((t1)->type.maxval)),
   build_pointer_type (((t2)->type.maxval)), strict)
      && comptypes (((t1)->common.type), ((t2)->common.type), strict));
      break;

    case POINTER_TYPE:
    case REFERENCE_TYPE:
      t1 = ((t1)->common.type);
      t2 = ((t2)->common.type);


      val = comptypes (t1, t2, strict);
      if (val)
 break;
      if (((enum tree_code) (t1)->common.code) == RECORD_TYPE
   && ((enum tree_code) (t2)->common.code) == RECORD_TYPE)
 goto look_hard;
      break;

    case METHOD_TYPE:
    case FUNCTION_TYPE:
      val = ((((t1)->common.type) == ((t2)->common.type)
       || comptypes (((t1)->common.type), ((t2)->common.type), strict))
      && compparms (((t1)->type.values), ((t2)->type.values)));
      break;

    case ARRAY_TYPE:



      val = comp_array_types (comptypes, t1, t2, orig_strict);
      break;

    case TEMPLATE_TYPE_PARM:
      return ((((template_parm_index*)((((t1)->type.values))))->index)) == ((((template_parm_index*)((((t2)->type.values))))->index))
 && ((((template_parm_index*)((((t1)->type.values))))->level)) == ((((template_parm_index*)((((t2)->type.values))))->level));

    case TYPENAME_TYPE:
      if (cp_tree_equal ((((t1)->type.values)),
                         (((t2)->type.values))) < 1)
        return 0;
      return comptypes ((((t1)->type.context)), (((t2)->type.context)), 0);

    case UNBOUND_CLASS_TEMPLATE:
      if (cp_tree_equal ((((((t1)->type.name))->decl.name)),
                         (((((t2)->type.name))->decl.name))) < 1)
        return 0;
      return comptypes ((((t1)->type.context)), (((t2)->type.context)), 0);

    case COMPLEX_TYPE:
      return comptypes ((((t1)->common.type)), (((t2)->common.type)), 0);

    default:
      break;
    }
  return attrval == 2 && val == 1 ? 2 : val;
}




static int
comp_cv_target_types (ttl, ttr, nptrs)
     tree ttl, ttr;
     int nptrs;
{
  int t;

  if (!at_least_as_qualified_p (ttl, ttr)
      && !at_least_as_qualified_p (ttr, ttl))

    return 0;

  if (((ttl)->type.main_variant) == ((ttr)->type.main_variant))
    return more_qualified_p (ttr, ttl) ? -1 : 1;

  t = comp_target_types (ttl, ttr, nptrs);
  if ((t == 1 && at_least_as_qualified_p (ttl, ttr))
      || (t == -1 && at_least_as_qualified_p (ttr, ttl)))
    return t;

  return 0;
}
# 1108 "../../../kg++fe/gnu/cp/typeck.c"
int
comp_target_types (ttl, ttr, nptrs)
     tree ttl, ttr;
     int nptrs;
{
  ttl = ((ttl)->type.main_variant);
  ttr = ((ttr)->type.main_variant);
  if (comptypes ((ttl), (ttr), 0))
    return 1;

  if (((enum tree_code) (ttr)->common.code) != ((enum tree_code) (ttl)->common.code))
    return 0;

  if ((((enum tree_code) (ttr)->common.code) == POINTER_TYPE
       || ((enum tree_code) (ttr)->common.code) == REFERENCE_TYPE)




      && nptrs > 0)
    {
      int is_ptr = ((enum tree_code) (ttr)->common.code) == POINTER_TYPE;

      ttl = ((ttl)->common.type);
      ttr = ((ttr)->common.type);

      if (is_ptr)
 {
   if (((enum tree_code) (ttl)->common.code) == LANG_TYPE
       || ((enum tree_code) (ttr)->common.code) == LANG_TYPE)
     return 1;
   else if (((enum tree_code) (ttl)->common.code) == VOID_TYPE
     && ((enum tree_code) (ttr)->common.code) != FUNCTION_TYPE
     && ((enum tree_code) (ttr)->common.code) != METHOD_TYPE
     && ((enum tree_code) (ttr)->common.code) != OFFSET_TYPE)
     return 1;
   else if (((enum tree_code) (ttr)->common.code) == VOID_TYPE
     && ((enum tree_code) (ttl)->common.code) != FUNCTION_TYPE
     && ((enum tree_code) (ttl)->common.code) != METHOD_TYPE
     && ((enum tree_code) (ttl)->common.code) != OFFSET_TYPE)
     return -1;
   else if (((enum tree_code) (ttl)->common.code) == POINTER_TYPE
     || ((enum tree_code) (ttl)->common.code) == ARRAY_TYPE)
     {
       if (comp_ptr_ttypes (ttl, ttr))
  return 1;
       else if (comp_ptr_ttypes (ttr, ttl))
  return -1;
       return 0;
     }
 }



      if (((enum tree_code) (ttl)->common.code) == FUNCTION_TYPE || ((enum tree_code) (ttl)->common.code) == METHOD_TYPE)
 return comp_target_types (ttl, ttr, nptrs - 1);

      return comp_cv_target_types (ttl, ttr, nptrs - 1);
    }

  if (((enum tree_code) (ttr)->common.code) == ARRAY_TYPE)
    return comp_array_types (comp_target_types, ttl, ttr, 0);
  else if (((enum tree_code) (ttr)->common.code) == FUNCTION_TYPE || ((enum tree_code) (ttr)->common.code) == METHOD_TYPE)
    {
      tree argsl, argsr;
      int saw_contra = 0;

      if (pedantic)
 {
   if (!comptypes ((((ttl)->common.type)), (((ttr)->common.type)), 0))
     return 0;
 }
      else
 {
   switch (comp_target_types (((ttl)->common.type), ((ttr)->common.type), -1))
     {
     case 0:
       return 0;
     case -1:
       saw_contra = 1;
     }
 }

      argsl = ((ttl)->type.values);
      argsr = ((ttr)->type.values);


      if (((enum tree_code) (ttr)->common.code) == METHOD_TYPE)
 {
   tree tl = ((ttl)->type.maxval);
   tree tr = ((ttr)->type.maxval);

   if (!comptypes ((tr), (tl), 1))
     {
       if (comptypes ((tl), (tr), 1))
  saw_contra = 1;
       else
  return 0;
     }

   argsl = ((argsl)->common.chain);
   argsr = ((argsr)->common.chain);
 }

 switch (comp_target_parms (argsl, argsr))
   {
   case 0:
     return 0;
   case -1:
     saw_contra = 1;
   }

 return saw_contra ? -1 : 1;
    }

  else if (((enum tree_code) (ttr)->common.code) == OFFSET_TYPE)
    {
      int base;




      if (comptypes ((((ttr)->type.maxval)), (((ttl)->type.maxval)), 1))

 base = 1;
      else if (comptypes ((((ttl)->type.maxval)), (((ttr)->type.maxval)), 1))

 {
   tree tmp = ttl;
   ttl = ttr;
   ttr = tmp;
   base = -1;
 }
      else
 return 0;

      ttl = ((ttl)->common.type);
      ttr = ((ttr)->common.type);

      if (((enum tree_code) (ttl)->common.code) == POINTER_TYPE
   || ((enum tree_code) (ttl)->common.code) == ARRAY_TYPE)
 {
   if (comp_ptr_ttypes (ttl, ttr))
     return base;
   return 0;
 }
      else
 {
   if (comp_cv_target_types (ttl, ttr, nptrs) == 1)
     return base;
   return 0;
 }
    }
  else if ((((enum tree_code) (ttl)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (ttl)->common.code) == TYPENAME_TYPE || ((enum tree_code) (ttl)->common.code) == TYPEOF_TYPE || ((enum tree_code) (ttl)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((ttl)->type.lang_flag_5)))
    {
      if (nptrs < 0)
 return 0;
      if (comptypes ((build_pointer_type (ttl)), (build_pointer_type (ttr)), 1))

 return 1;
      if (comptypes ((build_pointer_type (ttr)), (build_pointer_type (ttl)), 1))

 return -1;
      return 0;
    }

  return 0;
}



int
at_least_as_qualified_p (type1, type2)
     tree type1;
     tree type2;
{

  return ((cp_type_quals (type1) & cp_type_quals (type2))
   == cp_type_quals (type2));
}



int
more_qualified_p (type1, type2)
     tree type1;
     tree type2;
{
  return (cp_type_quals (type1) != cp_type_quals (type2)
   && at_least_as_qualified_p (type1, type2));
}




int
comp_cv_qualification (type1, type2)
     tree type1;
     tree type2;
{
  if (cp_type_quals (type1) == cp_type_quals (type2))
    return 0;

  if (at_least_as_qualified_p (type1, type2))
    return 1;

  else if (at_least_as_qualified_p (type2, type1))
    return -1;

  return 0;
}





int
comp_cv_qual_signature (type1, type2)
     tree type1;
     tree type2;
{
  if (comp_ptr_ttypes_real (type2, type1, -1))
    return 1;
  else if (comp_ptr_ttypes_real (type1, type2, -1))
    return -1;
  else
    return 0;
}





static tree
common_base_type (tt1, tt2)
     tree tt1, tt2;
{
  tree best = (tree) ((void *)0);
  int i;


  if ((lookup_base ((tt2), (tt1), ba_ignore | ba_quiet, ((void *)0)) != (tree) ((void *)0)))
    return tt1;
  if ((lookup_base ((tt1), (tt2), ba_ignore | ba_quiet, ((void *)0)) != (tree) ((void *)0)))
    return tt2;



  for (i = (((((((tt1)->type.binfo)))->vec.a[4]) ? (((((((tt1)->type.binfo)))->vec.a[4]))->vec.length) : 0))-1; i >= 0; i--)
    {
      tree basetype = (((((((((tt1)->type.binfo)))->vec.a[4]))->vec.a[(i)]))->common.type);
      tree trial = common_base_type (basetype, tt2);
      if (trial)
 {
   if (trial == global_trees[TI_ERROR_MARK])
     return trial;
   if (best == (tree) ((void *)0))
     best = trial;
   else if (best != trial)
     return global_trees[TI_ERROR_MARK];
 }
    }


  for (i = (((((((tt2)->type.binfo)))->vec.a[4]) ? (((((((tt2)->type.binfo)))->vec.a[4]))->vec.length) : 0))-1; i >= 0; i--)
    {
      tree basetype = (((((((((tt2)->type.binfo)))->vec.a[4]))->vec.a[(i)]))->common.type);
      tree trial = common_base_type (tt1, basetype);
      if (trial)
 {
   if (trial == global_trees[TI_ERROR_MARK])
     return trial;
   if (best == (tree) ((void *)0))
     best = trial;
   else if (best != trial)
     return global_trees[TI_ERROR_MARK];
 }
    }
  return best;
}
# 1398 "../../../kg++fe/gnu/cp/typeck.c"
int
compparms (parms1, parms2)
     tree parms1, parms2;
{
  register tree t1 = parms1, t2 = parms2;




  while (1)
    {
      if (t1 == 0 && t2 == 0)
 return 1;


      if (t1 == 0 || t2 == 0)
 return 0;
      if (!comptypes ((((t2)->list.value)), (((t1)->list.value)), 0))
 return 0;

      t1 = ((t1)->common.chain);
      t2 = ((t2)->common.chain);
    }
}
# 1432 "../../../kg++fe/gnu/cp/typeck.c"
static int
comp_target_parms (parms1, parms2)
     tree parms1, parms2;
{
  register tree t1 = parms1, t2 = parms2;
  int warn_contravariance = 0;





  if (t1 == 0 && t2 != 0)
    {
      pedwarn ("ISO C++ prohibits conversion from `%#T' to `(...)'",
    parms2);
      return self_promoting_args_p (t2);
    }
  if (t2 == 0)
    return self_promoting_args_p (t1);

  for (; t1 || t2; t1 = ((t1)->common.chain), t2 = ((t2)->common.chain))
    {
      tree p1, p2;



      if (t1 == 0 || t2 == 0)
 return 0;
      p1 = ((t1)->list.value);
      p2 = ((t2)->list.value);
      if (comptypes ((p1), (p2), 0))
 continue;

      if (pedantic)
 return 0;

      if ((((enum tree_code) (p1)->common.code) == POINTER_TYPE && ((enum tree_code) (p2)->common.code) == POINTER_TYPE)
   || (((enum tree_code) (p1)->common.code) == REFERENCE_TYPE
       && ((enum tree_code) (p2)->common.code) == REFERENCE_TYPE))
 {


   if (((p1)->common.type) == global_trees[TI_VOID_TYPE])
     continue;
   if (((p2)->common.type) == global_trees[TI_VOID_TYPE])
     {
       warn_contravariance = 1;
       continue;
     }
   if ((((enum tree_code) (((p1)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((p1)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((p1)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((p1)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((p1)->common.type))->type.lang_flag_5))
       && !comptypes ((((((p1)->common.type))->type.main_variant)), (((((p2)->common.type))->type.main_variant)), 0))

     return 0;
 }

      if (comp_target_types (p2, p1, 1) <= 0)
 {
   if (comp_target_types (p1, p2, 1) > 0)
     {
       warn_contravariance = 1;
       continue;
     }
   return 0;
 }
    }
  return warn_contravariance ? -1 : 1;
}

tree
cxx_sizeof_or_alignof_type (type, op, complain)
     tree type;
     enum tree_code op;
     int complain;
{
  enum tree_code type_code;
  tree value;
  const char *op_name;

  (void) (((op == SIZEOF_EXPR || op == ALIGNOF_EXPR) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 1510, __FUNCTION__), 0) : 0);
  if (scope_chain->x_processing_template_decl)
    return build_min_nt (op, type);

  op_name = operator_name_info[(int) op].name;

  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    type = ((type)->common.type);
  type_code = ((enum tree_code) (type)->common.code);

  if (type_code == METHOD_TYPE)
    {
      if (complain && (pedantic || warn_pointer_arith))
 pedwarn ("invalid application of `%s' to a member function", op_name);
      value = global_trees[TI_SIZE_ONE];
    }
  else if (type_code == OFFSET_TYPE)
    {
      if (complain)
 error ("invalid application of `%s' to non-static member", op_name);
      value = global_trees[TI_SIZE_ZERO];
    }
  else
    value = c_sizeof_or_alignof_type (complete_type (type), op, complain);

  return value;
}

tree
expr_sizeof (e)
     tree e;
{
  if (scope_chain->x_processing_template_decl)
    return build_min_nt (SIZEOF_EXPR, e);

  if (((enum tree_code) (e)->common.code) == COMPONENT_REF
      && ((((((e)->exp.operands[1])))->decl.lang_flag_4) == 1))
    error ("sizeof applied to a bit-field");
  if (is_overloaded_fn (e))
    {
      pedwarn ("ISO C++ forbids applying `sizeof' to an expression of function type");
      return c_sizeof_or_alignof_type (integer_types[itk_char], SIZEOF_EXPR, 1);
    }
  else if (type_unknown_p (e))
    {
      (cxx_incomplete_type_diagnostic ((e), (((e)->common.type)), 0));
      return c_sizeof_or_alignof_type (integer_types[itk_char], SIZEOF_EXPR, 1);
    }



  else if (((enum tree_code) (e)->common.code) == OFFSET_REF)
    e = resolve_offset_ref (e);

  if (e == global_trees[TI_ERROR_MARK])
    return e;

  return cxx_sizeof_or_alignof_type (((e)->common.type), SIZEOF_EXPR, 1);
}
# 1577 "../../../kg++fe/gnu/cp/typeck.c"
tree
decay_conversion (exp)
     tree exp;
{
  register tree type;
  register enum tree_code code;

  if (((enum tree_code) (exp)->common.code) == OFFSET_REF)
    exp = resolve_offset_ref (exp);

  type = ((exp)->common.type);
  code = ((enum tree_code) (type)->common.code);

  if (code == REFERENCE_TYPE)
    {
      exp = convert_from_reference (exp);
      type = ((exp)->common.type);
      code = ((enum tree_code) (type)->common.code);
    }

  if (type == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (type_unknown_p (exp))
    {
      (cxx_incomplete_type_diagnostic ((exp), (((exp)->common.type)), 0));
      return global_trees[TI_ERROR_MARK];
    }


  if (((enum tree_code) (exp)->common.code) == CONST_DECL)
    exp = ((exp)->decl.initial);




  else if (code != ARRAY_TYPE)
    {
      exp = decl_constant_value (exp);
      type = ((exp)->common.type);
    }




  if (code == VOID_TYPE)
    {
      error ("void value not ignored as it ought to be");
      return global_trees[TI_ERROR_MARK];
    }
  if (code == METHOD_TYPE)
    fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 1628, __FUNCTION__);
  if (code == FUNCTION_TYPE || is_overloaded_fn (exp))
    return build_unary_op (ADDR_EXPR, exp, 0);
  if (code == ARRAY_TYPE)
    {
      register tree adr;
      tree ptrtype;

      if (((enum tree_code) (exp)->common.code) == INDIRECT_REF)
 {


   tree inner = ((exp)->exp.operands[0]);
   if (((enum tree_code) (((inner)->common.type))->common.code) == REFERENCE_TYPE)
     {
       inner = build1 (CONVERT_EXPR,
         build_pointer_type (((((inner)->common.type))->common.type)),

         inner);
       ((inner)->common.constant_flag) = ((((inner)->exp.operands[0]))->common.constant_flag);
     }
   return cp_convert (build_pointer_type (((type)->common.type)), inner);
 }

      if (((enum tree_code) (exp)->common.code) == COMPOUND_EXPR)
 {
   tree op1 = decay_conversion (((exp)->exp.operands[1]));
   return build (COMPOUND_EXPR, ((op1)->common.type),
   ((exp)->exp.operands[0]), op1);
 }

      if (!lvalue_p (exp)
   && ! (((enum tree_code) (exp)->common.code) == CONSTRUCTOR && ((exp)->common.static_flag)))
 {
   error ("invalid use of non-lvalue array");
   return global_trees[TI_ERROR_MARK];
 }

      ptrtype = build_pointer_type (((type)->common.type));

      if (((enum tree_code) (exp)->common.code) == VAR_DECL)
 {




   adr = build1 (ADDR_EXPR, ptrtype, exp);
   if (!cxx_mark_addressable (exp))
     return global_trees[TI_ERROR_MARK];
   ((adr)->common.constant_flag) = staticp (exp);
   ((adr)->common.side_effects_flag) = 0;
   return adr;
 }


      adr = build_unary_op (ADDR_EXPR, exp, 1);
      return cp_convert (ptrtype, adr);
    }



  if (! (((((enum tree_code) (type)->common.code)) == RECORD_TYPE || (((enum tree_code) (type)->common.code)) == UNION_TYPE) && (((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5))))
    exp = cp_convert (((type)->type.main_variant), exp);

  return exp;
}

tree
default_conversion (exp)
     tree exp;
{
  tree type;
  enum tree_code code;

  exp = decay_conversion (exp);

  type = ((exp)->common.type);
  code = ((enum tree_code) (type)->common.code);

  if (((code) == INTEGER_TYPE || (code) == ENUMERAL_TYPE || (code) == BOOLEAN_TYPE))
    {
      tree t = type_promotes_to (type);
      if (t != type)
 return cp_convert (t, exp);
    }

  return exp;
}




tree
inline_conversion (exp)
     tree exp;
{
  if (((enum tree_code) (exp)->common.code) == FUNCTION_DECL)
    exp = build1 (ADDR_EXPR, build_pointer_type (((exp)->common.type)), exp);

  return exp;
}




int
string_conv_p (totype, exp, warn)
     tree totype, exp;
     int warn;
{
  tree t;

  if (! flag_const_strings || ((enum tree_code) (totype)->common.code) != POINTER_TYPE)
    return 0;

  t = ((totype)->common.type);
  if (!comptypes ((t), (integer_types[itk_char]), 0)
      && !comptypes ((t), (c_global_trees[CTI_WCHAR_TYPE]), 0))
    return 0;

  if (((enum tree_code) (exp)->common.code) == STRING_CST)
    {

      if (!comptypes ((((((((exp)->common.type))->common.type))->type.main_variant)), (t), 0))
 return 0;
    }
  else
    {

      t = build_pointer_type (build_qualified_type (t, 0x1));
      if (!comptypes ((((exp)->common.type)), (t), 0))
 return 0;
      while ((((enum tree_code) (exp)->common.code) == NOP_EXPR || ((enum tree_code) (exp)->common.code) == CONVERT_EXPR || ((enum tree_code) (exp)->common.code) == NON_LVALUE_EXPR) && ((exp)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((((exp)->common.type))->type.mode) == ((((((exp)->exp.operands[0]))->common.type))->type.mode))) (exp) = ((exp)->exp.operands[0]);
      if (((enum tree_code) (exp)->common.code) != ADDR_EXPR
   || ((enum tree_code) (((exp)->exp.operands[0]))->common.code) != STRING_CST)
 return 0;
    }


  if (warn && warn_write_strings)
    warning ("deprecated conversion from string constant to `%T'", totype);

  return 1;
}
# 1781 "../../../kg++fe/gnu/cp/typeck.c"
static tree
rationalize_conditional_expr (code, t)
     enum tree_code code;
     tree t;
{



  if (((enum tree_code) (t)->common.code) == MIN_EXPR || ((enum tree_code) (t)->common.code) == MAX_EXPR)
    {
      return
 build_conditional_expr (build_x_binary_op ((((enum tree_code) (t)->common.code) == MIN_EXPR
          ? LE_EXPR : GE_EXPR),
         ((t)->exp.operands[0]),
         ((t)->exp.operands[1])),
       build_unary_op (code, ((t)->exp.operands[0]), 0),
       build_unary_op (code, ((t)->exp.operands[1]), 0));
    }

  return
    build_conditional_expr (((t)->exp.operands[0]),
       build_unary_op (code, ((t)->exp.operands[1]), 0),
       build_unary_op (code, ((t)->exp.operands[2]), 0));
}






static tree
lookup_anon_field (t, type)
     tree t, type;
{
  tree field;

  for (field = ((t)->type.values); field; field = ((field)->common.chain))
    {
      if (((field)->common.static_flag))
 continue;
      if (((enum tree_code) (field)->common.code) != FIELD_DECL || ((field)->decl.artificial_flag))
 continue;


      if (((field)->decl.name) == (tree) ((void *)0)
   && type == ((((field)->common.type))->type.main_variant))
 {
   return field;
 }


      if (((field)->decl.name) == (tree) ((void *)0)
   && ((((((enum tree_code) (((field)->common.type))->common.code)) == RECORD_TYPE || (((enum tree_code) (((field)->common.type))->common.code)) == UNION_TYPE) && (((enum tree_code) (((field)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((field)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((field)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((field)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((field)->common.type))->type.lang_flag_5))) && (&((((field)->common.type))->type.lang_specific)->u.c)->anon_aggr))
 {
   tree subfield = lookup_anon_field (((field)->common.type), type);
   if (subfield)
     return subfield;
 }
    }
  return (tree) ((void *)0);
}
# 1855 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_class_member_access_expr (tree object, tree member,
    tree access_path, _Bool preserve_reference)
{
  tree object_type;
  tree member_scope;
  tree result = (tree) ((void *)0);

  if (object == global_trees[TI_ERROR_MARK] || member == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  (void) ((((tree_code_type[(int) (((enum tree_code) (member)->common.code))] == 'd') || (((enum tree_code) (member)->common.code) == BASELINK)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 1867, __FUNCTION__), 0) : 0);





  if (((enum tree_code) (object)->common.code) == COMPOUND_EXPR)
    {
      result = build_class_member_access_expr (((object)->exp.operands[1]),
            member, access_path,
            preserve_reference);
      return build (COMPOUND_EXPR, ((result)->common.type),
      ((object)->exp.operands[0]), result);
    }
  else if (((enum tree_code) (object)->common.code) == COND_EXPR)
    return (build_conditional_expr
     (((object)->exp.operands[0]),
      build_class_member_access_expr (((object)->exp.operands[1]),
          member, access_path,
          preserve_reference),
      build_class_member_access_expr (((object)->exp.operands[2]),
          member, access_path,
          preserve_reference)));





  object_type = ((object)->common.type);
  if (!(complete_type_or_diagnostic ((object_type), (object), 0)))
    return global_trees[TI_ERROR_MARK];
  if (!(((((enum tree_code) (object_type)->common.code)) == RECORD_TYPE || (((enum tree_code) (object_type)->common.code)) == UNION_TYPE) && (((enum tree_code) (object_type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (object_type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (object_type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (object_type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((object_type)->type.lang_flag_5))))
    {
      error ("request for member `%D' in `%E', which is of non-class type `%T'",
      member, object, object_type);
      return global_trees[TI_ERROR_MARK];
    }




  if ((tree_code_type[(int) (((enum tree_code) (member)->common.code))] == 'd'))
    {
      member_scope = ((((member)->decl.context) && (tree_code_type[(int) (((enum tree_code) (((member)->decl.context))->common.code))] == 't')) ? ((member)->decl.context) : (tree) ((void *)0));
      mark_used (member);
      if (((member)->common.deprecated_flag))
 warn_deprecated_use (member);
    }
  else
    member_scope = ((((((member))->exp.operands[0])))->common.type);



  while (((((((enum tree_code) (member_scope)->common.code)) == RECORD_TYPE || (((enum tree_code) (member_scope)->common.code)) == UNION_TYPE) && (((enum tree_code) (member_scope)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (member_scope)->common.code) == TYPENAME_TYPE || ((enum tree_code) (member_scope)->common.code) == TYPEOF_TYPE || ((enum tree_code) (member_scope)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((member_scope)->type.lang_flag_5))) && (&((member_scope)->type.lang_specific)->u.c)->anon_aggr)
  && !comptypes ((((member_scope)->type.main_variant)), (((object_type)->type.main_variant)), 0))

    member_scope = ((member_scope)->type.context);
  if (!member_scope || !(lookup_base ((object_type), member_scope, ba_any, ((void *)0)) != (tree) ((void *)0)))
    {
      error ("`%D' is not a member of `%T'", member, object_type);
      return global_trees[TI_ERROR_MARK];
    }



  if (((enum tree_code) (member)->common.code) == VAR_DECL)
    {

      result = member;

      if (((object)->common.side_effects_flag))
 result = build (COMPOUND_EXPR, ((result)->common.type), object, result);
    }
  else if (((enum tree_code) (member)->common.code) == FIELD_DECL)
    {

      _Bool null_object_p;
      int type_quals;
      tree member_type;

      null_object_p = (((enum tree_code) (object)->common.code) == INDIRECT_REF
         && integer_zerop (((object)->exp.operands[0])));


      if (!comptypes ((((object_type)->type.main_variant)), (((member_scope)->type.main_variant)), 0))

 {
   tree binfo;
   base_kind kind;

   binfo = lookup_base (access_path ? access_path : object_type,
          member_scope, ba_ignore, &kind);
   if (binfo == global_trees[TI_ERROR_MARK])
     return global_trees[TI_ERROR_MARK];




   if (null_object_p && kind == bk_via_virtual)
     {
       error ("invalid access to non-static data member `%D' of NULL object",
       member);
       error ("(perhaps the `offsetof' macro was used incorrectly)");
       return global_trees[TI_ERROR_MARK];
     }


   object = build_base_path (PLUS_EXPR, object, binfo,
                    1);


   (void) (((object != global_trees[TI_ERROR_MARK]) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 1978, __FUNCTION__), 0) : 0);

 }





      if (null_object_p && ((&((object_type)->type.lang_specific)->u.c)->non_pod_class))
 {
   warning ("invalid access to non-static data member `%D' of NULL object",
     member);
   warning ("(perhaps the `offsetof' macro was used incorrectly)");
 }





      if (((((((enum tree_code) (((member)->decl.context))->common.code)) == RECORD_TYPE || (((enum tree_code) (((member)->decl.context))->common.code)) == UNION_TYPE) && (((enum tree_code) (((member)->decl.context))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((member)->decl.context))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((member)->decl.context))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((member)->decl.context))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((member)->decl.context))->type.lang_flag_5))) && (&((((member)->decl.context))->type.lang_specific)->u.c)->anon_aggr)






   && (!comptypes ((((((object)->common.type))->type.main_variant)), (((((member)->decl.context))->type.main_variant)), 0)))

 {
   tree anonymous_union;

   anonymous_union = lookup_anon_field (((object)->common.type),
            ((member)->decl.context));
   object = build_class_member_access_expr (object,
         anonymous_union,
                         (tree) ((void *)0),
         preserve_reference);
 }


      type_quals = 0x0;
      member_type = ((member)->common.type);
      if (((enum tree_code) (member_type)->common.code) != REFERENCE_TYPE)
 {
   type_quals = (cp_type_quals (member_type)
   | cp_type_quals (object_type));




   if ((((member)->decl.lang_flag_0)))
     type_quals &= ~0x1;
   member_type = cp_build_qualified_type_real ((member_type), (type_quals), tf_error | tf_warning);
 }

      result = fold (build (COMPONENT_REF, member_type, object, member));




      if (type_quals & 0x1)
 ((result)->common.readonly_flag) = 1;
      else if (type_quals & 0x2)
 ((result)->common.volatile_flag) = 1;
    }
  else if ((((enum tree_code) (member)->common.code) == BASELINK))
    {

      tree functions;




      functions = ((((member))->exp.operands[1]));
      if (((enum tree_code) (functions)->common.code) == FUNCTION_DECL
   && (((functions)->decl.lang_specific)->decl_flags.static_function))
 {

   result = functions;
   mark_used (result);

   if (((object)->common.side_effects_flag))
     result = build (COMPOUND_EXPR, ((result)->common.type),
       object, result);
 }
      else


 result = build (COMPONENT_REF, cp_global_trees[CPTI_UNKNOWN_TYPE], object, member);
    }
  else if (((enum tree_code) (member)->common.code) == CONST_DECL)
    {

      result = member;

      if (((object)->common.side_effects_flag))
 result = build (COMPOUND_EXPR, ((result)->common.type),
   object, result);
    }
  else
    {
      error ("invalid use of `%D'", member);
      return global_trees[TI_ERROR_MARK];
    }

  if (!preserve_reference)




    result = convert_from_reference (result);

  return result;
}
# 2100 "../../../kg++fe/gnu/cp/typeck.c"
tree
finish_class_member_access_expr (tree object, tree name)
{
  tree object_type;
  tree member;
  tree access_path = (tree) ((void *)0);

  if (object == global_trees[TI_ERROR_MARK] || name == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (scope_chain->x_processing_template_decl)
    return build_min_nt (COMPONENT_REF, object, name);

  if (((enum tree_code) (object)->common.code) == OFFSET_REF)
    object = resolve_offset_ref (object);

  object_type = ((object)->common.type);
  if (((enum tree_code) (object_type)->common.code) == REFERENCE_TYPE)
    {
      object = convert_from_reference (object);
      object_type = ((object)->common.type);
    }





  if (!(complete_type_or_diagnostic ((object_type), (object), 0)))
    return global_trees[TI_ERROR_MARK];
  if (!(((((enum tree_code) (object_type)->common.code)) == RECORD_TYPE || (((enum tree_code) (object_type)->common.code)) == UNION_TYPE) && (((enum tree_code) (object_type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (object_type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (object_type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (object_type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((object_type)->type.lang_flag_5))))
    {
      error ("request for member `%D' in `%E', which is of non-class type `%T'",
      name, object, object_type);
      return global_trees[TI_ERROR_MARK];
    }

  if ((((enum tree_code) (name)->common.code) == BASELINK))
    {

      (void) ((((((enum tree_code) (((((name))->exp.operands[1])))->common.code) == TEMPLATE_ID_EXPR)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 2141, __FUNCTION__), 0) : 0);


      member = name;
    }
  else
    {
      _Bool is_template_id = 0;
      tree template_args = (tree) ((void *)0);

      if (((enum tree_code) (name)->common.code) == TEMPLATE_ID_EXPR)
 {
   is_template_id = 1;
   template_args = ((name)->exp.operands[1]);
   name = ((name)->exp.operands[0]);
 }

      if (((enum tree_code) (name)->common.code) == SCOPE_REF)
 {
   tree scope;





   scope = ((name)->exp.operands[0]);
   name = ((name)->exp.operands[1]);
   (void) (((((((((enum tree_code) (scope)->common.code)) == RECORD_TYPE || (((enum tree_code) (scope)->common.code)) == UNION_TYPE) && (((enum tree_code) (scope)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (scope)->common.code) == TYPENAME_TYPE || ((enum tree_code) (scope)->common.code) == TYPEOF_TYPE || ((enum tree_code) (scope)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((scope)->type.lang_flag_5))) || ((enum tree_code) (scope)->common.code) == NAMESPACE_DECL)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 2168, __FUNCTION__), 0) : 0);


   (void) ((((((enum tree_code) (name)->common.code) == IDENTIFIER_NODE || ((enum tree_code) (name)->common.code) == BIT_NOT_EXPR)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 2171, __FUNCTION__), 0) : 0);





   if (((enum tree_code) (scope)->common.code) == NAMESPACE_DECL)
     {
       error ("`%D::%D' is not a member of `%T'",
       scope, name, object_type);
       return global_trees[TI_ERROR_MARK];
     }


   access_path = lookup_base (object_type, scope, ba_check, ((void *)0));
   if (!access_path || access_path == global_trees[TI_ERROR_MARK])
     return global_trees[TI_ERROR_MARK];


   member = lookup_member (access_path, name, 1,
                    0);
   if (member == (tree) ((void *)0))
     {
       error ("'%D' has no member named '%E'", object_type, name);
       return global_trees[TI_ERROR_MARK];
     }
   else if (member == global_trees[TI_ERROR_MARK])
     return global_trees[TI_ERROR_MARK];
 }
      else if (((enum tree_code) (name)->common.code) == BIT_NOT_EXPR)
 {

   if ((((((object_type)->type.name))->decl.name)) != ((name)->exp.operands[0]))
     {
       error ("destructor specifier `%T::~%T' must have matching names",
       object_type, ((name)->exp.operands[0]));
       return global_trees[TI_ERROR_MARK];
     }
   if (! (((object_type)->type.lang_flag_2)))
     {
       error ("type `%T' has no destructor", object_type);
       return global_trees[TI_ERROR_MARK];
     }
   member = (((((&((object_type)->type.lang_specific)->u.c)->methods))->vec.a[1]));
 }
      else if (((enum tree_code) (name)->common.code) == IDENTIFIER_NODE)
 {

   member = lookup_member (object_type, name, 1,
                    0);
   if (member == (tree) ((void *)0))
     {
       error ("'%D' has no member named '%E'", object_type, name);
       return global_trees[TI_ERROR_MARK];
     }
   else if (member == global_trees[TI_ERROR_MARK])
     return global_trees[TI_ERROR_MARK];
 }
      else
 {




   error ("invalid use of `%D'", name);
   return global_trees[TI_ERROR_MARK];
 }

      if (is_template_id)
 {
   tree template = member;

   if ((((enum tree_code) (template)->common.code) == BASELINK))
     ((((template))->exp.operands[1]))
       = build_nt (TEMPLATE_ID_EXPR,
     ((((template))->exp.operands[1])),
     template_args);
   else
     {
       error ("`%D' is not a member template function", name);
       return global_trees[TI_ERROR_MARK];
     }
 }
    }

  return build_class_member_access_expr (object, member, access_path,
                             0);
}
# 2265 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_ptrmemfunc_access_expr (tree ptrmem, tree member_name)
{
  tree ptrmem_type;
  tree member;
  tree member_type;





  ptrmem_type = ((ptrmem)->common.type);
  (void) ((((((enum tree_code) (ptrmem_type)->common.code) == RECORD_TYPE && ((ptrmem_type)->type.lang_specific) && ((&((ptrmem_type)->type.lang_specific)->u.c)->ptrmemfunc_flag))) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 2277, __FUNCTION__), 0) : 0);
  member = lookup_member (ptrmem_type, member_name, 0,
                   0);
  member_type = cp_build_qualified_type_real ((((member)->common.type)), (cp_type_quals (ptrmem_type)), tf_error | tf_warning);

  return fold (build (COMPONENT_REF, member_type, ptrmem, member));
}
# 2292 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_x_indirect_ref (ptr, errorstring)
     tree ptr;
     const char *errorstring;
{
  tree rval;

  if (scope_chain->x_processing_template_decl)
    return build_min_nt (INDIRECT_REF, ptr);

  rval = build_opfncall (INDIRECT_REF, (3), ptr, (tree) ((void *)0),
    (tree) ((void *)0));
  if (rval)
    return rval;
  return build_indirect_ref (ptr, errorstring);
}

tree
build_indirect_ref (ptr, errorstring)
     tree ptr;
     const char *errorstring;
{
  register tree pointer, type;

  if (ptr == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (ptr == (cfun ? (cfun->language)->x_current_class_ptr : (tree) ((void *)0)))
    return (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0));

  pointer = (((enum tree_code) (((ptr)->common.type))->common.code) == REFERENCE_TYPE
      ? ptr : default_conversion (ptr));
  type = ((pointer)->common.type);

  if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) || ((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    {
# 2336 "../../../kg++fe/gnu/cp/typeck.c"
      tree t = canonical_type_variant (((type)->common.type));

      if ((((enum tree_code) (t)->common.code) == VOID_TYPE))
        {


          error ("`%T' is not a pointer-to-object type", type);
          return global_trees[TI_ERROR_MARK];
        }
      else if (((enum tree_code) (pointer)->common.code) == ADDR_EXPR
        && !flag_volatile
        && comptypes ((t), (((((pointer)->exp.operands[0]))->common.type)), 0))


 return ((pointer)->exp.operands[0]);
      else
 {
   tree ref = build1 (INDIRECT_REF, t, pointer);




   ((ref)->common.readonly_flag) = ((cp_type_quals (t) & 0x1) != 0);
   ((ref)->common.volatile_flag) = ((cp_type_quals (t) & 0x2) != 0);
   ((ref)->common.side_effects_flag)
     = (((ref)->common.volatile_flag) || ((pointer)->common.side_effects_flag)
        || flag_volatile);
   return ref;
 }
    }


  else if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE) || (((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->type.lang_specific) && ((&((type)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    error ("invalid use of `%s' on pointer to member", errorstring);
  else if (pointer != global_trees[TI_ERROR_MARK])
    {
      if (errorstring)
 error ("invalid type argument of `%s'", errorstring);
      else
 error ("invalid type argument");
    }
  return global_trees[TI_ERROR_MARK];
}
# 2393 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_array_ref (array, idx)
     tree array, idx;
{
  if (idx == 0)
    {
      error ("subscript missing in array reference");
      return global_trees[TI_ERROR_MARK];
    }

  if (((array)->common.type) == global_trees[TI_ERROR_MARK]
      || ((idx)->common.type) == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];



  switch (((enum tree_code) (array)->common.code))
    {
    case COMPOUND_EXPR:
      {
 tree value = build_array_ref (((array)->exp.operands[1]), idx);
 return build (COMPOUND_EXPR, ((value)->common.type),
        ((array)->exp.operands[0]), value);
      }

    case COND_EXPR:
      return build_conditional_expr
 (((array)->exp.operands[0]),
  build_array_ref (((array)->exp.operands[1]), idx),
  build_array_ref (((array)->exp.operands[2]), idx));

    default:
      break;
    }

  if (((enum tree_code) (((array)->common.type))->common.code) == ARRAY_TYPE
      && ((enum tree_code) (array)->common.code) != INDIRECT_REF)
    {
      tree rval, type;







      if (warn_char_subscripts
   && ((((idx)->common.type))->type.main_variant) == integer_types[itk_char])
 warning ("array subscript has type `char'");


      idx = default_conversion (idx);

      if (((enum tree_code) (((idx)->common.type))->common.code) != INTEGER_TYPE)
 {
   error ("array subscript is not an integer");
   return global_trees[TI_ERROR_MARK];
 }





      if (((enum tree_code) (idx)->common.code) != INTEGER_CST
   || ((((((((array)->common.type))->common.type))->type.size) != (tree) ((void *)0))
       && (((enum tree_code) (((((((array)->common.type))->common.type))->type.size))->common.code)
    != INTEGER_CST)))
 {
   if (!cxx_mark_addressable (array))
     return global_trees[TI_ERROR_MARK];
 }





      if (((enum tree_code) (idx)->common.code) == INTEGER_CST
   && ((((array)->common.type))->type.values)
   && ! int_fits_type_p (idx, ((((array)->common.type))->type.values)))
 {
   if (!cxx_mark_addressable (array))
     return global_trees[TI_ERROR_MARK];
 }

      if (pedantic && !lvalue_p (array))
 pedwarn ("ISO C++ forbids subscripting non-lvalue array");




      if (extra_warnings)
 {
   tree foo = array;
   while (((enum tree_code) (foo)->common.code) == COMPONENT_REF)
     foo = ((foo)->exp.operands[0]);
   if (((enum tree_code) (foo)->common.code) == VAR_DECL && ((foo)->decl.regdecl_flag))
     warning ("subscripting array declared `register'");
 }

      type = ((((array)->common.type))->common.type);
      rval = build (ARRAY_REF, type, array, idx);


      ((rval)->common.readonly_flag)
 |= (((cp_type_quals (type) & 0x1) != 0) | ((array)->common.readonly_flag));
      ((rval)->common.side_effects_flag)
 |= (((cp_type_quals (type) & 0x2) != 0) | ((array)->common.side_effects_flag));
      ((rval)->common.volatile_flag)
 |= (((cp_type_quals (type) & 0x2) != 0) | ((array)->common.volatile_flag));
      return require_complete_type (fold (rval));
    }

  {
    tree ar = default_conversion (array);
    tree ind = default_conversion (idx);


    if (((enum tree_code) (((ar)->common.type))->common.code) == INTEGER_TYPE)
      {
 tree temp = ar;
 ar = ind;
 ind = temp;
      }

    if (ar == global_trees[TI_ERROR_MARK])
      return ar;

    if (((enum tree_code) (((ar)->common.type))->common.code) != POINTER_TYPE)
      {
 error ("subscripted value is neither array nor pointer");
 return global_trees[TI_ERROR_MARK];
      }
    if (((enum tree_code) (((ind)->common.type))->common.code) != INTEGER_TYPE)
      {
 error ("array subscript is not an integer");
 return global_trees[TI_ERROR_MARK];
      }

    return build_indirect_ref (build_binary_op(PLUS_EXPR, ar, ind, 1),
          "array indexing");
  }
}
# 2546 "../../../kg++fe/gnu/cp/typeck.c"
tree
get_member_function_from_ptrfunc (instance_ptrptr, function)
     tree *instance_ptrptr;
     tree function;
{
  if (((enum tree_code) (function)->common.code) == OFFSET_REF)
    function = ((function)->exp.operands[1]);

  if ((((enum tree_code) (((function)->common.type))->common.code) == RECORD_TYPE && ((((function)->common.type))->type.lang_specific) && ((&((((function)->common.type))->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    {
      tree idx, delta, e1, e2, e3, vtbl, basetype;
      tree fntype = (((((((function)->common.type))->type.values))->common.type));

      tree instance_ptr = *instance_ptrptr;
      tree instance_save_expr = 0;
      if (instance_ptr == global_trees[TI_ERROR_MARK])
 {
   if (((enum tree_code) (function)->common.code) == PTRMEM_CST)
     {



       e1 = build_addr_func ((((ptrmem_cst_t)(function))->member));
       e1 = convert (fntype, e1);
       return e1;
     }
   else
     {
       error ("object missing in use of `%E'", function);
       return global_trees[TI_ERROR_MARK];
     }
 }

      if (((instance_ptr)->common.side_effects_flag))
 instance_ptr = instance_save_expr = save_expr (instance_ptr);

      if (((function)->common.side_effects_flag))
 function = save_expr (function);


      e3 = pfn_from_ptrmemfunc ((function));
      delta = build_ptrmemfunc_access_expr (function, cp_global_trees[CPTI_DELTA_IDENTIFIER]);
      idx = build1 (NOP_EXPR, cp_global_trees[CPTI_VTABLE_INDEX_TYPE], e3);
      switch (ptrmemfunc_vbit_in_delta)
 {
 case ptrmemfunc_vbit_in_pfn:
   e1 = build_binary_op(BIT_AND_EXPR, idx, global_trees[TI_INTEGER_ONE], 1);
   idx = build_binary_op(MINUS_EXPR, idx, global_trees[TI_INTEGER_ONE], 1);
   break;

 case ptrmemfunc_vbit_in_delta:
   e1 = build_binary_op(BIT_AND_EXPR, delta, global_trees[TI_INTEGER_ONE], 1);
   delta = build_binary_op(RSHIFT_EXPR, delta, global_trees[TI_INTEGER_ONE], 1);
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 2602, __FUNCTION__);
 }



      basetype = ((((fntype)->common.type))->type.maxval);
      basetype = lookup_base (((((instance_ptr)->common.type))->common.type),
         basetype, ba_check, ((void *)0));
      instance_ptr = build_base_path (PLUS_EXPR, instance_ptr, basetype, 1);
      if (instance_ptr == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];

      instance_ptr = build (PLUS_EXPR, ((instance_ptr)->common.type),
       instance_ptr, delta);


      *instance_ptrptr = instance_ptr;


      vtbl = build1 (NOP_EXPR, build_pointer_type (cp_global_trees[CPTI_VTBL_PTR_TYPE]),
       instance_ptr);
      vtbl = build_indirect_ref (vtbl, ((void *)0));


      e2 = fold (build (PLUS_EXPR, ((vtbl)->common.type), vtbl, idx));
      e2 = build_indirect_ref (e2, ((void *)0));
      ((e2)->common.constant_flag) = 1;



      if (0)
 e2 = build1 (NOP_EXPR, ((e2)->common.type),
       build_unary_op (ADDR_EXPR, e2, 1));

      ((e2)->common.type) = ((e3)->common.type);
      e1 = build_conditional_expr (e1, e2, e3);



      if (instance_save_expr)
 e1 = build (COMPOUND_EXPR, ((e1)->common.type),
      instance_save_expr, e1);

      function = e1;
    }
  return function;
}

tree
build_function_call_real (function, params, flags)
     tree function, params;
     int flags;
{
  register tree fntype, fndecl;
  register tree coerced_params;
  tree result;
  tree name = (tree) ((void *)0), assembler_name = (tree) ((void *)0);
  int is_method;
  tree original = function;



  if (((enum tree_code) (function)->common.code) == NOP_EXPR
      && ((function)->common.type) == ((((function)->exp.operands[0]))->common.type))
    function = ((function)->exp.operands[0]);

  if (((enum tree_code) (function)->common.code) == FUNCTION_DECL)
    {
      name = ((function)->decl.name);
      assembler_name = decl_assembler_name (function);

      mark_used (function);
      fndecl = function;


      if (pedantic && (((((enum tree_code) (function)->common.code) == FUNCTION_DECL && !(((enum tree_code) (function)->common.code) == FUNCTION_DECL && ((function)->decl.lang_flag_7))) && ((((function)->decl.lang_specific) ? ((function)->decl.lang_specific)->decl_flags.language : (((enum tree_code) (function)->common.code) == FUNCTION_DECL ? lang_c : lang_cplusplus)) == lang_c)) && ((function)->decl.name) != (tree) ((void *)0) && ((((function)->decl.name)) == global_trees[TI_MAIN_IDENTIFIER])))
 pedwarn ("ISO C++ forbids calling `::main' from within program");





      if (((function)->decl.inline_flag))
 function = inline_conversion (function);
      else
 function = build_addr_func (function);
    }
  else
    {
      fndecl = (tree) ((void *)0);

      function = build_addr_func (function);
    }

  if (function == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  fntype = ((function)->common.type);

  if ((((enum tree_code) (fntype)->common.code) == RECORD_TYPE && ((fntype)->type.lang_specific) && ((&((fntype)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    {
      error ("must use .* or ->* to call pointer-to-member function in `%E (...)'",
  original);
      return global_trees[TI_ERROR_MARK];
    }

  is_method = (((enum tree_code) (fntype)->common.code) == POINTER_TYPE
        && ((enum tree_code) (((fntype)->common.type))->common.code) == METHOD_TYPE);

  if (!((((enum tree_code) (fntype)->common.code) == POINTER_TYPE
  && ((enum tree_code) (((fntype)->common.type))->common.code) == FUNCTION_TYPE)
 || is_method
 || ((enum tree_code) (function)->common.code) == TEMPLATE_ID_EXPR))
    {
      error ("`%E' cannot be used as a function", original);
      return global_trees[TI_ERROR_MARK];
    }


  fntype = ((fntype)->common.type);




  if (flags & (2))
    coerced_params = convert_arguments (((fntype)->type.values),
     params, fndecl, (3));
  else
    coerced_params = convert_arguments (((fntype)->type.values),
     params, fndecl, 0);

  if (coerced_params == global_trees[TI_ERROR_MARK])
    {
      if (flags & (64))
 return (tree) ((void *)0);
      else
 return global_trees[TI_ERROR_MARK];
    }



  if (warn_format)
    check_function_format (((void *)0), ((fntype)->type.attributes), coerced_params);





  if (((enum tree_code) (function)->common.code) == ADDR_EXPR
      && ((enum tree_code) (((function)->exp.operands[0]))->common.code) == FUNCTION_DECL
      && (((((function)->exp.operands[0]))->decl.built_in_class) != NOT_BUILT_IN))
    {
      result = expand_tree_builtin (((function)->exp.operands[0]),
        params, coerced_params);
      if (result)
 return result;
    }

  return build_cxx_call (function, params, coerced_params);
}

tree
build_function_call (function, params)
     tree function, params;
{
  return build_function_call_real (function, params, (3));
}
# 2787 "../../../kg++fe/gnu/cp/typeck.c"
tree
convert_arguments (typelist, values, fndecl, flags)
     tree typelist, values, fndecl;
     int flags;
{
  register tree typetail, valtail;
  register tree result = (tree) ((void *)0);
  const char *called_thing = 0;
  int i = 0;


  flags |= (128);

  if (fndecl)
    {
      if (((enum tree_code) (((fndecl)->common.type))->common.code) == METHOD_TYPE)
 {
   if (((fndecl)->decl.name) == (tree) ((void *)0)
       || (identifier_type_value (((fndecl)->decl.name)) ? 1 : 0))
     called_thing = "constructor";
   else
     called_thing = "member function";
 }
      else
 called_thing = "function";
    }

  for (valtail = values, typetail = typelist;
       valtail;
       valtail = ((valtail)->common.chain), i++)
    {
      register tree type = typetail ? ((typetail)->list.value) : 0;
      register tree val = ((valtail)->list.value);

      if (val == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];

      if (type == global_trees[TI_VOID_TYPE])
 {
   if (fndecl)
     {
       cp_error_at ("too many arguments to %s `%+#D'", called_thing,
      fndecl);
       error ("at this point in file");
     }
   else
     error ("too many arguments to function");


   if (result)
     ((tree_last (result))->common.type) = global_trees[TI_ERROR_MARK];
   break;
 }

      if (((enum tree_code) (val)->common.code) == OFFSET_REF)
 val = resolve_offset_ref (val);



      if (((enum tree_code) (val)->common.code) == NOP_EXPR
   && ((val)->common.type) == ((((val)->exp.operands[0]))->common.type)
   && (type == 0 || ((enum tree_code) (type)->common.code) != REFERENCE_TYPE))
 val = ((val)->exp.operands[0]);

      if (type == 0 || ((enum tree_code) (type)->common.code) != REFERENCE_TYPE)
 {
   if (((enum tree_code) (((val)->common.type))->common.code) == ARRAY_TYPE
       || ((enum tree_code) (((val)->common.type))->common.code) == FUNCTION_TYPE
       || ((enum tree_code) (((val)->common.type))->common.code) == METHOD_TYPE)
     val = default_conversion (val);
 }

      if (val == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];

      if (type != 0)
 {

   tree parmval;

   if (!(((complete_type (type))->type.size) != (tree) ((void *)0)))
     {
       error ("parameter type of called function is incomplete");
       parmval = val;
     }
   else
     {
       parmval = convert_for_initialization
  ((tree) ((void *)0), type, val, flags,
   "argument passing", fndecl, i);
       parmval = convert_for_arg_passing (type, parmval);
     }

   if (parmval == global_trees[TI_ERROR_MARK])
     return global_trees[TI_ERROR_MARK];

   result = tree_cons ((tree) ((void *)0), parmval, result);
 }
      else
 {
   if (((enum tree_code) (((val)->common.type))->common.code) == REFERENCE_TYPE)
     val = convert_from_reference (val);

   if (fndecl && (((fndecl)->decl.built_in_class) != NOT_BUILT_IN)
       && ((fndecl)->decl.u1.f) == BUILT_IN_CONSTANT_P)



     val = require_complete_type (val);
   else
     val = convert_arg_to_ellipsis (val);

   result = tree_cons ((tree) ((void *)0), val, result);
 }

      if (typetail)
 typetail = ((typetail)->common.chain);
    }

  if (typetail != 0 && typetail != global_trees[TI_VOID_LIST_NODE])
    {

      if (((typetail)->list.purpose))
 {
   for (; typetail != global_trees[TI_VOID_LIST_NODE]; ++i)
     {
       tree parmval
  = convert_default_arg (((typetail)->list.value),
           ((typetail)->list.purpose),
           fndecl, i);

       if (parmval == global_trees[TI_ERROR_MARK])
  return global_trees[TI_ERROR_MARK];

       result = tree_cons (0, parmval, result);
       typetail = ((typetail)->common.chain);

       if (typetail == (tree) ((void *)0))
  break;
     }
 }
      else
 {
   if (fndecl)
     {
       cp_error_at ("too few arguments to %s `%+#D'",
                    called_thing, fndecl);
       error ("at this point in file");
     }
   else
     error ("too few arguments to function");
   return error_mark_list;
 }
    }

  return nreverse (result);
}




tree
build_x_binary_op (code, arg1, arg2)
     enum tree_code code;
     tree arg1, arg2;
{
  if (scope_chain->x_processing_template_decl)
    return build_min_nt (code, arg1, arg2);

  return build_new_op (code, (3), arg1, arg2, (tree) ((void *)0));
}
# 2977 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_binary_op (code, orig_op0, orig_op1, convert_p)
     enum tree_code code;
     tree orig_op0, orig_op1;
     int convert_p __attribute__ ((__unused__));
{
  tree op0, op1;
  register enum tree_code code0, code1;
  tree type0, type1;




  register enum tree_code resultcode = code;



  register tree result_type = ((void *)0);




  int converted = 0;



  tree build_type = 0;



  tree final_type = 0;







  int shorten = 0;




  int short_compare = 0;



  int short_shift = 0;


  int common = 0;


  op0 = orig_op0;
  op1 = orig_op1;

  if (code == TRUTH_AND_EXPR || code == TRUTH_ANDIF_EXPR
      || code == TRUTH_OR_EXPR || code == TRUTH_ORIF_EXPR
      || code == TRUTH_XOR_EXPR)
    {
      if (!really_overloaded_fn (op0))
 op0 = decay_conversion (op0);
      if (!really_overloaded_fn (op1))
 op1 = decay_conversion (op1);
    }
  else
    {
      if (!really_overloaded_fn (op0))
 op0 = default_conversion (op0);
      if (!really_overloaded_fn (op1))
 op1 = default_conversion (op1);
    }


  while ((((enum tree_code) (op0)->common.code) == NOP_EXPR || ((enum tree_code) (op0)->common.code) == CONVERT_EXPR || ((enum tree_code) (op0)->common.code) == NON_LVALUE_EXPR) && ((op0)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((op0)->common.type) == ((((op0)->exp.operands[0]))->common.type))) (op0) = ((op0)->exp.operands[0]);
  while ((((enum tree_code) (op1)->common.code) == NOP_EXPR || ((enum tree_code) (op1)->common.code) == CONVERT_EXPR || ((enum tree_code) (op1)->common.code) == NON_LVALUE_EXPR) && ((op1)->exp.operands[0]) != global_trees[TI_ERROR_MARK] && (((op1)->common.type) == ((((op1)->exp.operands[0]))->common.type))) (op1) = ((op1)->exp.operands[0]);


  if (type_unknown_p (op0))
    {
      tree t = instantiate_type (((op1)->common.type), op0, tf_none);
      if (t != global_trees[TI_ERROR_MARK])
 {
   pedwarn ("assuming cast to type `%T' from overloaded function",
        ((t)->common.type));
   op0 = t;
 }
    }
  if (type_unknown_p (op1))
    {
      tree t = instantiate_type (((op0)->common.type), op1, tf_none);
      if (t != global_trees[TI_ERROR_MARK])
 {
   pedwarn ("assuming cast to type `%T' from overloaded function",
        ((t)->common.type));
   op1 = t;
 }
    }

  type0 = ((op0)->common.type);
  type1 = ((op1)->common.type);



  code0 = ((enum tree_code) (type0)->common.code);
  code1 = ((enum tree_code) (type1)->common.code);




  if (code0 == ERROR_MARK || code1 == ERROR_MARK)
    return global_trees[TI_ERROR_MARK];

  switch (code)
    {
    case PLUS_EXPR:

      if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 return cp_pointer_int_sum (PLUS_EXPR, op0, op1);
      else if (code1 == POINTER_TYPE && code0 == INTEGER_TYPE)
 return cp_pointer_int_sum (PLUS_EXPR, op1, op0);
      else
 common = 1;
      break;

    case MINUS_EXPR:


      if (code0 == POINTER_TYPE && code1 == POINTER_TYPE
   && comp_target_types (type0, type1, 1))
 return pointer_diff (op0, op1, common_type (type0, type1));

      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 return cp_pointer_int_sum (MINUS_EXPR, op0, op1);
      else
 common = 1;
      break;

    case MULT_EXPR:
      common = 1;
      break;

    case TRUNC_DIV_EXPR:
    case CEIL_DIV_EXPR:
    case FLOOR_DIV_EXPR:
    case ROUND_DIV_EXPR:
    case EXACT_DIV_EXPR:
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE
    || code0 == COMPLEX_TYPE)
   && (code1 == INTEGER_TYPE || code1 == REAL_TYPE
       || code1 == COMPLEX_TYPE))
 {
   if (((enum tree_code) (op1)->common.code) == INTEGER_CST && integer_zerop (op1))
     warning ("division by zero in `%E / 0'", op0);
   else if (((enum tree_code) (op1)->common.code) == REAL_CST && real_zerop (op1))
     warning ("division by zero in `%E / 0.'", op0);

   if (!(code0 == INTEGER_TYPE && code1 == INTEGER_TYPE))
     resultcode = RDIV_EXPR;
   else





     shorten = ((((enum tree_code) (op0)->common.code) == NOP_EXPR
   && ((((((op0)->exp.operands[0]))->common.type))->common.unsigned_flag))
         || (((enum tree_code) (op1)->common.code) == INTEGER_CST
      && ! integer_all_onesp (op1)));

   common = 1;
 }
      break;

    case BIT_AND_EXPR:
    case BIT_ANDTC_EXPR:
    case BIT_IOR_EXPR:
    case BIT_XOR_EXPR:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 shorten = -1;
      break;

    case TRUNC_MOD_EXPR:
    case FLOOR_MOD_EXPR:
      if (code1 == INTEGER_TYPE && integer_zerop (op1))
 warning ("division by zero in `%E %% 0'", op0);
      else if (code1 == REAL_TYPE && real_zerop (op1))
 warning ("division by zero in `%E %% 0.'", op0);

      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {




   shorten = ((((enum tree_code) (op0)->common.code) == NOP_EXPR
        && ((((((op0)->exp.operands[0]))->common.type))->common.unsigned_flag))
       || (((enum tree_code) (op1)->common.code) == INTEGER_CST
    && ! integer_all_onesp (op1)));
   common = 1;
 }
      break;

    case TRUTH_ANDIF_EXPR:
    case TRUTH_ORIF_EXPR:
    case TRUTH_AND_EXPR:
    case TRUTH_OR_EXPR:
      result_type = c_global_trees[CTI_BOOLEAN_TYPE];
      break;





    case RSHIFT_EXPR:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   if (((enum tree_code) (op1)->common.code) == INTEGER_CST)
     {
       if (tree_int_cst_lt (op1, global_trees[TI_INTEGER_ZERO]))
  warning ("right shift count is negative");
       else
  {
    if (! integer_zerop (op1))
      short_shift = 1;
    if (compare_tree_int (op1, ((type0)->type.precision)) >= 0)
      warning ("right shift count >= width of type");
  }
     }


   if (((((op1)->common.type))->type.main_variant) != integer_types[itk_int])
     op1 = cp_convert (integer_types[itk_int], op1);

   converted = 1;
 }
      break;

    case LSHIFT_EXPR:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   if (((enum tree_code) (op1)->common.code) == INTEGER_CST)
     {
       if (tree_int_cst_lt (op1, global_trees[TI_INTEGER_ZERO]))
  warning ("left shift count is negative");
       else if (compare_tree_int (op1, ((type0)->type.precision)) >= 0)
  warning ("left shift count >= width of type");
     }


   if (((((op1)->common.type))->type.main_variant) != integer_types[itk_int])
     op1 = cp_convert (integer_types[itk_int], op1);

   converted = 1;
 }
      break;

    case RROTATE_EXPR:
    case LROTATE_EXPR:
      if (code0 == INTEGER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   if (((enum tree_code) (op1)->common.code) == INTEGER_CST)
     {
       if (tree_int_cst_lt (op1, global_trees[TI_INTEGER_ZERO]))
  warning ("%s rotate count is negative",
    (code == LROTATE_EXPR) ? "left" : "right");
       else if (compare_tree_int (op1, ((type0)->type.precision)) >= 0)
  warning ("%s rotate count >= width of type",
    (code == LROTATE_EXPR) ? "left" : "right");
     }


   if (((((op1)->common.type))->type.main_variant) != integer_types[itk_int])
     op1 = cp_convert (integer_types[itk_int], op1);
 }
      break;

    case EQ_EXPR:
    case NE_EXPR:
      if (warn_float_equal && (code0 == REAL_TYPE || code1 == REAL_TYPE))
 warning ("comparing floating point with == or != is unsafe");

      build_type = c_global_trees[CTI_BOOLEAN_TYPE];
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE
    || code0 == COMPLEX_TYPE)
   && (code1 == INTEGER_TYPE || code1 == REAL_TYPE
       || code1 == COMPLEX_TYPE))
 short_compare = 1;
      else if (code0 == POINTER_TYPE && code1 == POINTER_TYPE)
 result_type = composite_pointer_type (type0, type1, op0, op1,
           "comparison");
      else if (code0 == POINTER_TYPE && null_ptr_cst_p (op1))
 result_type = type0;
      else if (code1 == POINTER_TYPE && null_ptr_cst_p (op0))
 result_type = type1;
      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   error ("ISO C++ forbids comparison between pointer and integer");
 }
      else if (code0 == INTEGER_TYPE && code1 == POINTER_TYPE)
 {
   result_type = type1;
   error ("ISO C++ forbids comparison between pointer and integer");
 }
      else if ((((enum tree_code) (type0)->common.code) == RECORD_TYPE && ((type0)->type.lang_specific) && ((&((type0)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && null_ptr_cst_p (op1))
 {
   op0 = build_ptrmemfunc_access_expr (op0, cp_global_trees[CPTI_PFN_IDENTIFIER]);
   op1 = cp_convert (((op0)->common.type), global_trees[TI_INTEGER_ZERO]);
   result_type = ((op0)->common.type);
 }
      else if ((((enum tree_code) (type1)->common.code) == RECORD_TYPE && ((type1)->type.lang_specific) && ((&((type1)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && null_ptr_cst_p (op0))
 return build_binary_op(code, op1, op0, 1);
      else if ((((enum tree_code) (type0)->common.code) == RECORD_TYPE && ((type0)->type.lang_specific) && ((&((type0)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && (((enum tree_code) (type1)->common.code) == RECORD_TYPE && ((type1)->type.lang_specific) && ((&((type1)->type.lang_specific)->u.c)->ptrmemfunc_flag))
        && comptypes ((type0), (type1), 0))
 {

   tree e;

   tree e1;
   tree e2;
   tree pfn0;
   tree pfn1;
   tree delta0;
   tree delta1;

   if (((op0)->common.side_effects_flag))
     op0 = save_expr (op0);
   if (((op1)->common.side_effects_flag))
     op1 = save_expr (op1);
# 3319 "../../../kg++fe/gnu/cp/typeck.c"
   pfn0 = pfn_from_ptrmemfunc (op0);
   pfn1 = pfn_from_ptrmemfunc (op1);
   delta0 = build_ptrmemfunc_access_expr (op0,
       cp_global_trees[CPTI_DELTA_IDENTIFIER]);
   delta1 = build_ptrmemfunc_access_expr (op1,
       cp_global_trees[CPTI_DELTA_IDENTIFIER]);
   e1 = build_binary_op(EQ_EXPR, delta0, delta1, 1);
   e2 = build_binary_op(EQ_EXPR, pfn0, cp_convert (((pfn0)->common.type), global_trees[TI_INTEGER_ZERO]), 1);



   e1 = build_binary_op(TRUTH_ORIF_EXPR, e1, e2, 1);
   e2 = build (EQ_EXPR, c_global_trees[CTI_BOOLEAN_TYPE], pfn0, pfn1);
   e = build_binary_op(TRUTH_ANDIF_EXPR, e2, e1, 1);
   if (code == EQ_EXPR)
     return e;
   return build_binary_op(EQ_EXPR, e, global_trees[TI_INTEGER_ZERO], 1);
 }
      else if (((((enum tree_code) (type0)->common.code) == RECORD_TYPE && ((type0)->type.lang_specific) && ((&((type0)->type.lang_specific)->u.c)->ptrmemfunc_flag))
  && comptypes (((((((type0)->type.values))->common.type))), (type1), 0))
        || ((((enum tree_code) (type1)->common.code) == RECORD_TYPE && ((type1)->type.lang_specific) && ((&((type1)->type.lang_specific)->u.c)->ptrmemfunc_flag))
     && comptypes (((((((type1)->type.values))->common.type))), (type0), 0)))
 fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 3341, __FUNCTION__);
      break;

    case MAX_EXPR:
    case MIN_EXPR:
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE)
    && (code1 == INTEGER_TYPE || code1 == REAL_TYPE))
 shorten = 1;
      else if (code0 == POINTER_TYPE && code1 == POINTER_TYPE)
 result_type = composite_pointer_type (type0, type1, op0, op1,
           "comparison");
      break;

    case LE_EXPR:
    case GE_EXPR:
    case LT_EXPR:
    case GT_EXPR:
      build_type = c_global_trees[CTI_BOOLEAN_TYPE];
      if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE)
    && (code1 == INTEGER_TYPE || code1 == REAL_TYPE))
 short_compare = 1;
      else if (code0 == POINTER_TYPE && code1 == POINTER_TYPE)
 result_type = composite_pointer_type (type0, type1, op0, op1,
           "comparison");
      else if (code0 == POINTER_TYPE && ((enum tree_code) (op1)->common.code) == INTEGER_CST
        && integer_zerop (op1))
 result_type = type0;
      else if (code1 == POINTER_TYPE && ((enum tree_code) (op0)->common.code) == INTEGER_CST
        && integer_zerop (op0))
 result_type = type1;
      else if (code0 == POINTER_TYPE && code1 == INTEGER_TYPE)
 {
   result_type = type0;
   pedwarn ("ISO C++ forbids comparison between pointer and integer");
 }
      else if (code0 == INTEGER_TYPE && code1 == POINTER_TYPE)
 {
   result_type = type1;
   pedwarn ("ISO C++ forbids comparison between pointer and integer");
 }
      break;

    case UNORDERED_EXPR:
    case ORDERED_EXPR:
    case UNLT_EXPR:
    case UNLE_EXPR:
    case UNGT_EXPR:
    case UNGE_EXPR:
    case UNEQ_EXPR:
      build_type = integer_types[itk_int];
      if (code0 != REAL_TYPE || code1 != REAL_TYPE)
 {
   error ("unordered comparison on non-floating point argument");
   return global_trees[TI_ERROR_MARK];
 }
      common = 1;
      break;

    default:
      break;
    }

  if ((code0 == INTEGER_TYPE || code0 == REAL_TYPE || code0 == COMPLEX_TYPE)
      &&
      (code1 == INTEGER_TYPE || code1 == REAL_TYPE || code1 == COMPLEX_TYPE))
    {
      int none_complex = (code0 != COMPLEX_TYPE && code1 != COMPLEX_TYPE);

      if (shorten || common || short_compare)
 result_type = common_type (type0, type1);
# 3423 "../../../kg++fe/gnu/cp/typeck.c"
      if (shorten && none_complex)
 {
   int unsigned0, unsigned1;
   tree arg0 = get_narrower (op0, &unsigned0);
   tree arg1 = get_narrower (op1, &unsigned1);

   int uns = ((result_type)->common.unsigned_flag);
   tree type;

   final_type = result_type;




   if (op0 == arg0 && ((op0)->common.type) != final_type)
     unsigned0 = ((((op0)->common.type))->common.unsigned_flag);
   if (op1 == arg1 && ((op1)->common.type) != final_type)
     unsigned1 = ((((op1)->common.type))->common.unsigned_flag);





   if (shorten == -1)
     uns = unsigned0;
# 3456 "../../../kg++fe/gnu/cp/typeck.c"
   if ((((((arg0)->common.type))->type.precision)
        < ((result_type)->type.precision))
       && (((((arg1)->common.type))->type.precision)
    == ((((arg0)->common.type))->type.precision))
       && unsigned0 == unsigned1
       && (unsigned0 || !uns))
     result_type = c_common_signed_or_unsigned_type
       (unsigned0, common_type (((arg0)->common.type), ((arg1)->common.type)));
   else if (((enum tree_code) (arg0)->common.code) == INTEGER_CST
     && (unsigned1 || !uns)
     && (((((arg1)->common.type))->type.precision)
         < ((result_type)->type.precision))
     && (type = c_common_signed_or_unsigned_type
         (unsigned1, ((arg1)->common.type)),
         int_fits_type_p (arg0, type)))
     result_type = type;
   else if (((enum tree_code) (arg1)->common.code) == INTEGER_CST
     && (unsigned0 || !uns)
     && (((((arg0)->common.type))->type.precision)
         < ((result_type)->type.precision))
     && (type = c_common_signed_or_unsigned_type
         (unsigned0, ((arg0)->common.type)),
         int_fits_type_p (arg1, type)))
     result_type = type;
 }



      if (short_shift)
 {
   int unsigned_arg;
   tree arg0 = get_narrower (op0, &unsigned_arg);

   final_type = result_type;

   if (arg0 == op0 && final_type == ((op0)->common.type))
     unsigned_arg = ((((op0)->common.type))->common.unsigned_flag);

   if (((((arg0)->common.type))->type.precision) < ((result_type)->type.precision)


       && compare_tree_int (op1, ((((arg0)->common.type))->type.precision)) < 0







       && (!((final_type)->common.unsigned_flag)
    || unsigned_arg
    || (((unsigned) 2 * ((((arg0)->common.type))->type.precision))
        <= ((result_type)->type.precision))))
     {

       result_type
  = c_common_signed_or_unsigned_type (unsigned_arg,
          ((arg0)->common.type));

       if (((op0)->common.type) != result_type)
  op0 = cp_convert (result_type, op0);
       converted = 1;
     }
 }




      if (short_compare)
 {




   tree xop0 = op0, xop1 = op1, xresult_type = result_type;
   enum tree_code xresultcode = resultcode;
   tree val
     = shorten_compare (&xop0, &xop1, &xresult_type, &xresultcode);
   if (val != 0)
     return cp_convert (c_global_trees[CTI_BOOLEAN_TYPE], val);
   op0 = xop0, op1 = xop1;
   converted = 1;
   resultcode = xresultcode;
 }

      if ((short_compare || code == MIN_EXPR || code == MAX_EXPR)
   && warn_sign_compare)
 {
   int op0_signed = ! ((((orig_op0)->common.type))->common.unsigned_flag);
   int op1_signed = ! ((((orig_op1)->common.type))->common.unsigned_flag);

   int unsignedp0, unsignedp1;
   tree primop0 = get_narrower (op0, &unsignedp0);
   tree primop1 = get_narrower (op1, &unsignedp1);


   if (((enum tree_code) (((orig_op0)->common.type))->common.code) == ENUMERAL_TYPE
       && ((enum tree_code) (((orig_op1)->common.type))->common.code) == ENUMERAL_TYPE
       && ((((orig_op0)->common.type))->type.main_variant)
          != ((((orig_op1)->common.type))->type.main_variant))
     {
       warning ("comparison between types `%#T' and `%#T'",
     ((orig_op0)->common.type), ((orig_op1)->common.type));
     }
# 3569 "../../../kg++fe/gnu/cp/typeck.c"
   if (! ((result_type)->common.unsigned_flag))
             ;

   else if (op0_signed == op1_signed)
             ;




   else if ((op0_signed && tree_expr_nonnegative_p (orig_op0))
     || (op1_signed && tree_expr_nonnegative_p (orig_op1)))
             ;



   else if ((resultcode == EQ_EXPR || resultcode == NE_EXPR)
     && ((op0_signed && ((enum tree_code) (orig_op1)->common.code) == INTEGER_CST
   && int_fits_type_p (orig_op1, c_common_signed_type
         (result_type)))
   || (op1_signed && ((enum tree_code) (orig_op0)->common.code) == INTEGER_CST
       && int_fits_type_p (orig_op0, c_common_signed_type
      (result_type)))))
             ;
   else
     warning ("comparison between signed and unsigned integer expressions");
# 3603 "../../../kg++fe/gnu/cp/typeck.c"
   if ((((enum tree_code) (primop0)->common.code) == BIT_NOT_EXPR)
       ^ (((enum tree_code) (primop1)->common.code) == BIT_NOT_EXPR))
     {
       if (((enum tree_code) (primop0)->common.code) == BIT_NOT_EXPR)
  primop0 = get_narrower (((op0)->exp.operands[0]), &unsignedp0);
       if (((enum tree_code) (primop1)->common.code) == BIT_NOT_EXPR)
  primop1 = get_narrower (((op1)->exp.operands[0]), &unsignedp1);

       if (host_integerp (primop0, 0) || host_integerp (primop1, 0))
  {
    tree primop;
    long long constant, mask;
    int unsignedp;
    unsigned int bits;

    if (host_integerp (primop0, 0))
      {
        primop = primop1;
        unsignedp = unsignedp1;
        constant = tree_low_cst (primop0, 0);
      }
    else
      {
        primop = primop0;
        unsignedp = unsignedp0;
        constant = tree_low_cst (primop1, 0);
      }

    bits = ((((primop)->common.type))->type.precision);
    if (bits < ((result_type)->type.precision)
        && bits < (8 * 4) && unsignedp)
      {
        mask = (~ (long long) 0) << bits;
        if ((mask & constant) != mask)
   warning ("comparison of promoted ~unsigned with constant");
      }
  }
       else if (unsignedp0 && unsignedp1
         && (((((primop0)->common.type))->type.precision)
      < ((result_type)->type.precision))
         && (((((primop1)->common.type))->type.precision)
      < ((result_type)->type.precision)))
  warning ("comparison of promoted ~unsigned with unsigned");
     }
 }
    }







  if (!result_type)
    {
      error ("invalid operands of types `%T' and `%T' to binary `%O'",
  ((orig_op0)->common.type), ((orig_op1)->common.type), code);
      return global_trees[TI_ERROR_MARK];
    }


  if (

      !(code == TRUTH_ANDIF_EXPR || code == TRUTH_ORIF_EXPR)
      && (
   (orig_op0 == cp_global_trees[CPTI_NULL]
    && ((enum tree_code) (((op1)->common.type))->common.code) != POINTER_TYPE)

   || (orig_op1 == cp_global_trees[CPTI_NULL]
       && ((enum tree_code) (((op0)->common.type))->common.code) != POINTER_TYPE)

   || (orig_op0 == cp_global_trees[CPTI_NULL] && orig_op1 == cp_global_trees[CPTI_NULL]
       && code != EQ_EXPR && code != NE_EXPR)))




    warning ("NULL used in arithmetic");

  if (! converted)
    {
      if (((op0)->common.type) != result_type)
 op0 = cp_convert (result_type, op0);
      if (((op1)->common.type) != result_type)
 op1 = cp_convert (result_type, op1);

      if (op0 == global_trees[TI_ERROR_MARK] || op1 == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
    }

  if (build_type == (tree) ((void *)0))
    build_type = result_type;

  {
    register tree result = build (resultcode, build_type, op0, op1);
    register tree folded;

    folded = fold (result);
    if (folded == result)
      ((folded)->common.constant_flag) = ((op0)->common.constant_flag) & ((op1)->common.constant_flag);
    if (final_type != 0)
      return cp_convert (final_type, folded);
    return folded;
  }
}




static tree
cp_pointer_int_sum (resultcode, ptrop, intop)
     enum tree_code resultcode;
     register tree ptrop, intop;
{
  tree res_type = ((ptrop)->common.type);






  complete_type (((res_type)->common.type));

  return pointer_int_sum (resultcode, ptrop, fold (intop));
}




static tree
pointer_diff (op0, op1, ptrtype)
     register tree op0, op1;
     register tree ptrtype;
{
  register tree result, folded;
  tree restype = global_trees[TI_PTRDIFF_TYPE];
  tree target_type = ((ptrtype)->common.type);

  if (!(complete_type_or_diagnostic ((target_type), ((tree) ((void *)0)), 0)))
    return global_trees[TI_ERROR_MARK];

  if (pedantic || warn_pointer_arith)
    {
      if (((enum tree_code) (target_type)->common.code) == VOID_TYPE)
 pedwarn ("ISO C++ forbids using pointer of type `void *' in subtraction");
      if (((enum tree_code) (target_type)->common.code) == FUNCTION_TYPE)
 pedwarn ("ISO C++ forbids using pointer to a function in subtraction");
      if (((enum tree_code) (target_type)->common.code) == METHOD_TYPE)
 pedwarn ("ISO C++ forbids using pointer to a method in subtraction");
      if (((enum tree_code) (target_type)->common.code) == OFFSET_TYPE)
 pedwarn ("ISO C++ forbids using pointer to a member in subtraction");
    }




  op0 = build_binary_op(MINUS_EXPR, cp_convert (restype, op0), cp_convert (restype, op1), 1);




  if (!(((((((op1)->common.type))->common.type))->type.size) != (tree) ((void *)0)))
    error ("invalid use of a pointer to an incomplete type in pointer arithmetic");

  op1 = ((((enum tree_code) (target_type)->common.code) == VOID_TYPE
   || ((enum tree_code) (target_type)->common.code) == FUNCTION_TYPE
   || ((enum tree_code) (target_type)->common.code) == METHOD_TYPE
   || ((enum tree_code) (target_type)->common.code) == OFFSET_TYPE)
  ? global_trees[TI_INTEGER_ONE]
  : size_in_bytes (target_type));



  result = build (EXACT_DIV_EXPR, restype, op0, cp_convert (restype, op1));

  folded = fold (result);
  if (folded == result)
    ((folded)->common.constant_flag) = ((op0)->common.constant_flag) & ((op1)->common.constant_flag);
  return folded;
}





tree
build_x_unary_op (code, xarg)
     enum tree_code code;
     tree xarg;
{
  tree exp;
  int ptrmem = 0;

  if (scope_chain->x_processing_template_decl)
    return build_min_nt (code, xarg, (tree) ((void *)0));



  if (code == ADDR_EXPR
      && ((enum tree_code) (xarg)->common.code) != TEMPLATE_ID_EXPR
      && ((((((enum tree_code) (((xarg)->common.type))->common.code)) == RECORD_TYPE || (((enum tree_code) (((xarg)->common.type))->common.code)) == UNION_TYPE)
    && !(((((xarg)->common.type))->type.size) != (tree) ((void *)0)))
   || (((enum tree_code) (xarg)->common.code) == OFFSET_REF)))
                                   ;
  else
    {
      tree rval;

      rval = build_new_op (code, (3), xarg,
      (tree) ((void *)0), (tree) ((void *)0));
      if (rval || code != ADDR_EXPR)
 return rval;
    }
  if (code == ADDR_EXPR)
    {


      if (!flag_ms_extensions && ((enum tree_code) (((xarg)->common.type))->common.code) == METHOD_TYPE
   && (((enum tree_code) (xarg)->common.code) != OFFSET_REF || !((xarg)->common.lang_flag_0)))
 {
   if (((enum tree_code) (xarg)->common.code) != OFFSET_REF)
     {
       error ("invalid use of '%E' to form a pointer-to-member-function.  Use a qualified-id.",
       xarg);
       return global_trees[TI_ERROR_MARK];
     }
   else
     {
       error ("parenthesis around '%E' cannot be used to form a pointer-to-member-function",
       xarg);
       ((xarg)->common.lang_flag_0) = 1;
     }
 }

      if (((enum tree_code) (xarg)->common.code) == OFFSET_REF)
        {
          ptrmem = ((xarg)->common.lang_flag_0);

          if (!ptrmem && !flag_ms_extensions
              && ((enum tree_code) (((((xarg)->exp.operands[1]))->common.type))->common.code) == METHOD_TYPE)
     {


       xarg = build (OFFSET_REF, ((xarg)->common.type),
       ((xarg)->exp.operands[0]),
       ovl_cons (((xarg)->exp.operands[1]), (tree) ((void *)0)));
       ((xarg)->common.lang_flag_0) = ptrmem;
     }

        }
      else if (((enum tree_code) (xarg)->common.code) == TARGET_EXPR)
 warning ("taking address of temporary");
    }
  exp = build_unary_op (code, xarg, 0);
  if (((enum tree_code) (exp)->common.code) == ADDR_EXPR)
    ((exp)->common.lang_flag_0) = ptrmem;

  return exp;
}





tree
cp_truthvalue_conversion (expr)
     tree expr;
{
  tree type = ((expr)->common.type);
  if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE))
    return build_binary_op (NE_EXPR, expr, global_trees[TI_INTEGER_ZERO], 1);
  else
    return c_common_truthvalue_conversion (expr);
}



tree
condition_conversion (expr)
     tree expr;
{
  tree t;
  if (scope_chain->x_processing_template_decl)
    return expr;
  if (((enum tree_code) (expr)->common.code) == OFFSET_REF)
    expr = resolve_offset_ref (expr);
  t = perform_implicit_conversion (c_global_trees[CTI_BOOLEAN_TYPE], expr);
  t = fold (build1 (CLEANUP_POINT_EXPR, c_global_trees[CTI_BOOLEAN_TYPE], t));
  return t;
}





tree
build_address (tree t)
{
  tree addr;

  if (((t) == global_trees[TI_ERROR_MARK] || ((t) && (((t))->common.type) == global_trees[TI_ERROR_MARK])) || !cxx_mark_addressable (t))
    return global_trees[TI_ERROR_MARK];

  addr = build1 (ADDR_EXPR,
   build_pointer_type (((t)->common.type)),
   t);
  if (staticp (t))
    ((addr)->common.constant_flag) = 1;

  return addr;
}



tree
build_nop (tree type, tree expr)
{
  tree nop;

  if (type == global_trees[TI_ERROR_MARK] || ((expr) == global_trees[TI_ERROR_MARK] || ((expr) && (((expr))->common.type) == global_trees[TI_ERROR_MARK])))
    return expr;

  nop = build1 (NOP_EXPR, type, expr);
  if (((expr)->common.constant_flag))
    ((nop)->common.constant_flag) = 1;

  return nop;
}
# 3941 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_unary_op (code, xarg, noconvert)
     enum tree_code code;
     tree xarg;
     int noconvert;
{

  register tree arg = xarg;
  register tree argtype = 0;
  const char *errstring = ((void *)0);
  tree val;

  if (arg == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  switch (code)
    {
    case CONVERT_EXPR:



      if (!(arg = build_expr_type_conversion
     ((1 | 2) | 4 | 8, arg, 1)))
 errstring = "wrong type argument to unary plus";
      else
 {
   if (!noconvert)
    arg = default_conversion (arg);
   arg = build1 (NON_LVALUE_EXPR, ((arg)->common.type), arg);
   ((arg)->common.constant_flag) = ((((arg)->exp.operands[0]))->common.constant_flag);
 }
      break;

    case NEGATE_EXPR:
      if (!(arg = build_expr_type_conversion ((1 | 2) | 4, arg, 1)))
 errstring = "wrong type argument to unary minus";
      else if (!noconvert)
 arg = default_conversion (arg);
      break;

    case BIT_NOT_EXPR:
      if (((enum tree_code) (((arg)->common.type))->common.code) == COMPLEX_TYPE)
 {
   code = CONJ_EXPR;
   if (!noconvert)
     arg = default_conversion (arg);
 }
      else if (!(arg = build_expr_type_conversion (1 | 4,
         arg, 1)))
 errstring = "wrong type argument to bit-complement";
      else if (!noconvert)
 arg = default_conversion (arg);
      break;

    case ABS_EXPR:
      if (!(arg = build_expr_type_conversion ((1 | 2) | 4, arg, 1)))
 errstring = "wrong type argument to abs";
      else if (!noconvert)
 arg = default_conversion (arg);
      break;

    case CONJ_EXPR:

      if (!(arg = build_expr_type_conversion ((1 | 2) | 4, arg, 1)))
 errstring = "wrong type argument to conjugation";
      else if (!noconvert)
 arg = default_conversion (arg);
      break;

    case TRUTH_NOT_EXPR:
      arg = cp_convert (c_global_trees[CTI_BOOLEAN_TYPE], arg);
      val = invert_truthvalue (arg);
      if (arg != global_trees[TI_ERROR_MARK])
 return val;
      errstring = "in argument to unary !";
      break;

    case NOP_EXPR:
      break;

    case REALPART_EXPR:
      if (((enum tree_code) (arg)->common.code) == COMPLEX_CST)
 return ((arg)->complex.real);
      else if (((enum tree_code) (((arg)->common.type))->common.code) == COMPLEX_TYPE)
 return fold (build1 (REALPART_EXPR, ((((arg)->common.type))->common.type), arg));
      else
 return arg;

    case IMAGPART_EXPR:
      if (((enum tree_code) (arg)->common.code) == COMPLEX_CST)
 return ((arg)->complex.imag);
      else if (((enum tree_code) (((arg)->common.type))->common.code) == COMPLEX_TYPE)
 return fold (build1 (IMAGPART_EXPR, ((((arg)->common.type))->common.type), arg));
      else
 return cp_convert (((arg)->common.type), global_trees[TI_INTEGER_ZERO]);

    case PREINCREMENT_EXPR:
    case POSTINCREMENT_EXPR:
    case PREDECREMENT_EXPR:
    case POSTDECREMENT_EXPR:



      val = unary_complex_lvalue (code, arg);
      if (val != 0)
 return val;



      if (((enum tree_code) (((arg)->common.type))->common.code) == COMPLEX_TYPE)
 {
   tree real, imag;

   arg = stabilize_reference (arg);
   real = build_unary_op (REALPART_EXPR, arg, 1);
   imag = build_unary_op (IMAGPART_EXPR, arg, 1);
   return build (COMPLEX_EXPR, ((arg)->common.type),
   build_unary_op (code, real, 1), imag);
 }



      if (!(arg = build_expr_type_conversion ((1 | 2) | 8,
           arg, 1)))
 {
   if (code == PREINCREMENT_EXPR)
     errstring ="no pre-increment operator for type";
   else if (code == POSTINCREMENT_EXPR)
     errstring ="no post-increment operator for type";
   else if (code == PREDECREMENT_EXPR)
     errstring ="no pre-decrement operator for type";
   else
     errstring ="no post-decrement operator for type";
   break;
 }



      if (((cp_type_quals (((arg)->common.type)) & 0x1) != 0)
   || ((arg)->common.readonly_flag))
 readonly_error (arg, ((code == PREINCREMENT_EXPR
          || code == POSTINCREMENT_EXPR)
         ? "increment" : "decrement"),
   0);

      {
 register tree inc;
 tree result_type = ((arg)->common.type);

 arg = get_unwidened (arg, 0);
 argtype = ((arg)->common.type);


 if (((enum tree_code) (argtype)->common.code) == ENUMERAL_TYPE)
   pedwarn ("ISO C++ forbids %sing an enum",
     (code == PREINCREMENT_EXPR || code == POSTINCREMENT_EXPR)
     ? "increment" : "decrement");



 if (((enum tree_code) (argtype)->common.code) == POINTER_TYPE)
   {
     enum tree_code tmp = ((enum tree_code) (((argtype)->common.type))->common.code);
     tree type = complete_type (((argtype)->common.type));

     if (!((((type)->type.size) != (tree) ((void *)0)) || (((enum tree_code) (type)->common.code) == VOID_TYPE)))
       error ("cannot %s a pointer to incomplete type `%T'",
   ((code == PREINCREMENT_EXPR
     || code == POSTINCREMENT_EXPR)
    ? "increment" : "decrement"), ((argtype)->common.type));
     else if ((pedantic || warn_pointer_arith)
       && (tmp == FUNCTION_TYPE || tmp == METHOD_TYPE
    || tmp == VOID_TYPE || tmp == OFFSET_TYPE))
       pedwarn ("ISO C++ forbids %sing a pointer of type `%T'",
     ((code == PREINCREMENT_EXPR
       || code == POSTINCREMENT_EXPR)
      ? "increment" : "decrement"), argtype);
     inc = cxx_sizeof_or_alignof_type (((argtype)->common.type), SIZEOF_EXPR, 0);
   }
 else
   inc = global_trees[TI_INTEGER_ONE];

 inc = cp_convert (argtype, inc);



 switch (((enum tree_code) (arg)->common.code))
   {
   case NOP_EXPR:
   case CONVERT_EXPR:
   case FLOAT_EXPR:
   case FIX_TRUNC_EXPR:
   case FIX_FLOOR_EXPR:
   case FIX_ROUND_EXPR:
   case FIX_CEIL_EXPR:
     {
       tree incremented, modify, value, compound;
       if (! lvalue_p (arg) && pedantic)
  pedwarn ("cast to non-reference type used as lvalue");
       arg = stabilize_reference (arg);
       if (code == PREINCREMENT_EXPR || code == PREDECREMENT_EXPR)
  value = arg;
       else
  value = save_expr (arg);
       incremented = build (((code == PREINCREMENT_EXPR
         || code == POSTINCREMENT_EXPR)
        ? PLUS_EXPR : MINUS_EXPR),
       argtype, value, inc);

       modify = build_modify_expr (arg, NOP_EXPR, incremented);
       compound = build (COMPOUND_EXPR, ((arg)->common.type), modify, value);


       ((compound)->common.static_flag) = 1;
       return compound;
     }

   default:
     break;
   }


 if (!lvalue_or_else (arg, ((code == PREINCREMENT_EXPR
        || code == POSTINCREMENT_EXPR)
       ? "increment" : "decrement")))
   return global_trees[TI_ERROR_MARK];


 if (((arg)->common.type) == c_global_trees[CTI_BOOLEAN_TYPE])
   {
     if (code == POSTDECREMENT_EXPR || code == PREDECREMENT_EXPR)
       {
  error ("invalid use of `--' on bool variable `%D'", arg);
  return global_trees[TI_ERROR_MARK];
       }





     val = boolean_increment (code, arg);

   }
 else
   val = build (code, ((arg)->common.type), arg, inc);

 ((val)->common.side_effects_flag) = 1;
 return cp_convert (result_type, val);
      }

    case ADDR_EXPR:



      argtype = lvalue_type (arg);
      if (((enum tree_code) (argtype)->common.code) == REFERENCE_TYPE)
 {
   arg = build1
     (CONVERT_EXPR,
      build_pointer_type (((argtype)->common.type)), arg);
   ((arg)->common.constant_flag) = ((((arg)->exp.operands[0]))->common.constant_flag);
   return arg;
 }
      else if (pedantic && (((((enum tree_code) (arg)->common.code) == FUNCTION_DECL && !(((enum tree_code) (arg)->common.code) == FUNCTION_DECL && ((arg)->decl.lang_flag_7))) && ((((arg)->decl.lang_specific) ? ((arg)->decl.lang_specific)->decl_flags.language : (((enum tree_code) (arg)->common.code) == FUNCTION_DECL ? lang_c : lang_cplusplus)) == lang_c)) && ((arg)->decl.name) != (tree) ((void *)0) && ((((arg)->decl.name)) == global_trees[TI_MAIN_IDENTIFIER])))

 pedwarn ("ISO C++ forbids taking address of function `::main'");


      if (((enum tree_code) (arg)->common.code) == INDIRECT_REF)
 {


   if (arg == (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)))
     return (cfun ? (cfun->language)->x_current_class_ptr : (tree) ((void *)0));

   arg = ((arg)->exp.operands[0]);
   if (((enum tree_code) (((arg)->common.type))->common.code) == REFERENCE_TYPE)
     {
       arg = build1
  (CONVERT_EXPR,
   build_pointer_type (((((arg)->common.type))->common.type)), arg);
       ((arg)->common.constant_flag) = ((((arg)->exp.operands[0]))->common.constant_flag);
     }
   else if (lvalue_p (arg))

     return non_lvalue (arg);
   return arg;
 }


      if (((enum tree_code) (arg)->common.code) == ARRAY_REF)
 {
   if (!cxx_mark_addressable (((arg)->exp.operands[0])))
     return global_trees[TI_ERROR_MARK];
   return build_binary_op(PLUS_EXPR, ((arg)->exp.operands[0]), ((arg)->exp.operands[1]), 1);

 }





      if (((enum tree_code) (arg)->common.code) == IDENTIFIER_NODE
   && ((arg)->common.lang_flag_2))
 {
   fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 4246, __FUNCTION__);


   return build1 (ADDR_EXPR, cp_global_trees[CPTI_UNKNOWN_TYPE], arg);
 }

      if (((enum tree_code) (arg)->common.code) == COMPONENT_REF && type_unknown_p (arg)
   && !really_overloaded_fn (((arg)->exp.operands[1])))
        {
# 4265 "../../../kg++fe/gnu/cp/typeck.c"
   tree base = ((((arg)->exp.operands[0]))->common.type);
   tree name = ((get_first_fn (((arg)->exp.operands[1])))->decl.name);

   if (! flag_ms_extensions)
     {
       if (scope_chain->class_type
    && ((arg)->exp.operands[0]) == (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)))

  pedwarn ("ISO C++ forbids taking the address of an unqualified non-static member function to form a pointer to member function.  Say `&%T::%D'", base, name);
       else
  pedwarn ("ISO C++ forbids taking the address of a bound member function to form a pointer to member function.  Say `&%T::%D'", base, name);
     }
   arg = build_offset_ref (base, name);
        }

      if (type_unknown_p (arg))
 return build1 (ADDR_EXPR, cp_global_trees[CPTI_UNKNOWN_TYPE], arg);



      val = unary_complex_lvalue (code, arg);
      if (val != 0)
 return val;

      switch (((enum tree_code) (arg)->common.code))
 {
 case NOP_EXPR:
 case CONVERT_EXPR:
 case FLOAT_EXPR:
 case FIX_TRUNC_EXPR:
 case FIX_FLOOR_EXPR:
 case FIX_ROUND_EXPR:
 case FIX_CEIL_EXPR:
   if (! lvalue_p (arg) && pedantic)
     pedwarn ("ISO C++ forbids taking the address of a cast to a non-lvalue expression");
   break;

 default:
   break;
 }



      if (((enum tree_code) (arg)->common.code) == CONSTRUCTOR && (((arg)->common.lang_flag_4))
   && ((arg)->common.constant_flag))
 ;


      else if (((enum tree_code) (argtype)->common.code) != FUNCTION_TYPE
        && ((enum tree_code) (argtype)->common.code) != METHOD_TYPE
        && !non_cast_lvalue_or_else (arg, "unary `&'"))
 return global_trees[TI_ERROR_MARK];

      if (argtype != global_trees[TI_ERROR_MARK])
 argtype = build_pointer_type (argtype);

      {
 tree addr;

 if (((enum tree_code) (arg)->common.code) != COMPONENT_REF)
   addr = build_address (arg);
 else if (((((((arg)->exp.operands[1])))->decl.lang_flag_4) == 1))
   {
     error ("attempt to take address of bit-field structure member `%D'",
     ((arg)->exp.operands[1]));
     return global_trees[TI_ERROR_MARK];
   }
 else
   {



     tree field = ((arg)->exp.operands[1]);
     tree rval = build_unary_op (ADDR_EXPR, ((arg)->exp.operands[0]), 0);
     tree binfo = lookup_base (((((rval)->common.type))->common.type),
          decl_type_context (field),
          ba_check, ((void *)0));

     rval = build_base_path (PLUS_EXPR, rval, binfo, 1);
     rval = build1 (NOP_EXPR, argtype, rval);
     ((rval)->common.constant_flag) = ((((rval)->exp.operands[0]))->common.constant_flag);
     addr = fold (build (PLUS_EXPR, argtype, rval,
    cp_convert (argtype, byte_position (field))));
   }

 if (((enum tree_code) (argtype)->common.code) == POINTER_TYPE
     && ((enum tree_code) (((argtype)->common.type))->common.code) == METHOD_TYPE)
   {
     build_ptrmemfunc_type (argtype);
     addr = build_ptrmemfunc (argtype, addr, 0);
   }

 return addr;
      }

    default:
      break;
    }

  if (!errstring)
    {
      if (argtype == 0)
 argtype = ((arg)->common.type);
      return fold (build1 (code, argtype, arg));
    }

  error ("%s", errstring);
  return global_trees[TI_ERROR_MARK];
}







tree
unary_complex_lvalue (code, arg)
     enum tree_code code;
     tree arg;
{

  if (((enum tree_code) (arg)->common.code) == COMPOUND_EXPR)
    {
      tree real_result = build_unary_op (code, ((arg)->exp.operands[1]), 0);
      return build (COMPOUND_EXPR, ((real_result)->common.type),
      ((arg)->exp.operands[0]), real_result);
    }


  if (((enum tree_code) (arg)->common.code) == COND_EXPR
      || ((enum tree_code) (arg)->common.code) == MIN_EXPR || ((enum tree_code) (arg)->common.code) == MAX_EXPR)
    return rationalize_conditional_expr (code, arg);


  if (((enum tree_code) (arg)->common.code) == MODIFY_EXPR
      || ((enum tree_code) (arg)->common.code) == PREINCREMENT_EXPR
      || ((enum tree_code) (arg)->common.code) == PREDECREMENT_EXPR)
    {
      tree lvalue = ((arg)->exp.operands[0]);
      if (((lvalue)->common.side_effects_flag))
 {
   lvalue = stabilize_reference (lvalue);
   arg = build (((enum tree_code) (arg)->common.code), ((arg)->common.type),
         lvalue, ((arg)->exp.operands[1]));
 }
      return unary_complex_lvalue
 (code, build (COMPOUND_EXPR, ((lvalue)->common.type), arg, lvalue));
    }

  if (code != ADDR_EXPR)
    return 0;


  if (((enum tree_code) (arg)->common.code) == MODIFY_EXPR
      || ((enum tree_code) (arg)->common.code) == INIT_EXPR)
    {
      tree real_result = build_unary_op (code, ((arg)->exp.operands[0]), 0);
      arg = build (COMPOUND_EXPR, ((real_result)->common.type), arg, real_result);
      ((arg)->common.static_flag) = 1;
      return arg;
    }

  if (((enum tree_code) (((arg)->common.type))->common.code) == FUNCTION_TYPE
      || ((enum tree_code) (((arg)->common.type))->common.code) == METHOD_TYPE
      || ((enum tree_code) (((arg)->common.type))->common.code) == OFFSET_TYPE)
    {



      tree t;

      (void) (((((enum tree_code) (arg)->common.code) != SCOPE_REF) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 4437, __FUNCTION__), 0) : 0);

      if (((enum tree_code) (arg)->common.code) != OFFSET_REF)
 return 0;

      t = ((arg)->exp.operands[1]);


      if (((enum tree_code) (t)->common.code) == FUNCTION_DECL)
 {
   if ((((t)->decl.lang_specific)->decl_flags.destructor_attr))
     error ("taking address of destructor");
   return build_unary_op (ADDR_EXPR, t, 0);
 }
      if (((enum tree_code) (t)->common.code) == VAR_DECL)
 return build_unary_op (ADDR_EXPR, t, 0);
      else
 {
   tree type;

   if (((arg)->exp.operands[0])
       && ! is_dummy_object (((arg)->exp.operands[0]))
       && ((enum tree_code) (t)->common.code) != FIELD_DECL)
     {
       error ("taking address of bound pointer-to-member expression");
       return global_trees[TI_ERROR_MARK];
     }
   if (!((arg)->common.lang_flag_0))
     {




       arg = resolve_offset_ref (arg);

       return build_unary_op (code, arg, 0);
     }

   if (((enum tree_code) (((t)->common.type))->common.code) == REFERENCE_TYPE)
     {
       error ("cannot create pointer to reference member `%D'", t);
       return global_trees[TI_ERROR_MARK];
     }

   type = build_ptrmem_type (((t)->decl.context), ((t)->common.type));
   t = make_ptrmem_cst (type, ((arg)->exp.operands[1]));
   return t;
 }
    }




  {
    tree targ = arg;

    if (((enum tree_code) (targ)->common.code) == SAVE_EXPR)
      targ = ((targ)->exp.operands[0]);

    if (((enum tree_code) (targ)->common.code) == CALL_EXPR && (((enum tree_code) (((targ)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((targ)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((targ)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((targ)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((targ)->common.type))->type.lang_flag_5)))
      {
 if (((enum tree_code) (arg)->common.code) == SAVE_EXPR)
   targ = arg;
 else
   targ = build_cplus_new (((arg)->common.type), arg);
 return build1 (ADDR_EXPR, build_pointer_type (((arg)->common.type)), targ);
      }

    if (((enum tree_code) (arg)->common.code) == SAVE_EXPR && ((enum tree_code) (targ)->common.code) == INDIRECT_REF)
      return build (SAVE_EXPR, build_pointer_type (((arg)->common.type)),
       ((targ)->exp.operands[0]), current_function_decl, ((void *)0));
  }


  return 0;
}







_Bool
cxx_mark_addressable (exp)
     tree exp;
{
  register tree x = exp;

  while (1)
    switch (((enum tree_code) (x)->common.code))
      {
      case ADDR_EXPR:
      case COMPONENT_REF:
      case ARRAY_REF:
      case REALPART_EXPR:
      case IMAGPART_EXPR:
 x = ((x)->exp.operands[0]);
 break;

      case PARM_DECL:
 if (x == (cfun ? (cfun->language)->x_current_class_ptr : (tree) ((void *)0)))
   {
            error ("cannot take the address of `this', which is an rvalue expression");
     ((x)->common.addressable_flag) = 1;
     return 1;
   }


      case VAR_DECL:


 (void) (((((x)->decl.lang_specific) == 0 || (((x)->decl.lang_flag_3)) == 0 || ((x)->common.static_flag) || ((x)->decl.external_flag)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 4552, __FUNCTION__), 0) : 0);





      case CONST_DECL:
      case RESULT_DECL:
 if (((x)->decl.regdecl_flag) && !((x)->common.addressable_flag)
     && !((x)->decl.artificial_flag) && extra_warnings)
   warning ("address requested for `%D', which is declared `register'",
        x);
 ((x)->common.addressable_flag) = 1;
 put_var_into_stack (x, 1);
 return 1;

      case FUNCTION_DECL:
 ((x)->common.addressable_flag) = 1;
 ((decl_assembler_name (x))->common.addressable_flag) = 1;
 return 1;

      case CONSTRUCTOR:
 ((x)->common.addressable_flag) = 1;
 return 1;

      case TARGET_EXPR:
 ((x)->common.addressable_flag) = 1;
 cxx_mark_addressable (((x)->exp.operands[0]));
 return 1;

      default:
 return 1;
    }
}



tree
build_x_conditional_expr (ifexp, op1, op2)
     tree ifexp, op1, op2;
{
  if (scope_chain->x_processing_template_decl)
    return build_min_nt (COND_EXPR, ifexp, op1, op2);

  return build_conditional_expr (ifexp, op1, op2);
}




tree
build_x_compound_expr (list)
     tree list;
{
  tree rest = ((list)->common.chain);
  tree result;

  if (scope_chain->x_processing_template_decl)
    return build_min_nt (COMPOUND_EXPR, list, (tree) ((void *)0));

  if (rest == (tree) ((void *)0))
    return build_compound_expr (list);

  result = build_opfncall (COMPOUND_EXPR, (3),
      ((list)->list.value), ((rest)->list.value), (tree) ((void *)0));
  if (result)
    return build_x_compound_expr (tree_cons ((tree) ((void *)0), result,
        ((rest)->common.chain)));

  if (! ((((list)->list.value))->common.side_effects_flag))
    {




      if ((extra_warnings || warn_unused_value)
           && !(((enum tree_code) (((list)->list.value))->common.code) == CONVERT_EXPR
                && (((enum tree_code) (((((list)->list.value))->common.type))->common.code) == VOID_TYPE)))
        warning("left-hand operand of comma expression has no effect");
    }





  return build_compound_expr
    (tree_cons ((tree) ((void *)0), ((list)->list.value),
       build_tree_list ((tree) ((void *)0),
          build_x_compound_expr (rest))));
}




tree
build_compound_expr (list)
     tree list;
{
  register tree rest;
  tree first;

  ((list)->list.value) = decl_constant_value (((list)->list.value));

  if (((list)->common.chain) == 0)
    {


      if (((enum tree_code) (list)->common.code) == NOP_EXPR
   && ((list)->common.type) == ((((list)->exp.operands[0]))->common.type))
 list = ((list)->exp.operands[0]);

      return ((list)->list.value);
    }

  first = ((list)->list.value);
  first = convert_to_void (first, "left-hand operand of comma");
  if (first == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  rest = build_compound_expr (((list)->common.chain));
  if (rest == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];


  if (! ((first)->common.side_effects_flag) && ! pedantic)
    return rest;

  return build (COMPOUND_EXPR, ((rest)->common.type), first, rest);
}




static void
check_for_casting_away_constness (tree src_type, tree dest_type)
{
  if (casts_away_constness (src_type, dest_type))
    error ("static_cast from type `%T' to type `%T' casts away constness",
    src_type, dest_type);
}



tree
build_static_cast (type, expr)
   tree type, expr;
{
  tree intype;
  tree result;

  if (type == global_trees[TI_ERROR_MARK] || expr == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (expr)->common.code) == OFFSET_REF)
    expr = resolve_offset_ref (expr);

  if (scope_chain->x_processing_template_decl)
    {
      tree t = build_min (STATIC_CAST_EXPR, type, expr);
      return t;
    }



  if (((enum tree_code) (type)->common.code) != REFERENCE_TYPE
      && ((enum tree_code) (expr)->common.code) == NOP_EXPR
      && ((expr)->common.type) == ((((expr)->exp.operands[0]))->common.type))
    expr = ((expr)->exp.operands[0]);

  intype = ((expr)->common.type);
# 4739 "../../../kg++fe/gnu/cp/typeck.c"
  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE
      && (((((enum tree_code) (((type)->common.type))->common.code)) == RECORD_TYPE || (((enum tree_code) (((type)->common.type))->common.code)) == UNION_TYPE) && (((enum tree_code) (((type)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((type)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((type)->common.type))->type.lang_flag_5)))
      && (((((enum tree_code) (intype)->common.code)) == RECORD_TYPE || (((enum tree_code) (intype)->common.code)) == UNION_TYPE) && (((enum tree_code) (intype)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (intype)->common.code) == TYPENAME_TYPE || ((enum tree_code) (intype)->common.code) == TYPEOF_TYPE || ((enum tree_code) (intype)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((intype)->type.lang_flag_5)))
      && real_non_cast_lvalue_p (expr)
      && (lookup_base ((((type)->common.type)), intype, ba_any, ((void *)0)) != (tree) ((void *)0))
      && can_convert (build_pointer_type (((intype)->type.main_variant)),
        build_pointer_type (((((type)->common.type))->type.main_variant)))

      && at_least_as_qualified_p (((type)->common.type), intype))
    {



      tree base = lookup_base (((type)->common.type), intype, ba_check, ((void *)0));



      expr = build_base_path (MINUS_EXPR, build_address (expr),
         base, 0);


      return convert_from_reference (build_nop (type, expr));
    }







  result = perform_direct_initialization_if_possible (type, expr);
  if (result)
    return convert_from_reference (result);




  if (((enum tree_code) (type)->common.code) == VOID_TYPE)
    return convert_to_void (expr, ((void *)0));
# 4792 "../../../kg++fe/gnu/cp/typeck.c"
  if ((((((enum tree_code) (type)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (type)->common.code) == INTEGER_TYPE) || ((enum tree_code) (type)->common.code) == REAL_TYPE) && ((((enum tree_code) (intype)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (intype)->common.code) == INTEGER_TYPE) || ((enum tree_code) (intype)->common.code) == REAL_TYPE))




      || (((((enum tree_code) (type)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (type)->common.code) == INTEGER_TYPE) || ((enum tree_code) (type)->common.code) == ENUMERAL_TYPE)
   && ((((enum tree_code) (intype)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (intype)->common.code) == INTEGER_TYPE) || ((enum tree_code) (intype)->common.code) == ENUMERAL_TYPE)))


      return build_c_cast (type, expr);
  if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) && (((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) != OFFSET_TYPE)
      && (((((enum tree_code) (((type)->common.type))->common.code)) == RECORD_TYPE || (((enum tree_code) (((type)->common.type))->common.code)) == UNION_TYPE) && (((enum tree_code) (((type)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((type)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((type)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((type)->common.type))->type.lang_flag_5)))
      && (((((enum tree_code) (((intype)->common.type))->common.code)) == RECORD_TYPE || (((enum tree_code) (((intype)->common.type))->common.code)) == UNION_TYPE) && (((enum tree_code) (((intype)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((intype)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((intype)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((intype)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((intype)->common.type))->type.lang_flag_5)))
      && can_convert (build_pointer_type (((((intype)->common.type))->type.main_variant)),

        build_pointer_type (((((type)->common.type))->type.main_variant))))

    {
      tree base;

      check_for_casting_away_constness (intype, type);
      base = lookup_base (((type)->common.type), ((intype)->common.type),
     ba_check, ((void *)0));
      return build_base_path (MINUS_EXPR, expr, base, 0);
    }
  if (((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE) && (((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == OFFSET_TYPE))
      || ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->type.lang_specific) && ((&((type)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && (((enum tree_code) (intype)->common.code) == RECORD_TYPE && ((intype)->type.lang_specific) && ((&((intype)->type.lang_specific)->u.c)->ptrmemfunc_flag))))
    {
      tree c1;
      tree c2;
      tree t1;
      tree t2;

      c1 = ((((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == OFFSET_TYPE) ? ((((intype)->common.type))->type.maxval) : (((((((((intype)->type.values))->common.type)))->common.type))->type.maxval));
      c2 = ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE) ? ((((type)->common.type))->type.maxval) : (((((((((type)->type.values))->common.type)))->common.type))->type.maxval));

      if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE))
 {
   t1 = (build_ptrmem_type
  (c1,
   ((((((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == OFFSET_TYPE) ? ((((intype)->common.type))->common.type) : (((((((intype)->type.values))->common.type)))->common.type)))->type.main_variant)));
   t2 = (build_ptrmem_type
  (c2,
   ((((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE) ? ((((type)->common.type))->common.type) : (((((((type)->type.values))->common.type)))->common.type)))->type.main_variant)));
 }
      else
 {
   t1 = intype;
   t2 = type;
 }
      if (can_convert (t1, t2))
 {
   check_for_casting_away_constness (intype, type);
   if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE))
     {
       if (((enum tree_code) (expr)->common.code) == PTRMEM_CST)
  expr = cplus_expand_constant (expr);
       expr = build_binary_op(PLUS_EXPR, cp_convert (global_trees[TI_PTRDIFF_TYPE], expr), get_delta_difference (c1, c2, 1), 1);



       return build_nop (type, expr);
     }
   else
     return build_ptrmemfunc ((((((type)->type.values))->common.type)), expr,
                   1);
 }
    }







  if (((enum tree_code) (intype)->common.code) == POINTER_TYPE
      && (((enum tree_code) (((intype)->common.type))->common.code) == VOID_TYPE)
      && ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) && ((enum tree_code) (((type)->common.type))->common.code) != FUNCTION_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != VOID_TYPE))
    {
      check_for_casting_away_constness (intype, type);
      return build_nop (type, expr);
    }

  error ("invalid static_cast from type `%T' to type `%T'", intype, type);
  return global_trees[TI_ERROR_MARK];
}

tree
build_reinterpret_cast (type, expr)
   tree type, expr;
{
  tree intype;

  if (type == global_trees[TI_ERROR_MARK] || expr == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (expr)->common.code) == OFFSET_REF)
    expr = resolve_offset_ref (expr);

  if (scope_chain->x_processing_template_decl)
    {
      tree t = build_min (REINTERPRET_CAST_EXPR, type, expr);
      return t;
    }

  if (((enum tree_code) (type)->common.code) != REFERENCE_TYPE)
    {
      expr = decay_conversion (expr);



      if (((enum tree_code) (expr)->common.code) == NOP_EXPR
   && ((expr)->common.type) == ((((expr)->exp.operands[0]))->common.type))
 expr = ((expr)->exp.operands[0]);
    }

  intype = ((expr)->common.type);

  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    {
      if (! real_lvalue_p (expr))
 {
   error ("invalid reinterpret_cast of an rvalue expression of type `%T' to type `%T'", intype, type);
   return global_trees[TI_ERROR_MARK];
 }
      expr = build_unary_op (ADDR_EXPR, expr, 0);
      if (expr != global_trees[TI_ERROR_MARK])
 expr = build_reinterpret_cast
   (build_pointer_type (((type)->common.type)), expr);
      if (expr != global_trees[TI_ERROR_MARK])
 expr = build_indirect_ref (expr, 0);
      return expr;
    }
  else if (comptypes ((((intype)->type.main_variant)), (((type)->type.main_variant)), 0))
    return build_static_cast (type, expr);

  if ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) && (((enum tree_code) (intype)->common.code) == INTEGER_TYPE
       || ((enum tree_code) (intype)->common.code) == ENUMERAL_TYPE))
            ;
  else if (((enum tree_code) (type)->common.code) == INTEGER_TYPE && (((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) != OFFSET_TYPE))
    {
      if (((type)->type.precision) < ((intype)->type.precision))
 pedwarn ("reinterpret_cast from `%T' to `%T' loses precision",
      intype, type);
    }
  else if (((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE) && (((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == FUNCTION_TYPE))
    || ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->type.lang_specific) && ((&((type)->type.lang_specific)->u.c)->ptrmemfunc_flag)) && (((enum tree_code) (intype)->common.code) == RECORD_TYPE && ((intype)->type.lang_specific) && ((&((intype)->type.lang_specific)->u.c)->ptrmemfunc_flag))))
    {
      expr = decl_constant_value (expr);
      return fold (build1 (NOP_EXPR, type, expr));
    }
  else if (((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == OFFSET_TYPE) && (((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == OFFSET_TYPE))
    || (((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) && ((enum tree_code) (((type)->common.type))->common.code) != FUNCTION_TYPE) && ((((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) != OFFSET_TYPE) && ((enum tree_code) (((intype)->common.type))->common.code) != FUNCTION_TYPE)))
    {
      if (! comp_ptr_ttypes_reinterpret (((type)->common.type), ((intype)->common.type)))
 pedwarn ("reinterpret_cast from `%T' to `%T' casts away const (or volatile)",
      intype, type);

      expr = decl_constant_value (expr);
      return fold (build1 (NOP_EXPR, type, expr));
    }
  else if (((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE) && ((((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) != OFFSET_TYPE) && ((enum tree_code) (((intype)->common.type))->common.code) != FUNCTION_TYPE))
    || ((((enum tree_code) (intype)->common.code) == POINTER_TYPE && ((enum tree_code) (((intype)->common.type))->common.code) == FUNCTION_TYPE) && ((((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE) && ((enum tree_code) (((type)->common.type))->common.code) != FUNCTION_TYPE)))
    {
      pedwarn ("ISO C++ forbids casting between pointer-to-function and pointer-to-object");
      expr = decl_constant_value (expr);
      return fold (build1 (NOP_EXPR, type, expr));
    }
  else
    {
      error ("invalid reinterpret_cast from type `%T' to type `%T'",
                intype, type);
      return global_trees[TI_ERROR_MARK];
    }

  return cp_convert (type, expr);
}

tree
build_const_cast (type, expr)
   tree type, expr;
{
  tree intype;

  if (type == global_trees[TI_ERROR_MARK] || expr == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (expr)->common.code) == OFFSET_REF)
    expr = resolve_offset_ref (expr);

  if (scope_chain->x_processing_template_decl)
    {
      tree t = build_min (CONST_CAST_EXPR, type, expr);
      return t;
    }

  if (!(((enum tree_code) (type)->common.code) == POINTER_TYPE || ((enum tree_code) (type)->common.code) == REFERENCE_TYPE))
    error ("invalid use of const_cast with type `%T', which is not a pointer, reference, nor a pointer-to-data-member type", type);
  else if (((enum tree_code) (((type)->common.type))->common.code) == FUNCTION_TYPE)
    {
      error ("invalid use of const_cast with type `%T', which is a pointer or reference to a function type", type);
      return global_trees[TI_ERROR_MARK];
    }

  if (((enum tree_code) (type)->common.code) != REFERENCE_TYPE)
    {
      expr = decay_conversion (expr);



      if (((enum tree_code) (expr)->common.code) == NOP_EXPR
   && ((expr)->common.type) == ((((expr)->exp.operands[0]))->common.type))
 expr = ((expr)->exp.operands[0]);
    }

  intype = ((expr)->common.type);

  if (comptypes ((((intype)->type.main_variant)), (((type)->type.main_variant)), 0))
    return build_static_cast (type, expr);
  else if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    {
      if (! real_lvalue_p (expr))
 {
   error ("invalid const_cast of an rvalue of type `%T' to type `%T'", intype, type);
   return global_trees[TI_ERROR_MARK];
 }

      if (comp_ptr_ttypes_const (((type)->common.type), intype))
 {
   expr = build_unary_op (ADDR_EXPR, expr, 0);
   expr = build1 (NOP_EXPR, type, expr);
   return convert_from_reference (expr);
 }
    }
  else if (((enum tree_code) (type)->common.code) == POINTER_TYPE
    && ((enum tree_code) (intype)->common.code) == POINTER_TYPE
    && comp_ptr_ttypes_const (((type)->common.type), ((intype)->common.type)))
    return cp_convert (type, expr);

  error ("invalid const_cast from type `%T' to type `%T'", intype, type);
  return global_trees[TI_ERROR_MARK];
}






tree
build_c_cast (type, expr)
     tree type, expr;
{
  register tree value = expr;
  tree otype;

  if (type == global_trees[TI_ERROR_MARK] || expr == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (scope_chain->x_processing_template_decl)
    {
      tree t = build_min (CAST_EXPR, type,
     tree_cons ((tree) ((void *)0), value, (tree) ((void *)0)));
      return t;
    }



  if (((enum tree_code) (type)->common.code) != REFERENCE_TYPE
      && ((enum tree_code) (value)->common.code) == NOP_EXPR
      && ((value)->common.type) == ((((value)->exp.operands[0]))->common.type))
    value = ((value)->exp.operands[0]);

  if (((enum tree_code) (value)->common.code) == OFFSET_REF)
    value = resolve_offset_ref (value);

  if (((enum tree_code) (type)->common.code) == ARRAY_TYPE)
    {


      if (((enum tree_code) (((expr)->common.type))->common.code) == POINTER_TYPE)
 {
   pedwarn ("ISO C++ forbids casting to an array type `%T'", type);
   type = build_pointer_type (((type)->common.type));
 }
      else
 {
   error ("ISO C++ forbids casting to an array type `%T'", type);
   return global_trees[TI_ERROR_MARK];
 }
    }

  if (((enum tree_code) (type)->common.code) == FUNCTION_TYPE
      || ((enum tree_code) (type)->common.code) == METHOD_TYPE)
    {
      error ("invalid cast to function type `%T'", type);
      return global_trees[TI_ERROR_MARK];
    }

  if (((enum tree_code) (type)->common.code) == VOID_TYPE)
    {



      value = convert_to_void (value, ((void *)0));
      return value;
    }

  if (!(complete_type_or_diagnostic ((type), ((tree) ((void *)0)), 0)))
    return global_trees[TI_ERROR_MARK];
# 5115 "../../../kg++fe/gnu/cp/typeck.c"
  if (!(((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5)))
    {
      if (((enum tree_code) (((value)->common.type))->common.code) == FUNCTION_TYPE
   || (((enum tree_code) (((value)->common.type))->common.code) == METHOD_TYPE

       && ! (((enum tree_code) (type)->common.code) == POINTER_TYPE
      && bound_pmf_p (value)))
   || ((enum tree_code) (((value)->common.type))->common.code) == ARRAY_TYPE
   || ((enum tree_code) (((value)->common.type))->common.code) == REFERENCE_TYPE)
 value = default_conversion (value);
    }
  else if (((enum tree_code) (((value)->common.type))->common.code) == REFERENCE_TYPE)




    value = convert_from_reference (value);

  otype = ((value)->common.type);



  if (warn_cast_qual
      && ((enum tree_code) (type)->common.code) == POINTER_TYPE
      && ((enum tree_code) (otype)->common.code) == POINTER_TYPE
      && !at_least_as_qualified_p (((type)->common.type),
       ((otype)->common.type)))
    warning ("cast from `%T' to `%T' discards qualifiers from pointer target type",
                otype, type);

  if (((enum tree_code) (type)->common.code) == INTEGER_TYPE
      && ((enum tree_code) (otype)->common.code) == POINTER_TYPE
      && ((type)->type.precision) != ((otype)->type.precision))
    warning ("cast from pointer to integer of different size");

  if (((enum tree_code) (type)->common.code) == POINTER_TYPE
      && ((enum tree_code) (otype)->common.code) == INTEGER_TYPE
      && ((type)->type.precision) != ((otype)->type.precision)

      && !((value)->common.constant_flag))
    warning ("cast to pointer from integer of different size");

  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    value = (convert_from_reference
      (convert_to_reference (type, value, (1 | 2 | 4 | 8 | 16 | 64),
        (2), (tree) ((void *)0))));
  else
    {
      tree ovalue;

      value = decl_constant_value (value);

      ovalue = value;
      value = convert_force (type, value, (1 | 2 | 4 | 8 | 16 | 64));


      if (((enum tree_code) (value)->common.code) == INTEGER_CST)
 {
   ((value)->common.public_flag) = ((ovalue)->common.public_flag);
   ((value)->common.static_flag) = ((ovalue)->common.static_flag);
 }
    }



  if (1 && warn_cast_align
      && ((enum tree_code) (type)->common.code) == POINTER_TYPE
      && ((enum tree_code) (otype)->common.code) == POINTER_TYPE
      && ((enum tree_code) (((otype)->common.type))->common.code) != VOID_TYPE
      && ((enum tree_code) (((otype)->common.type))->common.code) != FUNCTION_TYPE
      && (((((otype)->common.type))->type.size) != (tree) ((void *)0))
      && (((((type)->common.type))->type.size) != (tree) ((void *)0))
      && ((((type)->common.type))->type.align) > ((((otype)->common.type))->type.align))
    warning ("cast from `%T' to `%T' increases required alignment of target type",
                otype, type);



  if (((enum tree_code) (type)->common.code) != REFERENCE_TYPE && value == expr
      && real_lvalue_p (value))
    value = non_lvalue (value);

  return value;
}
# 5207 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_modify_expr (lhs, modifycode, rhs)
     tree lhs;
     enum tree_code modifycode;
     tree rhs;
{
  register tree result;
  tree newrhs = rhs;
  tree lhstype = ((lhs)->common.type);
  tree olhstype = lhstype;
  tree olhs = lhs;


  if (lhs == global_trees[TI_ERROR_MARK] || rhs == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];


  switch (((enum tree_code) (lhs)->common.code))
    {

    case PREDECREMENT_EXPR:
    case PREINCREMENT_EXPR:
      if (((((lhs)->exp.operands[0]))->common.side_effects_flag))
 lhs = build (((enum tree_code) (lhs)->common.code), ((lhs)->common.type),
       stabilize_reference (((lhs)->exp.operands[0])),
       ((lhs)->exp.operands[1]));
      return build (COMPOUND_EXPR, lhstype,
      lhs,
      build_modify_expr (((lhs)->exp.operands[0]),
           modifycode, rhs));


    case COMPOUND_EXPR:
      newrhs = build_modify_expr (((lhs)->exp.operands[1]),
      modifycode, rhs);
      if (newrhs == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
      return build (COMPOUND_EXPR, lhstype,
      ((lhs)->exp.operands[0]), newrhs);

    case MODIFY_EXPR:
      if (((((lhs)->exp.operands[0]))->common.side_effects_flag))
 lhs = build (((enum tree_code) (lhs)->common.code), ((lhs)->common.type),
       stabilize_reference (((lhs)->exp.operands[0])),
       ((lhs)->exp.operands[1]));
      newrhs = build_modify_expr (((lhs)->exp.operands[0]), modifycode, rhs);
      if (newrhs == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
      return build (COMPOUND_EXPR, lhstype, lhs, newrhs);


    case COND_EXPR:
      {



 tree cond;
 tree preeval = (tree) ((void *)0);

 rhs = stabilize_expr (rhs, &preeval);



 if (!lvalue_or_else (lhs, "assignment"))
   return global_trees[TI_ERROR_MARK];

 cond = build_conditional_expr
   (((lhs)->exp.operands[0]),
    build_modify_expr (cp_convert (((lhs)->common.type),
       ((lhs)->exp.operands[1])),
         modifycode, rhs),
    build_modify_expr (cp_convert (((lhs)->common.type),
       ((lhs)->exp.operands[2])),
         modifycode, rhs));

 if (cond == global_trees[TI_ERROR_MARK])
   return cond;


 return build (COMPOUND_EXPR, ((lhs)->common.type), preeval, cond);
      }

    case OFFSET_REF:
      lhs = resolve_offset_ref (lhs);
      if (lhs == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
      olhstype = lhstype = ((lhs)->common.type);

    default:
      break;
    }

  if (modifycode == INIT_EXPR)
    {
      if (((enum tree_code) (rhs)->common.code) == CONSTRUCTOR)
 {
   (void) (((comptypes ((((rhs)->common.type)), (lhstype), 0)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5304, __FUNCTION__), 0) : 0);

   result = build (INIT_EXPR, lhstype, lhs, rhs);
   ((result)->common.side_effects_flag) = 1;
   return result;
 }
      else if (! (((enum tree_code) (lhstype)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (lhstype)->common.code) == TYPENAME_TYPE || ((enum tree_code) (lhstype)->common.code) == TYPEOF_TYPE || ((enum tree_code) (lhstype)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((lhstype)->type.lang_flag_5)))
                           ;
      else
 {
   result = build_special_member_call (lhs, cp_global_trees[CPTI_COMPLETE_CTOR_IDENTIFIER],
           build_tree_list ((tree) ((void *)0), rhs),
           ((lhstype)->type.binfo),
           (3));
   if (result == (tree) ((void *)0))
     return global_trees[TI_ERROR_MARK];
   return result;
 }
    }
  else
    {
      if (((enum tree_code) (lhstype)->common.code) == REFERENCE_TYPE)
 {
   lhs = convert_from_reference (lhs);
   olhstype = lhstype = ((lhs)->common.type);
 }
      lhs = require_complete_type (lhs);
      if (lhs == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];

      if (modifycode == NOP_EXPR)
 {

   if (! (((enum tree_code) (lhstype)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (lhstype)->common.code) == TYPENAME_TYPE || ((enum tree_code) (lhstype)->common.code) == TYPEOF_TYPE || ((enum tree_code) (lhstype)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((lhstype)->type.lang_flag_5)))
                               ;
   else
     {
       result = build_opfncall (MODIFY_EXPR, (3),
           lhs, rhs, make_node (NOP_EXPR));
       if (result == (tree) ((void *)0))
  return global_trees[TI_ERROR_MARK];
       return result;
     }
   lhstype = olhstype;
 }
      else
 {




   (void) (((!(((REFERENCE_TYPE) == ((enum tree_code) (lhstype)->common.code) && (((enum tree_code) (((lhstype)->common.type))->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (((lhstype)->common.type))->common.code) == TYPENAME_TYPE || ((enum tree_code) (((lhstype)->common.type))->common.code) == TYPEOF_TYPE || ((enum tree_code) (((lhstype)->common.type))->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((((lhstype)->common.type))->type.lang_flag_5))) || (((enum tree_code) (lhstype)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (lhstype)->common.code) == TYPENAME_TYPE || ((enum tree_code) (lhstype)->common.code) == TYPEOF_TYPE || ((enum tree_code) (lhstype)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((lhstype)->type.lang_flag_5)))) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5355, __FUNCTION__), 0) : 0);

   lhs = stabilize_reference (lhs);
   newrhs = build_binary_op(modifycode, lhs, rhs, 1);
   if (newrhs == global_trees[TI_ERROR_MARK])
     {
       error ("  in evaluation of `%Q(%#T, %#T)'", modifycode,
       ((lhs)->common.type), ((rhs)->common.type));
       return global_trees[TI_ERROR_MARK];
     }


   modifycode = NOP_EXPR;
 }
      (void) (((((enum tree_code) (lhstype)->common.code) != REFERENCE_TYPE) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5368, __FUNCTION__), 0) : 0);
      (void) (((((enum tree_code) (((newrhs)->common.type))->common.code) != REFERENCE_TYPE) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5370, __FUNCTION__), 0) : 0);

    }
# 5380 "../../../kg++fe/gnu/cp/typeck.c"
  switch (((enum tree_code) (lhs)->common.code))
    {
    case NOP_EXPR:
    case CONVERT_EXPR:
    case FLOAT_EXPR:
    case FIX_TRUNC_EXPR:
    case FIX_FLOOR_EXPR:
    case FIX_ROUND_EXPR:
    case FIX_CEIL_EXPR:
      {
 tree inner_lhs = ((lhs)->exp.operands[0]);
 tree result;

 if (((enum tree_code) (((newrhs)->common.type))->common.code) == ARRAY_TYPE
     || ((enum tree_code) (((newrhs)->common.type))->common.code) == FUNCTION_TYPE
     || ((enum tree_code) (((newrhs)->common.type))->common.code) == METHOD_TYPE
     || ((enum tree_code) (((newrhs)->common.type))->common.code) == OFFSET_TYPE)
   newrhs = default_conversion (newrhs);



 if (! lvalue_p (lhs))
   pedwarn ("ISO C++ forbids cast to non-reference type used as lvalue");

 result = build_modify_expr (inner_lhs, NOP_EXPR,
        cp_convert (((inner_lhs)->common.type),
      cp_convert (lhstype, newrhs)));
 if (result == global_trees[TI_ERROR_MARK])
   return result;
 return cp_convert (((lhs)->common.type), result);
      }

    default:
      break;
    }




  if (!lvalue_or_else (lhs, "assignment"))
    return global_trees[TI_ERROR_MARK];



  if (modifycode != INIT_EXPR
      && (((lhs)->common.readonly_flag) || ((cp_type_quals (lhstype) & 0x1) != 0)


   || ((enum tree_code) (((lhs)->common.type))->common.code) == FUNCTION_TYPE
   || ((enum tree_code) (((lhs)->common.type))->common.code) == METHOD_TYPE


   || (((((enum tree_code) (lhstype)->common.code)) == RECORD_TYPE || (((enum tree_code) (lhstype)->common.code)) == UNION_TYPE)
       && ((lhstype)->type.lang_flag_0))))
    readonly_error (lhs, "assignment", 0);





  if (((enum tree_code) (lhs)->common.code) == COMPONENT_REF
      && (((enum tree_code) (lhstype)->common.code) == INTEGER_TYPE
   || ((enum tree_code) (lhstype)->common.code) == REAL_TYPE
   || ((enum tree_code) (lhstype)->common.code) == ENUMERAL_TYPE))
    {
      lhstype = ((get_unwidened (lhs, 0))->common.type);




      if (lhstype != ((lhs)->common.type))
 {
   lhs = copy_node (lhs);
   ((lhs)->common.type) = lhstype;
 }
    }




  if (((enum tree_code) (lhstype)->common.code) != REFERENCE_TYPE)
    {
      if (((lhs)->common.side_effects_flag))
 lhs = stabilize_reference (lhs);
      if (((newrhs)->common.side_effects_flag))
 newrhs = stabilize_reference (newrhs);
    }




  if (((enum tree_code) (lhstype)->common.code) == ARRAY_TYPE)
    {
      int from_array;

      if (!comptypes ((((lhstype)->type.main_variant)), (((((rhs)->common.type))->type.main_variant)), 1))

 {
   error ("incompatible types in assignment of `%T' to `%T'",
   ((rhs)->common.type), lhstype);
   return global_trees[TI_ERROR_MARK];
 }


      if (! ((current_function_decl)->decl.artificial_flag))
 pedwarn ("ISO C++ forbids assignment of arrays");

      from_array = ((enum tree_code) (((newrhs)->common.type))->common.code) == ARRAY_TYPE
            ? 1 + (modifycode != INIT_EXPR): 0;
      return build_vec_init (lhs, (tree) ((void *)0), newrhs, from_array);
    }

  if (modifycode == INIT_EXPR)
    newrhs = convert_for_initialization (lhs, lhstype, newrhs, (3),
      "initialization", (tree) ((void *)0), 0);
  else
    {

      if (((enum tree_code) (olhstype)->common.code) == ENUMERAL_TYPE
   && ((enum tree_code) (lhstype)->common.code) == INTEGER_TYPE)
 {
   newrhs = convert_for_assignment (olhstype, newrhs, "assignment",
        (tree) ((void *)0), 0);
   newrhs = convert_force (lhstype, newrhs, 0);
 }
      else
 newrhs = convert_for_assignment (lhstype, newrhs, "assignment",
      (tree) ((void *)0), 0);
      if (((enum tree_code) (newrhs)->common.code) == CALL_EXPR
   && ((lhstype)->type.needs_constructing_flag))
 newrhs = build_cplus_new (lhstype, newrhs);





      if (((enum tree_code) (newrhs)->common.code) == TARGET_EXPR)
 newrhs = build (COMPOUND_EXPR, ((newrhs)->common.type), newrhs,
   ((newrhs)->exp.operands[0]));
    }

  if (newrhs == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (newrhs)->common.code) == COND_EXPR)
    {
      tree lhs1;
      tree cond = ((newrhs)->exp.operands[0]);

      if (((lhs)->common.side_effects_flag))
 cond = build_compound_expr (tree_cons
        ((tree) ((void *)0), lhs,
         build_tree_list ((tree) ((void *)0), cond)));





      lhs1 = break_out_calls (lhs);

      if (lhs == lhs1)

 result = build (modifycode == NOP_EXPR ? MODIFY_EXPR : INIT_EXPR,
   lhstype, lhs, newrhs);
      else
 {
   tree result_type = ((newrhs)->common.type);


   result
     = build (COND_EXPR, result_type, cond,
       build_modify_expr (lhs, modifycode,
     cp_convert (result_type,
          ((newrhs)->exp.operands[1]))),
       build_modify_expr (lhs1, modifycode,
     cp_convert (result_type,
          ((newrhs)->exp.operands[2]))));
 }
    }
  else
    result = build (modifycode == NOP_EXPR ? MODIFY_EXPR : INIT_EXPR,
      lhstype, lhs, newrhs);

  ((result)->common.side_effects_flag) = 1;






  if (olhstype == ((result)->common.type))
    return result;


  if (((enum tree_code) (((result)->common.type))->common.code) == INTEGER_TYPE
      && ((enum tree_code) (olhstype)->common.code) == ENUMERAL_TYPE)
    {
      result = build (COMPOUND_EXPR, olhstype, result, olhs);
      ((result)->common.static_flag) = 1;
      return result;
    }
  return convert_for_assignment (olhstype, result, "assignment",
     (tree) ((void *)0), 0);
}

tree
build_x_modify_expr (lhs, modifycode, rhs)
     tree lhs;
     enum tree_code modifycode;
     tree rhs;
{
  if (scope_chain->x_processing_template_decl)
    return build_min_nt (MODOP_EXPR, lhs,
    build_min_nt (modifycode, (tree) ((void *)0), (tree) ((void *)0)), rhs);

  if (modifycode != NOP_EXPR)
    {
      tree rval = build_opfncall (MODIFY_EXPR, (3), lhs, rhs,
      make_node (modifycode));
      if (rval)
 return rval;
    }




  if(((enum tree_code) (lhs)->common.code) == ARRAY_REF)
  {
     tree opnd0 = ((lhs)->exp.operands[0]);
     while(((enum tree_code) (opnd0)->common.code) == ARRAY_REF)
  opnd0 = ((opnd0)->exp.operands[0]);
     if(opnd0 && (((enum tree_code) (opnd0)->common.code) == VAR_DECL) && (((opnd0)->decl.v1buf_flag)||((opnd0)->decl.v2buf_flag)||((opnd0)->decl.v4buf_flag)))
     {
        error("direct assignment to vbuf array is forbidden");
     }
  }

  return build_modify_expr (lhs, modifycode, rhs);
}
# 5630 "../../../kg++fe/gnu/cp/typeck.c"
static tree
get_delta_difference (from, to, force)
     tree from, to;
     int force;
{
  tree delta = global_trees[TI_INTEGER_ZERO];
  tree binfo;
  tree virt_binfo;
  base_kind kind;

  binfo = lookup_base (to, from, ba_check, &kind);
  if (kind == bk_inaccessible || kind == bk_ambig)
    {
      error ("   in pointer to member function conversion");
      return delta;
    }
  if (!binfo)
    {
      if (!force)
 {
   error_not_base_type (from, to);
   error ("   in pointer to member conversion");
   return delta;
 }
      binfo = lookup_base (from, to, ba_check, &kind);
      if (binfo == 0)
 return delta;
      virt_binfo = binfo_from_vbase (binfo);

      if (virt_binfo)
        {

          warning ("pointer to member cast via virtual base `%T' of `%T'",
               ((virt_binfo)->common.type),
               (((((virt_binfo))->vec.a[0]))->common.type));
          return delta;
        }
      delta = (((binfo))->vec.a[1]);
      delta = cp_convert (global_trees[TI_PTRDIFF_TYPE], delta);
      delta = build_binary_op(MINUS_EXPR, global_trees[TI_INTEGER_ZERO], delta, 1);



      return delta;
    }

  virt_binfo = binfo_from_vbase (binfo);
  if (virt_binfo)
    {

      if (force)
        warning ("pointer to member cast via virtual base `%T' of `%T'",
                    ((virt_binfo)->common.type),
                    (((((virt_binfo))->vec.a[0]))->common.type));
      else
 error ("pointer to member conversion via virtual base `%T' of `%T'",
    ((virt_binfo)->common.type),
                  (((((virt_binfo))->vec.a[0]))->common.type));
      return delta;
    }
  delta = (((binfo))->vec.a[1]);

  return cp_convert (global_trees[TI_PTRDIFF_TYPE], delta);
}




tree
build_ptrmemfunc1 (type, delta, pfn)
     tree type, delta, pfn;
{
  tree u = (tree) ((void *)0);
  tree delta_field;
  tree pfn_field;


  pfn_field = ((type)->type.values);
  delta_field = ((pfn_field)->common.chain);


  delta = convert_and_check (cp_global_trees[CPTI_DELTA_TYPE], delta);


  u = tree_cons (pfn_field, pfn,
   build_tree_list (delta_field, delta));
  u = build (CONSTRUCTOR, type, (tree) ((void *)0), u);
  ((u)->common.constant_flag) = ((pfn)->common.constant_flag) && ((delta)->common.constant_flag);
  ((u)->common.static_flag) = (((u)->common.constant_flag)
       && (initializer_constant_valid_p (pfn, ((pfn)->common.type))
    != (tree) ((void *)0))
       && (initializer_constant_valid_p (delta, ((delta)->common.type))
    != (tree) ((void *)0)));
  return u;
}
# 5737 "../../../kg++fe/gnu/cp/typeck.c"
tree
build_ptrmemfunc (type, pfn, force)
     tree type, pfn;
     int force;
{
  tree fn;
  tree pfn_type;
  tree to_type;

  if (((pfn) == global_trees[TI_ERROR_MARK] || ((pfn) && (((pfn))->common.type) == global_trees[TI_ERROR_MARK])))
    return global_trees[TI_ERROR_MARK];

  pfn_type = ((pfn)->common.type);
  to_type = build_ptrmemfunc_type (type);


  if ((((enum tree_code) (pfn_type)->common.code) == RECORD_TYPE && ((pfn_type)->type.lang_specific) && ((&((pfn_type)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
    {
      tree delta = (tree) ((void *)0);
      tree npfn = (tree) ((void *)0);
      tree n;

      if (!force
   && !can_convert_arg (to_type, ((pfn)->common.type), pfn))
 error ("invalid conversion to type `%T' from type `%T'",
    to_type, pfn_type);

      n = get_delta_difference ((((((((((pfn_type)->type.values))->common.type)))->common.type))->type.maxval),
    (((((((((to_type)->type.values))->common.type)))->common.type))->type.maxval),
    force);





      if (((enum tree_code) (pfn)->common.code) != PTRMEM_CST)
 {
   if (comptypes ((to_type), (pfn_type), 0))
     return pfn;
   else if (integer_zerop (n))
     return build_reinterpret_cast (to_type, pfn);
 }

      if (((pfn)->common.side_effects_flag))
 pfn = save_expr (pfn);


      if (((enum tree_code) (pfn)->common.code) == PTRMEM_CST)
 expand_ptrmemfunc_cst (pfn, &delta, &npfn);
      else
 {
   npfn = build_ptrmemfunc_access_expr (pfn, cp_global_trees[CPTI_PFN_IDENTIFIER]);
   delta = build_ptrmemfunc_access_expr (pfn, cp_global_trees[CPTI_DELTA_IDENTIFIER]);
 }


      delta = cp_convert (global_trees[TI_PTRDIFF_TYPE], delta);
      if (ptrmemfunc_vbit_in_delta == ptrmemfunc_vbit_in_delta)
 n = build_binary_op(LSHIFT_EXPR, n, global_trees[TI_INTEGER_ONE], 1);
      delta = build_binary_op(PLUS_EXPR, delta, n, 1);
      return build_ptrmemfunc1 (to_type, delta, npfn);
    }


  if (integer_zerop (pfn))
    {
      pfn = build_c_cast (type, global_trees[TI_INTEGER_ZERO]);
      return build_ptrmemfunc1 (to_type,
    global_trees[TI_INTEGER_ZERO],
    pfn);
    }

  if (type_unknown_p (pfn))
    return instantiate_type (type, pfn, tf_error | tf_warning);

  fn = ((pfn)->exp.operands[0]);
  (void) (((((enum tree_code) (fn)->common.code) == FUNCTION_DECL) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5813, __FUNCTION__), 0) : 0);
  return make_ptrmem_cst (to_type, fn);
}
# 5824 "../../../kg++fe/gnu/cp/typeck.c"
void
expand_ptrmemfunc_cst (cst, delta, pfn)
     tree cst;
     tree *delta;
     tree *pfn;
{
  tree type = ((cst)->common.type);
  tree fn = (((ptrmem_cst_t)(cst))->member);
  tree ptr_class, fn_class;

  (void) (((((enum tree_code) (fn)->common.code) == FUNCTION_DECL) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5834, __FUNCTION__), 0) : 0);


  fn_class = ((fn)->decl.context);


  ptr_class = (((((((((type)->type.values))->common.type)))->common.type))->type.maxval);


  *delta = get_delta_difference (fn_class, ptr_class, 0);

  if (!((fn)->decl.virtual_flag))
    *pfn = convert ((((((type)->type.values))->common.type)), build_addr_func (fn));
  else
    {



      tree orig_class = ((fn)->decl.context);
      tree binfo = binfo_or_else (orig_class, fn_class);
      *delta = fold (build (PLUS_EXPR, ((*delta)->common.type),
       *delta, (((binfo))->vec.a[1])));




      *pfn = ((fn)->decl.vindex);
      *pfn = fold (build (MULT_EXPR, integer_types[itk_int], *pfn,
     ((cp_global_trees[CPTI_VTABLE_ENTRY_TYPE])->type.size_unit)));

      switch (ptrmemfunc_vbit_in_delta)
 {
 case ptrmemfunc_vbit_in_pfn:
   *pfn = fold (build (PLUS_EXPR, integer_types[itk_int], *pfn,
         global_trees[TI_INTEGER_ONE]));
   break;

 case ptrmemfunc_vbit_in_delta:
   *delta = fold (build (LSHIFT_EXPR, ((*delta)->common.type),
    *delta, global_trees[TI_INTEGER_ONE]));
   *delta = fold (build (PLUS_EXPR, ((*delta)->common.type),
    *delta, global_trees[TI_INTEGER_ONE]));
   break;

 default:
   fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5879, __FUNCTION__);
 }

      *pfn = fold (build1 (NOP_EXPR, (((((type)->type.values))->common.type)),
      *pfn));
    }
}




tree
pfn_from_ptrmemfunc (t)
     tree t;
{
  if (((enum tree_code) (t)->common.code) == PTRMEM_CST)
    {
      tree delta;
      tree pfn;

      expand_ptrmemfunc_cst (t, &delta, &pfn);
      if (pfn)
 return pfn;
    }

  return build_ptrmemfunc_access_expr (t, cp_global_trees[CPTI_PFN_IDENTIFIER]);
}





tree
dubious_conversion_warnings (type, expr, errtype, fndecl, parmnum)
     tree type;
     tree expr;
     const char *errtype;
     tree fndecl;
     int parmnum;
{
  if (((enum tree_code) (type)->common.code) == REFERENCE_TYPE)
    type = ((type)->common.type);


  if (((((enum tree_code) (type)->common.code) == BOOLEAN_TYPE || ((enum tree_code) (type)->common.code) == INTEGER_TYPE) || ((enum tree_code) (type)->common.code) == REAL_TYPE) && expr == cp_global_trees[CPTI_NULL])
    {
      if (fndecl)
        warning ("passing NULL used for non-pointer %s %P of `%D'",
                    errtype, parmnum, fndecl);
      else
        warning ("%s to non-pointer type `%T' from NULL", errtype, type);
    }


  if (((enum tree_code) (((expr)->common.type))->common.code) == REAL_TYPE
      && ((enum tree_code) (type)->common.code) == INTEGER_TYPE)
    {
      if (fndecl)
 warning ("passing `%T' for %s %P of `%D'",
      ((expr)->common.type), errtype, parmnum, fndecl);
      else
 warning ("%s to `%T' from `%T'", errtype, type, ((expr)->common.type));
    }


  else if (((type)->common.unsigned_flag) && ((enum tree_code) (type)->common.code) != BOOLEAN_TYPE)
    {
      if (((enum tree_code) (expr)->common.code) == INTEGER_CST
   && (((expr))->common.lang_flag_0))
 {
   if (fndecl)
     warning ("passing negative value `%E' for %s %P of `%D'",
   expr, errtype, parmnum, fndecl);
   else
     warning ("%s of negative value `%E' to `%T'",
   errtype, expr, type);
 }

      overflow_warning (expr);

      if (((expr)->common.constant_flag))
 expr = fold (expr);
    }
  return expr;
}







static tree
convert_for_assignment (type, rhs, errtype, fndecl, parmnum)
     tree type, rhs;
     const char *errtype;
     tree fndecl;
     int parmnum;
{
  register enum tree_code codel = ((enum tree_code) (type)->common.code);
  register tree rhstype;
  register enum tree_code coder;

  if (codel == OFFSET_TYPE)
    fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 5983, __FUNCTION__);

  if (((enum tree_code) (rhs)->common.code) == OFFSET_REF)
    rhs = resolve_offset_ref (rhs);


  if (((enum tree_code) (rhs)->common.code) == NON_LVALUE_EXPR)
    rhs = ((rhs)->exp.operands[0]);

  rhstype = ((rhs)->common.type);
  coder = ((enum tree_code) (rhstype)->common.code);

  if (rhs == global_trees[TI_ERROR_MARK] || rhstype == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];
  if (((enum tree_code) (rhs)->common.code) == TREE_LIST && ((rhs)->list.value) == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  rhs = dubious_conversion_warnings (type, rhs, errtype, fndecl, parmnum);


  if (coder == VOID_TYPE)
    {
      error ("void value not ignored as it ought to be");
      return global_trees[TI_ERROR_MARK];
    }


  if (((enum tree_code) (rhs)->common.code) == CONST_DECL)
    rhs = ((rhs)->decl.initial);
# 6031 "../../../kg++fe/gnu/cp/typeck.c"
  if (!can_convert_arg_bad (type, rhstype, rhs))
    {



      if (!warn_pmf2ptr
   && (((enum tree_code) (type)->common.code) == POINTER_TYPE && ((enum tree_code) (((type)->common.type))->common.code) != OFFSET_TYPE)
   && (((enum tree_code) (rhstype)->common.code) == RECORD_TYPE && ((rhstype)->type.lang_specific) && ((&((rhstype)->type.lang_specific)->u.c)->ptrmemfunc_flag)))
 rhs = cp_convert (strip_top_quals (type), rhs);
      else
 {



   if (rhstype == cp_global_trees[CPTI_UNKNOWN_TYPE])
     instantiate_type (type, rhs, tf_error | tf_warning);
   else if (fndecl)
     error ("cannot convert `%T' to `%T' for argument `%P' to `%D'",
        rhstype, type, parmnum, fndecl);
   else
     error ("cannot convert `%T' to `%T' in %s", rhstype, type,
        errtype);
   return global_trees[TI_ERROR_MARK];
 }
    }
  return perform_implicit_conversion (strip_top_quals (type), rhs);
}
# 6075 "../../../kg++fe/gnu/cp/typeck.c"
tree
convert_for_initialization (exp, type, rhs, flags, errtype, fndecl, parmnum)
     tree exp, type, rhs;
     int flags;
     const char *errtype;
     tree fndecl;
     int parmnum;
{
  register enum tree_code codel = ((enum tree_code) (type)->common.code);
  register tree rhstype;
  register enum tree_code coder;



  if (((enum tree_code) (rhs)->common.code) == NOP_EXPR
      && ((rhs)->common.type) == ((((rhs)->exp.operands[0]))->common.type)
      && codel != REFERENCE_TYPE)
    rhs = ((rhs)->exp.operands[0]);

  if (rhs == global_trees[TI_ERROR_MARK]
      || (((enum tree_code) (rhs)->common.code) == TREE_LIST && ((rhs)->list.value) == global_trees[TI_ERROR_MARK]))
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (rhs)->common.code) == OFFSET_REF)
    {
      rhs = resolve_offset_ref (rhs);
      if (rhs == global_trees[TI_ERROR_MARK])
 return global_trees[TI_ERROR_MARK];
    }

  if (((enum tree_code) (((rhs)->common.type))->common.code) == REFERENCE_TYPE)
    rhs = convert_from_reference (rhs);

  if ((((enum tree_code) (((rhs)->common.type))->common.code) == ARRAY_TYPE
       && ((enum tree_code) (type)->common.code) != ARRAY_TYPE
       && (((enum tree_code) (type)->common.code) != REFERENCE_TYPE
    || ((enum tree_code) (((type)->common.type))->common.code) != ARRAY_TYPE))
      || (((enum tree_code) (((rhs)->common.type))->common.code) == FUNCTION_TYPE
   && (((enum tree_code) (type)->common.code) != REFERENCE_TYPE
       || ((enum tree_code) (((type)->common.type))->common.code) != FUNCTION_TYPE))
      || ((enum tree_code) (((rhs)->common.type))->common.code) == METHOD_TYPE)
    rhs = default_conversion (rhs);

  rhstype = ((rhs)->common.type);
  coder = ((enum tree_code) (rhstype)->common.code);

  if (coder == ERROR_MARK)
    return global_trees[TI_ERROR_MARK];




  if (codel == REFERENCE_TYPE)
    {

      int savew = 0, savee = 0;

      if (fndecl)
 savew = (global_dc)->diagnostic_count[(int) (DK_WARNING)], savee = (global_dc)->diagnostic_count[(int) (DK_ERROR)];
      rhs = initialize_reference (type, rhs, (tree) ((void *)0),
                  ((void *)0));
      if (fndecl)
 {
   if ((global_dc)->diagnostic_count[(int) (DK_WARNING)] > savew)
     cp_warning_at ("in passing argument %P of `%+D'", parmnum, fndecl);
   else if ((global_dc)->diagnostic_count[(int) (DK_ERROR)] > savee)
     cp_error_at ("in passing argument %P of `%+D'", parmnum, fndecl);
 }
      return rhs;
    }

  if (exp != 0)
    exp = require_complete_type (exp);
  if (exp == global_trees[TI_ERROR_MARK])
    return global_trees[TI_ERROR_MARK];

  if (((enum tree_code) (rhstype)->common.code) == REFERENCE_TYPE)
    rhstype = ((rhstype)->common.type);

  type = complete_type (type);

  if ((((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5)))
    return ocp_convert (type, rhs, 1|64, flags);

  return convert_for_assignment (type, rhs, errtype, fndecl, parmnum);
}
# 6171 "../../../kg++fe/gnu/cp/typeck.c"
void
c_expand_asm_operands (string, outputs, inputs, clobbers, vol, filename, line)
     tree string, outputs, inputs, clobbers;
     int vol;
     const char *filename;
     int line;
{
  int noutputs = list_length (outputs);
  register int i;

  register tree *o = (tree *) __builtin_alloca(noutputs * sizeof (tree));
  register tree tail;


  for (i = 0, tail = outputs; tail; tail = ((tail)->common.chain), i++)
    o[i] = ((tail)->list.value);




  expand_asm_operands (string, outputs, inputs, clobbers, vol, filename, line);


  for (i = 0, tail = outputs; tail; tail = ((tail)->common.chain), i++)
    {
      if (o[i] != ((tail)->list.value))
 {
   expand_expr (build_modify_expr (o[i], NOP_EXPR, ((tail)->list.value)),
         (const_int_rtx[64]), VOIDmode, EXPAND_NORMAL);
   free_temp_slots ();



   ((tail)->list.value) = o[i];
 }


      else
 {
   tree type = ((o[i])->common.type);
   if (type != global_trees[TI_ERROR_MARK]
       && (((cp_type_quals (type) & 0x1) != 0)
    || (((((enum tree_code) (type)->common.code)) == RECORD_TYPE || (((enum tree_code) (type)->common.code)) == UNION_TYPE)
        && ((type)->type.lang_flag_0))))
     readonly_error (o[i], "modification by `asm'", 1);
 }
    }


  emit_queue ();
}




static void
maybe_warn_about_returning_address_of_local (retval)
     tree retval;
{
  tree valtype = ((((current_function_decl)->decl.result))->common.type);
  tree whats_returned = retval;

  for (;;)
    {
      if (((enum tree_code) (whats_returned)->common.code) == COMPOUND_EXPR)
 whats_returned = ((whats_returned)->exp.operands[1]);
      else if (((enum tree_code) (whats_returned)->common.code) == CONVERT_EXPR
        || ((enum tree_code) (whats_returned)->common.code) == NON_LVALUE_EXPR
        || ((enum tree_code) (whats_returned)->common.code) == NOP_EXPR)
 whats_returned = ((whats_returned)->exp.operands[0]);
      else
 break;
    }

  if (((enum tree_code) (whats_returned)->common.code) != ADDR_EXPR)
    return;
  whats_returned = ((whats_returned)->exp.operands[0]);

  if (((enum tree_code) (valtype)->common.code) == REFERENCE_TYPE)
    {
      if (((enum tree_code) (whats_returned)->common.code) == AGGR_INIT_EXPR
   || ((enum tree_code) (whats_returned)->common.code) == TARGET_EXPR)
 {

   whats_returned = ((whats_returned)->exp.operands[0]);
   warning ("returning reference to temporary");
   return;
 }
      if (((enum tree_code) (whats_returned)->common.code) == VAR_DECL
   && ((whats_returned)->decl.name)
   && (!strncmp (((char *)(((whats_returned)->decl.name))->identifier.id.str), "_.tmp_", sizeof ("_.tmp_")-1)))
 {
   warning ("reference to non-lvalue returned");
   return;
 }
    }

  if (((enum tree_code) (whats_returned)->common.code) == VAR_DECL
      && ((whats_returned)->decl.name)
      && (((whats_returned)->decl.context) && ((enum tree_code) (((whats_returned)->decl.context))->common.code) == FUNCTION_DECL)
      && !(((whats_returned)->common.static_flag)
    || ((whats_returned)->common.public_flag)))
    {
      if (((enum tree_code) (valtype)->common.code) == REFERENCE_TYPE)
 cp_warning_at ("reference to local variable `%D' returned",
         whats_returned);
      else
 cp_warning_at ("address of local variable `%D' returned",
         whats_returned);
      return;
    }
}






tree
check_return_expr (retval)
     tree retval;
{
  tree result;


  tree valtype;
  int fn_returns_value_p;




  if (((current_function_decl)->common.volatile_flag))
    warning ("function declared `noreturn' has a `return' statement");


  if ((((current_function_decl)->decl.lang_specific)->decl_flags.destructor_attr))
    {
      if (retval)
 error ("returning a value from a destructor");
      return (tree) ((void *)0);
    }
  else if ((((current_function_decl)->decl.lang_specific)->decl_flags.constructor_attr))
    {
      if ((cfun->language)->in_function_try_handler)


 error ("cannot return from a handler of a function-try-block of a constructor");
      else if (retval)

 error ("returning a value from a constructor");
      return (tree) ((void *)0);
    }



  result = ((current_function_decl)->decl.result);
  valtype = ((result)->common.type);
  (void) (((valtype != (tree) ((void *)0)) == 0) ? (fancy_abort ("../../../kg++fe/gnu/cp/typeck.c", 6328, __FUNCTION__), 0) : 0);
  fn_returns_value_p = !(((enum tree_code) (valtype)->common.code) == VOID_TYPE);
  if (!retval && ((result)->decl.name) && fn_returns_value_p)
    retval = result;



  if (!retval && fn_returns_value_p)
    {
      pedwarn ("return-statement with no value, in function declared with a non-void return type");



      (cfun->language)->returns_null = 0;
    }


  else if (retval && !fn_returns_value_p)
    {
      if ((((enum tree_code) (((retval)->common.type))->common.code) == VOID_TYPE))



   finish_expr_stmt (retval);
      else
 pedwarn ("return-statement with a value, in function declared with a void return type");

      (cfun->language)->returns_null = 1;


      return (tree) ((void *)0);
    }
  else if (!retval)


    (cfun->language)->returns_null = 1;
  else

    (cfun->language)->returns_value = 1;


  if (((((((current_function_decl)->decl.name))->common.lang_flag_2) ? ((current_function_decl)->decl.lang_specific)->u.f.operator_code : ERROR_MARK) == NEW_EXPR
       || (((((current_function_decl)->decl.name))->common.lang_flag_2) ? ((current_function_decl)->decl.lang_specific)->u.f.operator_code : ERROR_MARK) == VEC_NEW_EXPR)
      && !(((((current_function_decl)->common.type))->type.binfo) && ((((((current_function_decl)->common.type))->type.binfo))->list.value) == (tree) ((void *)0))
      && ! flag_check_new
      && null_ptr_cst_p (retval))
    warning ("`operator new' must not return NULL unless it is declared `throw()' (or -fcheck-new is in effect)");


  if (warn_ecpp
      && ((current_function_decl)->decl.name) == (assignment_operator_name_info[(int) (NOP_EXPR)].identifier)
      && retval != (cfun ? (cfun->language)->x_current_class_ref : (tree) ((void *)0)))
    warning ("`operator=' should return a reference to `*this'");
# 6402 "../../../kg++fe/gnu/cp/typeck.c"
  if (fn_returns_value_p && flag_elide_constructors)
    {
      if (retval != (tree) ((void *)0)
   && (((cfun->language)->x_return_value) == (tree) ((void *)0)
       || ((cfun->language)->x_return_value) == retval)
   && ((enum tree_code) (retval)->common.code) == VAR_DECL
   && ((retval)->decl.context) == current_function_decl
   && ! ((retval)->common.static_flag)
   && (((retval)->decl.u1.a.align)
       >= ((((current_function_decl)->decl.result))->decl.u1.a.align))
   && comptypes (((((((retval)->common.type))->type.main_variant))), ((((((((current_function_decl)->common.type))->common.type))->type.main_variant))), 0))



 {
   ((cfun->language)->x_return_value) = retval;


   (((current_function_decl)->decl.lang_specific)->u.f.named_return_object) = retval;

 }
      else
 {
   ((cfun->language)->x_return_value) = global_trees[TI_ERROR_MARK];



   (((current_function_decl)->decl.lang_specific)->u.f.named_return_object) = (tree) ((void *)0);

 }
    }



  if (!retval || retval == global_trees[TI_ERROR_MARK])
    return retval;


  if (retval == result || (((current_function_decl)->decl.lang_specific)->decl_flags.constructor_attr))

    ;
  else
    {

      tree functype = ((((current_function_decl)->common.type))->common.type);




      retval = convert_for_initialization
 ((tree) ((void *)0), functype, retval, (3)|(128),
  "return", (tree) ((void *)0), 0);
      retval = convert (valtype, retval);


      if (retval == global_trees[TI_ERROR_MARK])
 return retval;

      else if (! (cfun->returns_struct)
        && ((enum tree_code) (retval)->common.code) == TARGET_EXPR
        && ((enum tree_code) (((retval)->exp.operands[1]))->common.code) == AGGR_INIT_EXPR)
 retval = build (COMPOUND_EXPR, ((retval)->common.type), retval,
   ((retval)->exp.operands[0]));
      else
 maybe_warn_about_returning_address_of_local (retval);
    }


  if (retval && retval != result)
    retval = build (INIT_EXPR, ((result)->common.type), result, retval);

  return retval;
}
# 6485 "../../../kg++fe/gnu/cp/typeck.c"
static int
comp_ptr_ttypes_real (to, from, constp)
     tree to, from;
     int constp;
{
  int to_more_cv_qualified = 0;

  for (; ; to = ((to)->common.type), from = ((from)->common.type))
    {
      if (((enum tree_code) (to)->common.code) != ((enum tree_code) (from)->common.code))
 return 0;

      if (((enum tree_code) (from)->common.code) == OFFSET_TYPE
   && comptypes ((((from)->type.maxval)), (((to)->type.maxval)), 0))

   continue;



      if (((enum tree_code) (to)->common.code) != FUNCTION_TYPE && ((enum tree_code) (to)->common.code) != METHOD_TYPE)
 {
   if (!at_least_as_qualified_p (to, from))
     return 0;

   if (!at_least_as_qualified_p (from, to))
     {
       if (constp == 0)
  return 0;
       else
  ++to_more_cv_qualified;
     }

   if (constp > 0)
     constp &= ((to)->common.readonly_flag);
 }

      if (((enum tree_code) (to)->common.code) != POINTER_TYPE)
 return
   comptypes ((((to)->type.main_variant)), (((from)->type.main_variant)), 0)
   && (constp >= 0 || to_more_cv_qualified);
    }
}





int
comp_ptr_ttypes (to, from)
     tree to, from;
{
  return comp_ptr_ttypes_real (to, from, 1);
}




int
ptr_reasonably_similar (to, from)
     tree to, from;
{
  for (; ; to = ((to)->common.type), from = ((from)->common.type))
    {

      if (((enum tree_code) (to)->common.code) == VOID_TYPE
   || ((enum tree_code) (from)->common.code) == VOID_TYPE)
 return 1;

      if (((enum tree_code) (to)->common.code) != ((enum tree_code) (from)->common.code))
 return 0;

      if (((enum tree_code) (from)->common.code) == OFFSET_TYPE
   && comptypes (((to)->type.maxval),
   ((from)->type.maxval),
   1 | 2))
 continue;

      if (((enum tree_code) (to)->common.code) == INTEGER_TYPE
   && ((to)->type.precision) == ((from)->type.precision))
 return 1;

      if (((enum tree_code) (to)->common.code) == FUNCTION_TYPE)
 return 1;

      if (((enum tree_code) (to)->common.code) != POINTER_TYPE)
 return comptypes
   (((to)->type.main_variant), ((from)->type.main_variant),
    1 | 2);
    }
}



static int
comp_ptr_ttypes_const (to, from)
     tree to, from;
{
  for (; ; to = ((to)->common.type), from = ((from)->common.type))
    {
      if (((enum tree_code) (to)->common.code) != ((enum tree_code) (from)->common.code))
 return 0;

      if (((enum tree_code) (from)->common.code) == OFFSET_TYPE
   && comptypes ((((from)->type.maxval)), (((to)->type.maxval)), 0))

   continue;

      if (((enum tree_code) (to)->common.code) != POINTER_TYPE)
 return comptypes ((((to)->type.main_variant)), (((from)->type.main_variant)), 0);
    }
}



static int
comp_ptr_ttypes_reinterpret (to, from)
     tree to, from;
{
  int constp = 1;

  for (; ; to = ((to)->common.type), from = ((from)->common.type))
    {
      if (((enum tree_code) (from)->common.code) == OFFSET_TYPE)
 from = ((from)->common.type);
      if (((enum tree_code) (to)->common.code) == OFFSET_TYPE)
 to = ((to)->common.type);



      if (((enum tree_code) (from)->common.code) != FUNCTION_TYPE && ((enum tree_code) (from)->common.code) != METHOD_TYPE
   && ((enum tree_code) (to)->common.code) != FUNCTION_TYPE && ((enum tree_code) (to)->common.code) != METHOD_TYPE)
 {
   if (!at_least_as_qualified_p (to, from))
     return 0;

   if (! constp
       && !at_least_as_qualified_p (from, to))
     return 0;
   constp &= ((to)->common.readonly_flag);
 }

      if (((enum tree_code) (from)->common.code) != POINTER_TYPE
   || ((enum tree_code) (to)->common.code) != POINTER_TYPE)
 return 1;
    }
}




int
cp_type_quals (type)
     tree type;
{
  type = strip_array_types (type);
  if (type == global_trees[TI_ERROR_MARK])
    return 0x0;
  return ((((type)->common.readonly_flag) * 0x1) | (((type)->common.volatile_flag) * 0x2) | (((type)->type.restrict_flag) * 0x4) | ((((enum tree_code) (type)->common.code) == RECORD_TYPE && ((type)->common.type)) * 0x8));
}



int
cp_has_mutable_p (type)
     tree type;
{
  type = strip_array_types (type);

  return (((((enum tree_code) (type)->common.code)) == RECORD_TYPE || (((enum tree_code) (type)->common.code)) == UNION_TYPE) && (((enum tree_code) (type)->common.code) == TEMPLATE_TYPE_PARM || ((enum tree_code) (type)->common.code) == TYPENAME_TYPE || ((enum tree_code) (type)->common.code) == TYPEOF_TYPE || ((enum tree_code) (type)->common.code) == BOUND_TEMPLATE_TEMPLATE_PARM || ((type)->type.lang_flag_5))) && ((&((type)->type.lang_specific)->u.c)->has_mutable);
}





static void
casts_away_constness_r (t1, t2)
     tree *t1;
     tree *t2;
{
  int quals1;
  int quals2;







  if ((((enum tree_code) (*t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((*t1)->common.type))->common.code) == OFFSET_TYPE))
    *t1 = build_pointer_type (((((*t1)->common.type))->common.type));
  if ((((enum tree_code) (*t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((*t2)->common.type))->common.code) == OFFSET_TYPE))
    *t2 = build_pointer_type (((((*t2)->common.type))->common.type));
# 6697 "../../../kg++fe/gnu/cp/typeck.c"
  if (((enum tree_code) (*t1)->common.code) != POINTER_TYPE
      || ((enum tree_code) (*t2)->common.code) != POINTER_TYPE)
    {
      *t1 = cp_build_qualified_type_real ((global_trees[TI_VOID_TYPE]), (cp_type_quals (*t1)), tf_error | tf_warning);

      *t2 = cp_build_qualified_type_real ((global_trees[TI_VOID_TYPE]), (cp_type_quals (*t2)), tf_error | tf_warning);

      return;
    }

  quals1 = cp_type_quals (*t1);
  quals2 = cp_type_quals (*t2);
  *t1 = ((*t1)->common.type);
  *t2 = ((*t2)->common.type);
  casts_away_constness_r (t1, t2);
  *t1 = build_pointer_type (*t1);
  *t2 = build_pointer_type (*t2);
  *t1 = cp_build_qualified_type_real ((*t1), (quals1), tf_error | tf_warning);
  *t2 = cp_build_qualified_type_real ((*t2), (quals2), tf_error | tf_warning);
}




static int
casts_away_constness (t1, t2)
     tree t1;
     tree t2;
{
  if (((enum tree_code) (t2)->common.code) == REFERENCE_TYPE)
    {






      t1 = (((enum tree_code) (t1)->common.code) == REFERENCE_TYPE
     ? ((t1)->common.type) : t1);
      return casts_away_constness (build_pointer_type (t1),
       build_pointer_type (((t2)->common.type)));
    }

  if ((((enum tree_code) (t1)->common.code) == POINTER_TYPE && ((enum tree_code) (((t1)->common.type))->common.code) == OFFSET_TYPE) && (((enum tree_code) (t2)->common.code) == POINTER_TYPE && ((enum tree_code) (((t2)->common.type))->common.code) == OFFSET_TYPE))







    return casts_away_constness
      (build_pointer_type (((((t1)->common.type))->common.type)),
       build_pointer_type (((((t2)->common.type))->common.type)));



  if (((enum tree_code) (t1)->common.code) != POINTER_TYPE
      || ((enum tree_code) (t2)->common.code) != POINTER_TYPE)
    return 0;


  t1 = ((t1)->type.main_variant);
  t2 = ((t2)->type.main_variant);
  casts_away_constness_r (&t1, &t2);
  if (!can_convert (t2, t1))
    return 1;

  return 0;
}






static tree
strip_all_pointer_quals (type)
     tree type;
{
  if (((enum tree_code) (type)->common.code) == POINTER_TYPE)
    return build_pointer_type (strip_all_pointer_quals (((type)->common.type)));
  else if (((enum tree_code) (type)->common.code) == OFFSET_TYPE)
    return build_offset_type (((type)->type.maxval),
         strip_all_pointer_quals (((type)->common.type)));
  else
    return ((type)->type.main_variant);
}
