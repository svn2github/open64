# 1 "../../../kg++fe/gnu/regclass.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/regclass.c"
# 31 "../../../kg++fe/gnu/regclass.c"
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
# 32 "../../../kg++fe/gnu/regclass.c" 2
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
        
# 33 "../../../kg++fe/gnu/regclass.c" 2
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
# 34 "../../../kg++fe/gnu/regclass.c" 2
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



extern void retry_global_alloc (int, HARD_REG_SET);

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

extern void cannot_change_mode_set_regs (HARD_REG_SET *, enum machine_mode, unsigned int);



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
# 35 "../../../kg++fe/gnu/regclass.c" 2
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
# 36 "../../../kg++fe/gnu/regclass.c" 2
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
# 37 "../../../kg++fe/gnu/regclass.c" 2
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
# 38 "../../../kg++fe/gnu/regclass.c" 2
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
# 28 "../../../kg++fe/gnu/basic-block.h" 2
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
# 39 "../../../kg++fe/gnu/regclass.c" 2
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
# 40 "../../../kg++fe/gnu/regclass.c" 2
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
# 41 "../../../kg++fe/gnu/regclass.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 42 "../../../kg++fe/gnu/regclass.c" 2
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
# 43 "../../../kg++fe/gnu/regclass.c" 2
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
# 44 "../../../kg++fe/gnu/regclass.c" 2
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
# 45 "../../../kg++fe/gnu/regclass.c" 2
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
# 46 "../../../kg++fe/gnu/regclass.c" 2
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
# 47 "../../../kg++fe/gnu/regclass.c" 2
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
# 48 "../../../kg++fe/gnu/regclass.c" 2


# 1 "../../../kg++fe/gnu/defaults.h" 1
# 51 "../../../kg++fe/gnu/regclass.c" 2






static void init_reg_sets_1 (void);
static void init_reg_modes (void);
static void init_reg_autoinc (void);
# 78 "../../../kg++fe/gnu/regclass.c"
char fixed_regs[176];



HARD_REG_SET fixed_reg_set;



static const char initial_fixed_regs[] = { 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };







char call_used_regs[176];



HARD_REG_SET call_used_reg_set;


HARD_REG_SET losing_caller_save_reg_set;



static const char initial_call_used_regs[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 };







char call_really_used_regs[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };







char call_fixed_regs[176];



HARD_REG_SET call_fixed_reg_set;



int n_non_fixed_regs;






char global_regs[176];
# 145 "../../../kg++fe/gnu/regclass.c"
HARD_REG_SET regs_invalidated_by_call;



int reg_alloc_order[176] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100,101,102,103,104,105,106,107,108,109,110,111, 112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127, 128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143, 144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159, 160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175 };


int inv_reg_alloc_order[176];




HARD_REG_SET reg_class_contents[(int) LIM_REG_CLASSES];
# 167 "../../../kg++fe/gnu/regclass.c"
static const unsigned int_reg_class_contents[(int) LIM_REG_CLASSES][((176 + (32 - 1)) / 32)]
  = { { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x0003000c, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x000300fc, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x01000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x010300fc, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0xffffffff, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0xffffffff, 0x00000000, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000003, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0xffff0000, 0x0000ffff, 0x00000000, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000000, 0xffff0000, 0x0000ffff, 0x00000000 }, { 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0xffff0000, 0x0000ffff }, { 0xffffffff, 0x00000000, 0x00000001, 0x00000000, 0x00000000, 0x00000000 }, { 0xffffffff, 0x00000000, 0x00000002, 0x00000000, 0x00000000, 0x00000000 }, { 0xffffffff, 0x00000000, 0x00000004, 0x00000000, 0x00000000, 0x00000000 }, { 0x00000000, 0xffffffff, 0x00000001, 0x00000000, 0x00000000, 0x00000000 }, { 0xffffffff, 0x00000000, 0xffff0000, 0x0000ffff, 0x00000000, 0x00000000 }, { 0xffffffff, 0x00000000, 0x00000000, 0xffff0000, 0x0000ffff, 0x00000000 }, { 0xffffffff, 0x00000000, 0x00000000, 0x00000000, 0xffff0000, 0x0000ffff }, { 0x00000000, 0x00000000, 0xffff0000, 0xffffffff, 0xffffffff, 0x0000ffff }, { 0xffffffff, 0x00000000, 0xffff0000, 0xffffffff, 0xffffffff, 0x0000ffff }, { 0x00000000, 0x00000000, 0x000007f8, 0x00000000, 0x00000000, 0x00000000 }, { 0xffffffff, 0xffffffff, 0xffff07ff, 0xffffffff, 0xffffffff, 0x0000ffff } };



unsigned int reg_class_size[(int) LIM_REG_CLASSES];



enum reg_class reg_class_superclasses[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];



