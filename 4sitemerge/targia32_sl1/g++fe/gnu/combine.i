# 1 "../../../kg++fe/gnu/combine.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/combine.c"
# 77 "../../../kg++fe/gnu/combine.c"
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
# 78 "../../../kg++fe/gnu/combine.c" 2
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
        
# 79 "../../../kg++fe/gnu/combine.c" 2
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
# 80 "../../../kg++fe/gnu/combine.c" 2
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
# 81 "../../../kg++fe/gnu/combine.c" 2
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
# 82 "../../../kg++fe/gnu/combine.c" 2
# 1 "../../../kg++fe/gnu/regs.h" 1
# 23 "../../../kg++fe/gnu/regs.h"
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
# 24 "../../../kg++fe/gnu/regs.h" 2
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
# 25 "../../../kg++fe/gnu/regs.h" 2
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
# 26 "../../../kg++fe/gnu/regs.h" 2
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
# 83 "../../../kg++fe/gnu/combine.c" 2


# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 86 "../../../kg++fe/gnu/combine.c" 2
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
# 87 "../../../kg++fe/gnu/combine.c" 2

# 1 "../../../kg++fe/gnu/expr.h" 1
# 57 "../../../kg++fe/gnu/expr.h"
enum expand_modifier {EXPAND_NORMAL = 0, EXPAND_STACK_PARM = 2, EXPAND_SUM,
        EXPAND_CONST_ADDRESS, EXPAND_INITIALIZER, EXPAND_WRITE,
        EXPAND_MEMORY};
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
# 512 "../../../kg++fe/gnu/expr.h"
extern rtx force_operand (rtx, rtx);
# 521 "../../../kg++fe/gnu/expr.h"
extern tree find_placeholder (tree, tree *);




extern rtx expand_expr (tree, rtx, enum machine_mode, enum expand_modifier);




extern void init_pending_stack_adjust (void);



extern void clear_pending_stack_adjust (void);


extern void do_pending_stack_adjust (void);
# 557 "../../../kg++fe/gnu/expr.h"
extern rtx compare_from_rtx (rtx, rtx, enum rtx_code, int, enum machine_mode, rtx);

extern void do_compare_rtx_and_jump (rtx, rtx, enum rtx_code, int, enum machine_mode, rtx, rtx, rtx);




extern int try_casesi (tree, tree, tree, tree, rtx, rtx);
extern int try_tablejump (tree, tree, tree, tree, rtx, rtx);



extern unsigned int case_values_threshold (void);
# 614 "../../../kg++fe/gnu/expr.h"
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
# 715 "../../../kg++fe/gnu/expr.h"
extern rtx assemble_trampoline_template (void);



extern rtx stabilize (rtx);



extern rtx copy_all_regs (rtx);


extern rtx copy_to_reg (rtx);


extern rtx copy_addr_to_reg (rtx);


extern rtx copy_to_mode_reg (enum machine_mode, rtx);


extern rtx copy_to_suggested_reg (rtx, rtx, enum machine_mode);



extern rtx force_reg (enum machine_mode, rtx);


extern rtx force_not_mem (rtx);
# 751 "../../../kg++fe/gnu/expr.h"
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
# 833 "../../../kg++fe/gnu/expr.h"
extern int vector_mode_valid_p (enum machine_mode);
# 89 "../../../kg++fe/gnu/combine.c" 2
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
# 26 "../../../kg++fe/gnu/insn-addr.h"
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
# 90 "../../../kg++fe/gnu/combine.c" 2
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
# 91 "../../../kg++fe/gnu/combine.c" 2
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
# 92 "../../../kg++fe/gnu/combine.c" 2
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
# 93 "../../../kg++fe/gnu/combine.c" 2







static int combine_attempts;



static int combine_merges;



static int combine_extras;



static int combine_successes;



static int total_attempts, total_merges, total_extras, total_successes;
# 126 "../../../kg++fe/gnu/combine.c"
static int *uid_cuid;
static int max_uid_cuid;
# 148 "../../../kg++fe/gnu/combine.c"
static unsigned int combine_max_regno;



static rtx *reg_last_death;



static rtx *reg_last_set;




static int mem_last_set;




static int last_call_cuid;







static rtx subst_insn;




static rtx subst_prev_insn;
# 188 "../../../kg++fe/gnu/combine.c"
static int subst_low_cuid;




static HARD_REG_SET newpat_used_regs;





static rtx added_links_insn;


static basic_block this_basic_block;




static sbitmap refresh_blocks;
static int need_refresh;
# 256 "../../../kg++fe/gnu/combine.c"
static rtx *reg_last_set_value;




static int *reg_last_set_label;




static int *reg_last_set_table_tick;




static char *reg_last_set_invalid;



static int label_tick;
# 287 "../../../kg++fe/gnu/combine.c"
static unsigned long long *reg_nonzero_bits;




static enum machine_mode nonzero_bits_mode;




static unsigned char *reg_sign_bit_copies;






static int nonzero_sign_valid;






static enum machine_mode *reg_last_set_mode;
static unsigned long long *reg_last_set_nonzero_bits;
static char *reg_last_set_sign_bit_copies;





struct undo
{
  struct undo *next;
  int is_int;
  union {rtx r; int i;} old_contents;
  union {rtx *r; int *i;} where;
};







struct undobuf
{
  struct undo *undos;
  struct undo *frees;
  rtx other_insn;
};

static struct undobuf undobuf;




static int n_occurrences;

static void do_SUBST (rtx *, rtx);
static void do_SUBST_INT (int *, int);
static void init_reg_last_arrays (void);
static void setup_incoming_promotions (void);
static void set_nonzero_bits_and_sign_copies (rtx, rtx, void *);
static int cant_combine_insn_p (rtx);
static int can_combine_p (rtx, rtx, rtx, rtx, rtx *, rtx *);
static int sets_function_arg_p (rtx);
static int combinable_i3pat (rtx, rtx *, rtx, rtx, int, rtx *);
static int contains_muldiv (rtx);
static rtx try_combine (rtx, rtx, rtx, int *);
static void undo_all (void);
static void undo_commit (void);
static rtx *find_split_point (rtx *, rtx);
static rtx subst (rtx, rtx, rtx, int, int);
static rtx combine_simplify_rtx (rtx, enum machine_mode, int, int);
static rtx simplify_if_then_else (rtx);
static rtx simplify_set (rtx);
static rtx simplify_logical (rtx, int);
static rtx expand_compound_operation (rtx);
static rtx expand_field_assignment (rtx);
static rtx make_extraction (enum machine_mode, rtx, long long, rtx, unsigned long long, int, int, int);


static rtx extract_left_shift (rtx, int);
static rtx make_compound_operation (rtx, enum rtx_code);
static int get_pos_from_mask (unsigned long long, unsigned long long *);

static rtx force_to_mode (rtx, enum machine_mode, unsigned long long, rtx, int);

static rtx if_then_else_cond (rtx, rtx *, rtx *);
static rtx known_cond (rtx, enum rtx_code, rtx, rtx);
static int rtx_equal_for_field_assignment_p (rtx, rtx);
static rtx make_field_assignment (rtx);
static rtx apply_distributive_law (rtx);
static rtx simplify_and_const_int (rtx, enum machine_mode, rtx, unsigned long long);

static unsigned long long cached_nonzero_bits
    (rtx, enum machine_mode, rtx, enum machine_mode, unsigned long long);


static unsigned long long nonzero_bits1
    (rtx, enum machine_mode, rtx, enum machine_mode, unsigned long long);


static unsigned int cached_num_sign_bit_copies
    (rtx, enum machine_mode, rtx, enum machine_mode, unsigned int);

static unsigned int num_sign_bit_copies1
    (rtx, enum machine_mode, rtx, enum machine_mode, unsigned int);

static int merge_outer_ops (enum rtx_code *, long long *, enum rtx_code, long long, enum machine_mode, int *);


static rtx simplify_shift_const (rtx, enum rtx_code, enum machine_mode, rtx, int);

static int recog_for_combine (rtx *, rtx, rtx *);
static rtx gen_lowpart_for_combine (enum machine_mode, rtx);
static rtx gen_binary (enum rtx_code, enum machine_mode, rtx, rtx);

static enum rtx_code simplify_comparison (enum rtx_code, rtx *, rtx *);
static void update_table_tick (rtx);
static void record_value_for_reg (rtx, rtx, rtx);
static void check_promoted_subreg (rtx, rtx);
static void record_dead_and_set_regs_1 (rtx, rtx, void *);
static void record_dead_and_set_regs (rtx);
static int get_last_value_validate (rtx *, rtx, int, int);
static rtx get_last_value (rtx);
static int use_crosses_set_p (rtx, int);
static void reg_dead_at_p_1 (rtx, rtx, void *);
static int reg_dead_at_p (rtx, rtx);
static void move_deaths (rtx, rtx, int, rtx, rtx *);
static int reg_bitfield_target_p (rtx, rtx);
static void distribute_notes (rtx, rtx, rtx, rtx, rtx, rtx);
static void distribute_links (rtx);
static void mark_used_regs_combine (rtx);
static int insn_cuid (rtx);
static void record_promoted_value (rtx, rtx);
static rtx reversed_comparison (rtx, enum machine_mode, rtx, rtx);
static enum rtx_code combine_reversed_comparison_code (rtx);







static void
do_SUBST (into, newval)
     rtx *into, newval;
{
  struct undo *buf;
  rtx oldval = *into;

  if (oldval == newval)
    return;






  if ((mode_class[(int) (((enum machine_mode) (oldval)->mode))]) == MODE_INT
      && ((enum rtx_code) (newval)->code) == CONST_INT)
    {


      if ((((newval)->fld[0]).rtwint) != trunc_int_for_mode ((((newval)->fld[0]).rtwint),
       ((enum machine_mode) (oldval)->mode)))
 fancy_abort ("../../../kg++fe/gnu/combine.c", 456, __FUNCTION__);







      if ((((enum rtx_code) (oldval)->code) == SUBREG
    && ((enum rtx_code) ((((oldval)->fld[0]).rtx))->code) == CONST_INT)
   || (((enum rtx_code) (oldval)->code) == ZERO_EXTEND
       && ((enum rtx_code) ((((oldval)->fld[0]).rtx))->code) == CONST_INT))
 fancy_abort ("../../../kg++fe/gnu/combine.c", 468, __FUNCTION__);
     }

  if (undobuf.frees)
    buf = undobuf.frees, undobuf.frees = buf->next;
  else
    buf = (struct undo *) xmalloc (sizeof (struct undo));

  buf->is_int = 0;
  buf->where.r = into;
  buf->old_contents.r = oldval;
  *into = newval;

  buf->next = undobuf.undos, undobuf.undos = buf;
}







static void
do_SUBST_INT (into, newval)
     int *into, newval;
{
  struct undo *buf;
  int oldval = *into;

  if (oldval == newval)
    return;

  if (undobuf.frees)
    buf = undobuf.frees, undobuf.frees = buf->next;
  else
    buf = (struct undo *) xmalloc (sizeof (struct undo));

  buf->is_int = 1;
  buf->where.i = into;
  buf->old_contents.i = oldval;
  *into = newval;

  buf->next = undobuf.undos, undobuf.undos = buf;
}
# 520 "../../../kg++fe/gnu/combine.c"
int
combine_instructions (f, nregs)
     rtx f;
     unsigned int nregs;
{
  rtx insn, next;



  int i;
  rtx links, nextlinks;

  int new_direct_jump_p = 0;

  combine_attempts = 0;
  combine_merges = 0;
  combine_extras = 0;
  combine_successes = 0;

  combine_max_regno = nregs;

  reg_nonzero_bits = ((unsigned long long *)
        xcalloc (nregs, sizeof (unsigned long long)));
  reg_sign_bit_copies
    = (unsigned char *) xcalloc (nregs, sizeof (unsigned char));

  reg_last_death = (rtx *) xmalloc (nregs * sizeof (rtx));
  reg_last_set = (rtx *) xmalloc (nregs * sizeof (rtx));
  reg_last_set_value = (rtx *) xmalloc (nregs * sizeof (rtx));
  reg_last_set_table_tick = (int *) xmalloc (nregs * sizeof (int));
  reg_last_set_label = (int *) xmalloc (nregs * sizeof (int));
  reg_last_set_invalid = (char *) xmalloc (nregs * sizeof (char));
  reg_last_set_mode
    = (enum machine_mode *) xmalloc (nregs * sizeof (enum machine_mode));
  reg_last_set_nonzero_bits
    = (unsigned long long *) xmalloc (nregs * sizeof (long long));
  reg_last_set_sign_bit_copies
    = (char *) xmalloc (nregs * sizeof (char));

  init_reg_last_arrays ();

  init_recog_no_volatile ();



  for (insn = f, i = 0; insn; insn = (((insn)->fld[2]).rtx))
    if ((((insn)->fld[0]).rtint) > i)
      i = (((insn)->fld[0]).rtint);

  uid_cuid = (int *) xmalloc ((i + 1) * sizeof (int));
  max_uid_cuid = i;

  nonzero_bits_mode = mode_for_size ((8 * 8), MODE_INT, 0);




  nonzero_sign_valid = 0;
# 590 "../../../kg++fe/gnu/combine.c"
  label_tick = 1;



  subst_prev_insn = (rtx) 0;

  setup_incoming_promotions ();

  refresh_blocks = sbitmap_alloc (last_basic_block);
  sbitmap_zero (refresh_blocks);
  need_refresh = 0;

  for (insn = f, i = 0; insn; insn = (((insn)->fld[2]).rtx))
    {
      uid_cuid[(((insn)->fld[0]).rtint)] = ++i;
      subst_low_cuid = i;
      subst_insn = insn;

      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 {
   note_stores ((((insn)->fld[5]).rtx), set_nonzero_bits_and_sign_copies,
         ((void *)0));
   record_dead_and_set_regs (insn);







 }

      if (((enum rtx_code) (insn)->code) == CODE_LABEL)
 label_tick++;
    }

  nonzero_sign_valid = 1;



  label_tick = 1;
  last_call_cuid = 0;
  mem_last_set = 0;
  init_reg_last_arrays ();
  setup_incoming_promotions ();

  for (this_basic_block = (&entry_exit_blocks[0])->next_bb; this_basic_block != (&entry_exit_blocks[1]); this_basic_block = this_basic_block->next_bb)
    {
      for (insn = this_basic_block->head;
           insn != (((this_basic_block->end)->fld[2]).rtx);
    insn = next ? next : (((insn)->fld[2]).rtx))
 {
   next = 0;

   if (((enum rtx_code) (insn)->code) == CODE_LABEL)
     label_tick++;

   else if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
     {


       check_promoted_subreg (insn, (((insn)->fld[5]).rtx));



       for (links = (((insn)->fld[7]).rtx); links; links = (((links)->fld[1]).rtx))
  if ((next = try_combine (insn, (((links)->fld[0]).rtx),
      (rtx) 0, &new_direct_jump_p)) != 0)
    goto retry;



       for (links = (((insn)->fld[7]).rtx); links; links = (((links)->fld[1]).rtx))
  {
    rtx link = (((links)->fld[0]).rtx);



    if (((enum rtx_code) (link)->code) == NOTE)
      continue;

    for (nextlinks = (((link)->fld[7]).rtx);
         nextlinks;
         nextlinks = (((nextlinks)->fld[1]).rtx))
      if ((next = try_combine (insn, link,
          (((nextlinks)->fld[0]).rtx),
          &new_direct_jump_p)) != 0)
        goto retry;
  }
# 742 "../../../kg++fe/gnu/combine.c"
       for (links = (((insn)->fld[7]).rtx); links; links = (((links)->fld[1]).rtx))
  for (nextlinks = (((links)->fld[1]).rtx); nextlinks;
       nextlinks = (((nextlinks)->fld[1]).rtx))
    if ((next = try_combine (insn, (((links)->fld[0]).rtx),
        (((nextlinks)->fld[0]).rtx),
        &new_direct_jump_p)) != 0)
      goto retry;

       if (((enum rtx_code) (insn)->code) != NOTE)
  record_dead_and_set_regs (insn);

     retry:
       ;
     }
 }
    }
  clear_bb_flags ();

  do { unsigned int word_num_; unsigned int bit_num_ = (0) % (unsigned int) ((unsigned) (8 * 8)); unsigned int size_ = (refresh_blocks)->size; unsigned long long *ptr_ = (refresh_blocks)->elms; for (word_num_ = (0) / (unsigned int) ((unsigned) (8 * 8)); word_num_ < size_; word_num_++, bit_num_ = 0) { unsigned long long word_ = ptr_[word_num_]; if (word_ != 0) for (; bit_num_ < ((unsigned) (8 * 8)); bit_num_++) { unsigned long long _mask = (unsigned long long) 1 << bit_num_; if ((word_ & _mask) != 0) { word_ &= ~ _mask; (i) = word_num_ * ((unsigned) (8 * 8)) + bit_num_; (((basic_block_info)->data.bb[(i)]))->flags |= 1; if (word_ == 0) break; } } } } while (0);

  new_direct_jump_p |= purge_all_dead_edges (0);
  delete_noop_moves (f);

  update_life_info_in_dirty_blocks (UPDATE_LIFE_GLOBAL_RM_NOTES,
        1 | 16
        | 8);


  free(refresh_blocks);
  free (reg_nonzero_bits);
  free (reg_sign_bit_copies);
  free (reg_last_death);
  free (reg_last_set);
  free (reg_last_set_value);
  free (reg_last_set_table_tick);
  free (reg_last_set_label);
  free (reg_last_set_invalid);
  free (reg_last_set_mode);
  free (reg_last_set_nonzero_bits);
  free (reg_last_set_sign_bit_copies);
  free (uid_cuid);

  {
    struct undo *undo, *next;
    for (undo = undobuf.frees; undo; undo = next)
      {
 next = undo->next;
 free (undo);
      }
    undobuf.frees = 0;
  }

  total_attempts += combine_attempts;
  total_merges += combine_merges;
  total_extras += combine_extras;
  total_successes += combine_successes;

  nonzero_sign_valid = 0;


  init_recog ();

  return new_direct_jump_p;
}



static void
init_reg_last_arrays ()
{
  unsigned int nregs = combine_max_regno;

  memset ((char *) reg_last_death, 0, nregs * sizeof (rtx));
  memset ((char *) reg_last_set, 0, nregs * sizeof (rtx));
  memset ((char *) reg_last_set_value, 0, nregs * sizeof (rtx));
  memset ((char *) reg_last_set_table_tick, 0, nregs * sizeof (int));
  memset ((char *) reg_last_set_label, 0, nregs * sizeof (int));
  memset (reg_last_set_invalid, 0, nregs * sizeof (char));
  memset ((char *) reg_last_set_mode, 0, nregs * sizeof (enum machine_mode));
  memset ((char *) reg_last_set_nonzero_bits, 0, nregs * sizeof (long long));
  memset (reg_last_set_sign_bit_copies, 0, nregs * sizeof (char));
}



static void
setup_incoming_promotions ()
{

  unsigned int regno;
  rtx reg;
  enum machine_mode mode;
  int unsignedp;
  rtx first = get_insns ();




  for (regno = 0; regno < 176; regno++)



    if (((((unsigned long long) (((regno)) - ((0 + 4))) <= ((((0 + 4) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1)) - ((0 + 4)))) || (((unsigned long long) (((regno)) - ((32 + 12))) <= ((((32 + 12) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1)) - ((32 + 12)))) && ((regno) % ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) == 0) && mips_abi != 4)) && !fixed_regs[regno])
 && (reg = promoted_input_arg (regno, &mode, &unsignedp)) != 0)
      {
 record_value_for_reg
   (reg, first, gen_rtx_fmt_e ((unsignedp ? ZERO_EXTEND
           : SIGN_EXTEND),
          ((enum machine_mode) (reg)->mode),
          gen_rtx_fmt_e (CLOBBER, (mode), ((const_int_rtx[64])))));
      }

}
# 867 "../../../kg++fe/gnu/combine.c"
static void
set_nonzero_bits_and_sign_copies (x, set, data)
     rtx x;
     rtx set;
     void *data __attribute__ ((__unused__));
{
  unsigned int num;

  if (((enum rtx_code) (x)->code) == REG
      && (((x)->fld[0]).rtuint) >= 176


      && ! bitmap_bit_p ((&entry_exit_blocks[0])->next_bb->global_live_at_start, (((x)->fld[0]).rtuint))
      && (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8))
    {
      if (set == 0 || ((enum rtx_code) (set)->code) == CLOBBER)
 {
   reg_nonzero_bits[(((x)->fld[0]).rtuint)] = mode_mask_array[(int) (((enum machine_mode) (x)->mode))];
   reg_sign_bit_copies[(((x)->fld[0]).rtuint)] = 1;
   return;
 }



      set = expand_field_assignment (set);




      if ((((set)->fld[0]).rtx) == x
   || (((enum rtx_code) ((((set)->fld[0]).rtx))->code) == SUBREG
       && ((mode_size[(int) (((enum machine_mode) ((((set)->fld[0]).rtx))->mode))])
    > (mode_size[(int) (((enum machine_mode) (((((((set)->fld[0]).rtx))->fld[0]).rtx))->mode))]))
       && ((((((set)->fld[0]).rtx))->fld[0]).rtx) == x))
 {
   rtx src = (((set)->fld[1]).rtx);
# 926 "../../../kg++fe/gnu/combine.c"
   if (reg_nonzero_bits[(((x)->fld[0]).rtuint)] != ~(unsigned long long) 0)
     reg_nonzero_bits[(((x)->fld[0]).rtuint)]
       |= cached_nonzero_bits (src, nonzero_bits_mode, (rtx) 0, VOIDmode, 0);
   num = cached_num_sign_bit_copies ((((set)->fld[1]).rtx), ((enum machine_mode) (x)->mode), (rtx) 0, VOIDmode, 0);
   if (reg_sign_bit_copies[(((x)->fld[0]).rtuint)] == 0
       || reg_sign_bit_copies[(((x)->fld[0]).rtuint)] > num)
     reg_sign_bit_copies[(((x)->fld[0]).rtuint)] = num;
 }
      else
 {
   reg_nonzero_bits[(((x)->fld[0]).rtuint)] = mode_mask_array[(int) (((enum machine_mode) (x)->mode))];
   reg_sign_bit_copies[(((x)->fld[0]).rtuint)] = 1;
 }
    }
}
# 952 "../../../kg++fe/gnu/combine.c"
static int
can_combine_p (insn, i3, pred, succ, pdest, psrc)
     rtx insn;
     rtx i3;
     rtx pred __attribute__ ((__unused__));
     rtx succ;
     rtx *pdest, *psrc;
{
  int i;
  rtx set = 0, src, dest;
  rtx p;



  int all_adjacent = (succ ? (next_active_insn (insn) == succ
         && next_active_insn (succ) == i3)
        : next_active_insn (insn) == i3);
# 985 "../../../kg++fe/gnu/combine.c"
  if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET)
    set = (((insn)->fld[5]).rtx);
  else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
    && ((enum rtx_code) (((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->code) == SET)
    {
      for (i = 0; i < ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem); i++)
 {
   rtx elt = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]);

   switch (((enum rtx_code) (elt)->code))
     {


     case USE:
# 1012 "../../../kg++fe/gnu/combine.c"
       if (((enum rtx_code) ((((elt)->fld[0]).rtx))->code) == REG
    && ((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == PARALLEL)
  {
    rtx i3pat = (((i3)->fld[5]).rtx);
    int i = (((((i3pat)->fld[0]).rtvec))->num_elem) - 1;
    unsigned int regno = ((((((elt)->fld[0]).rtx))->fld[0]).rtuint);

    do
      {
        rtx i3elt = (((((i3pat)->fld[0]).rtvec))->elem[i]);

        if (((enum rtx_code) (i3elt)->code) == USE
     && ((enum rtx_code) ((((i3elt)->fld[0]).rtx))->code) == REG
     && (((((((i3elt)->fld[0]).rtx))->fld[0]).rtuint) == regno
         ? reg_set_between_p ((((elt)->fld[0]).rtx),
         (((insn)->fld[1]).rtx), i3)
         : regno >= 176))
   return 0;
      }
    while (--i >= 0);
  }
       break;


     case CLOBBER:
       break;

     case SET:


       if (find_reg_note (insn, REG_UNUSED, (((elt)->fld[0]).rtx))
    && ! side_effects_p (elt))
  break;



       if (set)
  return 0;

       set = elt;
       break;

     default:

       return 0;
     }
 }

      if (set == 0


   || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == ASM_OPERANDS)
 return 0;
    }
  else
    return 0;

  if (set == 0)
    return 0;

  set = expand_field_assignment (set);
  src = (((set)->fld[1]).rtx), dest = (((set)->fld[0]).rtx);


  if (dest == (global_rtl[GR_STACK_POINTER])

      || ((enum rtx_code) (dest)->code) == ZERO_EXTRACT || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART


      || (rtx_equal_p (src, dest) && find_reg_note (insn, REG_EQUAL, (rtx) 0))

      || ((enum rtx_code) (src)->code) == ASM_OPERANDS

      || ((enum rtx_code) (src)->code) == CALL

      || (((enum rtx_code) (i3)->code) == CALL_INSN
   && (find_reg_fusage (i3, USE, dest)
       || (((enum rtx_code) (dest)->code) == REG
    && (((dest)->fld[0]).rtuint) < 176
    && global_regs[(((dest)->fld[0]).rtuint)])))

      || 0
      || (succ && 0)
# 1104 "../../../kg++fe/gnu/combine.c"
      || (succ && ! all_adjacent
   && reg_used_between_p (dest, succ, i3))
# 1115 "../../../kg++fe/gnu/combine.c"
      || (! all_adjacent
   && (((((enum rtx_code) (src)->code) != MEM
  || ! find_reg_note (insn, REG_EQUIV, src))
        && use_crosses_set_p (src, ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)])))
       || (((enum rtx_code) (src)->code) == ASM_OPERANDS && (((src))->volatil))
       || ((enum rtx_code) (src)->code) == UNSPEC_VOLATILE))


      || find_reg_note (i3, REG_NO_CONFLICT, dest)
      || (succ && find_reg_note (succ, REG_NO_CONFLICT, dest))





      || (((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]) < last_call_cuid && ! (((enum rtx_code) (src)->code) == LABEL_REF || ((enum rtx_code) (src)->code) == SYMBOL_REF || ((enum rtx_code) (src)->code) == CONST_INT || ((enum rtx_code) (src)->code) == CONST_DOUBLE || ((enum rtx_code) (src)->code) == CONST || ((enum rtx_code) (src)->code) == HIGH || ((enum rtx_code) (src)->code) == CONST_VECTOR || ((enum rtx_code) (src)->code) == CONSTANT_P_RTX)))
    return 0;


  if (((enum rtx_code) (dest)->code) == REG)
    {
# 1145 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (src)->code) == REG
   && (((((dest)->fld[0]).rtuint) < 176
        && ! mips_hard_regno_mode_ok[ (int)(((enum machine_mode) (dest)->mode)) ][ ((((dest)->fld[0]).rtuint)) ])







       || ((((src)->fld[0]).rtuint) < 176
    && ! mips_hard_regno_mode_ok[ (int)(((enum machine_mode) (src)->mode)) ][ ((((src)->fld[0]).rtuint)) ])))
 return 0;
    }
  else if (((enum rtx_code) (dest)->code) != CC0)
    return 0;




  if (((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == PARALLEL)
    for (i = ((((((((i3)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
      if (((enum rtx_code) (((((((((i3)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->code) == CLOBBER
   && (reg_overlap_mentioned_p ((((((((((((i3)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtx),
           src)
       || rtx_equal_p ((((((((((((i3)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtx), dest)))
 return 0;




  if (((enum rtx_code) (src)->code) == ASM_OPERANDS || volatile_refs_p (src))
    {

      if (succ != 0 && volatile_refs_p ((((succ)->fld[5]).rtx)))
        return 0;

      for (p = (((insn)->fld[2]).rtx); p != i3; p = (((p)->fld[2]).rtx))
        if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') && p != succ && volatile_refs_p ((((p)->fld[5]).rtx)))
   return 0;
    }




  if (((enum rtx_code) (src)->code) == ASM_OPERANDS
      && ((enum rtx_code) (dest)->code) == REG && (((dest)->fld[0]).rtuint) < 176)
    return 0;




  for (p = (((insn)->fld[2]).rtx); p != i3; p = (((p)->fld[2]).rtx))
    if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') && p != succ && volatile_insn_p ((((p)->fld[5]).rtx)))
      return 0;
# 1235 "../../../kg++fe/gnu/combine.c"
  *pdest = dest;
  *psrc = src;

  return 1;
}




static int
sets_function_arg_p (pat)
     rtx pat;
{
  int i;
  rtx inner_dest;

  switch (((enum rtx_code) (pat)->code))
    {
    case INSN:
      return sets_function_arg_p ((((pat)->fld[5]).rtx));

    case PARALLEL:
      for (i = (((((pat)->fld[0]).rtvec))->num_elem); --i >= 0;)
 if (sets_function_arg_p ((((((pat)->fld[0]).rtvec))->elem[i])))
   return 1;

      break;

    case SET:
      inner_dest = (((pat)->fld[0]).rtx);
      while (((enum rtx_code) (inner_dest)->code) == STRICT_LOW_PART
      || ((enum rtx_code) (inner_dest)->code) == SUBREG
      || ((enum rtx_code) (inner_dest)->code) == ZERO_EXTRACT)
 inner_dest = (((inner_dest)->fld[0]).rtx);

      return (((enum rtx_code) (inner_dest)->code) == REG
       && (((inner_dest)->fld[0]).rtuint) < 176
       && ((((unsigned long long) ((((((inner_dest)->fld[0]).rtuint))) - ((0 + 4))) <= ((((0 + 4) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1)) - ((0 + 4)))) || (((unsigned long long) ((((((inner_dest)->fld[0]).rtuint))) - ((32 + 12))) <= ((((32 + 12) + ((mips_abi == 0 || mips_abi == 4) ? 4 : 8) - 1)) - ((32 + 12)))) && (((((inner_dest)->fld[0]).rtuint)) % ((target_flags & 0x00000200) || (target_flags & 0x00020000) ? 1 : 2) == 0) && mips_abi != 4)) && !fixed_regs[(((inner_dest)->fld[0]).rtuint)]));

    default:
      break;
    }

  return 0;
}
# 1318 "../../../kg++fe/gnu/combine.c"
static int
combinable_i3pat (i3, loc, i2dest, i1dest, i1_not_in_src, pi3dest_killed)
     rtx i3;
     rtx *loc;
     rtx i2dest;
     rtx i1dest;
     int i1_not_in_src;
     rtx *pi3dest_killed;
{
  rtx x = *loc;

  if (((enum rtx_code) (x)->code) == SET)
    {
      rtx set = expand_field_assignment (x);
      rtx dest = (((set)->fld[0]).rtx);
      rtx src = (((set)->fld[1]).rtx);
      rtx inner_dest = dest;





      do_SUBST(&(*loc), (set));

      while (((enum rtx_code) (inner_dest)->code) == STRICT_LOW_PART
      || ((enum rtx_code) (inner_dest)->code) == SUBREG
      || ((enum rtx_code) (inner_dest)->code) == ZERO_EXTRACT)
 inner_dest = (((inner_dest)->fld[0]).rtx);
# 1373 "../../../kg++fe/gnu/combine.c"
      if ((inner_dest != dest
    && (reg_overlap_mentioned_p (i2dest, inner_dest)
        || (i1dest && reg_overlap_mentioned_p (i1dest, inner_dest))))
# 1387 "../../../kg++fe/gnu/combine.c"
   || (((enum rtx_code) (inner_dest)->code) == REG
       && (((inner_dest)->fld[0]).rtuint) < 176
       && (! mips_hard_regno_mode_ok[ (int)(((enum machine_mode) (inner_dest)->mode)) ][ ((((inner_dest)->fld[0]).rtuint)) ]))

   || (i1_not_in_src && reg_overlap_mentioned_p (i1dest, src)))
 return 0;






      if (pi3dest_killed && ((enum rtx_code) (dest)->code) == REG
   && reg_referenced_p (dest, (((i3)->fld[5]).rtx))
   && (((dest)->fld[0]).rtuint) != (0 + 1)

   && (((dest)->fld[0]).rtuint) != ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)


   && ((((dest)->fld[0]).rtuint) != 0
       || ! fixed_regs [(((dest)->fld[0]).rtuint)])

   && (((dest)->fld[0]).rtuint) != (0 + 29))
 {
   if (*pi3dest_killed)
     return 0;

   *pi3dest_killed = dest;
 }
    }

  else if (((enum rtx_code) (x)->code) == PARALLEL)
    {
      int i;

      for (i = 0; i < (((((x)->fld[0]).rtvec))->num_elem); i++)
 if (! combinable_i3pat (i3, &(((((x)->fld[0]).rtvec))->elem[i]), i2dest, i1dest,
    i1_not_in_src, pi3dest_killed))
   return 0;
    }

  return 1;
}




static int
contains_muldiv (x)
     rtx x;
{
  switch (((enum rtx_code) (x)->code))
    {
    case MOD: case DIV: case UMOD: case UDIV:
      return 1;

    case MULT:
      return ! (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
  && exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint))) >= 0);
    default:
      switch ((rtx_class[(int) (((enum rtx_code) (x)->code))]))
 {
 case 'c': case '<': case '2':
   return contains_muldiv ((((x)->fld[0]).rtx))
     || contains_muldiv ((((x)->fld[1]).rtx));

 case '1':
   return contains_muldiv ((((x)->fld[0]).rtx));

 default:
   return 0;
 }
    }
}





static int
cant_combine_insn_p (insn)
     rtx insn;
{
  rtx set;
  rtx src, dest;




  if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
    return 1;
# 1486 "../../../kg++fe/gnu/combine.c"
  set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);
  if (! set)
    return 0;
  src = (((set)->fld[1]).rtx);
  dest = (((set)->fld[0]).rtx);
  if (((enum rtx_code) (src)->code) == SUBREG)
    src = (((src)->fld[0]).rtx);
  if (((enum rtx_code) (dest)->code) == SUBREG)
    dest = (((dest)->fld[0]).rtx);
  if ((((enum rtx_code) (src)->code) == REG) && (((enum rtx_code) (dest)->code) == REG)
      && (((((src)->fld[0]).rtuint) < 176
    && ! fixed_regs[(((src)->fld[0]).rtuint)])
   || ((((dest)->fld[0]).rtuint) < 176
       && ! fixed_regs[(((dest)->fld[0]).rtuint)])))
    return 1;

  return 0;
}
# 1521 "../../../kg++fe/gnu/combine.c"
static rtx
try_combine (i3, i2, i1, new_direct_jump_p)
     rtx i3, i2, i1;
     int *new_direct_jump_p;
{

  rtx newpat, newi2pat = 0;
  int substed_i2 = 0, substed_i1 = 0;

  int added_sets_1, added_sets_2;

  int total_sets;

  int i2_is_used;

  int insn_code_number, i2_code_number = 0, other_code_number = 0;



  rtx i3dest_killed = 0;

  rtx i2dest, i2src, i1dest = 0, i1src = 0;

  rtx i2pat;

  int i2dest_in_i2src = 0, i1dest_in_i1src = 0, i2dest_in_i1src = 0;
  int i1_feeds_i3 = 0;

  rtx new_i3_notes, new_i2_notes;

  int i3_subst_into_i2 = 0;

  int have_mult = 0;

  int maxreg;
  rtx temp;
  rtx link;
  int i;



  if (cant_combine_insn_p (i3)
      || cant_combine_insn_p (i2)
      || (i1 && cant_combine_insn_p (i1))
# 1573 "../../../kg++fe/gnu/combine.c"
      )
    return 0;

  combine_attempts++;
  undobuf.other_insn = 0;


  do { HARD_REG_ELT_TYPE *scan_tp_ = (newpat_used_regs); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);



  if (i1 && ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]) > ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]))
    temp = i1, i1 = i2, i2 = temp;

  added_links_insn = 0;
# 1605 "../../../kg++fe/gnu/combine.c"
  if (i1 == 0 && ((enum rtx_code) (i3)->code) == INSN && ((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == SET
      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[1]).rtx))->code) == REG
      && (((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtuint) >= 176
      && find_reg_note (i3, REG_DEAD, ((((((i3)->fld[5]).rtx))->fld[1]).rtx))
      && ((enum rtx_code) ((((i2)->fld[5]).rtx))->code) == PARALLEL
      && ! side_effects_p (((((((i3)->fld[5]).rtx))->fld[0]).rtx))




      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[0]).rtx))->code) != ZERO_EXTRACT
      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[0]).rtx))->code) != STRICT_LOW_PART
      && ! reg_overlap_mentioned_p (((((((i3)->fld[5]).rtx))->fld[1]).rtx),
        ((((((i3)->fld[5]).rtx))->fld[0]).rtx))
      && next_real_insn (i2) == i3)
    {
      rtx p2 = (((i2)->fld[5]).rtx);
# 1633 "../../../kg++fe/gnu/combine.c"
      for (i = 0; i < (((((p2)->fld[0]).rtvec))->num_elem); i++)
 if ((((enum rtx_code) ((((((p2)->fld[0]).rtvec))->elem[i]))->code) == SET
      || ((enum rtx_code) ((((((p2)->fld[0]).rtvec))->elem[i]))->code) == CLOBBER)
     && reg_overlap_mentioned_p (((((((i3)->fld[5]).rtx))->fld[0]).rtx),
     ((((((((p2)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx)))
   break;

      if (i == (((((p2)->fld[0]).rtvec))->num_elem))
 for (i = 0; i < (((((p2)->fld[0]).rtvec))->num_elem); i++)
   if ((((enum rtx_code) ((((((p2)->fld[0]).rtvec))->elem[i]))->code) == SET
        || ((enum rtx_code) ((((((p2)->fld[0]).rtvec))->elem[i]))->code) == CLOBBER)
       && ((((((((p2)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx) == ((((((i3)->fld[5]).rtx))->fld[1]).rtx))
     {
       combine_merges++;

       subst_insn = i3;
       subst_low_cuid = ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]);

       added_sets_2 = added_sets_1 = 0;
       i2dest = ((((((i3)->fld[5]).rtx))->fld[1]).rtx);




       do_SUBST(&(((((((((p2)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx)), (((((((i3)->fld[5]).rtx))->fld[0]).rtx)));


       newpat = p2;
       i3_subst_into_i2 = 1;
       goto validate_replacement;
     }
    }




  if (i1 == 0
      && (temp = (((rtx_class[(int) (((enum rtx_code) (i2)->code))]) == 'i') ? (((enum rtx_code) ((((i2)->fld[5]).rtx))->code) == SET ? (((i2)->fld[5]).rtx) : single_set_2 (i2, (((i2)->fld[5]).rtx))) : (rtx) 0)) != 0
      && (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_INT
   || ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_DOUBLE)
      && ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == REG
      && (mode_class[(int) (((enum machine_mode) ((((temp)->fld[0]).rtx))->mode))]) == MODE_INT
      && (mode_size[(int) (((enum machine_mode) ((((temp)->fld[0]).rtx))->mode))]) == 2 * ((target_flags & 0x00002000) ? 8 : 4)
      && ((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == SET
      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[0]).rtx))->code) == SUBREG
      && (((((((((i3)->fld[5]).rtx))->fld[0]).rtx))->fld[0]).rtx) == (((temp)->fld[0]).rtx)
      && (mode_class[(int) (((enum machine_mode) (((((((i3)->fld[5]).rtx))->fld[0]).rtx))->mode))]) == MODE_INT
      && (mode_size[(int) (((enum machine_mode) (((((((i3)->fld[5]).rtx))->fld[0]).rtx))->mode))]) == ((target_flags & 0x00002000) ? 8 : 4)
      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[1]).rtx))->code) == CONST_INT)
    {
      long long lo, hi;

      if (((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_INT)
 lo = ((((((temp)->fld[1]).rtx))->fld[0]).rtwint), hi = lo < 0 ? -1 : 0;
      else
 {
   lo = ((((((temp)->fld[1]).rtx))->fld[0]).rtwint);
   hi = ((((((temp)->fld[1]).rtx))->fld[1]).rtwint);
 }

      if (subreg_lowpart_p (((((((i3)->fld[5]).rtx))->fld[0]).rtx)))
 {


   if ((8 * 8) < (8 * ((target_flags & 0x00002000) ? 8 : 4)))
     fancy_abort ("../../../kg++fe/gnu/combine.c", 1698, __FUNCTION__);

   lo &= ~((((unsigned long long) (1) << ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1)) << 1) - 1);
   lo |= ((((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
   & ((((unsigned long long) (1) << ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1)) << 1) - 1));
 }
      else if ((8 * 8) == (8 * ((target_flags & 0x00002000) ? 8 : 4)))
 hi = (((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
      else if ((8 * 8) >= 2 * (8 * ((target_flags & 0x00002000) ? 8 : 4)))
 {
   int sign = -(int) ((unsigned long long) lo
        >> ((8 * 8) - 1));

   lo &= ~ ((((unsigned long long) ((((unsigned long long) (1) << ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1)) << 1) - 1) << ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1)) << 1));

   lo |= ((((unsigned long long) ((((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtwint)) << ((8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1)) << 1));

   if (hi == sign)
     hi = lo < 0 ? -1 : 0;
 }
      else


 fancy_abort ("../../../kg++fe/gnu/combine.c", 1721, __FUNCTION__);

      combine_merges++;
      subst_insn = i3;
      subst_low_cuid = ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]);
      added_sets_2 = added_sets_1 = 0;
      i2dest = (((temp)->fld[0]).rtx);

      do_SUBST(&((((temp)->fld[1]).rtx)), (immed_double_const (lo, hi, ((enum machine_mode) ((((temp)->fld[0]).rtx))->mode))));


      newpat = (((i2)->fld[5]).rtx);
      goto validate_replacement;
    }
# 1750 "../../../kg++fe/gnu/combine.c"
  if (i1 == 0 && ((enum rtx_code) ((((i2)->fld[5]).rtx))->code) == PARALLEL
      && ((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) >= 2
      && ((enum rtx_code) (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->code) == SET
      && ((mode_class[(int) (((enum machine_mode) ((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->mode))])
   == MODE_CC)
      && ((enum rtx_code) ((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->code) == COMPARE
      && ((((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->fld[1]).rtx) == (const_int_rtx[64])
      && ((enum rtx_code) (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[1]))->code) == SET
      && ((enum rtx_code) ((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) == REG
      && rtx_equal_p (((((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->fld[0]).rtx),
        (((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[1]))->fld[1]).rtx)))
    {
      for (i = ((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) - 1; i >= 2; i--)
 if (((enum rtx_code) (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->code) != CLOBBER)
   break;

      if (i == 1)
 {





   subst_prev_insn = i1
     = gen_rtx_fmt_iuuBteiee (INSN, (VOIDmode), ((((i2)->fld[0]).rtint)), ((rtx) 0), (i2), ((((i2)->fld[3]).bb)), ((((i2)->fld[4]).rttree)), (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[1])), (-1), ((rtx) 0), ((rtx) 0));




   do_SUBST(&((((i2)->fld[5]).rtx)), (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[0])));
   do_SUBST(&((((((((((i2)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtx)), (((((((i1)->fld[5]).rtx))->fld[0]).rtx)));

 }
    }



  if (! can_combine_p (i2, i3, i1, (rtx) 0, &i2dest, &i2src)
      || (i1 && ! can_combine_p (i1, i3, (rtx) 0, i2, &i1dest, &i1src)))
    {
      undo_all ();
      return 0;
    }



  i2dest_in_i2src = reg_overlap_mentioned_p (i2dest, i2src);
  i1dest_in_i1src = i1 && reg_overlap_mentioned_p (i1dest, i1src);
  i2dest_in_i1src = i1 && reg_overlap_mentioned_p (i2dest, i1src);



  i1_feeds_i3 = i1 && ! reg_overlap_mentioned_p (i1dest, i2src);


  if (! combinable_i3pat (i3, &(((i3)->fld[5]).rtx), i2dest, i1dest,
     i1 && i2dest_in_i1src && i1_feeds_i3,
     &i3dest_killed))
    {
      undo_all ();
      return 0;
    }




  if (((enum rtx_code) (i2src)->code) == MULT
      || (i1 != 0 && ((enum rtx_code) (i1src)->code) == MULT)
      || (((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == SET
   && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[1]).rtx))->code) == MULT))
    have_mult = 1;
# 1860 "../../../kg++fe/gnu/combine.c"
  added_sets_2 = ! dead_or_set_p (i3, i2dest);

  added_sets_1
    = i1 && ! (i1_feeds_i3 ? dead_or_set_p (i3, i1dest)
        : (dead_or_set_p (i3, i1dest) || dead_or_set_p (i2, i1dest)));
# 1873 "../../../kg++fe/gnu/combine.c"
  i2pat = (((enum rtx_code) ((((i2)->fld[5]).rtx))->code) == PARALLEL
    ? gen_rtx_fmt_ee (SET, (VOIDmode), (i2dest), (i2src))
    : (((i2)->fld[5]).rtx));

  if (added_sets_2)
    i2pat = copy_rtx (i2pat);

  combine_merges++;



  maxreg = max_reg_num ();

  subst_insn = i3;
# 1902 "../../../kg++fe/gnu/combine.c"
  if (flag_expensive_optimizations)
    {



      if (i1)
 {
   subst_low_cuid = ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]);
   i1src = subst (i1src, (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
 }
      else
 {
   subst_low_cuid = ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]);
   i2src = subst (i2src, (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
 }
    }
# 1931 "../../../kg++fe/gnu/combine.c"
  if (i1 == 0 && added_sets_2 && ((enum rtx_code) ((((i3)->fld[5]).rtx))->code) == SET
      && ((enum rtx_code) (((((((i3)->fld[5]).rtx))->fld[1]).rtx))->code) == COMPARE
      && (((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[1]).rtx) == (const_int_rtx[64])
      && rtx_equal_p ((((((((((i3)->fld[5]).rtx))->fld[1]).rtx))->fld[0]).rtx), i2dest))
    {





      newpat = (((i3)->fld[5]).rtx);
      do_SUBST(&(((((((newpat)->fld[1]).rtx))->fld[0]).rtx)), (i2src));

      i2_is_used = 1;
# 1978 "../../../kg++fe/gnu/combine.c"
    }
  else

    {
      n_occurrences = 0;





      subst_low_cuid = ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]);
      newpat = subst ((((i3)->fld[5]).rtx), i2dest, i2src, 0,
        ! i1_feeds_i3 && i1dest_in_i1src);
      substed_i2 = 1;


      i2_is_used = n_occurrences;
    }




  if (i1 && ((enum rtx_code) (newpat)->code) != CLOBBER)
    {




      if (! combinable_i3pat ((rtx) 0, &newpat, i1dest, (rtx) 0,
         0, (rtx*) 0))
 {
   undo_all ();
   return 0;
 }

      n_occurrences = 0;
      subst_low_cuid = ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]);
      newpat = subst (newpat, i1dest, i1src, 0, 0);
      substed_i1 = 1;
    }



  if ((0 != 0
       && i2_is_used + added_sets_2 > 1)
      || (i1 != 0 && 0 != 0
   && (n_occurrences + added_sets_1 + (added_sets_2 && ! i1_feeds_i3)
       > 1))


      || max_reg_num () != maxreg

      || ((enum rtx_code) (newpat)->code) == CLOBBER


      || (((enum rtx_code) (newpat)->code) == SET && ((enum rtx_code) ((((newpat)->fld[1]).rtx))->code) == MULT
   && ! have_mult))
    {
      undo_all ();
      return 0;
    }






  if (added_sets_1 || added_sets_2)
    {
      combine_extras++;

      if (((enum rtx_code) (newpat)->code) == PARALLEL)
 {
   rtvec old = (((newpat)->fld[0]).rtvec);
   total_sets = (((((newpat)->fld[0]).rtvec))->num_elem) + added_sets_1 + added_sets_2;
   newpat = gen_rtx_fmt_E (PARALLEL, (VOIDmode), (rtvec_alloc (total_sets)));
   memcpy ((((newpat)->fld[0]).rtvec)->elem, &old->elem[0],
    sizeof (old->elem[0]) * old->num_elem);
 }
      else
 {
   rtx old = newpat;
   total_sets = 1 + added_sets_1 + added_sets_2;
   newpat = gen_rtx_fmt_E (PARALLEL, (VOIDmode), (rtvec_alloc (total_sets)));
   (((((newpat)->fld[0]).rtvec))->elem[0]) = old;
 }

      if (added_sets_1)
 (((((newpat)->fld[0]).rtvec))->elem[--total_sets])
   = (((enum rtx_code) ((((i1)->fld[5]).rtx))->code) == PARALLEL
      ? gen_rtx_fmt_ee (SET, (VOIDmode), (i1dest), (i1src)) : (((i1)->fld[5]).rtx));

      if (added_sets_2)
 {



   if (i1 == 0)
     (((((newpat)->fld[0]).rtvec))->elem[--total_sets]) = i2pat;
   else

     (((((newpat)->fld[0]).rtvec))->elem[--total_sets])
       = subst (i2pat, i1dest, i1src, 0, 0);
 }
    }



 validate_replacement:


  mark_used_regs_combine (newpat);


  insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);
# 2103 "../../../kg++fe/gnu/combine.c"
  if (insn_code_number < 0 && ((enum rtx_code) (newpat)->code) == PARALLEL
      && (((((newpat)->fld[0]).rtvec))->num_elem) == 2
      && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[0]))->code) == SET
      && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[1]))->code) == SET
      && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) == REG
      && find_reg_note (i3, REG_UNUSED, ((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))
      && ! side_effects_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx))
      && asm_noperands (newpat) < 0)
    {
      newpat = (((((newpat)->fld[0]).rtvec))->elem[0]);
      insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);
    }

  else if (insn_code_number < 0 && ((enum rtx_code) (newpat)->code) == PARALLEL
    && (((((newpat)->fld[0]).rtvec))->num_elem) == 2
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[0]))->code) == SET
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[1]))->code) == SET
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->code) == REG
    && find_reg_note (i3, REG_UNUSED, ((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))
    && ! side_effects_p (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))
    && asm_noperands (newpat) < 0)
    {
      newpat = (((((newpat)->fld[0]).rtvec))->elem[1]);
      insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);
    }







  if (i1 && insn_code_number < 0 && ((enum rtx_code) (newpat)->code) == SET
      && asm_noperands (newpat) < 0)
    {
      rtx m_split, *split;
      rtx ni2dest = i2dest;





      m_split = split_insns (newpat, i3);
# 2154 "../../../kg++fe/gnu/combine.c"
      if (m_split == 0 && ! reg_overlap_mentioned_p (ni2dest, newpat))
 {


   if (((enum machine_mode) ((((newpat)->fld[0]).rtx))->mode) != ((enum machine_mode) (i2dest)->mode)
       && ((enum machine_mode) ((((newpat)->fld[0]).rtx))->mode) != VOIDmode
       && ((enum rtx_code) (i2dest)->code) == REG
       && ((((i2dest)->fld[0]).rtuint) < 176
    || ((((reg_n_info)->data.reg[(((i2dest)->fld[0]).rtuint)])->sets) == 1 && ! added_sets_2
        && ! (((i2dest))->volatil))))
     ni2dest = gen_rtx_REG (((enum machine_mode) ((((newpat)->fld[0]).rtx))->mode),
       (((i2dest)->fld[0]).rtuint));

   m_split = split_insns (gen_rtx_fmt_E (PARALLEL, (VOIDmode), (gen_rtvec (2, newpat, gen_rtx_fmt_e (CLOBBER, (VOIDmode), (ni2dest))))),




     i3);


   if (! m_split && ni2dest != i2dest)
     {
       ni2dest = i2dest;
       m_split = split_insns (gen_rtx_fmt_E (PARALLEL, (VOIDmode), (gen_rtvec (2, newpat, gen_rtx_fmt_e (CLOBBER, (VOIDmode), (i2dest))))),




         i3);
     }
 }

      if (m_split && (((m_split)->fld[2]).rtx) == (rtx) 0)
 {
   m_split = (((m_split)->fld[5]).rtx);
   insn_code_number = recog_for_combine (&m_split, i3, &new_i3_notes);
   if (insn_code_number >= 0)
     newpat = m_split;
 }
      else if (m_split && ((((((m_split)->fld[2]).rtx))->fld[2]).rtx) == (rtx) 0
        && (next_real_insn (i2) == i3
     || ! use_crosses_set_p ((((m_split)->fld[5]).rtx), ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]))))
 {
   rtx i2set, i3set;
   rtx newi3pat = ((((((m_split)->fld[2]).rtx))->fld[5]).rtx);
   newi2pat = (((m_split)->fld[5]).rtx);

   i3set = (((rtx_class[(int) (((enum rtx_code) ((((m_split)->fld[2]).rtx))->code))]) == 'i') ? (((enum rtx_code) (((((((m_split)->fld[2]).rtx))->fld[5]).rtx))->code) == SET ? ((((((m_split)->fld[2]).rtx))->fld[5]).rtx) : single_set_2 ((((m_split)->fld[2]).rtx), ((((((m_split)->fld[2]).rtx))->fld[5]).rtx))) : (rtx) 0);
   i2set = (((rtx_class[(int) (((enum rtx_code) (m_split)->code))]) == 'i') ? (((enum rtx_code) ((((m_split)->fld[5]).rtx))->code) == SET ? (((m_split)->fld[5]).rtx) : single_set_2 (m_split, (((m_split)->fld[5]).rtx))) : (rtx) 0);





   if ((((i2dest)->fld[0]).rtuint) >= 176)
     do_SUBST(&((cfun->emit->x_regno_reg_rtx)[(((i2dest)->fld[0]).rtuint)]), (ni2dest));

   i2_code_number = recog_for_combine (&newi2pat, i2, &new_i2_notes);





   if (i2_code_number >= 0 && i2set && i3set
       && (next_real_insn (i2) == i3
    || ! reg_used_between_p ((((i2set)->fld[0]).rtx), i2, i3)))
     insn_code_number = recog_for_combine (&newi3pat, i3,
        &new_i3_notes);
   if (insn_code_number >= 0)
     newpat = newi3pat;




   if (insn_code_number >= 0)
     {
       rtx new_i3_dest = (((i3set)->fld[0]).rtx);
       rtx new_i2_dest = (((i2set)->fld[0]).rtx);

       while (((enum rtx_code) (new_i3_dest)->code) == ZERO_EXTRACT
       || ((enum rtx_code) (new_i3_dest)->code) == STRICT_LOW_PART
       || ((enum rtx_code) (new_i3_dest)->code) == SUBREG)
  new_i3_dest = (((new_i3_dest)->fld[0]).rtx);

       while (((enum rtx_code) (new_i2_dest)->code) == ZERO_EXTRACT
       || ((enum rtx_code) (new_i2_dest)->code) == STRICT_LOW_PART
       || ((enum rtx_code) (new_i2_dest)->code) == SUBREG)
  new_i2_dest = (((new_i2_dest)->fld[0]).rtx);

       if (((enum rtx_code) (new_i3_dest)->code) == REG
    && ((enum rtx_code) (new_i2_dest)->code) == REG
    && (((new_i3_dest)->fld[0]).rtuint) == (((new_i2_dest)->fld[0]).rtuint))
  (((reg_n_info)->data.reg[(((new_i2_dest)->fld[0]).rtuint)])->sets)++;
     }
 }




      if (insn_code_number < 0 && (split = find_split_point (&newpat, i3)) != 0





   && (((enum machine_mode) (*split)->mode) == ((enum machine_mode) (i2dest)->mode)
       || ((enum machine_mode) (*split)->mode) == VOIDmode
       || (((i2dest)->fld[0]).rtuint) < 176
       || ((((reg_n_info)->data.reg[(((i2dest)->fld[0]).rtuint)])->sets) == 1 && ! added_sets_2
    && ! (((i2dest))->volatil)))
   && (next_real_insn (i2) == i3
       || ! use_crosses_set_p (*split, ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)])))


   && ! reg_referenced_p (i2dest, newpat))
 {
   rtx newdest = i2dest;
   enum rtx_code split_code = ((enum rtx_code) (*split)->code);
   enum machine_mode split_mode = ((enum machine_mode) (*split)->mode);



   if (((enum machine_mode) (i2dest)->mode) != split_mode && split_mode != VOIDmode)
     {
       newdest = gen_rtx_REG (split_mode, (((i2dest)->fld[0]).rtuint));

       if ((((i2dest)->fld[0]).rtuint) >= 176)
  do_SUBST(&((cfun->emit->x_regno_reg_rtx)[(((i2dest)->fld[0]).rtuint)]), (newdest));
     }




   if (split_code == MULT
       && ((enum rtx_code) ((((*split)->fld[1]).rtx))->code) == CONST_INT
       && ((((((*split)->fld[1]).rtx))->fld[0]).rtwint) > 0
       && (i = exact_log2_wide ((unsigned long long) (((((((*split)->fld[1]).rtx))->fld[0]).rtwint)))) >= 0)
     {
       do_SUBST(&(*split), (gen_rtx_fmt_ee (ASHIFT, (split_mode), ((((*split)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (i))))));



       split_code = ((enum rtx_code) (*split)->code);
     }




   if (split_code == SUBREG && ((enum rtx_code) ((((*split)->fld[0]).rtx))->code) == MEM)
     {



       if (((target_flags & 0x00002000) && ((((enum machine_mode) ((((*split)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((*split)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND)
    == SIGN_EXTEND)
  do_SUBST(&(*split), (gen_rtx_fmt_e (SIGN_EXTEND, (split_mode), ((((*split)->fld[0]).rtx)))));

       else

  do_SUBST(&(*split), (gen_rtx_fmt_e (ZERO_EXTEND, (split_mode), ((((*split)->fld[0]).rtx)))));

     }


   newi2pat = gen_rtx_fmt_ee (SET, (VOIDmode), (newdest), (*split));
   do_SUBST(&(*split), (newdest));
   i2_code_number = recog_for_combine (&newi2pat, i2, &new_i2_notes);



   if (i2_code_number >= 0 && ! (split_code == MULT && ! have_mult))
     insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);
 }
    }
# 2345 "../../../kg++fe/gnu/combine.c"
  else if (i1 && insn_code_number < 0 && asm_noperands (newpat) < 0
    && ((enum rtx_code) (newpat)->code) == PARALLEL
    && (((((newpat)->fld[0]).rtvec))->num_elem) == 2
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[0]))->code) == SET
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->code) == SIGN_EXTEND
    && (((enum machine_mode) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->mode)
        == ((enum machine_mode) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->mode))
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[1]))->code) == SET
    && rtx_equal_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx),
      (((((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->fld[0]).rtx))
    && ! use_crosses_set_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx),
       ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]))
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) != ZERO_EXTRACT
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) != STRICT_LOW_PART
    && ! (temp = ((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx),
   (((enum rtx_code) (temp)->code) == REG
    && reg_nonzero_bits[(((temp)->fld[0]).rtuint)] != 0
    && (mode_bitsize[(int) (((enum machine_mode) (temp)->mode))]) < (8 * ((target_flags & 0x00002000) ? 8 : 4))
    && (mode_bitsize[(int) (((enum machine_mode) (temp)->mode))]) < (8 * 4)
    && (reg_nonzero_bits[(((temp)->fld[0]).rtuint)]
        != mode_mask_array[(int) (word_mode)])))
    && ! (((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) == SUBREG
   && (temp = (((((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->fld[0]).rtx),
       (((enum rtx_code) (temp)->code) == REG
        && reg_nonzero_bits[(((temp)->fld[0]).rtuint)] != 0
        && (mode_bitsize[(int) (((enum machine_mode) (temp)->mode))]) < (8 * ((target_flags & 0x00002000) ? 8 : 4))
        && (mode_bitsize[(int) (((enum machine_mode) (temp)->mode))]) < (8 * 4)
        && (reg_nonzero_bits[(((temp)->fld[0]).rtuint)]
     != mode_mask_array[(int) (word_mode)]))))
    && ! reg_overlap_mentioned_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx),
      ((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx))
    && ! find_reg_note (i3, REG_UNUSED,
          ((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx)))
    {
      rtx ni2dest;

      newi2pat = (((((newpat)->fld[0]).rtvec))->elem[0]);
      ni2dest = ((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx);
      newpat = (((((newpat)->fld[0]).rtvec))->elem[1]);
      do_SUBST(&((((newpat)->fld[1]).rtx)), (gen_lowpart_for_combine (((enum machine_mode) ((((newpat)->fld[1]).rtx))->mode), ni2dest)));

      i2_code_number = recog_for_combine (&newi2pat, i2, &new_i2_notes);

      if (i2_code_number >= 0)
 insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);

      if (insn_code_number >= 0)
 {
   rtx insn;
   rtx link;
# 2405 "../../../kg++fe/gnu/combine.c"
   (((i3)->fld[5]).rtx) = newpat;
   distribute_links (gen_rtx_fmt_ue (INSN_LIST, (VOIDmode), (i3), ((rtx) 0)));
# 2417 "../../../kg++fe/gnu/combine.c"
   for (insn = (((i3)->fld[2]).rtx);
        insn && (this_basic_block->next_bb == (&entry_exit_blocks[1])
   || insn != this_basic_block->next_bb->head);
        insn = (((insn)->fld[2]).rtx))
     {
       if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') && reg_referenced_p (ni2dest, (((insn)->fld[5]).rtx)))
  {
    for (link = (((insn)->fld[7]).rtx); link;
         link = (((link)->fld[1]).rtx))
      if ((((link)->fld[0]).rtx) == i3)
        (((link)->fld[0]).rtx) = i1;

    break;
  }
     }
 }
    }






  else if (i1 && insn_code_number < 0 && asm_noperands (newpat) < 0
    && ((enum rtx_code) (newpat)->code) == PARALLEL
    && (((((newpat)->fld[0]).rtvec))->num_elem) == 2
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[0]))->code) == SET
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->code) != ZERO_EXTRACT
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->code) != STRICT_LOW_PART
    && ((enum rtx_code) ((((((newpat)->fld[0]).rtvec))->elem[1]))->code) == SET
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) != ZERO_EXTRACT
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) != STRICT_LOW_PART
    && ! use_crosses_set_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx),
       ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]))

    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx))->code) != USE
    && ((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx))->code) != USE
    && ! reg_referenced_p (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[0]).rtx),
      (((((newpat)->fld[0]).rtvec))->elem[0]))
    && ! reg_referenced_p (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[0]).rtx),
      (((((newpat)->fld[0]).rtvec))->elem[1]))
    && ! (contains_muldiv (((((((((newpat)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))
   && contains_muldiv (((((((((newpat)->fld[0]).rtvec))->elem[1]))->fld[1]).rtx))))
    {
# 2472 "../../../kg++fe/gnu/combine.c"
 {
   newi2pat = (((((newpat)->fld[0]).rtvec))->elem[1]);
   newpat = (((((newpat)->fld[0]).rtvec))->elem[0]);
 }

      i2_code_number = recog_for_combine (&newi2pat, i2, &new_i2_notes);

      if (i2_code_number >= 0)
 insn_code_number = recog_for_combine (&newpat, i3, &new_i3_notes);
    }



  if ((insn_code_number < 0

       && (! check_asm_operands (newpat) || added_sets_1 || added_sets_2)))
    {
      undo_all ();
      return 0;
    }


  if (undobuf.other_insn)
    {
      rtx other_pat = (((undobuf.other_insn)->fld[5]).rtx);
      rtx new_other_notes;
      rtx note, next;

      do { HARD_REG_ELT_TYPE *scan_tp_ = (newpat_used_regs); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);

      other_code_number = recog_for_combine (&other_pat, undobuf.other_insn,
          &new_other_notes);

      if (other_code_number < 0 && ! check_asm_operands (other_pat))
 {
   undo_all ();
   return 0;
 }

      (((undobuf.other_insn)->fld[5]).rtx) = other_pat;




      for (note = (((undobuf.other_insn)->fld[8]).rtx); note; note = next)
 {
   next = (((note)->fld[1]).rtx);

   if (((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_UNUSED
       && ! reg_set_p ((((note)->fld[0]).rtx), (((undobuf.other_insn)->fld[5]).rtx)))
     {
       if (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG)
  (((reg_n_info)->data.reg[((((((note)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)--;

       remove_note (undobuf.other_insn, note);
     }
 }

      for (note = new_other_notes; note; note = (((note)->fld[1]).rtx))
 if (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG)
   (((reg_n_info)->data.reg[((((((note)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)++;

      distribute_notes (new_other_notes, undobuf.other_insn,
   undobuf.other_insn, (rtx) 0, (rtx) 0, (rtx) 0);
    }
# 2554 "../../../kg++fe/gnu/combine.c"
  {
    rtx i3notes, i2notes, i1notes = 0;
    rtx i3links, i2links, i1links = 0;
    rtx midnotes = 0;
    unsigned int regno;



    rtx elim_i2 = ((newi2pat && reg_set_p (i2dest, newi2pat))
     || i2dest_in_i2src || i2dest_in_i1src
     ? 0 : i2dest);
    rtx elim_i1 = (i1 == 0 || i1dest_in_i1src
     || (newi2pat && reg_set_p (i1dest, newi2pat))
     ? 0 : i1dest);



    i3notes = (((i3)->fld[8]).rtx), i3links = (((i3)->fld[7]).rtx);
    i2notes = (((i2)->fld[8]).rtx), i2links = (((i2)->fld[7]).rtx);
    if (i1)
      i1notes = (((i1)->fld[8]).rtx), i1links = (((i1)->fld[7]).rtx);





    reset_used_flags (i3notes);
    reset_used_flags (i2notes);
    reset_used_flags (i1notes);
    reset_used_flags (newpat);
    reset_used_flags (newi2pat);
    if (undobuf.other_insn)
      reset_used_flags ((((undobuf.other_insn)->fld[5]).rtx));

    i3notes = copy_rtx_if_shared (i3notes);
    i2notes = copy_rtx_if_shared (i2notes);
    i1notes = copy_rtx_if_shared (i1notes);
    newpat = copy_rtx_if_shared (newpat);
    newi2pat = copy_rtx_if_shared (newi2pat);
    if (undobuf.other_insn)
      reset_used_flags ((((undobuf.other_insn)->fld[5]).rtx));

    (((i3)->fld[6]).rtint) = insn_code_number;
    (((i3)->fld[5]).rtx) = newpat;

    if (((enum rtx_code) (i3)->code) == CALL_INSN && (((i3)->fld[9]).rtx))
      {
 rtx call_usage = (((i3)->fld[9]).rtx);

 reset_used_flags (call_usage);
 call_usage = copy_rtx (call_usage);

 if (substed_i2)
   replace_rtx (call_usage, i2dest, i2src);

 if (substed_i1)
   replace_rtx (call_usage, i1dest, i1src);

 (((i3)->fld[9]).rtx) = call_usage;
      }

    if (undobuf.other_insn)
      (((undobuf.other_insn)->fld[6]).rtint) = other_code_number;
# 2627 "../../../kg++fe/gnu/combine.c"
    if (i3_subst_into_i2)
      {
 for (i = 0; i < ((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->num_elem); i++)
   if (((enum rtx_code) (((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->code) != USE
       && ((enum rtx_code) ((((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->code) == REG
       && (((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtx) != i2dest
       && ! find_reg_note (i2, REG_UNUSED,
      (((((((((((i2)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]))->fld[0]).rtx)))
     for (temp = (((i2)->fld[2]).rtx);
   temp && (this_basic_block->next_bb == (&entry_exit_blocks[1])
     || this_basic_block->head != temp);
   temp = (((temp)->fld[2]).rtx))
       if (temp != i3 && ((rtx_class[(int) (((enum rtx_code) (temp)->code))]) == 'i'))
  for (link = (((temp)->fld[7]).rtx); link; link = (((link)->fld[1]).rtx))
    if ((((link)->fld[0]).rtx) == i2)
      (((link)->fld[0]).rtx) = i3;

 if (i3notes)
   {
     rtx link = i3notes;
     while ((((link)->fld[1]).rtx))
       link = (((link)->fld[1]).rtx);
     (((link)->fld[1]).rtx) = i2notes;
   }
 else
   i3notes = i2notes;
 i2notes = 0;
      }

    (((i3)->fld[7]).rtx) = 0;
    (((i3)->fld[8]).rtx) = 0;
    (((i2)->fld[7]).rtx) = 0;
    (((i2)->fld[8]).rtx) = 0;

    if (newi2pat)
      {
 (((i2)->fld[6]).rtint) = i2_code_number;
 (((i2)->fld[5]).rtx) = newi2pat;
      }
    else
      {
 ((i2)->code = (enum rtx_code) (NOTE));
 (((i2)->fld[5]).rtint) = NOTE_INSN_DELETED;
 (((i2)->fld[4]).rtstr) = 0;
      }

    if (i1)
      {
 (((i1)->fld[7]).rtx) = 0;
 (((i1)->fld[8]).rtx) = 0;
 ((i1)->code = (enum rtx_code) (NOTE));
 (((i1)->fld[5]).rtint) = NOTE_INSN_DELETED;
 (((i1)->fld[4]).rtstr) = 0;
      }






    if (newi2pat)
      {
 move_deaths (newi2pat, (rtx) 0, ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]), i2, &midnotes);
 move_deaths (newpat, newi2pat, ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]), i3, &midnotes);
      }
    else
      move_deaths (newpat, (rtx) 0, i1 ? ((((i1)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i1) : uid_cuid[(((i1)->fld[0]).rtint)]) : ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]),
     i3, &midnotes);


    if (i3notes)
      distribute_notes (i3notes, i3, i3, newi2pat ? i2 : (rtx) 0,
   elim_i2, elim_i1);
    if (i2notes)
      distribute_notes (i2notes, i2, i3, newi2pat ? i2 : (rtx) 0,
   elim_i2, elim_i1);
    if (i1notes)
      distribute_notes (i1notes, i1, i3, newi2pat ? i2 : (rtx) 0,
   elim_i2, elim_i1);
    if (midnotes)
      distribute_notes (midnotes, (rtx) 0, i3, newi2pat ? i2 : (rtx) 0,
   elim_i2, elim_i1);






    if (newi2pat && new_i2_notes)
      {
 for (temp = new_i2_notes; temp; temp = (((temp)->fld[1]).rtx))
   if (((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == REG)
     (((reg_n_info)->data.reg[((((((temp)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)++;

 distribute_notes (new_i2_notes, i2, i2, (rtx) 0, (rtx) 0, (rtx) 0);
      }

    if (new_i3_notes)
      {
 for (temp = new_i3_notes; temp; temp = (((temp)->fld[1]).rtx))
   if (((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == REG)
     (((reg_n_info)->data.reg[((((((temp)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)++;

 distribute_notes (new_i3_notes, i3, i3, (rtx) 0, (rtx) 0, (rtx) 0);
      }
# 2740 "../../../kg++fe/gnu/combine.c"
    if (i3dest_killed)
      {
 if (((enum rtx_code) (i3dest_killed)->code) == REG)
   (((reg_n_info)->data.reg[(((i3dest_killed)->fld[0]).rtuint)])->deaths)++;

 if (newi2pat && reg_set_p (i3dest_killed, newi2pat))
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i3dest_killed), ((rtx) 0)),

       (rtx) 0, i2, (rtx) 0, elim_i2, elim_i1);
 else
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i3dest_killed), ((rtx) 0)),

       (rtx) 0, i3, newi2pat ? i2 : (rtx) 0,
       elim_i2, elim_i1);
      }

    if (i2dest_in_i2src)
      {
 if (((enum rtx_code) (i2dest)->code) == REG)
   (((reg_n_info)->data.reg[(((i2dest)->fld[0]).rtuint)])->deaths)++;

 if (newi2pat && reg_set_p (i2dest, newi2pat))
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i2dest), ((rtx) 0)),
       (rtx) 0, i2, (rtx) 0, (rtx) 0, (rtx) 0);
 else
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i2dest), ((rtx) 0)),
       (rtx) 0, i3, newi2pat ? i2 : (rtx) 0,
       (rtx) 0, (rtx) 0);
      }

    if (i1dest_in_i1src)
      {
 if (((enum rtx_code) (i1dest)->code) == REG)
   (((reg_n_info)->data.reg[(((i1dest)->fld[0]).rtuint)])->deaths)++;

 if (newi2pat && reg_set_p (i1dest, newi2pat))
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i1dest), ((rtx) 0)),
       (rtx) 0, i2, (rtx) 0, (rtx) 0, (rtx) 0);
 else
   distribute_notes (gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (i1dest), ((rtx) 0)),
       (rtx) 0, i3, newi2pat ? i2 : (rtx) 0,
       (rtx) 0, (rtx) 0);
      }

    distribute_links (i3links);
    distribute_links (i2links);
    distribute_links (i1links);

    if (((enum rtx_code) (i2dest)->code) == REG)
      {
 rtx link;
 rtx i2_insn = 0, i2_val = 0, set;
# 2801 "../../../kg++fe/gnu/combine.c"
 for (link = (((i3)->fld[7]).rtx); link; link = (((link)->fld[1]).rtx))
   if ((set = (((rtx_class[(int) (((enum rtx_code) ((((link)->fld[0]).rtx))->code))]) == 'i') ? (((enum rtx_code) (((((((link)->fld[0]).rtx))->fld[5]).rtx))->code) == SET ? ((((((link)->fld[0]).rtx))->fld[5]).rtx) : single_set_2 ((((link)->fld[0]).rtx), ((((((link)->fld[0]).rtx))->fld[5]).rtx))) : (rtx) 0)) != 0
       && rtx_equal_p (i2dest, (((set)->fld[0]).rtx)))
     i2_insn = (((link)->fld[0]).rtx), i2_val = (((set)->fld[1]).rtx);

 record_value_for_reg (i2dest, i2_insn, i2_val);



 if (! added_sets_2
     && (newi2pat == 0 || ! reg_mentioned_p (i2dest, newi2pat))
     && ! i2dest_in_i2src)
   {
     regno = (((i2dest)->fld[0]).rtuint);
     (((reg_n_info)->data.reg[regno])->sets)--;
   }
      }

    if (i1 && ((enum rtx_code) (i1dest)->code) == REG)
      {
 rtx link;
 rtx i1_insn = 0, i1_val = 0, set;

 for (link = (((i3)->fld[7]).rtx); link; link = (((link)->fld[1]).rtx))
   if ((set = (((rtx_class[(int) (((enum rtx_code) ((((link)->fld[0]).rtx))->code))]) == 'i') ? (((enum rtx_code) (((((((link)->fld[0]).rtx))->fld[5]).rtx))->code) == SET ? ((((((link)->fld[0]).rtx))->fld[5]).rtx) : single_set_2 ((((link)->fld[0]).rtx), ((((((link)->fld[0]).rtx))->fld[5]).rtx))) : (rtx) 0)) != 0
       && rtx_equal_p (i1dest, (((set)->fld[0]).rtx)))
     i1_insn = (((link)->fld[0]).rtx), i1_val = (((set)->fld[1]).rtx);

 record_value_for_reg (i1dest, i1_insn, i1_val);

 regno = (((i1dest)->fld[0]).rtuint);
 if (! added_sets_1 && ! i1dest_in_i1src)
   (((reg_n_info)->data.reg[regno])->sets)--;
      }




    if (newi2pat)
      note_stores (newi2pat, set_nonzero_bits_and_sign_copies, ((void *)0));
    note_stores (newpat, set_nonzero_bits_and_sign_copies, ((void *)0));
# 2850 "../../../kg++fe/gnu/combine.c"
    if (returnjump_p (i3) || any_uncondjump_p (i3))
      {
 *new_direct_jump_p = 1;

 if ((temp = next_nonnote_insn (i3)) == (rtx) 0
     || ((enum rtx_code) (temp)->code) != BARRIER)
   emit_barrier_after (i3);
      }

    if (undobuf.other_insn != (rtx) 0
 && (returnjump_p (undobuf.other_insn)
     || any_uncondjump_p (undobuf.other_insn)))
      {
 *new_direct_jump_p = 1;

 if ((temp = next_nonnote_insn (undobuf.other_insn)) == (rtx) 0
     || ((enum rtx_code) (temp)->code) != BARRIER)
   emit_barrier_after (undobuf.other_insn);
      }



    if (((enum rtx_code) (newpat)->code) == SET
 && (((newpat)->fld[1]).rtx) == (global_rtl[GR_PC])
 && (((newpat)->fld[0]).rtx) == (global_rtl[GR_PC]))
      *new_direct_jump_p = 1;
  }

  combine_successes++;
  undo_commit ();



  subst_prev_insn = (rtx) 0;

  if (added_links_insn
      && (newi2pat == 0 || ((((added_links_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (added_links_insn) : uid_cuid[(((added_links_insn)->fld[0]).rtint)]) < ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)]))
      && ((((added_links_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (added_links_insn) : uid_cuid[(((added_links_insn)->fld[0]).rtint)]) < ((((i3)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i3) : uid_cuid[(((i3)->fld[0]).rtint)]))
    return added_links_insn;
  else
    return newi2pat ? i2 : i3;
}



static void
undo_all ()
{
  struct undo *undo, *next;

  for (undo = undobuf.undos; undo; undo = next)
    {
      next = undo->next;
      if (undo->is_int)
 *undo->where.i = undo->old_contents.i;
      else
 *undo->where.r = undo->old_contents.r;

      undo->next = undobuf.frees;
      undobuf.frees = undo;
    }

  undobuf.undos = 0;



  subst_prev_insn = (rtx) 0;
}




static void
undo_commit ()
{
  struct undo *undo, *next;

  for (undo = undobuf.undos; undo; undo = next)
    {
      next = undo->next;
      undo->next = undobuf.frees;
      undobuf.frees = undo;
    }
  undobuf.undos = 0;
}
# 2944 "../../../kg++fe/gnu/combine.c"
static rtx *
find_split_point (loc, insn)
     rtx *loc;
     rtx insn;
{
  rtx x = *loc;
  enum rtx_code code = ((enum rtx_code) (x)->code);
  rtx *split;
  unsigned long long len = 0;
  long long pos = 0;
  int unsignedp = 0;
  rtx inner = (rtx) 0;


  switch (code)
    {
    case SUBREG:



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
 return loc;

      return find_split_point (&(((x)->fld[0]).rtx), insn);

    case MEM:



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST
   || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF)
 {
   do_SUBST(&((((x)->fld[0]).rtx)), (gen_rtx_fmt_ee (LO_SUM, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (gen_rtx_fmt_e (HIGH, ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), ((((x)->fld[0]).rtx)))), ((((x)->fld[0]).rtx)))));



   return &((((((x)->fld[0]).rtx))->fld[0]).rtx);
 }







      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && ! memory_address_p (((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx)))
 {
   rtx reg = (cfun->emit->x_regno_reg_rtx)[176];
   rtx seq = split_insns (gen_rtx_fmt_ee (SET, (VOIDmode), (reg), ((((x)->fld[0]).rtx))),
     subst_insn);






   if (seq
       && (((seq)->fld[2]).rtx) != (rtx) 0
       && ((((((seq)->fld[2]).rtx))->fld[2]).rtx) == (rtx) 0
       && ((enum rtx_code) (seq)->code) == INSN
       && ((enum rtx_code) ((((seq)->fld[5]).rtx))->code) == SET
       && ((((((seq)->fld[5]).rtx))->fld[0]).rtx) == reg
       && ! reg_mentioned_p (reg,
        ((((((seq)->fld[5]).rtx))->fld[1]).rtx))
       && ((enum rtx_code) ((((seq)->fld[2]).rtx))->code) == INSN
       && ((enum rtx_code) (((((((seq)->fld[2]).rtx))->fld[5]).rtx))->code) == SET
       && (((((((((seq)->fld[2]).rtx))->fld[5]).rtx))->fld[0]).rtx) == reg
       && memory_address_p (((enum machine_mode) (x)->mode),
       (((((((((seq)->fld[2]).rtx))->fld[5]).rtx))->fld[1]).rtx)))
     {
       rtx src1 = ((((((seq)->fld[5]).rtx))->fld[1]).rtx);
       rtx src2 = (((((((((seq)->fld[2]).rtx))->fld[5]).rtx))->fld[1]).rtx);






       src2 = replace_rtx (src2, reg, src1);
       split = 0;
       if ((((src2)->fld[0]).rtx) == src1)
  split = &(((src2)->fld[0]).rtx);
       else if ((rtx_format[(int) (((enum rtx_code) ((((src2)->fld[0]).rtx))->code))])[0] == 'e'
         && ((((((src2)->fld[0]).rtx))->fld[0]).rtx) == src1)
  split = &((((((src2)->fld[0]).rtx))->fld[0]).rtx);

       if (split)
  {
    do_SUBST(&((((x)->fld[0]).rtx)), (src2));
    return split;
  }
     }






   else if ((rtx_class[(int) (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code))]) != 'o'
     && ! (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG
    && ((rtx_class[(int) (((enum rtx_code) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->code))])
        == 'o')))
     return &((((((x)->fld[0]).rtx))->fld[0]).rtx);
 }
      break;

    case SET:
# 3069 "../../../kg++fe/gnu/combine.c"
      split = find_split_point (&(((x)->fld[1]).rtx), insn);
      if (split && split != &(((x)->fld[1]).rtx))
 return split;


      split = find_split_point (&(((x)->fld[0]).rtx), insn);
      if (split && split != &(((x)->fld[0]).rtx))
 return split;



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTRACT
   && ((mode_bitsize[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))])
       <= (8 * 8))
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[2]).rtx))->code) == CONST_INT
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && (((((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
        + (((((((((x)->fld[0]).rtx))->fld[2]).rtx))->fld[0]).rtwint))
       <= (mode_bitsize[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))]))
   && ! side_effects_p (((((((x)->fld[0]).rtx))->fld[0]).rtx)))
 {
   long long pos = (((((((((x)->fld[0]).rtx))->fld[2]).rtx))->fld[0]).rtwint);
   unsigned long long len = (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
   unsigned long long src = ((((((x)->fld[1]).rtx))->fld[0]).rtwint);
   rtx dest = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   enum machine_mode mode = ((enum machine_mode) (dest)->mode);
   unsigned long long mask = ((long long) 1 << len) - 1;

   if (0)
     pos = (mode_bitsize[(int) (mode)]) - len - pos;

   if (src == mask)
     do_SUBST(&((((x)->fld[1]).rtx)), (gen_binary (IOR, mode, dest, gen_rtx_CONST_INT (VOIDmode, (long long) (src << pos)))));

   else
     do_SUBST(&((((x)->fld[1]).rtx)), (gen_binary (IOR, mode, gen_binary (AND, mode, dest, gen_int_mode (~(mask << pos), mode)), gen_rtx_CONST_INT (VOIDmode, (long long) (src << pos)))));






   do_SUBST(&((((x)->fld[0]).rtx)), (dest));

   split = find_split_point (&(((x)->fld[1]).rtx), insn);
   if (split && split != &(((x)->fld[1]).rtx))
     return split;
 }



      code = ((enum rtx_code) ((((x)->fld[1]).rtx))->code);

      switch (code)
 {
 case AND:
# 3135 "../../../kg++fe/gnu/combine.c"
   if (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == REG
       && (pos = exact_log2_wide ((unsigned long long) ((((((((((x)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint)))) >= 7
       && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
       && (split = find_single_use ((((x)->fld[0]).rtx), insn, (rtx*) 0)) != 0
       && (((enum rtx_code) (*split)->code) == EQ || ((enum rtx_code) (*split)->code) == NE)
       && (((*split)->fld[0]).rtx) == (((x)->fld[0]).rtx)
       && (((*split)->fld[1]).rtx) == (const_int_rtx[64]))
     {
       rtx extraction = make_extraction (((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
      ((((((x)->fld[1]).rtx))->fld[0]).rtx),
      pos, (rtx) 0, 1, 1, 0, 0);
       if (extraction != 0)
  {
    do_SUBST(&((((x)->fld[1]).rtx)), (extraction));
    return find_split_point (loc, insn);
  }
     }
   break;

 case NE:


   if (1 == -1 && ((((((x)->fld[1]).rtx))->fld[1]).rtx) == (const_int_rtx[64])
       && ((enum machine_mode) ((((x)->fld[1]).rtx))->mode) == ((enum machine_mode) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->mode)
       && 1 <= (pos = exact_log2_wide ((unsigned long long) (cached_nonzero_bits (((((((x)->fld[1]).rtx))->fld[0]).rtx), ((enum machine_mode) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)))))


     {
       enum machine_mode mode = ((enum machine_mode) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->mode);

       do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx_fmt_e (NEG, (mode), (gen_rtx_fmt_ee (LSHIFTRT, (mode), (((((((x)->fld[1]).rtx))->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (pos))))))));





       split = find_split_point (&(((x)->fld[1]).rtx), insn);
       if (split && split != &(((x)->fld[1]).rtx))
  return split;
     }
   break;

 case SIGN_EXTEND:
   inner = ((((((x)->fld[1]).rtx))->fld[0]).rtx);




   if ((mode_class[(int) (((enum machine_mode) (inner)->mode))]) == MODE_PARTIAL_INT
       || (mode_class[(int) (((enum machine_mode) ((((x)->fld[1]).rtx))->mode))]) == MODE_PARTIAL_INT)
     break;

   pos = 0;
   len = (mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]);
   unsignedp = 0;
   break;

 case SIGN_EXTRACT:
 case ZERO_EXTRACT:
   if (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[2]).rtx))->code) == CONST_INT)
     {
       inner = ((((((x)->fld[1]).rtx))->fld[0]).rtx);
       len = (((((((((x)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
       pos = (((((((((x)->fld[1]).rtx))->fld[2]).rtx))->fld[0]).rtwint);

       if (0)
  pos = (mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]) - len - pos;
       unsignedp = (code == ZERO_EXTRACT);
     }
   break;

 default:
   break;
 }

      if (len && pos >= 0 && pos + len <= (mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]))
 {
   enum machine_mode mode = ((enum machine_mode) ((((x)->fld[1]).rtx))->mode);







   if (unsignedp && len <= 8)
     {
       do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx_fmt_ee (AND, (mode), (gen_rtx_fmt_ee (LSHIFTRT, (mode), (gen_lowpart_for_combine (mode, inner)), (gen_rtx_CONST_INT (VOIDmode, (long long) (pos))))), (gen_rtx_CONST_INT (VOIDmode, (long long) (((long long) 1 << len) - 1))))));






       split = find_split_point (&(((x)->fld[1]).rtx), insn);
       if (split && split != &(((x)->fld[1]).rtx))
  return split;
     }
   else
     {
       do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx_fmt_ee (unsignedp ? LSHIFTRT : ASHIFTRT, mode, gen_rtx_fmt_ee (ASHIFT, (mode), (gen_lowpart_for_combine (mode, inner)), (gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_bitsize[(int) (mode)]) - len - pos)))), gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_bitsize[(int) (mode)]) - len)))));
# 3246 "../../../kg++fe/gnu/combine.c"
       split = find_split_point (&(((x)->fld[1]).rtx), insn);
       if (split && split != &(((x)->fld[1]).rtx))
  return split;
     }
 }




      if (((rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == 'c'
    || (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '<')
   && (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONSTANT_P_RTX)
   && ((rtx_class[(int) (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code))]) == 'o'
       || (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == SUBREG
    && ((rtx_class[(int) (((enum rtx_code) ((((((((((x)->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtx))->code))])
        == 'o'))))
 return &((((((x)->fld[1]).rtx))->fld[1]).rtx);






      if (((rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == 'c'
    || (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '<'
    || (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '1')
   && ! register_operand (((((((x)->fld[1]).rtx))->fld[0]).rtx), VOIDmode))
 return &((((((x)->fld[1]).rtx))->fld[0]).rtx);

      return 0;

    case AND:
    case IOR:



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NOT && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == NOT)
 {
   do_SUBST(&(*loc), (gen_rtx_fmt_e (NOT, (((enum machine_mode) (x)->mode)), (gen_rtx_fmt_ee (code == IOR ? AND : IOR, ((enum machine_mode) (x)->mode), ((((((x)->fld[0]).rtx))->fld[0]).rtx), ((((((x)->fld[1]).rtx))->fld[0]).rtx))))));





   return find_split_point (loc, insn);
 }




      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == NOT)
 {
   rtx tem = (((x)->fld[0]).rtx);
   do_SUBST(&((((x)->fld[0]).rtx)), ((((x)->fld[1]).rtx)));
   do_SUBST(&((((x)->fld[1]).rtx)), (tem));
 }
      break;

    default:
      break;
    }


  switch ((rtx_class[(int) (code)]))
    {
    case 'b':
    case '3':
      split = find_split_point (&(((x)->fld[2]).rtx), insn);
      if (split)
 return split;

    case '2':
    case 'c':
    case '<':
      split = find_split_point (&(((x)->fld[1]).rtx), insn);
      if (split)
 return split;

    case '1':


      if (((enum rtx_code) (x)->code) != AND && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == AND)
 return &(((x)->fld[0]).rtx);

      split = find_split_point (&(((x)->fld[0]).rtx), insn);
      if (split)
 return split;
      return loc;
    }


  return 0;
}
# 3361 "../../../kg++fe/gnu/combine.c"
static rtx
subst (x, from, to, in_dest, unique_copy)
     rtx x, from, to;
     int in_dest;
     int unique_copy;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  enum machine_mode op0_mode = VOIDmode;
  const char *fmt;
  int len, i;
  rtx new;
# 3382 "../../../kg++fe/gnu/combine.c"
  if (! in_dest && ((x) == (from) || (((enum rtx_code) (x)->code) == REG && ((enum rtx_code) (from)->code) == REG && (((x)->fld[0]).rtuint) == (((from)->fld[0]).rtuint) && ((enum machine_mode) (x)->mode) == ((enum machine_mode) (from)->mode))))
    {
      n_occurrences++;
      return (unique_copy && n_occurrences > 1 ? copy_rtx (to) : to);
    }
# 3395 "../../../kg++fe/gnu/combine.c"
  if (! in_dest && code == REG && ((enum rtx_code) (from)->code) == REG
      && (((x)->fld[0]).rtuint) == (((from)->fld[0]).rtuint))
    return gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));



  if (code != MEM && code != LO_SUM && (rtx_class[(int) (code)]) == 'o')
    return x;







  if (((x) == (to) || (((enum rtx_code) (x)->code) == REG && ((enum rtx_code) (to)->code) == REG && (((x)->fld[0]).rtuint) == (((to)->fld[0]).rtuint) && ((enum machine_mode) (x)->mode) == ((enum machine_mode) (to)->mode))))
    return to;
# 3422 "../../../kg++fe/gnu/combine.c"
  if (code == PARALLEL
      && ((enum rtx_code) ((((((x)->fld[0]).rtvec))->elem[0]))->code) == SET
      && ((enum rtx_code) (((((((((x)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->code) == ASM_OPERANDS)
    {
      new = subst ((((((x)->fld[0]).rtvec))->elem[0]), from, to, 0, unique_copy);


      if (((enum rtx_code) (new)->code) == CLOBBER
   && (((new)->fld[0]).rtx) == (const_int_rtx[64]))
 return new;

      do_SUBST(&((((((x)->fld[0]).rtvec))->elem[0])), (new));

      for (i = (((((x)->fld[0]).rtvec))->num_elem) - 1; i >= 1; i--)
 {
   rtx dest = ((((((((x)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx);

   if (((enum rtx_code) (dest)->code) != REG
       && ((enum rtx_code) (dest)->code) != CC0
       && ((enum rtx_code) (dest)->code) != PC)
     {
       new = subst (dest, from, to, 0, unique_copy);


       if (((enum rtx_code) (new)->code) == CLOBBER
    && (((new)->fld[0]).rtx) == (const_int_rtx[64]))
  return new;

       do_SUBST(&(((((((((x)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx)), (new));
     }
 }
    }
  else
    {
      len = (rtx_length[(int) (code)]);
      fmt = (rtx_format[(int) (code)]);





      if (code == SET
   && (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CC0
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PC))
 fmt = "ie";



      if (fmt[0] == 'e')
 op0_mode = ((enum machine_mode) ((((x)->fld[0]).rtx))->mode);

      for (i = 0; i < len; i++)
 {
   if (fmt[i] == 'E')
     {
       int j;
       for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
  {
    if ((((((((x)->fld[i]).rtvec))->elem[j])) == (from) || (((enum rtx_code) ((((((x)->fld[i]).rtvec))->elem[j]))->code) == REG && ((enum rtx_code) (from)->code) == REG && ((((((((x)->fld[i]).rtvec))->elem[j]))->fld[0]).rtuint) == (((from)->fld[0]).rtuint) && ((enum machine_mode) ((((((x)->fld[i]).rtvec))->elem[j]))->mode) == ((enum machine_mode) (from)->mode))))
      {
        new = (unique_copy && n_occurrences
        ? copy_rtx (to) : to);
        n_occurrences++;
      }
    else
      {
        new = subst ((((((x)->fld[i]).rtvec))->elem[j]), from, to, 0,
       unique_copy);



        if (((enum rtx_code) (new)->code) == CLOBBER
     && (((new)->fld[0]).rtx) == (const_int_rtx[64]))
   return new;
      }

    do_SUBST(&((((((x)->fld[i]).rtvec))->elem[j])), (new));
  }
     }
   else if (fmt[i] == 'e')
     {

       new = (((x)->fld[i]).rtx);
       if (in_dest
    && (code == SUBREG || code == STRICT_LOW_PART
        || code == ZERO_EXTRACT)
    && i == 0
    && ((enum rtx_code) (new)->code) == REG)
  ;

       else if ((((((x)->fld[i]).rtx)) == (from) || (((enum rtx_code) ((((x)->fld[i]).rtx))->code) == REG && ((enum rtx_code) (from)->code) == REG && ((((((x)->fld[i]).rtx))->fld[0]).rtuint) == (((from)->fld[0]).rtuint) && ((enum machine_mode) ((((x)->fld[i]).rtx))->mode) == ((enum machine_mode) (from)->mode))))
  {
# 3528 "../../../kg++fe/gnu/combine.c"
    if (((enum rtx_code) (to)->code) == SUBREG
        && ! (((mode_class[(int) (((enum machine_mode) (to)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (to)->mode))]) == MODE_COMPLEX_FLOAT) == ((mode_class[(int) (((enum machine_mode) ((((to)->fld[0]).rtx))->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) ((((to)->fld[0]).rtx))->mode))]) == MODE_COMPLEX_FLOAT))

        && ! (code == SUBREG
       && (((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT) == ((mode_class[(int) (((enum machine_mode) ((((to)->fld[0]).rtx))->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) ((((to)->fld[0]).rtx))->mode))]) == MODE_COMPLEX_FLOAT)))




        )
      return gen_rtx_fmt_e (CLOBBER, (VOIDmode), ((const_int_rtx[64])));


    if (code == SUBREG
        && ((enum rtx_code) (to)->code) == REG
        && (((to)->fld[0]).rtuint) < 176
        && mips_cannot_change_mode_class (((enum machine_mode) (to)->mode), ((enum machine_mode) (x)->mode), mips_regno_to_class[ ((((to)->fld[0]).rtuint)) ]))


      return gen_rtx_fmt_e (CLOBBER, (VOIDmode), ((const_int_rtx[64])));


    new = (unique_copy && n_occurrences ? copy_rtx (to) : to);
    n_occurrences++;
  }
       else
# 3562 "../../../kg++fe/gnu/combine.c"
  new = subst ((((x)->fld[i]).rtx), from, to,
        (((in_dest
    && (code == SUBREG || code == STRICT_LOW_PART
        || code == ZERO_EXTRACT))
          || code == SET)
         && i == 0), unique_copy);







       if (((enum rtx_code) (new)->code) == CLOBBER && (((new)->fld[0]).rtx) == (const_int_rtx[64]))
  return new;

       if (((enum rtx_code) (new)->code) == CONST_INT && ((enum rtx_code) (x)->code) == SUBREG)
  {
    enum machine_mode mode = ((enum machine_mode) (x)->mode);

    x = simplify_subreg (((enum machine_mode) (x)->mode), new,
           ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
           (((x)->fld[1]).rtuint));
    if (! x)
      x = gen_rtx_fmt_e (CLOBBER, (mode), ((const_int_rtx[64])));
  }
       else if (((enum rtx_code) (new)->code) == CONST_INT
         && ((enum rtx_code) (x)->code) == ZERO_EXTEND)
  {
    x = simplify_unary_operation (ZERO_EXTEND, ((enum machine_mode) (x)->mode),
      new, ((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
    if (! x)
      fancy_abort ("../../../kg++fe/gnu/combine.c", 3594, __FUNCTION__);
  }
       else
  do_SUBST(&((((x)->fld[i]).rtx)), (new));
     }
 }
    }





  for (i = 0; i < 4; i++)
    {


      if (code != CONST_INT && code != REG && code != CLOBBER)
 x = combine_simplify_rtx (x, op0_mode, i == 3, in_dest);

      if (((enum rtx_code) (x)->code) == code)
 break;

      code = ((enum rtx_code) (x)->code);



      op0_mode = VOIDmode;
    }

  return x;
}
# 3634 "../../../kg++fe/gnu/combine.c"
static rtx
combine_simplify_rtx (x, op0_mode, last, in_dest)
     rtx x;
     enum machine_mode op0_mode;
     int last;
     int in_dest;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx temp;
  rtx reversed;
  int i;



  if ((rtx_class[(int) (code)]) == 'c'
      && swap_commutative_operands_p ((((x)->fld[0]).rtx), (((x)->fld[1]).rtx)))
    {
      temp = (((x)->fld[0]).rtx);
      do_SUBST(&((((x)->fld[0]).rtx)), ((((x)->fld[1]).rtx)));
      do_SUBST(&((((x)->fld[1]).rtx)), (temp));
    }
# 3675 "../../../kg++fe/gnu/combine.c"
  if ((code == PLUS || code == MINUS || code == MULT)
      && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFTRT
      && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == PLUS
      && ((enum rtx_code) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->code) == ASHIFT
      && ((enum rtx_code) (((((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
      && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
      && ((((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx) == ((((((x)->fld[0]).rtx))->fld[1]).rtx)
      && ((enum rtx_code) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
      && (temp = simplify_binary_operation (ASHIFTRT, mode,
         (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx),
         ((((((x)->fld[0]).rtx))->fld[1]).rtx))) != 0)
    {
      rtx new
 = simplify_shift_const ((rtx) 0, ASHIFT, mode,
    ((((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx),
    (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint));

      new = simplify_shift_const ((rtx) 0, ASHIFTRT, mode, new,
      (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint));

      do_SUBST(&((((x)->fld[0]).rtx)), (gen_binary (PLUS, mode, new, temp)));
    }
# 3705 "../../../kg++fe/gnu/combine.c"
  if ((((rtx_class[(int) (code)]) == '2' || (rtx_class[(int) (code)]) == 'c'
 || (rtx_class[(int) (code)]) == '<')
       && (((rtx_class[(int) (((enum rtx_code) ((((x)->fld[0]).rtx))->code))]) != 'o'
     && ! (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
    && ((rtx_class[(int) (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code))])
        == 'o')))
    || ((rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) != 'o'
        && ! (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG
       && ((rtx_class[(int) (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code))])
    == 'o')))))
      || ((rtx_class[(int) (code)]) == '1'
   && (((rtx_class[(int) (((enum rtx_code) ((((x)->fld[0]).rtx))->code))]) != 'o'
        && ! (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
       && ((rtx_class[(int) (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code))])
    == 'o'))))))
    {
      rtx cond, true_rtx, false_rtx;

      cond = if_then_else_cond (x, &true_rtx, &false_rtx);
      if (cond != 0


   && ! ((rtx_class[(int) (code)]) == '<'
  && ((rtx_class[(int) (((enum rtx_code) (true_rtx)->code))]) == '<'
      || (rtx_class[(int) (((enum rtx_code) (false_rtx)->code))]) == '<')))
 {
   rtx cop1 = (const_int_rtx[64]);
   enum rtx_code cond_code = simplify_comparison (NE, &cond, &cop1);

   if (cond_code == NE && (rtx_class[(int) (((enum rtx_code) (cond)->code))]) == '<')
     return x;



   true_rtx = subst (true_rtx, (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
   false_rtx = subst (false_rtx, (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);



   if (general_operand (true_rtx, VOIDmode)
       && general_operand (false_rtx, VOIDmode))
     {





       if (true_rtx == const_true_rtx && false_rtx == (const_int_rtx[64]))
  x = gen_binary (cond_code, mode, cond, cop1);
       else if (true_rtx == (const_int_rtx[64]) && false_rtx == const_true_rtx
         && reverse_condition (cond_code) != UNKNOWN)
  x = gen_binary (reverse_condition (cond_code),
    mode, cond, cop1);



       else if (((enum rtx_code) (true_rtx)->code) == CONST_INT
         && (((true_rtx)->fld[0]).rtwint) == - 1
         && false_rtx == (const_int_rtx[64]))
  x = simplify_gen_unary (NEG, mode,
     gen_binary (cond_code, mode, cond,
          cop1),
     mode);
       else if (((enum rtx_code) (false_rtx)->code) == CONST_INT
         && (((false_rtx)->fld[0]).rtwint) == - 1
         && true_rtx == (const_int_rtx[64]))
  x = simplify_gen_unary (NEG, mode,
     gen_binary (reverse_condition
          (cond_code),
          mode, cond, cop1),
     mode);
       else
  return gen_rtx_fmt_eee (IF_THEN_ELSE, (mode), (gen_binary (cond_code, VOIDmode, cond, cop1)), (true_rtx), (false_rtx));




       code = ((enum rtx_code) (x)->code);
       op0_mode = VOIDmode;
     }
 }
    }



  temp = 0;
  switch ((rtx_class[(int) (code)]))
    {
    case '1':
      temp = simplify_unary_operation (code, mode, (((x)->fld[0]).rtx), op0_mode);
      break;
    case '<':
      {
 enum machine_mode cmp_mode = ((enum machine_mode) ((((x)->fld[0]).rtx))->mode);
 if (cmp_mode == VOIDmode)
   {
     cmp_mode = ((enum machine_mode) ((((x)->fld[1]).rtx))->mode);
     if (cmp_mode == VOIDmode)
       cmp_mode = op0_mode;
   }
 temp = simplify_relational_operation (code, cmp_mode,
           (((x)->fld[0]).rtx), (((x)->fld[1]).rtx));
      }
# 3818 "../../../kg++fe/gnu/combine.c"
      break;
    case 'c':
    case '2':
      temp = simplify_binary_operation (code, mode, (((x)->fld[0]).rtx), (((x)->fld[1]).rtx));
      break;
    case 'b':
    case '3':
      temp = simplify_ternary_operation (code, mode, op0_mode, (((x)->fld[0]).rtx),
      (((x)->fld[1]).rtx), (((x)->fld[2]).rtx));
      break;
    }

  if (temp)
    {
      x = temp;
      code = ((enum rtx_code) (temp)->code);
      op0_mode = VOIDmode;
      mode = ((enum machine_mode) (temp)->mode);
    }


  if (code == PLUS || code == MINUS
      || code == AND || code == IOR || code == XOR)
    {
      x = apply_distributive_law (x);
      code = ((enum rtx_code) (x)->code);
      op0_mode = VOIDmode;
    }




  if ((code == PLUS || code == MINUS || code == MULT || code == DIV
       || code == AND || code == IOR || code == XOR
       || code == SMAX || code == SMIN || code == UMAX || code == UMIN)
      && ((((mode_class[(int) (mode)]) == MODE_INT || (mode_class[(int) (mode)]) == MODE_PARTIAL_INT || (mode_class[(int) (mode)]) == MODE_COMPLEX_INT || (mode_class[(int) (mode)]) == MODE_VECTOR_INT) && code != DIV)
   || (flag_unsafe_math_optimizations && ((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT))))
    {
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == code)
 {
   rtx other = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   rtx inner_op0 = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
   rtx inner_op1 = (((x)->fld[1]).rtx);
   rtx inner;



   if ((((enum rtx_code) (inner_op0)->code) == LABEL_REF || ((enum rtx_code) (inner_op0)->code) == SYMBOL_REF || ((enum rtx_code) (inner_op0)->code) == CONST_INT || ((enum rtx_code) (inner_op0)->code) == CONST_DOUBLE || ((enum rtx_code) (inner_op0)->code) == CONST || ((enum rtx_code) (inner_op0)->code) == HIGH || ((enum rtx_code) (inner_op0)->code) == CONST_VECTOR || ((enum rtx_code) (inner_op0)->code) == CONSTANT_P_RTX) && (rtx_class[(int) (code)]) == 'c')
     {
       rtx tem = inner_op0;
       inner_op0 = inner_op1;
       inner_op1 = tem;
     }
   inner = simplify_binary_operation (code == MINUS ? PLUS
          : code == DIV ? MULT
          : code,
          mode, inner_op0, inner_op1);



   if (inner == 0 && (rtx_class[(int) (code)]) == 'c')
     {
       other = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
       inner = simplify_binary_operation (code, mode,
       ((((((x)->fld[0]).rtx))->fld[0]).rtx),
       (((x)->fld[1]).rtx));
     }

   if (inner)
     return gen_binary (code, mode, other, inner);
 }
    }


  switch (code)
    {
    case MEM:


      temp = make_compound_operation ((((x)->fld[0]).rtx), MEM);
      do_SUBST(&((((x)->fld[0]).rtx)), (temp));
      break;

    case SUBREG:
      if (op0_mode == VOIDmode)
 op0_mode = ((enum machine_mode) ((((x)->fld[0]).rtx))->mode);


      if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONSTANT_P_RTX)
   && subreg_lowpart_offset (mode, op0_mode) == (((x)->fld[1]).rtuint)



   && (((enum machine_mode) ((((x)->fld[0]).rtx))->mode) != VOIDmode
       || gen_lowpart_common (mode, (((x)->fld[0]).rtx))))
 return gen_lowpart_for_combine (mode, (((x)->fld[0]).rtx));

      if ((mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == MODE_CC)
        break;
      {
 rtx temp;
 temp = simplify_subreg (mode, (((x)->fld[0]).rtx), op0_mode,
    (((x)->fld[1]).rtuint));
 if (temp)
   return temp;
      }



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM
   && (((((((x)->fld[0]).rtx)))->volatil)
       || mode_dependent_address_p (((((((x)->fld[0]).rtx))->fld[0]).rtx))))
 return gen_rtx_fmt_e (CLOBBER, (mode), ((const_int_rtx[64])));





      break;

    case NOT:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
   && ((((((x)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64 -1]))
 return gen_rtx_fmt_e (NEG, (mode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NEG)
 return gen_rtx_fmt_ee (PLUS, (mode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)), ((const_int_rtx[64 -1])));


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == XOR
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && (temp = simplify_unary_operation (NOT, mode,
            ((((((x)->fld[0]).rtx))->fld[1]).rtx),
            mode)) != 0)
 return gen_binary (XOR, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx), temp);





      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFT
   && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == (const_int_rtx[64 +1]))
 return gen_rtx_fmt_ee (ROTATE, (mode), (simplify_gen_unary (NOT, mode, (const_int_rtx[64 +1]), mode)), (((((((x)->fld[0]).rtx))->fld[1]).rtx)));



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && subreg_lowpart_p ((((x)->fld[0]).rtx))
   && ((mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       < (mode_size[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))]))
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == ASHIFT
   && (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx) == (const_int_rtx[64 +1]))
 {
   enum machine_mode inner_mode = ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode);

   x = gen_rtx_fmt_ee (ROTATE, (inner_mode), (simplify_gen_unary (NOT, inner_mode, (const_int_rtx[64 +1]), inner_mode)), ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx)));



   return gen_lowpart_for_combine (mode, x);
 }



      if (1 == -1
   && (rtx_class[(int) (((enum rtx_code) ((((x)->fld[0]).rtx))->code))]) == '<'
   && (reversed = reversed_comparison (x, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx),
           ((((((x)->fld[0]).rtx))->fld[1]).rtx))))
 return reversed;





      if (1 == -1
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFTRT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) == (mode_bitsize[(int) (mode)]) - 1)
 return gen_rtx_fmt_ee (GE, (mode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)), ((const_int_rtx[64])));






      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == IOR || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == AND)
 {
   rtx in1 = ((((((x)->fld[0]).rtx))->fld[0]).rtx), in2 = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
   enum machine_mode op_mode;

   op_mode = ((enum machine_mode) (in1)->mode);
   in1 = simplify_gen_unary (NOT, op_mode, in1, op_mode);

   op_mode = ((enum machine_mode) (in2)->mode);
   if (op_mode == VOIDmode)
     op_mode = mode;
   in2 = simplify_gen_unary (NOT, op_mode, in2, op_mode);

   if (((enum rtx_code) (in2)->code) == NOT && ((enum rtx_code) (in1)->code) != NOT)
     {
       rtx tem = in2;
       in2 = in1; in1 = tem;
     }

   return gen_rtx_fmt_ee (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == IOR ? AND : IOR,
     mode, in1, in2);
 }
      break;

    case NEG:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
   && ((((((x)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64 +1]))
 return gen_rtx_fmt_e (NOT, (mode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NOT)
 return plus_constant_wide ((((((((x)->fld[0]).rtx))->fld[0]).rtx)), (long long) (1));






      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MINUS
   && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1) && !flag_unsafe_math_optimizations)
   && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0) && !flag_unsafe_math_optimizations))
 return gen_binary (MINUS, mode, ((((((x)->fld[0]).rtx))->fld[1]).rtx),
      ((((((x)->fld[0]).rtx))->fld[0]).rtx));


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
   && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1) && !flag_unsafe_math_optimizations)
   && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0) && !flag_unsafe_math_optimizations))
 {
   temp = simplify_gen_unary (NEG, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx), mode);
   temp = combine_simplify_rtx (temp, mode, last, in_dest);
   return gen_binary (MINUS, mode, temp, ((((((x)->fld[0]).rtx))->fld[1]).rtx));
 }



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MULT)
 {
   temp = simplify_gen_unary (NEG, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx), mode);
   return gen_binary (MULT, mode, temp, ((((((x)->fld[0]).rtx))->fld[1]).rtx));
 }


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == XOR && ((((((x)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64 +1])
   && cached_nonzero_bits (((((((x)->fld[0]).rtx))->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) == 1)
 return gen_binary (PLUS, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx), (const_int_rtx[64 -1]));





      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFT)
 {
   temp = simplify_unary_operation (NEG, mode,
        ((((((x)->fld[0]).rtx))->fld[0]).rtx), mode);
   if (temp)
     return gen_binary (ASHIFT, mode, temp, ((((((x)->fld[0]).rtx))->fld[1]).rtx));
 }

      temp = expand_compound_operation ((((x)->fld[0]).rtx));





      if (((enum rtx_code) (temp)->code) == ASHIFTRT
   && ((enum rtx_code) ((((temp)->fld[1]).rtx))->code) == CONST_INT
   && ((((((temp)->fld[1]).rtx))->fld[0]).rtwint) == (mode_bitsize[(int) (mode)]) - 1)
 return simplify_shift_const (temp, LSHIFTRT, mode, (((temp)->fld[0]).rtx),
         ((((((temp)->fld[1]).rtx))->fld[0]).rtwint));
# 4104 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (temp)->code) != REG
   && ! (((enum rtx_code) (temp)->code) == SUBREG
  && ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == REG)
   && (i = exact_log2_wide ((unsigned long long) (cached_nonzero_bits (temp, mode, (rtx) 0, VOIDmode, 0)))) >= 0)
 {
   rtx temp1 = simplify_shift_const
     ((rtx) 0, ASHIFTRT, mode,
      simplify_shift_const ((rtx) 0, ASHIFT, mode, temp,
       (mode_bitsize[(int) (mode)]) - 1 - i),
      (mode_bitsize[(int) (mode)]) - 1 - i);




   if (((enum rtx_code) (temp1)->code) != ASHIFTRT
       || ((enum rtx_code) ((((temp1)->fld[0]).rtx))->code) != ASHIFT
       || ((((((temp1)->fld[0]).rtx))->fld[0]).rtx) != temp)
     return temp1;
 }
      break;

    case TRUNCATE:



      if ((mode_class[(int) (mode)]) == MODE_PARTIAL_INT)
 break;

      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && ((target_flags & 0x00002000) ? (((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])) <= 32 || ((mode_bitsize[(int) (mode)])) > 32) : 1))

 do_SUBST(&((((x)->fld[0]).rtx)), (force_to_mode ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), mode_mask_array[(int) (mode)], (rtx) 0, 0)));




      if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SIGN_EXTEND
    || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTEND)
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == mode)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);



      if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ABS
    || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NEG)
   && (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SIGN_EXTEND
       || ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == ZERO_EXTEND)
   && ((enum machine_mode) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->mode) == mode)
 return simplify_gen_unary (((enum rtx_code) ((((x)->fld[0]).rtx))->code), mode,
       (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx), mode);



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == TRUNCATE
   && subreg_lowpart_p ((((x)->fld[0]).rtx)))
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);






      if (((target_flags & 0x00002000) ? (((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])) <= 32 || ((mode_bitsize[(int) (mode)])) > 32) : 1)

   && cached_num_sign_bit_copies ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)
      >= (unsigned int) ((mode_bitsize[(int) (mode)]) + 1)
   && ! (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
  && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == MULT))
 return gen_lowpart_for_combine (mode, (((x)->fld[0]).rtx));





      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && (rtx_class[(int) (((enum rtx_code) ((((x)->fld[0]).rtx))->code))]) == '<'
   && ((long long) 1 & ~mode_mask_array[(int) (mode)]) == 0)
 return gen_lowpart_for_combine (mode, (((x)->fld[0]).rtx));




      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && ((long long) 1 & ~mode_mask_array[(int) (mode)]) == 0
   && (temp = get_last_value ((((x)->fld[0]).rtx)))
   && (rtx_class[(int) (((enum rtx_code) (temp)->code))]) == '<')
 return gen_lowpart_for_combine (mode, (((x)->fld[0]).rtx));

      break;

    case FLOAT_TRUNCATE:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == FLOAT_EXTEND
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == mode)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);



      if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ABS
    || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NEG)
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == FLOAT_EXTEND
   && ((enum machine_mode) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->mode) == mode)
 return simplify_gen_unary (((enum rtx_code) ((((x)->fld[0]).rtx))->code), mode,
       (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx), mode);



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && subreg_lowpart_p ((((x)->fld[0]).rtx))
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == FLOAT_TRUNCATE)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);
      break;
# 4236 "../../../kg++fe/gnu/combine.c"
    case CONST:



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST)
 do_SUBST(&((((x)->fld[0]).rtx)), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));
      break;


    case LO_SUM:



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == HIGH
   && rtx_equal_p (((((((x)->fld[0]).rtx))->fld[0]).rtx), (((x)->fld[1]).rtx)))
 return (((x)->fld[1]).rtx);
      break;


    case PLUS:


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MULT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == NEG)
 {
   rtx in1, in2;

   in1 = (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx);
   in2 = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
   return gen_binary (MINUS, mode, (((x)->fld[1]).rtx),
        gen_binary (MULT, mode, in1, in2));
 }





      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
   && (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == HIGH || (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST && ! (flag_pic && pic_address_needs_scratch (((((((x)->fld[0]).rtx))->fld[1]).rtx))) && ((target_flags & 0x00000010) || mips_abi == 0))))
 return gen_binary (PLUS, mode,
      gen_binary (PLUS, mode, ((((((x)->fld[0]).rtx))->fld[0]).rtx),
           (((x)->fld[1]).rtx)),
      ((((((x)->fld[0]).rtx))->fld[1]).rtx));






      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == XOR
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) == -(((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
   && ((i = exact_log2_wide ((unsigned long long) ((((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)))) >= 0
       || (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint)))) >= 0)
   && (mode_bitsize[(int) (mode)]) <= (8 * 8)
   && ((((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == AND
        && ((enum rtx_code) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
        && (((((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
     == ((long long) 1 << (i + 1)) - 1))
       || (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == ZERO_EXTEND
    && ((mode_bitsize[(int) (((enum machine_mode) ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->mode))])
        == (unsigned int) i + 1))))
 return simplify_shift_const
   ((rtx) 0, ASHIFTRT, mode,
    simplify_shift_const ((rtx) 0, ASHIFT, mode,
     (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx),
     (mode_bitsize[(int) (mode)]) - (i + 1)),
    (mode_bitsize[(int) (mode)]) - (i + 1));





      if ((rtx_class[(int) (((enum rtx_code) ((((x)->fld[0]).rtx))->code))]) == '<'
   && ((1 == -1 && (((x)->fld[1]).rtx) == (const_int_rtx[64 +1]))
       || (1 == 1 && (((x)->fld[1]).rtx) == (const_int_rtx[64 -1])))
   && (reversed = reversed_comparison ((((x)->fld[0]).rtx), mode,
           ((((((x)->fld[0]).rtx))->fld[0]).rtx),
           ((((((x)->fld[0]).rtx))->fld[1]).rtx))))
 return
   simplify_gen_unary (NEG, mode, reversed, mode);





      if ((((x)->fld[1]).rtx) == (const_int_rtx[64 -1])
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) != REG
   && ! (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
  && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == REG)
   && cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) == 1)
 return simplify_shift_const ((rtx) 0, ASHIFTRT, mode,
    simplify_shift_const ((rtx) 0, ASHIFT, mode,
     gen_rtx_fmt_ee (XOR, (mode), ((((x)->fld[0]).rtx)), ((const_int_rtx[64 +1]))),
     (mode_bitsize[(int) (mode)]) - 1),
    (mode_bitsize[(int) (mode)]) - 1);






      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
       & cached_nonzero_bits ((((x)->fld[1]).rtx), mode, (rtx) 0, VOIDmode, 0)) == 0)
 {

   rtx tor = gen_binary (IOR, mode, (((x)->fld[0]).rtx), (((x)->fld[1]).rtx));
   temp = combine_simplify_rtx (tor, mode, last, in_dest);




   if (((enum rtx_code) (temp)->code) != CLOBBER && temp != tor)
     return temp;
 }
      break;

    case MINUS:


      if (1 == 1
   && (((x)->fld[0]).rtx) == (const_int_rtx[64 +1])
   && (rtx_class[(int) (((enum rtx_code) ((((x)->fld[1]).rtx))->code))]) == '<'
   && (reversed = reversed_comparison ((((x)->fld[1]).rtx), mode,
           ((((((x)->fld[1]).rtx))->fld[0]).rtx),
           ((((((x)->fld[1]).rtx))->fld[1]).rtx))))
 return reversed;



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == AND
   && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && exact_log2_wide ((unsigned long long) (-(((((((((x)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint))) >= 0
   && rtx_equal_p (((((((x)->fld[1]).rtx))->fld[0]).rtx), (((x)->fld[0]).rtx)))
 return simplify_and_const_int ((rtx) 0, mode, (((x)->fld[0]).rtx),
           -(((((((((x)->fld[1]).rtx))->fld[1]).rtx))->fld[0]).rtwint) - 1);



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == MULT
   && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == NEG)
 {
   rtx in1, in2;

   in1 = (((((((((x)->fld[1]).rtx))->fld[0]).rtx))->fld[0]).rtx);
   in2 = ((((((x)->fld[1]).rtx))->fld[1]).rtx);
   return gen_binary (PLUS, mode, gen_binary (MULT, mode, in1, in2),
        (((x)->fld[0]).rtx));
 }



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == MULT
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NEG)
 {
   rtx in1, in2;

   in1 = simplify_gen_unary (NEG, mode, ((((((x)->fld[1]).rtx))->fld[0]).rtx), mode);
   in2 = ((((((x)->fld[1]).rtx))->fld[1]).rtx);
   return gen_binary (MINUS, mode, gen_binary (MULT, mode, in1, in2),
        ((((((x)->fld[0]).rtx))->fld[0]).rtx));
 }



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == PLUS && ((mode_class[(int) (mode)]) == MODE_INT || (mode_class[(int) (mode)]) == MODE_PARTIAL_INT || (mode_class[(int) (mode)]) == MODE_COMPLEX_INT || (mode_class[(int) (mode)]) == MODE_VECTOR_INT))
 return gen_binary (MINUS, mode,
      gen_binary (MINUS, mode, (((x)->fld[0]).rtx),
           ((((((x)->fld[1]).rtx))->fld[0]).rtx)),
      ((((((x)->fld[1]).rtx))->fld[1]).rtx));
      break;

    case MULT:




      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS)
 {
   x = apply_distributive_law
     (gen_binary (PLUS, mode,
    gen_binary (MULT, mode,
         ((((((x)->fld[0]).rtx))->fld[0]).rtx), (((x)->fld[1]).rtx)),
    gen_binary (MULT, mode,
         ((((((x)->fld[0]).rtx))->fld[1]).rtx),
         copy_rtx ((((x)->fld[1]).rtx)))));

   if (((enum rtx_code) (x)->code) != MULT)
     return x;
 }

      if (((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && flag_unsafe_math_optimizations
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == DIV)
 {
   rtx tem = simplify_binary_operation (MULT, mode,
            ((((((x)->fld[0]).rtx))->fld[0]).rtx),
            (((x)->fld[1]).rtx));
   if (tem)
     return gen_binary (DIV, mode, tem, ((((((x)->fld[0]).rtx))->fld[1]).rtx));
 }
      break;

    case UDIV:


      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint)))) >= 0
   && (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFT
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFTRT
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ROTATE
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ROTATERT))
 return simplify_shift_const ((rtx) 0, LSHIFTRT, mode, (((x)->fld[0]).rtx), i);
      break;

    case EQ: case NE:
    case GT: case GTU: case GE: case GEU:
    case LT: case LTU: case LE: case LEU:
    case UNEQ: case LTGT:
    case UNGT: case UNGE:
    case UNLT: case UNLE:
    case UNORDERED: case ORDERED:


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == COMPARE
   || ((mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) != MODE_CC



       ))
 {
   rtx op0 = (((x)->fld[0]).rtx);
   rtx op1 = (((x)->fld[1]).rtx);
   enum rtx_code new_code;

   if (((enum rtx_code) (op0)->code) == COMPARE)
     op1 = (((op0)->fld[1]).rtx), op0 = (((op0)->fld[0]).rtx);


   new_code = simplify_comparison (code, &op0, &op1);
# 4491 "../../../kg++fe/gnu/combine.c"
   if (1 == 1
       && new_code == NE && (mode_class[(int) (mode)]) == MODE_INT
       && op1 == (const_int_rtx[64])
       && mode == ((enum machine_mode) (op0)->mode)
       && cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) == 1)
     return gen_lowpart_for_combine (mode,
         expand_compound_operation (op0));

   else if (1 == 1
     && new_code == NE && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && (cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0)
         == (mode_bitsize[(int) (mode)])))
     {
       op0 = expand_compound_operation (op0);
       return simplify_gen_unary (NEG, mode,
      gen_lowpart_for_combine (mode, op0),
      mode);
     }

   else if (1 == 1
     && new_code == EQ && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) == 1)
     {
       op0 = expand_compound_operation (op0);
       return gen_binary (XOR, mode,
     gen_lowpart_for_combine (mode, op0),
     (const_int_rtx[64 +1]));
     }

   else if (1 == 1
     && new_code == EQ && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && (cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0)
         == (mode_bitsize[(int) (mode)])))
     {
       op0 = expand_compound_operation (op0);
       return plus_constant_wide ((gen_lowpart_for_combine (mode, op0)), (long long) (1));
     }



   if (1 == -1
       && new_code == NE && (mode_class[(int) (mode)]) == MODE_INT
       && op1 == (const_int_rtx[64])
       && (cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0)
    == (mode_bitsize[(int) (mode)])))
     return gen_lowpart_for_combine (mode,
         expand_compound_operation (op0));

   else if (1 == -1
     && new_code == NE && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) == 1)
     {
       op0 = expand_compound_operation (op0);
       return simplify_gen_unary (NEG, mode,
      gen_lowpart_for_combine (mode, op0),
      mode);
     }

   else if (1 == -1
     && new_code == EQ && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && (cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0)
         == (mode_bitsize[(int) (mode)])))
     {
       op0 = expand_compound_operation (op0);
       return simplify_gen_unary (NOT, mode,
      gen_lowpart_for_combine (mode, op0),
      mode);
     }


   else if (1 == -1
     && new_code == EQ && (mode_class[(int) (mode)]) == MODE_INT
     && op1 == (const_int_rtx[64])
     && mode == ((enum machine_mode) (op0)->mode)
     && cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) == 1)
     {
       op0 = expand_compound_operation (op0);
       return plus_constant_wide ((gen_lowpart_for_combine (mode, op0)), (long long) (-1));
     }






   if (new_code == NE && (mode_class[(int) (mode)]) == MODE_INT
       && (mode_bitsize[(int) (mode)]) <= (8 * 8)
       && ((1 & mode_mask_array[(int) (mode)])
    == (unsigned long long) 1 << ((mode_bitsize[(int) (mode)])-1))
       && op1 == (const_int_rtx[64])
       && mode == ((enum machine_mode) (op0)->mode)
       && (i = exact_log2_wide ((unsigned long long) (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0)))) >= 0)
     {
       x = simplify_shift_const ((rtx) 0, ASHIFT, mode,
     expand_compound_operation (op0),
     (mode_bitsize[(int) (mode)]) - 1 - i);
       if (((enum rtx_code) (x)->code) == AND && (((x)->fld[1]).rtx) == const_true_rtx)
  return (((x)->fld[0]).rtx);
       else
  return x;
     }


   if (new_code != code)
     return gen_rtx_fmt_ee (new_code, mode, op0, op1);



   do_SUBST(&((((x)->fld[0]).rtx)), (op0));
   do_SUBST(&((((x)->fld[1]).rtx)), (op1));
 }
      break;

    case IF_THEN_ELSE:
      return simplify_if_then_else (x);

    case ZERO_EXTRACT:
    case SIGN_EXTRACT:
    case ZERO_EXTEND:
    case SIGN_EXTEND:

      if (in_dest)
 return x;

      return expand_compound_operation (x);

    case SET:
      return simplify_set (x);

    case AND:
    case IOR:
    case XOR:
      return simplify_logical (x, last);

    case ABS:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == NEG)
 do_SUBST(&((((x)->fld[0]).rtx)), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));



      if (((enum machine_mode) ((((x)->fld[0]).rtx))->mode) == VOIDmode)
 break;


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == FFS || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ABS
   || (((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
        <= (8 * 8))
       && ((cached_nonzero_bits ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)
     & ((long long) 1
        << ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - 1)))
    == 0)))
 return (((x)->fld[0]).rtx);


      if (cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) == (mode_bitsize[(int) (mode)]))
 return gen_rtx_fmt_e (NEG, (mode), ((((x)->fld[0]).rtx)));

      break;

    case FFS:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SIGN_EXTEND
   || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTEND)
 do_SUBST(&((((x)->fld[0]).rtx)), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));
      break;

    case FLOAT:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SIGN_EXTEND)
 do_SUBST(&((((x)->fld[0]).rtx)), (((((((x)->fld[0]).rtx))->fld[0]).rtx)));
      break;

    case ASHIFT:
    case LSHIFTRT:
    case ASHIFTRT:
    case ROTATE:
    case ROTATERT:

      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT)
 return simplify_shift_const (x, code, mode, (((x)->fld[0]).rtx),
         ((((((x)->fld[1]).rtx))->fld[0]).rtwint));


      else if (1 && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) != REG)
 do_SUBST(&((((x)->fld[1]).rtx)), (force_to_mode ((((x)->fld[1]).rtx), ((enum machine_mode) ((((x)->fld[1]).rtx))->mode), ((long long) 1 << exact_log2_wide ((unsigned long long) ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))])))) - 1, (rtx) 0, 0)));







      break;

    case VEC_SELECT:
      {
 rtx op0 = (((x)->fld[0]).rtx);
 rtx op1 = (((x)->fld[1]).rtx);
 int len;

 if (((enum rtx_code) (op1)->code) != PARALLEL)
   fancy_abort ("../../../kg++fe/gnu/combine.c", 4703, __FUNCTION__);
 len = (((((op1)->fld[0]).rtvec))->num_elem);
 if (len == 1
     && ((enum rtx_code) ((((((op1)->fld[0]).rtvec))->elem[0]))->code) == CONST_INT
     && ((enum rtx_code) (op0)->code) == VEC_CONCAT)
   {
     int offset = ((((((((op1)->fld[0]).rtvec))->elem[0]))->fld[0]).rtwint) * (mode_size[(int) (((enum machine_mode) (x)->mode))]);


     for (;;)
       {
  if (((enum machine_mode) (op0)->mode) == ((enum machine_mode) (x)->mode))
    return op0;
  if (((enum rtx_code) (op0)->code) == VEC_CONCAT)
    {
      long long op0_size = (mode_size[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]);
      if (op0_size < offset)
        op0 = (((op0)->fld[0]).rtx);
      else
        {
   offset -= op0_size;
   op0 = (((op0)->fld[1]).rtx);
        }
    }
  else
    break;
       }
   }
      }

      break;

    default:
      break;
    }

  return x;
}



static rtx
simplify_if_then_else (x)
     rtx x;
{
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx cond = (((x)->fld[0]).rtx);
  rtx true_rtx = (((x)->fld[1]).rtx);
  rtx false_rtx = (((x)->fld[2]).rtx);
  enum rtx_code true_code = ((enum rtx_code) (cond)->code);
  int comparison_p = (rtx_class[(int) (true_code)]) == '<';
  rtx temp;
  int i;
  enum rtx_code false_code;
  rtx reversed;


  if (comparison_p && true_rtx == const_true_rtx && false_rtx == (const_int_rtx[64]))
    return gen_binary (true_code, mode, (((cond)->fld[0]).rtx), (((cond)->fld[1]).rtx));


  if (comparison_p
      && true_rtx == (const_int_rtx[64]) && false_rtx == const_true_rtx
      && (reversed = reversed_comparison (cond, mode, (((cond)->fld[0]).rtx),
       (((cond)->fld[1]).rtx))))
    return reversed;





  if (comparison_p
      && ((false_code = combine_reversed_comparison_code (cond))
   != UNKNOWN)
      && ((enum rtx_code) ((((cond)->fld[0]).rtx))->code) == REG)
    {
      long long nzb;
      rtx from = (((cond)->fld[0]).rtx);
      rtx true_val = (((cond)->fld[1]).rtx);
      rtx false_val = true_val;
      int swapped = 0;



      if (false_code == EQ)
 {
   swapped = 1, true_code = EQ, false_code = NE;
   temp = true_rtx, true_rtx = false_rtx, false_rtx = temp;
 }





      if (true_code == EQ && true_val == (const_int_rtx[64])
   && exact_log2_wide ((unsigned long long) (nzb = cached_nonzero_bits (from, ((enum machine_mode) (from)->mode), (rtx) 0, VOIDmode, 0))) >= 0)
 false_code = EQ, false_val = gen_rtx_CONST_INT (VOIDmode, (long long) (nzb));
      else if (true_code == EQ && true_val == (const_int_rtx[64])
        && (cached_num_sign_bit_copies (from, ((enum machine_mode) (from)->mode), (rtx) 0, VOIDmode, 0)
     == (mode_bitsize[(int) (((enum machine_mode) (from)->mode))])))
 false_code = EQ, false_val = (const_int_rtx[64 -1]);





      if (reg_mentioned_p (from, true_rtx))
 true_rtx = subst (known_cond (copy_rtx (true_rtx), true_code,
          from, true_val),
        (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
      if (reg_mentioned_p (from, false_rtx))
 false_rtx = subst (known_cond (copy_rtx (false_rtx), false_code,
       from, false_val),
         (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);

      do_SUBST(&((((x)->fld[1]).rtx)), (swapped ? false_rtx : true_rtx));
      do_SUBST(&((((x)->fld[2]).rtx)), (swapped ? true_rtx : false_rtx));

      true_rtx = (((x)->fld[1]).rtx);
      false_rtx = (((x)->fld[2]).rtx);
      true_code = ((enum rtx_code) (cond)->code);
    }







  if (comparison_p
      && combine_reversed_comparison_code (cond) != UNKNOWN
      && (true_rtx == (global_rtl[GR_PC])
   || ((((enum rtx_code) (true_rtx)->code) == LABEL_REF || ((enum rtx_code) (true_rtx)->code) == SYMBOL_REF || ((enum rtx_code) (true_rtx)->code) == CONST_INT || ((enum rtx_code) (true_rtx)->code) == CONST_DOUBLE || ((enum rtx_code) (true_rtx)->code) == CONST || ((enum rtx_code) (true_rtx)->code) == HIGH || ((enum rtx_code) (true_rtx)->code) == CONST_VECTOR || ((enum rtx_code) (true_rtx)->code) == CONSTANT_P_RTX)
       && ((enum rtx_code) (false_rtx)->code) != CONST_INT && false_rtx != (global_rtl[GR_PC]))
   || true_rtx == (const_int_rtx[64])
   || ((rtx_class[(int) (((enum rtx_code) (true_rtx)->code))]) == 'o'
       && (rtx_class[(int) (((enum rtx_code) (false_rtx)->code))]) != 'o')
   || (((enum rtx_code) (true_rtx)->code) == SUBREG
       && (rtx_class[(int) (((enum rtx_code) ((((true_rtx)->fld[0]).rtx))->code))]) == 'o'
       && (rtx_class[(int) (((enum rtx_code) (false_rtx)->code))]) != 'o')
   || reg_mentioned_p (true_rtx, false_rtx)
   || rtx_equal_p (false_rtx, (((cond)->fld[0]).rtx))))
    {
      true_code = reversed_comparison_code (cond, ((void *)0));
      do_SUBST(&((((x)->fld[0]).rtx)), (reversed_comparison (cond, ((enum machine_mode) (cond)->mode), (((cond)->fld[0]).rtx), (((cond)->fld[1]).rtx))));



      do_SUBST(&((((x)->fld[1]).rtx)), (false_rtx));
      do_SUBST(&((((x)->fld[2]).rtx)), (true_rtx));

      temp = true_rtx, true_rtx = false_rtx, false_rtx = temp;
      cond = (((x)->fld[0]).rtx);


      true_code = ((enum rtx_code) (cond)->code);
      comparison_p = (rtx_class[(int) (true_code)]) == '<';
    }



  if (rtx_equal_p (true_rtx, false_rtx) && ! side_effects_p (cond))
    return true_rtx;


  if (true_code == EQ && ! side_effects_p (cond)
      && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0) && !flag_finite_math_only)
      && rtx_equal_p ((((cond)->fld[0]).rtx), false_rtx)
      && rtx_equal_p ((((cond)->fld[1]).rtx), true_rtx))
    return false_rtx;
  else if (true_code == NE && ! side_effects_p (cond)
    && !((((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) && 1 == 1 && !0) && !flag_finite_math_only)
    && rtx_equal_p ((((cond)->fld[0]).rtx), true_rtx)
    && rtx_equal_p ((((cond)->fld[1]).rtx), false_rtx))
    return true_rtx;



  if ((mode_class[(int) (mode)]) == MODE_INT
      && ((enum rtx_code) (false_rtx)->code) == NEG
      && rtx_equal_p (true_rtx, (((false_rtx)->fld[0]).rtx))
      && comparison_p
      && rtx_equal_p (true_rtx, (((cond)->fld[0]).rtx))
      && ! side_effects_p (true_rtx))
    switch (true_code)
      {
      case GT:
      case GE:
 return simplify_gen_unary (ABS, mode, true_rtx, mode);
      case LT:
      case LE:
 return
   simplify_gen_unary (NEG, mode,
         simplify_gen_unary (ABS, mode, true_rtx, mode),
         mode);
      default:
 break;
      }



  if ((! ((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) || flag_unsafe_math_optimizations)
      && comparison_p
      && rtx_equal_p ((((cond)->fld[0]).rtx), true_rtx)
      && rtx_equal_p ((((cond)->fld[1]).rtx), false_rtx)
      && ! side_effects_p (cond))
    switch (true_code)
      {
      case GE:
      case GT:
 return gen_binary (SMAX, mode, true_rtx, false_rtx);
      case LE:
      case LT:
 return gen_binary (SMIN, mode, true_rtx, false_rtx);
      case GEU:
      case GTU:
 return gen_binary (UMAX, mode, true_rtx, false_rtx);
      case LEU:
      case LTU:
 return gen_binary (UMIN, mode, true_rtx, false_rtx);
      default:
 break;
      }
# 4934 "../../../kg++fe/gnu/combine.c"
  if ((1 == 1 || 1 == -1)
      && comparison_p
      && (mode_class[(int) (mode)]) == MODE_INT
      && ! side_effects_p (x))
    {
      rtx t = make_compound_operation (true_rtx, SET);
      rtx f = make_compound_operation (false_rtx, SET);
      rtx cond_op0 = (((cond)->fld[0]).rtx);
      rtx cond_op1 = (((cond)->fld[1]).rtx);
      enum rtx_code op = NIL, extend_op = NIL;
      enum machine_mode m = mode;
      rtx z = 0, c1 = (rtx) 0;

      if ((((enum rtx_code) (t)->code) == PLUS || ((enum rtx_code) (t)->code) == MINUS
    || ((enum rtx_code) (t)->code) == IOR || ((enum rtx_code) (t)->code) == XOR
    || ((enum rtx_code) (t)->code) == ASHIFT
    || ((enum rtx_code) (t)->code) == LSHIFTRT || ((enum rtx_code) (t)->code) == ASHIFTRT)
   && rtx_equal_p ((((t)->fld[0]).rtx), f))
 c1 = (((t)->fld[1]).rtx), op = ((enum rtx_code) (t)->code), z = f;



      else if ((((enum rtx_code) (t)->code) == PLUS || ((enum rtx_code) (t)->code) == IOR
  || ((enum rtx_code) (t)->code) == XOR)
        && rtx_equal_p ((((t)->fld[1]).rtx), f))
 c1 = (((t)->fld[0]).rtx), op = ((enum rtx_code) (t)->code), z = f;
      else if (((enum rtx_code) (t)->code) == SIGN_EXTEND
        && (((enum rtx_code) ((((t)->fld[0]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == MINUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == IOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == XOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == ASHIFT
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == LSHIFTRT
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == ASHIFTRT)
        && ((enum rtx_code) (((((((t)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG
        && subreg_lowpart_p (((((((t)->fld[0]).rtx))->fld[0]).rtx))
        && rtx_equal_p ((((((((((t)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx), f)
        && (cached_num_sign_bit_copies (f, ((enum machine_mode) (f)->mode), (rtx) 0, VOIDmode, 0)
     > (unsigned int)
       ((mode_bitsize[(int) (mode)])
        - (mode_bitsize[(int) (((enum machine_mode) (((((((t)->fld[0]).rtx))->fld[0]).rtx))->mode))]))))
 {
   c1 = ((((((t)->fld[0]).rtx))->fld[1]).rtx); z = f; op = ((enum rtx_code) ((((t)->fld[0]).rtx))->code);
   extend_op = SIGN_EXTEND;
   m = ((enum machine_mode) ((((t)->fld[0]).rtx))->mode);
 }
      else if (((enum rtx_code) (t)->code) == SIGN_EXTEND
        && (((enum rtx_code) ((((t)->fld[0]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == IOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == XOR)
        && ((enum rtx_code) (((((((t)->fld[0]).rtx))->fld[1]).rtx))->code) == SUBREG
        && subreg_lowpart_p (((((((t)->fld[0]).rtx))->fld[1]).rtx))
        && rtx_equal_p ((((((((((t)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtx), f)
        && (cached_num_sign_bit_copies (f, ((enum machine_mode) (f)->mode), (rtx) 0, VOIDmode, 0)
     > (unsigned int)
       ((mode_bitsize[(int) (mode)])
        - (mode_bitsize[(int) (((enum machine_mode) (((((((t)->fld[0]).rtx))->fld[1]).rtx))->mode))]))))
 {
   c1 = ((((((t)->fld[0]).rtx))->fld[0]).rtx); z = f; op = ((enum rtx_code) ((((t)->fld[0]).rtx))->code);
   extend_op = SIGN_EXTEND;
   m = ((enum machine_mode) ((((t)->fld[0]).rtx))->mode);
 }
      else if (((enum rtx_code) (t)->code) == ZERO_EXTEND
        && (((enum rtx_code) ((((t)->fld[0]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == MINUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == IOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == XOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == ASHIFT
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == LSHIFTRT
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == ASHIFTRT)
        && ((enum rtx_code) (((((((t)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG
        && (mode_bitsize[(int) (mode)]) <= (8 * 8)
        && subreg_lowpart_p (((((((t)->fld[0]).rtx))->fld[0]).rtx))
        && rtx_equal_p ((((((((((t)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx), f)
        && ((cached_nonzero_bits (f, ((enum machine_mode) (f)->mode), (rtx) 0, VOIDmode, 0)
      & ~mode_mask_array[(int) (((enum machine_mode) (((((((t)->fld[0]).rtx))->fld[0]).rtx))->mode))])
     == 0))
 {
   c1 = ((((((t)->fld[0]).rtx))->fld[1]).rtx); z = f; op = ((enum rtx_code) ((((t)->fld[0]).rtx))->code);
   extend_op = ZERO_EXTEND;
   m = ((enum machine_mode) ((((t)->fld[0]).rtx))->mode);
 }
      else if (((enum rtx_code) (t)->code) == ZERO_EXTEND
        && (((enum rtx_code) ((((t)->fld[0]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == IOR
     || ((enum rtx_code) ((((t)->fld[0]).rtx))->code) == XOR)
        && ((enum rtx_code) (((((((t)->fld[0]).rtx))->fld[1]).rtx))->code) == SUBREG
        && (mode_bitsize[(int) (mode)]) <= (8 * 8)
        && subreg_lowpart_p (((((((t)->fld[0]).rtx))->fld[1]).rtx))
        && rtx_equal_p ((((((((((t)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtx), f)
        && ((cached_nonzero_bits (f, ((enum machine_mode) (f)->mode), (rtx) 0, VOIDmode, 0)
      & ~mode_mask_array[(int) (((enum machine_mode) (((((((t)->fld[0]).rtx))->fld[1]).rtx))->mode))])
     == 0))
 {
   c1 = ((((((t)->fld[0]).rtx))->fld[0]).rtx); z = f; op = ((enum rtx_code) ((((t)->fld[0]).rtx))->code);
   extend_op = ZERO_EXTEND;
   m = ((enum machine_mode) ((((t)->fld[0]).rtx))->mode);
 }

      if (z)
 {
   temp = subst (gen_binary (true_code, m, cond_op0, cond_op1),
   (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
   temp = gen_binary (MULT, m, temp,
        gen_binary (MULT, m, c1, const_true_rtx));
   temp = subst (temp, (global_rtl[GR_PC]), (global_rtl[GR_PC]), 0, 0);
   temp = gen_binary (op, m, gen_lowpart_for_combine (m, z), temp);

   if (extend_op != NIL)
     temp = simplify_gen_unary (extend_op, mode, temp, m);

   return temp;
 }
    }






  if (true_code == NE && (((cond)->fld[1]).rtx) == (const_int_rtx[64])
      && false_rtx == (const_int_rtx[64]) && ((enum rtx_code) (true_rtx)->code) == CONST_INT
      && ((1 == cached_nonzero_bits ((((cond)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
    && (i = exact_log2_wide ((unsigned long long) ((((true_rtx)->fld[0]).rtwint)))) >= 0)
   || ((cached_num_sign_bit_copies ((((cond)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
        == (mode_bitsize[(int) (mode)]))
       && (i = exact_log2_wide ((unsigned long long) (-(((true_rtx)->fld[0]).rtwint)))) >= 0)))
    return
      simplify_shift_const ((rtx) 0, ASHIFT, mode,
       gen_lowpart_for_combine (mode, (((cond)->fld[0]).rtx)), i);

  return x;
}



static rtx
simplify_set (x)
     rtx x;
{
  rtx src = (((x)->fld[1]).rtx);
  rtx dest = (((x)->fld[0]).rtx);
  enum machine_mode mode
    = ((enum machine_mode) (src)->mode) != VOIDmode ? ((enum machine_mode) (src)->mode) : ((enum machine_mode) (dest)->mode);
  rtx other_insn;
  rtx *cc_use;


  if (((enum rtx_code) (dest)->code) == PC && ((enum rtx_code) (src)->code) == RETURN)
    return src;





  if ((mode_class[(int) (mode)]) == MODE_INT
      && (mode_bitsize[(int) (mode)]) <= (8 * 8))
    {
      src = force_to_mode (src, mode, ~(long long) 0, (rtx) 0, 0);
      do_SUBST(&((((x)->fld[1]).rtx)), (src));
    }




  if (((mode_class[(int) (mode)]) == MODE_CC
       || ((enum rtx_code) (src)->code) == COMPARE
       || 0)
      && (cc_use = find_single_use (dest, subst_insn, &other_insn)) != 0
      && (undobuf.other_insn == 0 || other_insn == undobuf.other_insn)
      && (rtx_class[(int) (((enum rtx_code) (*cc_use)->code))]) == '<'
      && rtx_equal_p ((((*cc_use)->fld[0]).rtx), dest))
    {
      enum rtx_code old_code = ((enum rtx_code) (*cc_use)->code);
      enum rtx_code new_code;
      rtx op0, op1, tmp;
      int other_changed = 0;
      enum machine_mode compare_mode = ((enum machine_mode) (dest)->mode);
      enum machine_mode tmp_mode;

      if (((enum rtx_code) (src)->code) == COMPARE)
 op0 = (((src)->fld[0]).rtx), op1 = (((src)->fld[1]).rtx);
      else
 op0 = src, op1 = (const_int_rtx[64]);


      if (((enum machine_mode) (op0)->mode) != VOIDmode)
 tmp_mode = ((enum machine_mode) (op0)->mode);
      else if (((enum machine_mode) (op1)->mode) != VOIDmode)
 tmp_mode = ((enum machine_mode) (op1)->mode);
      else
 tmp_mode = compare_mode;
      tmp = simplify_relational_operation (old_code, tmp_mode, op0, op1);
      if (tmp != (rtx) 0)
 {
   rtx pat = (((other_insn)->fld[5]).rtx);
   undobuf.other_insn = other_insn;
   do_SUBST(&(*cc_use), (tmp));


   if (((enum rtx_code) (pat)->code) == SET)
     {
       rtx new = simplify_rtx ((((pat)->fld[1]).rtx));
       if (new != (rtx) 0)
  do_SUBST(&((((pat)->fld[1]).rtx)), (new));
     }


   do_SUBST(&((((x)->fld[0]).rtx)), ((global_rtl[GR_PC])));
   do_SUBST(&((((x)->fld[1]).rtx)), ((global_rtl[GR_PC])));
   return x;
 }


      new_code = simplify_comparison (old_code, &op0, &op1);
# 5184 "../../../kg++fe/gnu/combine.c"
      if (new_code != old_code)
 {
   unsigned long long mask;

   do_SUBST(&(*cc_use), (gen_rtx_fmt_ee (new_code, ((enum machine_mode) (*cc_use)->mode), dest, (const_int_rtx[64]))));
# 5197 "../../../kg++fe/gnu/combine.c"
   if (((old_code == NE && new_code == EQ)
        || (old_code == EQ && new_code == NE))
       && ! other_changed && op1 == (const_int_rtx[64])
       && (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) <= (8 * 8)
       && exact_log2_wide ((unsigned long long) (mask = cached_nonzero_bits (op0, ((enum machine_mode) (op0)->mode), (rtx) 0, VOIDmode, 0))) >= 0)
     {
       rtx pat = (((other_insn)->fld[5]).rtx), note = 0;

       if ((recog_for_combine (&pat, other_insn, &note) < 0
     && ! check_asm_operands (pat)))
  {
    ((*cc_use)->code = (enum rtx_code) (old_code));
    other_insn = 0;

    op0 = gen_binary (XOR, ((enum machine_mode) (op0)->mode), op0, gen_rtx_CONST_INT (VOIDmode, (long long) (mask)));
  }
     }

   other_changed = 1;
 }

      if (other_changed)
 undobuf.other_insn = other_insn;
# 5234 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (src)->code) != COMPARE || ((enum machine_mode) (src)->mode) != compare_mode)
 {
   do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx_fmt_ee (COMPARE, (compare_mode), (op0), (op1))));
   src = (((x)->fld[1]).rtx);
 }
      else
 {

   do_SUBST(&((((src)->fld[0]).rtx)), (op0));
   do_SUBST(&((((src)->fld[1]).rtx)), (op1));
 }
    }
  else
    {


      src = make_compound_operation (src, SET);
      do_SUBST(&((((x)->fld[1]).rtx)), (src));
    }
# 5266 "../../../kg++fe/gnu/combine.c"
  if (((enum rtx_code) (src)->code) == SUBREG && subreg_lowpart_p (src)
      && (rtx_class[(int) (((enum rtx_code) ((((src)->fld[0]).rtx))->code))]) != 'o'
      && ((((mode_size[(int) (((enum machine_mode) (src)->mode))]) + (((target_flags & 0x00002000) ? 8 : 4) - 1))
    / ((target_flags & 0x00002000) ? 8 : 4))
   == (((mode_size[(int) (((enum machine_mode) ((((src)->fld[0]).rtx))->mode))])
        + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4)))





      && ! (((enum rtx_code) (dest)->code) == REG && (((dest)->fld[0]).rtuint) < 176
     && mips_cannot_change_mode_class (((enum machine_mode) ((((src)->fld[0]).rtx))->mode), ((enum machine_mode) (src)->mode), mips_regno_to_class[ ((((dest)->fld[0]).rtuint)) ]))



      && (((enum rtx_code) (dest)->code) == REG
   || (((enum rtx_code) (dest)->code) == SUBREG
       && ((enum rtx_code) ((((dest)->fld[0]).rtx))->code) == REG)))
    {
      do_SUBST(&((((x)->fld[0]).rtx)), (gen_lowpart_for_combine (((enum machine_mode) ((((src)->fld[0]).rtx))->mode), dest)));


      do_SUBST(&((((x)->fld[1]).rtx)), ((((src)->fld[0]).rtx)));

      src = (((x)->fld[1]).rtx), dest = (((x)->fld[0]).rtx);
    }
# 5323 "../../../kg++fe/gnu/combine.c"
  if (((enum rtx_code) (src)->code) == SUBREG && subreg_lowpart_p (src)
      && ((target_flags & 0x00002000) && ((((enum machine_mode) ((((src)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((src)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) != NIL
      && (((src)->fld[1]).rtuint) == 0
      && ((mode_size[(int) (((enum machine_mode) (src)->mode))])
   > (mode_size[(int) (((enum machine_mode) ((((src)->fld[0]).rtx))->mode))]))
      && ((enum rtx_code) ((((src)->fld[0]).rtx))->code) == MEM)
    {
      do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx (((target_flags & 0x00002000) && ((((enum machine_mode) ((((src)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((src)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND), ((enum machine_mode) (src)->mode), (((src)->fld[0]).rtx))));



      src = (((x)->fld[1]).rtx);
    }
# 5344 "../../../kg++fe/gnu/combine.c"
  if (((enum rtx_code) (dest)->code) != PC
      && ((enum rtx_code) (src)->code) == IF_THEN_ELSE
      && (mode_class[(int) (((enum machine_mode) (src)->mode))]) == MODE_INT
      && (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == EQ || ((enum rtx_code) ((((src)->fld[0]).rtx))->code) == NE)
      && ((((((src)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64])
      && ((enum machine_mode) (src)->mode) == ((enum machine_mode) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->mode)

      && ! can_conditionally_move_p (((enum machine_mode) (src)->mode))

      && (cached_num_sign_bit_copies (((((((src)->fld[0]).rtx))->fld[0]).rtx), ((enum machine_mode) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)

   == (mode_bitsize[(int) (((enum machine_mode) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->mode))]))
      && ! side_effects_p (src))
    {
      rtx true_rtx = (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == NE
        ? (((src)->fld[1]).rtx) : (((src)->fld[2]).rtx));
      rtx false_rtx = (((enum rtx_code) ((((src)->fld[0]).rtx))->code) == NE
     ? (((src)->fld[2]).rtx) : (((src)->fld[1]).rtx));
      rtx term1 = (const_int_rtx[64]), term2, term3;

      if (((enum rtx_code) (true_rtx)->code) == IOR
   && rtx_equal_p ((((true_rtx)->fld[0]).rtx), false_rtx))
 term1 = false_rtx, true_rtx = (((true_rtx)->fld[1]).rtx), false_rtx = (const_int_rtx[64]);
      else if (((enum rtx_code) (true_rtx)->code) == IOR
        && rtx_equal_p ((((true_rtx)->fld[1]).rtx), false_rtx))
 term1 = false_rtx, true_rtx = (((true_rtx)->fld[0]).rtx), false_rtx = (const_int_rtx[64]);
      else if (((enum rtx_code) (false_rtx)->code) == IOR
        && rtx_equal_p ((((false_rtx)->fld[0]).rtx), true_rtx))
 term1 = true_rtx, false_rtx = (((false_rtx)->fld[1]).rtx), true_rtx = (const_int_rtx[64]);
      else if (((enum rtx_code) (false_rtx)->code) == IOR
        && rtx_equal_p ((((false_rtx)->fld[1]).rtx), true_rtx))
 term1 = true_rtx, false_rtx = (((false_rtx)->fld[0]).rtx), true_rtx = (const_int_rtx[64]);

      term2 = gen_binary (AND, ((enum machine_mode) (src)->mode),
     ((((((src)->fld[0]).rtx))->fld[0]).rtx), true_rtx);
      term3 = gen_binary (AND, ((enum machine_mode) (src)->mode),
     simplify_gen_unary (NOT, ((enum machine_mode) (src)->mode),
           ((((((src)->fld[0]).rtx))->fld[0]).rtx),
           ((enum machine_mode) (src)->mode)),
     false_rtx);

      do_SUBST(&((((x)->fld[1]).rtx)), (gen_binary (IOR, ((enum machine_mode) (src)->mode), gen_binary (IOR, ((enum machine_mode) (src)->mode), term1, term2), term3)));




      src = (((x)->fld[1]).rtx);
    }



  if (((enum rtx_code) (src)->code) == CLOBBER && (((src)->fld[0]).rtx) == (const_int_rtx[64]))
    return src;
  else if (((enum rtx_code) (dest)->code) == CLOBBER && (((dest)->fld[0]).rtx) == (const_int_rtx[64]))
    return dest;
  else

    return make_field_assignment (x);
}




static rtx
simplify_logical (x, last)
     rtx x;
     int last;
{
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx op0 = (((x)->fld[0]).rtx);
  rtx op1 = (((x)->fld[1]).rtx);
  rtx reversed;

  switch (((enum rtx_code) (x)->code))
    {
    case AND:


      if (((enum rtx_code) (op0)->code) == XOR
   && rtx_equal_p ((((op0)->fld[0]).rtx), op1)
   && ! side_effects_p (op1))
 x = gen_binary (AND, mode,
   simplify_gen_unary (NOT, mode, (((op0)->fld[1]).rtx), mode),
   op1);

      if (((enum rtx_code) (op0)->code) == XOR
   && rtx_equal_p ((((op0)->fld[1]).rtx), op1)
   && ! side_effects_p (op1))
 x = gen_binary (AND, mode,
   simplify_gen_unary (NOT, mode, (((op0)->fld[0]).rtx), mode),
   op1);


      if (((enum rtx_code) (op0)->code) == NOT
   && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == XOR
   && rtx_equal_p (((((((op0)->fld[0]).rtx))->fld[0]).rtx), op1)
   && ! side_effects_p (op1))
 x = gen_binary (AND, mode, ((((((op0)->fld[0]).rtx))->fld[1]).rtx), op1);

      if (((enum rtx_code) (op0)->code) == NOT
   && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == XOR
   && rtx_equal_p (((((((op0)->fld[0]).rtx))->fld[1]).rtx), op1)
   && ! side_effects_p (op1))
 x = gen_binary (AND, mode, ((((((op0)->fld[0]).rtx))->fld[0]).rtx), op1);




      if (((enum rtx_code) (op1)->code) == CONST_INT
   && ((mode_bitsize[(int) (mode)]) <= (8 * 8)
       || (((op1)->fld[0]).rtwint) > 0))
 {
   x = simplify_and_const_int (x, mode, op0, (((op1)->fld[0]).rtwint));




   if (last
       && ((enum rtx_code) (x)->code) == IOR && ((enum rtx_code) (op0)->code) == AND
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) (op1)->code) == CONST_INT)
     return gen_binary (IOR, mode,
          gen_binary (AND, mode, (((op0)->fld[0]).rtx),
        gen_rtx_CONST_INT (VOIDmode, (long long) (((((((op0)->fld[1]).rtx))->fld[0]).rtwint) & ~(((op1)->fld[0]).rtwint)))), op1);


   if (((enum rtx_code) (x)->code) != AND)
     return x;

   if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == 'c'
       || (rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2')
     op0 = (((x)->fld[0]).rtx), op1 = (((x)->fld[1]).rtx);
 }


      if (((enum rtx_code) (op0)->code) == IOR
   && (rtx_equal_p ((((op0)->fld[0]).rtx), op1)
       || rtx_equal_p ((((op0)->fld[1]).rtx), op1))
   && ! side_effects_p ((((op0)->fld[0]).rtx))
   && ! side_effects_p ((((op0)->fld[1]).rtx)))
 return op1;
# 5501 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (op0)->code) == IOR || ((enum rtx_code) (op0)->code) == XOR)
 {
   x = apply_distributive_law
     (gen_binary (((enum rtx_code) (op0)->code), mode,
    gen_binary (AND, mode, (((op0)->fld[0]).rtx), op1),
    gen_binary (AND, mode, (((op0)->fld[1]).rtx),
         copy_rtx (op1))));
   if (((enum rtx_code) (x)->code) != AND)
     return x;
 }

      if (((enum rtx_code) (op1)->code) == IOR || ((enum rtx_code) (op1)->code) == XOR)
 return apply_distributive_law
   (gen_binary (((enum rtx_code) (op1)->code), mode,
         gen_binary (AND, mode, (((op1)->fld[0]).rtx), op0),
         gen_binary (AND, mode, (((op1)->fld[1]).rtx),
       copy_rtx (op0))));




      if (((enum rtx_code) (op0)->code) == NOT && ((enum rtx_code) (op1)->code) == XOR)
 return apply_distributive_law
   (gen_binary (XOR, mode,
         gen_binary (IOR, mode, (((op0)->fld[0]).rtx), (((op1)->fld[0]).rtx)),
         gen_binary (IOR, mode, copy_rtx ((((op0)->fld[0]).rtx)),
       (((op1)->fld[1]).rtx))));

      else if (((enum rtx_code) (op1)->code) == NOT && ((enum rtx_code) (op0)->code) == XOR)
 return apply_distributive_law
   (gen_binary (XOR, mode,
         gen_binary (IOR, mode, (((op1)->fld[0]).rtx), (((op0)->fld[0]).rtx)),
         gen_binary (IOR, mode, copy_rtx ((((op1)->fld[0]).rtx)), (((op0)->fld[1]).rtx))));
      break;

    case IOR:

      if (((enum rtx_code) (op1)->code) == CONST_INT
   && (mode_bitsize[(int) (mode)]) <= (8 * 8)
   && (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) & ~(((op1)->fld[0]).rtwint)) == 0)
 return op1;


      if (((enum rtx_code) (op0)->code) == AND
   && (rtx_equal_p ((((op0)->fld[0]).rtx), op1)
       || rtx_equal_p ((((op0)->fld[1]).rtx), op1))
   && ! side_effects_p ((((op0)->fld[0]).rtx))
   && ! side_effects_p ((((op0)->fld[1]).rtx)))
 return op1;




      if (((enum rtx_code) (op0)->code) == AND)
 {
   x = apply_distributive_law
     (gen_binary (AND, mode,
    gen_binary (IOR, mode, (((op0)->fld[0]).rtx), op1),
    gen_binary (IOR, mode, (((op0)->fld[1]).rtx),
         copy_rtx (op1))));

   if (((enum rtx_code) (x)->code) != IOR)
     return x;
 }

      if (((enum rtx_code) (op1)->code) == AND)
 {
   x = apply_distributive_law
     (gen_binary (AND, mode,
    gen_binary (IOR, mode, (((op1)->fld[0]).rtx), op0),
    gen_binary (IOR, mode, (((op1)->fld[1]).rtx),
         copy_rtx (op0))));

   if (((enum rtx_code) (x)->code) != IOR)
     return x;
 }




      if (((((enum rtx_code) (op0)->code) == ASHIFT && ((enum rtx_code) (op1)->code) == LSHIFTRT)
    || (((enum rtx_code) (op1)->code) == ASHIFT && ((enum rtx_code) (op0)->code) == LSHIFTRT))
   && rtx_equal_p ((((op0)->fld[0]).rtx), (((op1)->fld[0]).rtx))
   && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
   && ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST_INT
   && (((((((op0)->fld[1]).rtx))->fld[0]).rtwint) + ((((((op1)->fld[1]).rtx))->fld[0]).rtwint)
       == (mode_bitsize[(int) (mode)])))
 return gen_rtx_fmt_ee (ROTATE, (mode), ((((op0)->fld[0]).rtx)), ((((enum rtx_code) (op0)->code) == ASHIFT ? (((op0)->fld[1]).rtx) : (((op1)->fld[1]).rtx))));
# 5597 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (op1)->code) == CONST_INT && ((enum rtx_code) (op0)->code) == ASHIFTRT
   && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == PLUS
   && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
   && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
 {
   int count = ((((((op0)->fld[1]).rtx))->fld[0]).rtwint);
   long long mask = (((op1)->fld[0]).rtwint) << count;

   if (mask >> count == (((op1)->fld[0]).rtwint)
       && (mask & cached_nonzero_bits ((((op0)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)) == 0)
     {
       do_SUBST(&(((((((op0)->fld[0]).rtx))->fld[1]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) ((((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) | mask))));

       return op0;
     }
 }
      break;

    case XOR:




      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0)
       & cached_nonzero_bits (op1, mode, (rtx) 0, VOIDmode, 0)) == 0)
 return (gen_binary (IOR, mode, op0, op1));




      {
 int num_negated = 0;

 if (((enum rtx_code) (op0)->code) == NOT)
   num_negated++, op0 = (((op0)->fld[0]).rtx);
 if (((enum rtx_code) (op1)->code) == NOT)
   num_negated++, op1 = (((op1)->fld[0]).rtx);

 if (num_negated == 2)
   {
     do_SUBST(&((((x)->fld[0]).rtx)), (op0));
     do_SUBST(&((((x)->fld[1]).rtx)), (op1));
   }
 else if (num_negated == 1)
   return
     simplify_gen_unary (NOT, mode, gen_binary (XOR, mode, op0, op1),
    mode);
      }





      if (((enum rtx_code) (op0)->code) == AND
   && rtx_equal_p ((((op0)->fld[1]).rtx), op1)
   && ! side_effects_p (op1))
 return gen_binary (AND, mode,
      simplify_gen_unary (NOT, mode, (((op0)->fld[0]).rtx), mode),
      op1);

      else if (((enum rtx_code) (op0)->code) == AND
        && rtx_equal_p ((((op0)->fld[0]).rtx), op1)
        && ! side_effects_p (op1))
 return gen_binary (AND, mode,
      simplify_gen_unary (NOT, mode, (((op0)->fld[1]).rtx), mode),
      op1);



      if (1 == 1
   && op1 == (const_int_rtx[64 +1])
   && (rtx_class[(int) (((enum rtx_code) (op0)->code))]) == '<'
   && (reversed = reversed_comparison (op0, mode, (((op0)->fld[0]).rtx),
           (((op0)->fld[1]).rtx))))
 return reversed;





      if (1 == 1
   && op1 == (const_int_rtx[64 +1])
   && ((enum rtx_code) (op0)->code) == LSHIFTRT
   && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
   && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) == (mode_bitsize[(int) (mode)]) - 1)
 return gen_rtx_fmt_ee (GE, (mode), ((((op0)->fld[0]).rtx)), ((const_int_rtx[64])));



      if ((mode_bitsize[(int) (mode)]) <= (8 * 8)
   && ((1 & mode_mask_array[(int) (mode)])
       == (unsigned long long) 1 << ((mode_bitsize[(int) (mode)]) - 1))
   && op1 == const_true_rtx
   && (rtx_class[(int) (((enum rtx_code) (op0)->code))]) == '<'
   && (reversed = reversed_comparison (op0, mode, (((op0)->fld[0]).rtx),
           (((op0)->fld[1]).rtx))))
 return reversed;

      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/combine.c", 5700, __FUNCTION__);
    }

  return x;
}
# 5719 "../../../kg++fe/gnu/combine.c"
static rtx
expand_compound_operation (x)
     rtx x;
{
  unsigned long long pos = 0, len;
  int unsignedp = 0;
  unsigned int modewidth;
  rtx tem;

  switch (((enum rtx_code) (x)->code))
    {
    case ZERO_EXTEND:
      unsignedp = 1;
    case SIGN_EXTEND:
# 5741 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT)
 return x;
# 5753 "../../../kg++fe/gnu/combine.c"
      if ((mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) > ((target_flags & 0x00002000) ? 8 : 4))
 return x;




      if (! ((mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == MODE_INT || (mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == MODE_PARTIAL_INT))
 return x;

      len = (mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]);



      if (len == 0)
 return x;

      break;

    case ZERO_EXTRACT:
      unsignedp = 1;
    case SIGN_EXTRACT:

      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CLOBBER)
 return (((x)->fld[0]).rtx);

      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) != CONST_INT
   || ((enum rtx_code) ((((x)->fld[2]).rtx))->code) != CONST_INT
   || ((enum machine_mode) ((((x)->fld[0]).rtx))->mode) == VOIDmode)
 return x;




      if (! ((mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == MODE_INT || (mode_class[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == MODE_PARTIAL_INT))
 return x;

      len = ((((((x)->fld[1]).rtx))->fld[0]).rtwint);
      pos = ((((((x)->fld[2]).rtx))->fld[0]).rtwint);




      if (len + pos > (mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
 do_SUBST(&((((x)->fld[0]).rtx)), (gen_rtx_fmt_e (USE, (((enum machine_mode) (x)->mode)), ((((x)->fld[0]).rtx)))));

      if (0)
 pos = (mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - len - pos;

      break;

    default:
      return x;
    }



  if (((enum rtx_code) (x)->code) == SIGN_EXTEND
      && ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8)
   && ((cached_nonzero_bits ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)
  & ~(((unsigned long long)
        mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       >> 1))
        == 0)))
    {
      rtx temp = gen_rtx_fmt_e (ZERO_EXTEND, (((enum machine_mode) (x)->mode)), ((((x)->fld[0]).rtx)));
      return expand_compound_operation (temp);
    }


  if (((enum rtx_code) (x)->code) == ZERO_EXTEND)
    {



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == TRUNCATE
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == ((enum machine_mode) (x)->mode)
   && (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8)
   && (cached_nonzero_bits (((((((x)->fld[0]).rtx))->fld[0]).rtx), ((enum machine_mode) (x)->mode), (rtx) 0, VOIDmode, 0)
       & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == 0)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == ((enum machine_mode) (x)->mode)
   && subreg_lowpart_p ((((x)->fld[0]).rtx))
   && (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8)
   && (cached_nonzero_bits (((((((x)->fld[0]).rtx))->fld[0]).rtx), ((enum machine_mode) (x)->mode), (rtx) 0, VOIDmode, 0)
       & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == 0)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);





      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == TRUNCATE
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == ((enum machine_mode) (x)->mode)
   && (rtx_class[(int) (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code))]) == '<'
   && ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       <= (8 * 8))
   && ((long long) 1
       & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == 0)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
   && ((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode) == ((enum machine_mode) (x)->mode)
   && subreg_lowpart_p ((((x)->fld[0]).rtx))
   && (rtx_class[(int) (((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code))]) == '<'
   && ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       <= (8 * 8))
   && ((long long) 1
       & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == 0)
 return ((((((x)->fld[0]).rtx))->fld[0]).rtx);

    }
# 5884 "../../../kg++fe/gnu/combine.c"
  modewidth = (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]);
  if (modewidth + len >= pos)
    tem = simplify_shift_const ((rtx) 0, unsignedp ? LSHIFTRT : ASHIFTRT,
    ((enum machine_mode) (x)->mode),
    simplify_shift_const ((rtx) 0, ASHIFT,
            ((enum machine_mode) (x)->mode),
            (((x)->fld[0]).rtx),
            modewidth - pos - len),
    modewidth - len);

  else if (unsignedp && len < (8 * 8))
    tem = simplify_and_const_int ((rtx) 0, ((enum machine_mode) (x)->mode),
      simplify_shift_const ((rtx) 0, LSHIFTRT,
       ((enum machine_mode) (x)->mode),
       (((x)->fld[0]).rtx), pos),
      ((long long) 1 << len) - 1);
  else

    return x;



  if (((enum rtx_code) (tem)->code) == CLOBBER)
    return x;

  return tem;
}
# 5920 "../../../kg++fe/gnu/combine.c"
static rtx
expand_field_assignment (x)
     rtx x;
{
  rtx inner;
  rtx pos;
  int len;
  rtx mask;
  enum machine_mode compute_mode;


  while (1)
    {
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == STRICT_LOW_PART
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG)
 {
   inner = (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx);
   len = (mode_bitsize[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))]);
   pos = gen_rtx_CONST_INT (VOIDmode, (long long) (subreg_lsb (((((((x)->fld[0]).rtx))->fld[0]).rtx))));
 }
      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ZERO_EXTRACT
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
 {
   inner = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   len = (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
   pos = ((((((x)->fld[0]).rtx))->fld[2]).rtx);



   if (((enum rtx_code) (pos)->code) == CONST_INT
       && (((pos)->fld[0]).rtwint) + len > (mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]))
     inner = gen_rtx_fmt_e (USE, (((enum machine_mode) ((((x)->fld[0]).rtx))->mode)), (inner));

   if (0)
     {
       if (((enum rtx_code) (pos)->code) == CONST_INT)
  pos = gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]) - len - (((pos)->fld[0]).rtwint)));

       else if (((enum rtx_code) (pos)->code) == MINUS
         && ((enum rtx_code) ((((pos)->fld[1]).rtx))->code) == CONST_INT
         && (((((((pos)->fld[1]).rtx))->fld[0]).rtwint)
      == (mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]) - len))

  pos = (((pos)->fld[0]).rtx);
       else
  pos = gen_binary (MINUS, ((enum machine_mode) (pos)->mode),
      gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_bitsize[(int) (((enum machine_mode) (inner)->mode))]) - len)),

      pos);
     }
 }



      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG

        && nonzero_sign_valid
        && ((((mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4))
     == (((mode_size[(int) (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode))])
   + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4))))
 {
   x = gen_rtx_fmt_ee (SET, (VOIDmode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)), (gen_lowpart_for_combine (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode), (((x)->fld[1]).rtx))));



   continue;
 }
      else
 break;

      while (((enum rtx_code) (inner)->code) == SUBREG && subreg_lowpart_p (inner))
 inner = (((inner)->fld[0]).rtx);

      compute_mode = ((enum machine_mode) (inner)->mode);


      if (! ((mode_class[(int) (compute_mode)]) == MODE_INT || (mode_class[(int) (compute_mode)]) == MODE_PARTIAL_INT))
 {
   enum machine_mode imode;


   if (! ((mode_class[(int) (compute_mode)]) == MODE_FLOAT || (mode_class[(int) (compute_mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (compute_mode)]) == MODE_VECTOR_FLOAT))
     break;


   imode = mode_for_size ((mode_bitsize[(int) (compute_mode)]), MODE_INT, 0);
   if (imode == BLKmode)
     break;

   compute_mode = imode;
   inner = gen_lowpart_for_combine (imode, inner);
 }


      if (len < (8 * 8))
 mask = gen_rtx_CONST_INT (VOIDmode, (long long) (((long long) 1 << len) - 1));
      else
 break;




      x = gen_rtx_fmt_ee (SET, (VOIDmode), (copy_rtx (inner)), (gen_binary (IOR, compute_mode, gen_binary (AND, compute_mode, simplify_gen_unary (NOT, compute_mode, gen_binary (ASHIFT, compute_mode, mask, pos), compute_mode), inner), gen_binary (ASHIFT, compute_mode, gen_binary (AND, compute_mode, gen_lowpart_for_combine (compute_mode, (((x)->fld[1]).rtx)), mask), pos))));
# 6039 "../../../kg++fe/gnu/combine.c"
    }

  return x;
}
# 6071 "../../../kg++fe/gnu/combine.c"
static rtx
make_extraction (mode, inner, pos, pos_rtx, len,
   unsignedp, in_dest, in_compare)
     enum machine_mode mode;
     rtx inner;
     long long pos;
     rtx pos_rtx;
     unsigned long long len;
     int unsignedp;
     int in_dest, in_compare;
{



  enum machine_mode is_mode = ((enum machine_mode) (inner)->mode);
  enum machine_mode inner_mode;
  enum machine_mode wanted_inner_mode = byte_mode;
  enum machine_mode wanted_inner_reg_mode = word_mode;
  enum machine_mode pos_mode = word_mode;
  enum machine_mode extraction_mode = word_mode;
  enum machine_mode tmode = mode_for_size (len, MODE_INT, 1);
  int spans_byte = 0;
  rtx new = 0;
  rtx orig_pos_rtx = pos_rtx;
  long long orig_pos;


  if (((enum rtx_code) (inner)->code) == USE)



    spans_byte = 1, inner = (((inner)->fld[0]).rtx);
  else if (((enum rtx_code) (inner)->code) == SUBREG && subreg_lowpart_p (inner))
    {





      if (((enum rtx_code) ((((inner)->fld[0]).rtx))->code) == MEM)
 is_mode = ((enum machine_mode) ((((inner)->fld[0]).rtx))->mode);
      inner = (((inner)->fld[0]).rtx);
    }
  else if (((enum rtx_code) (inner)->code) == ASHIFT
    && ((enum rtx_code) ((((inner)->fld[1]).rtx))->code) == CONST_INT
    && pos_rtx == 0 && pos == 0
    && len > (unsigned long long) ((((((inner)->fld[1]).rtx))->fld[0]).rtwint))
    {




      new = make_extraction (mode, (((inner)->fld[0]).rtx),
        0, 0, len - ((((((inner)->fld[1]).rtx))->fld[0]).rtwint),
        unsignedp, in_dest, in_compare);
      if (new != 0)
 return gen_rtx_fmt_ee (ASHIFT, (mode), (new), ((((inner)->fld[1]).rtx)));
    }

  inner_mode = ((enum machine_mode) (inner)->mode);

  if (pos_rtx && ((enum rtx_code) (pos_rtx)->code) == CONST_INT)
    pos = (((pos_rtx)->fld[0]).rtwint), pos_rtx = 0;
# 6148 "../../../kg++fe/gnu/combine.c"
  if (tmode != BLKmode
      && ! (spans_byte && inner_mode != tmode)
      && ((pos_rtx == 0 && (pos % (8 * ((target_flags & 0x00002000) ? 8 : 4))) == 0
    && ((enum rtx_code) (inner)->code) != MEM
    && (! in_dest
        || (((enum rtx_code) (inner)->code) == REG
     && have_insn_for (STRICT_LOW_PART, tmode))))
   || (((enum rtx_code) (inner)->code) == MEM && pos_rtx == 0
       && (pos
    % (1 ? get_mode_alignment (tmode)
       : 8)) == 0


       && (mode_bitsize[(int) (inner_mode)]) >= (mode_bitsize[(int) (tmode)])
       && (inner_mode == tmode
    || (! mode_dependent_address_p ((((inner)->fld[0]).rtx))
        && ! (((inner))->volatil))))))
    {







      if (((enum rtx_code) (inner)->code) == MEM)
 {
   long long offset;


   if (((target_flags & 0x00010000) != 0))
     offset = ((mode_bitsize[(int) (is_mode)]) - len - pos) / 8;
   else
     offset = pos / 8;

   new = adjust_address_1 (inner, tmode, offset, 0, 1);
 }
      else if (((enum rtx_code) (inner)->code) == REG)
 {


   if (tmode != inner_mode)
     {
       long long final_word = pos / (8 * ((target_flags & 0x00002000) ? 8 : 4));

       if (((target_flags & 0x00010000) != 0)
    && (mode_size[(int) (inner_mode)]) > ((target_flags & 0x00002000) ? 8 : 4))
  final_word = (((mode_size[(int) (inner_mode)])
          - (mode_size[(int) (tmode)]))
         / ((target_flags & 0x00002000) ? 8 : 4)) - final_word;

       final_word *= ((target_flags & 0x00002000) ? 8 : 4);
       if (((target_flags & 0x00010000) != 0) &&
    (mode_size[(int) (inner_mode)]) > (mode_size[(int) (tmode)]))
  final_word += ((mode_size[(int) (inner_mode)])
          - (mode_size[(int) (tmode)])) % ((target_flags & 0x00002000) ? 8 : 4);



       if (final_word >= (mode_size[(int) (inner_mode)]))
  return (rtx) 0;

       new = gen_rtx_SUBREG (tmode, inner, final_word);
     }
   else
     new = inner;
 }
      else
 new = force_to_mode (inner, tmode,
        len >= (8 * 8)
        ? ~(unsigned long long) 0
        : ((unsigned long long) 1 << len) - 1,
        (rtx) 0, 0);




      if (in_dest)
 return (((enum rtx_code) (new)->code) == MEM ? new
  : (((enum rtx_code) (new)->code) != SUBREG
     ? gen_rtx_fmt_e (CLOBBER, (tmode), ((const_int_rtx[64])))
     : gen_rtx_fmt_e (STRICT_LOW_PART, (VOIDmode), (new))));

      if (mode == tmode)
 return new;

      if (((enum rtx_code) (new)->code) == CONST_INT)
 return gen_int_mode ((((new)->fld[0]).rtwint), mode);




      if (flag_expensive_optimizations
   && ((mode_bitsize[(int) (tmode)]) <= (8 * 8)
       && ((cached_nonzero_bits (new, tmode, (rtx) 0, VOIDmode, 0)
     & ~(((unsigned long long)
   mode_mask_array[(int) (tmode)])
         >> 1))
    == 0)))
 {
   rtx temp = gen_rtx_fmt_e (ZERO_EXTEND, (mode), (new));
   rtx temp1 = gen_rtx_fmt_e (SIGN_EXTEND, (mode), (new));



   if (rtx_cost (temp, SET) <= rtx_cost (temp1, SET))
     return temp;
   return temp1;
 }




      return (gen_rtx_fmt_e (unsignedp ? ZERO_EXTEND : SIGN_EXTEND,
        mode, new));
    }




  if (pos_rtx == 0 && pos == 0 && ! in_dest
      && ! in_compare && ! spans_byte && unsignedp)
    return 0;






  if (! spans_byte && ((enum rtx_code) (inner)->code) == MEM
      && ((pos_rtx == 0 && pos + len > (mode_bitsize[(int) (is_mode)]))
   || (pos_rtx != 0 && len != 1)))
    return 0;



  if (in_dest && mode_for_extraction (EP_insv, -1) != MAX_MACHINE_MODE)
    {
      wanted_inner_reg_mode = mode_for_extraction (EP_insv, 0);
      pos_mode = mode_for_extraction (EP_insv, 2);
      extraction_mode = mode_for_extraction (EP_insv, 3);
    }

  if (! in_dest && unsignedp
      && mode_for_extraction (EP_extzv, -1) != MAX_MACHINE_MODE)
    {
      wanted_inner_reg_mode = mode_for_extraction (EP_extzv, 1);
      pos_mode = mode_for_extraction (EP_extzv, 3);
      extraction_mode = mode_for_extraction (EP_extzv, 0);
    }

  if (! in_dest && ! unsignedp
      && mode_for_extraction (EP_extv, -1) != MAX_MACHINE_MODE)
    {
      wanted_inner_reg_mode = mode_for_extraction (EP_extv, 1);
      pos_mode = mode_for_extraction (EP_extv, 3);
      extraction_mode = mode_for_extraction (EP_extv, 0);
    }



  if (mode != VOIDmode
      && (mode_size[(int) (extraction_mode)]) < (mode_size[(int) (mode)]))
    extraction_mode = mode;

  if (pos_rtx && ((enum machine_mode) (pos_rtx)->mode) != VOIDmode
      && (mode_size[(int) (pos_mode)]) < (mode_size[(int) (((enum machine_mode) (pos_rtx)->mode))]))
    pos_mode = ((enum machine_mode) (pos_rtx)->mode);




  if (((enum rtx_code) (inner)->code) != MEM)
    wanted_inner_mode = wanted_inner_reg_mode;
  else if (inner_mode != wanted_inner_mode
    && (mode_dependent_address_p ((((inner)->fld[0]).rtx))
        || (((inner))->volatil)))
    wanted_inner_mode = extraction_mode;

  orig_pos = pos;

  if (0)
    {







      int width = (((enum rtx_code) (inner)->code) == MEM
     ? (mode_bitsize[(int) (is_mode)])
     : (mode_bitsize[(int) (wanted_inner_mode)]));

      if (pos_rtx == 0)
 pos = width - len - pos;
      else
 pos_rtx
   = gen_rtx_fmt_ee (MINUS, (((enum machine_mode) (pos_rtx)->mode)), (gen_rtx_CONST_INT (VOIDmode, (long long) (width - len))), (pos_rtx));


    }




  if (wanted_inner_mode != VOIDmode
      && (mode_size[(int) (wanted_inner_mode)]) < (mode_size[(int) (is_mode)])
      && ((((enum rtx_code) (inner)->code) == MEM
    && (inner_mode == wanted_inner_mode
        || (! mode_dependent_address_p ((((inner)->fld[0]).rtx))
     && ! (((inner))->volatil))))))
    {
      int offset = 0;







      if (((target_flags & 0x00010000) != 0)
   && ! spans_byte
   && (mode_size[(int) (inner_mode)]) < (mode_size[(int) (is_mode)]))
 offset -= (mode_size[(int) (is_mode)]) - (mode_size[(int) (inner_mode)]);


      if (pos_rtx == 0)
 {
   offset += pos / 8;
   pos %= (mode_bitsize[(int) (wanted_inner_mode)]);
 }

      if (((target_flags & 0x00010000) != 0) != 0
   && ! spans_byte
   && is_mode != wanted_inner_mode)
 offset = ((mode_size[(int) (is_mode)])
    - (mode_size[(int) (wanted_inner_mode)]) - offset);

      if (offset != 0 || inner_mode != wanted_inner_mode)
 inner = adjust_address_1 (inner, wanted_inner_mode, offset, 0, 1);
    }




  else if (((enum rtx_code) (inner)->code) != MEM)
    {
      if (((enum machine_mode) (inner)->mode) != wanted_inner_mode
   && (pos_rtx != 0
       || orig_pos + len > (mode_bitsize[(int) (wanted_inner_mode)])))
 return 0;

      inner = force_to_mode (inner, wanted_inner_mode,
        pos_rtx
        || len + orig_pos >= (8 * 8)
        ? ~(unsigned long long) 0
        : ((((unsigned long long) 1 << len) - 1)
    << orig_pos),
        (rtx) 0, 0);
    }



  if (pos_rtx != 0
      && (mode_size[(int) (pos_mode)]) > (mode_size[(int) (((enum machine_mode) (pos_rtx)->mode))]))
    {
      rtx temp = gen_rtx_fmt_e (ZERO_EXTEND, (pos_mode), (pos_rtx));





      if (flag_expensive_optimizations
   && ((mode_bitsize[(int) (((enum machine_mode) (pos_rtx)->mode))]) <= (8 * 8)
       && ((cached_nonzero_bits (pos_rtx, ((enum machine_mode) (pos_rtx)->mode), (rtx) 0, VOIDmode, 0)
     & ~(((unsigned long long)
   mode_mask_array[(int) (((enum machine_mode) (pos_rtx)->mode))])
         >> 1))
    == 0)))
 {
   rtx temp1 = gen_rtx_fmt_e (SIGN_EXTEND, (pos_mode), (pos_rtx));



   if (rtx_cost (temp1, SET) < rtx_cost (temp, SET))
     temp = temp1;
 }
      pos_rtx = temp;
    }
  else if (pos_rtx != 0
    && (mode_size[(int) (pos_mode)]) < (mode_size[(int) (((enum machine_mode) (pos_rtx)->mode))]))
    pos_rtx = gen_lowpart_for_combine (pos_mode, pos_rtx);




  if (pos_rtx == 0 && orig_pos_rtx != 0 && (((orig_pos_rtx)->fld[0]).rtwint) == pos)
    pos_rtx = orig_pos_rtx;

  else if (pos_rtx == 0)
    pos_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (pos));


  new = gen_rtx_fmt_eee (unsignedp ? ZERO_EXTRACT : SIGN_EXTRACT,
    extraction_mode, inner, gen_rtx_CONST_INT (VOIDmode, (long long) (len)), pos_rtx);
  if (! in_dest)
    new = gen_lowpart_for_combine (mode, new);

  return new;
}




static rtx
extract_left_shift (x, count)
     rtx x;
     int count;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx tem;

  switch (code)
    {
    case ASHIFT:



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= count)
 return simplify_shift_const ((rtx) 0, ASHIFT, mode, (((x)->fld[0]).rtx),
         ((((((x)->fld[1]).rtx))->fld[0]).rtwint) - count);
      break;

    case NEG: case NOT:
      if ((tem = extract_left_shift ((((x)->fld[0]).rtx), count)) != 0)
 return simplify_gen_unary (code, mode, tem, mode);

      break;

    case PLUS: case IOR: case XOR: case AND:


      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && (((((((x)->fld[1]).rtx))->fld[0]).rtwint) & ((((long long) 1 << count)) - 1)) == 0
   && (tem = extract_left_shift ((((x)->fld[0]).rtx), count)) != 0)
 return gen_binary (code, mode, tem,
      gen_rtx_CONST_INT (VOIDmode, (long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) >> count)));

      break;

    default:
      break;
    }

  return 0;
}
# 6526 "../../../kg++fe/gnu/combine.c"
static rtx
make_compound_operation (x, in_code)
     rtx x;
     enum rtx_code in_code;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  int mode_width = (mode_bitsize[(int) (mode)]);
  rtx rhs, lhs;
  enum rtx_code next_code;
  int i;
  rtx new = 0;
  rtx tem;
  const char *fmt;





  next_code = (code == MEM || code == PLUS || code == MINUS ? MEM
        : ((code == COMPARE || (rtx_class[(int) (code)]) == '<')
    && (((x)->fld[1]).rtx) == (const_int_rtx[64])) ? COMPARE
        : in_code == COMPARE ? SET : in_code);




  switch (code)
    {
    case ASHIFT:


      if (in_code == MEM && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0)
 {
   new = make_compound_operation ((((x)->fld[0]).rtx), next_code);
   new = gen_rtx_fmt_ee (MULT, (mode), (new), (gen_rtx_CONST_INT (VOIDmode, (long long) ((long long) 1 << ((((((x)->fld[1]).rtx))->fld[0]).rtwint)))));


 }
      break;

    case AND:


      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) != CONST_INT)
 break;



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
   && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 1))) >= 0)
 {
   new = make_compound_operation (((((((x)->fld[0]).rtx))->fld[0]).rtx), next_code);
   new = make_extraction (mode, new, 0, ((((((x)->fld[0]).rtx))->fld[1]).rtx), i, 1,
     0, in_code == COMPARE);
 }


      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
        && subreg_lowpart_p ((((x)->fld[0]).rtx))
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == LSHIFTRT
        && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 1))) >= 0)
 {
   new = make_compound_operation ((((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx),
      next_code);
   new = make_extraction (((enum machine_mode) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->mode), new, 0,
     (((((((((x)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx), i, 1,
     0, in_code == COMPARE);
 }

      else if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == XOR
  || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == IOR)
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == LSHIFTRT
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == LSHIFTRT
        && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 1))) >= 0)
 {

   new = gen_rtx_fmt_ee (((enum rtx_code) ((((x)->fld[0]).rtx))->code), mode,
    gen_rtx_fmt_ee (AND, (mode), (((((((x)->fld[0]).rtx))->fld[0]).rtx)), ((((x)->fld[1]).rtx))),

    gen_rtx_fmt_ee (AND, (mode), (((((((x)->fld[0]).rtx))->fld[1]).rtx)), ((((x)->fld[1]).rtx))));

   new = make_compound_operation (new, in_code);
 }




      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ROTATE
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
        && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 1))) >= 0
        && i <= (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint))
 {
   new = make_compound_operation (((((((x)->fld[0]).rtx))->fld[0]).rtx), next_code);
   new = make_extraction (mode, new,
     ((mode_bitsize[(int) (mode)])
      - (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)),
     (rtx) 0, i, 1, 0, in_code == COMPARE);
 }




      else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
        && !have_insn_for (LSHIFTRT, mode)
        && have_insn_for (ASHIFTRT, mode)
        && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
        && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) >= 0
        && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
        && mode_width <= (8 * 8))
 {
   unsigned long long mask = mode_mask_array[(int) (mode)];

   mask >>= (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
   if ((((((((x)->fld[1]).rtx))->fld[0]).rtwint) & ~mask) == 0)
     do_SUBST(&((((x)->fld[0]).rtx)), (gen_rtx_fmt_ee (ASHIFTRT, (mode), (make_compound_operation (((((((x)->fld[0]).rtx))->fld[0]).rtx), next_code)), (((((((x)->fld[0]).rtx))->fld[1]).rtx)))));




 }





      else if ((i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + 1))) >= 0)
 new = make_extraction (mode,
          make_compound_operation ((((x)->fld[0]).rtx),
       next_code),
          0, (rtx) 0, i, 1, 0, in_code == COMPARE);



      else if (in_code == COMPARE
        && (i = exact_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint)))) >= 0)
 new = make_extraction (mode,
          make_compound_operation ((((x)->fld[0]).rtx),
       next_code),
          i, (rtx) 0, 1, 1, 0, 1);

      break;

    case LSHIFTRT:


      if (have_insn_for (ASHIFTRT, mode)
   && ! have_insn_for (LSHIFTRT, mode)
   && mode_width <= (8 * 8)
   && (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) & (1 << (mode_width - 1))) == 0)
 {
   new = gen_rtx_fmt_ee (ASHIFTRT, (mode), (make_compound_operation ((((x)->fld[0]).rtx), next_code)), ((((x)->fld[1]).rtx)));



   break;
 }



    case ASHIFTRT:
      lhs = (((x)->fld[0]).rtx);
      rhs = (((x)->fld[1]).rtx);



      if (((enum rtx_code) (rhs)->code) == CONST_INT
   && ((enum rtx_code) (lhs)->code) == ASHIFT
   && ((enum rtx_code) ((((lhs)->fld[1]).rtx))->code) == CONST_INT
   && (((rhs)->fld[0]).rtwint) >= ((((((lhs)->fld[1]).rtx))->fld[0]).rtwint))
 {
   new = make_compound_operation ((((lhs)->fld[0]).rtx), next_code);
   new = make_extraction (mode, new,
     (((rhs)->fld[0]).rtwint) - ((((((lhs)->fld[1]).rtx))->fld[0]).rtwint),
     (rtx) 0, mode_width - (((rhs)->fld[0]).rtwint),
     code == LSHIFTRT, 0, in_code == COMPARE);
   break;
 }






      if ((rtx_class[(int) (((enum rtx_code) (lhs)->code))]) != 'o'
   && ! (((enum rtx_code) (lhs)->code) == SUBREG
  && ((rtx_class[(int) (((enum rtx_code) ((((lhs)->fld[0]).rtx))->code))]) == 'o'))
   && ((enum rtx_code) (rhs)->code) == CONST_INT
   && (((rhs)->fld[0]).rtwint) < (8 * 8)
   && (new = extract_left_shift (lhs, (((rhs)->fld[0]).rtwint))) != 0)
 new = make_extraction (mode, make_compound_operation (new, next_code),
          0, (rtx) 0, mode_width - (((rhs)->fld[0]).rtwint),
          code == LSHIFTRT, 0, in_code == COMPARE);

      break;

    case SUBREG:




      tem = make_compound_operation ((((x)->fld[0]).rtx), in_code);
      if (((enum rtx_code) (tem)->code) != ((enum rtx_code) ((((x)->fld[0]).rtx))->code)
   && (mode_size[(int) (mode)]) < (mode_size[(int) (((enum machine_mode) (tem)->mode))])
   && subreg_lowpart_p (x))
 {
   rtx newer = force_to_mode (tem, mode, ~(long long) 0,
         (rtx) 0, 0);



   if (((enum rtx_code) (newer)->code) != SUBREG)
     newer = make_compound_operation (newer, in_code);

   return newer;
 }





      if ((((enum rtx_code) (tem)->code) == SIGN_EXTEND
    || ((enum rtx_code) (tem)->code) == ZERO_EXTEND)
   && subreg_lowpart_p (x))
 {
   if ((mode_size[(int) (mode)]) > (mode_size[(int) (((enum machine_mode) (tem)->mode))])
       || ((mode_size[(int) (mode)]) >
    (mode_size[(int) (((enum machine_mode) ((((tem)->fld[0]).rtx))->mode))])))
     {
       if (! ((mode_class[(int) (mode)]) == MODE_INT || (mode_class[(int) (mode)]) == MODE_PARTIAL_INT))
  break;
       tem = gen_rtx_fmt_e (((enum rtx_code) (tem)->code), mode, (((tem)->fld[0]).rtx));
     }
   else
     tem = gen_lowpart_for_combine (mode, (((tem)->fld[0]).rtx));
   return tem;
 }
      break;

    default:
      break;
    }

  if (new)
    {
      x = gen_lowpart_for_combine (mode, new);
      code = ((enum rtx_code) (x)->code);
    }


  fmt = (rtx_format[(int) (code)]);
  for (i = 0; i < (rtx_length[(int) (code)]); i++)
    if (fmt[i] == 'e')
      {
 new = make_compound_operation ((((x)->fld[i]).rtx), next_code);
 do_SUBST(&((((x)->fld[i]).rtx)), (new));
      }

  return x;
}
# 6796 "../../../kg++fe/gnu/combine.c"
static int
get_pos_from_mask (m, plen)
     unsigned long long m;
     unsigned long long *plen;
{

  int pos = exact_log2_wide ((unsigned long long) (m & -m));
  int len;

  if (pos < 0)
    return -1;



  len = exact_log2_wide ((unsigned long long) ((m >> pos) + 1));

  if (len <= 0)
    return -1;

  *plen = len;
  return pos;
}
# 6835 "../../../kg++fe/gnu/combine.c"
static rtx
force_to_mode (x, mode, mask, reg, just_select)
     rtx x;
     enum machine_mode mode;
     unsigned long long mask;
     rtx reg;
     int just_select;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  int next_select = just_select || code == XOR || code == NOT || code == NEG;
  enum machine_mode op_mode;
  unsigned long long fuller_mask, nonzero;
  rtx op0, op1, temp;







  if (code == CALL || code == ASM_OPERANDS || code == CLOBBER)
    return x;




  op_mode = (((mode_class[(int) (mode)]) == (mode_class[(int) (((enum machine_mode) (x)->mode))])
       && have_insn_for (code, mode))
      ? mode : ((enum machine_mode) (x)->mode));



  if ((code == LSHIFTRT || code == ASHIFTRT)
      && (mode_bitsize[(int) (mode)]) < (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
    op_mode = ((enum machine_mode) (x)->mode);


  if (op_mode)
    mask &= mode_mask_array[(int) (op_mode)];




  if (op_mode)
    fuller_mask = ((mode_bitsize[(int) (op_mode)]) >= (8 * 8)
     ? mode_mask_array[(int) (op_mode)]
     : (((unsigned long long) 1 << (floor_log2_wide ((unsigned long long) (mask)) + 1))
        - 1));
  else
    fuller_mask = ~(long long) 0;


  nonzero = cached_nonzero_bits (x, mode, (rtx) 0, VOIDmode, 0);


  if (! just_select && (nonzero & mask) == 0)
    x = (const_int_rtx[64]);



  if (((enum rtx_code) (x)->code) == CONST_INT)
    {
      if (((mode_class[(int) (mode)]) == MODE_INT || (mode_class[(int) (mode)]) == MODE_PARTIAL_INT))
        return gen_int_mode ((((x)->fld[0]).rtwint) & mask, mode);
      else
 {
   x = gen_rtx_CONST_INT (VOIDmode, (long long) ((((x)->fld[0]).rtwint) & mask));
   return gen_lowpart_common (mode, x);
 }
    }



  if ((mode_size[(int) (((enum machine_mode) (x)->mode))]) < (mode_size[(int) (mode)])
      && (mode_mask_array[(int) (((enum machine_mode) (x)->mode))] & ~mask) == 0)
    return gen_lowpart_for_combine (mode, x);



  if (((enum machine_mode) (x)->mode) == mode && code != SUBREG && (~mask & nonzero) == 0)
    return x;

  switch (code)
    {
    case CLOBBER:


      return x;

    case USE:



      if (! 0
   && (mask & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) == 0)
 return force_to_mode ((((x)->fld[0]).rtx), mode, mask, reg, next_select);
      break;

    case SIGN_EXTEND:
    case ZERO_EXTEND:
    case ZERO_EXTRACT:
    case SIGN_EXTRACT:
      x = expand_compound_operation (x);
      if (((enum rtx_code) (x)->code) != code)
 return force_to_mode (x, mode, mask, reg, next_select);
      break;

    case REG:
      if (reg != 0 && (rtx_equal_p (get_last_value (reg), x)
         || rtx_equal_p (reg, get_last_value (x))))
 x = reg;
      break;

    case SUBREG:
      if (subreg_lowpart_p (x)



   && (((mode_size[(int) (((enum machine_mode) (x)->mode))])
        < (mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
       || (0 == (mask
   & mode_mask_array[(int) (((enum machine_mode) (x)->mode))]
   & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))))
 return force_to_mode ((((x)->fld[0]).rtx), mode, mask, reg, next_select);
      break;

    case AND:




      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT)
 {
   x = simplify_and_const_int (x, op_mode, (((x)->fld[0]).rtx),
          mask & ((((((x)->fld[1]).rtx))->fld[0]).rtwint));





   if (((enum rtx_code) (x)->code) == AND && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
       && ((((((((x)->fld[1]).rtx))->fld[0]).rtwint) & mode_mask_array[(int) (((enum machine_mode) (x)->mode))])
    == mask))
     x = (((x)->fld[0]).rtx);






   if (((enum rtx_code) (x)->code) == AND && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
       && mode_mask_array[(int) (((enum machine_mode) (x)->mode))] != mask
       && (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8))
     {
       long long cval = (((((((x)->fld[1]).rtx))->fld[0]).rtwint)
        | (mode_mask_array[(int) (((enum machine_mode) (x)->mode))] & ~mask));
       int width = (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]);
       rtx y;



       if (width > 0 && width < (8 * 8)
    && (cval & ((long long) 1 << (width - 1))) != 0)
  cval |= (long long) -1 << width;

       y = gen_binary (AND, ((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx), gen_rtx_CONST_INT (VOIDmode, (long long) (cval)));
       if (rtx_cost (y, SET) < rtx_cost (x, SET))
  x = y;
     }

   break;
 }

      goto binop;

    case PLUS:





      {
 unsigned int width = (mode_bitsize[(int) (mode)]);
 unsigned long long smask = mask;




 if (width < (8 * 8)
     && (smask & ((long long) 1 << (width - 1))) != 0)
   smask |= (long long) -1 << width;

 if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
     && exact_log2_wide ((unsigned long long) (- smask)) >= 0
     && (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) & ~smask) == 0
     && (((((((x)->fld[1]).rtx))->fld[0]).rtwint) & ~smask) != 0)
   return force_to_mode (plus_constant_wide (((((x)->fld[0]).rtx)), (long long) ((((((((x)->fld[1]).rtx))->fld[0]).rtwint) & smask))),

    mode, smask, reg, next_select);
      }



    case MULT:



      mask = fuller_mask;
      goto binop;

    case MINUS:


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT
   && (((unsigned long long) (((((((x)->fld[0]).rtx))->fld[0]).rtwint)
     & -((((((x)->fld[0]).rtx))->fld[0]).rtwint)))
       > mask))
 {
   x = simplify_gen_unary (NEG, ((enum machine_mode) (x)->mode), (((x)->fld[1]).rtx),
      ((enum machine_mode) (x)->mode));
   return force_to_mode (x, mode, mask, reg, next_select);
 }



      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CONST_INT
   && ((((((((x)->fld[0]).rtx))->fld[0]).rtwint) | (long long) fuller_mask)
       == ((((((x)->fld[0]).rtx))->fld[0]).rtwint)))
 {
   x = simplify_gen_unary (NOT, ((enum machine_mode) (x)->mode),
      (((x)->fld[1]).rtx), ((enum machine_mode) (x)->mode));
   return force_to_mode (x, mode, mask, reg, next_select);
 }

      mask = fuller_mask;
      goto binop;

    case IOR:
    case XOR:





      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && (((((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
        + floor_log2_wide ((unsigned long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint))))
       < (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
   && (((((((x)->fld[1]).rtx))->fld[0]).rtwint)
       & ~cached_nonzero_bits ((((x)->fld[0]).rtx), ((enum machine_mode) (x)->mode), (rtx) 0, VOIDmode, 0)) == 0)
 {
   temp = gen_rtx_CONST_INT (VOIDmode, (long long) ((((((((x)->fld[1]).rtx))->fld[0]).rtwint) & mask) << (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)));

   temp = gen_binary (((enum rtx_code) (x)->code), ((enum machine_mode) (x)->mode),
        ((((((x)->fld[0]).rtx))->fld[0]).rtx), temp);
   x = gen_binary (LSHIFTRT, ((enum machine_mode) (x)->mode), temp,
     ((((((x)->fld[0]).rtx))->fld[1]).rtx));
   return force_to_mode (x, mode, mask, reg, next_select);
 }

    binop:



      op0 = gen_lowpart_for_combine (op_mode,
         force_to_mode ((((x)->fld[0]).rtx), mode, mask,
          reg, next_select));
      op1 = gen_lowpart_for_combine (op_mode,
         force_to_mode ((((x)->fld[1]).rtx), mode, mask,
          reg, next_select));

      if (op_mode != ((enum machine_mode) (x)->mode) || op0 != (((x)->fld[0]).rtx) || op1 != (((x)->fld[1]).rtx))
 x = gen_binary (code, op_mode, op0, op1);
      break;

    case ASHIFT:






      if (! (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
      && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
      && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (mode_bitsize[(int) (mode)]))
   && ! (((enum machine_mode) ((((x)->fld[1]).rtx))->mode) != VOIDmode
  && (cached_nonzero_bits ((((x)->fld[1]).rtx), ((enum machine_mode) ((((x)->fld[1]).rtx))->mode), (rtx) 0, VOIDmode, 0)
      < (unsigned long long) (mode_bitsize[(int) (mode)]))))
 break;




      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (mode_bitsize[(int) (op_mode)])
   && (mode_bitsize[(int) (op_mode)]) <= (8 * 8))
 mask >>= ((((((x)->fld[1]).rtx))->fld[0]).rtwint);
      else
 mask = fuller_mask;

      op0 = gen_lowpart_for_combine (op_mode,
         force_to_mode ((((x)->fld[0]).rtx), op_mode,
          mask, reg, next_select));

      if (op_mode != ((enum machine_mode) (x)->mode) || op0 != (((x)->fld[0]).rtx))
 x = gen_binary (code, op_mode, op0, (((x)->fld[1]).rtx));
      break;

    case LSHIFTRT:




      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
   && (mode_bitsize[(int) (op_mode)]) <= (8 * 8))
 {
   rtx inner = (((x)->fld[0]).rtx);
   unsigned long long inner_mask;


   inner_mask = mask << ((((((x)->fld[1]).rtx))->fld[0]).rtwint);




   if ((mode_bitsize[(int) (op_mode)]) > (8 * 8)
       || (inner_mask & ~mode_mask_array[(int) (op_mode)]) != 0)
     op_mode = ((enum machine_mode) (x)->mode);

   inner = force_to_mode (inner, op_mode, inner_mask, reg, next_select);

   if (((enum machine_mode) (x)->mode) != op_mode || inner != (((x)->fld[0]).rtx))
     x = gen_binary (LSHIFTRT, op_mode, inner, (((x)->fld[1]).rtx));
 }





      if (((enum rtx_code) (x)->code) == LSHIFTRT
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT


   && ((((((((x)->fld[1]).rtx))->fld[0]).rtwint)
        + cached_num_sign_bit_copies ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0))
       >= (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
   && exact_log2_wide ((unsigned long long) (mask + 1)) >= 0


   && ((((((((x)->fld[1]).rtx))->fld[0]).rtwint) + exact_log2_wide ((unsigned long long) (mask + 1)))
       <= (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))

   && ((int) cached_num_sign_bit_copies ((((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)
       >= exact_log2_wide ((unsigned long long) (mask + 1))))
 x = gen_binary (LSHIFTRT, ((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx),
   gen_rtx_CONST_INT (VOIDmode, (long long) ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - exact_log2_wide ((unsigned long long) (mask + 1)))));


      goto shiftrt;

    case ASHIFTRT:


      if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) <= (8 * 8)
   && (mask == ((unsigned long long) 1
         << ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - 1))))
 return force_to_mode ((((x)->fld[0]).rtx), mode, mask, reg, next_select);
# 7216 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
 {
   int i = -1;





   if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) > (8 * 8))
     {
       nonzero = ~(long long) 0;






       if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - ((((((x)->fld[1]).rtx))->fld[0]).rtwint)
    < (8 * 8))
  nonzero >>= ((((((x)->fld[1]).rtx))->fld[0]).rtwint)
       + (8 * 8)
       - (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) ;
     }
   else
     {
       nonzero = mode_mask_array[(int) (((enum machine_mode) (x)->mode))];
       nonzero >>= ((((((x)->fld[1]).rtx))->fld[0]).rtwint);
     }

   if ((mask & ~nonzero) == 0
       || (i = exact_log2_wide ((unsigned long long) (mask))) >= 0)
     {
       x = simplify_shift_const
  (x, LSHIFTRT, ((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx),
   i < 0 ? ((((((x)->fld[1]).rtx))->fld[0]).rtwint)
   : (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - 1 - i);

       if (((enum rtx_code) (x)->code) != ASHIFTRT)
  return force_to_mode (x, mode, mask, reg, next_select);
     }
 }



      if (mask == 1)
 x = gen_binary (LSHIFTRT, ((enum machine_mode) (x)->mode), (((x)->fld[0]).rtx), (((x)->fld[1]).rtx));

    shiftrt:





      if ((((enum rtx_code) (x)->code) == LSHIFTRT || ((enum rtx_code) (x)->code) == ASHIFTRT)
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && (((((((x)->fld[1]).rtx))->fld[0]).rtwint)
       <= (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - (floor_log2_wide ((unsigned long long) (mask)) + 1))
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == ASHIFT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) == ((((((x)->fld[1]).rtx))->fld[0]).rtwint))
 return force_to_mode (((((((x)->fld[0]).rtx))->fld[0]).rtx), mode, mask,
         reg, next_select);

      break;

    case ROTATE:
    case ROTATERT:




      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0)
 {
   temp = simplify_binary_operation (code == ROTATE ? ROTATERT : ROTATE,
         ((enum machine_mode) (x)->mode), gen_rtx_CONST_INT (VOIDmode, (long long) (mask)),
         (((x)->fld[1]).rtx));
   if (temp && ((enum rtx_code) (temp)->code) == CONST_INT)
     do_SUBST(&((((x)->fld[0]).rtx)), (force_to_mode ((((x)->fld[0]).rtx), ((enum machine_mode) (x)->mode), (((temp)->fld[0]).rtwint), reg, next_select)));


 }
      break;

    case NEG:


      if (mask == 1)
 return force_to_mode ((((x)->fld[0]).rtx), mode, mask, reg, just_select);




      mask = fuller_mask;
      goto unop;

    case NOT:




      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == LSHIFTRT
   && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) + floor_log2_wide ((unsigned long long) (mask))
       < (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
   && (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
 {
   temp = gen_int_mode (mask << (((((((((x)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint),
          ((enum machine_mode) (x)->mode));
   temp = gen_binary (XOR, ((enum machine_mode) (x)->mode), ((((((x)->fld[0]).rtx))->fld[0]).rtx), temp);
   x = gen_binary (LSHIFTRT, ((enum machine_mode) (x)->mode), temp, ((((((x)->fld[0]).rtx))->fld[1]).rtx));

   return force_to_mode (x, mode, mask, reg, next_select);
 }



      mask = fuller_mask;

    unop:
      op0 = gen_lowpart_for_combine (op_mode,
         force_to_mode ((((x)->fld[0]).rtx), mode, mask,
          reg, next_select));
      if (op_mode != ((enum machine_mode) (x)->mode) || op0 != (((x)->fld[0]).rtx))
 x = simplify_gen_unary (code, op_mode, op0, op_mode);
      break;

    case NE:



      if ((mask & ~1) == 0 && (((x)->fld[1]).rtx) == (const_int_rtx[64])
   && exact_log2_wide ((unsigned long long) (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0))) >= 0
   && cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) == 1)
 return force_to_mode ((((x)->fld[0]).rtx), mode, mask, reg, next_select);

      break;

    case IF_THEN_ELSE:



      do_SUBST(&((((x)->fld[1]).rtx)), (gen_lowpart_for_combine (((enum machine_mode) (x)->mode), force_to_mode ((((x)->fld[1]).rtx), mode, mask, reg, next_select))));



      do_SUBST(&((((x)->fld[2]).rtx)), (gen_lowpart_for_combine (((enum machine_mode) (x)->mode), force_to_mode ((((x)->fld[2]).rtx), mode, mask, reg,next_select))));



      break;

    default:
      break;
    }


  return gen_lowpart_for_combine (mode, x);
}
# 7386 "../../../kg++fe/gnu/combine.c"
static rtx
if_then_else_cond (x, ptrue, pfalse)
     rtx x;
     rtx *ptrue, *pfalse;
{
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  enum rtx_code code = ((enum rtx_code) (x)->code);
  rtx cond0, cond1, true0, true1, false0, false1;
  unsigned long long nz;


  if ((code == NE || code == EQ)
      && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) == 0)
    {
      *ptrue = (code == NE) ? const_true_rtx : (const_int_rtx[64]);
      *pfalse = (code == NE) ? (const_int_rtx[64]) : const_true_rtx;
      return (((x)->fld[0]).rtx);
    }



  else if ((rtx_class[(int) (code)]) == '1'
    && (cond0 = if_then_else_cond ((((x)->fld[0]).rtx), &true0, &false0)) != 0)
    {
      *ptrue = simplify_gen_unary (code, mode, true0, ((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
      *pfalse = simplify_gen_unary (code, mode, false0,
        ((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
      return cond0;
    }



  else if (code == COMPARE)
    ;




  else if ((rtx_class[(int) (code)]) == 'c' || (rtx_class[(int) (code)]) == '2'
    || (rtx_class[(int) (code)]) == '<')
    {
      cond0 = if_then_else_cond ((((x)->fld[0]).rtx), &true0, &false0);
      cond1 = if_then_else_cond ((((x)->fld[1]).rtx), &true1, &false1);

      if ((cond0 != 0 || cond1 != 0)
   && ! (cond0 != 0 && cond1 != 0 && ! rtx_equal_p (cond0, cond1)))
 {



   if (cond0 == 0)
     true0 = copy_rtx (true0);
   else if (cond1 == 0)
     true1 = copy_rtx (true1);

   *ptrue = gen_binary (code, mode, true0, true1);
   *pfalse = gen_binary (code, mode, false0, false1);
   return cond0 ? cond0 : cond1;
 }





      if ((1 == 1 || 1 == -1)
   && (code == PLUS || code == IOR || code == XOR || code == MINUS
       || code == UMAX)
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MULT && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == MULT)
 {
   rtx op0 = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
   rtx op1 = ((((((x)->fld[1]).rtx))->fld[1]).rtx);

   cond0 = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   cond1 = ((((((x)->fld[1]).rtx))->fld[0]).rtx);

   if ((rtx_class[(int) (((enum rtx_code) (cond0)->code))]) == '<'
       && (rtx_class[(int) (((enum rtx_code) (cond1)->code))]) == '<'
       && ((((enum rtx_code) (cond0)->code) == combine_reversed_comparison_code (cond1)
     && rtx_equal_p ((((cond0)->fld[0]).rtx), (((cond1)->fld[0]).rtx))
     && rtx_equal_p ((((cond0)->fld[1]).rtx), (((cond1)->fld[1]).rtx)))
    || ((swap_condition (((enum rtx_code) (cond0)->code))
         == combine_reversed_comparison_code (cond1))
        && rtx_equal_p ((((cond0)->fld[0]).rtx), (((cond1)->fld[1]).rtx))
        && rtx_equal_p ((((cond0)->fld[1]).rtx), (((cond1)->fld[0]).rtx))))
       && ! side_effects_p (x))
     {
       *ptrue = gen_binary (MULT, mode, op0, const_true_rtx);
       *pfalse = gen_binary (MULT, mode,
        (code == MINUS
         ? simplify_gen_unary (NEG, mode, op1,
          mode)
         : op1),
        const_true_rtx);
       return cond0;
     }
 }



      if ((1 == 1 || 1 == -1)
   && (code == MULT || code == AND || code == UMIN)
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MULT && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == MULT)
 {
   cond0 = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   cond1 = ((((((x)->fld[1]).rtx))->fld[0]).rtx);

   if ((rtx_class[(int) (((enum rtx_code) (cond0)->code))]) == '<'
       && (rtx_class[(int) (((enum rtx_code) (cond1)->code))]) == '<'
       && ((((enum rtx_code) (cond0)->code) == combine_reversed_comparison_code (cond1)
     && rtx_equal_p ((((cond0)->fld[0]).rtx), (((cond1)->fld[0]).rtx))
     && rtx_equal_p ((((cond0)->fld[1]).rtx), (((cond1)->fld[1]).rtx)))
    || ((swap_condition (((enum rtx_code) (cond0)->code))
         == combine_reversed_comparison_code (cond1))
        && rtx_equal_p ((((cond0)->fld[0]).rtx), (((cond1)->fld[1]).rtx))
        && rtx_equal_p ((((cond0)->fld[1]).rtx), (((cond1)->fld[0]).rtx))))
       && ! side_effects_p (x))
     {
       *ptrue = *pfalse = (const_int_rtx[64]);
       return cond0;
     }
 }
    }

  else if (code == IF_THEN_ELSE)
    {


      cond0 = (((x)->fld[0]).rtx);
      *ptrue = (((x)->fld[1]).rtx), *pfalse = (((x)->fld[2]).rtx);
      if (((enum rtx_code) (cond0)->code) == NE && (((cond0)->fld[1]).rtx) == (const_int_rtx[64]))
 return (((cond0)->fld[0]).rtx);
      else if (((enum rtx_code) (cond0)->code) == EQ && (((cond0)->fld[1]).rtx) == (const_int_rtx[64]))
 {
   *ptrue = (((x)->fld[2]).rtx), *pfalse = (((x)->fld[1]).rtx);
   return (((cond0)->fld[0]).rtx);
 }
      else
 return cond0;
    }



  else if (code == SUBREG
    && 0 != (cond0 = if_then_else_cond ((((x)->fld[0]).rtx),
            &true0, &false0)))
    {
      *ptrue = simplify_gen_subreg (mode, true0,
        ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (((x)->fld[1]).rtuint));
      *pfalse = simplify_gen_subreg (mode, false0,
         ((enum machine_mode) ((((x)->fld[0]).rtx))->mode), (((x)->fld[1]).rtuint));

      return cond0;
    }



  else if ((((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX)
    || ((cond0 = get_last_value (x)) != 0 && (((enum rtx_code) (cond0)->code) == LABEL_REF || ((enum rtx_code) (cond0)->code) == SYMBOL_REF || ((enum rtx_code) (cond0)->code) == CONST_INT || ((enum rtx_code) (cond0)->code) == CONST_DOUBLE || ((enum rtx_code) (cond0)->code) == CONST || ((enum rtx_code) (cond0)->code) == HIGH || ((enum rtx_code) (cond0)->code) == CONST_VECTOR || ((enum rtx_code) (cond0)->code) == CONSTANT_P_RTX)))
    ;



  else if (mode == BImode)
    {
      *ptrue = gen_rtx_CONST_INT (VOIDmode, (long long) (1)), *pfalse = (const_int_rtx[64]);
      return x;
    }



  else if (x == (const_int_rtx[64 -1]) || x == (const_int_rtx[64])
    || (mode != VOIDmode
        && cached_num_sign_bit_copies (x, mode, (rtx) 0, VOIDmode, 0) == (mode_bitsize[(int) (mode)])))
    {
      *ptrue = (const_int_rtx[64 -1]), *pfalse = (const_int_rtx[64]);
      return x;
    }


  else if (mode != VOIDmode
    && (mode_bitsize[(int) (mode)]) <= (8 * 8)
    && exact_log2_wide ((unsigned long long) (nz = cached_nonzero_bits (x, mode, (rtx) 0, VOIDmode, 0))) >= 0)
    {
      *ptrue = gen_int_mode (nz, mode), *pfalse = (const_int_rtx[64]);
      return x;
    }


  *ptrue = *pfalse = x;
  return 0;
}
# 7586 "../../../kg++fe/gnu/combine.c"
static rtx
known_cond (x, cond, reg, val)
     rtx x;
     enum rtx_code cond;
     rtx reg, val;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  rtx temp;
  const char *fmt;
  int i, j;

  if (side_effects_p (x))
    return x;



  if (cond == EQ
      && rtx_equal_p (x, reg)
      && ! ((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_VECTOR_FLOAT)
      && ! ((mode_class[(int) (((enum machine_mode) (val)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (val)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (val)->mode))]) == MODE_VECTOR_FLOAT))
    return val;

  if (cond == UNEQ && rtx_equal_p (x, reg))
    return val;




  if (code == ABS && rtx_equal_p ((((x)->fld[0]).rtx), reg) && val == (const_int_rtx[64]))
    switch (cond)
      {
      case GE: case GT: case EQ:
 return (((x)->fld[0]).rtx);
      case LT: case LE:
 return simplify_gen_unary (NEG, ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
       (((x)->fld[0]).rtx),
       ((enum machine_mode) ((((x)->fld[0]).rtx))->mode));
      default:
 break;
      }




  else if ((rtx_class[(int) (code)]) == '<' || (rtx_class[(int) (code)]) == 'c')
    {
      if (rtx_equal_p ((((x)->fld[0]).rtx), val))
 cond = swap_condition (cond), temp = val, val = reg, reg = temp;

      if (rtx_equal_p ((((x)->fld[0]).rtx), reg) && rtx_equal_p ((((x)->fld[1]).rtx), val))
 {
   if ((rtx_class[(int) (code)]) == '<')
     {
       if (comparison_dominates_p (cond, code))
  return const_true_rtx;

       code = combine_reversed_comparison_code (x);
       if (code != UNKNOWN
    && comparison_dominates_p (cond, code))
  return (const_int_rtx[64]);
       else
  return x;
     }
   else if (code == SMAX || code == SMIN
     || code == UMIN || code == UMAX)
     {
       int unsignedp = (code == UMIN || code == UMAX);





       if ((code == SMAX || code == UMAX)
    && ! (cond == EQ || cond == NE))
  cond = reverse_condition (cond);

       switch (cond)
  {
  case GE: case GT:
    return unsignedp ? x : (((x)->fld[1]).rtx);
  case LE: case LT:
    return unsignedp ? x : (((x)->fld[0]).rtx);
  case GEU: case GTU:
    return unsignedp ? (((x)->fld[1]).rtx) : x;
  case LEU: case LTU:
    return unsignedp ? (((x)->fld[0]).rtx) : x;
  default:
    break;
  }
     }
 }
    }
  else if (code == SUBREG)
    {
      enum machine_mode inner_mode = ((enum machine_mode) ((((x)->fld[0]).rtx))->mode);
      rtx new, r = known_cond ((((x)->fld[0]).rtx), cond, reg, val);

      if ((((x)->fld[0]).rtx) != r)
 {


   new = simplify_subreg (((enum machine_mode) (x)->mode), r,
     inner_mode, (((x)->fld[1]).rtuint));
   if (new)
     return new;
   else
     do_SUBST(&((((x)->fld[0]).rtx)), (r));
 }

      return x;
    }






  else if (code == ZERO_EXTEND)
    {
      enum machine_mode inner_mode = ((enum machine_mode) ((((x)->fld[0]).rtx))->mode);
      rtx new, r = known_cond ((((x)->fld[0]).rtx), cond, reg, val);

      if ((((x)->fld[0]).rtx) != r)
 {


   new = simplify_unary_operation (ZERO_EXTEND, ((enum machine_mode) (x)->mode),
       r, inner_mode);
   if (new)
     return new;
   else
     do_SUBST(&((((x)->fld[0]).rtx)), (r));
 }

      return x;
    }

  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 do_SUBST(&((((x)->fld[i]).rtx)), (known_cond ((((x)->fld[i]).rtx), cond, reg, val)));
      else if (fmt[i] == 'E')
 for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
   do_SUBST(&((((((x)->fld[i]).rtvec))->elem[j])), (known_cond ((((((x)->fld[i]).rtvec))->elem[j]), cond, reg, val)));

    }

  return x;
}




static int
rtx_equal_for_field_assignment_p (x, y)
     rtx x;
     rtx y;
{
  if (x == y || rtx_equal_p (x, y))
    return 1;

  if (x == 0 || y == 0 || ((enum machine_mode) (x)->mode) != ((enum machine_mode) (y)->mode))
    return 0;




  if (((enum rtx_code) (x)->code) == MEM && ((enum rtx_code) (y)->code) == SUBREG
      && ((enum rtx_code) ((((y)->fld[0]).rtx))->code) == MEM
      && rtx_equal_p ((((y)->fld[0]).rtx),
        gen_lowpart_for_combine (((enum machine_mode) ((((y)->fld[0]).rtx))->mode), x)))
    return 1;

  if (((enum rtx_code) (y)->code) == MEM && ((enum rtx_code) (x)->code) == SUBREG
      && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM
      && rtx_equal_p ((((x)->fld[0]).rtx),
        gen_lowpart_for_combine (((enum machine_mode) ((((x)->fld[0]).rtx))->mode), y)))
    return 1;






  return 0;
}






static rtx
make_field_assignment (x)
     rtx x;
{
  rtx dest = (((x)->fld[0]).rtx);
  rtx src = (((x)->fld[1]).rtx);
  rtx assign;
  rtx rhs, lhs;
  long long c1;
  long long pos;
  unsigned long long len;
  rtx other;
  enum machine_mode mode;






  if (((enum rtx_code) (src)->code) == AND && ((enum rtx_code) ((((src)->fld[0]).rtx))->code) == ROTATE
      && ((enum rtx_code) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->code) == CONST_INT
      && (((((((((src)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtwint) == -2
      && rtx_equal_for_field_assignment_p (dest, (((src)->fld[1]).rtx)))
    {
      assign = make_extraction (VOIDmode, dest, 0, ((((((src)->fld[0]).rtx))->fld[1]).rtx),
    1, 1, 1, 0);
      if (assign != 0)
 return gen_rtx_fmt_ee (SET, (VOIDmode), (assign), ((const_int_rtx[64])));
      return x;
    }

  else if (((enum rtx_code) (src)->code) == AND && ((enum rtx_code) ((((src)->fld[0]).rtx))->code) == SUBREG
    && subreg_lowpart_p ((((src)->fld[0]).rtx))
    && ((mode_size[(int) (((enum machine_mode) ((((src)->fld[0]).rtx))->mode))])
        < (mode_size[(int) (((enum machine_mode) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->mode))]))
    && ((enum rtx_code) (((((((src)->fld[0]).rtx))->fld[0]).rtx))->code) == ROTATE
    && ((((((((((((src)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtwint) == -2
    && rtx_equal_for_field_assignment_p (dest, (((src)->fld[1]).rtx)))
    {
      assign = make_extraction (VOIDmode, dest, 0,
    (((((((((src)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx),
    1, 1, 1, 0);
      if (assign != 0)
 return gen_rtx_fmt_ee (SET, (VOIDmode), (assign), ((const_int_rtx[64])));
      return x;
    }



  else if (((enum rtx_code) (src)->code) == IOR && ((enum rtx_code) ((((src)->fld[0]).rtx))->code) == ASHIFT
    && ((((((src)->fld[0]).rtx))->fld[0]).rtx) == (const_int_rtx[64 +1])
    && rtx_equal_for_field_assignment_p (dest, (((src)->fld[1]).rtx)))
    {
      assign = make_extraction (VOIDmode, dest, 0, ((((((src)->fld[0]).rtx))->fld[1]).rtx),
    1, 1, 1, 0);
      if (assign != 0)
 return gen_rtx_fmt_ee (SET, (VOIDmode), (assign), ((const_int_rtx[64 +1])));
      return x;
    }
# 7847 "../../../kg++fe/gnu/combine.c"
  if (((enum rtx_code) (src)->code) != IOR && ((enum rtx_code) (src)->code) != XOR)
    return x;

  rhs = expand_compound_operation ((((src)->fld[0]).rtx));
  lhs = expand_compound_operation ((((src)->fld[1]).rtx));

  if (((enum rtx_code) (rhs)->code) == AND
      && ((enum rtx_code) ((((rhs)->fld[1]).rtx))->code) == CONST_INT
      && rtx_equal_for_field_assignment_p ((((rhs)->fld[0]).rtx), dest))
    c1 = ((((((rhs)->fld[1]).rtx))->fld[0]).rtwint), other = lhs;
  else if (((enum rtx_code) (lhs)->code) == AND
    && ((enum rtx_code) ((((lhs)->fld[1]).rtx))->code) == CONST_INT
    && rtx_equal_for_field_assignment_p ((((lhs)->fld[0]).rtx), dest))
    c1 = ((((((lhs)->fld[1]).rtx))->fld[0]).rtwint), other = rhs;
  else
    return x;

  pos = get_pos_from_mask ((~c1) & mode_mask_array[(int) (((enum machine_mode) (dest)->mode))], &len);
  if (pos < 0 || pos + len > (mode_bitsize[(int) (((enum machine_mode) (dest)->mode))])
      || (mode_bitsize[(int) (((enum machine_mode) (dest)->mode))]) > (8 * 8)
      || (c1 & cached_nonzero_bits (other, ((enum machine_mode) (dest)->mode), (rtx) 0, VOIDmode, 0)) != 0)
    return x;

  assign = make_extraction (VOIDmode, dest, pos, (rtx) 0, len, 1, 1, 0);
  if (assign == 0)
    return x;



  mode = (((enum rtx_code) (assign)->code) == STRICT_LOW_PART
   ? ((enum machine_mode) ((((assign)->fld[0]).rtx))->mode) : ((enum machine_mode) (assign)->mode));




  src = force_to_mode (simplify_shift_const ((rtx) 0, LSHIFTRT,
          ((enum machine_mode) (src)->mode), other, pos),
         mode,
         (mode_bitsize[(int) (mode)]) >= (8 * 8)
         ? ~(unsigned long long) 0
         : ((unsigned long long) 1 << len) - 1,
         dest, 0);

  return gen_rtx_fmt_ee (SET, (VOIDmode), (assign), (src));
}




static rtx
apply_distributive_law (x)
     rtx x;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  rtx lhs, rhs, other;
  rtx tem;
  enum rtx_code inner_code;




  if (((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_VECTOR_FLOAT))
    return x;


  if (code != IOR && code != AND && code != XOR
      && code != PLUS && code != MINUS)
    return x;

  lhs = (((x)->fld[0]).rtx), rhs = (((x)->fld[1]).rtx);



  if ((rtx_class[(int) (((enum rtx_code) (lhs)->code))]) == 'o'
      || (rtx_class[(int) (((enum rtx_code) (rhs)->code))]) == 'o')
    return x;

  lhs = expand_compound_operation (lhs);
  rhs = expand_compound_operation (rhs);
  inner_code = ((enum rtx_code) (lhs)->code);
  if (inner_code != ((enum rtx_code) (rhs)->code))
    return x;


  switch (inner_code)
    {
    case LSHIFTRT:
    case ASHIFTRT:
    case AND:
    case IOR:

      if (code == PLUS || code == MINUS)
 return x;
      break;

    case MULT:
      if (code != PLUS && code != MINUS)
 return x;
      break;

    case ASHIFT:

      break;

    case SUBREG:
# 7963 "../../../kg++fe/gnu/combine.c"
      if (((enum machine_mode) ((((lhs)->fld[0]).rtx))->mode) != ((enum machine_mode) ((((rhs)->fld[0]).rtx))->mode)
   || (((lhs)->fld[1]).rtuint) != (((rhs)->fld[1]).rtuint)
   || ! subreg_lowpart_p (lhs)
   || ((mode_class[(int) (((enum machine_mode) (lhs)->mode))])
       != (mode_class[(int) (((enum machine_mode) ((((lhs)->fld[0]).rtx))->mode))]))
   || ((mode_size[(int) (((enum machine_mode) (lhs)->mode))])
       > (mode_size[(int) (((enum machine_mode) ((((lhs)->fld[0]).rtx))->mode))]))
   || (mode_size[(int) (((enum machine_mode) ((((lhs)->fld[0]).rtx))->mode))]) > ((target_flags & 0x00002000) ? 8 : 4))
 return x;

      tem = gen_binary (code, ((enum machine_mode) ((((lhs)->fld[0]).rtx))->mode),
   (((lhs)->fld[0]).rtx), (((rhs)->fld[0]).rtx));
      return gen_lowpart_for_combine (((enum machine_mode) (x)->mode), tem);

    default:
      return x;
    }





  if ((rtx_class[(int) (inner_code)]) == 'c'
      && rtx_equal_p ((((lhs)->fld[0]).rtx), (((rhs)->fld[0]).rtx)))
    other = (((lhs)->fld[0]).rtx), lhs = (((lhs)->fld[1]).rtx), rhs = (((rhs)->fld[1]).rtx);
  else if ((rtx_class[(int) (inner_code)]) == 'c'
    && rtx_equal_p ((((lhs)->fld[0]).rtx), (((rhs)->fld[1]).rtx)))
    other = (((lhs)->fld[0]).rtx), lhs = (((lhs)->fld[1]).rtx), rhs = (((rhs)->fld[0]).rtx);
  else if ((rtx_class[(int) (inner_code)]) == 'c'
    && rtx_equal_p ((((lhs)->fld[1]).rtx), (((rhs)->fld[0]).rtx)))
    other = (((lhs)->fld[1]).rtx), lhs = (((lhs)->fld[0]).rtx), rhs = (((rhs)->fld[1]).rtx);
  else if (rtx_equal_p ((((lhs)->fld[1]).rtx), (((rhs)->fld[1]).rtx)))
    other = (((lhs)->fld[1]).rtx), lhs = (((lhs)->fld[0]).rtx), rhs = (((rhs)->fld[0]).rtx);
  else
    return x;


  tem = gen_binary (code, ((enum machine_mode) (x)->mode), lhs, rhs);



  if (code == XOR && inner_code == IOR)
    {
      inner_code = AND;
      other = simplify_gen_unary (NOT, ((enum machine_mode) (x)->mode), other, ((enum machine_mode) (x)->mode));
    }




  return gen_binary (inner_code, ((enum machine_mode) (x)->mode),
       apply_distributive_law (tem), other);
}







static rtx
simplify_and_const_int (x, mode, varop, constop)
     rtx x;
     enum machine_mode mode;
     rtx varop;
     unsigned long long constop;
{
  unsigned long long nonzero;
  int i;
# 8040 "../../../kg++fe/gnu/combine.c"
  varop = force_to_mode (varop, mode, constop, (rtx) 0, 0);


  if (((enum rtx_code) (varop)->code) == CLOBBER)
    return varop;



  if (((enum rtx_code) (varop)->code) == CONST_INT)
    return gen_rtx_CONST_INT (VOIDmode, (long long) (trunc_int_for_mode ((((varop)->fld[0]).rtwint) & constop, mode)));





  nonzero = cached_nonzero_bits (varop, mode, (rtx) 0, VOIDmode, 0) & mode_mask_array[(int) (mode)];





  constop &= nonzero;


  if (constop == 0)
    return (const_int_rtx[64]);



  if (((enum rtx_code) (varop)->code) == NEG && cached_nonzero_bits ((((varop)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) == 1
      && (i = exact_log2_wide ((unsigned long long) (constop))) >= 0)
    return simplify_shift_const ((rtx) 0, ASHIFT, mode, (((varop)->fld[0]).rtx), i);







  if (((enum rtx_code) (varop)->code) == IOR || ((enum rtx_code) (varop)->code) == XOR)
    return
      gen_lowpart_for_combine
 (mode,
  apply_distributive_law
  (gen_binary (((enum rtx_code) (varop)->code), ((enum machine_mode) (varop)->mode),
        simplify_and_const_int ((rtx) 0, ((enum machine_mode) (varop)->mode),
           (((varop)->fld[0]).rtx), constop),
        simplify_and_const_int ((rtx) 0, ((enum machine_mode) (varop)->mode),
           (((varop)->fld[1]).rtx), constop))));





  if (((enum rtx_code) (varop)->code) == PLUS
      && exact_log2_wide ((unsigned long long) (constop + 1)) >= 0)
    {
      rtx o0, o1;

      o0 = simplify_and_const_int ((rtx) 0, mode, (((varop)->fld[0]).rtx), constop);
      o1 = simplify_and_const_int ((rtx) 0, mode, (((varop)->fld[1]).rtx), constop);
      if (o0 == (const_int_rtx[64]))
 return o1;
      if (o1 == (const_int_rtx[64]))
 return o0;
    }



  if (x && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
      && ((enum machine_mode) ((((x)->fld[0]).rtx))->mode) == mode
      && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == varop)
    varop = (((x)->fld[0]).rtx);
  else
    varop = gen_lowpart_for_combine (mode, varop);


  if (((enum rtx_code) (varop)->code) == CLOBBER)
    return x ? x : varop;


  if (constop == nonzero)
    x = varop;
  else
    {

      constop = trunc_int_for_mode (constop, mode);

      if (x == 0 || ((enum rtx_code) (x)->code) != AND || ((enum machine_mode) (x)->mode) != mode)
 x = gen_binary (AND, mode, varop, gen_rtx_CONST_INT (VOIDmode, (long long) (constop)));

      else
 {
   if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) != CONST_INT
       || (unsigned long long) ((((((x)->fld[1]).rtx))->fld[0]).rtwint) != constop)
     do_SUBST(&((((x)->fld[1]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (constop))));

   do_SUBST(&((((x)->fld[0]).rtx)), (varop));
 }
    }

  return x;
}
# 8151 "../../../kg++fe/gnu/combine.c"
static unsigned long long
cached_nonzero_bits (x, mode, known_x, known_mode, known_ret)
     rtx x;
     enum machine_mode mode;
     rtx known_x;
     enum machine_mode known_mode;
     unsigned long long known_ret;
{
  if (x == known_x && mode == known_mode)
    return known_ret;





  if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2'
      || (rtx_class[(int) (((enum rtx_code) (x)->code))]) == 'c')
    {
      rtx x0 = (((x)->fld[0]).rtx);
      rtx x1 = (((x)->fld[1]).rtx);


      if (x0 == x1)
 return nonzero_bits1 (x, mode, x0, mode,
         cached_nonzero_bits (x0, mode, known_x, known_mode, known_ret));


      if (((rtx_class[(int) (((enum rtx_code) (x0)->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) (x0)->code))]) == 'c')
   && (x1 == (((x0)->fld[0]).rtx) || x1 == (((x0)->fld[1]).rtx)))
 return nonzero_bits1 (x, mode, x1, mode,
         cached_nonzero_bits (x1, mode, known_x, known_mode, known_ret));

      if (((rtx_class[(int) (((enum rtx_code) (x1)->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) (x1)->code))]) == 'c')
   && (x0 == (((x1)->fld[0]).rtx) || x0 == (((x1)->fld[1]).rtx)))
 return nonzero_bits1 (x, mode, x0, mode,
    cached_nonzero_bits (x0, mode, known_x, known_mode, known_ret));
    }

  return nonzero_bits1 (x, mode, known_x, known_mode, known_ret);
}
# 8207 "../../../kg++fe/gnu/combine.c"
static unsigned long long
nonzero_bits1 (x, mode, known_x, known_mode, known_ret)
     rtx x;
     enum machine_mode mode;
     rtx known_x;
     enum machine_mode known_mode;
     unsigned long long known_ret;
{
  unsigned long long nonzero = mode_mask_array[(int) (mode)];
  unsigned long long inner_nz;
  enum rtx_code code;
  unsigned int mode_width = (mode_bitsize[(int) (mode)]);
  rtx tem;


  if (((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_VECTOR_FLOAT) || ((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT))
    return nonzero;


  if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) > mode_width)
    {
      mode = ((enum machine_mode) (x)->mode);
      nonzero = mode_mask_array[(int) (mode)];
      mode_width = (mode_bitsize[(int) (mode)]);
    }

  if (mode_width > (8 * 8))


    return nonzero;
# 8257 "../../../kg++fe/gnu/combine.c"
  code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case REG:
# 8273 "../../../kg++fe/gnu/combine.c"
      if ((x == (global_rtl[GR_STACK_POINTER])
    || x == (global_rtl[GR_FRAME_POINTER])
    || x == (global_rtl[GR_ARG_POINTER]))
   && (cfun->emit->regno_pointer_align[(((x)->fld[0]).rtuint)]))
 {
   unsigned long long alignment
     = (cfun->emit->regno_pointer_align[(((x)->fld[0]).rtuint)]) / 8;
# 8289 "../../../kg++fe/gnu/combine.c"
   nonzero &= ~(alignment - 1);
 }






      if (reg_last_set_value[(((x)->fld[0]).rtuint)] != 0
   && (reg_last_set_mode[(((x)->fld[0]).rtuint)] == mode
       || ((mode_class[(int) (reg_last_set_mode[(((x)->fld[0]).rtuint)])]) == MODE_INT
    && (mode_class[(int) (mode)]) == MODE_INT))
   && (reg_last_set_label[(((x)->fld[0]).rtuint)] == label_tick
       || ((((x)->fld[0]).rtuint) >= 176
    && (((reg_n_info)->data.reg[(((x)->fld[0]).rtuint)])->sets) == 1
    && ! bitmap_bit_p ((&entry_exit_blocks[0])->next_bb->global_live_at_start, (((x)->fld[0]).rtuint))))

   && ((((reg_last_set[(((x)->fld[0]).rtuint)])->fld[0]).rtint) > max_uid_cuid ? insn_cuid (reg_last_set[(((x)->fld[0]).rtuint)]) : uid_cuid[(((reg_last_set[(((x)->fld[0]).rtuint)])->fld[0]).rtint)]) < subst_low_cuid)
 return reg_last_set_nonzero_bits[(((x)->fld[0]).rtuint)] & nonzero;

      tem = get_last_value (x);

      if (tem)
 {
# 8333 "../../../kg++fe/gnu/combine.c"
   return cached_nonzero_bits (tem, mode, known_x, known_mode, known_ret) & nonzero;
 }
      else if (nonzero_sign_valid && reg_nonzero_bits[(((x)->fld[0]).rtuint)])
 {
   unsigned long long mask = reg_nonzero_bits[(((x)->fld[0]).rtuint)];

   if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) < mode_width)

     mask |= mode_mask_array[(int) (mode)] ^ mode_mask_array[(int) (((enum machine_mode) (x)->mode))];
   return nonzero & mask;
 }
      else
 return nonzero;

    case CONST_INT:







      return (((x)->fld[0]).rtwint);

    case MEM:




      if (((target_flags & 0x00002000) && ((((enum machine_mode) (x)->mode)) == SImode || (((enum machine_mode) (x)->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) == ZERO_EXTEND)
 nonzero &= mode_mask_array[(int) (((enum machine_mode) (x)->mode))];

      break;

    case EQ: case NE:
    case UNEQ: case LTGT:
    case GT: case GTU: case UNGT:
    case LT: case LTU: case UNLT:
    case GE: case GEU: case UNGE:
    case LE: case LEU: case UNLE:
    case UNORDERED: case ORDERED:





      if ((mode_class[(int) (mode)]) == MODE_INT
   && mode_width <= (8 * 8))
 nonzero = 1;
      break;

    case NEG:
# 8393 "../../../kg++fe/gnu/combine.c"
      if ((mode_size[(int) (((enum machine_mode) (x)->mode))]) < mode_width)
 nonzero |= (mode_mask_array[(int) (mode)] & ~mode_mask_array[(int) (((enum machine_mode) (x)->mode))]);
      break;

    case ABS:







      break;

    case TRUNCATE:
      nonzero &= (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret)
    & mode_mask_array[(int) (mode)]);
      break;

    case ZERO_EXTEND:
      nonzero &= cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      if (((enum machine_mode) ((((x)->fld[0]).rtx))->mode) != VOIDmode)
 nonzero &= mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))];
      break;

    case SIGN_EXTEND:



      inner_nz = cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      if (((enum machine_mode) ((((x)->fld[0]).rtx))->mode) != VOIDmode)
 {
   inner_nz &= mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))];
   if (inner_nz
       & (((long long) 1
    << ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - 1))))
     inner_nz |= (mode_mask_array[(int) (mode)]
    & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]);
 }

      nonzero &= inner_nz;
      break;

    case AND:
      nonzero &= (cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret)
    & cached_nonzero_bits ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret));
      break;

    case XOR: case IOR:
    case UMIN: case UMAX: case SMIN: case SMAX:
      {
 unsigned long long nonzero0 =
   cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);



 if ((nonzero & nonzero0) != nonzero)
   nonzero &= (nonzero0
        | cached_nonzero_bits ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret));
      }
      break;

    case PLUS: case MINUS:
    case MULT:
    case DIV: case UDIV:
    case MOD: case UMOD:




      {
 unsigned long long nz0 =
   cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
 unsigned long long nz1 =
   cached_nonzero_bits ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);
 int width0 = floor_log2_wide ((unsigned long long) (nz0)) + 1;
 int width1 = floor_log2_wide ((unsigned long long) (nz1)) + 1;
 int low0 = floor_log2_wide ((unsigned long long) (nz0 & -nz0));
 int low1 = floor_log2_wide ((unsigned long long) (nz1 & -nz1));
 long long op0_maybe_minusp
   = (nz0 & ((long long) 1 << (mode_width - 1)));
 long long op1_maybe_minusp
   = (nz1 & ((long long) 1 << (mode_width - 1)));
 unsigned int result_width = mode_width;
 int result_low = 0;

 switch (code)
   {
   case PLUS:
     result_width = ((width0) > (width1) ? (width0) : (width1)) + 1;
     result_low = ((low0) < (low1) ? (low0) : (low1));
     break;
   case MINUS:
     result_low = ((low0) < (low1) ? (low0) : (low1));
     break;
   case MULT:
     result_width = width0 + width1;
     result_low = low0 + low1;
     break;
   case DIV:
     if (width1 == 0)
       break;
     if (! op0_maybe_minusp && ! op1_maybe_minusp)
       result_width = width0;
     break;
   case UDIV:
     if (width1 == 0)
       break;
     result_width = width0;
     break;
   case MOD:
     if (width1 == 0)
       break;
     if (! op0_maybe_minusp && ! op1_maybe_minusp)
       result_width = ((width0) < (width1) ? (width0) : (width1));
     result_low = ((low0) < (low1) ? (low0) : (low1));
     break;
   case UMOD:
     if (width1 == 0)
       break;
     result_width = ((width0) < (width1) ? (width0) : (width1));
     result_low = ((low0) < (low1) ? (low0) : (low1));
     break;
   default:
     fancy_abort ("../../../kg++fe/gnu/combine.c", 8517, __FUNCTION__);
   }

 if (result_width < mode_width)
   nonzero &= ((long long) 1 << result_width) - 1;

 if (result_low > 0)
   nonzero &= ~(((long long) 1 << result_low) - 1);
# 8535 "../../../kg++fe/gnu/combine.c"
      }
      break;

    case ZERO_EXTRACT:
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
 nonzero &= ((long long) 1 << ((((((x)->fld[1]).rtx))->fld[0]).rtwint)) - 1;
      break;

    case SUBREG:




      if ((((x))->in_struct) && ((((x))->volatil) ? -1 : (x)->unchanging) > 0)
 nonzero = (mode_mask_array[(int) (((enum machine_mode) (x)->mode))]
     & cached_nonzero_bits ((((x)->fld[0]).rtx), ((enum machine_mode) (x)->mode), known_x, known_mode, known_ret));




      if ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) <= (8 * ((target_flags & 0x00002000) ? 8 : 4))
   && ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       <= (8 * 8)))
 {
   nonzero &= cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);




   if ((((target_flags & 0x00002000) && ((((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) == SIGN_EXTEND
        ? (((nonzero
      & (((unsigned long long) 1
   << ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - 1))))
     != 0))
        : ((target_flags & 0x00002000) && ((((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) != ZERO_EXTEND)
       || ((enum rtx_code) ((((x)->fld[0]).rtx))->code) != MEM)

     {



       if ((mode_size[(int) (((enum machine_mode) (x)->mode))])
    > (mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
  nonzero |= (mode_mask_array[(int) (((enum machine_mode) (x)->mode))]
       & ~mode_mask_array[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]);
     }
 }
      break;

    case ASHIFTRT:
    case LSHIFTRT:
    case ASHIFT:
    case ROTATE:






      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
 {
   enum machine_mode inner_mode = ((enum machine_mode) (x)->mode);
   unsigned int width = (mode_bitsize[(int) (inner_mode)]);
   int count = ((((((x)->fld[1]).rtx))->fld[0]).rtwint);
   unsigned long long mode_mask = mode_mask_array[(int) (inner_mode)];
   unsigned long long op_nonzero =
     cached_nonzero_bits ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
   unsigned long long inner = op_nonzero & mode_mask;
   unsigned long long outer = 0;

   if (mode_width > width)
     outer = (op_nonzero & nonzero & ~mode_mask);

   if (code == LSHIFTRT)
     inner >>= count;
   else if (code == ASHIFTRT)
     {
       inner >>= count;




       if (inner & ((long long) 1 << (width - 1 - count)))
  inner |= (((long long) 1 << count) - 1) << (width - count);
     }
   else if (code == ASHIFT)
     inner <<= count;
   else
     inner = ((inner << (count % width)
        | (inner >> (width - (count % width)))) & mode_mask);

   nonzero &= (outer | inner);
 }
      break;

    case FFS:

      nonzero = ((long long) 1 << (floor_log2_wide ((unsigned long long) (mode_width)) + 1)) - 1;
      break;

    case IF_THEN_ELSE:
      nonzero &= (cached_nonzero_bits ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret)
    | cached_nonzero_bits ((((x)->fld[2]).rtx), mode, known_x, known_mode, known_ret));
      break;

    default:
      break;
    }

  return nonzero;
}
# 8661 "../../../kg++fe/gnu/combine.c"
static unsigned int
cached_num_sign_bit_copies (x, mode, known_x, known_mode, known_ret)
     rtx x;
     enum machine_mode mode;
     rtx known_x;
     enum machine_mode known_mode;
     unsigned int known_ret;
{
  if (x == known_x && mode == known_mode)
    return known_ret;





  if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2'
      || (rtx_class[(int) (((enum rtx_code) (x)->code))]) == 'c')
    {
      rtx x0 = (((x)->fld[0]).rtx);
      rtx x1 = (((x)->fld[1]).rtx);


      if (x0 == x1)
 return
   num_sign_bit_copies1 (x, mode, x0, mode,
    cached_num_sign_bit_copies (x0, mode, known_x, known_mode, known_ret));


      if (((rtx_class[(int) (((enum rtx_code) (x0)->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) (x0)->code))]) == 'c')
   && (x1 == (((x0)->fld[0]).rtx) || x1 == (((x0)->fld[1]).rtx)))
 return
   num_sign_bit_copies1 (x, mode, x1, mode,
    cached_num_sign_bit_copies (x1, mode, known_x, known_mode, known_ret));

      if (((rtx_class[(int) (((enum rtx_code) (x1)->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) (x1)->code))]) == 'c')
   && (x0 == (((x1)->fld[0]).rtx) || x0 == (((x1)->fld[1]).rtx)))
 return
   num_sign_bit_copies1 (x, mode, x0, mode,
    cached_num_sign_bit_copies (x0, mode, known_x, known_mode, known_ret));
    }

  return num_sign_bit_copies1 (x, mode, known_x, known_mode, known_ret);
}






static unsigned int
num_sign_bit_copies1 (x, mode, known_x, known_mode, known_ret)
     rtx x;
     enum machine_mode mode;
     rtx known_x;
     enum machine_mode known_mode;
     unsigned int known_ret;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  unsigned int bitwidth;
  int num0, num1, result;
  unsigned long long nonzero;
  rtx tem;





  if (mode == VOIDmode)
    mode = ((enum machine_mode) (x)->mode);

  if (mode == VOIDmode || ((mode_class[(int) (mode)]) == MODE_FLOAT || (mode_class[(int) (mode)]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (mode)]) == MODE_VECTOR_FLOAT) || ((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_VECTOR_FLOAT))
    return 1;

  bitwidth = (mode_bitsize[(int) (mode)]);


  if (bitwidth < (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
    {
      num0 = cached_num_sign_bit_copies (x, ((enum machine_mode) (x)->mode), known_x, known_mode, known_ret);
      return ((1) > (num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - bitwidth)) ? (1) : (num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) - bitwidth)));

    }

  if (((enum machine_mode) (x)->mode) != VOIDmode && bitwidth > (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]))
    {
# 8757 "../../../kg++fe/gnu/combine.c"
      if ((mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) < (8 * ((target_flags & 0x00002000) ? 8 : 4))

   && ((target_flags & 0x00002000) && ((((enum machine_mode) (x)->mode)) == SImode || (((enum machine_mode) (x)->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) != SIGN_EXTEND

   )
 return 1;

    }

  switch (code)
    {
    case REG:
# 8778 "../../../kg++fe/gnu/combine.c"
      if (reg_last_set_value[(((x)->fld[0]).rtuint)] != 0
   && reg_last_set_mode[(((x)->fld[0]).rtuint)] == mode
   && (reg_last_set_label[(((x)->fld[0]).rtuint)] == label_tick
       || ((((x)->fld[0]).rtuint) >= 176
    && (((reg_n_info)->data.reg[(((x)->fld[0]).rtuint)])->sets) == 1
    && ! bitmap_bit_p ((&entry_exit_blocks[0])->next_bb->global_live_at_start, (((x)->fld[0]).rtuint))))

   && ((((reg_last_set[(((x)->fld[0]).rtuint)])->fld[0]).rtint) > max_uid_cuid ? insn_cuid (reg_last_set[(((x)->fld[0]).rtuint)]) : uid_cuid[(((reg_last_set[(((x)->fld[0]).rtuint)])->fld[0]).rtint)]) < subst_low_cuid)
 return reg_last_set_sign_bit_copies[(((x)->fld[0]).rtuint)];

      tem = get_last_value (x);
      if (tem != 0)
 return cached_num_sign_bit_copies (tem, mode, known_x, known_mode, known_ret);

      if (nonzero_sign_valid && reg_sign_bit_copies[(((x)->fld[0]).rtuint)] != 0
   && (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) == bitwidth)
 return reg_sign_bit_copies[(((x)->fld[0]).rtuint)];
      break;

    case MEM:


      if (((target_flags & 0x00002000) && ((((enum machine_mode) (x)->mode)) == SImode || (((enum machine_mode) (x)->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) == SIGN_EXTEND)
 return ((1) > (((int) bitwidth - (int) (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) + 1)) ? (1) : (((int) bitwidth - (int) (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) + 1)));


      break;

    case CONST_INT:


      nonzero = (((x)->fld[0]).rtwint) & mode_mask_array[(int) (mode)];
      if (bitwidth <= (8 * 8)
   && (nonzero & ((long long) 1 << (bitwidth - 1))) != 0)
 nonzero = (~nonzero) & mode_mask_array[(int) (mode)];

      return (nonzero == 0 ? bitwidth : bitwidth - floor_log2_wide ((unsigned long long) (nonzero)) - 1);

    case SUBREG:




      if ((((x))->in_struct) && ! ((((x))->volatil) ? -1 : (x)->unchanging))
 {
   num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
   return (((int) bitwidth - (int) (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) + 1) > (num0) ? ((int) bitwidth - (int) (mode_bitsize[(int) (((enum machine_mode) (x)->mode))]) + 1) : (num0));


 }


      if (bitwidth <= (mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
 {
   num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), VOIDmode, known_x, known_mode, known_ret);
   return ((1) > ((num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - bitwidth))) ? (1) : ((num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - bitwidth))));


 }
# 8850 "../../../kg++fe/gnu/combine.c"
      if (((mode_size[(int) (((enum machine_mode) (x)->mode))])
    > (mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
   && ((target_flags & 0x00002000) && ((((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == SImode || (((enum machine_mode) ((((x)->fld[0]).rtx))->mode)) == CCmode) ? SIGN_EXTEND : ZERO_EXTEND) == SIGN_EXTEND
   && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
 return cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);


      break;

    case SIGN_EXTRACT:
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT)
 return ((1) > ((int) bitwidth - ((((((x)->fld[1]).rtx))->fld[0]).rtwint)) ? (1) : ((int) bitwidth - ((((((x)->fld[1]).rtx))->fld[0]).rtwint)));
      break;

    case SIGN_EXTEND:
      return (bitwidth - (mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))])
       + cached_num_sign_bit_copies ((((x)->fld[0]).rtx), VOIDmode, known_x, known_mode, known_ret));

    case TRUNCATE:

      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), VOIDmode, known_x, known_mode, known_ret);
      return ((1) > ((num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - bitwidth))) ? (1) : ((num0 - (int) ((mode_bitsize[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]) - bitwidth))));


    case NOT:
      return cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);

    case ROTATE: case ROTATERT:



      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < (int) bitwidth)
 {
   num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
   return ((1) > (num0 - (code == ROTATE ? ((((((x)->fld[1]).rtx))->fld[0]).rtwint) : (int) bitwidth - ((((((x)->fld[1]).rtx))->fld[0]).rtwint))) ? (1) : (num0 - (code == ROTATE ? ((((((x)->fld[1]).rtx))->fld[0]).rtwint) : (int) bitwidth - ((((((x)->fld[1]).rtx))->fld[0]).rtwint))));

 }
      break;

    case NEG:




      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      if (bitwidth > (8 * 8))
 return num0 > 1 ? num0 - 1 : 1;

      nonzero = cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0);
      if (nonzero == 1)
 return bitwidth;

      if (num0 > 1
   && (((long long) 1 << (bitwidth - 1)) & nonzero))
 num0--;

      return num0;

    case IOR: case AND: case XOR:
    case SMIN: case SMAX: case UMIN: case UMAX:


      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      num1 = cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);
      return ((num0) < (num1) ? (num0) : (num1));

    case PLUS: case MINUS:





      if (code == PLUS && (((x)->fld[1]).rtx) == (const_int_rtx[64 -1])
   && bitwidth <= (8 * 8))
 {
   nonzero = cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0);
   if ((((long long) 1 << (bitwidth - 1)) & nonzero) == 0)
     return (nonzero == 1 || nonzero == 0 ? bitwidth
      : bitwidth - floor_log2_wide ((unsigned long long) (nonzero)) - 1);
 }

      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      num1 = cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);
      result = ((1) > (((num0) < (num1) ? (num0) : (num1)) - 1) ? (1) : (((num0) < (num1) ? (num0) : (num1)) - 1));
# 8948 "../../../kg++fe/gnu/combine.c"
      return result;

    case MULT:





      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      num1 = cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);

      result = bitwidth - (bitwidth - num0) - (bitwidth - num1);
      if (result > 0
   && (bitwidth > (8 * 8)
       || (((cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
      & ((long long) 1 << (bitwidth - 1))) != 0)
    && ((cached_nonzero_bits ((((x)->fld[1]).rtx), mode, (rtx) 0, VOIDmode, 0)
         & ((long long) 1 << (bitwidth - 1))) != 0))))
 result--;

      return ((1) > (result) ? (1) : (result));

    case UDIV:



      if (bitwidth > (8 * 8))
 return 1;
      else if ((cached_nonzero_bits ((((x)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
  & ((long long) 1 << (bitwidth - 1))) != 0)
 return 1;
      else
 return cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);

    case UMOD:

      return cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);

    case DIV:



      result = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      if (result > 1
   && (bitwidth > (8 * 8)
       || (cached_nonzero_bits ((((x)->fld[1]).rtx), mode, (rtx) 0, VOIDmode, 0)
    & ((long long) 1 << (bitwidth - 1))) != 0))
 result--;

      return result;

    case MOD:
      result = cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);
      if (result > 1
   && (bitwidth > (8 * 8)
       || (cached_nonzero_bits ((((x)->fld[1]).rtx), mode, (rtx) 0, VOIDmode, 0)
    & ((long long) 1 << (bitwidth - 1))) != 0))
 result--;

      return result;

    case ASHIFTRT:


      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) > 0)
 num0 = (((int) bitwidth) < (num0 + ((((((x)->fld[1]).rtx))->fld[0]).rtwint)) ? ((int) bitwidth) : (num0 + ((((((x)->fld[1]).rtx))->fld[0]).rtwint)));

      return num0;

    case ASHIFT:

      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) != CONST_INT
   || ((((((x)->fld[1]).rtx))->fld[0]).rtwint) < 0
   || ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= (int) bitwidth)
 return 1;

      num0 = cached_num_sign_bit_copies ((((x)->fld[0]).rtx), mode, known_x, known_mode, known_ret);
      return ((1) > (num0 - ((((((x)->fld[1]).rtx))->fld[0]).rtwint)) ? (1) : (num0 - ((((((x)->fld[1]).rtx))->fld[0]).rtwint)));

    case IF_THEN_ELSE:
      num0 = cached_num_sign_bit_copies ((((x)->fld[1]).rtx), mode, known_x, known_mode, known_ret);
      num1 = cached_num_sign_bit_copies ((((x)->fld[2]).rtx), mode, known_x, known_mode, known_ret);
      return ((num0) < (num1) ? (num0) : (num1));

    case EQ: case NE: case GE: case GT: case LE: case LT:
    case UNEQ: case LTGT: case UNGE: case UNGT: case UNLE: case UNLT:
    case GEU: case GTU: case LEU: case LTU:
    case UNORDERED: case ORDERED:


      nonzero = 1;
      if (bitwidth <= (8 * 8)
   && (nonzero & ((long long) 1 << (bitwidth - 1))) != 0)
 nonzero = (~nonzero) & mode_mask_array[(int) (mode)];

      return (nonzero == 0 ? bitwidth : bitwidth - floor_log2_wide ((unsigned long long) (nonzero)) - 1);
      break;

    default:
      break;
    }






  if (bitwidth > (8 * 8))
    return 1;

  nonzero = cached_nonzero_bits (x, mode, (rtx) 0, VOIDmode, 0);
  return (nonzero & ((long long) 1 << (bitwidth - 1))
   ? 1 : bitwidth - floor_log2_wide ((unsigned long long) (nonzero)) - 1);
}
# 9076 "../../../kg++fe/gnu/combine.c"
unsigned int
extended_count (x, mode, unsignedp)
     rtx x;
     enum machine_mode mode;
     int unsignedp;
{
  if (nonzero_sign_valid == 0)
    return 0;

  return (unsignedp
   ? ((mode_bitsize[(int) (mode)]) <= (8 * 8)
      ? (unsigned int) ((mode_bitsize[(int) (mode)]) - 1
          - floor_log2_wide ((unsigned long long) (cached_nonzero_bits (x, mode, (rtx) 0, VOIDmode, 0))))
      : 0)
   : cached_num_sign_bit_copies (x, mode, (rtx) 0, VOIDmode, 0) - 1);
}
# 9114 "../../../kg++fe/gnu/combine.c"
static int
merge_outer_ops (pop0, pconst0, op1, const1, mode, pcomp_p)
     enum rtx_code *pop0;
     long long *pconst0;
     enum rtx_code op1;
     long long const1;
     enum machine_mode mode;
     int *pcomp_p;
{
  enum rtx_code op0 = *pop0;
  long long const0 = *pconst0;

  const0 &= mode_mask_array[(int) (mode)];
  const1 &= mode_mask_array[(int) (mode)];


  if (op0 == AND)
    const1 &= const0;




  if (op1 == NIL || op0 == SET)
    return 1;

  else if (op0 == NIL)
    op0 = op1, const0 = const1;

  else if (op0 == op1)
    {
      switch (op0)
 {
 case AND:
   const0 &= const1;
   break;
 case IOR:
   const0 |= const1;
   break;
 case XOR:
   const0 ^= const1;
   break;
 case PLUS:
   const0 += const1;
   break;
 case NEG:
   op0 = NIL;
   break;
 default:
   break;
 }
    }


  else if (op0 == PLUS || op1 == PLUS || op0 == NEG || op1 == NEG)
    return 0;



  else if (const0 != const1)
    return 0;

  else
    switch (op0)
      {
      case IOR:
 if (op1 == AND)

   op0 = SET;
 else

   {;}
 break;

      case XOR:
 if (op1 == AND)

   op0 = AND, *pcomp_p = 1;
 else

   op0 = AND, *pconst0 = ~const0;
 break;

      case AND:
 if (op1 == IOR)

 op0 = SET;
 else

   *pcomp_p = 1;
 break;
      default:
 break;
      }


  const0 &= mode_mask_array[(int) (mode)];
  if (const0 == 0
      && (op0 == IOR || op0 == XOR || op0 == PLUS))
    op0 = NIL;
  else if (const0 == 0 && op0 == AND)
    op0 = SET;
  else if ((unsigned long long) const0 == mode_mask_array[(int) (mode)]
    && op0 == AND)
    op0 = NIL;




  const0 = trunc_int_for_mode (const0, mode);

  *pop0 = op0;
  *pconst0 = const0;

  return 1;
}
# 9238 "../../../kg++fe/gnu/combine.c"
static rtx
simplify_shift_const (x, code, result_mode, varop, orig_count)
     rtx x;
     enum rtx_code code;
     enum machine_mode result_mode;
     rtx varop;
     int orig_count;
{
  enum rtx_code orig_code = code;
  unsigned int count;
  int signed_count;
  enum machine_mode mode = result_mode;
  enum machine_mode shift_mode, tmode;
  unsigned int mode_words
    = ((mode_size[(int) (mode)]) + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4);

  enum rtx_code outer_op = NIL;
  long long outer_const = 0;
  rtx const_rtx;
  int complement_p = 0;
  rtx new;





  if (1)
    orig_count &= (mode_bitsize[(int) (mode)]) - 1;





  if (orig_count < 0 || orig_count >= (int) (mode_bitsize[(int) (mode)]))
    {
      if (x)
 return x;

      return gen_rtx_fmt_ee (code, mode, varop, gen_rtx_CONST_INT (VOIDmode, (long long) (orig_count)));
    }

  count = orig_count;




  while (count != 0)
    {


      if (((enum rtx_code) (varop)->code) == CLOBBER)
 return varop;



      if (complement_p)
 break;


      if (code == ROTATERT)
 {
   unsigned int bitsize = (mode_bitsize[(int) (result_mode)]);;
   code = ROTATE;
   if (((mode_class[(int) (result_mode)]) == MODE_VECTOR_INT || (mode_class[(int) (result_mode)]) == MODE_VECTOR_FLOAT))
     count = bitsize / (((mode_unit_size[(int) ((result_mode))]) == 0) ? 0 : ((mode_size[(int) ((result_mode))]) / (mode_unit_size[(int) ((result_mode))]))) - count;
   else
     count = bitsize - count;
 }





      shift_mode
 = (code == ASHIFTRT || code == LSHIFTRT || code == ROTATE
    ? result_mode : mode);
# 9325 "../../../kg++fe/gnu/combine.c"
      if (count > (unsigned int) ((mode_bitsize[(int) (shift_mode)]) - 1))
 {
   if (code == ASHIFTRT)
     count = (mode_bitsize[(int) (shift_mode)]) - 1;
   else if (code == ROTATE || code == ROTATERT)
     count %= (mode_bitsize[(int) (shift_mode)]);
   else
     {


       varop = (const_int_rtx[64]);
       count = 0;
       break;
     }
 }



      if (code == ASHIFTRT
   && (cached_num_sign_bit_copies (varop, shift_mode, (rtx) 0, VOIDmode, 0)
       == (mode_bitsize[(int) (shift_mode)])))
 {
   count = 0;
   break;
 }






      if (code == ASHIFTRT
   && (count + cached_num_sign_bit_copies (varop, shift_mode, (rtx) 0, VOIDmode, 0)
       >= (mode_bitsize[(int) (shift_mode)])))
 count = (mode_bitsize[(int) (shift_mode)]) - 1;





      if ((mode_bitsize[(int) (shift_mode)]) <= (8 * 8)
   && code == ASHIFTRT
   && ((cached_nonzero_bits (varop, shift_mode, (rtx) 0, VOIDmode, 0)
        & ((long long) 1 << ((mode_bitsize[(int) (shift_mode)]) - 1)))
       == 0))
 code = LSHIFTRT;

      switch (((enum rtx_code) (varop)->code))
 {
 case SIGN_EXTEND:
 case ZERO_EXTEND:
 case SIGN_EXTRACT:
 case ZERO_EXTRACT:
   new = expand_compound_operation (varop);
   if (new != varop)
     {
       varop = new;
       continue;
     }
   break;

 case MEM:



   if ((code == ASHIFTRT || code == LSHIFTRT)
       && ! mode_dependent_address_p ((((varop)->fld[0]).rtx))
       && ! (((varop))->volatil)
       && (tmode = mode_for_size ((mode_bitsize[(int) (mode)]) - count,
      MODE_INT, 1)) != BLKmode)
     {
       new = adjust_address_1 (varop, tmode, ((target_flags & 0x00010000) != 0) ? 0 : count / 8, 0, 1);



       varop = gen_rtx_fmt_e (code == ASHIFTRT ? SIGN_EXTEND
         : ZERO_EXTEND, mode, new);
       count = 0;
       continue;
     }
   break;

 case USE:




   if ((code == ASHIFTRT || code == LSHIFTRT)
       && (tmode = mode_for_size ((mode_bitsize[(int) (mode)]) - count,
      MODE_INT, 1)) != BLKmode
       && tmode == ((enum machine_mode) ((((varop)->fld[0]).rtx))->mode))
     {
       if (0)
  new = (((varop)->fld[0]).rtx);
       else
  {
    new = copy_rtx ((((varop)->fld[0]).rtx));
    do_SUBST(&((((new)->fld[0]).rtx)), (plus_constant_wide (((((new)->fld[0]).rtx)), (long long) (count / 8))));


  }

       varop = gen_rtx_fmt_e (code == ASHIFTRT ? SIGN_EXTEND
         : ZERO_EXTEND, mode, new);
       count = 0;
       continue;
     }
   break;

 case SUBREG:



   if (subreg_lowpart_p (varop)
       && ((mode_size[(int) (((enum machine_mode) ((((varop)->fld[0]).rtx))->mode))])
    > (mode_size[(int) (((enum machine_mode) (varop)->mode))]))
       && (unsigned int) (((mode_size[(int) (((enum machine_mode) ((((varop)->fld[0]).rtx))->mode))])
      + (((target_flags & 0x00002000) ? 8 : 4) - 1)) / ((target_flags & 0x00002000) ? 8 : 4))
   == mode_words)
     {
       varop = (((varop)->fld[0]).rtx);
       if ((mode_size[(int) (((enum machine_mode) (varop)->mode))]) > (mode_size[(int) (mode)]))
  mode = ((enum machine_mode) (varop)->mode);
       continue;
     }
   break;

 case MULT:



   if (((enum rtx_code) ((((varop)->fld[1]).rtx))->code) == CONST_INT
       && exact_log2_wide ((unsigned long long) (((((((varop)->fld[1]).rtx))->fld[0]).rtwint))) >= 0)
     {
       varop
  = gen_binary (ASHIFT, ((enum machine_mode) (varop)->mode), (((varop)->fld[0]).rtx),
         gen_rtx_CONST_INT (VOIDmode, (long long) (exact_log2_wide ((unsigned long long) (((((((varop)->fld[1]).rtx))->fld[0]).rtwint))))));
       continue;
     }
   break;

 case UDIV:

   if (((enum rtx_code) ((((varop)->fld[1]).rtx))->code) == CONST_INT
       && exact_log2_wide ((unsigned long long) (((((((varop)->fld[1]).rtx))->fld[0]).rtwint))) >= 0)
     {
       varop
  = gen_binary (LSHIFTRT, ((enum machine_mode) (varop)->mode), (((varop)->fld[0]).rtx),
         gen_rtx_CONST_INT (VOIDmode, (long long) (exact_log2_wide ((unsigned long long) (((((((varop)->fld[1]).rtx))->fld[0]).rtwint))))));
       continue;
     }
   break;

 case ASHIFTRT:





   if (code == LSHIFTRT
       && count == (unsigned int) ((mode_bitsize[(int) (result_mode)]) - 1)
       && ((mode_bitsize[(int) (result_mode)])
    >= (mode_bitsize[(int) (((enum machine_mode) (varop)->mode))])))
     {
       varop = (((varop)->fld[0]).rtx);
       continue;
     }



 case LSHIFTRT:
 case ASHIFT:
 case ROTATE:


   if (((enum rtx_code) ((((varop)->fld[1]).rtx))->code) == CONST_INT
       && ((((((varop)->fld[1]).rtx))->fld[0]).rtwint) >= 0
       && ((((((varop)->fld[1]).rtx))->fld[0]).rtwint) < (mode_bitsize[(int) (((enum machine_mode) (varop)->mode))])
       && (mode_bitsize[(int) (result_mode)]) <= (8 * 8)
       && (mode_bitsize[(int) (mode)]) <= (8 * 8))
     {
       enum rtx_code first_code = ((enum rtx_code) (varop)->code);
       unsigned int first_count = ((((((varop)->fld[1]).rtx))->fld[0]).rtwint);
       unsigned long long mask;
       rtx mask_rtx;
# 9518 "../../../kg++fe/gnu/combine.c"
       if (code == ASHIFT && first_code == ASHIFTRT
    && count == (unsigned int)
         ((mode_bitsize[(int) (result_mode)])
          - (mode_bitsize[(int) (((enum machine_mode) (varop)->mode))])))
  {


    mask = (mode_mask_array[(int) (mode)]
     & ~(((long long) 1 << first_count) - 1));

    varop = simplify_and_const_int ((rtx) 0, result_mode,
        (((varop)->fld[0]).rtx), mask);
    varop = simplify_shift_const ((rtx) 0, ASHIFT, result_mode,
      varop, count);
    count = first_count;
    code = ASHIFTRT;
    continue;
  }
# 9544 "../../../kg++fe/gnu/combine.c"
       if (code == ASHIFTRT && first_code == ASHIFT
    && ((enum machine_mode) (varop)->mode) == shift_mode
    && (cached_num_sign_bit_copies ((((varop)->fld[0]).rtx), shift_mode, (rtx) 0, VOIDmode, 0)
        > first_count))
  {
    varop = (((varop)->fld[0]).rtx);

    signed_count = count - first_count;
    if (signed_count < 0)
      count = -signed_count, code = ASHIFT;
    else
      count = signed_count;

    continue;
  }
# 9575 "../../../kg++fe/gnu/combine.c"
       if (code == first_code)
  {
    if (((enum machine_mode) (varop)->mode) != result_mode
        && (code == ASHIFTRT || code == LSHIFTRT
     || code == ROTATE))
      break;

    count += first_count;
    varop = (((varop)->fld[0]).rtx);
    continue;
  }

       if (code == ASHIFTRT
    || (code == ROTATE && first_code == ASHIFTRT)
    || (mode_bitsize[(int) (mode)]) > (8 * 8)
    || (((enum machine_mode) (varop)->mode) != result_mode
        && (first_code == ASHIFTRT || first_code == LSHIFTRT
     || first_code == ROTATE
     || code == ROTATE)))
  break;





       mask_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (cached_nonzero_bits (varop, ((enum machine_mode) (varop)->mode), (rtx) 0, VOIDmode, 0)));

       mask_rtx
  = simplify_binary_operation (code, result_mode, mask_rtx,
          gen_rtx_CONST_INT (VOIDmode, (long long) (count)));


       if (mask_rtx == 0
    || ((enum rtx_code) (mask_rtx)->code) != CONST_INT
    || ! merge_outer_ops (&outer_op, &outer_const, AND,
     (((mask_rtx)->fld[0]).rtwint),
     result_mode, &complement_p))
  break;



       signed_count = count;
       if ((code == ASHIFTRT || code == LSHIFTRT)
    == (first_code == ASHIFTRT || first_code == LSHIFTRT))
  signed_count += first_count;
       else
  signed_count -= first_count;





       if (signed_count > 0
    && ((first_code == ROTATE && code == ASHIFT)
        || (first_code == ASHIFTRT && code == LSHIFTRT)))
  code = first_code, count = signed_count;
       else if (signed_count < 0)
  code = first_code, count = -signed_count;
       else
  count = signed_count;

       varop = (((varop)->fld[0]).rtx);
       continue;
     }





   else if (((enum rtx_code) (varop)->code) == code
     && ((enum rtx_code) ((((varop)->fld[1]).rtx))->code) != CONST_INT
     && 0 != (new
       = simplify_binary_operation (code, mode,
        (((varop)->fld[0]).rtx),
        gen_rtx_CONST_INT (VOIDmode, (long long) (count)))))
     {
       varop = gen_rtx_fmt_ee (code, mode, new, (((varop)->fld[1]).rtx));
       count = 0;
       continue;
     }
   break;

 case NOT:

   varop = gen_rtx_fmt_ee (XOR, (mode), ((((varop)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (mode_mask_array[(int) (mode)]))));

   continue;

 case IOR:
 case AND:
 case XOR:







   if (((enum rtx_code) (varop)->code) == IOR && ((enum rtx_code) ((((varop)->fld[0]).rtx))->code) == PLUS
       && ((((((varop)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64 -1])
       && (1 == 1 || 1 == -1)
       && (code == LSHIFTRT || code == ASHIFTRT)
       && count == (unsigned int)
     ((mode_bitsize[(int) (((enum machine_mode) (varop)->mode))]) - 1)
       && rtx_equal_p (((((((varop)->fld[0]).rtx))->fld[0]).rtx), (((varop)->fld[1]).rtx)))
     {
       count = 0;
       varop = gen_rtx_fmt_ee (LE, (((enum machine_mode) (varop)->mode)), ((((varop)->fld[1]).rtx)), ((const_int_rtx[64])));


       if (1 == 1 ? code == ASHIFTRT : code == LSHIFTRT)
  varop = gen_rtx_fmt_e (NEG, (((enum machine_mode) (varop)->mode)), (varop));

       continue;
     }







   if (((enum rtx_code) ((((varop)->fld[1]).rtx))->code) == CONST_INT
       && (new = simplify_binary_operation (code, result_mode,
         (((varop)->fld[1]).rtx),
         gen_rtx_CONST_INT (VOIDmode, (long long) (count)))) != 0
       && ((enum rtx_code) (new)->code) == CONST_INT
       && merge_outer_ops (&outer_op, &outer_const, ((enum rtx_code) (varop)->code),
      (((new)->fld[0]).rtwint), result_mode, &complement_p))
     {
       varop = (((varop)->fld[0]).rtx);
       continue;
     }




   {
     rtx lhs = simplify_shift_const ((rtx) 0, code, shift_mode,
         (((varop)->fld[0]).rtx), count);
     rtx rhs = simplify_shift_const ((rtx) 0, code, shift_mode,
         (((varop)->fld[1]).rtx), count);

     varop = gen_binary (((enum rtx_code) (varop)->code), shift_mode, lhs, rhs);
     varop = apply_distributive_law (varop);

     count = 0;
   }
   break;

 case EQ:




   if (code == LSHIFTRT
       && (((varop)->fld[1]).rtx) == (const_int_rtx[64])
       && ((enum machine_mode) ((((varop)->fld[0]).rtx))->mode) == result_mode
       && count == (unsigned int) ((mode_bitsize[(int) (result_mode)]) - 1)
       && (mode_bitsize[(int) (result_mode)]) <= (8 * 8)
       && ((1
     & ((long long) 1
        < ((mode_bitsize[(int) (result_mode)]) - 1))))
       && cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0) == 1
       && merge_outer_ops (&outer_op, &outer_const, XOR,
      (long long) 1, result_mode,
      &complement_p))
     {
       varop = (((varop)->fld[0]).rtx);
       count = 0;
       continue;
     }
   break;

 case NEG:


   if (code == LSHIFTRT
       && count == (unsigned int) ((mode_bitsize[(int) (result_mode)]) - 1)
       && cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0) == 1)
     {
       varop = (((varop)->fld[0]).rtx);
       count = 0;
       continue;
     }



   if (code == ASHIFT
       && merge_outer_ops (&outer_op, &outer_const, NEG,
      (long long) 0, result_mode,
      &complement_p))
     {
       varop = (((varop)->fld[0]).rtx);
       continue;
     }
   break;

 case PLUS:



   if (code == LSHIFTRT
       && count == (unsigned int) ((mode_bitsize[(int) (result_mode)]) - 1)
       && (((varop)->fld[1]).rtx) == (const_int_rtx[64 -1])
       && cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0) == 1
       && merge_outer_ops (&outer_op, &outer_const, XOR,
      (long long) 1, result_mode,
      &complement_p))
     {
       count = 0;
       varop = (((varop)->fld[0]).rtx);
       continue;
     }







   if ((code == ASHIFTRT || code == LSHIFTRT)
       && count < (8 * 8)
       && cached_nonzero_bits ((((varop)->fld[1]).rtx), result_mode, (rtx) 0, VOIDmode, 0) >> count == 0
       && (cached_nonzero_bits ((((varop)->fld[1]).rtx), result_mode, (rtx) 0, VOIDmode, 0)
    & cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0)) == 0)
     {
       varop = (((varop)->fld[0]).rtx);
       continue;
     }
   else if ((code == ASHIFTRT || code == LSHIFTRT)
     && count < (8 * 8)
     && (mode_bitsize[(int) (result_mode)]) <= (8 * 8)
     && 0 == (cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0)
       >> count)
     && 0 == (cached_nonzero_bits ((((varop)->fld[0]).rtx), result_mode, (rtx) 0, VOIDmode, 0)
       & cached_nonzero_bits ((((varop)->fld[1]).rtx), result_mode, (rtx) 0, VOIDmode, 0)))

     {
       varop = (((varop)->fld[1]).rtx);
       continue;
     }


   if (code == ASHIFT
       && ((enum rtx_code) ((((varop)->fld[1]).rtx))->code) == CONST_INT
       && (new = simplify_binary_operation (ASHIFT, result_mode,
         (((varop)->fld[1]).rtx),
         gen_rtx_CONST_INT (VOIDmode, (long long) (count)))) != 0
       && ((enum rtx_code) (new)->code) == CONST_INT
       && merge_outer_ops (&outer_op, &outer_const, PLUS,
      (((new)->fld[0]).rtwint), result_mode, &complement_p))
     {
       varop = (((varop)->fld[0]).rtx);
       continue;
     }
   break;

 case MINUS:







   if ((1 == 1 || 1 == -1)
       && ((enum rtx_code) ((((varop)->fld[0]).rtx))->code) == ASHIFTRT
       && count == (unsigned int)
     ((mode_bitsize[(int) (((enum machine_mode) (varop)->mode))]) - 1)
       && (code == LSHIFTRT || code == ASHIFTRT)
       && ((enum rtx_code) (((((((varop)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && (unsigned long long) (((((((((varop)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
   == count
       && rtx_equal_p (((((((varop)->fld[0]).rtx))->fld[0]).rtx), (((varop)->fld[1]).rtx)))
     {
       count = 0;
       varop = gen_rtx_fmt_ee (GT, (((enum machine_mode) (varop)->mode)), ((((varop)->fld[1]).rtx)), ((const_int_rtx[64])));


       if (1 == 1 ? code == ASHIFTRT : code == LSHIFTRT)
  varop = gen_rtx_fmt_e (NEG, (((enum machine_mode) (varop)->mode)), (varop));

       continue;
     }
   break;

 case TRUNCATE:


   if (code == LSHIFTRT
       && ((enum rtx_code) ((((varop)->fld[0]).rtx))->code) == LSHIFTRT
       && ((enum rtx_code) (((((((varop)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && ((((((((((varop)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
    >= ((mode_bitsize[(int) (((enum machine_mode) ((((varop)->fld[0]).rtx))->mode))])
        - (mode_bitsize[(int) (((enum machine_mode) (varop)->mode))]))))
     {
       rtx varop_inner = (((varop)->fld[0]).rtx);

       varop_inner
  = gen_rtx_fmt_ee (LSHIFTRT, (((enum machine_mode) (varop_inner)->mode)), ((((varop_inner)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (count + ((((((varop_inner)->fld[1]).rtx))->fld[0]).rtwint)))));



       varop = gen_rtx_fmt_e (TRUNCATE, (((enum machine_mode) (varop)->mode)), (varop_inner));
       count = 0;
       continue;
     }
   break;

 default:
   break;
 }

      break;
    }






  shift_mode
    = (code == ASHIFTRT || code == LSHIFTRT || code == ROTATE
       ? result_mode : mode);
# 9910 "../../../kg++fe/gnu/combine.c"
  if (x && (rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2'
      && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
      && (unsigned long long) ((((((x)->fld[1]).rtx))->fld[0]).rtwint) == count)
    const_rtx = (((x)->fld[1]).rtx);
  else
    const_rtx = gen_rtx_CONST_INT (VOIDmode, (long long) (count));

  if (x && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
      && ((enum machine_mode) ((((x)->fld[0]).rtx))->mode) == shift_mode
      && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == varop)
    varop = (((x)->fld[0]).rtx);
  else if (((enum machine_mode) (varop)->mode) != shift_mode)
    varop = gen_lowpart_for_combine (shift_mode, varop);


  if (((enum rtx_code) (varop)->code) == CLOBBER)
    return x ? x : varop;

  new = simplify_binary_operation (code, shift_mode, varop, const_rtx);
  if (new != 0)
    x = new;
  else
    x = gen_rtx_fmt_ee (code, shift_mode, varop, const_rtx);






  if (outer_op != NIL && ((enum rtx_code) (x)->code) == code
      && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT)
    x = simplify_shift_const (x, code, shift_mode, (((x)->fld[0]).rtx),
         ((((((x)->fld[1]).rtx))->fld[0]).rtwint));



  if (orig_code == LSHIFTRT && result_mode != shift_mode)
    x = simplify_and_const_int ((rtx) 0, shift_mode, x,
    mode_mask_array[(int) (result_mode)] >> orig_count);


  x = gen_lowpart_for_combine (result_mode, x);



  if (complement_p)
    x =simplify_gen_unary (NOT, result_mode, x, result_mode);

  if (outer_op != NIL)
    {
      if ((mode_bitsize[(int) (result_mode)]) < (8 * 8))
 outer_const = trunc_int_for_mode (outer_const, result_mode);

      if (outer_op == AND)
 x = simplify_and_const_int ((rtx) 0, result_mode, x, outer_const);
      else if (outer_op == SET)


 x = gen_rtx_CONST_INT (VOIDmode, (long long) (outer_const));
      else if ((rtx_class[(int) (outer_op)]) == '1')
 x = simplify_gen_unary (outer_op, result_mode, x, result_mode);
      else
 x = gen_binary (outer_op, result_mode, x, gen_rtx_CONST_INT (VOIDmode, (long long) (outer_const)));
    }

  return x;
}
# 9991 "../../../kg++fe/gnu/combine.c"
static int
recog_for_combine (pnewpat, insn, pnotes)
     rtx *pnewpat;
     rtx insn;
     rtx *pnotes;
{
  rtx pat = *pnewpat;
  int insn_code_number;
  int num_clobbers_to_add = 0;
  int i;
  rtx notes = 0;
  rtx dummy_insn;




  if (((enum rtx_code) (pat)->code) == PARALLEL)
    for (i = (((((pat)->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
      if (((enum rtx_code) ((((((pat)->fld[0]).rtvec))->elem[i]))->code) == CLOBBER
   && ((((((((pat)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx) == (const_int_rtx[64]))
 return -1;



  dummy_insn = shallow_copy_rtx (insn);
  (((dummy_insn)->fld[5]).rtx) = pat;
  (((dummy_insn)->fld[8]).rtx) = 0;

  insn_code_number = recog (pat, dummy_insn, &num_clobbers_to_add);






  if (insn_code_number < 0 && ! check_asm_operands (pat)
      && ((enum rtx_code) (pat)->code) == PARALLEL)
    {
      int pos;

      for (pos = 0, i = 0; i < (((((pat)->fld[0]).rtvec))->num_elem); i++)
 if (((enum rtx_code) ((((((pat)->fld[0]).rtvec))->elem[i]))->code) != CLOBBER)
   {
     if (i != pos)
       do_SUBST(&((((((pat)->fld[0]).rtvec))->elem[pos])), ((((((pat)->fld[0]).rtvec))->elem[i])));
     pos++;
   }

      do_SUBST_INT(&((((((pat)->fld[0]).rtvec))->num_elem)), (pos));

      if (pos == 1)
 pat = (((((pat)->fld[0]).rtvec))->elem[0]);

      (((dummy_insn)->fld[5]).rtx) = pat;
      insn_code_number = recog (pat, dummy_insn, &num_clobbers_to_add);
    }


  if (insn_code_number < 0 && ((enum rtx_code) (pat)->code) == SET && set_noop_p (pat))
    insn_code_number = 2147483647, num_clobbers_to_add = 0;



  if (num_clobbers_to_add)
    {
      rtx newpat = gen_rtx_fmt_E (PARALLEL, (VOIDmode), (rtvec_alloc (((enum rtx_code) (pat)->code) == PARALLEL ? ((((((pat)->fld[0]).rtvec))->num_elem) + num_clobbers_to_add) : num_clobbers_to_add + 1)));





      if (((enum rtx_code) (pat)->code) == PARALLEL)
 for (i = 0; i < (((((pat)->fld[0]).rtvec))->num_elem); i++)
   (((((newpat)->fld[0]).rtvec))->elem[i]) = (((((pat)->fld[0]).rtvec))->elem[i]);
      else
 (((((newpat)->fld[0]).rtvec))->elem[0]) = pat;

      add_clobbers (newpat, insn_code_number);

      for (i = (((((newpat)->fld[0]).rtvec))->num_elem) - num_clobbers_to_add;
    i < (((((newpat)->fld[0]).rtvec))->num_elem); i++)
 {
   if (((enum rtx_code) (((((((((newpat)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx))->code) == REG
       && ! reg_dead_at_p (((((((((newpat)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx), insn))
     return -1;
   notes = gen_rtx_fmt_ee (EXPR_LIST, (REG_UNUSED), (((((((((newpat)->fld[0]).rtvec))->elem[i]))->fld[0]).rtx)), (notes));

 }
      pat = newpat;
    }

  *pnewpat = pat;
  *pnotes = notes;

  return insn_code_number;
}
# 10099 "../../../kg++fe/gnu/combine.c"
static rtx
gen_lowpart_for_combine (mode, x)
     enum machine_mode mode;
     rtx x;
{
  rtx result;

  if (((enum machine_mode) (x)->mode) == mode)
    return x;




  if ((mode_size[(int) (mode)]) > ((target_flags & 0x00002000) ? 8 : 4)
      && ! ((((enum machine_mode) (x)->mode) == VOIDmode
      && (((enum rtx_code) (x)->code) == CONST_INT
   || ((enum rtx_code) (x)->code) == CONST_DOUBLE))
     || (mode_size[(int) (((enum machine_mode) (x)->mode))]) == (mode_size[(int) (mode)])))
    return gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));




  if (((enum rtx_code) (x)->code) == SUBREG && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
    {
      x = (((x)->fld[0]).rtx);
      if (((enum machine_mode) (x)->mode) == mode)
 return x;
    }

  result = gen_lowpart_common (mode, x);

  if (result != 0
      && ((enum rtx_code) (result)->code) == SUBREG
      && ((enum rtx_code) ((((result)->fld[0]).rtx))->code) == REG
      && ((((((result)->fld[0]).rtx))->fld[0]).rtuint) >= 176)
    bitmap_set_bit (&subregs_of_mode, ((((((result)->fld[0]).rtx))->fld[0]).rtuint)
          * MAX_MACHINE_MODE
          + ((enum machine_mode) (result)->mode));


  if (result)
    return result;

  if (((enum rtx_code) (x)->code) == MEM)
    {
      int offset = 0;



      if ((((x))->volatil) || mode_dependent_address_p ((((x)->fld[0]).rtx)))
 return gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));




      if ((mode_size[(int) (((enum machine_mode) (x)->mode))]) < (mode_size[(int) (mode)]))
 return gen_rtx_SUBREG (mode, x, 0);

      if (((target_flags & 0x00010000) != 0))
 offset = ((((mode_size[(int) (((enum machine_mode) (x)->mode))])) > (((target_flags & 0x00002000) ? 8 : 4)) ? ((mode_size[(int) (((enum machine_mode) (x)->mode))])) : (((target_flags & 0x00002000) ? 8 : 4)))
    - (((mode_size[(int) (mode)])) > (((target_flags & 0x00002000) ? 8 : 4)) ? ((mode_size[(int) (mode)])) : (((target_flags & 0x00002000) ? 8 : 4))));

      if (((target_flags & 0x00010000) != 0))
 {


   offset -= (((((target_flags & 0x00002000) ? 8 : 4)) < ((mode_size[(int) (mode)])) ? (((target_flags & 0x00002000) ? 8 : 4)) : ((mode_size[(int) (mode)])))
       - ((((target_flags & 0x00002000) ? 8 : 4)) < ((mode_size[(int) (((enum machine_mode) (x)->mode))])) ? (((target_flags & 0x00002000) ? 8 : 4)) : ((mode_size[(int) (((enum machine_mode) (x)->mode))]))));
 }

      return adjust_address_1 (x, mode, offset, 0, 1);
    }



  else if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '<')
    return gen_rtx_fmt_ee (((enum rtx_code) (x)->code), mode, (((x)->fld[0]).rtx), (((x)->fld[1]).rtx));




  else
    {
      int offset = 0;
      rtx res;
      enum machine_mode sub_mode = ((enum machine_mode) (x)->mode);

      offset = subreg_lowpart_offset (mode, sub_mode);
      if (sub_mode == VOIDmode)
 {
   sub_mode = int_mode_for_mode (mode);
   x = gen_lowpart_common (sub_mode, x);
 }
      res = simplify_gen_subreg (mode, x, sub_mode, offset);
      if (res)
 return res;
      return gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));
    }
}




static rtx
gen_binary (code, mode, op0, op1)
     enum rtx_code code;
     enum machine_mode mode;
     rtx op0, op1;
{
  rtx result;
  rtx tem;

  if (((enum rtx_code) (op0)->code) == CLOBBER)
    return op0;
  else if (((enum rtx_code) (op1)->code) == CLOBBER)
    return op1;

  if ((rtx_class[(int) (code)]) == 'c'
      && swap_commutative_operands_p (op0, op1))
    tem = op0, op0 = op1, op1 = tem;

  if ((rtx_class[(int) (code)]) == '<')
    {
      enum machine_mode op_mode = ((enum machine_mode) (op0)->mode);



      if (((enum rtx_code) (op0)->code) == COMPARE && op1 == (const_int_rtx[64]))
 {
   op1 = (((op0)->fld[1]).rtx);
   op0 = (((op0)->fld[0]).rtx);
   op_mode = ((enum machine_mode) (op0)->mode);
 }

      if (op_mode == VOIDmode)
 op_mode = ((enum machine_mode) (op1)->mode);
      result = simplify_relational_operation (code, op_mode, op0, op1);
    }
  else
    result = simplify_binary_operation (code, mode, op0, op1);

  if (result)
    return result;


  if ((rtx_class[(int) (code)]) == 'c'
      && swap_commutative_operands_p (op0, op1))
    return gen_rtx_fmt_ee (code, mode, op1, op0);



  else if (code == AND && ((enum rtx_code) (op1)->code) == CONST_INT
    && (mode_bitsize[(int) (mode)]) <= (8 * 8)
    && (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) & ~(((op1)->fld[0]).rtwint)) == 0)
    return op0;

  return gen_rtx_fmt_ee (code, mode, op0, op1);
}
# 10270 "../../../kg++fe/gnu/combine.c"
static enum rtx_code
simplify_comparison (code, pop0, pop1)
     enum rtx_code code;
     rtx *pop0;
     rtx *pop1;
{
  rtx op0 = *pop0;
  rtx op1 = *pop1;
  rtx tem, tem1;
  int i;
  enum machine_mode mode, tmode;


  while (1)
    {
# 10317 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) (op0)->code) == ((enum rtx_code) (op1)->code)
   && (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) <= (8 * 8)
   && ((((enum rtx_code) (op0)->code) == ROTATE && (code == NE || code == EQ))
       || ((((enum rtx_code) (op0)->code) == LSHIFTRT || ((enum rtx_code) (op0)->code) == ASHIFT)
    && (code != GT && code != LT && code != GE && code != LE))
       || (((enum rtx_code) (op0)->code) == ASHIFTRT
    && (code != GTU && code != LTU
        && code != GEU && code != LEU)))
   && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
   && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
   && (((op0)->fld[1]).rtx) == (((op1)->fld[1]).rtx))
 {
   enum machine_mode mode = ((enum machine_mode) (op0)->mode);
   unsigned long long mask = mode_mask_array[(int) (mode)];
   int shift_count = ((((((op0)->fld[1]).rtx))->fld[0]).rtwint);

   if (((enum rtx_code) (op0)->code) == LSHIFTRT || ((enum rtx_code) (op0)->code) == ASHIFTRT)
     mask &= (mask >> shift_count) << shift_count;
   else if (((enum rtx_code) (op0)->code) == ASHIFT)
     mask = (mask & (mask << shift_count)) >> shift_count;

   if ((cached_nonzero_bits ((((op0)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) & ~mask) == 0
       && (cached_nonzero_bits ((((op1)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0) & ~mask) == 0)
     op0 = (((op0)->fld[0]).rtx), op1 = (((op1)->fld[0]).rtx);
   else
     break;
 }
# 10359 "../../../kg++fe/gnu/combine.c"
      else if (((enum rtx_code) (op0)->code) == AND && ((enum rtx_code) (op1)->code) == AND
        && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
        && ((enum rtx_code) ((((op1)->fld[1]).rtx))->code) == CONST_INT)
 {
   rtx inner_op0 = (((op0)->fld[0]).rtx);
   rtx inner_op1 = (((op1)->fld[0]).rtx);
   long long c0 = ((((((op0)->fld[1]).rtx))->fld[0]).rtwint);
   long long c1 = ((((((op1)->fld[1]).rtx))->fld[0]).rtwint);
   int changed = 0;

   if (((enum rtx_code) (inner_op0)->code) == SUBREG && ((enum rtx_code) (inner_op1)->code) == SUBREG
       && ((mode_size[(int) (((enum machine_mode) (inner_op0)->mode))])
    > (mode_size[(int) (((enum machine_mode) ((((inner_op0)->fld[0]).rtx))->mode))]))
       && (((enum machine_mode) ((((inner_op0)->fld[0]).rtx))->mode)
    == ((enum machine_mode) ((((inner_op1)->fld[0]).rtx))->mode))
       && ((mode_bitsize[(int) (((enum machine_mode) ((((inner_op0)->fld[0]).rtx))->mode))])
    <= (8 * 8))
       && (0 == ((~c0) & cached_nonzero_bits ((((inner_op0)->fld[0]).rtx), ((enum machine_mode) ((((inner_op0)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)))

       && (0 == ((~c1) & cached_nonzero_bits ((((inner_op1)->fld[0]).rtx), ((enum machine_mode) ((((inner_op1)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0))))

     {
       op0 = (((inner_op0)->fld[0]).rtx);
       op1 = (((inner_op1)->fld[0]).rtx);



       code = unsigned_condition (code);

       changed = 1;
     }

   else if (c0 == c1)
     for (tmode = class_narrowest_mode[(int) ((mode_class[(int) (((enum machine_mode) (op0)->mode))]))];

   tmode != ((enum machine_mode) (op0)->mode); tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
       if ((unsigned long long) c0 == mode_mask_array[(int) (tmode)])
  {
    op0 = gen_lowpart_for_combine (tmode, inner_op0);
    op1 = gen_lowpart_for_combine (tmode, inner_op1);
    code = unsigned_condition (code);
    changed = 1;
    break;
  }

   if (! changed)
     break;
 }




      else if ((((enum rtx_code) (op0)->code) == NOT && ((enum rtx_code) (op1)->code) == NOT)
        || (((enum rtx_code) (op0)->code) == NEG && ((enum rtx_code) (op1)->code) == NEG
     && (code == EQ || code == NE)))
 op0 = (((op0)->fld[0]).rtx), op1 = (((op1)->fld[0]).rtx), code = swap_condition (code);

      else
 break;
    }




  if (swap_commutative_operands_p (op0, op1))
    {
      tem = op0, op0 = op1, op1 = tem;
      code = swap_condition (code);
    }






  while (((enum rtx_code) (op1)->code) == CONST_INT)
    {
      enum machine_mode mode = ((enum machine_mode) (op0)->mode);
      unsigned int mode_width = (mode_bitsize[(int) (mode)]);
      unsigned long long mask = mode_mask_array[(int) (mode)];
      int equality_comparison_p;
      int sign_bit_comparison_p;
      int unsigned_comparison_p;
      long long const_op;






      if ((mode_class[(int) (mode)]) != MODE_INT
   && ! (mode == VOIDmode
  && (((enum rtx_code) (op0)->code) == COMPARE
      || (rtx_class[(int) (((enum rtx_code) (op0)->code))]) == '<')))
 break;



      const_op = (((op1)->fld[0]).rtwint);
      if (mode != VOIDmode)
 const_op = trunc_int_for_mode (const_op, mode);
      op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));





      if (const_op
   && (code == EQ || code == NE || code == GE || code == GEU
       || code == LT || code == LTU)
   && mode_width <= (8 * 8)
   && exact_log2_wide ((unsigned long long) (const_op)) >= 0
   && cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0) == (unsigned long long) const_op)
 {
   code = (code == EQ || code == GE || code == GEU ? NE : EQ);
   op1 = (const_int_rtx[64]), const_op = 0;
 }




      if (const_op == -1
   && (code == EQ || code == NE || code == GT || code == LE
       || code == GEU || code == LTU)
   && cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0) == mode_width)
 {
   code = (code == EQ || code == LE || code == GEU ? NE : EQ);
   op1 = (const_int_rtx[64]), const_op = 0;
 }





      switch (code)
 {
 case LT:

   if (const_op > 0)
     {
       const_op -= 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = LE;

     }
   else
     break;

 case LE:

   if (const_op < 0)
     {
       const_op += 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = LT;
     }



   else if (const_op == 0
     && mode_width <= (8 * 8)
     && (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0)
         & ((long long) 1 << (mode_width - 1))) == 0)
     code = EQ;
   break;

 case GE:

   if (const_op > 0)
     {
       const_op -= 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = GT;

     }
   else
     break;

 case GT:

   if (const_op < 0)
     {
       const_op += 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = GE;
     }



   else if (const_op == 0
     && mode_width <= (8 * 8)
     && (cached_nonzero_bits (op0, mode, (rtx) 0, VOIDmode, 0)
         & ((long long) 1 << (mode_width - 1))) == 0)
     code = NE;
   break;

 case LTU:

   if (const_op > 0)
     {
       const_op -= 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = LEU;

     }


   else if ((mode_width <= (8 * 8))
     && (const_op == (long long) 1 << (mode_width - 1)))
     {
       const_op = 0, op1 = (const_int_rtx[64]);
       code = GE;
       break;
     }
   else
     break;

 case LEU:

   if (const_op == 0)
     code = EQ;


   else if ((mode_width <= (8 * 8))
     && (const_op == ((long long) 1 << (mode_width - 1)) - 1))
     {
       const_op = 0, op1 = (const_int_rtx[64]);
       code = GE;
     }
   break;

 case GEU:

   if (const_op > 1)
     {
       const_op -= 1;
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       code = GTU;

     }


   else if ((mode_width <= (8 * 8))
     && (const_op == (long long) 1 << (mode_width - 1)))
     {
       const_op = 0, op1 = (const_int_rtx[64]);
       code = LT;
       break;
     }
   else
     break;

 case GTU:

   if (const_op == 0)
     code = NE;


   else if ((mode_width <= (8 * 8))
      && (const_op == ((long long) 1 << (mode_width - 1)) - 1))
     {
       const_op = 0, op1 = (const_int_rtx[64]);
       code = LT;
     }
   break;

 default:
   break;
 }



      equality_comparison_p = (code == EQ || code == NE);
      sign_bit_comparison_p = ((code == LT || code == GE) && const_op == 0);
      unsigned_comparison_p = (code == LTU || code == LEU || code == GTU
          || code == GEU);



      if (sign_bit_comparison_p
   && (mode_bitsize[(int) (mode)]) <= (8 * 8))
 op0 = force_to_mode (op0, mode,
        ((long long) 1
         << ((mode_bitsize[(int) (mode)]) - 1)),
        (rtx) 0, 0);





      switch (((enum rtx_code) (op0)->code))
 {
 case ZERO_EXTRACT:





   if (((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == CONST_INT
       && (((op0)->fld[1]).rtx) == (const_int_rtx[64 +1])
       && equality_comparison_p && const_op == 0
       && (i = exact_log2_wide ((unsigned long long) (((((((op0)->fld[0]).rtx))->fld[0]).rtwint)))) >= 0)
     {
       if (0)
  {
    enum machine_mode new_mode
      = mode_for_extraction (EP_extzv, 1);
    if (new_mode == MAX_MACHINE_MODE)
      i = (8 * ((target_flags & 0x00002000) ? 8 : 4)) - 1 - i;
    else
      {
        mode = new_mode;
        i = ((mode_bitsize[(int) (mode)]) - 1 - i);
      }
  }

       op0 = (((op0)->fld[2]).rtx);
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (i));
       const_op = i;


       code = reverse_condition (code);
       continue;
     }



 case SIGN_EXTRACT:
   tem = expand_compound_operation (op0);
   if (tem != op0)
     {
       op0 = tem;
       continue;
     }
   break;

 case NOT:

   if (equality_comparison_p
       && (tem = simplify_unary_operation (NOT, mode, op1, mode)) != 0)
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }



   if (sign_bit_comparison_p)
     {
       op0 = (((op0)->fld[0]).rtx);
       code = (code == GE ? LT : GE);
       continue;
     }
   break;

 case NEG:

   if (equality_comparison_p
       && (tem = simplify_unary_operation (NEG, mode, op1, mode)) != 0)
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }


   if (const_op != 0)
     break;




   if (sign_bit_comparison_p
       && (((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == ABS
    || (mode_width <= (8 * 8)
        && (cached_nonzero_bits ((((op0)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
     & ((long long) 1 << (mode_width - 1))) == 0)))
     {
       op0 = (((op0)->fld[0]).rtx);
       code = (code == LT ? NE : EQ);
       continue;
     }



   if (cached_num_sign_bit_copies (op0, mode, (rtx) 0, VOIDmode, 0) >= 2)
     {
       op0 = (((op0)->fld[0]).rtx);
       code = swap_condition (code);
       continue;
     }
   break;

 case ROTATE:


   if (equality_comparison_p && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && (tem = simplify_binary_operation (ROTATERT, mode,
         op1, (((op0)->fld[1]).rtx))) != 0)
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }




   if (const_op == 0 && sign_bit_comparison_p
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && mode_width <= (8 * 8))
     {
       op0 = simplify_and_const_int ((rtx) 0, mode, (((op0)->fld[0]).rtx),
         ((long long) 1
          << (mode_width - 1
       - ((((((op0)->fld[1]).rtx))->fld[0]).rtwint))));
       code = (code == LT ? NE : EQ);
       continue;
     }



 case ABS:

   if (const_op == 0 && equality_comparison_p)
     {
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }
   break;

 case SIGN_EXTEND:




   if (! unsigned_comparison_p
       && ((mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))])
    <= (8 * 8))
       && ((unsigned long long) const_op
    < (((unsigned long long) 1
        << ((mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]) - 1)))))
     {
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }
   break;

 case SUBREG:
# 10818 "../../../kg++fe/gnu/combine.c"
   if (mode_width <= (8 * 8)
       && subreg_lowpart_p (op0)
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == PLUS
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && (((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) < 0
       && (-(((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
    < (long long) (mode_mask_array[(int) (mode)] / 2))
       && (unsigned long long) const_op < mode_mask_array[(int) (mode)] / 2
       && (0 == (cached_nonzero_bits (((((((op0)->fld[0]).rtx))->fld[0]).rtx), ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)

   & ~mode_mask_array[(int) (mode)])
    || (cached_num_sign_bit_copies (((((((op0)->fld[0]).rtx))->fld[0]).rtx), ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)

        > (unsigned int)
   ((mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))])
    - (mode_bitsize[(int) (mode)])))))
     {
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }



   if (subreg_lowpart_p (op0)
       && (mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]) < mode_width)
                        ;
   else
     break;



 case ZERO_EXTEND:
   if ((unsigned_comparison_p || equality_comparison_p)
       && ((mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))])
    <= (8 * 8))
       && ((unsigned long long) const_op
    < mode_mask_array[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]))
     {
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }
   break;

 case PLUS:



   if (equality_comparison_p
       && 0 != (tem = simplify_binary_operation (MINUS, mode,
       op1, (((op0)->fld[1]).rtx))))
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }


   if (const_op == 0 && (((op0)->fld[1]).rtx) == (const_int_rtx[64 -1])
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == ABS && sign_bit_comparison_p)
     {
       op0 = ((((((op0)->fld[0]).rtx))->fld[0]).rtx);
       code = (code == LT ? EQ : NE);
       continue;
     }
   break;

 case MINUS:
# 10894 "../../../kg++fe/gnu/combine.c"
   if (equality_comparison_p
       && 0 != (tem = simplify_binary_operation (PLUS, mode,
       (((op0)->fld[1]).rtx), op1)))
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }

   if (equality_comparison_p
       && 0 != (tem = simplify_binary_operation (MINUS, mode,
       (((op0)->fld[0]).rtx), op1)))
     {
       op0 = (((op0)->fld[1]).rtx);
       op1 = tem;
       continue;
     }



   if (sign_bit_comparison_p && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == ASHIFTRT
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && (unsigned long long) (((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint)
   == mode_width - 1
       && rtx_equal_p (((((((op0)->fld[0]).rtx))->fld[0]).rtx), (((op0)->fld[1]).rtx)))
     {
       op0 = (((op0)->fld[1]).rtx);
       code = (code == GE ? LE : GT);
       continue;
     }
   break;

 case XOR:


   if (equality_comparison_p
       && 0 != (tem = simplify_binary_operation (XOR, mode,
       (((op0)->fld[1]).rtx), op1)))
     {
       op0 = (((op0)->fld[0]).rtx);
       op1 = tem;
       continue;
     }
   break;

 case EQ: case NE:
 case UNEQ: case LTGT:
 case LT: case LTU: case UNLT: case LE: case LEU: case UNLE:
 case GT: case GTU: case UNGT: case GE: case GEU: case UNGE:
        case UNORDERED: case ORDERED:


   if (const_op != 0



       || (mode_class[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]) == MODE_CC)
     break;


   if (((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == COMPARE)
     tem = ((((((op0)->fld[0]).rtx))->fld[0]).rtx), tem1 = ((((((op0)->fld[0]).rtx))->fld[1]).rtx);
   else
     tem = (((op0)->fld[0]).rtx), tem1 = (((op0)->fld[1]).rtx);



   if (code == NE || code == EQ
       || ((mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) <= (8 * 8)
    && (mode_class[(int) (((enum machine_mode) (op0)->mode))]) == MODE_INT
    && (1
        & (((long long) 1
     << ((mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) - 1))))
    && (code == LT || code == GE)))
     {
       enum rtx_code new_code;
       if (code == LT || code == NE)
  new_code = ((enum rtx_code) (op0)->code);
       else
  new_code = combine_reversed_comparison_code (op0);

       if (new_code != UNKNOWN)
  {
    code = new_code;
    op0 = tem;
    op1 = tem1;
    continue;
  }
     }
   break;

 case IOR:


   if (sign_bit_comparison_p && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == PLUS
       && ((((((op0)->fld[0]).rtx))->fld[1]).rtx) == (const_int_rtx[64 -1])
       && rtx_equal_p (((((((op0)->fld[0]).rtx))->fld[0]).rtx), (((op0)->fld[1]).rtx)))
     {
       op0 = (((op0)->fld[1]).rtx);
       code = (code == GE ? GT : LE);
       continue;
     }
   break;

 case AND:


   if (const_op == 0 && equality_comparison_p
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == ASHIFT
       && ((((((op0)->fld[0]).rtx))->fld[0]).rtx) == (const_int_rtx[64 +1]))
     {
       op0 = simplify_and_const_int
  (op0, mode, gen_rtx_fmt_ee (LSHIFTRT, (mode), ((((op0)->fld[1]).rtx)), (((((((op0)->fld[0]).rtx))->fld[1]).rtx))),


   (long long) 1);
       continue;
     }




   if (const_op == 0 && equality_comparison_p
       && mode_width <= (8 * 8)
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == LSHIFTRT
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && (((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) >= 0
       && (((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8))
     {
       mask = ((((((((op0)->fld[1]).rtx))->fld[0]).rtwint) & mode_mask_array[(int) (mode)])
        << (((((((((op0)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint));
       if ((~1 & mask) == 0
    && ((rtx_class[(int) (((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[0]).rtx))->code))]) == '<'
        || ((tem = get_last_value (((((((op0)->fld[0]).rtx))->fld[0]).rtx))) != 0
     && (rtx_class[(int) (((enum rtx_code) (tem)->code))]) == '<')))
  {
    op0 = ((((((op0)->fld[0]).rtx))->fld[0]).rtx);
    continue;
  }
     }




   if (equality_comparison_p
       && const_op == 0
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && mode_width <= (8 * 8)
       && ((((((((op0)->fld[1]).rtx))->fld[0]).rtwint) & mode_mask_array[(int) (mode)])
    == (unsigned long long) 1 << (mode_width - 1)))
     {
       op0 = (((op0)->fld[0]).rtx);
       code = (code == EQ ? GE : LT);
       continue;
     }





   if ((equality_comparison_p || unsigned_comparison_p)
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && (i = exact_log2_wide ((unsigned long long) ((((((((op0)->fld[1]).rtx))->fld[0]).rtwint) & mode_mask_array[(int) (mode)]) + 1))) >= 0


       && const_op >> i == 0
       && (tmode = mode_for_size (i, MODE_INT, 1)) != BLKmode)
     {
       op0 = gen_lowpart_for_combine (tmode, (((op0)->fld[0]).rtx));
       continue;
     }





   if (((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == SUBREG)
     {
       unsigned long long c1;
       tmode = ((enum machine_mode) (((((((op0)->fld[0]).rtx))->fld[0]).rtx))->mode);


       if (((mode_class[(int) (tmode)]) == MODE_INT || (mode_class[(int) (tmode)]) == MODE_PARTIAL_INT)







    && (0

        || (mode_width > (mode_bitsize[(int) (tmode)])
     && mode_width <= (8 * ((target_flags & 0x00002000) ? 8 : 4)))

        || (mode_width <= (mode_bitsize[(int) (tmode)])
     && subreg_lowpart_p ((((op0)->fld[0]).rtx))))
    && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
    && mode_width <= (8 * 8)
    && (mode_bitsize[(int) (tmode)]) <= (8 * 8)
    && ((c1 = ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)) & ~mask) == 0
    && (c1 & ~mode_mask_array[(int) (tmode)]) == 0
    && c1 != mask
    && c1 != mode_mask_array[(int) (tmode)])
  {
    op0 = gen_binary (AND, tmode,
        ((((((op0)->fld[0]).rtx))->fld[0]).rtx),
        gen_int_mode (c1, tmode));
    op0 = gen_lowpart_for_combine (mode, op0);
    continue;
  }
     }



   if (const_op == 0 && equality_comparison_p
       && (((op0)->fld[1]).rtx) == (const_int_rtx[64 +1])
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == LSHIFTRT
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[0]).rtx))->code) == NOT)
     {
       op0 = simplify_and_const_int
  (op0, mode,
   gen_rtx_fmt_ee (LSHIFTRT, (mode), ((((((((((op0)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx)), (((((((op0)->fld[0]).rtx))->fld[1]).rtx))),

   (long long) 1);
       code = (code == NE ? EQ : NE);
       continue;
     }
   break;

 case ASHIFT:





   if (((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) >= 0
       && ((((((((op0)->fld[1]).rtx))->fld[0]).rtwint) + ! equality_comparison_p)
    < (8 * 8))
       && ((const_op
     & (((long long) 1 << ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)) - 1)) == 0)
       && mode_width <= (8 * 8)
       && (cached_nonzero_bits ((((op0)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
    & ~(mask >> (((((((op0)->fld[1]).rtx))->fld[0]).rtwint)
          + ! equality_comparison_p))) == 0)
     {


       unsigned long long temp = const_op & mode_mask_array[(int) (mode)];

       temp >>= ((((((op0)->fld[1]).rtx))->fld[0]).rtwint);
       op1 = gen_int_mode (temp, mode);
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }



   if (sign_bit_comparison_p && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && mode_width <= (8 * 8))
     {
       op0 = simplify_and_const_int ((rtx) 0, mode, (((op0)->fld[0]).rtx),
         ((long long) 1
          << (mode_width - 1
       - ((((((op0)->fld[1]).rtx))->fld[0]).rtwint))));
       code = (code == LT ? NE : EQ);
       continue;
     }




   if (const_op == 0 && equality_comparison_p
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && (unsigned long long) ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)
   == mode_width - 1)
     {
       op0 = simplify_and_const_int ((rtx) 0, mode, (((op0)->fld[0]).rtx),
         (long long) 1);
       continue;
     }
   break;

 case ASHIFTRT:


   if (equality_comparison_p && const_op == 0
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT)
     {
       op0 = simplify_shift_const ((rtx) 0, LSHIFTRT, mode,
       (((op0)->fld[0]).rtx),
       ((((((op0)->fld[1]).rtx))->fld[0]).rtwint));
       continue;
     }



   if (! unsigned_comparison_p
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == ASHIFT
       && (((op0)->fld[1]).rtx) == ((((((op0)->fld[0]).rtx))->fld[1]).rtx)
       && (tmode = mode_for_size (mode_width - ((((((op0)->fld[1]).rtx))->fld[0]).rtwint),
      MODE_INT, 1)) != BLKmode
       && (((unsigned long long) const_op
     + (mode_mask_array[(int) (tmode)] >> 1) + 1)
    <= mode_mask_array[(int) (tmode)]))
     {
       op0 = gen_lowpart_for_combine (tmode, ((((((op0)->fld[0]).rtx))->fld[0]).rtx));
       continue;
     }




   if (! unsigned_comparison_p
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == PLUS
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT
       && ((enum rtx_code) (((((((op0)->fld[0]).rtx))->fld[0]).rtx))->code) == ASHIFT
       && (((op0)->fld[1]).rtx) == (((((((((op0)->fld[0]).rtx))->fld[0]).rtx))->fld[1]).rtx)
       && (tmode = mode_for_size (mode_width - ((((((op0)->fld[1]).rtx))->fld[0]).rtwint),
      MODE_INT, 1)) != BLKmode
       && (((unsigned long long) const_op
     + (mode_mask_array[(int) (tmode)] >> 1) + 1)
    <= mode_mask_array[(int) (tmode)]))
     {
       rtx inner = (((((((((op0)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx);
       rtx add_const = ((((((op0)->fld[0]).rtx))->fld[1]).rtx);
       rtx new_const = gen_binary (ASHIFTRT, ((enum machine_mode) (op0)->mode), add_const,
       (((op0)->fld[1]).rtx));

       op0 = gen_binary (PLUS, tmode,
    gen_lowpart_for_combine (tmode, inner),
    new_const);
       continue;
     }


 case LSHIFTRT:




   if (((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) >= 0
       && ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) < (8 * 8)
       && mode_width <= (8 * 8)
       && (cached_nonzero_bits ((((op0)->fld[0]).rtx), mode, (rtx) 0, VOIDmode, 0)
    & (((long long) 1 << ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)) - 1)) == 0
       && (((unsigned long long) const_op
     + (((enum rtx_code) (op0)->code) != LSHIFTRT
        ? ((mode_mask_array[(int) (mode)] >> ((((((op0)->fld[1]).rtx))->fld[0]).rtwint) >> 1)
    + 1)
        : 0))
    <= mode_mask_array[(int) (mode)] >> ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)))
     {


       if (((enum rtx_code) (op0)->code) == LSHIFTRT)
  code = unsigned_condition (code);

       const_op <<= ((((((op0)->fld[1]).rtx))->fld[0]).rtwint);
       op1 = gen_rtx_CONST_INT (VOIDmode, (long long) (const_op));
       op0 = (((op0)->fld[0]).rtx);
       continue;
     }



   if (const_op == 0
       && (equality_comparison_p || sign_bit_comparison_p)
       && ((enum rtx_code) ((((op0)->fld[1]).rtx))->code) == CONST_INT
       && (unsigned long long) ((((((op0)->fld[1]).rtx))->fld[0]).rtwint)
   == mode_width - 1)
     {
       op0 = (((op0)->fld[0]).rtx);
       code = (code == NE || code == GT ? LT : GE);
       continue;
     }
   break;

 default:
   break;
 }

      break;
    }
# 11306 "../../../kg++fe/gnu/combine.c"
  op0 = make_compound_operation (op0, op1 == (const_int_rtx[64]) ? COMPARE : SET);
  op1 = make_compound_operation (op1, SET);

  if (((enum rtx_code) (op0)->code) == SUBREG && subreg_lowpart_p (op0)


      && ((enum rtx_code) ((((op0)->fld[0]).rtx))->code) == REG
      && (mode_class[(int) (((enum machine_mode) (op0)->mode))]) == MODE_INT
      && (mode_class[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]) == MODE_INT
      && (code == NE || code == EQ))
    {
      if ((mode_size[(int) (((enum machine_mode) (op0)->mode))])
   > (mode_size[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))]))
 {
   op0 = (((op0)->fld[0]).rtx);
   op1 = gen_lowpart_for_combine (((enum machine_mode) (op0)->mode), op1);
 }
      else if (((mode_bitsize[(int) (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode))])
  <= (8 * 8))
        && (cached_nonzero_bits ((((op0)->fld[0]).rtx), ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)

     & ~mode_mask_array[(int) (((enum machine_mode) (op0)->mode))]) == 0)
 {
   tem = gen_lowpart_for_combine (((enum machine_mode) ((((op0)->fld[0]).rtx))->mode), op1);

   if ((cached_nonzero_bits (tem, ((enum machine_mode) ((((op0)->fld[0]).rtx))->mode), (rtx) 0, VOIDmode, 0)
        & ~mode_mask_array[(int) (((enum machine_mode) (op0)->mode))]) == 0)
     op0 = (((op0)->fld[0]).rtx), op1 = tem;
 }
    }







  mode = ((enum machine_mode) (op0)->mode);
  if (mode != VOIDmode && (mode_class[(int) (mode)]) == MODE_INT
      && (mode_size[(int) (mode)]) < ((target_flags & 0x00002000) ? 8 : 4)
      && ! have_insn_for (COMPARE, mode))
    for (tmode = ((enum machine_mode)mode_wider_mode[(int) (mode)]);
  (tmode != VOIDmode
   && (mode_bitsize[(int) (tmode)]) <= (8 * 8));
  tmode = ((enum machine_mode)mode_wider_mode[(int) (tmode)]))
      if (have_insn_for (COMPARE, tmode))
 {
   int zero_extended;





   zero_extended = ((code == EQ || code == NE
       || code == GEU || code == GTU
       || code == LEU || code == LTU)
      && (cached_nonzero_bits (op0, tmode, (rtx) 0, VOIDmode, 0)
          & ~mode_mask_array[(int) (mode)]) == 0
      && ((((enum rtx_code) (op1)->code) == CONST_INT
    || (cached_nonzero_bits (op1, tmode, (rtx) 0, VOIDmode, 0)
        & ~mode_mask_array[(int) (mode)]) == 0)));

   if (zero_extended
       || ((cached_num_sign_bit_copies (op0, tmode, (rtx) 0, VOIDmode, 0)
     > (unsigned int) ((mode_bitsize[(int) (tmode)])
         - (mode_bitsize[(int) (mode)])))
    && (cached_num_sign_bit_copies (op1, tmode, (rtx) 0, VOIDmode, 0)
        > (unsigned int) ((mode_bitsize[(int) (tmode)])
     - (mode_bitsize[(int) (mode)])))))
     {


       if (((enum rtx_code) (op0)->code) == AND
    && !have_insn_for (AND, mode))
  op0 = gen_binary (AND, tmode,
      gen_lowpart_for_combine (tmode,
          (((op0)->fld[0]).rtx)),
      gen_lowpart_for_combine (tmode,
          (((op0)->fld[1]).rtx)));

       op0 = gen_lowpart_for_combine (tmode, op0);
       if (zero_extended && ((enum rtx_code) (op1)->code) == CONST_INT)
  op1 = gen_rtx_CONST_INT (VOIDmode, (long long) ((((op1)->fld[0]).rtwint) & mode_mask_array[(int) (mode)]));
       op1 = gen_lowpart_for_combine (tmode, op1);
       break;
     }




   if (op1 == (const_int_rtx[64]) && (code == LT || code == GE)
       && (mode_bitsize[(int) (mode)]) <= (8 * 8))
     {
       op0 = gen_binary (AND, tmode,
    gen_lowpart_for_combine (tmode, op0),
    gen_rtx_CONST_INT (VOIDmode, (long long) ((long long) 1 << ((mode_bitsize[(int) (mode)]) - 1))));

       code = (code == LT) ? NE : EQ;
       break;
     }
 }







  *pop0 = op0;
  *pop1 = op1;

  return code;
}



static enum rtx_code
combine_reversed_comparison_code (exp)
     rtx exp;
{
  enum rtx_code code1 = reversed_comparison_code (exp, ((void *)0));
  rtx x;

  if (code1 != UNKNOWN
      || (mode_class[(int) (((enum machine_mode) ((((exp)->fld[0]).rtx))->mode))]) != MODE_CC)
    return code1;


  x = get_last_value ((((exp)->fld[0]).rtx));
  if (!x || ((enum rtx_code) (x)->code) != COMPARE)
    return UNKNOWN;
  return reversed_comparison_code_parts (((enum rtx_code) (exp)->code),
      (((x)->fld[0]).rtx), (((x)->fld[1]).rtx), ((void *)0));
}


static rtx
reversed_comparison (exp, mode, op0, op1)
     rtx exp, op0, op1;
     enum machine_mode mode;
{
  enum rtx_code reversed_code = combine_reversed_comparison_code (exp);
  if (reversed_code == UNKNOWN)
    return (rtx) 0;
  else
    return gen_binary (reversed_code, mode, op0, op1);
}





static void
update_table_tick (x)
     rtx x;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  const char *fmt = (rtx_format[(int) (code)]);
  int i;

  if (code == REG)
    {
      unsigned int regno = (((x)->fld[0]).rtuint);
      unsigned int endregno
 = regno + (regno < 176
     ? mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode)) : 1);
      unsigned int r;

      for (r = regno; r < endregno; r++)
 reg_last_set_table_tick[r] = label_tick;

      return;
    }

  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)


    if (fmt[i] == 'e')
      {



 if (i == 0
     && ((rtx_class[(int) (code)]) == '2'
  || (rtx_class[(int) (code)]) == 'c'))
   {


     rtx x0 = (((x)->fld[0]).rtx);
     rtx x1 = (((x)->fld[1]).rtx);



     if (x0 == x1)
       break;




     if (((rtx_class[(int) (((enum rtx_code) (x1)->code))]) == '2'
   || (rtx_class[(int) (((enum rtx_code) (x1)->code))]) == 'c')
  && (x0 == (((x1)->fld[0]).rtx) || x0 == (((x1)->fld[1]).rtx)))
       break;



     if (((rtx_class[(int) (((enum rtx_code) (x0)->code))]) == '2'
   || (rtx_class[(int) (((enum rtx_code) (x0)->code))]) == 'c')
  && (x1 == (((x0)->fld[0]).rtx) || x1 == (((x0)->fld[1]).rtx)))
       {
  update_table_tick ((((x0)->fld[x1 == (((x0)->fld[0]).rtx) ? 1 : 0]).rtx));
  break;
       }
   }

 update_table_tick ((((x)->fld[i]).rtx));
      }
}






static void
record_value_for_reg (reg, insn, value)
     rtx reg;
     rtx insn;
     rtx value;
{
  unsigned int regno = (((reg)->fld[0]).rtuint);
  unsigned int endregno
    = regno + (regno < 176
        ? mips_hard_regno_nregs (regno, ((enum machine_mode) (reg)->mode)) : 1);
  unsigned int i;



  if (value && insn && reg_overlap_mentioned_p (reg, value))
    {
      rtx tem;



      subst_low_cuid = ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]);
      tem = get_last_value (reg);





      if (tem)
 {
   if (((rtx_class[(int) (((enum rtx_code) (tem)->code))]) == '2'
        || (rtx_class[(int) (((enum rtx_code) (tem)->code))]) == 'c')
       && ((enum rtx_code) ((((tem)->fld[0]).rtx))->code) == CLOBBER
       && ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CLOBBER)
     tem = (((tem)->fld[0]).rtx);

   value = replace_rtx (copy_rtx (value), reg, tem);
 }
    }





  for (i = regno; i < endregno; i++)
    {
      if (insn)
 reg_last_set[i] = insn;

      reg_last_set_value[i] = 0;
      reg_last_set_mode[i] = 0;
      reg_last_set_nonzero_bits[i] = 0;
      reg_last_set_sign_bit_copies[i] = 0;
      reg_last_death[i] = 0;
    }


  if (value)
    update_table_tick (value);
# 11596 "../../../kg++fe/gnu/combine.c"
  for (i = regno; i < endregno; i++)
    {
      reg_last_set_label[i] = label_tick;
      if (value && reg_last_set_table_tick[i] == label_tick)
 reg_last_set_invalid[i] = 1;
      else
 reg_last_set_invalid[i] = 0;
    }




  if (value && ! get_last_value_validate (&value, insn,
       reg_last_set_label[regno], 0))
    {
      value = copy_rtx (value);
      if (! get_last_value_validate (&value, insn,
         reg_last_set_label[regno], 1))
 value = 0;
    }




  reg_last_set_value[regno] = value;

  if (value)
    {
      enum machine_mode mode = ((enum machine_mode) (reg)->mode);
      subst_low_cuid = ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]);
      reg_last_set_mode[regno] = mode;
      if ((mode_class[(int) (mode)]) == MODE_INT
   && (mode_bitsize[(int) (mode)]) <= (8 * 8))
 mode = nonzero_bits_mode;
      reg_last_set_nonzero_bits[regno] = cached_nonzero_bits (value, mode, (rtx) 0, VOIDmode, 0);
      reg_last_set_sign_bit_copies[regno]
 = cached_num_sign_bit_copies (value, ((enum machine_mode) (reg)->mode), (rtx) 0, VOIDmode, 0);
    }
}





static void
record_dead_and_set_regs_1 (dest, setter, data)
     rtx dest, setter;
     void *data;
{
  rtx record_dead_insn = (rtx) data;

  if (((enum rtx_code) (dest)->code) == SUBREG)
    dest = (((dest)->fld[0]).rtx);

  if (((enum rtx_code) (dest)->code) == REG)
    {



      if (((enum rtx_code) (setter)->code) == SET && dest == (((setter)->fld[0]).rtx))
 record_value_for_reg (dest, record_dead_insn, (((setter)->fld[1]).rtx));
      else if (((enum rtx_code) (setter)->code) == SET
        && ((enum rtx_code) ((((setter)->fld[0]).rtx))->code) == SUBREG
        && ((((((setter)->fld[0]).rtx))->fld[0]).rtx) == dest
        && (mode_bitsize[(int) (((enum machine_mode) (dest)->mode))]) <= (8 * ((target_flags & 0x00002000) ? 8 : 4))
        && subreg_lowpart_p ((((setter)->fld[0]).rtx)))
 record_value_for_reg (dest, record_dead_insn,
         gen_lowpart_for_combine (((enum machine_mode) (dest)->mode),
             (((setter)->fld[1]).rtx)));
      else
 record_value_for_reg (dest, record_dead_insn, (rtx) 0);
    }
  else if (((enum rtx_code) (dest)->code) == MEM

    && ! push_operand (dest, ((enum machine_mode) (dest)->mode)))
    mem_last_set = ((((record_dead_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (record_dead_insn) : uid_cuid[(((record_dead_insn)->fld[0]).rtint)]);
}
# 11684 "../../../kg++fe/gnu/combine.c"
static void
record_dead_and_set_regs (insn)
     rtx insn;
{
  rtx link;
  unsigned int i;

  for (link = (((insn)->fld[8]).rtx); link; link = (((link)->fld[1]).rtx))
    {
      if (((enum reg_note) ((enum machine_mode) (link)->mode)) == REG_DEAD
   && ((enum rtx_code) ((((link)->fld[0]).rtx))->code) == REG)
 {
   unsigned int regno = ((((((link)->fld[0]).rtx))->fld[0]).rtuint);
   unsigned int endregno
     = regno + (regno < 176
         ? mips_hard_regno_nregs (regno, ((enum machine_mode) ((((link)->fld[0]).rtx))->mode))
         : 1);

   for (i = regno; i < endregno; i++)
     reg_last_death[i] = insn;
 }
      else if (((enum reg_note) ((enum machine_mode) (link)->mode)) == REG_INC)
 record_value_for_reg ((((link)->fld[0]).rtx), insn, (rtx) 0);
    }

  if (((enum rtx_code) (insn)->code) == CALL_INSN)
    {
      for (i = 0; i < 176; i++)
 if ((!!((regs_invalidated_by_call)[(i) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8)))))))
   {
     reg_last_set_value[i] = 0;
     reg_last_set_mode[i] = 0;
     reg_last_set_nonzero_bits[i] = 0;
     reg_last_set_sign_bit_copies[i] = 0;
     reg_last_death[i] = 0;
   }

      last_call_cuid = mem_last_set = ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]);






      return;
    }

  note_stores ((((insn)->fld[5]).rtx), record_dead_and_set_regs_1, insn);
}
# 11743 "../../../kg++fe/gnu/combine.c"
static void
record_promoted_value (insn, subreg)
     rtx insn;
     rtx subreg;
{
  rtx links, set;
  unsigned int regno = ((((((subreg)->fld[0]).rtx))->fld[0]).rtuint);
  enum machine_mode mode = ((enum machine_mode) (subreg)->mode);

  if ((mode_bitsize[(int) (mode)]) > (8 * 8))
    return;

  for (links = (((insn)->fld[7]).rtx); links;)
    {
      insn = (((links)->fld[0]).rtx);
      set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);

      if (! set || ((enum rtx_code) ((((set)->fld[0]).rtx))->code) != REG
   || ((((((set)->fld[0]).rtx))->fld[0]).rtuint) != regno
   || ((enum machine_mode) ((((set)->fld[0]).rtx))->mode) != ((enum machine_mode) ((((subreg)->fld[0]).rtx))->mode))
 {
   links = (((links)->fld[1]).rtx);
   continue;
 }

      if (reg_last_set[regno] == insn)
 {
   if (((((subreg))->volatil) ? -1 : (subreg)->unchanging) > 0)
     reg_last_set_nonzero_bits[regno] &= mode_mask_array[(int) (mode)];
 }

      if (((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG)
 {
   regno = ((((((set)->fld[1]).rtx))->fld[0]).rtuint);
   links = (((insn)->fld[7]).rtx);
 }
      else
 break;
    }
}




static void
check_promoted_subreg (insn, x)
     rtx insn;
     rtx x;
{
  if (((enum rtx_code) (x)->code) == SUBREG && (((x))->in_struct)
      && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG)
    record_promoted_value (insn, x);
  else
    {
      const char *format = (rtx_format[(int) (((enum rtx_code) (x)->code))]);
      int i, j;

      for (i = 0; i < (rtx_length[(int) (((enum rtx_code) (x)->code))]); i++)
 switch (format[i])
   {
   case 'e':
     check_promoted_subreg (insn, (((x)->fld[i]).rtx));
     break;
   case 'V':
   case 'E':
     if ((((x)->fld[i]).rtvec) != 0)
       for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
  check_promoted_subreg (insn, (((((x)->fld[i]).rtvec))->elem[j]));
     break;
   }
    }
}
# 11826 "../../../kg++fe/gnu/combine.c"
static int
get_last_value_validate (loc, insn, tick, replace)
     rtx *loc;
     rtx insn;
     int tick;
     int replace;
{
  rtx x = *loc;
  const char *fmt = (rtx_format[(int) (((enum rtx_code) (x)->code))]);
  int len = (rtx_length[(int) (((enum rtx_code) (x)->code))]);
  int i;

  if (((enum rtx_code) (x)->code) == REG)
    {
      unsigned int regno = (((x)->fld[0]).rtuint);
      unsigned int endregno
 = regno + (regno < 176
     ? mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode)) : 1);
      unsigned int j;

      for (j = regno; j < endregno; j++)
 if (reg_last_set_invalid[j]


     || (! (regno >= 176
     && (((reg_n_info)->data.reg[regno])->sets) == 1
     && (! bitmap_bit_p ((&entry_exit_blocks[0])->next_bb->global_live_at_start, regno)))

  && reg_last_set_label[j] > tick))
   {
     if (replace)
       *loc = gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));
     return replace;
   }

      return 1;
    }



  else if (((enum rtx_code) (x)->code) == MEM && ! (((x))->unchanging)
    && ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]) <= mem_last_set)
    {
      if (replace)
 *loc = gen_rtx_fmt_e (CLOBBER, (((enum machine_mode) (x)->mode)), ((const_int_rtx[64])));
      return replace;
    }

  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'e')
 {



   if (i == 1
       && ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '2'
    || (rtx_class[(int) (((enum rtx_code) (x)->code))]) == 'c'))
     {


       rtx x0 = (((x)->fld[0]).rtx);
       rtx x1 = (((x)->fld[1]).rtx);


       if (x0 == x1)
  return 1;




       if (((rtx_class[(int) (((enum rtx_code) (x0)->code))]) == '2'
     || (rtx_class[(int) (((enum rtx_code) (x0)->code))]) == 'c')
    && (x1 == (((x0)->fld[0]).rtx) || x1 == (((x0)->fld[1]).rtx)))
  return 1;



       if (((rtx_class[(int) (((enum rtx_code) (x1)->code))]) == '2'
     || (rtx_class[(int) (((enum rtx_code) (x1)->code))]) == 'c')
    && (x0 == (((x1)->fld[0]).rtx) || x0 == (((x1)->fld[1]).rtx)))
  return
    get_last_value_validate (&(((x1)->fld[x0 == (((x1)->fld[0]).rtx) ? 1 : 0]).rtx),

        insn, tick, replace);
     }

   if (get_last_value_validate (&(((x)->fld[i]).rtx), insn, tick,
           replace) == 0)
     return 0;
 }

      else if (fmt[i] == 'E')
 return 0;
    }


  return 1;
}





static rtx
get_last_value (x)
     rtx x;
{
  unsigned int regno;
  rtx value;




  if (((enum rtx_code) (x)->code) == SUBREG
      && subreg_lowpart_p (x)
      && ((mode_size[(int) (((enum machine_mode) (x)->mode))])
   <= (mode_size[(int) (((enum machine_mode) ((((x)->fld[0]).rtx))->mode))]))
      && (value = get_last_value ((((x)->fld[0]).rtx))) != 0)
    return gen_lowpart_for_combine (((enum machine_mode) (x)->mode), value);

  if (((enum rtx_code) (x)->code) != REG)
    return 0;

  regno = (((x)->fld[0]).rtuint);
  value = reg_last_set_value[regno];
# 11963 "../../../kg++fe/gnu/combine.c"
  if (value == 0
      || (reg_last_set_label[regno] != label_tick
   && (regno < 176
       || (((reg_n_info)->data.reg[regno])->sets) != 1
       || (bitmap_bit_p ((&entry_exit_blocks[0])->next_bb->global_live_at_start, regno)))))

    return 0;



  if (((((reg_last_set[regno])->fld[0]).rtint) > max_uid_cuid ? insn_cuid (reg_last_set[regno]) : uid_cuid[(((reg_last_set[regno])->fld[0]).rtint)]) >= subst_low_cuid)
    return 0;


  if (get_last_value_validate (&value, reg_last_set[regno],
          reg_last_set_label[regno], 0))
    return value;




  value = copy_rtx (value);
  if (get_last_value_validate (&value, reg_last_set[regno],
          reg_last_set_label[regno], 1))
    return value;

  return 0;
}




static int
use_crosses_set_p (x, from_cuid)
     rtx x;
     int from_cuid;
{
  const char *fmt;
  int i;
  enum rtx_code code = ((enum rtx_code) (x)->code);

  if (code == REG)
    {
      unsigned int regno = (((x)->fld[0]).rtuint);
      unsigned endreg = regno + (regno < 176
     ? mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode)) : 1);







      for (; regno < endreg; regno++)
 if (reg_last_set[regno]
     && ((((reg_last_set[regno])->fld[0]).rtint) > max_uid_cuid ? insn_cuid (reg_last_set[regno]) : uid_cuid[(((reg_last_set[regno])->fld[0]).rtint)]) > from_cuid)
   return 1;
      return 0;
    }

  if (code == MEM && mem_last_set > from_cuid)
    return 1;

  fmt = (rtx_format[(int) (code)]);

  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
 {
   int j;
   for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
     if (use_crosses_set_p ((((((x)->fld[i]).rtvec))->elem[j]), from_cuid))
       return 1;
 }
      else if (fmt[i] == 'e'
        && use_crosses_set_p ((((x)->fld[i]).rtx), from_cuid))
 return 1;
    }
  return 0;
}




static unsigned int reg_dead_regno, reg_dead_endregno;
static int reg_dead_flag;






static void
reg_dead_at_p_1 (dest, x, data)
     rtx dest;
     rtx x;
     void *data __attribute__ ((__unused__));
{
  unsigned int regno, endregno;

  if (((enum rtx_code) (dest)->code) != REG)
    return;

  regno = (((dest)->fld[0]).rtuint);
  endregno = regno + (regno < 176
        ? mips_hard_regno_nregs (regno, ((enum machine_mode) (dest)->mode)) : 1);

  if (reg_dead_endregno > regno && reg_dead_regno < endregno)
    reg_dead_flag = (((enum rtx_code) (x)->code) == CLOBBER) ? 1 : -1;
}
# 12082 "../../../kg++fe/gnu/combine.c"
static int
reg_dead_at_p (reg, insn)
     rtx reg;
     rtx insn;
{
  basic_block block;
  unsigned int i;


  reg_dead_regno = (((reg)->fld[0]).rtuint);
  reg_dead_endregno = reg_dead_regno + (reg_dead_regno < 176
     ? mips_hard_regno_nregs (reg_dead_regno, ((enum machine_mode) (reg)->mode))

     : 1);

  reg_dead_flag = 0;


  if (reg_dead_regno < 176)
    {
      for (i = reg_dead_regno; i < reg_dead_endregno; i++)
 if ((!!((newpat_used_regs)[(i) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8)))))))
   return 0;
    }



  for (; insn && ((enum rtx_code) (insn)->code) != CODE_LABEL && ((enum rtx_code) (insn)->code) != BARRIER;
       insn = prev_nonnote_insn (insn))
    {
      note_stores ((((insn)->fld[5]).rtx), reg_dead_at_p_1, ((void *)0));
      if (reg_dead_flag)
 return reg_dead_flag == 1 ? 1 : 0;

      if (find_regno_note (insn, REG_DEAD, reg_dead_regno))
 return 1;
    }


  if (insn == 0)
    block = (&entry_exit_blocks[0])->next_bb;
  else
    {
      for (block = (&entry_exit_blocks[0])->next_bb; block != (&entry_exit_blocks[1]); block = block->next_bb)
 if (insn == block->head)
   break;

      if (block == (&entry_exit_blocks[1]))
 return 0;
    }

  for (i = reg_dead_regno; i < reg_dead_endregno; i++)
    if (bitmap_bit_p (block->global_live_at_start, i))
      return 0;

  return 1;
}




static void
mark_used_regs_combine (x)
     rtx x;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  unsigned int regno;
  int i;

  switch (code)
    {
    case LABEL_REF:
    case SYMBOL_REF:
    case CONST_INT:
    case CONST:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case PC:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
    case ASM_INPUT:





      return;

    case CLOBBER:


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MEM)
 mark_used_regs_combine (((((((x)->fld[0]).rtx))->fld[0]).rtx));
      return;

    case REG:
      regno = (((x)->fld[0]).rtuint);


      if (regno < 176)
 {
   unsigned int endregno, r;


   if (regno == (0 + 29)

       || regno == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)


       || (regno == 0 && fixed_regs[regno])

       || regno == (0 + 1))
     return;

   endregno = regno + mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode));
   for (r = regno; r < endregno; r++)
     ((newpat_used_regs)[(r) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((r) % ((unsigned) (8 * 8))));
 }
      return;

    case SET:
      {


 rtx testreg = (((x)->fld[0]).rtx);

 while (((enum rtx_code) (testreg)->code) == SUBREG
        || ((enum rtx_code) (testreg)->code) == ZERO_EXTRACT
        || ((enum rtx_code) (testreg)->code) == SIGN_EXTRACT
        || ((enum rtx_code) (testreg)->code) == STRICT_LOW_PART)
   testreg = (((testreg)->fld[0]).rtx);

 if (((enum rtx_code) (testreg)->code) == MEM)
   mark_used_regs_combine ((((testreg)->fld[0]).rtx));

 mark_used_regs_combine ((((x)->fld[1]).rtx));
      }
      return;

    default:
      break;
    }



  {
    const char *fmt = (rtx_format[(int) (code)]);

    for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
      {
 if (fmt[i] == 'e')
   mark_used_regs_combine ((((x)->fld[i]).rtx));
 else if (fmt[i] == 'E')
   {
     int j;

     for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
       mark_used_regs_combine ((((((x)->fld[i]).rtvec))->elem[j]));
   }
      }
  }
}





rtx
remove_death (regno, insn)
     unsigned int regno;
     rtx insn;
{
  rtx note = find_regno_note (insn, REG_DEAD, regno);

  if (note)
    {
      (((reg_n_info)->data.reg[regno])->deaths)--;
      remove_note (insn, note);
    }

  return note;
}
# 12275 "../../../kg++fe/gnu/combine.c"
static void
move_deaths (x, maybe_kill_insn, from_cuid, to_insn, pnotes)
     rtx x;
     rtx maybe_kill_insn;
     int from_cuid;
     rtx to_insn;
     rtx *pnotes;
{
  const char *fmt;
  int len, i;
  enum rtx_code code = ((enum rtx_code) (x)->code);

  if (code == REG)
    {
      unsigned int regno = (((x)->fld[0]).rtuint);
      rtx where_dead = reg_last_death[regno];
      rtx before_dead, after_dead;


      if (maybe_kill_insn && reg_set_p (x, maybe_kill_insn)
   && ! reg_referenced_p (x, maybe_kill_insn))
 return;



      before_dead = where_dead;
      while (before_dead && (((before_dead)->fld[0]).rtint) > max_uid_cuid)
 before_dead = (((before_dead)->fld[1]).rtx);

      after_dead = where_dead;
      while (after_dead && (((after_dead)->fld[0]).rtint) > max_uid_cuid)
 after_dead = (((after_dead)->fld[2]).rtx);

      if (before_dead && after_dead
   && ((((before_dead)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (before_dead) : uid_cuid[(((before_dead)->fld[0]).rtint)]) >= from_cuid
   && (((((after_dead)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (after_dead) : uid_cuid[(((after_dead)->fld[0]).rtint)]) < ((((to_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (to_insn) : uid_cuid[(((to_insn)->fld[0]).rtint)])
       || (where_dead != after_dead
    && ((((after_dead)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (after_dead) : uid_cuid[(((after_dead)->fld[0]).rtint)]) == ((((to_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (to_insn) : uid_cuid[(((to_insn)->fld[0]).rtint)]))))
 {
   rtx note = remove_death (regno, where_dead);
# 12325 "../../../kg++fe/gnu/combine.c"
   if (note != 0 && regno < 176
       && ((mode_size[(int) (((enum machine_mode) ((((note)->fld[0]).rtx))->mode))])
    > (mode_size[(int) (((enum machine_mode) (x)->mode))])))
     {
       unsigned int deadregno = ((((((note)->fld[0]).rtx))->fld[0]).rtuint);
       unsigned int deadend
  = (deadregno + mips_hard_regno_nregs (deadregno, ((enum machine_mode) ((((note)->fld[0]).rtx))->mode)));

       unsigned int ourend
  = regno + mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode));
       unsigned int i;

       for (i = deadregno; i < deadend; i++)
  if (i < regno || i >= ourend)
    (((where_dead)->fld[8]).rtx)
      = gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), ((cfun->emit->x_regno_reg_rtx)[i]), ((((where_dead)->fld[8]).rtx)));


     }






   else if ((note == 0
      || (note != 0
   && ((mode_size[(int) (((enum machine_mode) ((((note)->fld[0]).rtx))->mode))])
       < (mode_size[(int) (((enum machine_mode) (x)->mode))]))))
     && regno < 176
     && mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode)) > 1)
     {
       unsigned int ourend
  = regno + mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode));
       unsigned int i, offset;
       rtx oldnotes = 0;

       if (note)
  offset = mips_hard_regno_nregs (regno, ((enum machine_mode) ((((note)->fld[0]).rtx))->mode));
       else
  offset = 1;

       for (i = regno + offset; i < ourend; i++)
  move_deaths ((cfun->emit->x_regno_reg_rtx)[i],
        maybe_kill_insn, from_cuid, to_insn, &oldnotes);
     }

   if (note != 0 && ((enum machine_mode) ((((note)->fld[0]).rtx))->mode) == ((enum machine_mode) (x)->mode))
     {
       (((note)->fld[1]).rtx) = *pnotes;
       *pnotes = note;
     }
   else
     *pnotes = gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (x), (*pnotes));

   (((reg_n_info)->data.reg[regno])->deaths)++;
 }

      return;
    }

  else if (((enum rtx_code) (x)->code) == SET)
    {
      rtx dest = (((x)->fld[0]).rtx);

      move_deaths ((((x)->fld[1]).rtx), maybe_kill_insn, from_cuid, to_insn, pnotes);







      if (((enum rtx_code) (dest)->code) == ZERO_EXTRACT
   || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART
   || (((enum rtx_code) (dest)->code) == SUBREG
       && ((((mode_size[(int) (((enum machine_mode) (dest)->mode))])
      + ((target_flags & 0x00002000) ? 8 : 4) - 1) / ((target_flags & 0x00002000) ? 8 : 4))
    == (((mode_size[(int) (((enum machine_mode) ((((dest)->fld[0]).rtx))->mode))])
         + ((target_flags & 0x00002000) ? 8 : 4) - 1) / ((target_flags & 0x00002000) ? 8 : 4)))))
 {
   move_deaths (dest, maybe_kill_insn, from_cuid, to_insn, pnotes);
   return;
 }



      if (((enum rtx_code) (dest)->code) == SUBREG)
 dest = (((dest)->fld[0]).rtx);





      if (((enum rtx_code) (dest)->code) == MEM)
 move_deaths ((((dest)->fld[0]).rtx), maybe_kill_insn, from_cuid,
       to_insn, pnotes);
      return;
    }

  else if (((enum rtx_code) (x)->code) == CLOBBER)
    return;

  len = (rtx_length[(int) (code)]);
  fmt = (rtx_format[(int) (code)]);

  for (i = 0; i < len; i++)
    {
      if (fmt[i] == 'E')
 {
   int j;
   for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
     move_deaths ((((((x)->fld[i]).rtvec))->elem[j]), maybe_kill_insn, from_cuid,
    to_insn, pnotes);
 }
      else if (fmt[i] == 'e')
 move_deaths ((((x)->fld[i]).rtx), maybe_kill_insn, from_cuid, to_insn, pnotes);
    }
}




static int
reg_bitfield_target_p (x, body)
     rtx x;
     rtx body;
{
  int i;

  if (((enum rtx_code) (body)->code) == SET)
    {
      rtx dest = (((body)->fld[0]).rtx);
      rtx target;
      unsigned int regno, tregno, endregno, endtregno;

      if (((enum rtx_code) (dest)->code) == ZERO_EXTRACT)
 target = (((dest)->fld[0]).rtx);
      else if (((enum rtx_code) (dest)->code) == STRICT_LOW_PART)
 target = ((((((dest)->fld[0]).rtx))->fld[0]).rtx);
      else
 return 0;

      if (((enum rtx_code) (target)->code) == SUBREG)
 target = (((target)->fld[0]).rtx);

      if (((enum rtx_code) (target)->code) != REG)
 return 0;

      tregno = (((target)->fld[0]).rtuint), regno = (((x)->fld[0]).rtuint);
      if (tregno >= 176 || regno >= 176)
 return target == x;

      endtregno = tregno + mips_hard_regno_nregs (tregno, ((enum machine_mode) (target)->mode));
      endregno = regno + mips_hard_regno_nregs (regno, ((enum machine_mode) (x)->mode));

      return endregno > tregno && regno < endtregno;
    }

  else if (((enum rtx_code) (body)->code) == PARALLEL)
    for (i = (((((body)->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
      if (reg_bitfield_target_p (x, (((((body)->fld[0]).rtvec))->elem[i])))
 return 1;

  return 0;
}
# 12503 "../../../kg++fe/gnu/combine.c"
static void
distribute_notes (notes, from_insn, i3, i2, elim_i2, elim_i1)
     rtx notes;
     rtx from_insn;
     rtx i3, i2;
     rtx elim_i2, elim_i1;
{
  rtx note, next_note;
  rtx tem;

  for (note = notes; note; note = next_note)
    {
      rtx place = 0, place2 = 0;



      if ((((note)->fld[0]).rtx) && ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG
   && ((((((note)->fld[0]).rtx))->fld[0]).rtuint) >= 176)
 (((note)->fld[0]).rtx) = (cfun->emit->x_regno_reg_rtx)[((((((note)->fld[0]).rtx))->fld[0]).rtuint)];

      next_note = (((note)->fld[1]).rtx);
      switch (((enum reg_note) ((enum machine_mode) (note)->mode)))
 {
 case REG_BR_PROB:
 case REG_BR_PRED:



   place = i3;
   break;

 case REG_VTABLE_REF:


   place = i3;
   break;

 case REG_NON_LOCAL_GOTO:
   if (((enum rtx_code) (i3)->code) == JUMP_INSN)
     place = i3;
   else if (i2 && ((enum rtx_code) (i2)->code) == JUMP_INSN)
     place = i2;
   else
     fancy_abort ("../../../kg++fe/gnu/combine.c", 12546, __FUNCTION__);
   break;

 case REG_EH_REGION:

   if (((enum rtx_code) (i3)->code) == CALL_INSN)
     place = i3;
   else if (i2 && ((enum rtx_code) (i2)->code) == CALL_INSN)
     place = i2;
   else if (flag_non_call_exceptions)
     {
       if (may_trap_p (i3))
  place = i3;
       else if (i2 && may_trap_p (i2))
  place = i2;



     }
   else
     fancy_abort ("../../../kg++fe/gnu/combine.c", 12566, __FUNCTION__);
   break;

 case REG_ALWAYS_RETURN:
 case REG_NORETURN:
 case REG_SETJMP:


   if (((enum rtx_code) (i3)->code) == CALL_INSN)
     place = i3;
   else if (i2 && ((enum rtx_code) (i2)->code) == CALL_INSN)
     place = i2;
   else
     fancy_abort ("../../../kg++fe/gnu/combine.c", 12579, __FUNCTION__);
   break;

 case REG_UNUSED:
# 12600 "../../../kg++fe/gnu/combine.c"
   if (reg_set_p ((((note)->fld[0]).rtx), (((i3)->fld[5]).rtx)))
     {
       if (from_insn != i3)
  break;

       if (! (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG
       ? find_regno_note (i3, REG_UNUSED, ((((((note)->fld[0]).rtx))->fld[0]).rtuint))
       : find_reg_note (i3, REG_UNUSED, (((note)->fld[0]).rtx))))
  place = i3;
     }



   else if (reg_referenced_p ((((note)->fld[0]).rtx), (((i3)->fld[5]).rtx))
     && ! (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG
    ? find_regno_note (i3, REG_DEAD,
         ((((((note)->fld[0]).rtx))->fld[0]).rtuint))
    : find_reg_note (i3, REG_DEAD, (((note)->fld[0]).rtx))))
     {
       ((note)->mode = (enum machine_mode) ((enum machine_mode) (REG_DEAD)));
       place = i3;
     }
   break;

 case REG_EQUAL:
 case REG_EQUIV:
 case REG_NOALIAS:
# 12638 "../../../kg++fe/gnu/combine.c"
   if (from_insn == i3
       && ((((note)->fld[0]).rtx) == 0 || (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONSTANT_P_RTX)))
     place = i3;
   break;

 case REG_INC:
 case REG_NO_CONFLICT:


   if (reg_mentioned_p ((((note)->fld[0]).rtx), (((i3)->fld[5]).rtx)))
     place = i3;

   if (i2 && reg_mentioned_p ((((note)->fld[0]).rtx), (((i2)->fld[5]).rtx)))
     {
       if (place)
  place2 = i2;
       else
  place = i2;
     }
   break;

 case REG_LABEL:




   if (reg_mentioned_p ((((note)->fld[0]).rtx), (((i3)->fld[5]).rtx))
       || ((tem = find_reg_note (i3, REG_EQUAL, (rtx) 0))
    && ((enum rtx_code) ((((tem)->fld[0]).rtx))->code) == LABEL_REF
    && ((((((tem)->fld[0]).rtx))->fld[0]).rtx) == (((note)->fld[0]).rtx)))
     place = i3;

   if (i2
       && (reg_mentioned_p ((((note)->fld[0]).rtx), (((i2)->fld[5]).rtx))
    || ((tem = find_reg_note (i2, REG_EQUAL, (rtx) 0))
        && ((enum rtx_code) ((((tem)->fld[0]).rtx))->code) == LABEL_REF
        && ((((((tem)->fld[0]).rtx))->fld[0]).rtx) == (((note)->fld[0]).rtx))))
     {
       if (place)
  place2 = i2;
       else
  place = i2;
     }



   if (place && ((enum rtx_code) (place)->code) == JUMP_INSN && (((place)->fld[9]).rtx))
     {
       if ((((place)->fld[9]).rtx) != (((note)->fld[0]).rtx))
  fancy_abort ("../../../kg++fe/gnu/combine.c", 12687, __FUNCTION__);
       if (((enum rtx_code) ((((place)->fld[9]).rtx))->code) == CODE_LABEL)
  ((((((place)->fld[9]).rtx))->fld[4]).rtint)--;
       place = 0;
     }
   if (place2 && ((enum rtx_code) (place2)->code) == JUMP_INSN && (((place2)->fld[9]).rtx))
     {
       if ((((place2)->fld[9]).rtx) != (((note)->fld[0]).rtx))
  fancy_abort ("../../../kg++fe/gnu/combine.c", 12695, __FUNCTION__);
       if (((enum rtx_code) ((((place2)->fld[9]).rtx))->code) == CODE_LABEL)
  ((((((place2)->fld[9]).rtx))->fld[4]).rtint)--;
       place2 = 0;
     }
   break;

 case REG_NONNEG:
 case REG_WAS_0:




   break;

 case REG_RETVAL:



   if (((enum rtx_code) (from_insn)->code) != NOTE)
     place = from_insn;
   else
     {
       tem = find_reg_note ((((note)->fld[0]).rtx), REG_LIBCALL, (rtx) 0);
       place = prev_real_insn (from_insn);
       if (tem && place)
  (((tem)->fld[0]).rtx) = place;


       else if ((((note)->fld[0]).rtx) == from_insn)
  tem = place = 0;
     }
   break;

 case REG_LIBCALL:

   if (((enum rtx_code) (from_insn)->code) != NOTE)
     place = from_insn;
   else
     {
       tem = find_reg_note ((((note)->fld[0]).rtx), REG_RETVAL, (rtx) 0);
       place = next_real_insn (from_insn);
       if (tem && place)
  (((tem)->fld[0]).rtx) = place;


       else if ((((note)->fld[0]).rtx) == from_insn)
  tem = place = 0;
     }
   break;

 case REG_DEAD:
# 12761 "../../../kg++fe/gnu/combine.c"
   if (from_insn
       && ((enum rtx_code) (from_insn)->code) == CALL_INSN
       && find_reg_fusage (from_insn, USE, (((note)->fld[0]).rtx)))
     place = from_insn;
   else if (reg_referenced_p ((((note)->fld[0]).rtx), (((i3)->fld[5]).rtx)))
     place = i3;
   else if (i2 != 0 && next_nonnote_insn (i2) == i3
     && reg_referenced_p ((((note)->fld[0]).rtx), (((i2)->fld[5]).rtx)))
     place = i2;

   if (rtx_equal_p ((((note)->fld[0]).rtx), elim_i2)
       || rtx_equal_p ((((note)->fld[0]).rtx), elim_i1))
     break;

   if (place == 0)
     {
       basic_block bb = this_basic_block;

       for (tem = (((i3)->fld[1]).rtx); place == 0; tem = (((tem)->fld[1]).rtx))
  {
    if (! ((rtx_class[(int) (((enum rtx_code) (tem)->code))]) == 'i'))
      {
        if (tem == bb->head)
   break;
        continue;
      }




    if (reg_set_p ((((note)->fld[0]).rtx), (((tem)->fld[5]).rtx)))
      {
        rtx set = (((rtx_class[(int) (((enum rtx_code) (tem)->code))]) == 'i') ? (((enum rtx_code) ((((tem)->fld[5]).rtx))->code) == SET ? (((tem)->fld[5]).rtx) : single_set_2 (tem, (((tem)->fld[5]).rtx))) : (rtx) 0);
        rtx inner_dest = 0;




        if (set != 0)
   for (inner_dest = (((set)->fld[0]).rtx);
        (((enum rtx_code) (inner_dest)->code) == STRICT_LOW_PART
         || ((enum rtx_code) (inner_dest)->code) == SUBREG
         || ((enum rtx_code) (inner_dest)->code) == ZERO_EXTRACT);
        inner_dest = (((inner_dest)->fld[0]).rtx))
     ;
# 12815 "../../../kg++fe/gnu/combine.c"
        if (set != 0 && ! side_effects_p ((((set)->fld[1]).rtx))
     && rtx_equal_p ((((note)->fld[0]).rtx), inner_dest)





     )
   {





     (((tem)->fld[5]).rtx) = (global_rtl[GR_PC]);

     distribute_notes ((((tem)->fld[8]).rtx), tem, tem,
         (rtx) 0, (rtx) 0, (rtx) 0);
     distribute_links ((((tem)->fld[7]).rtx));

     ((tem)->code = (enum rtx_code) (NOTE));
     (((tem)->fld[5]).rtint) = NOTE_INSN_DELETED;
     (((tem)->fld[4]).rtstr) = 0;
# 12856 "../../../kg++fe/gnu/combine.c"
   }



        else if (reg_referenced_p ((((note)->fld[0]).rtx),
       (((tem)->fld[5]).rtx)))
   {
     place = tem;

     if (! find_regno_note (tem, REG_UNUSED,
       ((((((note)->fld[0]).rtx))->fld[0]).rtuint)))
       (((tem)->fld[8]).rtx)
         = gen_rtx_fmt_ee (EXPR_LIST, (REG_UNUSED), ((((note)->fld[0]).rtx)), ((((tem)->fld[8]).rtx)));

   }
        else
   {
     ((note)->mode = (enum machine_mode) ((enum machine_mode) (REG_UNUSED)));



     if (! find_regno_note (tem, REG_UNUSED,
       ((((((note)->fld[0]).rtx))->fld[0]).rtuint)))
       place = tem;
     break;
   }
      }
    else if (reg_referenced_p ((((note)->fld[0]).rtx), (((tem)->fld[5]).rtx))
      || (((enum rtx_code) (tem)->code) == CALL_INSN
          && find_reg_fusage (tem, USE, (((note)->fld[0]).rtx))))
      {
        place = tem;







        if (i2 && (((place)->fld[0]).rtint) <= max_uid_cuid
     && ((((place)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (place) : uid_cuid[(((place)->fld[0]).rtint)]) > ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)])
     && from_insn
     && ((((from_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (from_insn) : uid_cuid[(((from_insn)->fld[0]).rtint)]) > ((((i2)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (i2) : uid_cuid[(((i2)->fld[0]).rtint)])
     && reg_referenced_p ((((note)->fld[0]).rtx), (((i2)->fld[5]).rtx)))
   {
     rtx links = (((place)->fld[7]).rtx);
     (((place)->fld[7]).rtx) = 0;
     distribute_links (links);
   }
        break;
      }

    if (tem == bb->head)
      break;
  }






       if (((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_DEAD && place == 0
    && bitmap_bit_p (bb->global_live_at_start, ((((((note)->fld[0]).rtx))->fld[0]).rtuint)))

  {
    ((refresh_blocks)->elms [(this_basic_block->index) / ((unsigned) (8 * 8))] |= (unsigned long long) 1 << (this_basic_block->index) % ((unsigned) (8 * 8)));
    need_refresh = 1;
  }
     }







   if (place && ((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_DEAD)
     {
       unsigned int regno = ((((((note)->fld[0]).rtx))->fld[0]).rtuint);




       if (noop_move_p (place))
  {
    ((refresh_blocks)->elms [(this_basic_block->index) / ((unsigned) (8 * 8))] |= (unsigned long long) 1 << (this_basic_block->index) % ((unsigned) (8 * 8)));
    need_refresh = 1;
  }

       if (dead_or_set_p (place, (((note)->fld[0]).rtx))
    || reg_bitfield_target_p ((((note)->fld[0]).rtx), (((place)->fld[5]).rtx)))
  {



    if (reg_last_death[regno] != place)
      reg_last_death[regno] = 0;
    place = 0;
  }
       else
  reg_last_death[regno] = place;
# 12967 "../../../kg++fe/gnu/combine.c"
       if (place && regno < 176
    && mips_hard_regno_nregs (regno, ((enum machine_mode) ((((note)->fld[0]).rtx))->mode)) > 1)
  {
    unsigned int endregno
      = regno + mips_hard_regno_nregs (regno, ((enum machine_mode) ((((note)->fld[0]).rtx))->mode));

    int all_used = 1;
    unsigned int i;

    for (i = regno; i < endregno; i++)
      if ((! refers_to_regno_p (i, i + 1, (((place)->fld[5]).rtx), 0)
    && ! find_regno_fusage (place, USE, i))
   || dead_or_set_regno_p (place, i))
        all_used = 0;

    if (! all_used)
      {



        for (i = regno; i < endregno;
      i += mips_hard_regno_nregs (i, reg_raw_mode[i]))
   {
     rtx piece = (cfun->emit->x_regno_reg_rtx)[i];
     basic_block bb = this_basic_block;

     if (! dead_or_set_p (place, piece)
         && ! reg_bitfield_target_p (piece,
         (((place)->fld[5]).rtx)))
       {
         rtx new_note
    = gen_rtx_fmt_ee (EXPR_LIST, (REG_DEAD), (piece), ((rtx) 0));

         distribute_notes (new_note, place, place,
      (rtx) 0, (rtx) 0, (rtx) 0);
       }
     else if (! refers_to_regno_p (i, i + 1,
       (((place)->fld[5]).rtx), 0)
       && ! find_regno_fusage (place, USE, i))
       for (tem = (((place)->fld[1]).rtx); ;
     tem = (((tem)->fld[1]).rtx))
         {
    if (! ((rtx_class[(int) (((enum rtx_code) (tem)->code))]) == 'i'))
      {
        if (tem == bb->head)
          {
     ((refresh_blocks)->elms [(this_basic_block->index) / ((unsigned) (8 * 8))] |= (unsigned long long) 1 << (this_basic_block->index) % ((unsigned) (8 * 8)));

     need_refresh = 1;
     break;
          }
        continue;
      }
    if (dead_or_set_p (tem, piece)
        || reg_bitfield_target_p (piece,
             (((tem)->fld[5]).rtx)))
      {
        (((tem)->fld[8]).rtx)
          = gen_rtx_fmt_ee (EXPR_LIST, (REG_UNUSED), (piece), ((((tem)->fld[8]).rtx)));

        break;
      }
         }

   }

        place = 0;
      }
  }
     }
   break;

 default:


   fancy_abort ("../../../kg++fe/gnu/combine.c", 13042, __FUNCTION__);
 }

      if (place)
 {
   (((note)->fld[1]).rtx) = (((place)->fld[8]).rtx);
   (((place)->fld[8]).rtx) = note;
 }
      else if ((((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_DEAD
  || ((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_UNUSED)
        && ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG)
 (((reg_n_info)->data.reg[((((((note)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)--;

      if (place2)
 {
   if ((((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_DEAD
        || ((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_UNUSED)
       && ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == REG)
     (((reg_n_info)->data.reg[((((((note)->fld[0]).rtx))->fld[0]).rtuint)])->deaths)++;

   (((place2)->fld[8]).rtx) = gen_rtx_fmt_ee (((enum rtx_code) (note)->code),
            ((enum reg_note) ((enum machine_mode) (note)->mode)),
            (((note)->fld[0]).rtx),
            (((place2)->fld[8]).rtx));
 }
    }
}





static void
distribute_links (links)
     rtx links;
{
  rtx link, next_link;

  for (link = links; link; link = next_link)
    {
      rtx place = 0;
      rtx insn;
      rtx set, reg;

      next_link = (((link)->fld[1]).rtx);
# 13099 "../../../kg++fe/gnu/combine.c"
      if (((enum rtx_code) ((((link)->fld[0]).rtx))->code) == NOTE
   || (set = (((rtx_class[(int) (((enum rtx_code) ((((link)->fld[0]).rtx))->code))]) == 'i') ? (((enum rtx_code) (((((((link)->fld[0]).rtx))->fld[5]).rtx))->code) == SET ? ((((((link)->fld[0]).rtx))->fld[5]).rtx) : single_set_2 ((((link)->fld[0]).rtx), ((((((link)->fld[0]).rtx))->fld[5]).rtx))) : (rtx) 0)) == 0)
 continue;

      reg = (((set)->fld[0]).rtx);
      while (((enum rtx_code) (reg)->code) == SUBREG || ((enum rtx_code) (reg)->code) == ZERO_EXTRACT
      || ((enum rtx_code) (reg)->code) == SIGN_EXTRACT
      || ((enum rtx_code) (reg)->code) == STRICT_LOW_PART)
 reg = (((reg)->fld[0]).rtx);
# 13118 "../../../kg++fe/gnu/combine.c"
      for (insn = ((((((link)->fld[0]).rtx))->fld[2]).rtx);
    (insn && (this_basic_block->next_bb == (&entry_exit_blocks[1])
       || this_basic_block->next_bb->head != insn));
    insn = (((insn)->fld[2]).rtx))
 if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') && reg_overlap_mentioned_p (reg, (((insn)->fld[5]).rtx)))
   {
     if (reg_referenced_p (reg, (((insn)->fld[5]).rtx)))
       place = insn;
     break;
   }
 else if (((enum rtx_code) (insn)->code) == CALL_INSN
   && find_reg_fusage (insn, USE, reg))
   {
     place = insn;
     break;
   }




      if (place)
 {
   rtx link2;

   for (link2 = (((place)->fld[7]).rtx); link2; link2 = (((link2)->fld[1]).rtx))
     if ((((link2)->fld[0]).rtx) == (((link)->fld[0]).rtx))
       break;

   if (link2 == 0)
     {
       (((link)->fld[1]).rtx) = (((place)->fld[7]).rtx);
       (((place)->fld[7]).rtx) = link;



       if (added_links_insn == 0
    || ((((added_links_insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (added_links_insn) : uid_cuid[(((added_links_insn)->fld[0]).rtint)]) > ((((place)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (place) : uid_cuid[(((place)->fld[0]).rtint)]))
  added_links_insn = place;
     }
 }
    }
}



static int
insn_cuid (insn)
     rtx insn;
{
  while (insn != 0 && (((insn)->fld[0]).rtint) > max_uid_cuid
  && ((enum rtx_code) (insn)->code) == INSN && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == USE)
    insn = (((insn)->fld[2]).rtx);

  if ((((insn)->fld[0]).rtint) > max_uid_cuid)
    fancy_abort ("../../../kg++fe/gnu/combine.c", 13172, __FUNCTION__);

  return ((((insn)->fld[0]).rtint) > max_uid_cuid ? insn_cuid (insn) : uid_cuid[(((insn)->fld[0]).rtint)]);
}

void
dump_combine_stats (file)
     FILE *file;
{
  fnotice
    (file,
     ";; Combiner statistics: %d attempts, %d substitutions (%d requiring new space),\n;; %d successes.\n\n",
     combine_attempts, combine_merges, combine_extras, combine_successes);
}

void
dump_combine_total_stats (file)
     FILE *file;
{
  fnotice
    (file,
     "\n;; Combiner totals: %d attempts, %d substitutions (%d requiring new space),\n;; %d successes.\n",
     total_attempts, total_merges, total_extras, total_successes);
}