enum reg_class reg_class_subclasses[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




enum reg_class reg_class_subunion[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




enum reg_class reg_class_superunion[(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];





const char * reg_names[] = { &mips_reg_names[ 0][0], &mips_reg_names[ 1][0], &mips_reg_names[ 2][0], &mips_reg_names[ 3][0], &mips_reg_names[ 4][0], &mips_reg_names[ 5][0], &mips_reg_names[ 6][0], &mips_reg_names[ 7][0], &mips_reg_names[ 8][0], &mips_reg_names[ 9][0], &mips_reg_names[10][0], &mips_reg_names[11][0], &mips_reg_names[12][0], &mips_reg_names[13][0], &mips_reg_names[14][0], &mips_reg_names[15][0], &mips_reg_names[16][0], &mips_reg_names[17][0], &mips_reg_names[18][0], &mips_reg_names[19][0], &mips_reg_names[20][0], &mips_reg_names[21][0], &mips_reg_names[22][0], &mips_reg_names[23][0], &mips_reg_names[24][0], &mips_reg_names[25][0], &mips_reg_names[26][0], &mips_reg_names[27][0], &mips_reg_names[28][0], &mips_reg_names[29][0], &mips_reg_names[30][0], &mips_reg_names[31][0], &mips_reg_names[32][0], &mips_reg_names[33][0], &mips_reg_names[34][0], &mips_reg_names[35][0], &mips_reg_names[36][0], &mips_reg_names[37][0], &mips_reg_names[38][0], &mips_reg_names[39][0], &mips_reg_names[40][0], &mips_reg_names[41][0], &mips_reg_names[42][0], &mips_reg_names[43][0], &mips_reg_names[44][0], &mips_reg_names[45][0], &mips_reg_names[46][0], &mips_reg_names[47][0], &mips_reg_names[48][0], &mips_reg_names[49][0], &mips_reg_names[50][0], &mips_reg_names[51][0], &mips_reg_names[52][0], &mips_reg_names[53][0], &mips_reg_names[54][0], &mips_reg_names[55][0], &mips_reg_names[56][0], &mips_reg_names[57][0], &mips_reg_names[58][0], &mips_reg_names[59][0], &mips_reg_names[60][0], &mips_reg_names[61][0], &mips_reg_names[62][0], &mips_reg_names[63][0], &mips_reg_names[64][0], &mips_reg_names[65][0], &mips_reg_names[66][0], &mips_reg_names[67][0], &mips_reg_names[68][0], &mips_reg_names[69][0], &mips_reg_names[70][0], &mips_reg_names[71][0], &mips_reg_names[72][0], &mips_reg_names[73][0], &mips_reg_names[74][0], &mips_reg_names[75][0], &mips_reg_names[76][0], &mips_reg_names[77][0], &mips_reg_names[78][0], &mips_reg_names[79][0], &mips_reg_names[80][0], &mips_reg_names[81][0], &mips_reg_names[82][0], &mips_reg_names[83][0], &mips_reg_names[84][0], &mips_reg_names[85][0], &mips_reg_names[86][0], &mips_reg_names[87][0], &mips_reg_names[88][0], &mips_reg_names[89][0], &mips_reg_names[90][0], &mips_reg_names[91][0], &mips_reg_names[92][0], &mips_reg_names[93][0], &mips_reg_names[94][0], &mips_reg_names[95][0], &mips_reg_names[96][0], &mips_reg_names[97][0], &mips_reg_names[98][0], &mips_reg_names[99][0], &mips_reg_names[100][0], &mips_reg_names[101][0], &mips_reg_names[102][0], &mips_reg_names[103][0], &mips_reg_names[104][0], &mips_reg_names[105][0], &mips_reg_names[106][0], &mips_reg_names[107][0], &mips_reg_names[108][0], &mips_reg_names[109][0], &mips_reg_names[110][0], &mips_reg_names[111][0], &mips_reg_names[112][0], &mips_reg_names[113][0], &mips_reg_names[114][0], &mips_reg_names[115][0], &mips_reg_names[116][0], &mips_reg_names[117][0], &mips_reg_names[118][0], &mips_reg_names[119][0], &mips_reg_names[120][0], &mips_reg_names[121][0], &mips_reg_names[122][0], &mips_reg_names[123][0], &mips_reg_names[124][0], &mips_reg_names[125][0], &mips_reg_names[126][0], &mips_reg_names[127][0], &mips_reg_names[128][0], &mips_reg_names[129][0], &mips_reg_names[130][0], &mips_reg_names[131][0], &mips_reg_names[132][0], &mips_reg_names[133][0], &mips_reg_names[134][0], &mips_reg_names[135][0], &mips_reg_names[136][0], &mips_reg_names[137][0], &mips_reg_names[138][0], &mips_reg_names[139][0], &mips_reg_names[140][0], &mips_reg_names[141][0], &mips_reg_names[142][0], &mips_reg_names[143][0], &mips_reg_names[144][0], &mips_reg_names[145][0], &mips_reg_names[146][0], &mips_reg_names[147][0], &mips_reg_names[148][0], &mips_reg_names[149][0], &mips_reg_names[150][0], &mips_reg_names[151][0], &mips_reg_names[152][0], &mips_reg_names[153][0], &mips_reg_names[154][0], &mips_reg_names[155][0], &mips_reg_names[156][0], &mips_reg_names[157][0], &mips_reg_names[158][0], &mips_reg_names[159][0], &mips_reg_names[160][0], &mips_reg_names[161][0], &mips_reg_names[162][0], &mips_reg_names[163][0], &mips_reg_names[164][0], &mips_reg_names[165][0], &mips_reg_names[166][0], &mips_reg_names[167][0], &mips_reg_names[168][0], &mips_reg_names[169][0], &mips_reg_names[170][0], &mips_reg_names[171][0], &mips_reg_names[172][0], &mips_reg_names[173][0], &mips_reg_names[174][0], &mips_reg_names[175][0] };







enum machine_mode reg_raw_mode[176];



static char contains_reg_of_mode [(int) LIM_REG_CLASSES] [MAX_MACHINE_MODE];




static int move_cost[MAX_MACHINE_MODE][(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




static int may_move_in_cost[MAX_MACHINE_MODE][(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];




static int may_move_out_cost[MAX_MACHINE_MODE][(int) LIM_REG_CLASSES][(int) LIM_REG_CLASSES];
# 242 "../../../kg++fe/gnu/regclass.c"
bitmap_head subregs_of_mode;




static rtx top_of_stack[MAX_MACHINE_MODE];





struct reg_info_data {
  struct reg_info_data *next;
  size_t min_index;
  size_t max_index;
  char used_p;
  reg_info data[1];
};

static struct reg_info_data *reg_info_head;




static int no_global_reg_vars = 0;





void
init_reg_sets ()
{
  int i, j;




  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    {
      do { HARD_REG_ELT_TYPE *scan_tp_ = (reg_class_contents[i]); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);


      for (j = 0; j < 176; j++)
 if (int_reg_class_contents[i][j / 32]
     & ((unsigned) 1 << (j % 32)))
   ((reg_class_contents[i])[(j) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((j) % ((unsigned) (8 * 8))));
    }

  memcpy (fixed_regs, initial_fixed_regs, sizeof fixed_regs);
  memcpy (call_used_regs, initial_call_used_regs, sizeof call_used_regs);
  memset (global_regs, 0, sizeof global_regs);


  ;


  for (i = 0; i < 176; i++)
    inv_reg_alloc_order[reg_alloc_order[i]] = i;

}




static void
init_reg_sets_1 ()
{
  unsigned int i, j;
  unsigned int m;
  char allocatable_regs_of_mode [MAX_MACHINE_MODE];





  mips_conditional_register_usage ();




  memset ((char *) reg_class_size, 0, sizeof reg_class_size);
  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    for (j = 0; j < 176; j++)
      if ((!!((reg_class_contents[i])[(j) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((j) % ((unsigned) (8 * 8)))))))
 reg_class_size[i]++;





  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    {
      for (j = 0; j < (int) LIM_REG_CLASSES; j++)
 {



     HARD_REG_SET c;
   int k;

   do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[i]); scan_tp_[0] = scan_fp_[0]; scan_tp_[1] = scan_fp_[1]; scan_tp_[2] = scan_fp_[2]; } while (0);
   do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[j]); scan_tp_[0] |= scan_fp_[0]; scan_tp_[1] |= scan_fp_[1]; scan_tp_[2] |= scan_fp_[2]; } while (0);
   for (k = 0; k < (int) LIM_REG_CLASSES; k++)
     {
       do { HARD_REG_ELT_TYPE *scan_xp_ = (reg_class_contents[k]), *scan_yp_ = (c); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto subclass1; } while (0);

       continue;

     subclass1:

       do { HARD_REG_ELT_TYPE *scan_xp_ = (reg_class_contents[k]), *scan_yp_ = (reg_class_contents[(int) reg_class_subunion[i][j]]); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto subclass2; } while (0);


       reg_class_subunion[i][j] = (enum reg_class) k;
     subclass2:
       ;
     }
 }
    }





  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    {
      for (j = 0; j < (int) LIM_REG_CLASSES; j++)
 {



     HARD_REG_SET c;
   int k;

   do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[i]); scan_tp_[0] = scan_fp_[0]; scan_tp_[1] = scan_fp_[1]; scan_tp_[2] = scan_fp_[2]; } while (0);
   do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[j]); scan_tp_[0] |= scan_fp_[0]; scan_tp_[1] |= scan_fp_[1]; scan_tp_[2] |= scan_fp_[2]; } while (0);
   for (k = 0; k < (int) LIM_REG_CLASSES; k++)
     do { HARD_REG_ELT_TYPE *scan_xp_ = (c), *scan_yp_ = (reg_class_contents[k]); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto superclass; } while (0);

 superclass:
   reg_class_superunion[i][j] = (enum reg_class) k;
 }
    }




  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    {
      for (j = 0; j < (int) LIM_REG_CLASSES; j++)
 {
   reg_class_superclasses[i][j] = LIM_REG_CLASSES;
   reg_class_subclasses[i][j] = LIM_REG_CLASSES;
 }
    }

  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    {
      if (i == (int) NO_REGS)
 continue;

      for (j = i + 1; j < (int) LIM_REG_CLASSES; j++)
 {
   enum reg_class *p;

   do { HARD_REG_ELT_TYPE *scan_xp_ = (reg_class_contents[i]), *scan_yp_ = (reg_class_contents[j]); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto subclass; } while (0);

   continue;
 subclass:


   p = &reg_class_superclasses[i][0];
   while (*p != LIM_REG_CLASSES) p++;
   *p = (enum reg_class) j;

   p = &reg_class_subclasses[j][0];
   while (*p != LIM_REG_CLASSES) p++;
   *p = (enum reg_class) i;
 }
    }



  do { HARD_REG_ELT_TYPE *scan_tp_ = (fixed_reg_set); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);
  do { HARD_REG_ELT_TYPE *scan_tp_ = (call_used_reg_set); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);
  do { HARD_REG_ELT_TYPE *scan_tp_ = (call_fixed_reg_set); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);
  do { HARD_REG_ELT_TYPE *scan_tp_ = (regs_invalidated_by_call); scan_tp_[0] = 0; scan_tp_[1] = 0; scan_tp_[2] = 0; } while (0);

  memcpy (call_fixed_regs, fixed_regs, sizeof call_fixed_regs);

  n_non_fixed_regs = 0;

  for (i = 0; i < 176; i++)
    {
      if (fixed_regs[i])
 ((fixed_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
      else
 n_non_fixed_regs++;

      if (call_used_regs[i])
 ((call_used_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
      if (call_fixed_regs[i])
 ((call_fixed_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
      if ((reg_class_size[(int) (mips_regno_to_class[ (i) ])] == 1))
 ((losing_caller_save_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
# 458 "../../../kg++fe/gnu/regclass.c"
      if (i == (0 + 29) || i == (0 + 1))
 ;

      else if (i == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30))
 ;


      else if (i == 0 && fixed_regs[i])
 ;


      else if (i == (0 + 28) && fixed_regs[i])
 ;

      else if (0

        || call_really_used_regs[i]



        || global_regs[i])
 ((regs_invalidated_by_call)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
    }

  memset (contains_reg_of_mode, 0, sizeof (contains_reg_of_mode));
  memset (allocatable_regs_of_mode, 0, sizeof (allocatable_regs_of_mode));
  for (m = 0; m < (unsigned int) MAX_MACHINE_MODE; m++)
    for (i = 0; i < (int) LIM_REG_CLASSES; i++)
      if ((unsigned) mips_class_max_nregs (i, m) <= reg_class_size[i])
 for (j = 0; j < 176; j++)
   if (!fixed_regs [j] && (!!((reg_class_contents[i])[(j) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((j) % ((unsigned) (8 * 8))))))
       && mips_hard_regno_mode_ok[ (int)(m) ][ (j) ])
      {
        contains_reg_of_mode [i][m] = 1;
        allocatable_regs_of_mode [m] = 1;
        break;
      }




  for (m = 0; m < (unsigned int) MAX_MACHINE_MODE; m++)
    if (allocatable_regs_of_mode [m])
      {
 for (i = 0; i < (int) LIM_REG_CLASSES; i++)
   if (contains_reg_of_mode [i][m])
     for (j = 0; j < (int) LIM_REG_CLASSES; j++)
       {
  int cost;
  enum reg_class *p1, *p2;

  if (!contains_reg_of_mode [j][m])
    {
      move_cost[m][i][j] = 65536;
      may_move_in_cost[m][i][j] = 65536;
      may_move_out_cost[m][i][j] = 65536;
    }
  else
    {
      cost = mips_register_move_cost (m, i, j);

      for (p2 = &reg_class_subclasses[j][0];
    *p2 != LIM_REG_CLASSES;
    p2++)
        if (*p2 != i && contains_reg_of_mode [*p2][m])
   cost = ((cost) > (move_cost [m][i][*p2]) ? (cost) : (move_cost [m][i][*p2]));

      for (p1 = &reg_class_subclasses[i][0];
    *p1 != LIM_REG_CLASSES;
    p1++)
        if (*p1 != j && contains_reg_of_mode [*p1][m])
   cost = ((cost) > (move_cost [m][*p1][j]) ? (cost) : (move_cost [m][*p1][j]));

      move_cost[m][i][j] = cost;

      if (reg_class_subset_p (i, j))
        may_move_in_cost[m][i][j] = 0;
      else
        may_move_in_cost[m][i][j] = cost;

      if (reg_class_subset_p (j, i))
        may_move_out_cost[m][i][j] = 0;
      else
        may_move_out_cost[m][i][j] = cost;
    }
       }
   else
     for (j = 0; j < (int) LIM_REG_CLASSES; j++)
       {
  move_cost[m][i][j] = 65536;
  may_move_in_cost[m][i][j] = 65536;
  may_move_out_cost[m][i][j] = 65536;
       }
      }
}





static void
init_reg_modes ()
{
  int i;

  for (i = 0; i < 176; i++)
    {
      reg_raw_mode[i] = choose_hard_reg_mode (i, 1);






      if (reg_raw_mode[i] == VOIDmode)
 reg_raw_mode[i] = i == 0 ? word_mode : reg_raw_mode[i-1];
    }
}




void
init_regs ()
{


  init_reg_sets_1 ();

  init_reg_modes ();

  init_reg_autoinc ();
}




void
init_fake_stack_mems ()
{

  {
    int i;

    for (i = 0; i < MAX_MACHINE_MODE; i++)
      top_of_stack[i] = gen_rtx_MEM (i, (global_rtl[GR_STACK_POINTER]));
  }

}






int
memory_move_secondary_cost (mode, class, in)
     enum machine_mode mode;
     enum reg_class class;
     int in;
{
  enum reg_class altclass;
  int partial_cost = 0;


  rtx mem __attribute__ ((__unused__)) = top_of_stack[(int) mode];


  if (in)
    {

      altclass = mips_secondary_reload_class (class, mode, mem, 1);



    }
  else
    {

      altclass = mips_secondary_reload_class (class, mode, mem, 0);



    }

  if (altclass == NO_REGS)
    return 0;

  if (in)
    partial_cost = mips_register_move_cost (mode, altclass, class);
  else
    partial_cost = mips_register_move_cost (mode, class, altclass);

  if (class == altclass)







    return partial_cost;



  return memory_move_secondary_cost (mode, altclass, in) + partial_cost;
}





enum machine_mode
choose_hard_reg_mode (regno, nregs)
     unsigned int regno __attribute__ ((__unused__));
     unsigned int nregs;
{
  unsigned int m;
  enum machine_mode found_mode = VOIDmode, mode;





  for (mode = class_narrowest_mode[(int) (MODE_INT)];
       mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    if ((unsigned) mips_hard_regno_nregs (regno, mode) == nregs
 && mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
      found_mode = mode;

  if (found_mode != VOIDmode)
    return found_mode;

  for (mode = class_narrowest_mode[(int) (MODE_FLOAT)];
       mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    if ((unsigned) mips_hard_regno_nregs (regno, mode) == nregs
 && mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
      found_mode = mode;

  if (found_mode != VOIDmode)
    return found_mode;

  for (mode = class_narrowest_mode[(int) (MODE_VECTOR_FLOAT)];
       mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    if ((unsigned) mips_hard_regno_nregs (regno, mode) == nregs
 && mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
      found_mode = mode;

  if (found_mode != VOIDmode)
    return found_mode;

  for (mode = class_narrowest_mode[(int) (MODE_VECTOR_INT)];
       mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    if ((unsigned) mips_hard_regno_nregs (regno, mode) == nregs
 && mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
      found_mode = mode;

  if (found_mode != VOIDmode)
    return found_mode;


  for (m = (unsigned int) CCmode; m < (unsigned int) (int) MAX_MACHINE_MODE; ++m)
    {
      mode = (enum machine_mode) m;
      if ((unsigned) mips_hard_regno_nregs (regno, mode) == nregs
   && mips_hard_regno_mode_ok[ (int)(mode) ][ (regno) ])
 return mode;
    }


  return VOIDmode;
}





void
fix_register (name, fixed, call_used)
     const char *name;
     int fixed, call_used;
{
  int i;




  if ((i = decode_reg_name (name)) >= 0)
    {
      if ((i == (0 + 29)

    || i == ((target_flags & 0x00100000) ? 0 + 17 : 0 + 30)



    )
   && (fixed == 0 || call_used == 0))
 {
   static const char * const what_option[2][2] = {
     { "call-saved", "call-used" },
     { "no-such-option", "fixed" }};

   error ("can't use '%s' as a %s register", name,
   what_option[fixed][call_used]);
 }
      else
 {
   fixed_regs[i] = fixed;
   call_used_regs[i] = call_used;

   if (fixed == 0)
     call_really_used_regs[i] = call_used;

 }
    }
  else
    {
      warning ("unknown register name: %s", name);
    }
}



void
globalize_reg (i)
     int i;
{
  if (fixed_regs[i] == 0 && no_global_reg_vars)
    error ("global register variable follows a function definition");

  if (global_regs[i])
    {
      warning ("register used for two global register variables");
      return;
    }

  if (call_used_regs[i] && ! fixed_regs[i])
    warning ("call-clobbered register used for global register variable");

  global_regs[i] = 1;


  if (fixed_regs[i])
    return;

  fixed_regs[i] = call_used_regs[i] = call_fixed_regs[i] = 1;
  n_non_fixed_regs--;

  ((fixed_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
  ((call_used_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
  ((call_fixed_reg_set)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
  ((regs_invalidated_by_call)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));
}
# 823 "../../../kg++fe/gnu/regclass.c"
struct costs
{
  int cost[(int) LIM_REG_CLASSES];
  int mem_cost;
};


struct reg_pref
{

  char prefclass;
# 842 "../../../kg++fe/gnu/regclass.c"
  char altclass;
};



static struct costs *costs;



static struct costs init_cost;




static struct reg_pref *reg_pref;



static struct reg_pref *reg_pref_buffer;



static int frequency;

static rtx scan_one_insn (rtx, int);
static void record_operand_costs (rtx, struct costs *, struct reg_pref *);
static void dump_regclass (FILE *);
static void record_reg_classes (int, int, rtx *, enum machine_mode *, const char **, rtx, struct costs *, struct reg_pref *);


static int copy_cost (rtx, enum machine_mode, enum reg_class, int);

static void record_address_regs (rtx, enum reg_class, int);



static void reg_scan_mark_refs (rtx, rtx, int, unsigned int);





enum reg_class
reg_preferred_class (regno)
     int regno;
{
  if (reg_pref == 0)
    return GR_REGS;
  return (enum reg_class) reg_pref[regno].prefclass;
}

enum reg_class
reg_alternate_class (regno)
     int regno;
{
  if (reg_pref == 0)
    return ALL_REGS;

  return (enum reg_class) reg_pref[regno].altclass;
}



void
regclass_init ()
{
  int i;

  init_cost.mem_cost = 10000;
  for (i = 0; i < (int) LIM_REG_CLASSES; i++)
    init_cost.cost[i] = 10000;



  reg_pref = ((void *)0);


  no_global_reg_vars = 1;
}


static void
dump_regclass (dump)
     FILE *dump;
{
  static const char *const reg_class_names[] = { "NO_REGS", "M16_NA_REGS", "M16_REGS", "T_REG", "M16_T_REGS", "GR_REGS", "FP_REGS", "HI_REG", "LO_REG", "HILO_REG", "MD_REGS", "COP0_REGS", "COP2_REGS", "COP3_REGS", "HI_AND_GR_REGS", "LO_AND_GR_REGS", "HILO_AND_GR_REGS", "HI_AND_FP_REGS", "COP0_AND_GR_REGS", "COP2_AND_GR_REGS", "COP3_AND_GR_REGS", "ALL_COP_REGS", "ALL_COP_AND_GR_REGS", "ST_REGS", "ALL_REGS" };
  int i;
  for (i = 176; i < max_regno; i++)
    {
      int class;
      if ((((reg_n_info)->data.reg[i])->refs))
 {
   fprintf (dump, "  Register %i costs:", i);
   for (class = 0; class < (int) (int) LIM_REG_CLASSES; class++)
     if (contains_reg_of_mode [(enum reg_class) class][((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode)]





  && ! invalid_mode_change_p (i, (enum reg_class) class,
         ((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode))

  )
     fprintf (dump, " %s:%i", reg_class_names[class],
       costs[i].cost[(enum reg_class) class]);
   fprintf (dump, " MEM:%i\n", costs[i].mem_cost);
 }
    }
}




static void
record_operand_costs (insn, op_costs, reg_pref)
     rtx insn;
     struct costs *op_costs;
     struct reg_pref *reg_pref;
{
  const char *constraints[30];
  enum machine_mode modes[30];
  int i;

  for (i = 0; i < recog_data.n_operands; i++)
    {
      constraints[i] = recog_data.constraints[i];
      modes[i] = recog_data.operand_mode[i];
    }







  for (i = 0; i < recog_data.n_operands; i++)
    {
      op_costs[i] = init_cost;

      if (((enum rtx_code) (recog_data.operand[i])->code) == SUBREG)
 recog_data.operand[i] = (((recog_data.operand[i])->fld[0]).rtx);

      if (((enum rtx_code) (recog_data.operand[i])->code) == MEM)
 record_address_regs ((((recog_data.operand[i])->fld[0]).rtx),
        ((target_flags & 0x00100000) ? M16_REGS : GR_REGS), frequency * 2);
      else if (constraints[i][0] == 'p'
        || 0)
 record_address_regs (recog_data.operand[i],
        ((target_flags & 0x00100000) ? M16_REGS : GR_REGS), frequency * 2);
    }





  for (i = 0; i < (int) recog_data.n_operands - 1; i++)
    if (constraints[i][0] == '%')
      {
 const char *xconstraints[30];
 int j;




 for (j = 0; j < recog_data.n_operands; j++)
   xconstraints[j] = constraints[j];

 xconstraints[i] = constraints[i+1];
 xconstraints[i+1] = constraints[i];
 record_reg_classes (recog_data.n_alternatives, recog_data.n_operands,
       recog_data.operand, modes,
       xconstraints, insn, op_costs, reg_pref);
      }

  record_reg_classes (recog_data.n_alternatives, recog_data.n_operands,
        recog_data.operand, modes,
        constraints, insn, op_costs, reg_pref);
}
# 1029 "../../../kg++fe/gnu/regclass.c"
static rtx
scan_one_insn (insn, pass)
     rtx insn;
     int pass;
{
  enum rtx_code code = ((enum rtx_code) (insn)->code);
  enum rtx_code pat_code;
  rtx set, note;
  int i, j;
  struct costs op_costs[30];

  if ((rtx_class[(int) (code)]) != 'i')
    return insn;

  pat_code = ((enum rtx_code) ((((insn)->fld[5]).rtx))->code);
  if (pat_code == USE
      || pat_code == CLOBBER
      || pat_code == ASM_INPUT
      || pat_code == ADDR_VEC
      || pat_code == ADDR_DIFF_VEC)
    return insn;

  set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);
  extract_insn (insn);





  if (set != 0 && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
      && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == MEM
      && (note = find_reg_note (insn, REG_EQUIV,
    (rtx) 0)) != 0
      && ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == MEM)
    {
      costs[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].mem_cost
 -= (((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((((enum machine_mode) ((((set)->fld[0]).rtx))->mode)), (GR_REGS), (1)))

     * frequency);
      record_address_regs (((((((set)->fld[1]).rtx))->fld[0]).rtx),
      ((target_flags & 0x00100000) ? M16_REGS : GR_REGS), frequency * 2);
      return insn;
    }
# 1085 "../../../kg++fe/gnu/regclass.c"
  if (pass == 0 && optimize
      && recog_data.n_operands >= 3
      && recog_data.constraints[1][0] == '0'
      && recog_data.constraints[1][1] == 0
      && (((enum rtx_code) (recog_data.operand[1])->code) == LABEL_REF || ((enum rtx_code) (recog_data.operand[1])->code) == SYMBOL_REF || ((enum rtx_code) (recog_data.operand[1])->code) == CONST_INT || ((enum rtx_code) (recog_data.operand[1])->code) == CONST_DOUBLE || ((enum rtx_code) (recog_data.operand[1])->code) == CONST || ((enum rtx_code) (recog_data.operand[1])->code) == HIGH || ((enum rtx_code) (recog_data.operand[1])->code) == CONST_VECTOR || ((enum rtx_code) (recog_data.operand[1])->code) == CONSTANT_P_RTX)
      && ! rtx_equal_p (recog_data.operand[0], recog_data.operand[1])
      && ! rtx_equal_p (recog_data.operand[0], recog_data.operand[2])
      && ((enum rtx_code) (recog_data.operand[0])->code) == REG
      && (((mode_class[(int) (((enum machine_mode) (recog_data.operand[0])->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (recog_data.operand[0])->mode))]) == MODE_COMPLEX_FLOAT) == ((mode_class[(int) (recog_data.operand_mode[1])]) == MODE_FLOAT || (mode_class[(int) (recog_data.operand_mode[1])]) == MODE_COMPLEX_FLOAT)))

    {
      rtx previnsn = prev_real_insn (insn);
      rtx dest
 = gen_lowpart (recog_data.operand_mode[1],
         recog_data.operand[0]);
      rtx newinsn
 = emit_insn_before (gen_move_insn (dest, recog_data.operand[1]), insn);






      if (previnsn == 0 || ((enum rtx_code) (previnsn)->code) == JUMP_INSN)
 {
   basic_block b;
   for (b = (&entry_exit_blocks[0])->next_bb; b != (&entry_exit_blocks[1]); b = b->next_bb)
     if (insn == b->head)
       b->head = newinsn;
 }


      (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->sets)++;
      (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->refs)++;
      (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->freq) += frequency;

      *recog_data.operand_loc[1] = recog_data.operand[0];
      (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->refs)++;
      (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->freq) += frequency;
      for (i = recog_data.n_dups - 1; i >= 0; i--)
 if (recog_data.dup_num[i] == 1)
   {
     *recog_data.dup_loc[i] = recog_data.operand[0];
     (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->refs)++;
     (((reg_n_info)->data.reg[(((recog_data.operand[0])->fld[0]).rtuint)])->freq) += frequency;
   }

      return (((newinsn)->fld[1]).rtx);
    }

  record_operand_costs (insn, op_costs, reg_pref);




  for (i = 0; i < recog_data.n_operands; i++)
    if (((enum rtx_code) (recog_data.operand[i])->code) == REG
 && (((recog_data.operand[i])->fld[0]).rtuint) >= 176)
      {
 int regno = (((recog_data.operand[i])->fld[0]).rtuint);
 struct costs *p = &costs[regno], *q = &op_costs[i];

 p->mem_cost += q->mem_cost * frequency;
 for (j = 0; j < (int) LIM_REG_CLASSES; j++)
   p->cost[j] += q->cost[j] * frequency;
      }

  return insn;
}




static void
init_reg_autoinc ()
{
# 1207 "../../../kg++fe/gnu/regclass.c"
}






void
regclass (f, nregs, dump)
     rtx f;
     int nregs;
     FILE *dump;
{
  rtx insn;
  int i;
  int pass;

  init_recog ();

  costs = (struct costs *) xmalloc (nregs * sizeof (struct costs));
# 1239 "../../../kg++fe/gnu/regclass.c"
  for (pass = 0; pass <= flag_expensive_optimizations; pass++)
    {
      basic_block bb;

      if (dump)
 fprintf (dump, "\n\nPass %i\n\n",pass);


      memset ((char *) costs, 0, nregs * sizeof (struct costs));
# 1256 "../../../kg++fe/gnu/regclass.c"
      if (!optimize)
 {
   frequency = 1000;
   for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
     insn = scan_one_insn (insn, pass);
 }
      else
 for (bb = (&entry_exit_blocks[0])->next_bb; bb != (&entry_exit_blocks[1]); bb = bb->next_bb)
   {




     frequency = (optimize_size || (flag_branch_probabilities && !(&entry_exit_blocks[0])->count) ? 1000 : ((bb)->frequency * 1000 / 10000) ? ((bb)->frequency * 1000 / 10000) : 1);
     for (insn = bb->head; ; insn = (((insn)->fld[2]).rtx))
       {
  insn = scan_one_insn (insn, pass);
  if (insn == bb->end)
    break;
       }
   }






      if (pass == 0)
 reg_pref = reg_pref_buffer;

      if (dump)
 {
   dump_regclass (dump);
   fprintf (dump,"\n");
 }
      for (i = 176; i < nregs; i++)
 {
   int best_cost = (1 << ((8 * 4) - 2)) - 1;
   enum reg_class best = ALL_REGS, alt = NO_REGS;


   int class;
   struct costs *p = &costs[i];



   if (optimize && !(((reg_n_info)->data.reg[i])->refs) && !(((reg_n_info)->data.reg[i])->sets))
     continue;

   for (class = (int) ALL_REGS - 1; class > 0; class--)
     {


       if (!contains_reg_of_mode [class][((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode)]




    || invalid_mode_change_p (i, (enum reg_class) class,
         ((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode))

    )
  ;
       else if (p->cost[class] < best_cost)
  {
    best_cost = p->cost[class];
    best = (enum reg_class) class;
  }
       else if (p->cost[class] == best_cost)
  best = reg_class_subunion[(int) best][class];
     }
# 1335 "../../../kg++fe/gnu/regclass.c"
   if ((pass == 1 || dump) || ! flag_expensive_optimizations)
     for (class = 0; class < (int) LIM_REG_CLASSES; class++)
       if (p->cost[class] < p->mem_cost
    && (reg_class_size[(int) reg_class_subunion[(int) alt][class]]
        > reg_class_size[(int) alt])




    && ! invalid_mode_change_p (i, (enum reg_class) class,
           ((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode))

    )
  alt = reg_class_subunion[(int) alt][class];


   if (alt == best)
     alt = NO_REGS;

   if (dump
       && (reg_pref[i].prefclass != (int) best
    || reg_pref[i].altclass != (int) alt))
     {
       static const char *const reg_class_names[] = { "NO_REGS", "M16_NA_REGS", "M16_REGS", "T_REG", "M16_T_REGS", "GR_REGS", "FP_REGS", "HI_REG", "LO_REG", "HILO_REG", "MD_REGS", "COP0_REGS", "COP2_REGS", "COP3_REGS", "HI_AND_GR_REGS", "LO_AND_GR_REGS", "HILO_AND_GR_REGS", "HI_AND_FP_REGS", "COP0_AND_GR_REGS", "COP2_AND_GR_REGS", "COP3_AND_GR_REGS", "ALL_COP_REGS", "ALL_COP_AND_GR_REGS", "ST_REGS", "ALL_REGS" };
       fprintf (dump, "  Register %i", i);
       if (alt == ALL_REGS || best == ALL_REGS)
  fprintf (dump, " pref %s\n", reg_class_names[(int) best]);
       else if (alt == NO_REGS)
  fprintf (dump, " pref %s or none\n", reg_class_names[(int) best]);
       else
  fprintf (dump, " pref %s, else %s\n",
    reg_class_names[(int) best],
    reg_class_names[(int) alt]);
     }


   reg_pref[i].prefclass = (int) best;
   reg_pref[i].altclass = (int) alt;
 }
    }




  free (costs);
}
# 1406 "../../../kg++fe/gnu/regclass.c"
static void
record_reg_classes (n_alts, n_ops, ops, modes,
      constraints, insn, op_costs, reg_pref)
     int n_alts;
     int n_ops;
     rtx *ops;
     enum machine_mode *modes;
     const char **constraints;
     rtx insn;
     struct costs *op_costs;
     struct reg_pref *reg_pref;
{
  int alt;
  int i, j;
  rtx set;




  for (alt = 0; alt < n_alts; alt++)
    {
      struct costs this_op_costs[30];
      int alt_fail = 0;
      int alt_cost = 0;
      enum reg_class classes[30];
      int allows_mem[30];
      int class;

      for (i = 0; i < n_ops; i++)
 {
   const char *p = constraints[i];
   rtx op = ops[i];
   enum machine_mode mode = modes[i];
   int allows_addr = 0;
   int win = 0;
   unsigned char c;


   classes[i] = NO_REGS;
   allows_mem[i] = 0;




   if (*p == 0)
     {
       if (((enum rtx_code) (op)->code) == REG && (((op)->fld[0]).rtuint) >= 176)
  memset ((char *) &this_op_costs[i], 0, sizeof this_op_costs[i]);

       continue;
     }






   while (*p == '%' || *p == '=' || *p == '+' || *p == '&')
     p++;

   if (p[0] >= '0' && p[0] <= '0' + i && (p[1] == ',' || p[1] == 0))
     {



       j = p[0] - '0';
       classes[i] = classes[j];
       allows_mem[i] = allows_mem[j];

       if (((enum rtx_code) (op)->code) != REG || (((op)->fld[0]).rtuint) < 176)
  {


    if (rtx_equal_p (ops[j], op))
      win = 1;





    else if (classes[j] != NO_REGS)
      alt_cost += copy_cost (op, mode, classes[j], 1), win = 1;
  }
       else if (((enum rtx_code) (ops[j])->code) != REG
         || (((ops[j])->fld[0]).rtuint) < 176)
  {





    if (classes[j] == NO_REGS)
      alt_fail = 1;





    else
      alt_cost += copy_cost (ops[j], mode, classes[j], 1);
  }
       else
  {





    struct costs *pp = &this_op_costs[i];

    for (class = 0; class < (int) LIM_REG_CLASSES; class++)
      pp->cost[class]
        = ((recog_data.operand_type[i] != OP_OUT
     ? may_move_in_cost[mode][class][(int) classes[i]]
     : 0)
    + (recog_data.operand_type[i] != OP_IN
       ? may_move_out_cost[mode][(int) classes[i]][class]
       : 0));





    pp->mem_cost
      = ((recog_data.operand_type[i] != OP_IN
          ? ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (classes[i]), (0)))
   : 0)
         + (recog_data.operand_type[i] != OP_OUT
     ? ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (classes[i]), (1)))
     : 0) - allows_mem[i]);






    if (reg_pref)
      alt_cost
        += (may_move_in_cost[mode]
     [(unsigned char) reg_pref[(((op)->fld[0]).rtuint)].prefclass]
     [(int) classes[i]]);

    if ((((ops[i])->fld[0]).rtuint) != (((ops[j])->fld[0]).rtuint)
        && ! find_reg_note (insn, REG_DEAD, op))
      alt_cost += 2;




    while (*p && *p++ != ',')
      ;

    constraints[i] = p;
    continue;
  }
     }





   while (*p && (c = *p++) != ',')
     switch (c)
       {
       case '*':

  p++;
  break;

       case '?':
  alt_cost += 2;
       case '!': case '#': case '&':
       case '0': case '1': case '2': case '3': case '4':
       case '5': case '6': case '7': case '8': case '9':
  break;

       case 'p':
  allows_addr = 1;
  win = address_operand (op, ((enum machine_mode) (op)->mode));



  classes[i]
    = reg_class_subunion[(int) classes[i]]
      [(int) ((target_flags & 0x00100000) ? M16_REGS : GR_REGS)];
  break;

       case 'm': case 'o': case 'V':


  allows_mem[i] = 1;
  if (((enum rtx_code) (op)->code) == MEM)
    win = 1;
  break;

       case '<':
  if (((enum rtx_code) (op)->code) == MEM
      && (((enum rtx_code) ((((op)->fld[0]).rtx))->code) == PRE_DEC
   || ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == POST_DEC))
    win = 1;
  break;

       case '>':
  if (((enum rtx_code) (op)->code) == MEM
      && (((enum rtx_code) ((((op)->fld[0]).rtx))->code) == PRE_INC
   || ((enum rtx_code) ((((op)->fld[0]).rtx))->code) == POST_INC))
    win = 1;
  break;

       case 'E':
       case 'F':
  if (((enum rtx_code) (op)->code) == CONST_DOUBLE
      || (((enum rtx_code) (op)->code) == CONST_VECTOR
   && ((mode_class[(int) (((enum machine_mode) (op)->mode))])
       == MODE_VECTOR_FLOAT)))
    win = 1;
  break;

       case 'G':
       case 'H':
  if (((enum rtx_code) (op)->code) == CONST_DOUBLE
      && ((c) == 'G' && (op) == (const_tiny_rtx[0][(int) (((enum machine_mode) (op)->mode))])))
    win = 1;
  break;

       case 's':
  if (((enum rtx_code) (op)->code) == CONST_INT
      || (((enum rtx_code) (op)->code) == CONST_DOUBLE
   && ((enum machine_mode) (op)->mode) == VOIDmode))
    break;
       case 'i':
  if ((((enum rtx_code) (op)->code) == LABEL_REF || ((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == CONST_INT || ((enum rtx_code) (op)->code) == CONST_DOUBLE || ((enum rtx_code) (op)->code) == CONST || ((enum rtx_code) (op)->code) == HIGH || ((enum rtx_code) (op)->code) == CONST_VECTOR || ((enum rtx_code) (op)->code) == CONSTANT_P_RTX)

      && (! flag_pic || (! pic_address_needs_scratch (op)))

      )
    win = 1;
  break;

       case 'n':
  if (((enum rtx_code) (op)->code) == CONST_INT
      || (((enum rtx_code) (op)->code) == CONST_DOUBLE
   && ((enum machine_mode) (op)->mode) == VOIDmode))
    win = 1;
  break;

       case 'I':
       case 'J':
       case 'K':
       case 'L':
       case 'M':
       case 'N':
       case 'O':
       case 'P':
  if (((enum rtx_code) (op)->code) == CONST_INT
      && ((c) == 'I' ? ((unsigned long long) (((((op)->fld[0]).rtwint)) + 0x8000) < 0x10000) : (c) == 'J' ? (((((op)->fld[0]).rtwint)) == 0) : (c) == 'K' ? ((unsigned long long) ((((op)->fld[0]).rtwint)) < 0x10000) : (c) == 'L' ? ((((((op)->fld[0]).rtwint)) & 0x0000ffff) == 0 && ((((((op)->fld[0]).rtwint)) & ~2147483647) == 0 || (((((op)->fld[0]).rtwint)) & ~2147483647) == ~2147483647)) : (c) == 'M' ? (((((((op)->fld[0]).rtwint)) & ~0x0000ffff) != 0) && ((((((op)->fld[0]).rtwint)) & ~0x0000ffff) != ~0x0000ffff) && ((((((op)->fld[0]).rtwint)) & 0x0000ffff) != 0 || ((((((op)->fld[0]).rtwint)) & ~2147483647) != 0 && (((((op)->fld[0]).rtwint)) & ~2147483647) != ~2147483647))) : (c) == 'N' ? ((unsigned long long) (((((op)->fld[0]).rtwint)) + 0xffff) < 0xffff) : (c) == 'O' ? ((unsigned long long) (((((op)->fld[0]).rtwint)) + 0x4000) < 0x8000) : (c) == 'P' ? (((((op)->fld[0]).rtwint)) != 0 && ((((((op)->fld[0]).rtwint)) & ~0x0000ffff) == 0)) : 0))
    win = 1;
  break;

       case 'X':
  win = 1;
  break;

       case 'g':
  if (((enum rtx_code) (op)->code) == MEM
      || ((((enum rtx_code) (op)->code) == LABEL_REF || ((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == CONST_INT || ((enum rtx_code) (op)->code) == CONST_DOUBLE || ((enum rtx_code) (op)->code) == CONST || ((enum rtx_code) (op)->code) == HIGH || ((enum rtx_code) (op)->code) == CONST_VECTOR || ((enum rtx_code) (op)->code) == CONSTANT_P_RTX)

   && (! flag_pic || (! pic_address_needs_scratch (op)))

   ))
    win = 1;
  allows_mem[i] = 1;
       case 'r':
  classes[i]
    = reg_class_subunion[(int) classes[i]][(int) GR_REGS];
  break;

       default:
  if (mips_char_to_class[(unsigned char)(c)] != NO_REGS)
    classes[i]
      = reg_class_subunion[(int) classes[i]]
        [(int) mips_char_to_class[(unsigned char)(c)]];

  else if ((((c) == 'T') ? double_memory_operand (op, ((enum machine_mode) (op)->mode)) : ((c) == 'Q') ? (((enum rtx_code) (op)->code) == CONST && mips16_gp_offset_p (op)) : (((enum rtx_code) (op)->code) != MEM) ? 0 : ((c) == 'R') ? simple_memory_operand (op, ((enum machine_mode) (op)->mode)) : 0))
    win = 1;

  if (0)
    {

      allows_mem[i] = 1;
      if (((enum rtx_code) (op)->code) == MEM)
        win = 1;
    }
  if (0)
    {

      allows_addr = 1;
      if (address_operand (op, ((enum machine_mode) (op)->mode)))
        win = 1;



      classes[i]
        = reg_class_subunion[(int) classes[i]]
          [(int) ((target_flags & 0x00100000) ? M16_REGS : GR_REGS)];
    }

  break;
       }

   constraints[i] = p;
# 1725 "../../../kg++fe/gnu/regclass.c"
   if (((enum rtx_code) (op)->code) == REG && (((op)->fld[0]).rtuint) >= 176)
     {
       if (classes[i] == NO_REGS)
  {






    alt_fail = 1;
  }
       else
  {
    struct costs *pp = &this_op_costs[i];

    for (class = 0; class < (int) LIM_REG_CLASSES; class++)
      pp->cost[class]
        = ((recog_data.operand_type[i] != OP_OUT
     ? may_move_in_cost[mode][class][(int) classes[i]]
     : 0)
    + (recog_data.operand_type[i] != OP_IN
       ? may_move_out_cost[mode][(int) classes[i]][class]
       : 0));





    pp->mem_cost
      = ((recog_data.operand_type[i] != OP_IN
          ? ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (classes[i]), (0)))
   : 0)
         + (recog_data.operand_type[i] != OP_OUT
     ? ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (classes[i]), (1)))
     : 0) - allows_mem[i]);






    if (reg_pref)
      alt_cost
        += (may_move_in_cost[mode]
     [(unsigned char) reg_pref[(((op)->fld[0]).rtuint)].prefclass]
     [(int) classes[i]]);
  }
     }





   else if (win
     || (((enum rtx_code) (op)->code) == REG
         && reg_fits_class_p (op, classes[i], 0, ((enum machine_mode) (op)->mode))))
     ;




   else if (classes[i] != NO_REGS)
     {
       if (recog_data.operand_type[i] != OP_OUT)
  alt_cost += copy_cost (op, mode, classes[i], 1);

       if (recog_data.operand_type[i] != OP_IN)
  alt_cost += copy_cost (op, mode, classes[i], 0);
     }




   else if ((((enum rtx_code) (op)->code) == LABEL_REF || ((enum rtx_code) (op)->code) == SYMBOL_REF || ((enum rtx_code) (op)->code) == CONST_INT || ((enum rtx_code) (op)->code) == CONST_DOUBLE || ((enum rtx_code) (op)->code) == CONST || ((enum rtx_code) (op)->code) == HIGH || ((enum rtx_code) (op)->code) == CONST_VECTOR || ((enum rtx_code) (op)->code) == CONSTANT_P_RTX) && (allows_addr || allows_mem[i]))
     alt_cost += ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (classes[i]), (1)));
   else
     alt_fail = 1;
 }

      if (alt_fail)
 continue;




      for (i = 0; i < n_ops; i++)
 if (((enum rtx_code) (ops[i])->code) == REG
     && (((ops[i])->fld[0]).rtuint) >= 176)
   {
     struct costs *pp = &op_costs[i], *qq = &this_op_costs[i];
     int scale = 1 + (recog_data.operand_type[i] == OP_INOUT);

     pp->mem_cost = ((pp->mem_cost) < ((qq->mem_cost + alt_cost) * scale) ? (pp->mem_cost) : ((qq->mem_cost + alt_cost) * scale));


     for (class = 0; class < (int) LIM_REG_CLASSES; class++)
       pp->cost[class] = ((pp->cost[class]) < ((qq->cost[class] + alt_cost) * scale) ? (pp->cost[class]) : ((qq->cost[class] + alt_cost) * scale));

   }
    }
# 1841 "../../../kg++fe/gnu/regclass.c"
  if ((set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0)) != 0
      && ops[0] == (((set)->fld[0]).rtx) && ops[1] == (((set)->fld[1]).rtx)
      && ((enum rtx_code) (ops[0])->code) == REG && ((enum rtx_code) (ops[1])->code) == REG
      && find_regno_note (insn, REG_DEAD, (((ops[1])->fld[0]).rtuint)))
    for (i = 0; i <= 1; i++)
      if ((((ops[i])->fld[0]).rtuint) >= 176)
 {
   unsigned int regno = (((ops[!i])->fld[0]).rtuint);
   enum machine_mode mode = ((enum machine_mode) (ops[!i])->mode);
   int class;
   unsigned int nr;

   if (regno >= 176 && reg_pref != 0)
     {
       enum reg_class pref = reg_pref[regno].prefclass;

       if ((reg_class_size[(unsigned char) pref]
     == (unsigned) mips_class_max_nregs (pref, mode))
    && mips_register_move_cost (mode, pref, pref) < 10 * 2)
  op_costs[i].cost[(unsigned char) pref] = -1;
     }
   else if (regno < 176)
     for (class = 0; class < (int) LIM_REG_CLASSES; class++)
       if ((!!((reg_class_contents[class])[(regno) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((regno) % ((unsigned) (8 * 8))))))
    && reg_class_size[class] == (unsigned) mips_class_max_nregs (class, mode))
  {
    if (reg_class_size[class] == 1)
      op_costs[i].cost[class] = -1;
    else
      {
        for (nr = 0; nr < (unsigned) mips_hard_regno_nregs (regno, mode); nr++)
   {
     if (! (!!((reg_class_contents[class])[(regno + nr) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((regno + nr) % ((unsigned) (8 * 8)))))))

       break;
   }

        if (nr == (unsigned) mips_hard_regno_nregs (regno, mode))
   op_costs[i].cost[class] = -1;
      }
  }
 }
}






static int
copy_cost (x, mode, class, to_p)
     rtx x;
     enum machine_mode mode __attribute__ ((__unused__));
     enum reg_class class;
     int to_p __attribute__ ((__unused__));
{

  enum reg_class secondary_class = NO_REGS;





  if (((enum rtx_code) (x)->code) == SCRATCH)
    return 0;


  class = ((class) != ALL_REGS ? (! (target_flags & 0x00100000) ? (class) : ((class) != GR_REGS ? (class) : M16_REGS)) : (((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_FLOAT || (mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_COMPLEX_FLOAT) ? ((target_flags & 0x00000100) ? ((target_flags & 0x00100000) ? M16_REGS : GR_REGS) : FP_REGS) : (((mode_class[(int) (((enum machine_mode) (x)->mode))]) == MODE_INT || ((enum machine_mode) (x)->mode) == VOIDmode) ? ((target_flags & 0x00100000) ? M16_REGS : GR_REGS) : (class))));
# 1917 "../../../kg++fe/gnu/regclass.c"
  if (to_p == 1)
    secondary_class = mips_secondary_reload_class (class, mode, x, 1);



  if (! to_p)
    secondary_class = mips_secondary_reload_class (class, mode, x, 0);


  if (secondary_class != NO_REGS)
    return (move_cost[mode][(int) secondary_class][(int) class]
     + copy_cost (x, mode, secondary_class, 2));






  if (((enum rtx_code) (x)->code) == MEM || class == NO_REGS)
    return ((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost ((mode), (class), (to_p)));

  else if (((enum rtx_code) (x)->code) == REG)
    return move_cost[mode][(int) mips_regno_to_class[ ((((x)->fld[0]).rtuint)) ]][(int) class];

  else

    return ((1) * 4);
}
# 1955 "../../../kg++fe/gnu/regclass.c"
static void
record_address_regs (x, class, scale)
     rtx x;
     enum reg_class class;
     int scale;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);

  switch (code)
    {
    case CONST_INT:
    case CONST:
    case CC0:
    case PC:
    case SYMBOL_REF:
    case LABEL_REF:
      return;

    case PLUS:
# 1986 "../../../kg++fe/gnu/regclass.c"
      {
 rtx arg0 = (((x)->fld[0]).rtx);
 rtx arg1 = (((x)->fld[1]).rtx);
 enum rtx_code code0 = ((enum rtx_code) (arg0)->code);
 enum rtx_code code1 = ((enum rtx_code) (arg1)->code);


 if (code0 == SUBREG)
   arg0 = (((arg0)->fld[0]).rtx), code0 = ((enum rtx_code) (arg0)->code);
 if (code1 == SUBREG)
   arg1 = (((arg1)->fld[0]).rtx), code1 = ((enum rtx_code) (arg1)->code);




 if (1 == 1)
   record_address_regs (arg0, class, scale);






 else if (NO_REGS == ((target_flags & 0x00100000) ? M16_REGS : GR_REGS))
   {
     record_address_regs (arg0, class, scale);
     if (! (((enum rtx_code) (arg1)->code) == LABEL_REF || ((enum rtx_code) (arg1)->code) == SYMBOL_REF || ((enum rtx_code) (arg1)->code) == CONST_INT || ((enum rtx_code) (arg1)->code) == CONST_DOUBLE || ((enum rtx_code) (arg1)->code) == CONST || ((enum rtx_code) (arg1)->code) == HIGH || ((enum rtx_code) (arg1)->code) == CONST_VECTOR || ((enum rtx_code) (arg1)->code) == CONSTANT_P_RTX))
       record_address_regs (arg1, class, scale);
   }




 else if (code1 == CONST_INT || code1 == CONST_DOUBLE)
   record_address_regs (arg0, class, scale);




 else if (code1 == SYMBOL_REF || code1 == CONST || code1 == LABEL_REF)
   record_address_regs (arg0, NO_REGS, scale);
# 2053 "../../../kg++fe/gnu/regclass.c"
 else if ((code0 == REG && (((arg0))->frame_related))
   || code1 == MULT)
   {
     record_address_regs (arg0, ((target_flags & 0x00100000) ? M16_REGS : GR_REGS), scale);
     record_address_regs (arg1, NO_REGS, scale);
   }
 else if ((code1 == REG && (((arg1))->frame_related))
   || code0 == MULT)
   {
     record_address_regs (arg0, NO_REGS, scale);
     record_address_regs (arg1, ((target_flags & 0x00100000) ? M16_REGS : GR_REGS), scale);
   }




 else
   {
     record_address_regs (arg0, ((target_flags & 0x00100000) ? M16_REGS : GR_REGS),
     scale / 2);
     record_address_regs (arg0, NO_REGS, scale / 2);
     record_address_regs (arg1, ((target_flags & 0x00100000) ? M16_REGS : GR_REGS),
     scale / 2);
     record_address_regs (arg1, NO_REGS, scale / 2);
   }
      }
      break;




    case POST_MODIFY:
    case PRE_MODIFY:
      record_address_regs ((((x)->fld[0]).rtx), ((target_flags & 0x00100000) ? M16_REGS : GR_REGS),
      2 * scale);
      if ((((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == REG))
 record_address_regs (((((((x)->fld[1]).rtx))->fld[1]).rtx),
        NO_REGS, 2 * scale);
      break;

    case POST_INC:
    case PRE_INC:
    case POST_DEC:
    case PRE_DEC:
# 2108 "../../../kg++fe/gnu/regclass.c"
      record_address_regs ((((x)->fld[0]).rtx), class, 2 * scale);
      break;

    case REG:
      {
 struct costs *pp = &costs[(((x)->fld[0]).rtuint)];
 int i;

 pp->mem_cost += (((((mips_tune == PROCESSOR_R4000) || (mips_tune == PROCESSOR_R6000)) ? 6 : 4) + memory_move_secondary_cost (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)), (class), (1))) * scale) / 2;

 for (i = 0; i < (int) LIM_REG_CLASSES; i++)
   pp->cost[i] += (may_move_in_cost[(((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode)][i][(int) class] * scale) / 2;
      }
      break;

    default:
      {
 const char *fmt = (rtx_format[(int) (code)]);
 int i;
 for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
   if (fmt[i] == 'e')
     record_address_regs ((((x)->fld[i]).rtx), class, scale);
      }
    }
}
# 2164 "../../../kg++fe/gnu/regclass.c"
static short *renumber;
static size_t regno_allocated;
static unsigned int reg_n_max;
# 2175 "../../../kg++fe/gnu/regclass.c"
void
allocate_reg_info (num_regs, new_p, renumber_p)
     size_t num_regs;
     int new_p;
     int renumber_p;
{
  size_t size_info;
  size_t size_renumber;
  size_t min = (new_p) ? 0 : reg_n_max;
  struct reg_info_data *reg_data;

  if (num_regs > regno_allocated)
    {
      size_t old_allocated = regno_allocated;

      regno_allocated = num_regs + (num_regs / 20);
      size_renumber = regno_allocated * sizeof (short);

      if (!reg_n_info)
 {
   reg_n_info = varray_init (regno_allocated, VARRAY_DATA_REG, "reg_n_info");
   renumber = (short *) xmalloc (size_renumber);
   reg_pref_buffer = (struct reg_pref *) xmalloc (regno_allocated
           * sizeof (struct reg_pref));
 }

      else
 {
   ((reg_n_info) = varray_grow (reg_n_info, regno_allocated));

   if (new_p)
     {
       free ((char *) renumber);
       free ((char *) reg_pref);
       renumber = (short *) xmalloc (size_renumber);
       reg_pref_buffer = (struct reg_pref *) xmalloc (regno_allocated
        * sizeof (struct reg_pref));
     }

   else
     {
       renumber = (short *) xrealloc ((char *) renumber, size_renumber);
       reg_pref_buffer = (struct reg_pref *) xrealloc ((char *) reg_pref_buffer,
         regno_allocated
         * sizeof (struct reg_pref));
     }
 }

      size_info = (regno_allocated - old_allocated) * sizeof (reg_info)
 + sizeof (struct reg_info_data) - sizeof (reg_info);
      reg_data = (struct reg_info_data *) xcalloc (size_info, 1);
      reg_data->min_index = old_allocated;
      reg_data->max_index = regno_allocated - 1;
      reg_data->next = reg_info_head;
      reg_info_head = reg_data;
    }

  reg_n_max = num_regs;
  if (min < num_regs)
    {


      for (reg_data = reg_info_head;
    reg_data && reg_data->max_index >= min;
    reg_data = reg_data->next)
 {
   size_t min_index = reg_data->min_index;
   size_t max_index = reg_data->max_index;
   size_t max = ((max_index) < (num_regs) ? (max_index) : (num_regs));
   size_t local_min = min - min_index;
   size_t i;

   if (reg_data->min_index > num_regs)
     continue;

   if (min < min_index)
     local_min = 0;
   if (!reg_data->used_p)
     reg_data->used_p = 1;
   else
     memset ((char *) &reg_data->data[local_min], 0,
     sizeof (reg_info) * (max - min_index - local_min + 1));

   for (i = min_index+local_min; i <= max; i++)
     {
       ((reg_n_info)->data.reg[i]) = &reg_data->data[i-min_index];
       (((reg_n_info)->data.reg[i])->basic_block) = -1;
       renumber[i] = -1;
       reg_pref_buffer[i].prefclass = (char) NO_REGS;
       reg_pref_buffer[i].altclass = (char) NO_REGS;
     }
 }
    }



  if (reg_pref)
    reg_pref = reg_pref_buffer;

  if (renumber_p)
    reg_renumber = renumber;


  ;
}


void
free_reg_info ()
{
  if (reg_n_info)
    {
      struct reg_info_data *reg_data;
      struct reg_info_data *reg_next;

      do { if (reg_n_info) { free (reg_n_info); reg_n_info = (varray_type) 0; } } while (0);
      for (reg_data = reg_info_head; reg_data; reg_data = reg_next)
 {
   reg_next = reg_data->next;
   free ((char *) reg_data);
 }

      free (reg_pref_buffer);
      reg_pref_buffer = (struct reg_pref *) 0;
      reg_info_head = (struct reg_info_data *) 0;
      renumber = (short *) 0;
    }
  regno_allocated = 0;
  reg_n_max = 0;
}
# 2321 "../../../kg++fe/gnu/regclass.c"
int max_parallel;




static int max_set_parallel;

void
reg_scan (f, nregs, repeat)
     rtx f;
     unsigned int nregs;
     int repeat __attribute__ ((__unused__));
{
  rtx insn;

  allocate_reg_info (nregs, 1, 0);
  max_parallel = 3;
  max_set_parallel = 0;

  for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
    if (((enum rtx_code) (insn)->code) == INSN
 || ((enum rtx_code) (insn)->code) == CALL_INSN
 || ((enum rtx_code) (insn)->code) == JUMP_INSN)
      {
 if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
     && ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) > max_parallel)
   max_parallel = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem);
 reg_scan_mark_refs ((((insn)->fld[5]).rtx), insn, 0, 0);

 if ((((insn)->fld[8]).rtx))
   reg_scan_mark_refs ((((insn)->fld[8]).rtx), insn, 1, 0);
      }

  max_parallel += max_set_parallel;
}






void
reg_scan_update (first, last, old_max_regno)
     rtx first;
     rtx last;
     unsigned int old_max_regno;
{
  rtx insn;

  allocate_reg_info (max_reg_num (), 0, 0);

  for (insn = first; insn != last; insn = (((insn)->fld[2]).rtx))
    if (((enum rtx_code) (insn)->code) == INSN
 || ((enum rtx_code) (insn)->code) == CALL_INSN
 || ((enum rtx_code) (insn)->code) == JUMP_INSN)
      {
 if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL
     && ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) > max_parallel)
   max_parallel = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem);
 reg_scan_mark_refs ((((insn)->fld[5]).rtx), insn, 0, old_max_regno);

 if ((((insn)->fld[8]).rtx))
   reg_scan_mark_refs ((((insn)->fld[8]).rtx), insn, 1, old_max_regno);
      }
}






static void
reg_scan_mark_refs (x, insn, note_flag, min_regno)
     rtx x;
     rtx insn;
     int note_flag;
     unsigned int min_regno;
{
  enum rtx_code code;
  rtx dest;
  rtx note;

  if (!x)
    return;
  code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case CONST:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST_VECTOR:
    case CC0:
    case PC:
    case SYMBOL_REF:
    case LABEL_REF:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
      return;

    case REG:
      {
 unsigned int regno = (((x)->fld[0]).rtuint);

 if (regno >= min_regno)
   {
     (((reg_n_info)->data.reg[regno])->last_note_uid) = (((insn)->fld[0]).rtint);
     if (!note_flag)
       (((reg_n_info)->data.reg[regno])->last_uid) = (((insn)->fld[0]).rtint);
     if ((((reg_n_info)->data.reg[regno])->first_uid) == 0)
       (((reg_n_info)->data.reg[regno])->first_uid) = (((insn)->fld[0]).rtint);


     if (min_regno)
       (((reg_n_info)->data.reg[regno])->refs)++;
   }
      }
      break;

    case EXPR_LIST:
      if ((((x)->fld[0]).rtx))
 reg_scan_mark_refs ((((x)->fld[0]).rtx), insn, note_flag, min_regno);
      if ((((x)->fld[1]).rtx))
 reg_scan_mark_refs ((((x)->fld[1]).rtx), insn, note_flag, min_regno);
      break;

    case INSN_LIST:
      if ((((x)->fld[1]).rtx))
 reg_scan_mark_refs ((((x)->fld[1]).rtx), insn, note_flag, min_regno);
      break;

    case CLOBBER:
      {
 rtx reg = (((x)->fld[0]).rtx);
 if ((((enum rtx_code) (reg)->code) == REG)
     && (((reg)->fld[0]).rtuint) >= min_regno)
   {
     (((reg_n_info)->data.reg[(((reg)->fld[0]).rtuint)])->sets)++;
     (((reg_n_info)->data.reg[(((reg)->fld[0]).rtuint)])->refs)++;
   }
      }
      break;

    case SET:

      for (dest = (((x)->fld[0]).rtx);
    ((enum rtx_code) (dest)->code) == SUBREG || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART
    || ((enum rtx_code) (dest)->code) == ZERO_EXTEND;
    dest = (((dest)->fld[0]).rtx))
 ;



      if (((enum rtx_code) (dest)->code) == PARALLEL)
 max_set_parallel = ((max_set_parallel) > ((((((dest)->fld[0]).rtvec))->num_elem) - 1) ? (max_set_parallel) : ((((((dest)->fld[0]).rtvec))->num_elem) - 1));

      if (((enum rtx_code) (dest)->code) == REG
   && (((dest)->fld[0]).rtuint) >= min_regno)
 {
   (((reg_n_info)->data.reg[(((dest)->fld[0]).rtuint)])->sets)++;
   (((reg_n_info)->data.reg[(((dest)->fld[0]).rtuint)])->refs)++;
 }
# 2495 "../../../kg++fe/gnu/regclass.c"
      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG
   && ((((((x)->fld[0]).rtx))->fld[0]).rtuint) >= 176
   && ((((((x)->fld[0]).rtx))->fld[0]).rtuint) >= min_regno





   && (((reg_n_info)->data.reg[((((((x)->fld[0]).rtx))->fld[0]).rtuint)])->sets) == 1
   && ! ((((((x)->fld[0]).rtx)))->volatil)
   && ! ((((((x)->fld[0]).rtx)))->frame_related)
   && ((((enum rtx_code) ((((x)->fld[1]).rtx))->code) == REG
        && ((((((x)->fld[1]).rtx)))->frame_related))
       || ((((enum rtx_code) ((((x)->fld[1]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == LO_SUM)
    && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST_INT
    && ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == REG
    && (((((((((x)->fld[1]).rtx))->fld[0]).rtx)))->frame_related))
       || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST
       || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SYMBOL_REF
       || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == LABEL_REF
       || (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == HIGH
    && (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == CONST
        || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
        || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[0]).rtx))->code) == LABEL_REF))
       || ((((enum rtx_code) ((((x)->fld[1]).rtx))->code) == PLUS
     || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == LO_SUM)
    && (((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == CONST
        || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == SYMBOL_REF
        || ((enum rtx_code) (((((((x)->fld[1]).rtx))->fld[1]).rtx))->code) == LABEL_REF))
       || ((note = find_reg_note (insn, REG_EQUAL, 0)) != 0
    && (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST
        || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == SYMBOL_REF
        || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == LABEL_REF))))
 ((((((x)->fld[0]).rtx)))->frame_related) = 1;



      if (((enum rtx_code) (dest)->code) == REG)
 {
   rtx src = (((x)->fld[1]).rtx);

   while (((enum rtx_code) (src)->code) == SIGN_EXTEND
   || ((enum rtx_code) (src)->code) == ZERO_EXTEND
   || ((enum rtx_code) (src)->code) == TRUNCATE
   || (((enum rtx_code) (src)->code) == SUBREG && subreg_lowpart_p (src)))
     src = (((src)->fld[0]).rtx);

   if (((enum rtx_code) (src)->code) == REG && (cfun->emit->regno_decl[(((src)->fld[0]).rtuint)]) == 0)
     (cfun->emit->regno_decl[(((src)->fld[0]).rtuint)]) = (cfun->emit->regno_decl[(((dest)->fld[0]).rtuint)]);
   else if (((enum rtx_code) (src)->code) == REG && (cfun->emit->regno_decl[(((dest)->fld[0]).rtuint)]) == 0)
     (cfun->emit->regno_decl[(((dest)->fld[0]).rtuint)]) = (cfun->emit->regno_decl[(((src)->fld[0]).rtuint)]);
 }



    default:
      {
 const char *fmt = (rtx_format[(int) (code)]);
 int i;
 for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
   {
     if (fmt[i] == 'e')
       reg_scan_mark_refs ((((x)->fld[i]).rtx), insn, note_flag, min_regno);
     else if (fmt[i] == 'E' && (((x)->fld[i]).rtvec) != 0)
       {
  int j;
  for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
    reg_scan_mark_refs ((((((x)->fld[i]).rtvec))->elem[j]), insn, note_flag, min_regno);
       }
   }
      }
    }
}




int
reg_class_subset_p (c1, c2)
     enum reg_class c1;
     enum reg_class c2;
{
  if (c1 == c2) return 1;

  if (c2 == ALL_REGS)
  win:
    return 1;
  do { HARD_REG_ELT_TYPE *scan_xp_ = (reg_class_contents[(int) c1]), *scan_yp_ = (reg_class_contents[(int) c2]); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto win; } while (0);


  return 0;
}



int
reg_classes_intersect_p (c1, c2)
     enum reg_class c1;
     enum reg_class c2;
{



    HARD_REG_SET c;

  if (c1 == c2) return 1;

  if (c1 == ALL_REGS || c2 == ALL_REGS)
    return 1;

  do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[(int) c1]); scan_tp_[0] = scan_fp_[0]; scan_tp_[1] = scan_fp_[1]; scan_tp_[2] = scan_fp_[2]; } while (0);
  do { HARD_REG_ELT_TYPE *scan_tp_ = (c), *scan_fp_ = (reg_class_contents[(int) c2]); scan_tp_[0] &= scan_fp_[0]; scan_tp_[1] &= scan_fp_[1]; scan_tp_[2] &= scan_fp_[2]; } while (0);

  do { HARD_REG_ELT_TYPE *scan_xp_ = (c), *scan_yp_ = (reg_class_contents[(int) NO_REGS]); if ((0 == (scan_xp_[0] & ~ scan_yp_[0])) && (0 == (scan_xp_[1] & ~ scan_yp_[1])) && (0 == (scan_xp_[2] & ~ scan_yp_[2]))) goto lose; } while (0);
  return 1;

 lose:
  return 0;
}



void
regset_release_memory ()
{
  bitmap_release_memory ();
}





void
cannot_change_mode_set_regs (used, from, regno)
     HARD_REG_SET *used;
     enum machine_mode from;
     unsigned int regno;
{
  enum machine_mode to;
  int n, i;
  int start = regno * MAX_MACHINE_MODE;

  do { bitmap_element *ptr_ = (&subregs_of_mode)->first; unsigned int indx_ = (start) / ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))); unsigned bit_num_ = (start) % (unsigned) (8 * 4); unsigned word_num_ = (start) / (unsigned) (8 * 4) % ((128 + (8 * 4) - 1) / (8 * 4)); while (ptr_ != 0 && ptr_->indx < indx_) ptr_ = ptr_->next; if (ptr_ != 0 && ptr_->indx != indx_) { bit_num_ = 0; word_num_ = 0; } for (; ptr_ != 0; ptr_ = ptr_->next) { for (; word_num_ < ((128 + (8 * 4) - 1) / (8 * 4)); word_num_++) { BITMAP_WORD word_ = ptr_->bits[word_num_]; if (word_ != 0) { for (; bit_num_ < (unsigned) (8 * 4); bit_num_++) { BITMAP_WORD mask_ = ((BITMAP_WORD) 1) << bit_num_; if ((word_ & mask_) != 0) { word_ &= ~ mask_; (n) = (ptr_->indx * ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))) + word_num_ * (unsigned) (8 * 4) + bit_num_); if (n >= MAX_MACHINE_MODE + start) return; to = n - start; for (i = 0; i < 176; i++) if (! (!!((*used)[(i) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8)))))) && mips_cannot_change_mode_class (from, to, mips_regno_to_class[ (i) ])) ((*used)[(i) / ((unsigned) (8 * 8))] |= ((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))));; if (word_ == 0) break; } } } bit_num_ = 0; } word_num_ = 0; } } while (0);
# 2647 "../../../kg++fe/gnu/regclass.c"
}




_Bool
invalid_mode_change_p (regno, class, from_mode)
     unsigned int regno;
      enum reg_class class;
     enum machine_mode from_mode;
{
  enum machine_mode to_mode;
  int n;
  int start = regno * MAX_MACHINE_MODE;

  do { bitmap_element *ptr_ = (&subregs_of_mode)->first; unsigned int indx_ = (start) / ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))); unsigned bit_num_ = (start) % (unsigned) (8 * 4); unsigned word_num_ = (start) / (unsigned) (8 * 4) % ((128 + (8 * 4) - 1) / (8 * 4)); while (ptr_ != 0 && ptr_->indx < indx_) ptr_ = ptr_->next; if (ptr_ != 0 && ptr_->indx != indx_) { bit_num_ = 0; word_num_ = 0; } for (; ptr_ != 0; ptr_ = ptr_->next) { for (; word_num_ < ((128 + (8 * 4) - 1) / (8 * 4)); word_num_++) { BITMAP_WORD word_ = ptr_->bits[word_num_]; if (word_ != 0) { for (; bit_num_ < (unsigned) (8 * 4); bit_num_++) { BITMAP_WORD mask_ = ((BITMAP_WORD) 1) << bit_num_; if ((word_ & mask_) != 0) { word_ &= ~ mask_; (n) = (ptr_->indx * ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))) + word_num_ * (unsigned) (8 * 4) + bit_num_); if (n >= MAX_MACHINE_MODE + start) return 0; to_mode = n - start; if (mips_cannot_change_mode_class (from_mode, to_mode, class)) return 1;; if (word_ == 0) break; } } } bit_num_ = 0; } word_num_ = 0; } } while (0);






  return 0;
}


# 1 "../../../kg++fe/gnu/MIPS/gt-regclass.h" 1
# 25 "../../../kg++fe/gnu/MIPS/gt-regclass.h"
const struct ggc_root_tab gt_ggc_r_gt_regclass_h[] = {
  {
    &top_of_stack[0],
    1 * (MAX_MACHINE_MODE),
    sizeof (top_of_stack[0]),
    &gt_ggc_mx_rtx_def

  },
  { ((void *)0), 0, 0, ((void *)0) }
};
# 2673 "../../../kg++fe/gnu/regclass.c" 2
