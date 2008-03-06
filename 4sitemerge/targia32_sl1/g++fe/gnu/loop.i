# 1 "../../../kg++fe/gnu/loop.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/loop.c"
# 37 "../../../kg++fe/gnu/loop.c"
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
# 38 "../../../kg++fe/gnu/loop.c" 2
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
        
# 39 "../../../kg++fe/gnu/loop.c" 2
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
# 40 "../../../kg++fe/gnu/loop.c" 2
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
# 41 "../../../kg++fe/gnu/loop.c" 2
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
# 42 "../../../kg++fe/gnu/loop.c" 2
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
# 43 "../../../kg++fe/gnu/loop.c" 2
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
# 44 "../../../kg++fe/gnu/loop.c" 2
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
# 45 "../../../kg++fe/gnu/loop.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 46 "../../../kg++fe/gnu/loop.c" 2
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
# 47 "../../../kg++fe/gnu/loop.c" 2
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
# 48 "../../../kg++fe/gnu/loop.c" 2
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
# 49 "../../../kg++fe/gnu/loop.c" 2
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
# 50 "../../../kg++fe/gnu/loop.c" 2
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
# 51 "../../../kg++fe/gnu/loop.c" 2
# 1 "../../../kg++fe/gnu/cselib.h" 1
# 23 "../../../kg++fe/gnu/cselib.h"
typedef struct cselib_val_struct
{

  unsigned int value;
  union cselib_val_u
  {

    rtx val_rtx;

    struct cselib_val_struct * next_free;
  } u;



  struct elt_loc_list *locs;


  struct elt_list *addr_list;
} cselib_val;


struct elt_loc_list
{

  struct elt_loc_list *next;

  rtx loc;

  rtx setting_insn;

  _Bool in_libcall;
};


struct elt_list
{
  struct elt_list *next;
  cselib_val *elt;
};

extern cselib_val *cselib_lookup (rtx, enum machine_mode, int);
extern void cselib_update_varray_sizes (void);
extern void cselib_init (void);
extern void cselib_finish (void);
extern void cselib_process_insn (rtx);
extern int rtx_equal_for_cselib_p (rtx, rtx);
extern int references_value_p (rtx, int);
extern rtx cselib_subst_to_values (rtx);
# 52 "../../../kg++fe/gnu/loop.c" 2
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
# 53 "../../../kg++fe/gnu/loop.c" 2
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
# 54 "../../../kg++fe/gnu/loop.c" 2
# 1 "../../../kg++fe/gnu/predict.h" 1
# 23 "../../../kg++fe/gnu/predict.h"
enum br_predictor
{
# 1 "../../../kg++fe/gnu/predict.def" 1
# 40 "../../../kg++fe/gnu/predict.def"
PRED_COMBINED,


PRED_DS_THEORY,



PRED_FIRST_MATCH,


PRED_NO_PREDICTION,


PRED_UNCONDITIONAL,





PRED_LOOP_ITERATIONS,



PRED_BUILTIN_EXPECT,



PRED_CONTINUE,


PRED_NORETURN,



PRED_LOOP_BRANCH,



PRED_LOOP_EXIT,




PRED_LOOP_CONDITION,


PRED_LOOP_PRECONDITIONING,


PRED_LOOP_HEADER,


PRED_POINTER,


PRED_OPCODE_POSITIVE,
PRED_OPCODE_NONEQUAL,
PRED_FPOPCODE,


PRED_CALL,


PRED_EARLY_RETURN,


PRED_GOTO,


PRED_CONST_RETURN,


PRED_NEGATIVE_RETURN,


PRED_NULL_RETURN,
# 26 "../../../kg++fe/gnu/predict.h" 2


  END_PREDICTORS
};

enum prediction
{
   NOT_TAKEN,
   TAKEN
};




extern void predict_insn_def (rtx, enum br_predictor, enum prediction);

extern void predict_insn (rtx, enum br_predictor, int);



extern void predict_edge (edge, enum br_predictor, int);
extern void predict_edge_def (edge, enum br_predictor, enum prediction);
# 55 "../../../kg++fe/gnu/loop.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-flags.h" 1
# 56 "../../../kg++fe/gnu/loop.c" 2
# 1 "../../../kg++fe/gnu/optabs.h" 1
# 24 "../../../kg++fe/gnu/optabs.h"
# 1 "../../../kg++fe/gnu/MIPS/insn-codes.h" 1






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
# 25 "../../../kg++fe/gnu/optabs.h" 2
# 41 "../../../kg++fe/gnu/optabs.h"
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
# 220 "../../../kg++fe/gnu/optabs.h"
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
# 57 "../../../kg++fe/gnu/loop.c" 2
# 161 "../../../kg++fe/gnu/loop.c"
int *uid_luid;




struct loop **uid_loop;



int max_uid_for_loop;



static int max_luid;




static int max_loop_num;



unsigned int max_reg_before_loop;


static int loop_max_reg;





struct movable
{
  rtx insn;
  rtx set_src;
  rtx set_dest;
  rtx dependencies;

  int consec;

  unsigned int regno;
  short lifetime;


  short savings;


  unsigned int cond : 1;
  unsigned int force : 1;
  unsigned int global : 1;



  unsigned int done : 1;

  unsigned int partial : 1;


  unsigned int move_insn : 1;

  unsigned int move_insn_first:1;

  unsigned int is_equiv : 1;
  enum machine_mode savemode;


  struct movable *match;
  struct movable *forces;
  struct movable *next;
};


FILE *loop_dump_stream;



static void invalidate_loops_containing_label (rtx);
static void find_and_verify_loops (rtx, struct loops *);
static void mark_loop_jump (rtx, struct loop *);
static void prescan_loop (struct loop *);
static int reg_in_basic_block_p (rtx, rtx);
static int consec_sets_invariant_p (const struct loop *, rtx, int, rtx);

static int labels_in_range_p (rtx, int);
static void count_one_set (struct loop_regs *, rtx, rtx, rtx *);
static void note_addr_stored (rtx, rtx, void *);
static void note_set_pseudo_multiple_uses (rtx, rtx, void *);
static int loop_reg_used_before_p (const struct loop *, rtx, rtx);
static void scan_loop (struct loop*, int);



static rtx skip_consec_insns (rtx, int);
static int libcall_benefit (rtx);
static void ignore_some_movables (struct loop_movables *);
static void force_movables (struct loop_movables *);
static void combine_movables (struct loop_movables *, struct loop_regs *);

static int num_unmoved_movables (const struct loop *);
static int regs_match_p (rtx, rtx, struct loop_movables *);
static int rtx_equal_for_loop_p (rtx, rtx, struct loop_movables *, struct loop_regs *);

static void add_label_notes (rtx, rtx);
static void move_movables (struct loop *loop, struct loop_movables *, int, int);

static void loop_movables_add (struct loop_movables *, struct movable *);

static void loop_movables_free (struct loop_movables *);
static int count_nonfixed_reads (const struct loop *, rtx);
static void loop_bivs_find (struct loop *);
static void loop_bivs_init_find (struct loop *);
static void loop_bivs_check (struct loop *);
static void loop_givs_find (struct loop *);
static void loop_givs_check (struct loop *);
static int loop_biv_eliminable_p (struct loop *, struct iv_class *, int, int);

static int loop_giv_reduce_benefit (struct loop *, struct iv_class *, struct induction *, rtx);

static void loop_givs_dead_check (struct loop *, struct iv_class *);
static void loop_givs_reduce (struct loop *, struct iv_class *);
static void loop_givs_rescan (struct loop *, struct iv_class *, rtx *);

static void loop_ivs_free (struct loop *);
static void strength_reduce (struct loop *, int);
static void find_single_use_in_loop (struct loop_regs *, rtx, rtx);
static int valid_initial_value_p (rtx, rtx, int, rtx);
static void find_mem_givs (const struct loop *, rtx, rtx, int, int);
static void record_biv (struct loop *, struct induction *, rtx, rtx, rtx, rtx, rtx *, int, int);


static void check_final_value (const struct loop *, struct induction *);

static void loop_ivs_dump (const struct loop *, FILE *, int);
static void loop_iv_class_dump (const struct iv_class *, FILE *, int);
static void loop_biv_dump (const struct induction *, FILE *, int);
static void loop_giv_dump (const struct induction *, FILE *, int);
static void record_giv (const struct loop *, struct induction *, rtx, rtx, rtx, rtx, rtx, rtx, int, enum g_types, int, int, rtx *);


static void update_giv_derive (const struct loop *, rtx);
static void check_ext_dependent_givs (struct iv_class *, struct loop_info *);

static int basic_induction_var (const struct loop *, rtx, enum machine_mode, rtx, rtx, rtx *, rtx *, rtx **);


static rtx simplify_giv_expr (const struct loop *, rtx, rtx *, int *);
static int general_induction_var (const struct loop *loop, rtx, rtx *, rtx *, rtx *, rtx *, int, int *, enum machine_mode);


static int consec_sets_giv (const struct loop *, int, rtx, rtx, rtx, rtx *, rtx *, rtx *, rtx *);

static int check_dbra_loop (struct loop *, int);
static rtx express_from_1 (rtx, rtx, rtx);
static rtx combine_givs_p (struct induction *, struct induction *);
static int cmp_combine_givs_stats (const void *, const void *);
static void combine_givs (struct loop_regs *, struct iv_class *);
static int product_cheap_p (rtx, rtx);
static int maybe_eliminate_biv (const struct loop *, struct iv_class *, int, int, int);

static int maybe_eliminate_biv_1 (const struct loop *, rtx, rtx, struct iv_class *, int, basic_block, rtx);


static int last_use_this_basic_block (rtx, rtx);
static void record_initial (rtx, rtx, void *);
static void update_reg_last_use (rtx, rtx);
static rtx next_insn_in_loop (const struct loop *, rtx);
static void loop_regs_scan (const struct loop *, int);
static int count_insns_in_loop (const struct loop *);
static int find_mem_in_note_1 (rtx *, void *);
static rtx find_mem_in_note (rtx);
static void load_mems (const struct loop *);
static int insert_loop_mem (rtx *, void *);
static int replace_loop_mem (rtx *, void *);
static void replace_loop_mems (rtx, rtx, rtx, int);
static int replace_loop_reg (rtx *, void *);
static void replace_loop_regs (rtx insn, rtx, rtx);
static void note_reg_stored (rtx, rtx, void *);
static void try_copy_prop (const struct loop *, rtx, unsigned int);
static void try_swap_copy_prop (const struct loop *, rtx, unsigned int);

static int replace_label (rtx *, void *);
static rtx check_insn_for_givs (struct loop *, rtx, int, int);
static rtx check_insn_for_bivs (struct loop *, rtx, int, int);
static rtx gen_add_mult (rtx, rtx, rtx, rtx);
static void loop_regs_update (const struct loop *, rtx);
static int iv_add_mult_cost (rtx, rtx, rtx, rtx);

static rtx loop_insn_emit_after (const struct loop *, basic_block, rtx, rtx);

static rtx loop_call_insn_emit_before (const struct loop *, basic_block, rtx, rtx);

static rtx loop_call_insn_hoist (const struct loop *, rtx);
static rtx loop_insn_sink_or_swim (const struct loop *, rtx);

static void loop_dump_aux (const struct loop *, FILE *, int);
static void loop_delete_insns (rtx, rtx);
static long long remove_constant_addition (rtx *);
static rtx gen_load_of_final_value (rtx, rtx);
void debug_ivs (const struct loop *);
void debug_iv_class (const struct iv_class *);
void debug_biv (const struct induction *);
void debug_giv (const struct induction *);
void debug_loop (const struct loop *);
void debug_loops (const struct loops *);

typedef struct rtx_pair
{
  rtx r1;
  rtx r2;
} rtx_pair;

typedef struct loop_replace_args
{
  rtx match;
  rtx replacement;
  rtx insn;
} loop_replace_args;
# 386 "../../../kg++fe/gnu/loop.c"
static int indirect_jump_in_function;
static int indirect_jump_in_function_p (rtx);

static int compute_luids (rtx, rtx, int);

static int biv_elimination_giv_has_0_offset (struct induction *, struct induction *, rtx);





static int copy_cost;


static int reg_address_cost;

void
init_loop ()
{
  rtx reg = gen_rtx_REG (word_mode, (((176)) + 4) + 1);

  reg_address_cost = address_cost (reg, SImode);

  copy_cost = ((1) * 4);
}






static int
compute_luids (start, end, prev_luid)
     rtx start, end;
     int prev_luid;
{
  int i;
  rtx insn;

  for (insn = start, i = prev_luid; insn != end; insn = (((insn)->fld[2]).rtx))
    {
      if ((((insn)->fld[0]).rtint) >= max_uid_for_loop)
 continue;


      if (((enum rtx_code) (insn)->code) != NOTE
   || (((insn)->fld[5]).rtint) <= 0)
 uid_luid[(((insn)->fld[0]).rtint)] = ++i;
      else

 uid_luid[(((insn)->fld[0]).rtint)] = i;
    }
  return i + 1;
}






void
loop_optimize (f, dumpfile, flags)

     rtx f;
     FILE *dumpfile;
     int flags;
{
  rtx insn;
  int i;
  struct loops loops_data;
  struct loops *loops = &loops_data;
  struct loop_info *loops_info;

  loop_dump_stream = dumpfile;

  init_recog_no_volatile ();

  max_reg_before_loop = max_reg_num ();
  loop_max_reg = max_reg_before_loop;

  regs_may_share = 0;



  max_loop_num = 0;
  for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == NOTE
   && (((insn)->fld[5]).rtint) == NOTE_INSN_LOOP_BEG)
 max_loop_num++;
    }


  if (max_loop_num == 0)
    return;

  loops->num = max_loop_num;



  max_uid_for_loop = get_max_uid () + 1 + max_loop_num * 32;

  uid_luid = (int *) xcalloc (max_uid_for_loop, sizeof (int));
  uid_loop = (struct loop **) xcalloc (max_uid_for_loop,
           sizeof (struct loop *));


  loops->array = (struct loop *)
    xcalloc (loops->num, sizeof (struct loop));



  find_and_verify_loops (f, loops);


  loops_info = xcalloc (loops->num, sizeof (struct loop_info));
  for (i = 0; i < loops->num; i++)
    loops->array[i].aux = loops_info + i;




  reg_scan (f, max_reg_before_loop, 1);






  init_alias_analysis ();



  if (get_max_uid () > max_uid_for_loop)
    fancy_abort ("../../../kg++fe/gnu/loop.c", 520, __FUNCTION__);

  max_uid_for_loop = get_max_uid ();




  max_luid = compute_luids (f, (rtx) 0, 0);






  for (i = 0; i < max_uid_for_loop; i++)
    {
      uid_luid[0] = uid_luid[i];
      if (uid_luid[0] != 0)
 break;
    }
  for (i = 0; i < max_uid_for_loop; i++)
    if (uid_luid[i] == 0)
      uid_luid[i] = uid_luid[i - 1];



  indirect_jump_in_function = indirect_jump_in_function_p (f);



  for (i = max_loop_num - 1; i >= 0; i--)
    {
      struct loop *loop = &loops->array[i];

      if (! loop->invalid && loop->end)
 scan_loop (loop, flags);
    }

  end_alias_analysis ();


  free (uid_luid);
  free (uid_loop);
  free (loops_info);
  free (loops->array);
}







static rtx
next_insn_in_loop (loop, insn)
     const struct loop *loop;
     rtx insn;
{
  insn = (((insn)->fld[2]).rtx);

  if (insn == loop->end)
    {
      if (loop->top)

 insn = loop->top;
      else

 insn = (rtx) 0;
    }

  if (insn == loop->scan_start)

    insn = (rtx) 0;

  return insn;
}
# 605 "../../../kg++fe/gnu/loop.c"
static void
scan_loop (loop, flags)
     struct loop *loop;
     int flags;
{
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int i;
  rtx loop_start = loop->start;
  rtx loop_end = loop->end;
  rtx p;

  int maybe_never = 0;


  int call_passed = 0;

  rtx loop_entry_jump = 0;

  int insn_count;
  int tem;
  rtx temp, update_start, update_end;

  rtx set, set1;

  struct loop_movables *movables = (&((struct loop_info *) (loop)->aux)->movables);




  int threshold;

  int loop_depth = 0;
  int in_libcall;

  loop->top = 0;

  movables->head = 0;
  movables->last = 0;
# 661 "../../../kg++fe/gnu/loop.c"
  for (p = (((loop_start)->fld[2]).rtx);
       p != loop_end
  && ((enum rtx_code) (p)->code) != CODE_LABEL && ! ((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i')
  && (((enum rtx_code) (p)->code) != NOTE
      || ((((p)->fld[5]).rtint) != NOTE_INSN_LOOP_BEG
   && (((p)->fld[5]).rtint) != NOTE_INSN_LOOP_END));
       p = (((p)->fld[2]).rtx))
    ;

  loop->scan_start = p;





  if ((((loop->end)->fld[2]).rtx) != 0)
    loop->sink = (((loop->end)->fld[2]).rtx);
  else
    loop->sink = emit_note_after (NOTE_INSN_DELETED, loop->end);


  prescan_loop (loop);
  threshold = (loop_info->has_call ? 1 : 2) * (1 + n_non_fixed_regs);






  if (((enum rtx_code) (p)->code) == JUMP_INSN)
    {
      loop_entry_jump = p;


      if (any_uncondjump_p (p)
   && (((p)->fld[9]).rtx) != 0






   && (((((((p)->fld[9]).rtx))->fld[0]).rtint) < max_uid_for_loop && (((((((p)->fld[9]).rtx))->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((((p)->fld[9]).rtx))->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 703, __FUNCTION__), -1)) >= ((((loop_start)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop_start)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 703, __FUNCTION__), -1)) && (((((((p)->fld[9]).rtx))->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((((p)->fld[9]).rtx))->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 703, __FUNCTION__), -1)) <= ((((loop_end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop_end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 703, __FUNCTION__), -1))))
 {
   loop->top = next_label (loop->scan_start);
   loop->scan_start = (((p)->fld[9]).rtx);
 }
    }
# 718 "../../../kg++fe/gnu/loop.c"
  if ((((loop->scan_start)->fld[0]).rtint) >= max_uid_for_loop
      || ((enum rtx_code) (loop->scan_start)->code) != CODE_LABEL)
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream, "\nLoop from %d to %d is phony.\n\n",
   (((loop_start)->fld[0]).rtint), (((loop_end)->fld[0]).rtint));
      return;
    }




  loop_regs_scan (loop, loop_info->mems_idx + 16);
  insn_count = count_insns_in_loop (loop);

  if (loop_dump_stream)
    {
      fprintf (loop_dump_stream, "\nLoop from %d to %d: %d real insns.\n",
        (((loop_start)->fld[0]).rtint), (((loop_end)->fld[0]).rtint), insn_count);
      if (loop->cont)
 fprintf (loop_dump_stream, "Continue at insn %d.\n",
   (((loop->cont)->fld[0]).rtint));
    }
# 755 "../../../kg++fe/gnu/loop.c"
  for (in_libcall = 0, p = next_insn_in_loop (loop, loop->scan_start);
       p != (rtx) 0;
       p = next_insn_in_loop (loop, p))
    {
      if (in_libcall && ((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') && find_reg_note (p, REG_RETVAL, (rtx) 0))
 in_libcall--;
      if (((enum rtx_code) (p)->code) == INSN)
 {
   temp = find_reg_note (p, REG_LIBCALL, (rtx) 0);
   if (temp)
     in_libcall++;
   if (! in_libcall
       && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
       && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG



       && ! regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].may_not_optimize)
     {
       int tem1 = 0;
       int tem2 = 0;
       int move_insn = 0;
       rtx src = (((set)->fld[1]).rtx);
       rtx dependencies = 0;
# 788 "../../../kg++fe/gnu/loop.c"
       temp = find_reg_note (p, REG_EQUIV, (rtx) 0);
       if (temp)
  src = (((temp)->fld[0]).rtx), move_insn = 1;
       else
  {
    temp = find_reg_note (p, REG_EQUAL, (rtx) 0);
    if (temp && (((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
      src = (((temp)->fld[0]).rtx), move_insn = 1;
    if (temp && find_reg_note (p, REG_RETVAL, (rtx) 0))
      {
        src = (((temp)->fld[0]).rtx);



        dependencies = libcall_other_reg (p, src);
      }
  }



       if (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == PARALLEL)
  {
    for (i = 0; i < ((((((((p)->fld[5]).rtx))->fld[0]).rtvec))->num_elem); i++)
      {
        rtx x = ((((((((p)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]);
        if (((enum rtx_code) (x)->code) == USE)
   dependencies
     = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), ((((x)->fld[0]).rtx)), (dependencies));

      }
  }




       if ((mode_class[(int) (((enum machine_mode) ((((set)->fld[0]).rtx))->mode))]) == MODE_CC
    && (((enum rtx_code) (src)->code) == LABEL_REF || ((enum rtx_code) (src)->code) == SYMBOL_REF || ((enum rtx_code) (src)->code) == CONST_INT || ((enum rtx_code) (src)->code) == CONST_DOUBLE || ((enum rtx_code) (src)->code) == CONST || ((enum rtx_code) (src)->code) == HIGH || ((enum rtx_code) (src)->code) == CONST_VECTOR || ((enum rtx_code) (src)->code) == CONSTANT_P_RTX))
  ;




       else if (((((((set)->fld[0]).rtx))->fld[0]).rtuint) >= max_reg_before_loop)
  ;
       else if (



         ! reg_in_basic_block_p (p, (((set)->fld[0]).rtx))
# 846 "../../../kg++fe/gnu/loop.c"
         && (maybe_never
      || loop_reg_used_before_p (loop, set, p)))






  ;
       else if ((tem = loop_invariant_p (loop, src))
         && (dependencies == 0
      || (tem2
          = loop_invariant_p (loop, dependencies)) != 0)
         && (regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].set_in_loop == 1
      || (tem1
          = consec_sets_invariant_p
          (loop, (((set)->fld[0]).rtx),
    regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].set_in_loop,
    p)))





         && ! ((maybe_never || call_passed)
        && may_trap_p (src)))
  {
    struct movable *m;
    int regno = ((((((set)->fld[0]).rtx))->fld[0]).rtuint);
# 891 "../../../kg++fe/gnu/loop.c"
    if (loop_info->has_call
        && regs->array[regno].single_usage != 0
        && regs->array[regno].single_usage != (const_int_rtx[64])
        && (((reg_n_info)->data.reg[regno])->first_uid) == (((p)->fld[0]).rtint)
        && ((((reg_n_info)->data.reg[regno])->last_uid)
     == (((regs->array[regno].single_usage)->fld[0]).rtint))
        && regs->array[regno].set_in_loop == 1
        && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) != ASM_OPERANDS
        && ! side_effects_p ((((set)->fld[1]).rtx))
        && ! find_reg_note (p, REG_RETVAL, (rtx) 0)
        && (! ((target_flags & 0x00100000))
     || (! (((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
     && (((((((set)->fld[1]).rtx))->fld[0]).rtuint)
         < 176))))



        && ! modified_between_p ((((set)->fld[1]).rtx), p,
            regs->array[regno].single_usage)
        && no_labels_between_p (p,
           regs->array[regno].single_usage)
        && validate_replace_rtx ((((set)->fld[0]).rtx), (((set)->fld[1]).rtx),
            regs->array[regno].single_usage))
      {



        (((regs->array[regno].single_usage)->fld[8]).rtx)
   = (replace_rtx
      ((((regs->array[regno].single_usage)->fld[8]).rtx),
       (((set)->fld[0]).rtx), copy_rtx ((((set)->fld[1]).rtx))));

        delete_insn (p);
        for (i = 0; i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) ((((set)->fld[0]).rtx))->mode)) : 1);
      i++)
   regs->array[regno+i].set_in_loop = 0;
        continue;
      }

    m = (struct movable *) xmalloc (sizeof (struct movable));
    m->next = 0;
    m->insn = p;
    m->set_src = src;
    m->dependencies = dependencies;
    m->set_dest = (((set)->fld[0]).rtx);
    m->force = 0;
    m->consec
      = regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].set_in_loop - 1;
    m->done = 0;
    m->forces = 0;
    m->partial = 0;
    m->move_insn = move_insn;
    m->move_insn_first = 0;
    m->is_equiv = (find_reg_note (p, REG_EQUIV, (rtx) 0) != 0);
    m->savemode = VOIDmode;
    m->regno = regno;



    m->cond = ((tem | tem1 | tem2) > 1);
    m->global = ((uid_luid[(((reg_n_info)->data.reg[regno])->last_uid)] > (((((loop)->end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((loop)->end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 951, __FUNCTION__), -1)) || uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)] < (((((loop)->start)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((loop)->start)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 951, __FUNCTION__), -1))));
    m->match = 0;
    m->lifetime = ((uid_luid[(((reg_n_info)->data.reg[regno])->last_uid)] - uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)]));
    m->savings = regs->array[regno].n_times_set;
    if (find_reg_note (p, REG_RETVAL, (rtx) 0))
      m->savings += libcall_benefit (p);
    for (i = 0; i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) ((((set)->fld[0]).rtx))->mode)) : 1); i++)
      regs->array[regno+i].set_in_loop = move_insn ? -2 : -1;

    loop_movables_add (movables, m);

    if (m->consec > 0)
      {




        m->move_insn_first = m->move_insn;


        p = next_nonnote_insn (p);

        p = skip_consec_insns (p, m->consec);

        p = prev_nonnote_insn (p);




        temp = find_reg_note (p, REG_EQUIV, (rtx) 0);
        if (temp)
   m->set_src = (((temp)->fld[0]).rtx), m->move_insn = 1;
        else
   {
     temp = find_reg_note (p, REG_EQUAL, (rtx) 0);
     if (temp && (((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
       m->set_src = (((temp)->fld[0]).rtx), m->move_insn = 1;
     else
       m->move_insn = 0;

   }
        m->is_equiv
   = (find_reg_note (p, REG_EQUIV, (rtx) 0) != 0);
      }
  }







       else if ((((set)->fld[1]).rtx) == (const_int_rtx[64])
         && ((enum rtx_code) ((((p)->fld[2]).rtx))->code) == INSN
         && (set1 = (((rtx_class[(int) (((enum rtx_code) ((((p)->fld[2]).rtx))->code))]) == 'i') ? (((enum rtx_code) (((((((p)->fld[2]).rtx))->fld[5]).rtx))->code) == SET ? ((((((p)->fld[2]).rtx))->fld[5]).rtx) : single_set_2 ((((p)->fld[2]).rtx), ((((((p)->fld[2]).rtx))->fld[5]).rtx))) : (rtx) 0))
         && ((enum rtx_code) (set1)->code) == SET
         && (((enum rtx_code) ((((set1)->fld[0]).rtx))->code) == STRICT_LOW_PART)
         && (((enum rtx_code) (((((((set1)->fld[0]).rtx))->fld[0]).rtx))->code) == SUBREG)
         && ((((((((((set1)->fld[0]).rtx))->fld[0]).rtx))->fld[0]).rtx)
      == (((set)->fld[0]).rtx))
         && !reg_mentioned_p ((((set)->fld[0]).rtx), (((set1)->fld[1]).rtx)))
  {
    int regno = ((((((set)->fld[0]).rtx))->fld[0]).rtuint);
    if (regs->array[regno].set_in_loop == 2)
      {
        struct movable *m;
        m = (struct movable *) xmalloc (sizeof (struct movable));
        m->next = 0;
        m->insn = p;
        m->set_dest = (((set)->fld[0]).rtx);
        m->dependencies = 0;
        m->force = 0;
        m->consec = 0;
        m->done = 0;
        m->forces = 0;
        m->move_insn = 0;
        m->move_insn_first = 0;
        m->partial = 1;
# 1047 "../../../kg++fe/gnu/loop.c"
        m->global = ((((p)->fld[0]).rtint) >= max_uid_for_loop
       || ((uid_luid[(((reg_n_info)->data.reg[regno])->last_uid)] > (((((loop)->end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((loop)->end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 1048, __FUNCTION__), -1)) || uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)] < (((((loop)->start)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((loop)->start)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 1048, __FUNCTION__), -1))))
       || (labels_in_range_p
           (p, uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)])));
        if (maybe_never && m->global)
   m->savemode = ((enum machine_mode) ((((set1)->fld[1]).rtx))->mode);
        else
   m->savemode = VOIDmode;
        m->regno = regno;
        m->cond = 0;
        m->match = 0;
        m->lifetime = ((uid_luid[(((reg_n_info)->data.reg[regno])->last_uid)] - uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)]));
        m->savings = 1;
        for (i = 0;
      i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) ((((set)->fld[0]).rtx))->mode)) : 1);
      i++)
   regs->array[regno+i].set_in_loop = -1;

        loop_movables_add (movables, m);
      }
  }
     }
 }



      else if (((enum rtx_code) (p)->code) == CALL_INSN && ! (((p))->unchanging))
 call_passed = 1;






      else if ((((enum rtx_code) (p)->code) == CODE_LABEL || ((enum rtx_code) (p)->code) == JUMP_INSN)





        && ! (((enum rtx_code) (p)->code) == JUMP_INSN && (((p)->fld[9]).rtx) == loop->top
       && ((((((p)->fld[2]).rtx))->fld[2]).rtx) == loop_end
       && any_uncondjump_p (p)))
 maybe_never = 1;
      else if (((enum rtx_code) (p)->code) == NOTE)
 {



   if ((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_VTOP && loop_depth == 0)
     maybe_never = call_passed = 0;
   else if ((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_BEG)
     loop_depth++;
   else if ((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_END)
     loop_depth--;
 }
    }



  ignore_some_movables (movables);






  force_movables (movables);






  combine_movables (movables, regs);







  if (! optimize_size)
    {
      move_movables (loop, movables, threshold, insn_count);



      if (max_reg_num () > regs->num)
 {
   loop_regs_scan (loop, 0);
   for (update_start = loop_start;
        (((update_start)->fld[1]).rtx)
        && ((enum rtx_code) ((((update_start)->fld[1]).rtx))->code) != CODE_LABEL;
        update_start = (((update_start)->fld[1]).rtx))
     ;
   update_end = (((loop_end)->fld[2]).rtx);

   reg_scan_update (update_start, update_end, loop_max_reg);
   loop_max_reg = max_reg_num ();
 }
    }




  for (i = 0; i < regs->num; i++)
    if (regs->array[i].set_in_loop < 0)
      regs->array[i].set_in_loop = regs->array[i].n_times_set;



  load_mems (loop);


  if (max_reg_num () > regs->num)
    loop_regs_scan (loop, 0);

  for (update_start = loop_start;
       (((update_start)->fld[1]).rtx)
  && ((enum rtx_code) ((((update_start)->fld[1]).rtx))->code) != CODE_LABEL;
       update_start = (((update_start)->fld[1]).rtx))
    ;
  update_end = (((loop_end)->fld[2]).rtx);

  reg_scan_update (update_start, update_end, loop_max_reg);
  loop_max_reg = max_reg_num ();

  if (flag_strength_reduce)
    {
      if (update_end && ((enum rtx_code) (update_end)->code) == CODE_LABEL)

 (((update_end)->fld[4]).rtint)++;

      strength_reduce (loop, flags);

      reg_scan_update (update_start, update_end, loop_max_reg);
      loop_max_reg = max_reg_num ();

      if (update_end && ((enum rtx_code) (update_end)->code) == CODE_LABEL
   && --(((update_end)->fld[4]).rtint) == 0)
 delete_related_insns (update_end);
    }



  loop_movables_free (movables);

  free (regs->array);
  regs->array = 0;
  regs->num = 0;
}




void
record_excess_regs (in_this, not_in_this, output)
     rtx in_this, not_in_this;
     rtx *output;
{
  enum rtx_code code;
  const char *fmt;
  int i;

  code = ((enum rtx_code) (in_this)->code);

  switch (code)
    {
    case PC:
    case CC0:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
      return;

    case REG:
      if ((((in_this)->fld[0]).rtuint) >= 176
   && ! reg_mentioned_p (in_this, not_in_this))
 *output = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (in_this), (*output));
      return;

    default:
      break;
    }

  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      int j;

      switch (fmt[i])
 {
 case 'E':
   for (j = 0; j < (((((in_this)->fld[i]).rtvec))->num_elem); j++)
     record_excess_regs ((((((in_this)->fld[i]).rtvec))->elem[j]), not_in_this, output);
   break;

 case 'e':
   record_excess_regs ((((in_this)->fld[i]).rtx), not_in_this, output);
   break;
 }
    }
}






rtx
libcall_other_reg (insn, equiv)
     rtx insn, equiv;
{
  rtx note = find_reg_note (insn, REG_RETVAL, (rtx) 0);
  rtx p = (((note)->fld[0]).rtx);
  rtx output = 0;




  while (p != insn)
    {
      if (((enum rtx_code) (p)->code) == INSN || ((enum rtx_code) (p)->code) == JUMP_INSN
   || ((enum rtx_code) (p)->code) == CALL_INSN)
 record_excess_regs ((((p)->fld[5]).rtx), equiv, &output);
      p = (((p)->fld[2]).rtx);
    }

  return output;
}




static int
reg_in_basic_block_p (insn, reg)
     rtx insn, reg;
{
  int regno = (((reg)->fld[0]).rtuint);
  rtx p;

  if ((((reg_n_info)->data.reg[regno])->first_uid) != (((insn)->fld[0]).rtint))
    return 0;


  for (p = insn; p; p = (((p)->fld[2]).rtx))
    {
      switch (((enum rtx_code) (p)->code))
 {
 case NOTE:
   break;

 case INSN:
 case CALL_INSN:

   if ((((reg_n_info)->data.reg[regno])->last_uid) == (((p)->fld[0]).rtint))
     return 1;
   break;

 case JUMP_INSN:

   if ((((reg_n_info)->data.reg[regno])->last_uid) == (((p)->fld[0]).rtint))
     return 1;

   return 0;

 case CODE_LABEL:
 case BARRIER:

   return 0;

 default:
   break;
 }
    }






  return 1;
}





static int
libcall_benefit (last)
     rtx last;
{
  rtx insn;
  int benefit = 0;

  for (insn = (((find_reg_note (last, REG_RETVAL, (rtx) 0))->fld[0]).rtx);
       insn != last; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == CALL_INSN)
 benefit += 10;

      else if (((enum rtx_code) (insn)->code) == INSN
        && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) != USE
        && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) != CLOBBER)
 benefit++;
    }

  return benefit;
}



static rtx
skip_consec_insns (insn, count)
     rtx insn;
     int count;
{
  for (; count > 0; count--)
    {
      rtx temp;




      if (((enum rtx_code) (insn)->code) != NOTE
   && (temp = find_reg_note (insn, REG_LIBCALL, (rtx) 0)))
 insn = (((temp)->fld[0]).rtx);

      do
 insn = (((insn)->fld[2]).rtx);
      while (((enum rtx_code) (insn)->code) == NOTE);
    }

  return insn;
}






static void
ignore_some_movables (movables)
     struct loop_movables *movables;
{
  struct movable *m, *m1;

  for (m = movables->head; m; m = m->next)
    {

      rtx note = find_reg_note (m->insn, REG_RETVAL, (rtx) 0);
      if (note)
 {
   rtx insn;






   for (insn = (((note)->fld[0]).rtx); insn != m->insn; insn = (((insn)->fld[2]).rtx))
     for (m1 = movables->head; m1 != m; m1 = m1->next)
       if (m1->insn == insn)
  m1->done = 1;
 }
    }
}






static void
force_movables (movables)
     struct loop_movables *movables;
{
  struct movable *m, *m1;

  for (m1 = movables->head; m1; m1 = m1->next)

    if (!m1->partial && !m1->done)
      {
 int regno = m1->regno;
 for (m = m1->next; m; m = m->next)






   if ((((m->insn)->fld[0]).rtint) == (((reg_n_info)->data.reg[regno])->last_uid)
       && !m->done)
     break;
 if (m != 0 && m->set_src == m1->set_dest

     && m->consec == 0)
   m = 0;



 if (m != 0)
   {
     m->forces = m1;
     m1->lifetime += m->lifetime;
     m1->savings += m->savings;
   }
      }
}




static void
combine_movables (movables, regs)
     struct loop_movables *movables;
     struct loop_regs *regs;
{
  struct movable *m;
  char *matched_regs = (char *) xmalloc (regs->num);
  enum machine_mode mode;







  for (m = movables->head; m; m = m->next)
    if (m->match == 0 && regs->array[m->regno].n_times_set == 1
 && m->regno >= 176
 && !m->partial)
      {
 struct movable *m1;
 int regno = m->regno;

 memset (matched_regs, 0, regs->num);
 matched_regs[regno] = 1;



 for (m1 = m->next; m1; m1 = m1->next)
   if (m != m1 && m1->match == 0
       && regs->array[m1->regno].n_times_set == 1
       && m1->regno >= 176

       && !m1->global

       && !m1->partial
       && (matched_regs[m1->regno]
    ||
    (







     (((enum machine_mode) (m->set_dest)->mode) == ((enum machine_mode) (m1->set_dest)->mode)
      || ((mode_class[(int) (((enum machine_mode) (m->set_dest)->mode))]) == MODE_INT
   && (mode_class[(int) (((enum machine_mode) (m1->set_dest)->mode))]) == MODE_INT
   && ((mode_bitsize[(int) (((enum machine_mode) (m->set_dest)->mode))])
       >= (mode_bitsize[(int) (((enum machine_mode) (m1->set_dest)->mode))]))))

     && ((((enum rtx_code) (m1->set_src)->code) == REG
   && matched_regs[(((m1->set_src)->fld[0]).rtuint)])
         || rtx_equal_for_loop_p (m->set_src, m1->set_src,
      movables, regs))))
       && ((m->dependencies == m1->dependencies)
    || rtx_equal_p (m->dependencies, m1->dependencies)))
     {
       m->lifetime += m1->lifetime;
       m->savings += m1->savings;
       m1->done = 1;
       m1->match = m;
       matched_regs[m1->regno] = 1;
     }
      }





  for (mode = class_narrowest_mode[(int) (MODE_INT)]; mode != VOIDmode;
       mode = ((enum machine_mode)mode_wider_mode[(int) (mode)]))
    {
      struct movable *m0 = 0;



      for (m = movables->head; m; m = m->next)
 if (m->partial && ! m->global
     && mode == ((enum machine_mode) ((((((((((m->insn)->fld[2]).rtx))->fld[5]).rtx))->fld[1]).rtx))->mode))
   {
     struct movable *m1;

     int first = uid_luid[(((reg_n_info)->data.reg[m->regno])->first_uid)];
     int last = uid_luid[(((reg_n_info)->data.reg[m->regno])->last_uid)];

     if (m0 == 0)
       {

  m0 = m;
  continue;
       }



     if (((enum machine_mode) (m->set_dest)->mode) != ((enum machine_mode) (m0->set_dest)->mode))
       continue;



     for (m1 = movables->head; m1 != m; m1 = m1->next)
       if (m1 == m0 || (m1->partial && m1->match == m0))
  if (! (uid_luid[(((reg_n_info)->data.reg[m1->regno])->first_uid)] > last
         || uid_luid[(((reg_n_info)->data.reg[m1->regno])->last_uid)] < first))
    goto overlap;


     m0->lifetime += m->lifetime;
     m0->savings += m->savings;
     m->done = 1;
     m->match = m0;

   overlap:
     ;
   }
    }


  free (matched_regs);
}




static int
num_unmoved_movables (loop)
     const struct loop *loop;
{
  int num = 0;
  struct movable *m;

  for (m = (&((struct loop_info *) (loop)->aux)->movables)->head; m; m = m->next)
    if (!m->done)
      ++num;

  return num;
}




static int
regs_match_p (x, y, movables)
     rtx x, y;
     struct loop_movables *movables;
{
  unsigned int xn = (((x)->fld[0]).rtuint);
  unsigned int yn = (((y)->fld[0]).rtuint);
  struct movable *mx, *my;

  for (mx = movables->head; mx; mx = mx->next)
    if (mx->regno == xn)
      break;

  for (my = movables->head; my; my = my->next)
    if (my->regno == yn)
      break;

  return (mx && my
   && ((mx->match == my->match && mx->match != 0)
       || mx->match == my
       || mx == my->match));
}







static int
rtx_equal_for_loop_p (x, y, movables, regs)
     rtx x, y;
     struct loop_movables *movables;
     struct loop_regs *regs;
{
  int i;
  int j;
  struct movable *m;
  enum rtx_code code;
  const char *fmt;

  if (x == y)
    return 1;
  if (x == 0 || y == 0)
    return 0;

  code = ((enum rtx_code) (x)->code);



  if (((enum rtx_code) (x)->code) == REG && regs->array[(((x)->fld[0]).rtuint)].set_in_loop == -2
      && (((enum rtx_code) (y)->code) == LABEL_REF || ((enum rtx_code) (y)->code) == SYMBOL_REF || ((enum rtx_code) (y)->code) == CONST_INT || ((enum rtx_code) (y)->code) == CONST_DOUBLE || ((enum rtx_code) (y)->code) == CONST || ((enum rtx_code) (y)->code) == HIGH || ((enum rtx_code) (y)->code) == CONST_VECTOR || ((enum rtx_code) (y)->code) == CONSTANT_P_RTX))
    {
      for (m = movables->head; m; m = m->next)
 if (m->move_insn && m->regno == (((x)->fld[0]).rtuint)
     && rtx_equal_p (m->set_src, y))
   return 1;
    }
  else if (((enum rtx_code) (y)->code) == REG && regs->array[(((y)->fld[0]).rtuint)].set_in_loop == -2
    && (((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX))
    {
      for (m = movables->head; m; m = m->next)
 if (m->move_insn && m->regno == (((y)->fld[0]).rtuint)
     && rtx_equal_p (m->set_src, x))
   return 1;
    }


  if (code != ((enum rtx_code) (y)->code))
    return 0;




  if (((enum machine_mode) (x)->mode) != ((enum machine_mode) (y)->mode))
    return 0;


  if (code == REG)
    return ((((x)->fld[0]).rtuint) == (((y)->fld[0]).rtuint) || regs_match_p (x, y, movables));

  if (code == LABEL_REF)
    return (((x)->fld[0]).rtx) == (((y)->fld[0]).rtx);
  if (code == SYMBOL_REF)
    return (((x)->fld[0]).rtstr) == (((y)->fld[0]).rtstr);




  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'w':
   if ((((x)->fld[i]).rtwint) != (((y)->fld[i]).rtwint))
     return 0;
   break;

 case 'i':
   if ((((x)->fld[i]).rtint) != (((y)->fld[i]).rtint))
     return 0;
   break;

 case 'E':

   if ((((((x)->fld[i]).rtvec))->num_elem) != (((((y)->fld[i]).rtvec))->num_elem))
     return 0;


   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     if (rtx_equal_for_loop_p ((((((x)->fld[i]).rtvec))->elem[j]), (((((y)->fld[i]).rtvec))->elem[j]),
          movables, regs) == 0)
       return 0;
   break;

 case 'e':
   if (rtx_equal_for_loop_p ((((x)->fld[i]).rtx), (((y)->fld[i]).rtx), movables, regs)
       == 0)
     return 0;
   break;

 case 's':
   if (strcmp ((((x)->fld[i]).rtstr), (((y)->fld[i]).rtstr)))
     return 0;
   break;

 case 'u':

   break;

 case '0':
   break;




 default:
   fancy_abort ("../../../kg++fe/gnu/loop.c", 1743, __FUNCTION__);
 }
    }
  return 1;
}





static void
add_label_notes (x, insns)
     rtx x;
     rtx insns;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  int i, j;
  const char *fmt;
  rtx insn;

  if (code == LABEL_REF && !(((x))->volatil))
    {





      for (insn = insns; insn; insn = (((insn)->fld[2]).rtx))
 if (reg_mentioned_p ((((x)->fld[0]).rtx), insn))
   {
     (((insn)->fld[8]).rtx) = gen_rtx_fmt_ue (INSN_LIST, (REG_LABEL), ((((x)->fld[0]).rtx)), ((((insn)->fld[8]).rtx)));

     if ((((enum rtx_code) ((((x)->fld[0]).rtx))->code) == CODE_LABEL))
       ((((((x)->fld[0]).rtx))->fld[4]).rtint)++;
   }
    }

  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 add_label_notes ((((x)->fld[i]).rtx), insns);
      else if (fmt[i] == 'E')
 for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
   add_label_notes ((((((x)->fld[i]).rtvec))->elem[j]), insns);
    }
}





static void
move_movables (loop, movables, threshold, insn_count)
     struct loop *loop;
     struct loop_movables *movables;
     int threshold;
     int insn_count;
{
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int nregs = regs->num;
  rtx new_start = 0;
  struct movable *m;
  rtx p;
  rtx loop_start = loop->start;
  rtx loop_end = loop->end;



  rtx *reg_map = (rtx *) xcalloc (nregs, sizeof (rtx));
  char *already_moved = (char *) xcalloc (nregs, sizeof (char));

  for (m = movables->head; m; m = m->next)
    {


      if (loop_dump_stream)
 {
   fprintf (loop_dump_stream, "Insn %d: regno %d (life %d), ",
     (((m->insn)->fld[0]).rtint), m->regno, m->lifetime);
   if (m->consec > 0)
     fprintf (loop_dump_stream, "consec %d, ", m->consec);
   if (m->cond)
     fprintf (loop_dump_stream, "cond ");
   if (m->force)
     fprintf (loop_dump_stream, "force ");
   if (m->global)
     fprintf (loop_dump_stream, "global ");
   if (m->done)
     fprintf (loop_dump_stream, "done ");
   if (m->move_insn)
     fprintf (loop_dump_stream, "move-insn ");
   if (m->match)
     fprintf (loop_dump_stream, "matches %d ",
       (((m->match->insn)->fld[0]).rtint));
   if (m->forces)
     fprintf (loop_dump_stream, "forces %d ",
       (((m->forces->insn)->fld[0]).rtint));
 }




      if (!m->done
   && (! m->cond
       || (1 == loop_invariant_p (loop, m->set_src)
    && (m->dependencies == 0
        || 1 == loop_invariant_p (loop, m->dependencies))
    && (m->consec == 0
        || 1 == consec_sets_invariant_p (loop, m->set_dest,
             m->consec + 1,
             m->insn))))
   && (! m->forces || m->forces->done))
 {
   int regno;
   rtx p;
   int savings = m->savings;




   p = m->insn;
   regno = m->regno;

   if (loop_dump_stream)
     fprintf (loop_dump_stream, "savings %d ", savings);

   if (regs->array[regno].moved_once && loop_dump_stream)
     fprintf (loop_dump_stream, "halved since already moved ");
# 1886 "../../../kg++fe/gnu/loop.c"
   if (already_moved[regno]
       || flag_move_all_movables
       || (threshold * savings * m->lifetime) >=
   (regs->array[regno].moved_once ? insn_count * 2 : insn_count)
       || (m->forces && m->forces->done
    && regs->array[m->forces->regno].n_times_set == 1))
     {
       int count;
       struct movable *m1;
       rtx first = (rtx) 0;



       if (m->partial && m->match)
  {
    rtx newpat, i1;
    rtx r1, r2;




    for (m1 = m; m1->match; m1 = m1->match);
    newpat = gen_move_insn (((((((m->insn)->fld[5]).rtx))->fld[0]).rtx),
       ((((((m1->insn)->fld[5]).rtx))->fld[0]).rtx));
    i1 = loop_insn_hoist (loop, newpat);



    (((i1)->fld[8]).rtx) = (((m->insn)->fld[8]).rtx);
    r1 = ((((((m->insn)->fld[5]).rtx))->fld[0]).rtx);
    r2 = ((((((m1->insn)->fld[5]).rtx))->fld[0]).rtx);
    regs_may_share
      = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (r1), (gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (r2), (regs_may_share))));


    delete_insn (m->insn);

    if (new_start == 0)
      new_start = i1;

    if (loop_dump_stream)
      fprintf (loop_dump_stream, " moved to %d", (((i1)->fld[0]).rtint));
  }



       else if (m->move_insn)
  {
    rtx i1, temp, seq;

    for (count = m->consec; count >= 0; count--)
      {


        if (((enum rtx_code) (p)->code) != NOTE
     && (temp = find_reg_note (p, REG_LIBCALL, (rtx) 0)))
   fancy_abort ("../../../kg++fe/gnu/loop.c", 1942, __FUNCTION__);




        if (((enum rtx_code) (p)->code) != NOTE
     && (temp = find_reg_note (p, REG_RETVAL, (rtx) 0)))
   {
     temp = (((temp)->fld[0]).rtx);
     while (temp != p)
       temp = delete_insn (temp);
   }

        temp = p;
        p = delete_insn (p);







        while (p && ((enum rtx_code) (p)->code) == NOTE)
   p = (((temp)->fld[2]).rtx) = (((p)->fld[2]).rtx);
      }

    start_sequence ();
    emit_move_insn (m->set_dest, m->set_src);
    seq = get_insns ();
    end_sequence ();

    add_label_notes (m->set_src, seq);

    i1 = loop_insn_hoist (loop, seq);
    if (! find_reg_note (i1, REG_EQUAL, (rtx) 0))
      set_unique_reg_note (i1,
      m->is_equiv ? REG_EQUIV : REG_EQUAL,
      m->set_src);

    if (loop_dump_stream)
      fprintf (loop_dump_stream, " moved to %d", (((i1)->fld[0]).rtint));


    threshold -= 3;
  }
       else
  {
    for (count = m->consec; count >= 0; count--)
      {
        rtx i1, temp;




        if (((enum rtx_code) (p)->code) != NOTE
     && (temp = find_reg_note (p, REG_LIBCALL, (rtx) 0)))
   p = (((temp)->fld[0]).rtx);




        if (((enum rtx_code) (p)->code) != NOTE
     && (temp = find_reg_note (p, REG_RETVAL, (rtx) 0)))
   {
     rtx fn_address = 0;
     rtx fn_reg = 0;
     rtx fn_address_insn = 0;

     first = 0;
     for (temp = (((temp)->fld[0]).rtx); temp != p;
          temp = (((temp)->fld[2]).rtx))
       {
         rtx body;
         rtx n;
         rtx next;

         if (((enum rtx_code) (temp)->code) == NOTE)
    continue;

         body = (((temp)->fld[5]).rtx);



         for (next = (((temp)->fld[2]).rtx); next != p;
       next = (((next)->fld[2]).rtx))
    if (! (((enum rtx_code) (next)->code) == INSN
           && ((enum rtx_code) ((((next)->fld[5]).rtx))->code) == USE)
        && ((enum rtx_code) (next)->code) != NOTE)
      break;
# 2043 "../../../kg++fe/gnu/loop.c"
         if (((enum rtx_code) (next)->code) == CALL_INSN
      && ((enum rtx_code) (body)->code) == SET
      && ((enum rtx_code) ((((body)->fld[0]).rtx))->code) == REG
      && (n = find_reg_note (temp, REG_EQUAL,
        (rtx) 0)))
    {
      fn_reg = (((body)->fld[1]).rtx);
      if (((enum rtx_code) (fn_reg)->code) != REG)
        fn_reg = (((body)->fld[0]).rtx);
      fn_address = (((n)->fld[0]).rtx);
      fn_address_insn = temp;
    }



         if (((enum rtx_code) (temp)->code) == CALL_INSN
      && fn_address != 0
      && reg_referenced_p (fn_reg, body))
    loop_insn_emit_after (loop, 0, fn_address_insn,
            gen_move_insn
            (fn_reg, fn_address));

         if (((enum rtx_code) (temp)->code) == CALL_INSN)
    {
      i1 = loop_call_insn_hoist (loop, body);



      if ((((temp)->fld[9]).rtx))
        (((i1)->fld[9]).rtx)
          = copy_rtx ((((temp)->fld[9]).rtx));
    }
         else
    i1 = loop_insn_hoist (loop, body);
         if (first == 0)
    first = i1;
         if (temp == fn_address_insn)
    fn_address_insn = i1;
         (((i1)->fld[8]).rtx) = (((temp)->fld[8]).rtx);
         (((temp)->fld[8]).rtx) = ((void *)0);
         delete_insn (temp);
       }
     if (new_start == 0)
       new_start = first;
   }
        if (m->savemode != VOIDmode)
   {



     rtx reg = m->set_dest;
     rtx sequence;
     rtx tem;

     start_sequence ();
     tem = expand_simple_binop
       (((enum machine_mode) (reg)->mode), AND, reg,
        gen_rtx_CONST_INT (VOIDmode, (long long) ((((long long) 1 << (mode_bitsize[(int) (m->savemode)]))) - 1)),


        reg, 1, OPTAB_LIB_WIDEN);
     if (tem == 0)
       fancy_abort ("../../../kg++fe/gnu/loop.c", 2105, __FUNCTION__);
     if (tem != reg)
       emit_move_insn (reg, tem);
     sequence = get_insns ();
     end_sequence ();
     i1 = loop_insn_hoist (loop, sequence);
   }
        else if (((enum rtx_code) (p)->code) == CALL_INSN)
   {
     i1 = loop_call_insn_hoist (loop, (((p)->fld[5]).rtx));



     if ((((p)->fld[9]).rtx))
       (((i1)->fld[9]).rtx)
         = copy_rtx ((((p)->fld[9]).rtx));
   }
        else if (count == m->consec && m->move_insn_first)
   {
     rtx seq;


     start_sequence ();
     emit_move_insn (m->set_dest, m->set_src);
     seq = get_insns ();
     end_sequence ();

     add_label_notes (m->set_src, seq);

     i1 = loop_insn_hoist (loop, seq);
     if (! find_reg_note (i1, REG_EQUAL, (rtx) 0))
       set_unique_reg_note (i1, m->is_equiv ? REG_EQUIV
           : REG_EQUAL, m->set_src);
   }
        else
   i1 = loop_insn_hoist (loop, (((p)->fld[5]).rtx));

        if ((((i1)->fld[8]).rtx) == 0)
   {
     (((i1)->fld[8]).rtx) = (((p)->fld[8]).rtx);
     (((p)->fld[8]).rtx) = ((void *)0);







     if ((temp = find_reg_note (i1, REG_EQUAL, (rtx) 0))
         && ! loop_invariant_p (loop, (((temp)->fld[0]).rtx)))
       remove_note (i1, temp);
   }

        if (new_start == 0)
   new_start = i1;

        if (loop_dump_stream)
   fprintf (loop_dump_stream, " moved to %d",
     (((i1)->fld[0]).rtint));




        if ((temp = find_reg_note (i1, REG_RETVAL, (rtx) 0)))
   {
     (((temp)->fld[0]).rtx) = first;
     temp = find_reg_note (first, REG_LIBCALL, (rtx) 0);
     (((temp)->fld[0]).rtx) = i1;
   }

        temp = p;
        delete_insn (p);
        p = (((p)->fld[2]).rtx);







        while (p && ((enum rtx_code) (p)->code) == NOTE)
   p = (((temp)->fld[2]).rtx) = (((p)->fld[2]).rtx);
      }


    threshold -= 3;
  }



       already_moved[regno] = 1;


       regs->array[regno].moved_once = 1;


       if (! m->partial)
  {
    int i;
    for (i = 0; i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) (m->set_dest)->mode)) : 1); i++)
      regs->array[regno+i].set_in_loop = 0;
  }

       m->done = 1;





       if (uid_luid[(((reg_n_info)->data.reg[regno])->first_uid)] > ((((loop_start)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop_start)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 2214, __FUNCTION__), -1)))



  (((reg_n_info)->data.reg[regno])->first_uid) = (((loop_start)->fld[0]).rtint);
       if (uid_luid[(((reg_n_info)->data.reg[regno])->last_uid)] < ((((loop_end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop_end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 2219, __FUNCTION__), -1)))
  (((reg_n_info)->data.reg[regno])->last_uid) = (((loop_end)->fld[0]).rtint);



       if (! m->partial)
  for (m1 = movables->head; m1; m1 = m1->next)
    if (m1->match == m)
      {
        rtx temp;
# 2241 "../../../kg++fe/gnu/loop.c"
        if (((enum machine_mode) (m->set_dest)->mode) == ((enum machine_mode) (m1->set_dest)->mode))
   reg_map[m1->regno] = m->set_dest;
        else
   reg_map[m1->regno]
     = gen_lowpart_common (((enum machine_mode) (m1->set_dest)->mode),
      m->set_dest);



        m1->done = 1;


        if ((temp = find_reg_note (m1->insn, REG_RETVAL,
       (rtx) 0)))
   delete_insn_chain ((((temp)->fld[0]).rtx), m1->insn);
        else
          delete_insn (m1->insn);



        already_moved[m1->regno] = 1;



        if (! m->partial)
   {
     int i;
     for (i = 0;
          i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) (m1->set_dest)->mode)) : 1);
          i++)
       regs->array[m1->regno+i].set_in_loop = 0;
   }
      }
     }
   else if (loop_dump_stream)
     fprintf (loop_dump_stream, "not desirable");
 }
      else if (loop_dump_stream && !m->match)
 fprintf (loop_dump_stream, "not safe");

      if (loop_dump_stream)
 fprintf (loop_dump_stream, "\n");
    }

  if (new_start == 0)
    new_start = loop_start;



  for (p = new_start; p != loop_end; p = (((p)->fld[2]).rtx))
    if (((enum rtx_code) (p)->code) == INSN || ((enum rtx_code) (p)->code) == JUMP_INSN
 || ((enum rtx_code) (p)->code) == CALL_INSN)
      {
 replace_regs ((((p)->fld[5]).rtx), reg_map, nregs, 0);
 replace_regs ((((p)->fld[8]).rtx), reg_map, nregs, 0);
 (((p)->fld[6]).rtint) = -1;
      }


  free (reg_map);
  free (already_moved);
}


static void
loop_movables_add (movables, m)
     struct loop_movables *movables;
     struct movable *m;
{
  if (movables->head == 0)
    movables->head = m;
  else
    movables->last->next = m;
  movables->last = m;
}


static void
loop_movables_free (movables)
     struct loop_movables *movables;
{
  struct movable *m;
  struct movable *m_next;

  for (m = movables->head; m; m = m_next)
    {
      m_next = m->next;
      free (m);
    }
}
# 2399 "../../../kg++fe/gnu/loop.c"
static int
count_nonfixed_reads (loop, x)
     const struct loop *loop;
     rtx x;
{
  enum rtx_code code;
  int i;
  const char *fmt;
  int value;

  if (x == 0)
    return 0;

  code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case PC:
    case CC0:
    case CONST_INT:
    case CONST_DOUBLE:
    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
    case REG:
      return 0;

    case MEM:
      return ((loop_invariant_p (loop, (((x)->fld[0]).rtx)) != 1)
       + count_nonfixed_reads (loop, (((x)->fld[0]).rtx)));

    default:
      break;
    }

  value = 0;
  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 value += count_nonfixed_reads (loop, (((x)->fld[i]).rtx));
      if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     value += count_nonfixed_reads (loop, (((((x)->fld[i]).rtvec))->elem[j]));
 }
    }
  return value;
}







static void
prescan_loop (loop)
     struct loop *loop;
{
  int level = 1;
  rtx insn;
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  rtx start = loop->start;
  rtx end = loop->end;




  rtx exit_target = next_nonnote_insn (end);

  loop_info->has_indirect_jump = indirect_jump_in_function;
  loop_info->pre_header_has_call = 0;
  loop_info->has_call = 0;
  loop_info->has_nonconst_call = 0;
  loop_info->has_prefetch = 0;
  loop_info->has_volatile = 0;
  loop_info->has_tablejump = 0;
  loop_info->has_multiple_exit_targets = 0;
  loop->level = 1;

  loop_info->unknown_address_altered = 0;
  loop_info->unknown_constant_address_altered = 0;
  loop_info->store_mems = (rtx) 0;
  loop_info->first_loop_store_insn = (rtx) 0;
  loop_info->mems_idx = 0;
  loop_info->num_mem_sets = 0;

  loop_info->preconditioned = (((end)->fld[4]).rtint);

  for (insn = start; insn && ((enum rtx_code) (insn)->code) != CODE_LABEL;
       insn = (((insn)->fld[1]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == CALL_INSN)
 {
   loop_info->pre_header_has_call = 1;
   break;
 }
    }

  for (insn = (((start)->fld[2]).rtx); insn != (((end)->fld[2]).rtx);
       insn = (((insn)->fld[2]).rtx))
    {
      switch (((enum rtx_code) (insn)->code))
 {
 case NOTE:
   if ((((insn)->fld[5]).rtint) == NOTE_INSN_LOOP_BEG)
     {
       ++level;

       loop->level++;
     }
   else if ((((insn)->fld[5]).rtint) == NOTE_INSN_LOOP_END)
     --level;
   break;

 case CALL_INSN:
   if (! (((insn))->unchanging))
     {
       loop_info->unknown_address_altered = 1;
       loop_info->has_nonconst_call = 1;
     }
   else if (pure_call_p (insn))
     loop_info->has_nonconst_call = 1;
   loop_info->has_call = 1;
   if (can_throw_internal (insn))
     loop_info->has_multiple_exit_targets = 1;
   break;

 case JUMP_INSN:
   if (! loop_info->has_multiple_exit_targets)
     {
       rtx set = pc_set (insn);

       if (set)
  {
    rtx src = (((set)->fld[1]).rtx);
    rtx label1, label2;

    if (((enum rtx_code) (src)->code) == IF_THEN_ELSE)
      {
        label1 = (((src)->fld[1]).rtx);
        label2 = (((src)->fld[2]).rtx);
      }
    else
      {
        label1 = src;
        label2 = (rtx) 0;
      }

    do
      {
        if (label1 && label1 != (global_rtl[GR_PC]))
   {
     if (((enum rtx_code) (label1)->code) != LABEL_REF)
       {

         loop_info->has_multiple_exit_targets = 1;
         break;
       }
     else if ((((label1)->fld[0]).rtx) != exit_target
       && (((label1))->in_struct))
       {

         loop_info->has_multiple_exit_targets = 1;
         break;
       }
   }

        label1 = label2;
        label2 = (rtx) 0;
      }
    while (label1);
  }
       else
  {

    loop_info->has_multiple_exit_targets = 1;
  }
     }


 case INSN:
   if (volatile_refs_p ((((insn)->fld[5]).rtx)))
     loop_info->has_volatile = 1;

   if (((enum rtx_code) (insn)->code) == JUMP_INSN
       && (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == ADDR_DIFF_VEC
    || ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == ADDR_VEC))
     loop_info->has_tablejump = 1;

   note_stores ((((insn)->fld[5]).rtx), note_addr_stored, loop_info);
   if (! loop_info->first_loop_store_insn && loop_info->store_mems)
     loop_info->first_loop_store_insn = insn;

   if (flag_non_call_exceptions && can_throw_internal (insn))
     loop_info->has_multiple_exit_targets = 1;
   break;

 default:
   break;
 }
    }


  if (

      ! loop_info->has_nonconst_call




      && ! (cfun->calls_alloca)


      && ! loop_info->has_multiple_exit_targets)
    for (insn = (((start)->fld[2]).rtx); insn != (((end)->fld[2]).rtx);
  insn = (((insn)->fld[2]).rtx))
      for_each_rtx (&insn, insert_loop_mem, loop_info);




  if (loop_info->unknown_address_altered)
    {
      rtx mem = gen_rtx_MEM (BLKmode, (const_int_rtx[64]));

      loop_info->store_mems
 = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (mem), (loop_info->store_mems));
    }
  if (loop_info->unknown_constant_address_altered)
    {
      rtx mem = gen_rtx_MEM (BLKmode, (const_int_rtx[64]));

      (((mem))->unchanging) = 1;
      loop_info->store_mems
 = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (mem), (loop_info->store_mems));
    }
}



static void
invalidate_loops_containing_label (label)
     rtx label;
{
  struct loop *loop;
  for (loop = uid_loop[(((label)->fld[0]).rtint)]; loop; loop = loop->outer)
    loop->invalid = 1;
}





static void
find_and_verify_loops (f, loops)
     rtx f;
     struct loops *loops;
{
  rtx insn;
  rtx label;
  int num_loops;
  struct loop *current_loop;
  struct loop *next_loop;
  struct loop *loop;

  num_loops = loops->num;

  compute_luids (f, (rtx) 0, 0);




  uid_loop[0] = ((void *)0);




  num_loops = 0;
  current_loop = ((void *)0);
  for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
    {
      if (((enum rtx_code) (insn)->code) == NOTE)
 switch ((((insn)->fld[5]).rtint))
   {
   case NOTE_INSN_LOOP_BEG:
     next_loop = loops->array + num_loops;
     next_loop->num = num_loops;
     num_loops++;
     next_loop->start = insn;
     next_loop->outer = current_loop;
     current_loop = next_loop;
     break;

   case NOTE_INSN_LOOP_CONT:
     current_loop->cont = insn;
     break;

   case NOTE_INSN_LOOP_VTOP:
     current_loop->vtop = insn;
     break;

   case NOTE_INSN_LOOP_END:
     if (! current_loop)
       fancy_abort ("../../../kg++fe/gnu/loop.c", 2704, __FUNCTION__);

     current_loop->end = insn;
     current_loop = current_loop->outer;
     break;

   default:
     break;
   }

      if (((enum rtx_code) (insn)->code) == CALL_INSN
   && find_reg_note (insn, REG_SETJMP, ((void *)0)))
 {


   for (loop = current_loop; loop; loop = loop->outer)
     {
       loop->invalid = 1;
       if (loop_dump_stream)
  fprintf (loop_dump_stream,
    "\nLoop at %d ignored due to setjmp.\n",
    (((loop->start)->fld[0]).rtint));
     }
 }



      uid_loop[(((insn)->fld[0]).rtint)] = current_loop;
    }



  for (label = (cfun->expr->x_forced_labels); label; label = (((label)->fld[1]).rtx))
    invalidate_loops_containing_label ((((label)->fld[0]).rtx));



  for_each_eh_label (invalidate_loops_containing_label);
# 2756 "../../../kg++fe/gnu/loop.c"
  for (insn = f; insn; insn = (((insn)->fld[2]).rtx))
    if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
      {
 struct loop *this_loop = uid_loop[(((insn)->fld[0]).rtint)];

 if (((enum rtx_code) (insn)->code) == INSN || ((enum rtx_code) (insn)->code) == CALL_INSN)
   {
     rtx note = find_reg_note (insn, REG_LABEL, (rtx) 0);
     if (note)
       invalidate_loops_containing_label ((((note)->fld[0]).rtx));
   }

 if (((enum rtx_code) (insn)->code) != JUMP_INSN)
   continue;

 mark_loop_jump ((((insn)->fld[5]).rtx), this_loop);


 if (this_loop
     && (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == RETURN
  || (any_uncondjump_p (insn)
      && onlyjump_p (insn)
      && (uid_loop[((((((insn)->fld[9]).rtx))->fld[0]).rtint)]
   != this_loop)))
     && get_max_uid () < max_uid_for_loop)
   {
     rtx p;
     rtx our_next = next_real_insn (insn);
     rtx last_insn_to_move = (((insn)->fld[2]).rtx);
     struct loop *dest_loop;
     struct loop *outer_loop = ((void *)0);



     for (p = (((insn)->fld[1]).rtx);
   ((enum rtx_code) (p)->code) != CODE_LABEL
   && ! (((enum rtx_code) (p)->code) == NOTE
         && (((p)->fld[5]).rtint) == NOTE_INSN_LOOP_BEG)
   && ((enum rtx_code) (p)->code) != JUMP_INSN;
   p = (((p)->fld[1]).rtx))
       ;




     if ((((insn)->fld[9]).rtx))
       {
  dest_loop = uid_loop[((((((insn)->fld[9]).rtx))->fld[0]).rtint)];
  if (dest_loop)
    {
      for (outer_loop = dest_loop; outer_loop;
    outer_loop = outer_loop->outer)
        if (outer_loop == this_loop)
   break;
    }
       }



     if (((enum rtx_code) (p)->code) == JUMP_INSN && (((p)->fld[9]).rtx)
  && uid_loop[((((((p)->fld[9]).rtx))->fld[0]).rtint)] != this_loop)
       outer_loop = this_loop;
# 2828 "../../../kg++fe/gnu/loop.c"
     if (! outer_loop
  && ((enum rtx_code) (p)->code) == JUMP_INSN
  && (((p)->fld[9]).rtx) != 0


  && ((((((p)->fld[9]).rtx))->fld[0]).rtint) != 0
  && any_condjump_p (p) && onlyjump_p (p)
  && next_real_insn ((((p)->fld[9]).rtx)) == our_next


  && insns_safe_to_move_p (p, (((insn)->fld[2]).rtx),
      &last_insn_to_move))
       {
  rtx target
    = (((insn)->fld[9]).rtx) ? (((insn)->fld[9]).rtx) : get_last_insn ();
  struct loop *target_loop = uid_loop[(((target)->fld[0]).rtint)];
  rtx loc, loc2;
  rtx tmp;



  for (tmp = last_insn_to_move;
       tmp && ((enum rtx_code) (tmp)->code) != CODE_LABEL; tmp = (((tmp)->fld[2]).rtx))
    if (((enum rtx_code) (tmp)->code) == BARRIER)
      last_insn_to_move = tmp;

  for (loc = target; loc; loc = (((loc)->fld[1]).rtx))
    if (((enum rtx_code) (loc)->code) == BARRIER

        && ((loc2 = next_nonnote_insn (loc)) == 0
     || ((enum rtx_code) (loc2)->code) != CODE_LABEL
     || (loc2 = next_nonnote_insn (loc2)) == 0
     || ((enum rtx_code) (loc2)->code) != JUMP_INSN
     || (((enum rtx_code) ((((loc2)->fld[5]).rtx))->code) != ADDR_VEC
         && ((enum rtx_code) ((((loc2)->fld[5]).rtx))->code) != ADDR_DIFF_VEC))
        && uid_loop[(((loc)->fld[0]).rtint)] == target_loop)
      break;

  if (loc == 0)
    for (loc = target; loc; loc = (((loc)->fld[2]).rtx))
      if (((enum rtx_code) (loc)->code) == BARRIER

   && ((loc2 = next_nonnote_insn (loc)) == 0
       || ((enum rtx_code) (loc2)->code) != CODE_LABEL
       || (loc2 = next_nonnote_insn (loc2)) == 0
       || ((enum rtx_code) (loc2)->code) != JUMP_INSN
       || (((enum rtx_code) ((((loc2)->fld[5]).rtx))->code) != ADDR_VEC
    && ((enum rtx_code) ((((loc2)->fld[5]).rtx))->code) != ADDR_DIFF_VEC))
   && uid_loop[(((loc)->fld[0]).rtint)] == target_loop)
        break;

  if (loc)
    {
      rtx cond_label = (((p)->fld[9]).rtx);
      rtx new_label = get_label_after (p);


      (((cond_label)->fld[4]).rtint)++;



      if (invert_jump (p, new_label, 1))
        {
   rtx q, r;
# 2903 "../../../kg++fe/gnu/loop.c"
   if (loc == 0)
     {
       rtx temp;

       temp = gen_jump ((((insn)->fld[9]).rtx));
       temp = emit_jump_insn_before (temp, target);
       (((temp)->fld[9]).rtx) = (((insn)->fld[9]).rtx);
       ((((((insn)->fld[9]).rtx))->fld[4]).rtint)++;
       loc = emit_barrier_before (target);
     }



   if (squeeze_notes (&new_label, &last_insn_to_move))
     fancy_abort ("../../../kg++fe/gnu/loop.c", 2917, __FUNCTION__);
   reorder_insns (new_label, last_insn_to_move, loc);


   for (q = new_label;
        q != (((last_insn_to_move)->fld[2]).rtx);
        q = (((q)->fld[2]).rtx))
     uid_loop[(((q)->fld[0]).rtint)] = target_loop;






   if ((((insn)->fld[9]).rtx))
     {
       for (q = 0, r = this_loop->exit_labels;
     r;
     q = r, r = (((r)->fld[1]).rtx))
         if ((((r)->fld[0]).rtx) == (((insn)->fld[9]).rtx))
    {
      (((r))->in_struct) = 0;
      if (q)
        (((q)->fld[1]).rtx) = (((r)->fld[1]).rtx);
      else
        this_loop->exit_labels = (((r)->fld[1]).rtx);
      break;
    }

       for (loop = this_loop; loop && loop != target_loop;
     loop = loop->outer)
         loop->exit_count--;



       if (! r)
         fancy_abort ("../../../kg++fe/gnu/loop.c", 2953, __FUNCTION__);
     }





   mark_loop_jump ((((p)->fld[5]).rtx), this_loop);



   if ((((insn)->fld[9]).rtx) != 0
       && (next_real_insn ((((insn)->fld[9]).rtx))
    == next_real_insn (insn)))
     delete_related_insns (insn);
        }





      insn = (((cond_label)->fld[2]).rtx);

      if (--(((cond_label)->fld[4]).rtint) == 0)
        delete_related_insns (cond_label);


      insn = (((insn)->fld[1]).rtx);
    }
       }
   }
      }
}






static void
mark_loop_jump (x, loop)
     rtx x;
     struct loop *loop;
{
  struct loop *dest_loop;
  struct loop *outer_loop;
  int i;

  switch (((enum rtx_code) (x)->code))
    {
    case PC:
    case USE:
    case CLOBBER:
    case REG:
    case MEM:
    case CONST_INT:
    case CONST_DOUBLE:
    case RETURN:
      return;

    case CONST:

      mark_loop_jump ((((x)->fld[0]).rtx), loop);
      return;

    case PLUS:
    case MINUS:
    case MULT:
      mark_loop_jump ((((x)->fld[0]).rtx), loop);
      mark_loop_jump ((((x)->fld[1]).rtx), loop);
      return;

    case LO_SUM:

      mark_loop_jump ((((x)->fld[1]).rtx), loop);
      return;

    case SIGN_EXTEND:
    case ZERO_EXTEND:
      mark_loop_jump ((((x)->fld[0]).rtx), loop);
      return;

    case LABEL_REF:
      dest_loop = uid_loop[((((((x)->fld[0]).rtx))->fld[0]).rtint)];
# 3045 "../../../kg++fe/gnu/loop.c"
      if (dest_loop)
 {
   for (outer_loop = dest_loop; outer_loop;
        outer_loop = outer_loop->outer)
     if (outer_loop == loop)
       break;
 }
      else
 outer_loop = ((void *)0);

      if (loop && ! outer_loop)
 {
   (((x))->in_struct) = 1;
   (((x)->fld[1]).rtx) = loop->exit_labels;
   loop->exit_labels = x;

   for (outer_loop = loop;
        outer_loop && outer_loop != dest_loop;
        outer_loop = outer_loop->outer)
     outer_loop->exit_count++;
 }




      if (! dest_loop)
 return;




      for (; dest_loop; dest_loop = dest_loop->outer)
 {

   for (outer_loop = loop; outer_loop; outer_loop = outer_loop->outer)
     if (dest_loop == outer_loop)
       return;


   if (loop_dump_stream && ! dest_loop->invalid)
     fprintf (loop_dump_stream,
       "\nLoop at %d ignored due to multiple entry points.\n",
       (((dest_loop->start)->fld[0]).rtint));

   dest_loop->invalid = 1;
 }
      return;

    case SET:

      if ((((x)->fld[0]).rtx) == (global_rtl[GR_PC]))
 mark_loop_jump ((((x)->fld[1]).rtx), loop);
      return;

    case IF_THEN_ELSE:
      mark_loop_jump ((((x)->fld[1]).rtx), loop);
      mark_loop_jump ((((x)->fld[2]).rtx), loop);
      return;

    case PARALLEL:
    case ADDR_VEC:
      for (i = 0; i < (((((x)->fld[0]).rtvec))->num_elem); i++)
 mark_loop_jump ((((((x)->fld[0]).rtvec))->elem[i]), loop);
      return;

    case ADDR_DIFF_VEC:
      for (i = 0; i < (((((x)->fld[1]).rtvec))->num_elem); i++)
 mark_loop_jump ((((((x)->fld[1]).rtvec))->elem[i]), loop);
      return;

    default:




      if (loop)
 {
   for (outer_loop = loop; outer_loop; outer_loop = outer_loop->outer)
     {
       if (loop_dump_stream && ! outer_loop->invalid)
  fprintf (loop_dump_stream,
    "\nLoop at %d ignored due to unknown exit jump.\n",
    (((outer_loop->start)->fld[0]).rtint));
       outer_loop->invalid = 1;
     }
 }
      return;
    }
}






static int
labels_in_range_p (insn, end)
     rtx insn;
     int end;
{
  while (insn && ((((insn)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((insn)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 3145, __FUNCTION__), -1)) <= end)
    {
      if (((enum rtx_code) (insn)->code) == CODE_LABEL)
 return 1;
      insn = (((insn)->fld[2]).rtx);
    }

  return 0;
}



static void
note_addr_stored (x, y, data)
     rtx x;
     rtx y __attribute__ ((__unused__));
     void *data __attribute__ ((__unused__));
{
  struct loop_info *loop_info = data;

  if (x == 0 || ((enum rtx_code) (x)->code) != MEM)
    return;



  loop_info->num_mem_sets++;


  if (((enum machine_mode) (x)->mode) == BLKmode)
    {
      if ((((x))->unchanging))
 loop_info->unknown_constant_address_altered = 1;
      else
 loop_info->unknown_address_altered = 1;

      return;
    }

  loop_info->store_mems = gen_rtx_fmt_ee (EXPR_LIST, (VOIDmode), (x), (loop_info->store_mems));

}






static void
note_set_pseudo_multiple_uses (x, y, data)
     rtx x;
     rtx y __attribute__ ((__unused__));
     void *data;
{
  struct loop_regs *regs = (struct loop_regs *) data;

  if (x == 0)
    return;

  while (((enum rtx_code) (x)->code) == STRICT_LOW_PART
  || ((enum rtx_code) (x)->code) == SIGN_EXTRACT
  || ((enum rtx_code) (x)->code) == ZERO_EXTRACT
  || ((enum rtx_code) (x)->code) == SUBREG)
    x = (((x)->fld[0]).rtx);

  if (((enum rtx_code) (x)->code) != REG || (((x)->fld[0]).rtuint) < 176)
    return;



  if ((((x)->fld[0]).rtuint) >= max_reg_before_loop
      || ! regs->array[(((x)->fld[0]).rtuint)].single_usage
      || regs->array[(((x)->fld[0]).rtuint)].single_usage == (const_int_rtx[64]))
    regs->multiple_uses = 1;
}
# 3227 "../../../kg++fe/gnu/loop.c"
int
loop_invariant_p (loop, x)
     const struct loop *loop;
     rtx x;
{
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int i;
  enum rtx_code code;
  const char *fmt;
  int conditional = 0;
  rtx mem_list_entry;

  if (x == 0)
    return 1;
  code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case CONST_INT:
    case CONST_DOUBLE:
    case SYMBOL_REF:
    case CONST:
      return 1;

    case LABEL_REF:
# 3261 "../../../kg++fe/gnu/loop.c"
      if (flag_unroll_loops)
 return 0;
      else
 return 1;

    case PC:
    case CC0:
    case UNSPEC_VOLATILE:
      return 0;

    case REG:



      if ((x == (global_rtl[GR_FRAME_POINTER]) || x == (global_rtl[GR_HARD_FRAME_POINTER])
    || x == (global_rtl[GR_ARG_POINTER]) || x == pic_offset_table_rtx)
   && ! (cfun->has_nonlocal_goto))
 return 1;

      if (((struct loop_info *) (loop)->aux)->has_call
   && (((x)->fld[0]).rtuint) < 176 && call_used_regs[(((x)->fld[0]).rtuint)])
 return 0;





      if ((((x)->fld[0]).rtuint) >= (unsigned) regs->num)
 return 0;

      if (regs->array[(((x)->fld[0]).rtuint)].set_in_loop < 0)
 return 2;

      return regs->array[(((x)->fld[0]).rtuint)].set_in_loop == 0;

    case MEM:



      if ((((x))->volatil))
 return 0;


      mem_list_entry = loop_info->store_mems;
      while (mem_list_entry)
 {
   if (true_dependence ((((mem_list_entry)->fld[0]).rtx), VOIDmode,
          x, rtx_varies_p))
     return 0;

   mem_list_entry = (((mem_list_entry)->fld[1]).rtx);
 }



      break;

    case ASM_OPERANDS:

      if ((((x))->volatil))
 return 0;
      break;

    default:
      break;
    }

  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'e')
 {
   int tem = loop_invariant_p (loop, (((x)->fld[i]).rtx));
   if (tem == 0)
     return 0;
   if (tem == 2)
     conditional = 1;
 }
      else if (fmt[i] == 'E')
 {
   int j;
   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     {
       int tem = loop_invariant_p (loop, (((((x)->fld[i]).rtvec))->elem[j]));
       if (tem == 0)
  return 0;
       if (tem == 2)
  conditional = 1;
     }

 }
    }

  return 1 + conditional;
}
# 3367 "../../../kg++fe/gnu/loop.c"
static int
consec_sets_invariant_p (loop, reg, n_sets, insn)
     const struct loop *loop;
     int n_sets;
     rtx reg, insn;
{
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  rtx p = insn;
  unsigned int regno = (((reg)->fld[0]).rtuint);
  rtx temp;

  int count = n_sets - 1;
  int old = regs->array[regno].set_in_loop;
  int value = 0;
  int this;


  if (n_sets == 127)
    return 0;

  regs->array[regno].set_in_loop = 0;

  while (count > 0)
    {
      enum rtx_code code;
      rtx set;

      p = (((p)->fld[2]).rtx);
      code = ((enum rtx_code) (p)->code);


      if (code == INSN && (temp = find_reg_note (p, REG_LIBCALL, (rtx) 0)))
 p = (((temp)->fld[0]).rtx);

      this = 0;
      if (code == INSN
   && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
   && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
   && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) == regno)
 {
   this = loop_invariant_p (loop, (((set)->fld[1]).rtx));
   if (this != 0)
     value |= this;
   else if ((temp = find_reg_note (p, REG_EQUAL, (rtx) 0)))
     {



       this = ((((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((temp)->fld[0]).rtx))->code) == CONSTANT_P_RTX)
        || (find_reg_note (p, REG_RETVAL, (rtx) 0)
     && loop_invariant_p (loop, (((temp)->fld[0]).rtx))));
       if (this != 0)
  value |= this;
     }
 }
      if (this != 0)
 count--;
      else if (code != NOTE)
 {
   regs->array[regno].set_in_loop = old;
   return 0;
 }
    }

  regs->array[regno].set_in_loop = old;

  return 1 + (value & 2);
}
# 3473 "../../../kg++fe/gnu/loop.c"
static void
find_single_use_in_loop (regs, insn, x)
     struct loop_regs *regs;
     rtx insn;
     rtx x;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  const char *fmt = (rtx_format[(int) (code)]);
  int i, j;

  if (code == REG)
    regs->array[(((x)->fld[0]).rtuint)].single_usage
      = (regs->array[(((x)->fld[0]).rtuint)].single_usage != 0
  && regs->array[(((x)->fld[0]).rtuint)].single_usage != insn)
 ? (const_int_rtx[64]) : insn;

  else if (code == SET)
    {




      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) != REG)
 find_single_use_in_loop (regs, insn, (((x)->fld[0]).rtx));
      find_single_use_in_loop (regs, insn, (((x)->fld[1]).rtx));
    }
  else
    for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
      {
 if (fmt[i] == 'e' && (((x)->fld[i]).rtx) != 0)
   find_single_use_in_loop (regs, insn, (((x)->fld[i]).rtx));
 else if (fmt[i] == 'E')
   for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
     find_single_use_in_loop (regs, insn, (((((x)->fld[i]).rtvec))->elem[j]));
      }
}





static void
count_one_set (regs, insn, x, last_set)
     struct loop_regs *regs;
     rtx insn, x;
     rtx *last_set;
{
  if (((enum rtx_code) (x)->code) == CLOBBER && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == REG)


    regs->array[((((((x)->fld[0]).rtx))->fld[0]).rtuint)].may_not_optimize = 1;

  if (((enum rtx_code) (x)->code) == SET || ((enum rtx_code) (x)->code) == CLOBBER)
    {
      rtx dest = (((x)->fld[0]).rtx);
      while (((enum rtx_code) (dest)->code) == SUBREG
      || ((enum rtx_code) (dest)->code) == ZERO_EXTRACT
      || ((enum rtx_code) (dest)->code) == SIGN_EXTRACT
      || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART)
 dest = (((dest)->fld[0]).rtx);
      if (((enum rtx_code) (dest)->code) == REG)
 {
   int i;
   int regno = (((dest)->fld[0]).rtuint);
   for (i = 0; i < ((regno) < 176 ? (int) mips_hard_regno_nregs ((regno), ((enum machine_mode) (dest)->mode)) : 1); i++)
     {




       if (regs->array[regno].set_in_loop > 0
    && last_set == 0)
  regs->array[regno+i].may_not_optimize = 1;



       if (last_set[regno] != 0
    && reg_used_between_p (dest, last_set[regno], insn))
  regs->array[regno+i].may_not_optimize = 1;
       if (regs->array[regno+i].set_in_loop < 127)
  ++regs->array[regno+i].set_in_loop;
       last_set[regno+i] = insn;
     }
 }
    }
}
# 3569 "../../../kg++fe/gnu/loop.c"
static int
loop_reg_used_before_p (loop, set, insn)
     const struct loop *loop;
     rtx set, insn;
{
  rtx reg = (((set)->fld[0]).rtx);
  rtx p;



  for (p = loop->scan_start; p != insn; p = (((p)->fld[2]).rtx))
    {
      if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') && reg_overlap_mentioned_p (reg, (((p)->fld[5]).rtx)))
 return 1;

      if (p == loop->end)
 p = loop->start;
    }

  return 0;
}



struct prefetch_info
{
  struct iv_class *class;
  struct induction *giv;
  rtx base_address;

  long long index;
  long long stride;

  unsigned int bytes_accessed;

  unsigned int total_bytes;



  int prefetch_in_loop;
  int prefetch_before_loop;
  unsigned int write : 1;
};


struct check_store_data
{
  rtx mem_address;
  int mem_write;
};

static void check_store (rtx, rtx, void *);
static void emit_prefetch_instructions (struct loop *);
static int rtx_equal_for_prefetch_p (rtx, rtx);



static void
check_store (x, pat, data)
     rtx x, pat __attribute__ ((__unused__));
     void *data;
{
  struct check_store_data *d = (struct check_store_data *) data;

  if ((((enum rtx_code) (x)->code) == MEM) && rtx_equal_p (d->mem_address, (((x)->fld[0]).rtx)))
    d->mem_write = 1;
}
# 3644 "../../../kg++fe/gnu/loop.c"
static int
rtx_equal_for_prefetch_p (x, y)
     rtx x, y;
{
  int i;
  int j;
  enum rtx_code code = ((enum rtx_code) (x)->code);
  const char *fmt;

  if (x == y)
    return 1;
  if (code != ((enum rtx_code) (y)->code))
    return 0;

  code = ((enum rtx_code) (x)->code);

  if ((rtx_class[(int) (code)]) == 'c')
    {
      return ((rtx_equal_for_prefetch_p ((((x)->fld[0]).rtx), (((y)->fld[0]).rtx))
        && rtx_equal_for_prefetch_p ((((x)->fld[1]).rtx), (((y)->fld[1]).rtx)))
       || (rtx_equal_for_prefetch_p ((((x)->fld[0]).rtx), (((y)->fld[1]).rtx))
           && rtx_equal_for_prefetch_p ((((x)->fld[1]).rtx), (((y)->fld[0]).rtx))));
    }



  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'w':
   if ((((x)->fld[i]).rtwint) != (((y)->fld[i]).rtwint))
     return 0;
   break;

 case 'i':
   if ((((x)->fld[i]).rtint) != (((y)->fld[i]).rtint))
     return 0;
   break;

 case 'E':

   if ((((((x)->fld[i]).rtvec))->num_elem) != (((((y)->fld[i]).rtvec))->num_elem))
     return 0;


   for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
     if (rtx_equal_for_prefetch_p ((((((x)->fld[i]).rtvec))->elem[j]),
       (((((y)->fld[i]).rtvec))->elem[j])) == 0)
       return 0;
   break;

 case 'e':
   if (rtx_equal_for_prefetch_p ((((x)->fld[i]).rtx), (((y)->fld[i]).rtx)) == 0)
     return 0;
   break;

 case 's':
   if (strcmp ((((x)->fld[i]).rtstr), (((y)->fld[i]).rtstr)))
     return 0;
   break;

 case 'u':

   break;

 case '0':
   break;




 default:
   fancy_abort ("../../../kg++fe/gnu/loop.c", 3718, __FUNCTION__);
 }
    }
  return 1;
}




static long long
remove_constant_addition (x)
     rtx *x;
{
  long long addval = 0;
  rtx exp = *x;


  if (((enum rtx_code) (exp)->code) == CONST)
    {
      if (((enum rtx_code) ((((exp)->fld[0]).rtx))->code) == PLUS
   && ((enum rtx_code) (((((((exp)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
   && ((enum rtx_code) (((((((exp)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
 {
   *x = ((((((exp)->fld[0]).rtx))->fld[0]).rtx);
   return (((((((((exp)->fld[0]).rtx))->fld[1]).rtx))->fld[0]).rtwint);
 }
      return 0;
    }

  if (((enum rtx_code) (exp)->code) == CONST_INT)
    {
      addval = (((exp)->fld[0]).rtwint);
      *x = (const_int_rtx[64]);
    }


  else if (((enum rtx_code) (exp)->code) == PLUS)
    {
      addval += remove_constant_addition (&(((exp)->fld[0]).rtx));
      addval += remove_constant_addition (&(((exp)->fld[1]).rtx));



      if ((((exp)->fld[0]).rtx) == (const_int_rtx[64]))
 *x = (((exp)->fld[1]).rtx);
      else if ((((exp)->fld[1]).rtx) == (const_int_rtx[64]))
 *x = (((exp)->fld[0]).rtx);
    }

  return addval;
}
# 3790 "../../../kg++fe/gnu/loop.c"
static void
emit_prefetch_instructions (loop)
     struct loop *loop;
{
  int num_prefetches = 0;
  int num_real_prefetches = 0;
  int num_real_write_prefetches = 0;
  int num_prefetches_before = 0;
  int num_write_prefetches_before = 0;
  int ahead = 0;
  int i;
  struct iv_class *bl;
  struct induction *iv;
  struct prefetch_info info[100];
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);

  if (!((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000))))
    return;



  if (1 && ((struct loop_info *) (loop)->aux)->has_call)
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream, "Prefetch: ignoring loop: has call.\n");

      return;
    }


  if (1
      && ((struct loop_info *) (loop)->aux)->n_iterations
      && ((struct loop_info *) (loop)->aux)->n_iterations <= 32)
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream,
   "Prefetch: ignoring loop: not enough iterations.\n");
      return;
    }



  for (bl = ivs->list; bl; bl = bl->next)
    {
      struct induction *biv = bl->biv, *biv1;
      int basestride = 0;

      biv1 = biv;



      while (biv1)
 {





   if (((enum rtx_code) (biv->add_val)->code) != CONST_INT)
     {
       if (loop_dump_stream)
  {
    fprintf (loop_dump_stream,
      "Prefetch: ignoring biv %d: non-constant addition at insn %d:",
      (((biv->src_reg)->fld[0]).rtuint), (((biv->insn)->fld[0]).rtint));
    print_rtl (loop_dump_stream, biv->add_val);
    fprintf (loop_dump_stream, "\n");
  }
       break;
     }

   if (biv->maybe_multiple)
     {
       if (loop_dump_stream)
  {
    fprintf (loop_dump_stream,
      "Prefetch: ignoring biv %d: maybe_multiple at insn %i:",
      (((biv->src_reg)->fld[0]).rtuint), (((biv->insn)->fld[0]).rtint));
    print_rtl (loop_dump_stream, biv->add_val);
    fprintf (loop_dump_stream, "\n");
  }
       break;
     }

   basestride += (((biv1->add_val)->fld[0]).rtwint);
   biv1 = biv1->next_iv;
 }

      if (biv1 || !basestride)
 continue;

      for (iv = bl->giv; iv; iv = iv->next_iv)
 {
   rtx address;
   rtx temp;
   long long index = 0;
   int add = 1;
   long long stride = 0;
   int stride_sign = 1;
   struct check_store_data d;
   const char *ignore_reason = ((void *)0);
   int size = (mode_size[(int) (((enum machine_mode) (iv)->mode))]);



   if (iv->giv_type != DEST_ADDR)
     ignore_reason = "giv is not a destination address";



   else if (((enum rtx_code) (iv->mult_val)->code) != CONST_INT)
     ignore_reason = "stride is not constant";

   else
     {
       stride = (((iv->mult_val)->fld[0]).rtwint) * basestride;
       if (stride < 0)
  {
    stride = -stride;
    stride_sign = -1;
  }



       if (1 && stride_sign < 0)
  ignore_reason = "reversed order stride";



       else if (1
         && stride > 4096)
  ignore_reason = "extreme stride";



       else if (!loop_invariant_p (loop, iv->add_val))
  ignore_reason = "giv has varying add value";



       else if (iv->maybe_multiple)
  ignore_reason = "giv is in nested loop";
     }

   if (ignore_reason != ((void *)0))
     {
       if (loop_dump_stream)
  fprintf (loop_dump_stream,
    "Prefetch: ignoring giv at %d: %s.\n",
    (((iv->insn)->fld[0]).rtint), ignore_reason);
       continue;
     }



   address = copy_rtx (iv->add_val);
   temp = copy_rtx (bl->initial_value);

   address = simplify_gen_binary (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), temp, address);
   index = remove_constant_addition (&address);

   d.mem_write = 0;
   d.mem_address = *iv->location;



   if (1 || iv->always_executed)
     note_stores ((((iv->insn)->fld[5]).rtx), check_store, &d);
   else
     {
       if (loop_dump_stream)
  fprintf (loop_dump_stream, "Prefetch: Ignoring giv at %d: %s\n",
    (((iv->insn)->fld[0]).rtint), "in conditional code.");
       continue;
     }



   for (i = 0; i < num_prefetches; i++)
     if (rtx_equal_for_prefetch_p (address, info[i].base_address)
  && stride == info[i].stride)
       {







  if (index >= info[i].index
      && index - info[i].index < 4096)
    {
      info[i].write |= d.mem_write;
      info[i].bytes_accessed += size;
      info[i].index = index;
      info[i].giv = iv;
      info[i].class = bl;
      info[num_prefetches].base_address = address;
      add = 0;
      break;
    }

  if (index < info[i].index
      && info[i].index - index < 4096)
    {
      info[i].write |= d.mem_write;
      info[i].bytes_accessed += size;
      add = 0;
      break;
    }
       }


   if (add)
     {
       info[num_prefetches].giv = iv;
       info[num_prefetches].class = bl;
       info[num_prefetches].index = index;
       info[num_prefetches].stride = stride;
       info[num_prefetches].base_address = address;
       info[num_prefetches].write = d.mem_write;
       info[num_prefetches].bytes_accessed = size;
       num_prefetches++;
       if (num_prefetches >= 100)
  {
    if (loop_dump_stream)
      fprintf (loop_dump_stream,
        "Maximal number of prefetches exceeded.\n");
    return;
  }
     }
 }
    }

  for (i = 0; i < num_prefetches; i++)
    {
      int density;



      if (((struct loop_info *) (loop)->aux)->n_iterations
   && ((unsigned long long) (0xffffffff / info[i].stride)
       >= ((struct loop_info *) (loop)->aux)->n_iterations))
 info[i].total_bytes = info[i].stride * ((struct loop_info *) (loop)->aux)->n_iterations;
      else
 info[i].total_bytes = 0xffffffff;

      density = info[i].bytes_accessed * 100 / info[i].stride;


      if (1)
 if (density * 256 > 220 * 100
     && (info[i].total_bytes / 32
  >= 2))
   {
     info[i].prefetch_before_loop = 1;
     info[i].prefetch_in_loop
       = (info[i].total_bytes / 32
   > 6);
   }
 else
   {
     info[i].prefetch_in_loop = 0, info[i].prefetch_before_loop = 0;
     if (loop_dump_stream)
       fprintf (loop_dump_stream,
    "Prefetch: ignoring giv at %d: %d%% density is too low.\n",
         (((info[i].giv->insn)->fld[0]).rtint), density);
   }
      else
 info[i].prefetch_in_loop = 1, info[i].prefetch_before_loop = 1;


      if (info[i].prefetch_in_loop != 0)
 {
   info[i].prefetch_in_loop = ((info[i].stride + 32 - 1)
      / 32);
   num_real_prefetches += info[i].prefetch_in_loop;
   if (info[i].write)
     num_real_write_prefetches += info[i].prefetch_in_loop;
 }
    }



  if (num_real_prefetches != 0)
    {
      if ((ahead = 3 / num_real_prefetches) == 0)
 {
   if (loop_dump_stream)
     fprintf (loop_dump_stream,
       "Prefetch: ignoring prefetches within loop: ahead is zero; %d < %d\n",
       3, num_real_prefetches);
   num_real_prefetches = 0, num_real_write_prefetches = 0;
 }
    }


  if (ahead == 0)
    ahead = 6;

  for (i = 0; i < num_prefetches; i++)
    {

      if (num_real_prefetches == 0)
 info[i].prefetch_in_loop = 0;


      if (info[i].prefetch_before_loop != 0)
 {
   int n = info[i].total_bytes / 32;
   if (n > ahead)
     n = ahead;
   info[i].prefetch_before_loop = n;
   num_prefetches_before += n;
   if (info[i].write)
     num_write_prefetches_before += n;
 }

      if (loop_dump_stream)
 {
   if (info[i].prefetch_in_loop == 0
       && info[i].prefetch_before_loop == 0)
     continue;
   fprintf (loop_dump_stream, "Prefetch insn: %d",
     (((info[i].giv->insn)->fld[0]).rtint));
   fprintf (loop_dump_stream,
     "; in loop: %d; before: %d; %s\n",
     info[i].prefetch_in_loop,
     info[i].prefetch_before_loop,
     info[i].write ? "read/write" : "read only");
   fprintf (loop_dump_stream,
     " density: %d%%; bytes_accessed: %u; total_bytes: %u\n",
     (int) (info[i].bytes_accessed * 100 / info[i].stride),
     info[i].bytes_accessed, info[i].total_bytes);
   fprintf (loop_dump_stream, " index: ");
   fprintf (loop_dump_stream, "%lld", info[i].index);
   fprintf (loop_dump_stream, "; stride: ");
   fprintf (loop_dump_stream, "%lld", info[i].stride);
   fprintf (loop_dump_stream, "; address: ");
   print_rtl (loop_dump_stream, info[i].base_address);
   fprintf (loop_dump_stream, "\n");
 }
    }

  if (num_real_prefetches + num_prefetches_before > 0)
    {

      ((struct loop_info *) (loop)->aux)->has_prefetch = 1;

      if (loop_dump_stream)
 {
   fprintf (loop_dump_stream, "Real prefetches needed within loop: %d (write: %d)\n",
     num_real_prefetches, num_real_write_prefetches);
   fprintf (loop_dump_stream, "Real prefetches needed before loop: %d (write: %d)\n",
     num_prefetches_before, num_write_prefetches_before);
 }
    }

  for (i = 0; i < num_prefetches; i++)
    {
      int y;

      for (y = 0; y < info[i].prefetch_in_loop; y++)
 {
   rtx loc = copy_rtx (*info[i].giv->location);
   rtx insn;
   int bytes_ahead = 32 * (ahead + y);
   rtx before_insn = info[i].giv->insn;
   rtx prev_insn = (((info[i].giv->insn)->fld[1]).rtx);
   rtx seq;



   if (offsettable_address_p (0, VOIDmode, loc))
     loc = plus_constant_wide ((loc), (long long) (bytes_ahead));
   else
     {
       rtx reg = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
       loop_iv_add_mult_emit_before (loop, loc, (const_int_rtx[64 +1]),
               gen_rtx_CONST_INT (VOIDmode, (long long) (bytes_ahead)), reg,
           0, before_insn);
       loc = reg;
     }

   start_sequence ();

   if (! (*insn_data[(int)CODE_FOR_prefetch].operand[0].predicate)
    (loc, insn_data[(int)CODE_FOR_prefetch].operand[0].mode))
     loc = force_reg ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), loc);
   emit_insn (gen_prefetch (loc, gen_rtx_CONST_INT (VOIDmode, (long long) (info[i].write)),
       gen_rtx_CONST_INT (VOIDmode, (long long) (3))));
   seq = get_insns ();
   end_sequence ();
   emit_insn_before (seq, before_insn);



   insn = (((prev_insn)->fld[2]).rtx);
   while (insn != before_insn)
     {
       insn = check_insn_for_givs (loop, insn,
       info[i].giv->always_executed,
       info[i].giv->maybe_multiple);
       insn = (((insn)->fld[2]).rtx);
     }
 }

      if (1)
 {



   for (y = 0; y < info[i].prefetch_before_loop; y++)
     {
       rtx reg = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));
       rtx loop_start = loop->start;
       rtx init_val = info[i].class->initial_value;
       rtx add_val = simplify_gen_binary (PLUS, (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode),
       info[i].giv->add_val,
       gen_rtx_CONST_INT (VOIDmode, (long long) (y * 32)));




       if (((enum machine_mode) (init_val)->mode) != (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) && !(((enum rtx_code) (init_val)->code) == LABEL_REF || ((enum rtx_code) (init_val)->code) == SYMBOL_REF || ((enum rtx_code) (init_val)->code) == CONST_INT || ((enum rtx_code) (init_val)->code) == CONST_DOUBLE || ((enum rtx_code) (init_val)->code) == CONST || ((enum rtx_code) (init_val)->code) == HIGH || ((enum rtx_code) (init_val)->code) == CONST_VECTOR || ((enum rtx_code) (init_val)->code) == CONSTANT_P_RTX))
  {
    rtx seq;

    start_sequence ();
    init_val = convert_to_mode ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode), init_val, 0);
    seq = get_insns ();
    end_sequence ();
    loop_insn_emit_before (loop, 0, loop_start, seq);
  }
       loop_iv_add_mult_emit_before (loop, init_val,
         info[i].giv->mult_val,
         add_val, reg, 0, loop_start);
       emit_insn_before (gen_prefetch (reg, gen_rtx_CONST_INT (VOIDmode, (long long) (info[i].write)),
           gen_rtx_CONST_INT (VOIDmode, (long long) (3))),
    loop_start);
     }
 }
    }

  return;
}
# 4247 "../../../kg++fe/gnu/loop.c"
static rtx note_insn;



static rtx addr_placeholder;
# 4290 "../../../kg++fe/gnu/loop.c"
void
for_each_insn_in_loop (loop, fncall)
     struct loop *loop;
     loop_insn_callback fncall;
{
  int not_every_iteration = 0;
  int maybe_multiple = 0;
  int past_loop_latch = 0;
  int loop_depth = 0;
  rtx p;



  if (prev_nonnote_insn (loop->scan_start) != prev_nonnote_insn (loop->start))
    maybe_multiple = back_branch_in_range_p (loop, loop->scan_start);


  for (p = next_insn_in_loop (loop, loop->scan_start);
       p != (rtx) 0;
       p = next_insn_in_loop (loop, p))
    {
      p = fncall (loop, p, not_every_iteration, maybe_multiple);







      if (((enum rtx_code) (p)->code) == CODE_LABEL)
 {
   rtx insn = p;

   maybe_multiple = 0;

   while (1)
     {
       insn = (((insn)->fld[2]).rtx);
       if (insn == loop->scan_start)
  break;
       if (insn == loop->end)
  {
    if (loop->top != 0)
      insn = loop->top;
    else
      break;
    if (insn == loop->scan_start)
      break;
  }

       if (((enum rtx_code) (insn)->code) == JUMP_INSN
    && ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) != RETURN
    && (!any_condjump_p (insn)
        || ((((insn)->fld[9]).rtx) != 0
     && (((insn)->fld[9]).rtx) != loop->scan_start
     && !loop_insn_first_p (p, (((insn)->fld[9]).rtx)))))
  {
    maybe_multiple = 1;
    break;
  }
     }
 }





      if (((enum rtx_code) (p)->code) == JUMP_INSN




   && !((((p)->fld[9]).rtx) == loop->top
        && ((((((((p)->fld[2]).rtx))->fld[2]).rtx) == loop->end
      && any_uncondjump_p (p))
     || ((((p)->fld[2]).rtx) == loop->end && any_condjump_p (p)))))
 {
   rtx label = 0;





   for (label = loop->exit_labels; label; label = (((label)->fld[1]).rtx))
     if ((((label)->fld[0]).rtx) == (((p)->fld[9]).rtx))
       break;

   if (!label)
     not_every_iteration = 1;
 }

      else if (((enum rtx_code) (p)->code) == NOTE)
 {






   if (((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_VTOP
        || (((p)->fld[5]).rtint) == NOTE_INSN_LOOP_CONT)
       && loop_depth == 0)
     not_every_iteration = 0;
   else if ((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_BEG)
     loop_depth++;
   else if ((((p)->fld[5]).rtint) == NOTE_INSN_LOOP_END)
     loop_depth--;
 }
# 4407 "../../../kg++fe/gnu/loop.c"
      if (((enum rtx_code) (p)->code) == JUMP_INSN
   && (((p)->fld[9]).rtx) == (((loop->start)->fld[2]).rtx))
 past_loop_latch = 1;
# 4421 "../../../kg++fe/gnu/loop.c"
      if (not_every_iteration
   && !past_loop_latch
   && ((enum rtx_code) (p)->code) == CODE_LABEL
   && no_labels_between_p (p, loop->end)
   && loop_insn_first_p (p, loop->cont))
 not_every_iteration = 0;
    }
}

static void
loop_bivs_find (loop)
     struct loop *loop;
{
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);

  struct iv_class *bl, **backbl;

  ivs->list = 0;

  for_each_insn_in_loop (loop, check_insn_for_bivs);



  for (backbl = &ivs->list, bl = *backbl; bl; bl = bl->next)
    {
      if (ivs->regs[bl->regno].type != BASIC_INDUCT


   || regs->array[bl->regno].n_times_set != bl->biv_count


   || ! bl->incremented)
 {
   if (loop_dump_stream)
     fprintf (loop_dump_stream, "Biv %d: discarded, %s\n",
       bl->regno,
       (ivs->regs[bl->regno].type != BASIC_INDUCT
        ? "not induction variable"
        : (! bl->incremented ? "never incremented"
    : "count error")));

   ivs->regs[bl->regno].type = NOT_BASIC_INDUCT;
   *backbl = bl->next;
 }
      else
 {
   backbl = &bl->next;

   if (loop_dump_stream)
     fprintf (loop_dump_stream, "Biv %d: verified\n", bl->regno);
 }
    }
}




static void
loop_bivs_init_find (loop)
     struct loop *loop;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);

  struct iv_class *bl;
  int call_seen;
  rtx p;




  call_seen = 0;
  for (p = loop->start; p && ((enum rtx_code) (p)->code) != CODE_LABEL; p = (((p)->fld[1]).rtx))
    {
      rtx test;

      note_insn = p;

      if (((enum rtx_code) (p)->code) == CALL_INSN)
 call_seen = 1;

      if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i'))
 note_stores ((((p)->fld[5]).rtx), record_initial, ivs);




      if (((enum rtx_code) (p)->code) == JUMP_INSN
   && (((p)->fld[9]).rtx) != 0
   && next_real_insn ((((p)->fld[9]).rtx)) == next_real_insn (loop->end)
   && (test = get_condition_for_loop (loop, p)) != 0
   && ((enum rtx_code) ((((test)->fld[0]).rtx))->code) == REG
   && ((((((test)->fld[0]).rtx))->fld[0]).rtuint) < max_reg_before_loop
   && (bl = ivs->regs[((((((test)->fld[0]).rtx))->fld[0]).rtuint)].iv.class) != 0
   && valid_initial_value_p ((((test)->fld[1]).rtx), p, call_seen, loop->start)
   && bl->init_insn == 0)
 {

   if (((enum rtx_code) (test)->code) == NE)
     {
       bl->init_insn = p;
       bl->init_set = gen_rtx_fmt_ee (SET, (VOIDmode), ((((test)->fld[0]).rtx)), ((((test)->fld[1]).rtx)));

     }
   else
     bl->initial_test = test;
 }
    }
}





static void
loop_bivs_check (loop)
     struct loop *loop;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);

  struct iv_class *bl;
  struct iv_class **backbl;

  for (backbl = &ivs->list; (bl = *backbl); backbl = &bl->next)
    {
      rtx src;
      rtx note;

      if (! bl->init_insn)
 continue;



      if (((note = find_reg_note (bl->init_insn, REG_EQUAL, 0)) != ((void *)0)
    && (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONSTANT_P_RTX))
   || ((note = find_reg_note (bl->init_insn, REG_EQUIV, 0)) != ((void *)0)
       && (((enum rtx_code) ((((note)->fld[0]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == HIGH || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((note)->fld[0]).rtx))->code) == CONSTANT_P_RTX)))
 src = (((note)->fld[0]).rtx);
      else
 src = (((bl->init_set)->fld[1]).rtx);

      if (loop_dump_stream)
 fprintf (loop_dump_stream,
   "Biv %d: initialized at insn %d: initial value ",
   bl->regno, (((bl->init_insn)->fld[0]).rtint));

      if ((((enum machine_mode) (src)->mode) == ((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[bl->regno])->mode)
    || ((enum machine_mode) (src)->mode) == VOIDmode)
   && valid_initial_value_p (src, bl->init_insn,
        ((struct loop_info *) (loop)->aux)->pre_header_has_call,
        loop->start))
 {
   bl->initial_value = src;

   if (loop_dump_stream)
     {
       print_simple_rtl (loop_dump_stream, src);
       fputc_unlocked ('\n', loop_dump_stream);
     }
 }


      else if (loop_dump_stream)
 fprintf (loop_dump_stream, "is complex\n");
    }
}




static void
loop_givs_find (loop)
     struct loop* loop;
{
  for_each_insn_in_loop (loop, check_insn_for_givs);
}






static void
loop_givs_check (loop)
     struct loop *loop;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *bl;

  for (bl = ivs->list; bl; bl = bl->next)
    {
      struct induction *v;

      for (v = bl->giv; v; v = v->next_iv)
 if (! v->replaceable && ! v->not_replaceable)
   check_final_value (loop, v);
    }
}







static int
loop_biv_eliminable_p (loop, bl, threshold, insn_count)
     struct loop *loop;
     struct iv_class *bl;
     int threshold;
     int insn_count;
{
# 4654 "../../../kg++fe/gnu/loop.c"
  if ((uid_luid[(((reg_n_info)->data.reg[bl->regno])->last_uid)] < ((((loop->end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop->end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 4654, __FUNCTION__), -1))
       && bl->init_insn
       && (((bl->init_insn)->fld[0]).rtint) < max_uid_for_loop
       && uid_luid[(((reg_n_info)->data.reg[bl->regno])->first_uid)] >= ((((bl->init_insn)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((bl->init_insn)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 4657, __FUNCTION__), -1))
       && ! reg_mentioned_p (bl->biv->dest_reg, (((bl->init_set)->fld[1]).rtx)))
      || (bl->final_value = final_biv_value (loop, bl)))
    return maybe_eliminate_biv (loop, bl, 0, threshold, insn_count);

  if (loop_dump_stream)
    {
      fprintf (loop_dump_stream,
        "Cannot eliminate biv %d.\n",
        bl->regno);
      fprintf (loop_dump_stream,
        "First use: insn %d, last use: insn %d.\n",
        (((reg_n_info)->data.reg[bl->regno])->first_uid),
        (((reg_n_info)->data.reg[bl->regno])->last_uid));
    }
  return 0;
}




static void
loop_givs_reduce (loop, bl)
     struct loop *loop;
     struct iv_class *bl;
{
  struct induction *v;

  for (v = bl->giv; v; v = v->next_iv)
    {
      struct induction *tv;
      if (! v->ignore && v->same == 0)
 {
   int auto_inc_opt = 0;



   if (! v->new_reg)
     v->new_reg = gen_reg_rtx (v->mode);
# 4776 "../../../kg++fe/gnu/loop.c"
   for (tv = bl->biv; tv; tv = tv->next_iv)
     {
       rtx insert_before;


       if (tv->same)
  continue;
       if (! auto_inc_opt)
  insert_before = (((tv->insn)->fld[2]).rtx);
       else if (auto_inc_opt == 1)
  insert_before = (((v->insn)->fld[2]).rtx);
       else
  insert_before = v->insn;

       if (tv->mult_val == (const_int_rtx[64 +1]))
  loop_iv_add_mult_emit_before (loop, tv->add_val, v->mult_val,
           v->new_reg, v->new_reg,
           0, insert_before);
       else


  loop_iv_add_mult_emit_before (loop, tv->add_val, v->mult_val,
           v->add_val, v->new_reg,
           0, insert_before);
     }



   loop_iv_add_mult_hoist (loop,
      extend_value_for_giv (v, bl->initial_value),
      v->mult_val, v->add_val, v->new_reg);
 }
    }
}







static void
loop_givs_dead_check (loop, bl)
     struct loop *loop __attribute__ ((__unused__));
     struct iv_class *bl;
{
  struct induction *v;

  for (v = bl->giv; v; v = v->next_iv)
    {
      if (v->ignore
   || (v->same && v->same->ignore))
 continue;

      if (v->giv_type == DEST_REG
   && (((reg_n_info)->data.reg[(((v->dest_reg)->fld[0]).rtuint)])->first_uid) == (((v->insn)->fld[0]).rtint))
 {
   struct induction *v1;

   for (v1 = bl->giv; v1; v1 = v1->next_iv)
     if ((((reg_n_info)->data.reg[(((v->dest_reg)->fld[0]).rtuint)])->last_uid) == (((v1->insn)->fld[0]).rtint))
       v->maybe_dead = 1;
 }
    }
}


static void
loop_givs_rescan (loop, bl, reg_map)
     struct loop *loop;
     struct iv_class *bl;
     rtx *reg_map;
{
  struct induction *v;

  for (v = bl->giv; v; v = v->next_iv)
    {
      if (v->same && v->same->ignore)
 v->ignore = 1;

      if (v->ignore)
 continue;



      if (v->same)
 v->new_reg = replace_rtx (v->new_reg,
      v->same->dest_reg, v->same->new_reg);
# 4872 "../../../kg++fe/gnu/loop.c"
      if (((enum rtx_code) (v->new_reg)->code) == REG
   && v->giv_type == DEST_REG
   && (((v->dest_reg))->frame_related))
 mark_reg_pointer (v->new_reg,
     (cfun->emit->regno_pointer_align[(((v->dest_reg)->fld[0]).rtuint)]));
      else if (((enum rtx_code) (v->new_reg)->code) == REG
        && (((v->src_reg))->frame_related))
 {
   unsigned int align = (cfun->emit->regno_pointer_align[(((v->src_reg)->fld[0]).rtuint)]);

   if (align == 0
       || ((enum rtx_code) (v->add_val)->code) != CONST_INT
       || (((v->add_val)->fld[0]).rtwint) % (align / 8) != 0)
     align = 0;

   mark_reg_pointer (v->new_reg, align);
 }
      else if (((enum rtx_code) (v->new_reg)->code) == REG
        && ((enum rtx_code) (v->add_val)->code) == REG
        && (((v->add_val))->frame_related))
 {
   unsigned int align = (cfun->emit->regno_pointer_align[(((v->add_val)->fld[0]).rtuint)]);

   if (align == 0 || ((enum rtx_code) (v->mult_val)->code) != CONST_INT
       || (((v->mult_val)->fld[0]).rtwint) % (align / 8) != 0)
     align = 0;

   mark_reg_pointer (v->new_reg, align);
 }
      else if (((enum rtx_code) (v->new_reg)->code) == REG && v->giv_type == DEST_ADDR)
 mark_reg_pointer (v->new_reg, 0);

      if (v->giv_type == DEST_ADDR)


 validate_change (v->insn, v->location, v->new_reg, 0);
      else if (v->replaceable)
 {
   reg_map[(((v->dest_reg)->fld[0]).rtuint)] = v->new_reg;
 }
      else
 {
   rtx original_insn = v->insn;
   rtx note;



   v->insn = loop_insn_emit_after (loop, 0, original_insn,
       gen_move_insn (v->dest_reg,
        v->new_reg));





    note = find_reg_note (original_insn, REG_EQUAL, (rtx) 0);
    if (note)
      remove_note (original_insn, note);
 }






      if (bl->reversed && ! v->replaceable)
 loop_iv_add_mult_sink (loop,
          extend_value_for_giv (v, bl->initial_value),
          v->mult_val, v->add_val, v->dest_reg);
      else if (v->final_value)
 loop_insn_sink_or_swim (loop,
    gen_load_of_final_value (v->dest_reg,
        v->final_value));

      if (loop_dump_stream)
 {
   fprintf (loop_dump_stream, "giv at %d reduced to ",
     (((v->insn)->fld[0]).rtint));
   print_simple_rtl (loop_dump_stream, v->new_reg);
   fprintf (loop_dump_stream, "\n");
 }
    }
}


static int
loop_giv_reduce_benefit (loop, bl, v, test_reg)
     struct loop *loop __attribute__ ((__unused__));
     struct iv_class *bl;
     struct induction *v;
     rtx test_reg;
{
  int add_cost;
  int benefit;

  benefit = v->benefit;
  ((test_reg)->mode = (enum machine_mode) (v->mode));
  add_cost = iv_add_mult_cost (bl->biv->add_val, v->mult_val,
          test_reg, test_reg);
# 4982 "../../../kg++fe/gnu/loop.c"
  if (! v->replaceable && ! bl->eliminable
      && (((v->dest_reg))->volatil))
    benefit -= copy_cost;
# 4994 "../../../kg++fe/gnu/loop.c"
  benefit -= add_cost * bl->biv_count;
# 5028 "../../../kg++fe/gnu/loop.c"
  return benefit;
}




static void
loop_ivs_free (loop)
     struct loop *loop;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *iv = ivs->list;

  free (ivs->regs);

  while (iv)
    {
      struct iv_class *next = iv->next;
      struct induction *induction;
      struct induction *next_induction;

      for (induction = iv->biv; induction; induction = next_induction)
 {
   next_induction = induction->next_iv;
   free (induction);
 }
      for (induction = iv->giv; induction; induction = next_induction)
 {
   next_induction = induction->next_iv;
   free (induction);
 }

      free (iv);
      iv = next;
    }
}
# 5075 "../../../kg++fe/gnu/loop.c"
static void
strength_reduce (loop, flags)
     struct loop *loop;
     int flags;
{
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  rtx p;

  struct iv_class *bl;





  int threshold = (loop_info->has_call ? 1 : 2) * (3 + n_non_fixed_regs);

  rtx *reg_map = ((void *)0);
  int reg_map_size;
  int unrolled_insn_copies = 0;
  rtx test_reg = gen_rtx_REG (word_mode, (((176)) + 4) + 1);
  int insn_count = count_insns_in_loop (loop);

  addr_placeholder = gen_reg_rtx ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode));

  ivs->n_regs = max_reg_before_loop;
  ivs->regs = (struct iv *) xcalloc (ivs->n_regs, sizeof (struct iv));


  loop_bivs_find (loop);


  if (! ivs->list)
    {


      if (flags & 1)
 unroll_loop (loop, insn_count, 0);

      loop_ivs_free (loop);
      return;
    }



  loop_bivs_init_find (loop);



  loop_bivs_check (loop);


  loop_givs_find (loop);





  loop_iterations (loop);


  if (flags & 4)
    emit_prefetch_instructions (loop);






  loop_givs_check (loop);




  check_dbra_loop (loop, insn_count);




  reg_map_size = ivs->n_regs;
  reg_map = (rtx *) xcalloc (reg_map_size, sizeof (rtx));




  for (bl = ivs->list; bl; bl = bl->next)
    {
      struct induction *v;
      int benefit;



      bl->eliminable = loop_biv_eliminable_p (loop, bl, threshold, insn_count);




      bl->all_reduced = 1;



      check_ext_dependent_givs (bl, loop_info);


      combine_givs (regs, bl);

      for (v = bl->giv; v; v = v->next_iv)
 {
   struct induction *tv;

   if (v->ignore || v->same)
     continue;

   benefit = loop_giv_reduce_benefit (loop, bl, v, test_reg);
# 5200 "../../../kg++fe/gnu/loop.c"
   if (! flag_reduce_all_givs
       && v->lifetime * threshold * benefit < insn_count
       && ! bl->reversed)
     {
       if (loop_dump_stream)
  fprintf (loop_dump_stream,
    "giv of insn %d not worth while, %d vs %d.\n",
    (((v->insn)->fld[0]).rtint),
    v->lifetime * threshold * benefit, insn_count);
       v->ignore = 1;
       bl->all_reduced = 0;
     }
   else
     {



       for (tv = bl->biv; tv; tv = tv->next_iv)
  if (tv->mult_val == (const_int_rtx[64 +1])
      && ! product_cheap_p (tv->add_val, v->mult_val))
    {
      if (loop_dump_stream)
        fprintf (loop_dump_stream,
          "giv of insn %d: would need a multiply.\n",
          (((v->insn)->fld[0]).rtint));
      v->ignore = 1;
      bl->all_reduced = 0;
      break;
    }
     }
 }





      loop_givs_dead_check (loop, bl);


      loop_givs_reduce (loop, bl);







      loop_givs_rescan (loop, bl, reg_map);
# 5263 "../../../kg++fe/gnu/loop.c"
      for (v = bl->giv; v; v = v->next_iv)
 if (! v->maybe_dead && v->same)
   v->same->maybe_dead = 0;
# 5285 "../../../kg++fe/gnu/loop.c"
      if (bl->all_reduced == 1 && bl->eliminable
   && maybe_eliminate_biv (loop, bl, 1, threshold, insn_count))
 {
# 5300 "../../../kg++fe/gnu/loop.c"
   if (bl->final_value && ! bl->reversed)
       loop_insn_sink_or_swim (loop,
          gen_load_of_final_value (bl->biv->dest_reg,
              bl->final_value));

   if (loop_dump_stream)
     fprintf (loop_dump_stream, "Reg %d: biv eliminated\n",
       bl->regno);
 }


      else if (bl->final_value && ! bl->reversed)
 loop_insn_sink (loop, gen_load_of_final_value (bl->biv->dest_reg,
             bl->final_value));
    }




  for (p = loop->start; p != loop->end; p = (((p)->fld[2]).rtx))
    if (((enum rtx_code) (p)->code) == INSN || ((enum rtx_code) (p)->code) == JUMP_INSN
 || ((enum rtx_code) (p)->code) == CALL_INSN)
      {
 replace_regs ((((p)->fld[5]).rtx), reg_map, reg_map_size, 0);
 replace_regs ((((p)->fld[8]).rtx), reg_map, reg_map_size, 0);
 (((p)->fld[6]).rtint) = -1;
      }

  if (loop_info->n_iterations > 0)
    {



      unrolled_insn_copies = insn_count - 2;
# 5343 "../../../kg++fe/gnu/loop.c"
      unrolled_insn_copies *= loop_info->n_iterations;




      unrolled_insn_copies -= 1;


      if (unrolled_insn_copies < 0)
 unrolled_insn_copies = 0;
    }





  if ((flags & 1)
      || ((flags & 8)
   && loop_info->n_iterations > 0
   && unrolled_insn_copies <= insn_count))
    unroll_loop (loop, insn_count, 1);
# 5373 "../../../kg++fe/gnu/loop.c"
  if (flags & 2)
    {
      unsigned long long n
 = loop_info->n_iterations / loop_info->unroll_number;
      if (n > 1)
 predict_insn (prev_nonnote_insn (loop->end), PRED_LOOP_ITERATIONS,
        10000 - 10000 / n);
    }

  if (loop_dump_stream)
    fprintf (loop_dump_stream, "\n");

  loop_ivs_free (loop);
  if (reg_map)
    free (reg_map);
}


static rtx
check_insn_for_bivs (loop, p, not_every_iteration, maybe_multiple)
     struct loop *loop;
     rtx p;
     int not_every_iteration;
     int maybe_multiple;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  rtx set;
  rtx dest_reg;
  rtx inc_val;
  rtx mult_val;
  rtx *location;

  if (((enum rtx_code) (p)->code) == INSN
      && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
      && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG)
    {
      dest_reg = (((set)->fld[0]).rtx);
      if ((((dest_reg)->fld[0]).rtuint) < max_reg_before_loop
   && (((dest_reg)->fld[0]).rtuint) >= 176
   && ivs->regs[(((dest_reg)->fld[0]).rtuint)].type != NOT_BASIC_INDUCT)
 {
   if (basic_induction_var (loop, (((set)->fld[1]).rtx),
       ((enum machine_mode) ((((set)->fld[1]).rtx))->mode),
       dest_reg, p, &inc_val, &mult_val,
       &location))
     {



       struct induction *v
  = (struct induction *) xmalloc (sizeof (struct induction));

       record_biv (loop, v, p, dest_reg, inc_val, mult_val, location,
     not_every_iteration, maybe_multiple);
       ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = BASIC_INDUCT;
     }
   else if ((((dest_reg)->fld[0]).rtuint) < ivs->n_regs)
     ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = NOT_BASIC_INDUCT;
 }
    }
  return p;
}




static rtx
check_insn_for_givs (loop, p, not_every_iteration, maybe_multiple)
     struct loop *loop;
     rtx p;
     int not_every_iteration;
     int maybe_multiple;
{
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);

  rtx set;

  if (((enum rtx_code) (p)->code) == INSN
      && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
      && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
      && ! regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].may_not_optimize)
    {
      rtx src_reg;
      rtx dest_reg;
      rtx add_val;
      rtx mult_val;
      rtx ext_val;
      int benefit;
      rtx regnote = 0;
      rtx last_consec_insn;

      dest_reg = (((set)->fld[0]).rtx);
      if ((((dest_reg)->fld[0]).rtuint) < 176)
 return p;

      if (
   (general_induction_var (loop, (((set)->fld[1]).rtx), &src_reg, &add_val,
      &mult_val, &ext_val, 0, &benefit, VOIDmode)

    || ((regnote = find_reg_note (p, REG_EQUAL, (rtx) 0))
        && general_induction_var (loop, (((regnote)->fld[0]).rtx), &src_reg,
      &add_val, &mult_val, &ext_val, 0,
      &benefit, VOIDmode)))


   && (((dest_reg)->fld[0]).rtuint) < max_reg_before_loop

   && dest_reg != src_reg

   && (regs->array[(((dest_reg)->fld[0]).rtuint)].n_times_set == 1

       || (benefit = consec_sets_giv (loop, benefit, p,
          src_reg, dest_reg,
          &add_val, &mult_val, &ext_val,
          &last_consec_insn))))
 {
   struct induction *v
     = (struct induction *) xmalloc (sizeof (struct induction));


   if (find_reg_note (p, REG_RETVAL, (rtx) 0))
     benefit += libcall_benefit (p);


   if (regs->array[(((dest_reg)->fld[0]).rtuint)].n_times_set != 1)
     p = last_consec_insn;

   record_giv (loop, v, p, src_reg, dest_reg, mult_val, add_val,
        ext_val, benefit, DEST_REG, not_every_iteration,
        maybe_multiple, (rtx*) 0);

 }
    }





  if (((enum rtx_code) (p)->code) == INSN)
    find_mem_givs (loop, (((p)->fld[5]).rtx), p, not_every_iteration,
     maybe_multiple);




  if (((enum rtx_code) (p)->code) == INSN || ((enum rtx_code) (p)->code) == JUMP_INSN
      || ((enum rtx_code) (p)->code) == CODE_LABEL)
    update_giv_derive (loop, p);
  return p;
}
# 5532 "../../../kg++fe/gnu/loop.c"
static int
valid_initial_value_p (x, insn, call_seen, loop_start)
     rtx x;
     rtx insn;
     int call_seen;
     rtx loop_start;
{
  if ((((enum rtx_code) (x)->code) == LABEL_REF || ((enum rtx_code) (x)->code) == SYMBOL_REF || ((enum rtx_code) (x)->code) == CONST_INT || ((enum rtx_code) (x)->code) == CONST_DOUBLE || ((enum rtx_code) (x)->code) == CONST || ((enum rtx_code) (x)->code) == HIGH || ((enum rtx_code) (x)->code) == CONST_VECTOR || ((enum rtx_code) (x)->code) == CONSTANT_P_RTX))
    return 1;



  if (((enum rtx_code) (x)->code) != REG
      || (((x)->fld[0]).rtuint) >= max_reg_before_loop)
    return 0;



  if ((((x)->fld[0]).rtuint) < 176
      && (((target_flags & 0x00100000))
   || (call_used_regs[(((x)->fld[0]).rtuint)] && call_seen)))
    return 0;



  if (reg_set_between_p (x, insn, loop_start))
    return 0;

  return 1;
}







static void
find_mem_givs (loop, x, insn, not_every_iteration, maybe_multiple)
     const struct loop *loop;
     rtx x;
     rtx insn;
     int not_every_iteration, maybe_multiple;
{
  int i, j;
  enum rtx_code code;
  const char *fmt;

  if (x == 0)
    return;

  code = ((enum rtx_code) (x)->code);
  switch (code)
    {
    case REG:
    case CONST_INT:
    case CONST:
    case CONST_DOUBLE:
    case SYMBOL_REF:
    case LABEL_REF:
    case PC:
    case CC0:
    case ADDR_VEC:
    case ADDR_DIFF_VEC:
    case USE:
    case CLOBBER:
      return;

    case MEM:
      {
 rtx src_reg;
 rtx add_val;
 rtx mult_val;
 rtx ext_val;
 int benefit;






 if (general_induction_var (loop, (((x)->fld[0]).rtx), &src_reg, &add_val,
       &mult_val, &ext_val, 1, &benefit,
       ((enum machine_mode) (x)->mode)))
   {

     struct induction *v
       = (struct induction *) xmalloc (sizeof (struct induction));

     record_giv (loop, v, insn, src_reg, addr_placeholder, mult_val,
   add_val, ext_val, benefit, DEST_ADDR,
   not_every_iteration, maybe_multiple, &(((x)->fld[0]).rtx));

     v->mem = x;
   }
      }
      return;

    default:
      break;
    }



  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    if (fmt[i] == 'e')
      find_mem_givs (loop, (((x)->fld[i]).rtx), insn, not_every_iteration,
       maybe_multiple);
    else if (fmt[i] == 'E')
      for (j = 0; j < (((((x)->fld[i]).rtvec))->num_elem); j++)
 find_mem_givs (loop, (((((x)->fld[i]).rtvec))->elem[j]), insn, not_every_iteration,
         maybe_multiple);
}
# 5663 "../../../kg++fe/gnu/loop.c"
static void
record_biv (loop, v, insn, dest_reg, inc_val, mult_val, location,
     not_every_iteration, maybe_multiple)
     struct loop *loop;
     struct induction *v;
     rtx insn;
     rtx dest_reg;
     rtx inc_val;
     rtx mult_val;
     rtx *location;
     int not_every_iteration;
     int maybe_multiple;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *bl;

  v->insn = insn;
  v->src_reg = dest_reg;
  v->dest_reg = dest_reg;
  v->mult_val = mult_val;
  v->add_val = inc_val;
  v->ext_dependent = (rtx) 0;
  v->location = location;
  v->mode = ((enum machine_mode) (dest_reg)->mode);
  v->always_computable = ! not_every_iteration;
  v->always_executed = ! not_every_iteration;
  v->maybe_multiple = maybe_multiple;
  v->same = 0;




  bl = ivs->regs[(((dest_reg)->fld[0]).rtuint)].iv.class;
  if (bl == 0)
    {


      bl = (struct iv_class *) xmalloc (sizeof (struct iv_class));

      bl->regno = (((dest_reg)->fld[0]).rtuint);
      bl->biv = 0;
      bl->giv = 0;
      bl->biv_count = 0;
      bl->giv_count = 0;


      bl->initial_value = dest_reg;
      bl->final_value = 0;

      bl->init_insn = 0;
      bl->init_set = 0;
      bl->initial_test = 0;
      bl->incremented = 0;
      bl->eliminable = 0;
      bl->nonneg = 0;
      bl->reversed = 0;
      bl->total_benefit = 0;


      bl->next = ivs->list;
      ivs->list = bl;


      ivs->regs[(((dest_reg)->fld[0]).rtuint)].iv.class = bl;
    }
  else
    {

      struct induction *induction;
      for (induction = bl->biv; induction; induction = induction->next_iv)
 if (location == induction->location)
   {
     v->same = induction;
     break;
   }
    }


  v->next_iv = bl->biv;
  bl->biv = v;
  bl->biv_count++;
  if (mult_val == (const_int_rtx[64 +1]))
    bl->incremented = 1;

  if (loop_dump_stream)
    loop_biv_dump (v, loop_dump_stream, 0);
}
# 5764 "../../../kg++fe/gnu/loop.c"
static void
record_giv (loop, v, insn, src_reg, dest_reg, mult_val, add_val, ext_val,
     benefit, type, not_every_iteration, maybe_multiple, location)
     const struct loop *loop;
     struct induction *v;
     rtx insn;
     rtx src_reg;
     rtx dest_reg;
     rtx mult_val, add_val, ext_val;
     int benefit;
     enum g_types type;
     int not_every_iteration, maybe_multiple;
     rtx *location;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct induction *b;
  struct iv_class *bl;
  rtx set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);
  rtx temp;



  temp = simplify_rtx (add_val);
  if (temp
      && ! (((enum rtx_code) (add_val)->code) == MULT
     && ((enum rtx_code) (temp)->code) == ASHIFT))
    add_val = temp;

  v->insn = insn;
  v->src_reg = src_reg;
  v->giv_type = type;
  v->dest_reg = dest_reg;
  v->mult_val = mult_val;
  v->add_val = add_val;
  v->ext_dependent = ext_val;
  v->benefit = benefit;
  v->location = location;
  v->cant_derive = 0;
  v->combined_with = 0;
  v->maybe_multiple = maybe_multiple;
  v->maybe_dead = 0;
  v->derive_adjustment = 0;
  v->same = 0;
  v->ignore = 0;
  v->new_reg = 0;
  v->final_value = 0;
  v->same_insn = 0;
  v->auto_inc_opt = 0;
  v->unrolled = 0;
  v->shared = 0;
# 5823 "../../../kg++fe/gnu/loop.c"
  if (type == DEST_ADDR)
    v->always_computable = 1;
  else
    v->always_computable = ! not_every_iteration;

  v->always_executed = ! not_every_iteration;

  if (type == DEST_ADDR)
    {
      v->mode = ((enum machine_mode) (*location)->mode);
      v->lifetime = 1;
    }
  else
    {
      v->mode = ((enum machine_mode) ((((set)->fld[0]).rtx))->mode);

      v->lifetime = ((uid_luid[(((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->last_uid)] - uid_luid[(((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->first_uid)]));




      if (v->lifetime == 0)
 v->ignore = 1;

      ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = GENERAL_INDUCT;
      ivs->regs[(((dest_reg)->fld[0]).rtuint)].iv.info = v;
    }



  bl = ivs->regs[(((src_reg)->fld[0]).rtuint)].iv.class;
  if (bl)
    {
      v->next_iv = bl->giv;
      bl->giv = v;


      if (type == DEST_REG)
 bl->giv_count++;
      bl->total_benefit += benefit;
    }
  else

    fancy_abort ("../../../kg++fe/gnu/loop.c", 5866, __FUNCTION__);

  if (type == DEST_ADDR)
    {
      v->replaceable = 1;
      v->not_replaceable = 0;
    }
  else
    {
# 5885 "../../../kg++fe/gnu/loop.c"
      if ((((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->first_uid) == (((insn)->fld[0]).rtint)

   && uid_luid[(((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->last_uid)]
   < ((((loop->end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop->end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 5888, __FUNCTION__), -1))
   && (! not_every_iteration
       || last_use_this_basic_block (dest_reg, insn)))
 {
# 5906 "../../../kg++fe/gnu/loop.c"
   v->replaceable = 1;
   v->not_replaceable = 0;
   for (b = bl->biv; b; b = b->next_iv)
     {
       if ((((b->insn)->fld[0]).rtint) >= max_uid_for_loop
    || ((((((b->insn)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((b->insn)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 5911, __FUNCTION__), -1))
         >= uid_luid[(((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->first_uid)])
        && (((((b->insn)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((b->insn)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 5913, __FUNCTION__), -1))
     <= uid_luid[(((reg_n_info)->data.reg[(((dest_reg)->fld[0]).rtuint)])->last_uid)])))
  {
    v->replaceable = 0;
    v->not_replaceable = 1;
    break;
  }
     }



   if (v->replaceable)
     for (b = bl->biv; b; b = b->next_iv)
       if (back_branch_in_range_p (loop, b->insn))
  {
    v->replaceable = 0;
    v->not_replaceable = 1;
    break;
  }
 }
      else
 {


   v->replaceable = 0;
   v->not_replaceable = 0;
 }
    }



  {
    rtx tem = add_val;

    v->no_const_addval = 1;
    if (tem == (const_int_rtx[64]))
      ;
    else if ((((enum rtx_code) (add_val)->code) == LABEL_REF || ((enum rtx_code) (add_val)->code) == SYMBOL_REF || ((enum rtx_code) (add_val)->code) == CONST_INT || ((enum rtx_code) (add_val)->code) == CONST_DOUBLE || ((enum rtx_code) (add_val)->code) == CONST || ((enum rtx_code) (add_val)->code) == HIGH || ((enum rtx_code) (add_val)->code) == CONST_VECTOR || ((enum rtx_code) (add_val)->code) == CONSTANT_P_RTX))
      v->no_const_addval = 0;
    if (((enum rtx_code) (tem)->code) == PLUS)
      {
 while (1)
   {
     if (((enum rtx_code) ((((tem)->fld[0]).rtx))->code) == PLUS)
       tem = (((tem)->fld[0]).rtx);
     else if (((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == PLUS)
       tem = (((tem)->fld[1]).rtx);
     else
       break;
   }
 if ((((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((tem)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
   v->no_const_addval = 0;
      }
  }

  if (loop_dump_stream)
    loop_giv_dump (v, loop_dump_stream, 0);
}







static void
check_final_value (loop, v)
     const struct loop *loop;
     struct induction *v;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *bl;
  rtx final_value = 0;

  bl = ivs->regs[(((v->src_reg)->fld[0]).rtuint)].iv.class;
# 6010 "../../../kg++fe/gnu/loop.c"
  if ((final_value = final_giv_value (loop, v))
      && (v->always_executed
   || last_use_this_basic_block (v->dest_reg, v->insn)))
    {
      int biv_increment_seen = 0, before_giv_insn = 0;
      rtx p = v->insn;
      rtx last_giv_use;

      v->replaceable = 1;
      v->not_replaceable = 0;
# 6039 "../../../kg++fe/gnu/loop.c"
      last_giv_use = v->insn;

      while (1)
 {
   p = (((p)->fld[2]).rtx);
   if (p == loop->end)
     {
       before_giv_insn = 1;
       p = (((loop->start)->fld[2]).rtx);
     }
   if (p == v->insn)
     break;

   if (((enum rtx_code) (p)->code) == INSN || ((enum rtx_code) (p)->code) == JUMP_INSN
       || ((enum rtx_code) (p)->code) == CALL_INSN)
     {





       if (! biv_increment_seen
    && reg_set_p (v->src_reg, (((p)->fld[5]).rtx)))
  biv_increment_seen = 1;

       if (reg_mentioned_p (v->dest_reg, (((p)->fld[5]).rtx)))
  {
    if (biv_increment_seen || before_giv_insn)
      {
        v->replaceable = 0;
        v->not_replaceable = 1;
        break;
      }
    last_giv_use = p;
  }
     }
 }





      if (v->replaceable)
 {
   p = v->insn;
   while (1)
     {
       p = (((p)->fld[2]).rtx);
       if (p == loop->end)
  p = (((loop->start)->fld[2]).rtx);
       if (p == last_giv_use)
  break;

       if (((enum rtx_code) (p)->code) == JUMP_INSN && (((p)->fld[9]).rtx)
    && ((((((p)->fld[9]).rtx))->fld[7]).rtstr)
    && ((loop_insn_first_p ((((p)->fld[9]).rtx), v->insn)
         && loop_insn_first_p (loop->start, (((p)->fld[9]).rtx)))
        || (loop_insn_first_p (last_giv_use, (((p)->fld[9]).rtx))
     && loop_insn_first_p ((((p)->fld[9]).rtx), loop->end))))
  {
    v->replaceable = 0;
    v->not_replaceable = 1;

    if (loop_dump_stream)
      fprintf (loop_dump_stream,
        "Found branch outside giv lifetime.\n");

    break;
  }
     }
 }


      if (v->replaceable)
 v->final_value = final_value;
    }

  if (loop_dump_stream && v->replaceable)
    fprintf (loop_dump_stream, "Insn %d: giv reg %d final_value replaceable\n",
      (((v->insn)->fld[0]).rtint), (((v->dest_reg)->fld[0]).rtuint));
}
# 6132 "../../../kg++fe/gnu/loop.c"
static void
update_giv_derive (loop, p)
     const struct loop *loop;
     rtx p;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *bl;
  struct induction *biv, *giv;
  rtx tem;
  int dummy;
# 6170 "../../../kg++fe/gnu/loop.c"
  for (bl = ivs->list; bl; bl = bl->next)
    for (biv = bl->biv; biv; biv = biv->next_iv)
      if (((enum rtx_code) (p)->code) == CODE_LABEL || ((enum rtx_code) (p)->code) == JUMP_INSN
   || biv->insn == p)
 {
   for (giv = bl->giv; giv; giv = giv->next_iv)
     {


       if (giv->cant_derive)
  continue;



       if (((enum rtx_code) (p)->code) == CODE_LABEL && ! giv->always_computable)
  giv->cant_derive = 1;





       else if (giv->mult_val == (const_int_rtx[64]) || giv->replaceable)
  continue;





       else if (biv->insn == p)
  {
    rtx ext_val_dummy;

    tem = 0;
    if (biv->mult_val == (const_int_rtx[64 +1]))
      tem = simplify_giv_expr (loop,
          gen_rtx_fmt_ee (MULT, (giv->mode), (biv->add_val), (giv->mult_val)),


          &ext_val_dummy, &dummy);

    if (tem && giv->derive_adjustment)
      tem = simplify_giv_expr
        (loop,
         gen_rtx_fmt_ee (PLUS, (giv->mode), (tem), (giv->derive_adjustment)),
         &ext_val_dummy, &dummy);

    if (tem)
      giv->derive_adjustment = tem;
    else
      giv->cant_derive = 1;
  }
       else if ((((enum rtx_code) (p)->code) == CODE_LABEL && ! biv->always_computable)
         || (((enum rtx_code) (p)->code) == JUMP_INSN && biv->maybe_multiple))
  giv->cant_derive = 1;
     }
 }
}
# 6265 "../../../kg++fe/gnu/loop.c"
static int
basic_induction_var (loop, x, mode, dest_reg, p, inc_val, mult_val, location)
     const struct loop *loop;
     rtx x;
     enum machine_mode mode;
     rtx dest_reg;
     rtx p;
     rtx *inc_val;
     rtx *mult_val;
     rtx **location;
{
  enum rtx_code code;
  rtx *argp, arg;
  rtx insn, set = 0, last, inc;

  code = ((enum rtx_code) (x)->code);
  *location = ((void *)0);
  switch (code)
    {
    case PLUS:
      if (rtx_equal_p ((((x)->fld[0]).rtx), dest_reg)
   || (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == SUBREG
       && ((((((x)->fld[0]).rtx)))->in_struct)
       && ((((((x)->fld[0]).rtx))->fld[0]).rtx) == dest_reg))
 {
   argp = &(((x)->fld[1]).rtx);
 }
      else if (rtx_equal_p ((((x)->fld[1]).rtx), dest_reg)
        || (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == SUBREG
     && ((((((x)->fld[1]).rtx)))->in_struct)
     && ((((((x)->fld[1]).rtx))->fld[0]).rtx) == dest_reg))
 {
   argp = &(((x)->fld[0]).rtx);
 }
      else
 return 0;

      arg = *argp;
      if (loop_invariant_p (loop, arg) != 1)
 return 0;
# 6317 "../../../kg++fe/gnu/loop.c"
      last = get_last_insn ();
      inc = convert_modes (((enum machine_mode) (dest_reg)->mode), ((enum machine_mode) (x)->mode), arg, 0);
      if (get_last_insn () != last)
 {
   delete_insns_since (last);
   return 0;
 }

      *inc_val = inc;
      *mult_val = (const_int_rtx[64 +1]);
      *location = argp;
      return 1;

    case SUBREG:




      return basic_induction_var (loop, (((x)->fld[0]).rtx),
      ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
      dest_reg, p, inc_val, mult_val, location);

    case REG:





      if (rtx_equal_p (dest_reg, x))
 return 0;

      insn = p;
      while (1)
 {
   rtx dest;
   do
     {
       insn = (((insn)->fld[1]).rtx);
     }
   while (insn && ((enum rtx_code) (insn)->code) == NOTE
   && (((insn)->fld[5]).rtint) != NOTE_INSN_LOOP_BEG);

   if (!insn)
     break;
   set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);
   if (set == 0)
     break;
   dest = (((set)->fld[0]).rtx);
   if (dest == x
       || (((enum rtx_code) (dest)->code) == SUBREG
    && ((mode_size[(int) (((enum machine_mode) (dest)->mode))]) <= ((target_flags & 0x00002000) ? 8 : 4))
    && ((mode_class[(int) (((enum machine_mode) (dest)->mode))]) == MODE_INT)
    && (((dest)->fld[0]).rtx) == x))
     return basic_induction_var (loop, (((set)->fld[1]).rtx),
     (((enum machine_mode) ((((set)->fld[1]).rtx))->mode) == VOIDmode
      ? ((enum machine_mode) (x)->mode)
      : ((enum machine_mode) ((((set)->fld[1]).rtx))->mode)),
     dest_reg, insn,
     inc_val, mult_val, location);

   while (((enum rtx_code) (dest)->code) == SIGN_EXTRACT
   || ((enum rtx_code) (dest)->code) == ZERO_EXTRACT
   || ((enum rtx_code) (dest)->code) == SUBREG
   || ((enum rtx_code) (dest)->code) == STRICT_LOW_PART)
     dest = (((dest)->fld[0]).rtx);
   if (dest == x)
     break;
 }






    case MEM:
      if (loop_invariant_p (loop, x) != 1)
 return 0;
    case CONST_INT:
    case SYMBOL_REF:
    case CONST:




      if (loop->level == 1
   && (mode_class[(int) (mode)]) == (mode_class[(int) (((enum machine_mode) (dest_reg)->mode))])
   && (mode_class[(int) (mode)]) != MODE_CC)
 {

   last = get_last_insn ();
   inc = convert_modes (((enum machine_mode) (dest_reg)->mode), mode, x, 0);
   if (get_last_insn () != last)
     {
       delete_insns_since (last);
       return 0;
     }

   *inc_val = inc;
   *mult_val = (const_int_rtx[64]);
   return 1;
 }
      else
 return 0;

    case SIGN_EXTEND:
      return basic_induction_var (loop, (((x)->fld[0]).rtx), ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
      dest_reg, p, inc_val, mult_val, location);

    case ASHIFTRT:

      for (insn = (((p)->fld[1]).rtx);
    (insn && ((enum rtx_code) (insn)->code) == NOTE
     && (((insn)->fld[5]).rtint) != NOTE_INSN_LOOP_BEG);
    insn = (((insn)->fld[1]).rtx))
 ;

      if (insn)
 set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);

      if (! rtx_equal_p (dest_reg, (((x)->fld[0]).rtx))
   && set && (((set)->fld[0]).rtx) == (((x)->fld[0]).rtx)
   && ((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT
   && ((((((x)->fld[1]).rtx))->fld[0]).rtwint) >= 0
   && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == ASHIFT
   && (((x)->fld[1]).rtx) == ((((((set)->fld[1]).rtx))->fld[1]).rtx))
 return basic_induction_var (loop, ((((((set)->fld[1]).rtx))->fld[0]).rtx),
        ((enum machine_mode) ((((x)->fld[0]).rtx))->mode),
        dest_reg, insn, inc_val, mult_val,
        location);
      return 0;

    default:
      return 0;
    }
}
# 6467 "../../../kg++fe/gnu/loop.c"
static int
general_induction_var (loop, x, src_reg, add_val, mult_val, ext_val,
         is_addr, pbenefit, addr_mode)
     const struct loop *loop;
     rtx x;
     rtx *src_reg;
     rtx *add_val;
     rtx *mult_val;
     rtx *ext_val;
     int is_addr;
     int *pbenefit;
     enum machine_mode addr_mode;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  rtx orig_x = x;


  if (loop_invariant_p (loop, x) == 1)
    return 0;

  *pbenefit = 0;
  *ext_val = (rtx) 0;
  x = simplify_giv_expr (loop, x, ext_val, pbenefit);
  if (x == 0)
    return 0;

  switch (((enum rtx_code) (x)->code))
    {
    case USE:
    case CONST_INT:



      *src_reg = ivs->list->biv->dest_reg;
      *mult_val = (const_int_rtx[64]);
      *add_val = x;
      break;

    case REG:

      *src_reg = x;
      *mult_val = (const_int_rtx[64 +1]);
      *add_val = (const_int_rtx[64]);
      break;

    case PLUS:


      if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == MULT)
 {
   *src_reg = ((((((x)->fld[0]).rtx))->fld[0]).rtx);
   *mult_val = ((((((x)->fld[0]).rtx))->fld[1]).rtx);
 }
      else
 {
   *src_reg = (((x)->fld[0]).rtx);
   *mult_val = (const_int_rtx[64 +1]);
 }
      *add_val = (((x)->fld[1]).rtx);
      break;

    case MULT:

      *src_reg = (((x)->fld[0]).rtx);
      *mult_val = (((x)->fld[1]).rtx);
      *add_val = (const_int_rtx[64]);
      break;

    default:
      fancy_abort ("../../../kg++fe/gnu/loop.c", 6536, __FUNCTION__);
    }



  if (((enum rtx_code) (*add_val)->code) == USE)
    *add_val = (((*add_val)->fld[0]).rtx);
  if (((enum rtx_code) (*mult_val)->code) == USE)
    *mult_val = (((*mult_val)->fld[0]).rtx);

  if (is_addr)
    *pbenefit += address_cost (orig_x, addr_mode) - reg_address_cost;
  else
    *pbenefit += rtx_cost (orig_x, SET);




  return 1;
}
# 6577 "../../../kg++fe/gnu/loop.c"
static rtx sge_plus (enum machine_mode, rtx, rtx);
static rtx sge_plus_constant (rtx, rtx);

static rtx
simplify_giv_expr (loop, x, ext_val, benefit)
     const struct loop *loop;
     rtx x;
     rtx *ext_val;
     int *benefit;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  enum machine_mode mode = ((enum machine_mode) (x)->mode);
  rtx arg0, arg1;
  rtx tem;



  if (mode != VOIDmode
      && ((mode_class[(int) (mode)]) != MODE_INT
   || (mode_bitsize[(int) (mode)]) > (8 * 8)))
    return (rtx) 0;

  switch (((enum rtx_code) (x)->code))
    {
    case PLUS:
      arg0 = simplify_giv_expr (loop, (((x)->fld[0]).rtx), ext_val, benefit);
      arg1 = simplify_giv_expr (loop, (((x)->fld[1]).rtx), ext_val, benefit);
      if (arg0 == 0 || arg1 == 0)
 return (rtx) 0;


      if ((((enum rtx_code) (arg0)->code) == USE
    || ((enum rtx_code) (arg0)->code) == CONST_INT)
   && ! ((((enum rtx_code) (arg0)->code) == USE
   && ((enum rtx_code) (arg1)->code) == USE)
  || ((enum rtx_code) (arg1)->code) == CONST_INT))
 tem = arg0, arg0 = arg1, arg1 = tem;


      if (arg1 == (const_int_rtx[64]))
 return arg0;
      else if (((enum rtx_code) (arg1)->code) == CONST_INT || ((enum rtx_code) (arg1)->code) == USE)
 switch (((enum rtx_code) (arg0)->code))
   {
   case CONST_INT:
   case USE:


     if (((enum rtx_code) (arg0)->code) == USE)
       arg0 = (((arg0)->fld[0]).rtx);
     if (((enum rtx_code) (arg1)->code) == USE)
       arg1 = (((arg1)->fld[0]).rtx);

     if (((enum rtx_code) (arg0)->code) == CONST_INT)
       tem = arg0, arg0 = arg1, arg1 = tem;
     if (((enum rtx_code) (arg1)->code) == CONST_INT)
       tem = sge_plus_constant (arg0, arg1);
     else
       tem = sge_plus (mode, arg0, arg1);

     if (((enum rtx_code) (tem)->code) != CONST_INT)
       tem = gen_rtx_fmt_e (USE, (mode), (tem));
     return tem;

   case REG:
   case MULT:

     return gen_rtx_fmt_ee (PLUS, (mode), (arg0), (arg1));

   case PLUS:

     return
       simplify_giv_expr (loop,
     gen_rtx_fmt_ee (PLUS, (mode), ((((arg0)->fld[0]).rtx)), (gen_rtx_fmt_ee (PLUS, (mode), ((((arg0)->fld[1]).rtx)), (arg1)))),




     ext_val, benefit);

   default:
     fancy_abort ("../../../kg++fe/gnu/loop.c", 6659, __FUNCTION__);
   }



      if (((enum rtx_code) (arg0)->code) == REG)
 arg0 = gen_rtx_fmt_ee (MULT, (mode), (arg0), ((const_int_rtx[64 +1])));
      if (((enum rtx_code) (arg1)->code) == REG)
 arg1 = gen_rtx_fmt_ee (MULT, (mode), (arg1), ((const_int_rtx[64 +1])));




      if (((enum rtx_code) (arg1)->code) == MULT)
 tem = arg0, arg0 = arg1, arg1 = tem;

      if (((enum rtx_code) (arg1)->code) == PLUS)
 return
   simplify_giv_expr (loop,
        gen_rtx_fmt_ee (PLUS, (mode), (gen_rtx_fmt_ee (PLUS, (mode), (arg0), ((((arg1)->fld[0]).rtx)))), ((((arg1)->fld[1]).rtx))),



        ext_val, benefit);


      if (((enum rtx_code) (arg0)->code) != MULT || ((enum rtx_code) (arg1)->code) != MULT)
 return (rtx) 0;

      if (!rtx_equal_p (arg0, arg1))
 return (rtx) 0;

      return simplify_giv_expr (loop,
    gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[0]).rtx)), (gen_rtx_fmt_ee (PLUS, (mode), ((((arg0)->fld[1]).rtx)), ((((arg1)->fld[1]).rtx))))),




    ext_val, benefit);

    case MINUS:

      return simplify_giv_expr (loop,
    gen_rtx_fmt_ee (PLUS, (mode), ((((x)->fld[0]).rtx)), (gen_rtx_fmt_ee (MULT, (mode), ((((x)->fld[1]).rtx)), ((const_int_rtx[64 -1]))))),




    ext_val, benefit);

    case MULT:
      arg0 = simplify_giv_expr (loop, (((x)->fld[0]).rtx), ext_val, benefit);
      arg1 = simplify_giv_expr (loop, (((x)->fld[1]).rtx), ext_val, benefit);
      if (arg0 == 0 || arg1 == 0)
 return (rtx) 0;


      if ((((enum rtx_code) (arg0)->code) == USE || ((enum rtx_code) (arg0)->code) == CONST_INT)
   && ((enum rtx_code) (arg1)->code) != CONST_INT)
 tem = arg0, arg0 = arg1, arg1 = tem;


      if (((enum rtx_code) (arg1)->code) != USE && ((enum rtx_code) (arg1)->code) != CONST_INT)
 return (rtx) 0;


      if (arg1 == (const_int_rtx[64]))
 return (const_int_rtx[64]);

      else if (arg1 == (const_int_rtx[64 +1]))
 return arg0;

      switch (((enum rtx_code) (arg0)->code))
 {
 case REG:

   return gen_rtx_fmt_ee (MULT, (mode), (arg0), (arg1));

 case CONST_INT:

   return gen_rtx_CONST_INT (VOIDmode, (long long) ((((arg0)->fld[0]).rtwint) * (((arg1)->fld[0]).rtwint)));

 case USE:

   if (((enum rtx_code) (arg1)->code) != CONST_INT)
     return (rtx) 0;

   arg0 = (((arg0)->fld[0]).rtx);
   if (((enum rtx_code) (arg0)->code) == MULT)
     {

       return simplify_giv_expr (loop,
     gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[0]).rtx)), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[1]).rtx)), (arg1)))),





     ext_val, benefit);
     }

   else if (((enum rtx_code) (arg0)->code) == PLUS)
     {

       return simplify_giv_expr (loop,
     gen_rtx_fmt_ee (PLUS, (mode), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[0]).rtx)), (arg1))), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[1]).rtx)), (arg1)))),
# 6773 "../../../kg++fe/gnu/loop.c"
     ext_val, benefit);
     }
   return gen_rtx_fmt_e (USE, (mode), (gen_rtx_fmt_ee (MULT, (mode), (arg0), (arg1))));

 case MULT:

   return simplify_giv_expr (loop,
        gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[0]).rtx)), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[1]).rtx)), (arg1)))),




        ext_val, benefit);

 case PLUS:

   return simplify_giv_expr (loop,
        gen_rtx_fmt_ee (PLUS, (mode), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[0]).rtx)), (arg1))), (gen_rtx_fmt_ee (MULT, (mode), ((((arg0)->fld[1]).rtx)), (arg1)))),






        ext_val, benefit);

 default:
   fancy_abort ("../../../kg++fe/gnu/loop.c", 6800, __FUNCTION__);
 }

    case ASHIFT:

      if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) != CONST_INT)
 return 0;

      return
 simplify_giv_expr (loop,
      gen_rtx_fmt_ee (MULT, (mode), ((((x)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) ((long long) 1 << ((((((x)->fld[1]).rtx))->fld[0]).rtwint))))),



      ext_val, benefit);

    case NEG:

      return simplify_giv_expr (loop,
    gen_rtx_fmt_ee (MULT, (mode), ((((x)->fld[0]).rtx)), ((const_int_rtx[64 -1]))),
    ext_val, benefit);

    case NOT:

      return simplify_giv_expr (loop,
    gen_rtx_fmt_ee (MINUS, (mode), (gen_rtx_fmt_e (NEG, (mode), ((((x)->fld[0]).rtx)))), ((const_int_rtx[64 +1]))),


    ext_val, benefit);

    case USE:

      return x;

    case SIGN_EXTEND:
    case ZERO_EXTEND:
    case TRUNCATE:



      if (*ext_val == (rtx) 0)
 {
   arg0 = simplify_giv_expr (loop, (((x)->fld[0]).rtx), ext_val, benefit);
   if (arg0 && *ext_val == (rtx) 0 && ((enum rtx_code) (arg0)->code) == REG)
     {
       *ext_val = gen_rtx_fmt_e (((enum rtx_code) (x)->code), mode, arg0);
       return arg0;
     }
 }
      goto do_default;

    case REG:

      if ((((x)->fld[0]).rtuint) >= max_reg_before_loop)
 return 0;


      switch (ivs->regs[(((x)->fld[0]).rtuint)].type)
 {
 case BASIC_INDUCT:
   return x;
 case GENERAL_INDUCT:
   {
     struct induction *v = ivs->regs[(((x)->fld[0]).rtuint)].iv.info;
# 6875 "../../../kg++fe/gnu/loop.c"
     {
       rtx single_use = regs->array[(((x)->fld[0]).rtuint)].single_usage;
       if (single_use && single_use != (const_int_rtx[64]))
  *benefit += v->benefit;
     }

     if (v->cant_derive)
       return 0;

     tem = gen_rtx_fmt_ee (PLUS, (mode), (gen_rtx_fmt_ee (MULT, (mode), (v->src_reg), (v->mult_val))), (v->add_val));



     if (v->derive_adjustment)
       tem = gen_rtx_fmt_ee (MINUS, (mode), (tem), (v->derive_adjustment));
     arg0 = simplify_giv_expr (loop, tem, ext_val, benefit);
     if (*ext_val)
       {
  if (!v->ext_dependent)
    return arg0;
       }
     else
       {
  *ext_val = v->ext_dependent;
  return arg0;
       }
     return 0;
   }

 default:
 do_default:



   if (loop_invariant_p (loop, x) == 1)
     {
       struct movable *m;
       struct loop_movables *movables = (&((struct loop_info *) (loop)->aux)->movables);

       for (m = movables->head; m; m = m->next)
  if (rtx_equal_p (x, m->set_dest))
    {




      if (m->match)
        return simplify_giv_expr (loop, m->match->set_dest,
      ext_val, benefit);





      if (m->consec != 0)
        {
   int i = m->consec;
   tem = m->insn;
   do
     {
       tem = (((tem)->fld[2]).rtx);
     }
   while (--i > 0);

   tem = find_reg_note (tem, REG_EQUAL, (rtx) 0);
   if (tem)
     tem = (((tem)->fld[0]).rtx);
        }
      else
        {
   tem = (((rtx_class[(int) (((enum rtx_code) (m->insn)->code))]) == 'i') ? (((enum rtx_code) ((((m->insn)->fld[5]).rtx))->code) == SET ? (((m->insn)->fld[5]).rtx) : single_set_2 (m->insn, (((m->insn)->fld[5]).rtx))) : (rtx) 0);
   if (tem)
     tem = (((tem)->fld[1]).rtx);
        }

      if (tem)
        {



   if (((enum rtx_code) (tem)->code) == PLUS
       || ((enum rtx_code) (tem)->code) == MULT
       || ((enum rtx_code) (tem)->code) == ASHIFT
       || ((enum rtx_code) (tem)->code) == CONST_INT
       || ((enum rtx_code) (tem)->code) == SYMBOL_REF)
     {
       tem = simplify_giv_expr (loop, tem, ext_val,
           benefit);
       if (tem)
         return tem;
     }
   else if (((enum rtx_code) (tem)->code) == CONST
     && ((enum rtx_code) ((((tem)->fld[0]).rtx))->code) == PLUS
     && ((enum rtx_code) (((((((tem)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
     && ((enum rtx_code) (((((((tem)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
     {
       tem = simplify_giv_expr (loop, (((tem)->fld[0]).rtx),
           ext_val, benefit);
       if (tem)
         return tem;
     }
        }
      break;
    }
     }
   break;
 }


    default:


      if (((enum rtx_code) (x)->code) == USE)
 x = (((x)->fld[0]).rtx);

      if (loop_invariant_p (loop, x) == 1)
 {
   if (((enum rtx_code) (x)->code) == CONST_INT)
     return x;
   if (((enum rtx_code) (x)->code) == CONST
       && ((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
       && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[0]).rtx))->code) == SYMBOL_REF
       && ((enum rtx_code) (((((((x)->fld[0]).rtx))->fld[1]).rtx))->code) == CONST_INT)
     x = (((x)->fld[0]).rtx);
   return gen_rtx_fmt_e (USE, (mode), (x));
 }
      else
 return 0;
    }
}




static rtx
sge_plus_constant (x, c)
     rtx x, c;
{
  if (((enum rtx_code) (x)->code) == CONST_INT)
    return gen_rtx_CONST_INT (VOIDmode, (long long) ((((x)->fld[0]).rtwint) + (((c)->fld[0]).rtwint)));
  else if (((enum rtx_code) (x)->code) != PLUS)
    return gen_rtx_fmt_ee (PLUS, (((enum machine_mode) (x)->mode)), (x), (c));
  else if (((enum rtx_code) ((((x)->fld[1]).rtx))->code) == CONST_INT)
    {
      return gen_rtx_fmt_ee (PLUS, (((enum machine_mode) (x)->mode)), ((((x)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (((((((x)->fld[1]).rtx))->fld[0]).rtwint) + (((c)->fld[0]).rtwint)))));

    }
  else if (((enum rtx_code) ((((x)->fld[0]).rtx))->code) == PLUS
    || ((enum rtx_code) ((((x)->fld[1]).rtx))->code) != PLUS)
    {
      return gen_rtx_fmt_ee (PLUS, (((enum machine_mode) (x)->mode)), (sge_plus_constant ((((x)->fld[0]).rtx), c)), ((((x)->fld[1]).rtx)));

    }
  else
    {
      return gen_rtx_fmt_ee (PLUS, (((enum machine_mode) (x)->mode)), (sge_plus_constant ((((x)->fld[1]).rtx), c)), ((((x)->fld[0]).rtx)));

    }
}

static rtx
sge_plus (mode, x, y)
     enum machine_mode mode;
     rtx x, y;
{
  while (((enum rtx_code) (y)->code) == PLUS)
    {
      rtx a = (((y)->fld[0]).rtx);
      if (((enum rtx_code) (a)->code) == CONST_INT)
 x = sge_plus_constant (x, a);
      else
 x = gen_rtx_fmt_ee (PLUS, (mode), (x), (a));
      y = (((y)->fld[1]).rtx);
    }
  if (((enum rtx_code) (y)->code) == CONST_INT)
    x = sge_plus_constant (x, y);
  else
    x = gen_rtx_fmt_ee (PLUS, (mode), (x), (y));
  return x;
}
# 7075 "../../../kg++fe/gnu/loop.c"
static int
consec_sets_giv (loop, first_benefit, p, src_reg, dest_reg,
   add_val, mult_val, ext_val, last_consec_insn)
     const struct loop *loop;
     int first_benefit;
     rtx p;
     rtx src_reg;
     rtx dest_reg;
     rtx *add_val;
     rtx *mult_val;
     rtx *ext_val;
     rtx *last_consec_insn;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int count;
  enum rtx_code code;
  int benefit;
  rtx temp;
  rtx set;
# 7103 "../../../kg++fe/gnu/loop.c"
  struct induction *v;

  if (ivs->regs[(((dest_reg)->fld[0]).rtuint)].type != UNKNOWN_INDUCT)
    return 0;

  v = (struct induction *) __builtin_alloca(sizeof (struct induction));
  v->src_reg = src_reg;
  v->mult_val = *mult_val;
  v->add_val = *add_val;
  v->benefit = first_benefit;
  v->cant_derive = 0;
  v->derive_adjustment = 0;
  v->ext_dependent = (rtx) 0;

  ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = GENERAL_INDUCT;
  ivs->regs[(((dest_reg)->fld[0]).rtuint)].iv.info = v;

  count = regs->array[(((dest_reg)->fld[0]).rtuint)].n_times_set - 1;

  while (count > 0)
    {
      p = (((p)->fld[2]).rtx);
      code = ((enum rtx_code) (p)->code);


      if (code == INSN && (temp = find_reg_note (p, REG_LIBCALL, (rtx) 0)))
 p = (((temp)->fld[0]).rtx);

      if (code == INSN
   && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
   && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
   && (((set)->fld[0]).rtx) == dest_reg
   && (general_induction_var (loop, (((set)->fld[1]).rtx), &src_reg,
         add_val, mult_val, ext_val, 0,
         &benefit, VOIDmode)

       || ((temp = find_reg_note (p, REG_EQUAL, (rtx) 0))
    && general_induction_var (loop, (((temp)->fld[0]).rtx), &src_reg,
         add_val, mult_val, ext_val, 0,
         &benefit, VOIDmode)))
   && src_reg == v->src_reg)
 {
   if (find_reg_note (p, REG_RETVAL, (rtx) 0))
     benefit += libcall_benefit (p);

   count--;
   v->mult_val = *mult_val;
   v->add_val = *add_val;
   v->benefit += benefit;
 }
      else if (code != NOTE)
 {



   if (code == INSN
       && (set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0))
       && (((set)->fld[0]).rtx) != dest_reg
       && (((enum rtx_code) ((((set)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
     continue;

   ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = UNKNOWN_INDUCT;
   return 0;
 }
    }

  ivs->regs[(((dest_reg)->fld[0]).rtuint)].type = UNKNOWN_INDUCT;
  *last_consec_insn = p;
  return v->benefit;
}
# 7191 "../../../kg++fe/gnu/loop.c"
static rtx
express_from_1 (a, b, mult)
     rtx a, b, mult;
{


  if (mult == (const_int_rtx[64]))
    return b;






  if (mult != (const_int_rtx[64 +1]) && ((enum rtx_code) (a)->code) != CONST_INT)
    return (rtx) 0;







  while (((enum rtx_code) (a)->code) == PLUS && ((enum rtx_code) (b)->code) == PLUS)
    {
      rtx ra, rb, oa, ob, tmp;

      ra = (((a)->fld[0]).rtx), oa = (((a)->fld[1]).rtx);
      if (((enum rtx_code) (ra)->code) == PLUS)
 tmp = ra, ra = oa, oa = tmp;

      rb = (((b)->fld[0]).rtx), ob = (((b)->fld[1]).rtx);
      if (((enum rtx_code) (rb)->code) == PLUS)
 tmp = rb, rb = ob, ob = tmp;

      if (rtx_equal_p (ra, rb))

 a = oa, b = ob;
      else if (((enum rtx_code) (ob)->code) != PLUS && rtx_equal_p (ra, ob))

 a = oa, b = rb;
      else if (((enum rtx_code) (oa)->code) != PLUS && rtx_equal_p (oa, rb))

 a = ra, b = ob;
      else
 {


   ob = express_from_1 (a, ob, mult);
   if (ob == (rtx) 0)
     return (rtx) 0;
   return gen_rtx_fmt_ee (PLUS, (((enum machine_mode) (b)->mode)), (rb), (ob));
 }
    }




  if (((enum rtx_code) (a)->code) == PLUS)
    {
      rtx ra, oa;

      ra = (((a)->fld[0]).rtx), oa = (((a)->fld[1]).rtx);
      if (rtx_equal_p (oa, b))
 oa = ra;
      else if (!rtx_equal_p (ra, b))
 return (rtx) 0;

      if (((enum rtx_code) (oa)->code) != CONST_INT)
 return (rtx) 0;

      return gen_rtx_CONST_INT (VOIDmode, (long long) (-(((oa)->fld[0]).rtwint) * (((mult)->fld[0]).rtwint)));
    }
  else if (((enum rtx_code) (a)->code) == CONST_INT)
    {
      return plus_constant_wide ((b), (long long) (-(((a)->fld[0]).rtwint) * (((mult)->fld[0]).rtwint)));
    }
  else if ((((enum rtx_code) (a)->code) == LABEL_REF || ((enum rtx_code) (a)->code) == SYMBOL_REF || ((enum rtx_code) (a)->code) == CONST_INT || ((enum rtx_code) (a)->code) == CONST_DOUBLE || ((enum rtx_code) (a)->code) == CONST || ((enum rtx_code) (a)->code) == HIGH || ((enum rtx_code) (a)->code) == CONST_VECTOR || ((enum rtx_code) (a)->code) == CONSTANT_P_RTX))
    {
      enum machine_mode mode_a = ((enum machine_mode) (a)->mode);
      enum machine_mode mode_b = ((enum machine_mode) (b)->mode);
      enum machine_mode mode = mode_b == VOIDmode ? mode_a : mode_b;
      return simplify_gen_binary (MINUS, mode, b, a);
    }
  else if (((enum rtx_code) (b)->code) == PLUS)
    {
      if (rtx_equal_p (a, (((b)->fld[0]).rtx)))
 return (((b)->fld[1]).rtx);
      else if (rtx_equal_p (a, (((b)->fld[1]).rtx)))
 return (((b)->fld[0]).rtx);
      else
 return (rtx) 0;
    }
  else if (rtx_equal_p (a, b))
    return (const_int_rtx[64]);

  return (rtx) 0;
}

rtx
express_from (g1, g2)
     struct induction *g1, *g2;
{
  rtx mult, add;




  if (((enum rtx_code) (g1->mult_val)->code) == CONST_INT
      && ((enum rtx_code) (g2->mult_val)->code) == CONST_INT)
    {
      if (g1->mult_val == (const_int_rtx[64])
   || (((g2->mult_val)->fld[0]).rtwint) % (((g1->mult_val)->fld[0]).rtwint) != 0)
 return (rtx) 0;
      mult = gen_rtx_CONST_INT (VOIDmode, (long long) ((((g2->mult_val)->fld[0]).rtwint) / (((g1->mult_val)->fld[0]).rtwint)));
    }
  else if (rtx_equal_p (g1->mult_val, g2->mult_val))
    mult = (const_int_rtx[64 +1]);
  else
    {

      return (rtx) 0;
    }

  add = express_from_1 (g1->add_val, g2->add_val, mult);
  if (add == (rtx) 0)
    {


      if ((((mult)->fld[0]).rtwint) > 1)
 {
   rtx g1_add_val = g1->add_val;
   if (((enum rtx_code) (g1_add_val)->code) == MULT
       && ((enum rtx_code) ((((g1_add_val)->fld[1]).rtx))->code) == CONST_INT)
     {
       long long m;
       m = (((mult)->fld[0]).rtwint) * ((((((g1_add_val)->fld[1]).rtx))->fld[0]).rtwint);
       g1_add_val = gen_rtx_fmt_ee (MULT, (((enum machine_mode) (g1_add_val)->mode)), ((((g1_add_val)->fld[0]).rtx)), (gen_rtx_CONST_INT (VOIDmode, (long long) (m))));

     }
   else
     {
       g1_add_val = gen_rtx_fmt_ee (MULT, (((enum machine_mode) (g1_add_val)->mode)), (g1_add_val), (mult));

     }

   add = express_from_1 (g1_add_val, g2->add_val, (const_int_rtx[64 +1]));
 }
    }
  if (add == (rtx) 0)
    return (rtx) 0;


  if (mult == (const_int_rtx[64]))
    return add;
  else if (mult == (const_int_rtx[64 +1]))
    mult = g1->dest_reg;
  else
    mult = gen_rtx_fmt_ee (MULT, (g2->mode), (g1->dest_reg), (mult));

  if (add == (const_int_rtx[64]))
    return mult;
  else
    {
      if (((enum rtx_code) (add)->code) == PLUS
   && (((enum rtx_code) ((((add)->fld[1]).rtx))->code) == LABEL_REF || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == SYMBOL_REF || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == CONST_INT || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == CONST_DOUBLE || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == CONST || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == HIGH || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == CONST_VECTOR || ((enum rtx_code) ((((add)->fld[1]).rtx))->code) == CONSTANT_P_RTX))
 {
   rtx tem = (((add)->fld[1]).rtx);
   mult = gen_rtx_fmt_ee (PLUS, (g2->mode), (mult), ((((add)->fld[0]).rtx)));
   add = tem;
 }

      return gen_rtx_fmt_ee (PLUS, (g2->mode), (mult), (add));
    }
}






static rtx
combine_givs_p (g1, g2)
     struct induction *g1, *g2;
{
  rtx comb, ret;



  if ((mode_size[(int) (g1->mode)]) < (mode_size[(int) (g2->mode)]))
    return (rtx) 0;

  ret = comb = express_from (g1, g2);
  if (comb == (rtx) 0)
    return (rtx) 0;
  if (g1->mode != g2->mode)
    ret = gen_lowpart (g2->mode, comb);






  if (comb == g1->dest_reg
      && (g1->giv_type == DEST_REG || g2->giv_type == DEST_ADDR))
    {
      return ret;
    }




  if (ret != (rtx) 0
      && g2->giv_type == DEST_ADDR
      && memory_address_p (((enum machine_mode) (g2->mem)->mode), ret)
# 7416 "../../../kg++fe/gnu/loop.c"
      )
    {
      return ret;
    }

  return (rtx) 0;
}





static void
check_ext_dependent_givs (bl, loop_info)
     struct iv_class *bl;
     struct loop_info *loop_info;
{
  int ze_ok = 0, se_ok = 0, info_ok = 0;
  enum machine_mode biv_mode = ((enum machine_mode) (bl->biv->src_reg)->mode);
  long long start_val;
  unsigned long long u_end_val = 0;
  unsigned long long u_start_val = 0;
  rtx incr = (global_rtl[GR_PC]);
  struct induction *v;






  if (loop_info->n_iterations > 0
      && bl->initial_value
      && ((enum rtx_code) (bl->initial_value)->code) == CONST_INT
      && (incr = biv_total_increment (bl))
      && ((enum rtx_code) (incr)->code) == CONST_INT

      && (8 * 8) >= (mode_bitsize[(int) (biv_mode)]))
    {
      unsigned long long abs_incr, total_incr;
      long long s_end_val;
      int neg_incr;

      info_ok = 1;
      start_val = (((bl->initial_value)->fld[0]).rtwint);
      u_start_val = start_val;

      neg_incr = 0, abs_incr = (((incr)->fld[0]).rtwint);
      if ((((incr)->fld[0]).rtwint) < 0)
 neg_incr = 1, abs_incr = -abs_incr;
      total_incr = abs_incr * loop_info->n_iterations;


      if (total_incr / loop_info->n_iterations == abs_incr)
 {
   unsigned long long u_max;
   long long s_max;

   u_end_val = start_val + (neg_incr ? -total_incr : total_incr);
   s_end_val = u_end_val;
   u_max = mode_mask_array[(int) (biv_mode)];
   s_max = u_max >> 1;


   if (start_val >= 0

       && (neg_incr
    ? u_end_val < u_start_val
    : u_end_val > u_start_val)

       && (neg_incr
    ? 1
    : u_end_val <= u_max))
     {
       ze_ok = 1;
     }






   if (start_val >= -s_max - 1

       && (neg_incr
    ? s_end_val < start_val
    : s_end_val > start_val)

       && (neg_incr
    ? s_end_val >= -s_max - 1
    : s_end_val <= s_max))
     {
       se_ok = 1;
     }
 }
    }


  for (v = bl->giv; v; v = v->next_iv)
    if (v->ext_dependent)
      {
 enum rtx_code code = ((enum rtx_code) (v->ext_dependent)->code);
 int ok = 0;

 switch (code)
   {
   case SIGN_EXTEND:
     ok = se_ok;
     break;
   case ZERO_EXTEND:
     ok = ze_ok;
     break;

   case TRUNCATE:





     if (se_ok && ze_ok)
       {
  enum machine_mode outer_mode = ((enum machine_mode) (v->ext_dependent)->mode);
  unsigned long long max = mode_mask_array[(int) (outer_mode)] >> 1;




  if (u_start_val <= max && u_end_val <= max)
    ok = 1;
       }
     break;

   default:
     fancy_abort ("../../../kg++fe/gnu/loop.c", 7548, __FUNCTION__);
   }

 if (ok)
   {
     if (loop_dump_stream)
       {
  fprintf (loop_dump_stream,
    "Verified ext dependent giv at %d of reg %d\n",
    (((v->insn)->fld[0]).rtint), bl->regno);
       }
   }
 else
   {
     if (loop_dump_stream)
       {
  const char *why;

  if (info_ok)
    why = "biv iteration values overflowed";
  else
    {
      if (incr == (global_rtl[GR_PC]))
        incr = biv_total_increment (bl);
      if (incr == (const_int_rtx[64 +1]))
        why = "biv iteration info incomplete; incr by 1";
      else
        why = "biv iteration info incomplete";
    }

  fprintf (loop_dump_stream,
    "Failed ext dependent giv at %d, %s\n",
    (((v->insn)->fld[0]).rtint), why);
       }
     v->ignore = 1;
     bl->all_reduced = 0;
   }
      }
}



rtx
extend_value_for_giv (v, value)
     struct induction *v;
     rtx value;
{
  rtx ext_dep = v->ext_dependent;

  if (! ext_dep)
    return value;




  if ((((enum rtx_code) (value)->code) == LABEL_REF || ((enum rtx_code) (value)->code) == SYMBOL_REF || ((enum rtx_code) (value)->code) == CONST_INT || ((enum rtx_code) (value)->code) == CONST_DOUBLE || ((enum rtx_code) (value)->code) == CONST || ((enum rtx_code) (value)->code) == HIGH || ((enum rtx_code) (value)->code) == CONST_VECTOR || ((enum rtx_code) (value)->code) == CONSTANT_P_RTX) && ((enum machine_mode) (value)->mode) == VOIDmode)
    return value;



  return gen_rtx_fmt_e (((enum rtx_code) (ext_dep)->code), ((enum machine_mode) (ext_dep)->mode), value);
}

struct combine_givs_stats
{
  int giv_number;
  int total_benefit;
};

static int
cmp_combine_givs_stats (xp, yp)
     const void * xp;
     const void * yp;
{
  const struct combine_givs_stats * const x =
    (const struct combine_givs_stats *) xp;
  const struct combine_givs_stats * const y =
    (const struct combine_givs_stats *) yp;
  int d;
  d = y->total_benefit - x->total_benefit;

  if (!d)
    d = x->giv_number - y->giv_number;
  return d;
}






static void
combine_givs (regs, bl)
     struct loop_regs *regs;
     struct iv_class *bl;
{

  const int extra_benefit = 3;

  struct induction *g1, *g2, **giv_array;
  int i, j, k, giv_count;
  struct combine_givs_stats *stats;
  rtx *can_combine;


  giv_count = 0;
  for (g1 = bl->giv; g1; g1 = g1->next_iv)
    if (!g1->ignore)
      giv_count++;

  giv_array
    = (struct induction **) __builtin_alloca(giv_count * sizeof (struct induction *));
  i = 0;
  for (g1 = bl->giv; g1; g1 = g1->next_iv)
    if (!g1->ignore)
      giv_array[i++] = g1;

  stats = (struct combine_givs_stats *) xcalloc (giv_count, sizeof (*stats));
  can_combine = (rtx *) xcalloc (giv_count, giv_count * sizeof (rtx));

  for (i = 0; i < giv_count; i++)
    {
      int this_benefit;
      rtx single_use;

      g1 = giv_array[i];
      stats[i].giv_number = i;







      if (g1->giv_type == DEST_REG
   && (single_use = regs->array[(((g1->dest_reg)->fld[0]).rtuint)].single_usage)
   && single_use != (const_int_rtx[64]))
 continue;

      this_benefit = g1->benefit;

      if (g1->no_const_addval)
 this_benefit += 1;

      for (j = 0; j < giv_count; j++)
 {
   rtx this_combine;

   g2 = giv_array[j];
   if (g1 != g2
       && (this_combine = combine_givs_p (g1, g2)) != (rtx) 0)
     {
       can_combine[i * giv_count + j] = this_combine;
       this_benefit += g2->benefit + extra_benefit;
     }
 }
      stats[i].total_benefit = this_benefit;
    }


restart:
  qsort (stats, giv_count, sizeof (*stats), cmp_combine_givs_stats);

  if (loop_dump_stream)
    {
      fprintf (loop_dump_stream, "Sorted combine statistics:\n");
      for (k = 0; k < giv_count; k++)
 {
   g1 = giv_array[stats[k].giv_number];
   if (!g1->combined_with && !g1->same)
     fprintf (loop_dump_stream, " {%d, %d}",
       (((giv_array[stats[k].giv_number]->insn)->fld[0]).rtint),
       stats[k].total_benefit);
 }
      putc_unlocked ('\n', loop_dump_stream);
    }

  for (k = 0; k < giv_count; k++)
    {
      int g1_add_benefit = 0;

      i = stats[k].giv_number;
      g1 = giv_array[i];


      if (g1->combined_with || g1->same)
 continue;

      for (j = 0; j < giv_count; j++)
 {
   g2 = giv_array[j];
   if (g1 != g2 && can_combine[i * giv_count + j]

       && ! g2->same && ! g2->combined_with)
     {
       int l;

       g2->new_reg = can_combine[i * giv_count + j];
       g2->same = g1;



       if (g2->giv_type == DEST_ADDR)
  g2->benefit = (g2->benefit + reg_address_cost
          - address_cost (g2->new_reg,
          ((enum machine_mode) (g2->mem)->mode)));
       g1->combined_with++;
       g1->lifetime += g2->lifetime;

       g1_add_benefit += g2->benefit;




       if (! g2->replaceable && (((g2->dest_reg))->volatil))
  g1_add_benefit -= copy_cost;



       for (l = 0; l < giv_count; ++l)
  {
    int m = stats[l].giv_number;
    if (can_combine[m * giv_count + j])
      stats[l].total_benefit -= g2->benefit + extra_benefit;
  }

       if (loop_dump_stream)
  fprintf (loop_dump_stream,
    "giv at %d combined with giv at %d; new benefit %d + %d, lifetime %d\n",
    (((g2->insn)->fld[0]).rtint), (((g1->insn)->fld[0]).rtint),
    g1->benefit, g1_add_benefit, g1->lifetime);
     }
 }



      if (g1->combined_with)
 {
   for (j = 0; j < giv_count; ++j)
     {
       int m = stats[j].giv_number;
       if (can_combine[m * giv_count + i])
  stats[j].total_benefit -= g1->benefit + extra_benefit;
     }

   g1->benefit += g1_add_benefit;







   goto restart;
 }
    }


  free (stats);
  free (can_combine);
}



static rtx
gen_add_mult (b, m, a, reg)
     rtx b;
     rtx m;
     rtx a;
     rtx reg;
{
  rtx seq;
  rtx result;

  start_sequence ();

  result = expand_mult_add (b, reg, m, a, ((enum machine_mode) (reg)->mode), 1);
  if (reg != result)
    emit_move_insn (reg, result);
  seq = get_insns ();
  end_sequence ();

  return seq;
}




static void
loop_regs_update (loop, seq)
     const struct loop *loop __attribute__ ((__unused__));
     rtx seq;
{
  rtx insn;



  if (seq == (rtx) 0)
    return;

  if (((rtx_class[(int) (((enum rtx_code) (seq)->code))]) == 'i'))
    {
      insn = seq;
      while (insn != (rtx) 0)
 {
   rtx set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);

   if (set && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG)
     record_base_value (((((((set)->fld[0]).rtx))->fld[0]).rtuint), (((set)->fld[1]).rtx), 0);

   insn = (((insn)->fld[2]).rtx);
 }
    }
  else if (((enum rtx_code) (seq)->code) == SET
    && ((enum rtx_code) ((((seq)->fld[0]).rtx))->code) == REG)
    record_base_value (((((((seq)->fld[0]).rtx))->fld[0]).rtuint), (((seq)->fld[1]).rtx), 0);
}




void
loop_iv_add_mult_emit_before (loop, b, m, a, reg, before_bb, before_insn)
     const struct loop *loop;
     rtx b;
     rtx m;
     rtx a;
     rtx reg;
     basic_block before_bb;
     rtx before_insn;
{
  rtx seq;

  if (! before_insn)
    {
      loop_iv_add_mult_hoist (loop, b, m, a, reg);
      return;
    }


  seq = gen_add_mult (copy_rtx (b), copy_rtx (m), copy_rtx (a), reg);


  update_reg_last_use (a, before_insn);
  update_reg_last_use (b, before_insn);
  update_reg_last_use (m, before_insn);




  loop_regs_update (loop, seq);

  loop_insn_emit_before (loop, before_bb, before_insn, seq);
}




void
loop_iv_add_mult_sink (loop, b, m, a, reg)
     const struct loop *loop;
     rtx b;
     rtx m;
     rtx a;
     rtx reg;
{
  rtx seq;


  seq = gen_add_mult (copy_rtx (b), copy_rtx (m), copy_rtx (a), reg);



  update_reg_last_use (a, loop->sink);
  update_reg_last_use (b, loop->sink);
  update_reg_last_use (m, loop->sink);




  loop_regs_update (loop, seq);

  loop_insn_sink (loop, seq);
}




void
loop_iv_add_mult_hoist (loop, b, m, a, reg)
     const struct loop *loop;
     rtx b;
     rtx m;
     rtx a;
     rtx reg;
{
  rtx seq;


  seq = gen_add_mult (copy_rtx (b), copy_rtx (m), copy_rtx (a), reg);




  loop_regs_update (loop, seq);

  loop_insn_hoist (loop, seq);
}






static int
iv_add_mult_cost (b, m, a, reg)
     rtx b;
     rtx m;
     rtx a;
     rtx reg;
{
  int cost = 0;
  rtx last, result;

  start_sequence ();
  result = expand_mult_add (b, reg, m, a, ((enum machine_mode) (reg)->mode), 1);
  if (reg != result)
    emit_move_insn (reg, result);
  last = get_last_insn ();
  while (last)
    {
      rtx t = (((rtx_class[(int) (((enum rtx_code) (last)->code))]) == 'i') ? (((enum rtx_code) ((((last)->fld[5]).rtx))->code) == SET ? (((last)->fld[5]).rtx) : single_set_2 (last, (((last)->fld[5]).rtx))) : (rtx) 0);
      if (t)
 cost += rtx_cost ((((t)->fld[1]).rtx), SET);
      last = (((last)->fld[1]).rtx);
    }
  end_sequence ();
  return cost;
}
# 7996 "../../../kg++fe/gnu/loop.c"
static int
product_cheap_p (a, b)
     rtx a;
     rtx b;
{
  rtx tmp;
  int win, n_insns;


  if (((enum rtx_code) (a)->code) == CONST_INT)
    tmp = a, a = b, b = tmp;


  if (((enum rtx_code) (a)->code) == CONST_INT)
    return 1;


  if (((enum rtx_code) (b)->code) != CONST_INT)
    return 0;





  start_sequence ();
  expand_mult (((enum machine_mode) (a)->mode), a, b, (rtx) 0, 1);
  tmp = get_insns ();
  end_sequence ();

  win = 1;
  if (((rtx_class[(int) (((enum rtx_code) (tmp)->code))]) == 'i'))
    {
      n_insns = 0;
      while (tmp != (rtx) 0)
 {
   rtx next = (((tmp)->fld[2]).rtx);

   if (++n_insns > 3
       || ((enum rtx_code) (tmp)->code) != INSN
       || (((enum rtx_code) ((((tmp)->fld[5]).rtx))->code) == SET
    && ((enum rtx_code) (((((((tmp)->fld[5]).rtx))->fld[1]).rtx))->code) == MULT)
       || (((enum rtx_code) ((((tmp)->fld[5]).rtx))->code) == PARALLEL
    && ((enum rtx_code) (((((((((tmp)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->code) == SET
    && ((enum rtx_code) ((((((((((((tmp)->fld[5]).rtx))->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->code) == MULT))
     {
       win = 0;
       break;
     }

   tmp = next;
 }
    }
  else if (((enum rtx_code) (tmp)->code) == SET
    && ((enum rtx_code) ((((tmp)->fld[1]).rtx))->code) == MULT)
    win = 0;
  else if (((enum rtx_code) (tmp)->code) == PARALLEL
    && ((enum rtx_code) ((((((tmp)->fld[0]).rtvec))->elem[0]))->code) == SET
    && ((enum rtx_code) (((((((((tmp)->fld[0]).rtvec))->elem[0]))->fld[1]).rtx))->code) == MULT)
    win = 0;

  return win;
}
# 8074 "../../../kg++fe/gnu/loop.c"
static int
check_dbra_loop (loop, insn_count)
     struct loop *loop;
     int insn_count;
{
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  struct iv_class *bl;
  rtx reg;
  rtx jump_label;
  rtx final_value;
  rtx start_value;
  rtx new_add_val;
  rtx comparison;
  rtx before_comparison;
  rtx p;
  rtx jump;
  rtx first_compare;
  int compare_and_branch;
  rtx loop_start = loop->start;
  rtx loop_end = loop->end;




  jump = (((loop_end)->fld[1]).rtx);
  comparison = get_condition_for_loop (loop, jump);
  if (comparison == 0)
    return 0;
  if (!onlyjump_p (jump))
    return 0;



  get_condition (jump, &first_compare);
  if (first_compare == jump)
    compare_and_branch = 1;
  else if (first_compare == prev_nonnote_insn (jump))
    compare_and_branch = 2;
  else
    return 0;

  {







    rtx jump1;
    if ((jump1 = prev_nonnote_insn (first_compare)) != loop->cont)
      if (((enum rtx_code) (jump1)->code) == JUMP_INSN)
 return 0;
  }






  for (bl = ivs->list; bl; bl = bl->next)
    {
      if (bl->biv_count == 1
   && ! bl->biv->maybe_multiple
   && bl->biv->dest_reg == (((comparison)->fld[0]).rtx)
   && ! reg_used_between_p ((cfun->emit->x_regno_reg_rtx)[bl->regno], bl->biv->insn,
       first_compare))
 break;
    }

  if (! bl)
    return 0;






  if (((((enum rtx_code) (comparison)->code) == GT
 && ((enum rtx_code) ((((comparison)->fld[1]).rtx))->code) == CONST_INT
 && ((((((comparison)->fld[1]).rtx))->fld[0]).rtwint) == -1)
       || (((enum rtx_code) (comparison)->code) == NE && (((comparison)->fld[1]).rtx) == (const_int_rtx[64])))
      && ((enum rtx_code) (bl->biv->add_val)->code) == CONST_INT
      && (((bl->biv->add_val)->fld[0]).rtwint) < 0)
    {




      if (((enum rtx_code) (bl->initial_value)->code) == CONST_INT
   && (((bl->initial_value)->fld[0]).rtwint) > 0
   && ((((bl->initial_value)->fld[0]).rtwint)
       % (-(((bl->biv->add_val)->fld[0]).rtwint))) == 0)
 {

   if (! find_reg_note (jump, REG_NONNEG, (rtx) 0))
     (((jump)->fld[8]).rtx)
       = gen_rtx_fmt_ee (EXPR_LIST, (REG_NONNEG), (bl->biv->dest_reg), ((((jump)->fld[8]).rtx)));

   bl->nonneg = 1;

   return 1;
 }



      for (p = loop_start; p; p = (((p)->fld[1]).rtx))
 {
   if (((enum rtx_code) (p)->code) == CODE_LABEL)
     break;
   if (((enum rtx_code) (p)->code) != JUMP_INSN)
     continue;

   before_comparison = get_condition_for_loop (loop, p);
   if (before_comparison
       && (((before_comparison)->fld[0]).rtx) == bl->biv->dest_reg
       && ((enum rtx_code) (before_comparison)->code) == LT
       && (((before_comparison)->fld[1]).rtx) == (const_int_rtx[64])
       && ! reg_set_between_p (bl->biv->dest_reg, p, loop_start)
       && (((bl->biv->add_val)->fld[0]).rtwint) == -1)
     {
       if (! find_reg_note (jump, REG_NONNEG, (rtx) 0))
  (((jump)->fld[8]).rtx)
    = gen_rtx_fmt_ee (EXPR_LIST, (REG_NONNEG), (bl->biv->dest_reg), ((((jump)->fld[8]).rtx)));

       bl->nonneg = 1;

       return 1;
     }
 }
    }
  else if (((enum rtx_code) (bl->biv->add_val)->code) == CONST_INT
    && (((bl->biv->add_val)->fld[0]).rtwint) > 0)
    {
# 8221 "../../../kg++fe/gnu/loop.c"
      int num_nonfixed_reads = 0;

      int no_use_except_counting = 0;


      int reversible_mem_store = 1;

      if (bl->giv_count == 0
   && !loop->exit_count
   && !loop_info->has_multiple_exit_targets)
 {
   rtx bivreg = (cfun->emit->x_regno_reg_rtx)[bl->regno];
   struct iv_class *blt;




   no_use_except_counting = 1;
   for (p = loop_start; p != loop_end; p = (((p)->fld[2]).rtx))
     if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i'))
       {
  rtx set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0);

  if (set && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
      && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) == bl->regno)

    ;
  else if ((p == prev_nonnote_insn (prev_nonnote_insn (loop_end))
     || p == prev_nonnote_insn (loop_end))
    && reg_mentioned_p (bivreg, (((p)->fld[5]).rtx)))
    {




      note_stores ((((p)->fld[5]).rtx), note_set_pseudo_multiple_uses,
     regs);
      if (regs->multiple_uses)
        {
   no_use_except_counting = 0;
   break;
        }
    }
  else if (reg_mentioned_p (bivreg, (((p)->fld[5]).rtx)))
    {
      no_use_except_counting = 0;
      break;
    }
       }



   for (blt = ivs->list; blt; blt = blt->next)
     if (blt->init_set
  && reg_mentioned_p (bivreg, (((blt->init_set)->fld[1]).rtx)))
       {
  no_use_except_counting = 0;
  break;
       }
 }

      if (no_use_except_counting)

 ;
      else if (loop_info->num_mem_sets <= 1)
 {
   for (p = loop_start; p != loop_end; p = (((p)->fld[2]).rtx))
     if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i'))
       num_nonfixed_reads += count_nonfixed_reads (loop, (((p)->fld[5]).rtx));







   if (loop_info->num_mem_sets == 1)
     {
       struct induction *v;





       reversible_mem_store = 0;




       for (v = bl->giv; reversible_mem_store && v; v = v->next_iv)
  {
    if (v->giv_type == DEST_REG
        && reg_mentioned_p (v->dest_reg,
       (((loop_info->first_loop_store_insn)->fld[5]).rtx))
        && loop_insn_first_p (loop_info->first_loop_store_insn,
         v->insn))
      reversible_mem_store = 0;
  }
     }
 }
      else
 return 0;
# 8332 "../../../kg++fe/gnu/loop.c"
      if ((num_nonfixed_reads <= 1
    && ! loop_info->has_nonconst_call
    && ! loop_info->has_prefetch
    && ! loop_info->has_volatile
    && reversible_mem_store
    && (bl->giv_count + bl->biv_count + loop_info->num_mem_sets
        + num_unmoved_movables (loop) + compare_and_branch == insn_count)
    && (bl == ivs->list && bl->next == 0))
   || (no_use_except_counting && ! loop_info->has_prefetch))
 {
   rtx tem;


   if (loop_dump_stream)
     fprintf (loop_dump_stream, "Can reverse loop\n");
# 8357 "../../../kg++fe/gnu/loop.c"
   if (comparison

       && (((enum rtx_code) (comparison)->code) == LT
    || (((enum rtx_code) (comparison)->code) == LE
        && no_use_except_counting)))
     {
       long long add_val, add_adjust, comparison_val = 0;
       rtx initial_value, comparison_value;
       int nonneg = 0;
       enum rtx_code cmp_code;
       int comparison_const_width;
       unsigned long long comparison_sign_mask;

       add_val = (((bl->biv->add_val)->fld[0]).rtwint);
       comparison_value = (((comparison)->fld[1]).rtx);
       if (((enum machine_mode) (comparison_value)->mode) == VOIDmode)
  comparison_const_width
    = (mode_bitsize[(int) (((enum machine_mode) ((((comparison)->fld[0]).rtx))->mode))]);
       else
  comparison_const_width
    = (mode_bitsize[(int) (((enum machine_mode) (comparison_value)->mode))]);
       if (comparison_const_width > (8 * 8))
  comparison_const_width = (8 * 8);
       comparison_sign_mask
  = (unsigned long long) 1 << (comparison_const_width - 1);







       if (! loop_invariant_p (loop, comparison_value))
  return 0;

       if (((enum rtx_code) (comparison_value)->code) == CONST_INT)
  comparison_val = (((comparison_value)->fld[0]).rtwint);
       initial_value = bl->initial_value;




       if (no_use_except_counting
    && ((enum rtx_code) (comparison_value)->code) == CONST_INT
    && ((enum rtx_code) (initial_value)->code) == CONST_INT)
  {
    comparison_val = comparison_val - (((bl->initial_value)->fld[0]).rtwint);





    comparison_val = comparison_val + add_val - 1;
    comparison_val
      -= (unsigned long long) comparison_val % add_val;




    initial_value = (const_int_rtx[64]);
  }


       if (initial_value == (const_int_rtx[64])
# 8432 "../../../kg++fe/gnu/loop.c"
    && ((enum rtx_code) (comparison_value)->code) == CONST_INT

    && ! (((comparison_val - add_val) ^ (((comparison_value)->fld[0]).rtwint))
   & comparison_sign_mask))
  {


    add_adjust = add_val;
    nonneg = 1;
    cmp_code = GE;
  }
       else if (add_val == 1 && loop->vtop
         && (bl->biv_count == 0
      || no_use_except_counting))
  {
    add_adjust = 0;
    cmp_code = NE;
  }
       else
  return 0;

       if (((enum rtx_code) (comparison)->code) == LE)
  add_adjust -= add_val;




       if (initial_value == (const_int_rtx[64])
    && ((enum rtx_code) (comparison_value)->code) == CONST_INT)
  {
    if (((unsigned long long) comparison_val % add_val) != 0)
      return 0;
  }
       else
  {
    if (! no_use_except_counting || add_val != 1)
      return 0;
  }

       final_value = comparison_value;



       if (((enum rtx_code) (comparison_value)->code) == CONST_INT
    && ((enum rtx_code) (initial_value)->code) == CONST_INT)
  {
    comparison_value = gen_rtx_CONST_INT (VOIDmode, (long long) (comparison_val));
    final_value
      = gen_rtx_CONST_INT (VOIDmode, (long long) (comparison_val + (((bl->initial_value)->fld[0]).rtwint)));
  }
       bl->initial_value = initial_value;


       reg = bl->biv->dest_reg;
       jump_label = condjump_label ((((loop_end)->fld[1]).rtx));
       new_add_val = gen_rtx_CONST_INT (VOIDmode, (long long) (-(((bl->biv->add_val)->fld[0]).rtwint)));






       if (initial_value == (const_int_rtx[64])
    && ((enum rtx_code) (comparison_value)->code) == CONST_INT)
  {
    start_value = gen_rtx_CONST_INT (VOIDmode, (long long) (comparison_val - add_adjust));
    loop_insn_hoist (loop, gen_move_insn (reg, start_value));
  }
       else if (((enum rtx_code) (initial_value)->code) == CONST_INT)
  {
    enum machine_mode mode = ((enum machine_mode) (reg)->mode);
    rtx offset = gen_rtx_CONST_INT (VOIDmode, (long long) (-(((initial_value)->fld[0]).rtwint) - add_adjust));
    rtx add_insn = gen_add3_insn (reg, comparison_value, offset);

    if (add_insn == 0)
      return 0;

    start_value
      = gen_rtx_fmt_ee (PLUS, (mode), (comparison_value), (offset));
    loop_insn_hoist (loop, add_insn);
    if (((enum rtx_code) (comparison)->code) == LE)
      final_value = gen_rtx_fmt_ee (PLUS, (mode), (comparison_value), (gen_rtx_CONST_INT (VOIDmode, (long long) (add_val))));

  }
       else if (! add_adjust)
  {
    enum machine_mode mode = ((enum machine_mode) (reg)->mode);
    rtx sub_insn = gen_sub3_insn (reg, comparison_value,
      initial_value);

    if (sub_insn == 0)
      return 0;
    start_value
      = gen_rtx_fmt_ee (MINUS, (mode), (comparison_value), (initial_value));
    loop_insn_hoist (loop, sub_insn);
  }
       else


  return 0;



       start_sequence ();
       expand_inc (reg, new_add_val);
       tem = get_insns ();
       end_sequence ();

       p = loop_insn_emit_before (loop, 0, bl->biv->insn, tem);
       delete_insn (bl->biv->insn);


       bl->biv->insn = p;
       bl->initial_value = start_value;
       bl->biv->add_val = new_add_val;


       loop_info->initial_value = reg;
       loop_info->initial_equiv_value = reg;
       loop_info->final_value = (const_int_rtx[64]);
       loop_info->final_equiv_value = (const_int_rtx[64]);
       loop_info->comparison_value = (const_int_rtx[64]);
       loop_info->comparison_code = cmp_code;
       loop_info->increment = new_add_val;



       ((((((jump_label)->fld[0]).rtx))->fld[4]).rtint)++;



       if (((((reg_n_info)->data.reg[bl->regno])->last_uid) != (((first_compare)->fld[0]).rtint))
    || ! bl->init_insn
    || (((reg_n_info)->data.reg[bl->regno])->first_uid) != (((bl->init_insn)->fld[0]).rtint))
  loop_insn_sink (loop, gen_load_of_final_value (reg, final_value));


       delete_related_insns ((((loop_end)->fld[1]).rtx));
       if (compare_and_branch == 2)
  delete_related_insns (first_compare);


       start_sequence ();
       emit_cmp_and_jump_insns (reg, (const_int_rtx[64]), cmp_code, (rtx) 0,
           ((enum machine_mode) (reg)->mode), 0,
           (((jump_label)->fld[0]).rtx));
       tem = get_insns ();
       end_sequence ();
       emit_jump_insn_before (tem, loop_end);

       for (tem = (((loop_end)->fld[1]).rtx);
     tem && ((enum rtx_code) (tem)->code) != JUMP_INSN;
     tem = (((tem)->fld[1]).rtx))
  ;

       if (tem)
  (((tem)->fld[9]).rtx) = (((jump_label)->fld[0]).rtx);

       if (nonneg)
  {
    if (tem)
      {



        (((tem)->fld[8]).rtx) = gen_rtx_fmt_ee (EXPR_LIST, (REG_NONNEG), (reg), ((((tem)->fld[8]).rtx)));

      }
    bl->nonneg = 1;
  }
# 8614 "../../../kg++fe/gnu/loop.c"
       for (p = loop_start; p != loop_end; p = (((p)->fld[2]).rtx))
  if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i'))
    {
      rtx *pnote;
      rtx set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0);


      if (! set
   || ((enum rtx_code) ((((set)->fld[0]).rtx))->code) != REG
   || (size_t) ((((((set)->fld[0]).rtx))->fld[0]).rtuint) >= ivs->n_regs
   || ivs->regs[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].type != GENERAL_INDUCT
   || ivs->regs[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].iv.info->src_reg != bl->biv->src_reg)
        for (pnote = &(((p)->fld[8]).rtx); *pnote;)
   {
     if (((enum reg_note) ((enum machine_mode) (*pnote)->mode)) == REG_EQUAL
         && reg_mentioned_p ((cfun->emit->x_regno_reg_rtx)[bl->regno],
        (((*pnote)->fld[0]).rtx)))
       *pnote = (((*pnote)->fld[1]).rtx);
     else
       pnote = &(((*pnote)->fld[1]).rtx);
   }
    }





       bl->reversed = 1;

       if (loop_dump_stream)
  {
    fprintf (loop_dump_stream, "Reversed loop");
    if (bl->nonneg)
      fprintf (loop_dump_stream, " and added reg_nonneg\n");
    else
      fprintf (loop_dump_stream, "\n");
  }

       return 1;
     }
 }
    }

  return 0;
}
# 8669 "../../../kg++fe/gnu/loop.c"
static int
maybe_eliminate_biv (loop, bl, eliminate_p, threshold, insn_count)
     const struct loop *loop;
     struct iv_class *bl;
     int eliminate_p;
     int threshold, insn_count;
{
  struct loop_ivs *ivs = (&((struct loop_info *) (loop)->aux)->ivs);
  rtx reg = bl->biv->dest_reg;
  rtx p;




  for (p = loop->start; p != loop->end; p = (((p)->fld[2]).rtx))
    {
      enum rtx_code code = ((enum rtx_code) (p)->code);
      basic_block where_bb = 0;
      rtx where_insn = threshold >= insn_count ? 0 : p;
      rtx note;


      if ((rtx_class[(int) (code)]) == 'i')
 {
   note = find_reg_note (p, REG_LIBCALL, (rtx) 0);

   if (note)
     {
       rtx last = (((note)->fld[0]).rtx);
       rtx set = (((rtx_class[(int) (((enum rtx_code) (last)->code))]) == 'i') ? (((enum rtx_code) ((((last)->fld[5]).rtx))->code) == SET ? (((last)->fld[5]).rtx) : single_set_2 (last, (((last)->fld[5]).rtx))) : (rtx) 0);

       if (set && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG)
  {
    unsigned int regno = ((((((set)->fld[0]).rtx))->fld[0]).rtuint);

    if (regno < ivs->n_regs
        && ivs->regs[regno].type == GENERAL_INDUCT
        && ivs->regs[regno].iv.info->src_reg == bl->biv->src_reg)
      p = last;
  }
     }
 }


      if ((code == INSN || code == JUMP_INSN || code == CALL_INSN)
   && reg_mentioned_p (reg, (((p)->fld[5]).rtx))
   && ! maybe_eliminate_biv_1 (loop, (((p)->fld[5]).rtx), p, bl,
          eliminate_p, where_bb, where_insn))
 {
   if (loop_dump_stream)
     fprintf (loop_dump_stream,
       "Cannot eliminate biv %d: biv used in insn %d.\n",
       bl->regno, (((p)->fld[0]).rtint));
   break;
 }


      if (eliminate_p
   && (note = find_reg_note (p, REG_EQUAL, (rtx) 0)) != (rtx) 0
   && reg_mentioned_p (reg, (((note)->fld[0]).rtx)))
 remove_note (p, note);
    }

  if (p == loop->end)
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream, "biv %d %s eliminated.\n",
   bl->regno, eliminate_p ? "was" : "can be");
      return 1;
    }

  return 0;
}




int
loop_insn_first_p (insn, reference)
     rtx insn, reference;
{
  rtx p, q;

  for (p = insn, q = reference;;)
    {


      if (q == insn || ! p)
 return 0;
      if (p == reference || ! q)
 return 1;




      if ((((p)->fld[0]).rtint) < max_uid_for_loop
   && (((q)->fld[0]).rtint) < max_uid_for_loop
   && ((enum rtx_code) (p)->code) != NOTE)
 return ((((p)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((p)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 8767, __FUNCTION__), -1)) <= ((((q)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((q)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 8767, __FUNCTION__), -1));

      if ((((p)->fld[0]).rtint) >= max_uid_for_loop
   || ((enum rtx_code) (p)->code) == NOTE)
 p = (((p)->fld[2]).rtx);
      if ((((q)->fld[0]).rtint) >= max_uid_for_loop)
 q = (((q)->fld[2]).rtx);
    }
}




static int
biv_elimination_giv_has_0_offset (biv, giv, insn)
     struct induction *biv, *giv;
     rtx insn;
{




  if (giv->auto_inc_opt
      && ((loop_insn_first_p (giv->insn, insn)
    && loop_insn_first_p (insn, biv->insn))
   || (loop_insn_first_p (biv->insn, insn)
       && loop_insn_first_p (insn, giv->insn))))
    return 0;

  return 1;
}
# 8810 "../../../kg++fe/gnu/loop.c"
static int
maybe_eliminate_biv_1 (loop, x, insn, bl, eliminate_p, where_bb, where_insn)
     const struct loop *loop;
     rtx x, insn;
     struct iv_class *bl;
     int eliminate_p;
     basic_block where_bb;
     rtx where_insn;
{
  enum rtx_code code = ((enum rtx_code) (x)->code);
  rtx reg = bl->biv->dest_reg;
  enum machine_mode mode = ((enum machine_mode) (reg)->mode);
  struct induction *v;
  rtx arg, tem;



  int arg_operand;
  const char *fmt;
  int i, j;

  switch (code)
    {
    case REG:


      if (x == reg)
 return 0;
      return 1;

    case SET:

      if ((((x)->fld[0]).rtx) == reg)
 return 1;



      for (v = bl->giv; v; v = v->next_iv)
 if (v->giv_type == DEST_REG && (((x)->fld[0]).rtx) == v->dest_reg)
   return 1;
# 8939 "../../../kg++fe/gnu/loop.c"
      break;

    case COMPARE:
    case EQ: case NE:
    case GT: case GE: case GTU: case GEU:
    case LT: case LE: case LTU: case LEU:

      if ((((x)->fld[0]).rtx) == reg)
 arg = (((x)->fld[1]).rtx), arg_operand = 1;
      else if ((((x)->fld[1]).rtx) == reg)
 arg = (((x)->fld[0]).rtx), arg_operand = 0;
      else
 break;

      if ((((enum rtx_code) (arg)->code) == LABEL_REF || ((enum rtx_code) (arg)->code) == SYMBOL_REF || ((enum rtx_code) (arg)->code) == CONST_INT || ((enum rtx_code) (arg)->code) == CONST_DOUBLE || ((enum rtx_code) (arg)->code) == CONST || ((enum rtx_code) (arg)->code) == HIGH || ((enum rtx_code) (arg)->code) == CONST_VECTOR || ((enum rtx_code) (arg)->code) == CONSTANT_P_RTX))
 {




   for (v = bl->giv; v; v = v->next_iv)
     if (((enum rtx_code) (v->mult_val)->code) == CONST_INT
  && (((v->mult_val)->fld[0]).rtwint) > 0
  && (((enum rtx_code) (v->add_val)->code) == SYMBOL_REF
      || ((enum rtx_code) (v->add_val)->code) == LABEL_REF
      || ((enum rtx_code) (v->add_val)->code) == CONST
      || (((enum rtx_code) (v->add_val)->code) == REG
   && (((v->add_val))->frame_related)))
  && ! v->ignore && ! v->maybe_dead && v->always_computable
  && v->mode == mode)
       {
  if (! biv_elimination_giv_has_0_offset (bl->biv, v, insn))
    continue;



  if (((enum rtx_code) (arg)->code) == CONST_INT)
    {
      rtx add_val;

      if (((enum rtx_code) (v->add_val)->code) == CONST_INT)
        add_val = v->add_val;
      else
        add_val = (const_int_rtx[64]);

      if (const_mult_add_overflow_p (arg, v->mult_val,
         add_val, mode, 1))
        continue;
    }

  if (! eliminate_p)
    return 1;


  validate_change (insn, &(((x)->fld[1 - arg_operand]).rtx), v->new_reg, 1);




  if (((enum rtx_code) (arg)->code) == CONST_INT
      && ((enum rtx_code) (v->add_val)->code) == CONST_INT)
    {
      tem = expand_mult_add (arg, (rtx) 0, v->mult_val,
        v->add_val, mode, 1);
    }
  else
    {

      tem = gen_reg_rtx (mode);
      loop_iv_add_mult_emit_before (loop, arg,
        v->mult_val, v->add_val,
        tem, where_bb, where_insn);
    }

  validate_change (insn, &(((x)->fld[arg_operand]).rtx), tem, 1);

  if (apply_change_group ())
    return 1;
       }





   for (v = bl->giv; v; v = v->next_iv)
     if (((enum rtx_code) (v->mult_val)->code) == CONST_INT
  && (((v->mult_val)->fld[0]).rtwint) > 0
  && ! v->ignore && ! v->maybe_dead && v->always_computable
  && v->mode == mode
  && 0)
       {
  rtx tem;

  if (! biv_elimination_giv_has_0_offset (bl->biv, v, insn))
    continue;

  if (! eliminate_p)
    return 1;

  tem = gen_reg_rtx (mode);


  validate_change (insn, &(((x)->fld[1 - arg_operand]).rtx),
     v->new_reg, 1);


  loop_iv_add_mult_emit_before (loop, arg,
           v->mult_val, v->add_val,
           tem, where_bb, where_insn);

  validate_change (insn, &(((x)->fld[arg_operand]).rtx), tem, 1);
  if (apply_change_group ())
    return 1;
       }
 }
      else if (((enum rtx_code) (arg)->code) == REG || ((enum rtx_code) (arg)->code) == MEM)
 {
   if (loop_invariant_p (loop, arg) == 1)
     {




       for (v = bl->giv; v; v = v->next_iv)
  if (((enum rtx_code) (v->mult_val)->code) == CONST_INT && (((v->mult_val)->fld[0]).rtwint) > 0
      && ! v->ignore && ! v->maybe_dead && v->always_computable
      && v->mode == mode
      && 0)
    {
      rtx tem;

      if (! biv_elimination_giv_has_0_offset (bl->biv, v, insn))
        continue;

      if (! eliminate_p)
        return 1;

      tem = gen_reg_rtx (mode);


      validate_change (insn, &(((x)->fld[1 - arg_operand]).rtx),
         v->new_reg, 1);


      loop_iv_add_mult_emit_before (loop, arg,
        v->mult_val, v->add_val,
        tem, where_bb, where_insn);
      validate_change (insn, &(((x)->fld[arg_operand]).rtx), tem, 1);
      if (apply_change_group ())
        return 1;
    }
     }
# 9141 "../../../kg++fe/gnu/loop.c"
 }


      return 0;

    case MEM:


      for (v = bl->giv; v; v = v->next_iv)
 if (v->giv_type == DEST_ADDR && v->location == &(((x)->fld[0]).rtx))
   return 1;
      break;

    default:
      break;
    }


  fmt = (rtx_format[(int) (code)]);
  for (i = (rtx_length[(int) (code)]) - 1; i >= 0; i--)
    {
      switch (fmt[i])
 {
 case 'e':
   if (! maybe_eliminate_biv_1 (loop, (((x)->fld[i]).rtx), insn, bl,
           eliminate_p, where_bb, where_insn))
     return 0;
   break;

 case 'E':
   for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
     if (! maybe_eliminate_biv_1 (loop, (((((x)->fld[i]).rtvec))->elem[j]), insn, bl,
      eliminate_p, where_bb, where_insn))
       return 0;
   break;
 }
    }

  return 1;
}




static int
last_use_this_basic_block (reg, insn)
     rtx reg;
     rtx insn;
{
  rtx n;
  for (n = insn;
       n && ((enum rtx_code) (n)->code) != CODE_LABEL && ((enum rtx_code) (n)->code) != JUMP_INSN;
       n = (((n)->fld[2]).rtx))
    {
      if ((((reg_n_info)->data.reg[(((reg)->fld[0]).rtuint)])->last_uid) == (((n)->fld[0]).rtint))
 return 1;
    }
  return 0;
}




static void
record_initial (dest, set, data)
     rtx dest;
     rtx set;
     void *data __attribute__ ((__unused__));
{
  struct loop_ivs *ivs = (struct loop_ivs *) data;
  struct iv_class *bl;

  if (((enum rtx_code) (dest)->code) != REG
      || (((dest)->fld[0]).rtuint) >= ivs->n_regs
      || ivs->regs[(((dest)->fld[0]).rtuint)].type != BASIC_INDUCT)
    return;

  bl = ivs->regs[(((dest)->fld[0]).rtuint)].iv.class;


  if (bl->init_insn == 0)
    {
      bl->init_insn = note_insn;
      bl->init_set = set;
    }
}






static void
update_reg_last_use (x, insn)
     rtx x;
     rtx insn;
{






  if (((enum rtx_code) (x)->code) == REG && (((x)->fld[0]).rtuint) < max_reg_before_loop
      && (((insn)->fld[0]).rtint) < max_uid_for_loop
      && uid_luid[(((reg_n_info)->data.reg[(((x)->fld[0]).rtuint)])->last_uid)] < ((((insn)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((insn)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 9246, __FUNCTION__), -1)))
    {
      (((reg_n_info)->data.reg[(((x)->fld[0]).rtuint)])->last_uid) = (((insn)->fld[0]).rtint);
    }
  else
    {
      int i, j;
      const char *fmt = (rtx_format[(int) (((enum rtx_code) (x)->code))]);
      for (i = (rtx_length[(int) (((enum rtx_code) (x)->code))]) - 1; i >= 0; i--)
 {
   if (fmt[i] == 'e')
     update_reg_last_use ((((x)->fld[i]).rtx), insn);
   else if (fmt[i] == 'E')
     for (j = (((((x)->fld[i]).rtvec))->num_elem) - 1; j >= 0; j--)
       update_reg_last_use ((((((x)->fld[i]).rtvec))->elem[j]), insn);
 }
    }
}
# 9288 "../../../kg++fe/gnu/loop.c"
rtx
canonicalize_condition (insn, cond, reverse, earliest, want_reg)
     rtx insn;
     rtx cond;
     int reverse;
     rtx *earliest;
     rtx want_reg;
{
  enum rtx_code code;
  rtx prev = insn;
  rtx set;
  rtx tem;
  rtx op0, op1;
  int reverse_code = 0;
  enum machine_mode mode;

  code = ((enum rtx_code) (cond)->code);
  mode = ((enum machine_mode) (cond)->mode);
  op0 = (((cond)->fld[0]).rtx);
  op1 = (((cond)->fld[1]).rtx);

  if (reverse)
    code = reversed_comparison_code (cond, insn);
  if (code == UNKNOWN)
    return 0;

  if (earliest)
    *earliest = insn;






  while ((rtx_class[(int) (code)]) == '<'
  && op1 == (const_tiny_rtx[0][(int) (((enum machine_mode) (op0)->mode))])
  && op0 != want_reg)
    {

      rtx x = 0;
# 9348 "../../../kg++fe/gnu/loop.c"
      if (((enum rtx_code) (op0)->code) == COMPARE)
 {
   op1 = (((op0)->fld[1]).rtx);
   op0 = (((op0)->fld[0]).rtx);
   continue;
 }
      else if (((enum rtx_code) (op0)->code) != REG)
 break;





      if ((prev = prev_nonnote_insn (prev)) == 0
   || ((enum rtx_code) (prev)->code) != INSN
   || 0)
 break;

      set = set_of (op0, prev);

      if (set
   && (((enum rtx_code) (set)->code) != SET
       || !rtx_equal_p ((((set)->fld[0]).rtx), op0)))
 break;



      if (set)
 {
   enum machine_mode inner_mode = ((enum machine_mode) ((((set)->fld[0]).rtx))->mode);
# 9396 "../../../kg++fe/gnu/loop.c"
   if ((((enum rtx_code) ((((set)->fld[1]).rtx))->code) == COMPARE
        || (((code == NE
       || (code == LT
    && (mode_class[(int) (inner_mode)]) == MODE_INT
    && ((mode_bitsize[(int) (inner_mode)])
        <= (8 * 8))
    && (1
        & ((long long) 1
    << ((mode_bitsize[(int) (inner_mode)]) - 1))))






       ))
     && (rtx_class[(int) (((enum rtx_code) ((((set)->fld[1]).rtx))->code))]) == '<'))
       && ((((mode_class[(int) (mode)]) == MODE_CC)
     == ((mode_class[(int) (inner_mode)]) == MODE_CC))
    || mode == VOIDmode || inner_mode == VOIDmode))
     x = (((set)->fld[1]).rtx);
   else if (((code == EQ
       || (code == GE
    && ((mode_bitsize[(int) (inner_mode)])
        <= (8 * 8))
    && (mode_class[(int) (inner_mode)]) == MODE_INT
    && (1
        & ((long long) 1
    << ((mode_bitsize[(int) (inner_mode)]) - 1))))






       ))
     && (rtx_class[(int) (((enum rtx_code) ((((set)->fld[1]).rtx))->code))]) == '<'
     && ((((mode_class[(int) (mode)]) == MODE_CC)
   == ((mode_class[(int) (inner_mode)]) == MODE_CC))
         || mode == VOIDmode || inner_mode == VOIDmode))

     {
       reverse_code = 1;
       x = (((set)->fld[1]).rtx);
     }
   else
     break;
 }

      else if (reg_set_p (op0, prev))

 break;

      if (x)
 {
   if ((rtx_class[(int) (((enum rtx_code) (x)->code))]) == '<')
     code = ((enum rtx_code) (x)->code);
   if (reverse_code)
     {
       code = reversed_comparison_code (x, prev);
       if (code == UNKNOWN)
  return 0;
       reverse_code = 0;
     }

   op0 = (((x)->fld[0]).rtx), op1 = (((x)->fld[1]).rtx);
   if (earliest)
     *earliest = prev;
 }
    }


  if ((((enum rtx_code) (op0)->code) == LABEL_REF || ((enum rtx_code) (op0)->code) == SYMBOL_REF || ((enum rtx_code) (op0)->code) == CONST_INT || ((enum rtx_code) (op0)->code) == CONST_DOUBLE || ((enum rtx_code) (op0)->code) == CONST || ((enum rtx_code) (op0)->code) == HIGH || ((enum rtx_code) (op0)->code) == CONST_VECTOR || ((enum rtx_code) (op0)->code) == CONSTANT_P_RTX))
    code = swap_condition (code), tem = op0, op0 = op1, op1 = tem;



  if ((mode_class[(int) (((enum machine_mode) (op0)->mode))]) == MODE_CC)
    return 0;





  if (((enum rtx_code) (op1)->code) == CONST_INT
      && ((enum machine_mode) (op0)->mode) != VOIDmode
      && (mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) <= (8 * 8))
    {
      long long const_val = (((op1)->fld[0]).rtwint);
      unsigned long long uconst_val = const_val;
      unsigned long long max_val
 = (unsigned long long) mode_mask_array[(int) (((enum machine_mode) (op0)->mode))];

      switch (code)
 {
 case LE:
   if ((unsigned long long) const_val != max_val >> 1)
     code = LT, op1 = gen_int_mode (const_val + 1, ((enum machine_mode) (op0)->mode));
   break;



 case GE:
   if ((long long) (const_val & max_val)
       != (((long long) 1
     << ((mode_bitsize[(int) (((enum machine_mode) (op0)->mode))]) - 1))))
     code = GT, op1 = gen_int_mode (const_val - 1, ((enum machine_mode) (op0)->mode));
   break;

 case LEU:
   if (uconst_val < max_val)
     code = LTU, op1 = gen_int_mode (uconst_val + 1, ((enum machine_mode) (op0)->mode));
   break;

 case GEU:
   if (uconst_val != 0)
     code = GTU, op1 = gen_int_mode (uconst_val - 1, ((enum machine_mode) (op0)->mode));
   break;

 default:
   break;
 }
    }







  return gen_rtx_fmt_ee (code, VOIDmode, op0, op1);
}
# 9539 "../../../kg++fe/gnu/loop.c"
rtx
get_condition (jump, earliest)
     rtx jump;
     rtx *earliest;
{
  rtx cond;
  int reverse;
  rtx set;


  if (((enum rtx_code) (jump)->code) != JUMP_INSN
      || ! any_condjump_p (jump))
    return 0;
  set = pc_set (jump);

  cond = ((((((set)->fld[1]).rtx))->fld[0]).rtx);



  reverse
    = ((enum rtx_code) (((((((set)->fld[1]).rtx))->fld[2]).rtx))->code) == LABEL_REF
      && (((((((((set)->fld[1]).rtx))->fld[2]).rtx))->fld[0]).rtx) == (((jump)->fld[9]).rtx);

  return canonicalize_condition (jump, cond, reverse, earliest, (rtx) 0);
}




rtx
get_condition_for_loop (loop, x)
     const struct loop *loop;
     rtx x;
{
  rtx comparison = get_condition (x, (rtx*) 0);

  if (comparison == 0
      || ! loop_invariant_p (loop, (((comparison)->fld[0]).rtx))
      || loop_invariant_p (loop, (((comparison)->fld[1]).rtx)))
    return comparison;

  return gen_rtx_fmt_ee (swap_condition (((enum rtx_code) (comparison)->code)), VOIDmode,
    (((comparison)->fld[1]).rtx), (((comparison)->fld[0]).rtx));
}





static int
indirect_jump_in_function_p (start)
     rtx start;
{
  rtx insn;

  for (insn = start; insn; insn = (((insn)->fld[2]).rtx))
    if (computed_jump_p (insn))
      return 1;

  return 0;
}





static int
insert_loop_mem (mem, data)
     rtx *mem;
     void *data __attribute__ ((__unused__));
{
  struct loop_info *loop_info = data;
  int i;
  rtx m = *mem;

  if (m == (rtx) 0)
    return 0;

  switch (((enum rtx_code) (m)->code))
    {
    case MEM:
      break;

    case CLOBBER:

      return -1;

    case CONST_DOUBLE:


      return -1;

    case EXPR_LIST:

      return -1;

    default:

      return 0;
    }


  for (i = 0; i < loop_info->mems_idx; ++i)
    if (rtx_equal_p (m, loop_info->mems[i].mem))
      {
 if (((enum machine_mode) (m)->mode) != ((enum machine_mode) (loop_info->mems[i].mem)->mode))



   loop_info->mems[i].optimize = 0;

 return 0;
      }


  if (loop_info->mems_idx == loop_info->mems_allocated)
    {
      if (loop_info->mems_allocated != 0)
 loop_info->mems_allocated *= 2;
      else
 loop_info->mems_allocated = 32;

      loop_info->mems = (loop_mem_info *)
 xrealloc (loop_info->mems,
    loop_info->mems_allocated * sizeof (loop_mem_info));
    }


  loop_info->mems[loop_info->mems_idx].mem = m;




  loop_info->mems[loop_info->mems_idx].optimize = (((enum machine_mode) (m)->mode) != BLKmode);
  loop_info->mems[loop_info->mems_idx].reg = (rtx) 0;
  ++loop_info->mems_idx;

  return 0;
}
# 9695 "../../../kg++fe/gnu/loop.c"
static void
loop_regs_scan (loop, extra_size)
     const struct loop *loop;
     int extra_size;
{
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int old_nregs;


  rtx *last_set;
  rtx insn;
  int i;

  old_nregs = regs->num;
  regs->num = max_reg_num ();


  if (regs->num >= regs->size)
    {
      regs->size = regs->num + extra_size;

      regs->array = (struct loop_reg *)
 xrealloc (regs->array, regs->size * sizeof (*regs->array));


      memset (regs->array + old_nregs, 0,
       (regs->size - old_nregs) * sizeof (*regs->array));
    }


  for (i = 0; i < old_nregs; i++)
    {
      regs->array[i].set_in_loop = 0;
      regs->array[i].may_not_optimize = 0;
      regs->array[i].single_usage = (rtx) 0;
    }

  last_set = (rtx *) xcalloc (regs->num, sizeof (rtx));


  for (insn = loop->top ? loop->top : loop->start; insn != loop->end;
       insn = (((insn)->fld[2]).rtx))
    {
      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 {

   find_single_use_in_loop (regs, insn, (((insn)->fld[5]).rtx));


   if ((((insn)->fld[8]).rtx))
     find_single_use_in_loop (regs, insn, (((insn)->fld[8]).rtx));

   if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET
       || ((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == CLOBBER)
     count_one_set (regs, insn, (((insn)->fld[5]).rtx), last_set);
   else if (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == PARALLEL)
     {
       int i;
       for (i = ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->num_elem) - 1; i >= 0; i--)
  count_one_set (regs, insn, ((((((((insn)->fld[5]).rtx))->fld[0]).rtvec))->elem[i]),
          last_set);
     }
 }

      if (((enum rtx_code) (insn)->code) == CODE_LABEL || ((enum rtx_code) (insn)->code) == JUMP_INSN)
 memset (last_set, 0, regs->num * sizeof (rtx));




      if (((enum rtx_code) (insn)->code) == CALL_INSN)
 {
   rtx link;
   for (link = (((insn)->fld[9]).rtx);
        link;
        link = (((link)->fld[1]).rtx))
     {
       rtx op, reg;

       if (((enum rtx_code) (op = (((link)->fld[0]).rtx))->code) == USE
    && ((enum rtx_code) (reg = (((op)->fld[0]).rtx))->code) == REG
    && rtx_varies_p (reg, 1))
  regs->array[(((reg)->fld[0]).rtuint)].may_not_optimize = 1;
     }
 }
    }





  if (((struct loop_info *) (loop)->aux)->has_call)
    for (i = 0; i < 176; i++)
      if ((!!((regs_invalidated_by_call)[(i) / ((unsigned) (8 * 8))] & (((HARD_REG_ELT_TYPE) (1)) << ((i) % ((unsigned) (8 * 8))))))
   && rtx_varies_p ((cfun->emit->x_regno_reg_rtx)[i], 1))
 {
   regs->array[i].may_not_optimize = 1;
   regs->array[i].set_in_loop = 1;
 }




  for (i = regs->num - 1; i >= 176; i--)
    if ((mode_class[(int) (((enum machine_mode) ((cfun->emit->x_regno_reg_rtx)[i])->mode))]) == MODE_CC)
      regs->array[i].may_not_optimize = 1;



  for (i = old_nregs; i < regs->num; i++)
    regs->array[i].n_times_set = regs->array[i].set_in_loop;

  free (last_set);
}



static int
count_insns_in_loop (loop)
     const struct loop *loop;
{
  int count = 0;
  rtx insn;

  for (insn = loop->top ? loop->top : loop->start; insn != loop->end;
       insn = (((insn)->fld[2]).rtx))
    if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
      ++count;

  return count;
}



static void
load_mems (loop)
     const struct loop *loop;
{
  struct loop_info *loop_info = ((struct loop_info *) (loop)->aux);
  struct loop_regs *regs = (&((struct loop_info *) (loop)->aux)->regs);
  int maybe_never = 0;
  int i;
  rtx p, prev_ebb_head;
  rtx label = (rtx) 0;
  rtx end_label;

  int next_maybe_never = 0;
  unsigned int last_max_reg = max_reg_num ();

  if (loop_info->mems_idx == 0)
    return;


  end_label = next_nonnote_insn (loop->end);
  if (end_label && ((enum rtx_code) (end_label)->code) != CODE_LABEL)
    end_label = (rtx) 0;




  for (p = next_insn_in_loop (loop, loop->scan_start);
       p != (rtx) 0;
       p = next_insn_in_loop (loop, p))
    {
      if (((enum rtx_code) (p)->code) == CODE_LABEL)
 maybe_never = 1;
      else if (((enum rtx_code) (p)->code) == JUMP_INSN






        && ! (((enum rtx_code) (p)->code) == JUMP_INSN
       && (((p)->fld[9]).rtx) == loop->top
       && ((((((p)->fld[2]).rtx))->fld[2]).rtx) == loop->end
       && any_uncondjump_p (p)))
 {



   if (

       !(((p)->fld[9]).rtx)
       || ((((p)->fld[9]).rtx) != end_label
    && (((((((p)->fld[9]).rtx))->fld[0]).rtint) >= max_uid_for_loop
        || (((((((p)->fld[9]).rtx))->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((((p)->fld[9]).rtx))->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 9881, __FUNCTION__), -1)) < ((((loop->start)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop->start)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 9881, __FUNCTION__), -1))
        || (((((((p)->fld[9]).rtx))->fld[0]).rtint) < max_uid_for_loop ? uid_luid[((((((p)->fld[9]).rtx))->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 9882, __FUNCTION__), -1)) > ((((loop->end)->fld[0]).rtint) < max_uid_for_loop ? uid_luid[(((loop->end)->fld[0]).rtint)] : (fancy_abort ("../../../kg++fe/gnu/loop.c", 9882, __FUNCTION__), -1)))))
     return;

   if (!any_condjump_p (p))

     maybe_never = 1;
   else


     next_maybe_never = 1;
 }
      else if (next_maybe_never)
 maybe_never = 1;
    }


  for (p = loop->start;
       (((p)->fld[1]).rtx) && ((enum rtx_code) (p)->code) != CODE_LABEL;
       p = (((p)->fld[1]).rtx))
    ;
  prev_ebb_head = p;

  cselib_init ();



  for (; p != loop->start; p = (((p)->fld[2]).rtx))
    cselib_process_insn (p);


  for (i = 0; i < loop_info->mems_idx; ++i)
    {
      regset_head load_copies;
      regset_head store_copies;
      int written = 0;
      rtx reg;
      rtx mem = loop_info->mems[i].mem;
      rtx mem_list_entry;

      if ((((mem))->volatil)
   || loop_invariant_p (loop, (((mem)->fld[0]).rtx)) != 1)

 loop_info->mems[i].optimize = 0;



      mem_list_entry = loop_info->store_mems;
      while (mem_list_entry)
 {
   if (rtx_equal_p (mem, (((mem_list_entry)->fld[0]).rtx)))
     written = 1;
   else if (true_dependence ((((mem_list_entry)->fld[0]).rtx), VOIDmode,
        mem, rtx_varies_p))
     {

       loop_info->mems[i].optimize = 0;
       break;
     }
   mem_list_entry = (((mem_list_entry)->fld[1]).rtx);
 }

      if (flag_float_store && written
   && (mode_class[(int) (((enum machine_mode) (mem)->mode))]) == MODE_FLOAT)
 loop_info->mems[i].optimize = 0;



      if (loop_info->mems[i].optimize && written)
 {
   int j;

   for (j = 0; j < loop_info->mems_idx; ++j)
     {
       if (j == i)
  continue;
       else if (true_dependence (mem,
     VOIDmode,
     loop_info->mems[j].mem,
     rtx_varies_p))
  {



    loop_info->mems[i].optimize = 0;
    break;
  }
     }
 }

      if (maybe_never && may_trap_p (mem))


 loop_info->mems[i].optimize = 0;

      if (!loop_info->mems[i].optimize)


 continue;

      bitmap_initialize (&load_copies, 1);
      bitmap_initialize (&store_copies, 1);





      reg = gen_reg_rtx (((enum machine_mode) (mem)->mode));
      (((reg))->volatil) = 1;
      loop_info->mems[i].reg = reg;



      maybe_never = 0;
      for (p = next_insn_in_loop (loop, loop->scan_start);
    p != (rtx) 0;
    p = next_insn_in_loop (loop, p))
 {
   if (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i'))
     {
       rtx set;

       set = (((rtx_class[(int) (((enum rtx_code) (p)->code))]) == 'i') ? (((enum rtx_code) ((((p)->fld[5]).rtx))->code) == SET ? (((p)->fld[5]).rtx) : single_set_2 (p, (((p)->fld[5]).rtx))) : (rtx) 0);




       if (set

    && ! maybe_never
    && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
    && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) >= 176
    && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) < last_max_reg
    && regs->array[((((((set)->fld[0]).rtx))->fld[0]).rtuint)].n_times_set == 1
    && rtx_equal_p ((((set)->fld[1]).rtx), mem))
  bitmap_set_bit (&load_copies, ((((((set)->fld[0]).rtx))->fld[0]).rtuint));






       if (set
    && ! maybe_never
    && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
    && ((((((set)->fld[1]).rtx))->fld[0]).rtuint) >= 176
    && ((((((set)->fld[1]).rtx))->fld[0]).rtuint) < last_max_reg
    && regs->array[((((((set)->fld[1]).rtx))->fld[0]).rtuint)].n_times_set == 1
    && rtx_equal_p ((((set)->fld[0]).rtx), mem))
  bitmap_set_bit (&store_copies, ((((((set)->fld[1]).rtx))->fld[0]).rtuint));



       if (((enum rtx_code) (p)->code) == CALL_INSN
    && reg_mentioned_p (loop_info->mems[i].mem,
          (((p)->fld[9]).rtx)))
  {
    cancel_changes (0);
    loop_info->mems[i].optimize = 0;
    break;
  }
       else

  replace_loop_mems (p, loop_info->mems[i].mem,
       loop_info->mems[i].reg, written);
     }

   if (((enum rtx_code) (p)->code) == CODE_LABEL
       || ((enum rtx_code) (p)->code) == JUMP_INSN)
     maybe_never = 1;
 }

      if (! loop_info->mems[i].optimize)
 ;
      else if (! apply_change_group ())

 loop_info->mems[i].optimize = 0;
      else
 {


   cselib_val *e = cselib_lookup (mem, VOIDmode, 0);
   rtx set;
   rtx best = mem;
   int j;
   struct elt_loc_list *const_equiv = 0;

   if (e)
     {
       struct elt_loc_list *equiv;
       struct elt_loc_list *best_equiv = 0;
       for (equiv = e->locs; equiv; equiv = equiv->next)
  {
    if ((((enum rtx_code) (equiv->loc)->code) == LABEL_REF || ((enum rtx_code) (equiv->loc)->code) == SYMBOL_REF || ((enum rtx_code) (equiv->loc)->code) == CONST_INT || ((enum rtx_code) (equiv->loc)->code) == CONST_DOUBLE || ((enum rtx_code) (equiv->loc)->code) == CONST || ((enum rtx_code) (equiv->loc)->code) == HIGH || ((enum rtx_code) (equiv->loc)->code) == CONST_VECTOR || ((enum rtx_code) (equiv->loc)->code) == CONSTANT_P_RTX))
      const_equiv = equiv;
    else if (((enum rtx_code) (equiv->loc)->code) == REG





      && (((equiv->loc)->fld[0]).rtuint) >= 176)
      best_equiv = equiv;
  }

       if (! best_equiv)
  best_equiv = const_equiv;
       else if (const_equiv
         && (rtx_cost (const_equiv->loc, SET)
      <= rtx_cost (best_equiv->loc, SET)))
  {
    best_equiv = const_equiv;
    const_equiv = 0;
  }





       if (best_equiv)
  best = copy_rtx (best_equiv->loc);
     }

   set = gen_move_insn (reg, best);
   set = loop_insn_hoist (loop, set);
   if ((((enum rtx_code) (best)->code) == REG))
     {
       for (p = prev_ebb_head; p != loop->start; p = (((p)->fld[2]).rtx))
  if ((((reg_n_info)->data.reg[(((best)->fld[0]).rtuint)])->last_uid) == (((p)->fld[0]).rtint))
    {
      (((reg_n_info)->data.reg[(((best)->fld[0]).rtuint)])->last_uid) = (((set)->fld[0]).rtint);
      break;
    }
     }

   if (const_equiv)
     set_unique_reg_note (set, REG_EQUAL, copy_rtx (const_equiv->loc));

   if (written)
     {
       if (label == (rtx) 0)
  {
    label = gen_label_rtx ();
    emit_label_after (label, loop->end);
  }



       set = gen_move_insn (copy_rtx (mem), reg);
       loop_insn_emit_after (loop, 0, label, set);
     }

   if (loop_dump_stream)
     {
       fprintf (loop_dump_stream, "Hoisted regno %d %s from ",
         (((reg)->fld[0]).rtuint), (written ? "r/w" : "r/o"));
       print_rtl (loop_dump_stream, mem);
       fputc_unlocked ('\n', loop_dump_stream);
     }




   do { bitmap_element *ptr_ = (&load_copies)->first; unsigned int indx_ = (176) / ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))); unsigned bit_num_ = (176) % (unsigned) (8 * 4); unsigned word_num_ = (176) / (unsigned) (8 * 4) % ((128 + (8 * 4) - 1) / (8 * 4)); while (ptr_ != 0 && ptr_->indx < indx_) ptr_ = ptr_->next; if (ptr_ != 0 && ptr_->indx != indx_) { bit_num_ = 0; word_num_ = 0; } for (; ptr_ != 0; ptr_ = ptr_->next) { for (; word_num_ < ((128 + (8 * 4) - 1) / (8 * 4)); word_num_++) { BITMAP_WORD word_ = ptr_->bits[word_num_]; if (word_ != 0) { for (; bit_num_ < (unsigned) (8 * 4); bit_num_++) { BITMAP_WORD mask_ = ((BITMAP_WORD) 1) << bit_num_; if ((word_ & mask_) != 0) { word_ &= ~ mask_; (j) = (ptr_->indx * ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))) + word_num_ * (unsigned) (8 * 4) + bit_num_); { try_copy_prop (loop, reg, j); }; if (word_ == 0) break; } } } bit_num_ = 0; } word_num_ = 0; } } while (0);




   bitmap_clear (&load_copies);

   do { bitmap_element *ptr_ = (&store_copies)->first; unsigned int indx_ = (176) / ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))); unsigned bit_num_ = (176) % (unsigned) (8 * 4); unsigned word_num_ = (176) / (unsigned) (8 * 4) % ((128 + (8 * 4) - 1) / (8 * 4)); while (ptr_ != 0 && ptr_->indx < indx_) ptr_ = ptr_->next; if (ptr_ != 0 && ptr_->indx != indx_) { bit_num_ = 0; word_num_ = 0; } for (; ptr_ != 0; ptr_ = ptr_->next) { for (; word_num_ < ((128 + (8 * 4) - 1) / (8 * 4)); word_num_++) { BITMAP_WORD word_ = ptr_->bits[word_num_]; if (word_ != 0) { for (; bit_num_ < (unsigned) (8 * 4); bit_num_++) { BITMAP_WORD mask_ = ((BITMAP_WORD) 1) << bit_num_; if ((word_ & mask_) != 0) { word_ &= ~ mask_; (j) = (ptr_->indx * ((unsigned) (((128 + (8 * 4) - 1) / (8 * 4)) * (unsigned) (8 * 4))) + word_num_ * (unsigned) (8 * 4) + bit_num_); { try_swap_copy_prop (loop, reg, j); }; if (word_ == 0) break; } } } bit_num_ = 0; } word_num_ = 0; } } while (0);




   bitmap_clear (&store_copies);
 }
    }

  if (label != (rtx) 0 && end_label != (rtx) 0)
    {


      rtx_pair rr;
      rr.r1 = end_label;
      rr.r2 = label;

      for (p = loop->start; p != loop->end; p = (((p)->fld[2]).rtx))
 {
   for_each_rtx (&p, replace_label, &rr);







   if (((enum rtx_code) (p)->code) == JUMP_INSN && (((p)->fld[9]).rtx) == end_label)
     (((p)->fld[9]).rtx) = label;
 }
    }

  cselib_finish ();
}


struct note_reg_stored_arg
{
  int set_seen;
  rtx reg;
};



static void
note_reg_stored (x, setter, arg)
     rtx x, setter __attribute__ ((__unused__));
     void *arg;
{
  struct note_reg_stored_arg *t = (struct note_reg_stored_arg *) arg;
  if (t->reg == x)
    t->set_seen = 1;
}






static void
try_copy_prop (loop, replacement, regno)
     const struct loop *loop;
     rtx replacement;
     unsigned int regno;
{

  rtx reg_rtx = (cfun->emit->x_regno_reg_rtx)[regno];
  rtx init_insn = 0;
  rtx insn;

  int replaced_last = 0;
  int store_is_first = 0;

  for (insn = next_insn_in_loop (loop, loop->scan_start);
       insn != (rtx) 0;
       insn = next_insn_in_loop (loop, insn))
    {
      rtx set;



      if (((enum rtx_code) (insn)->code) == CODE_LABEL && init_insn)
 break;

      if (! ((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i'))
 continue;


      set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0);
      if (set
   && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
   && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) == regno)
 {
   if (init_insn)
     fancy_abort ("../../../kg++fe/gnu/loop.c", 10245, __FUNCTION__);

   init_insn = insn;
   if ((((reg_n_info)->data.reg[regno])->first_uid) == (((insn)->fld[0]).rtint))
     store_is_first = 1;
 }


      if (init_insn && insn != init_insn)
 {
   struct note_reg_stored_arg arg;

   replace_loop_regs (insn, reg_rtx, replacement);
   if ((((reg_n_info)->data.reg[regno])->last_uid) == (((insn)->fld[0]).rtint))
     replaced_last = 1;


   arg.reg = replacement;
   arg.set_seen = 0;
   note_stores ((((insn)->fld[5]).rtx), note_reg_stored, &arg);
   if (arg.set_seen)
     {
       rtx note = find_reg_note (insn, REG_EQUAL, ((void *)0));




       if (note && reg_mentioned_p (replacement, (((note)->fld[0]).rtx)))
  remove_note (insn, note);
       break;
     }
 }
    }
  if (! init_insn)
    fancy_abort ("../../../kg++fe/gnu/loop.c", 10279, __FUNCTION__);
  if (apply_change_group ())
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream, "  Replaced reg %d", regno);
      if (store_is_first && replaced_last)
 {
   rtx first;
   rtx retval_note;


   first = init_insn;


   retval_note = find_reg_note (init_insn, REG_RETVAL, (rtx) 0);


   if (retval_note)
     first = (((retval_note)->fld[0]).rtx);


   loop_delete_insns (first, init_insn);
 }
      if (loop_dump_stream)
 fprintf (loop_dump_stream, ".\n");
    }
}




static void
loop_delete_insns (first, last)
     rtx first;
     rtx last;
{
  while (1)
    {
      if (loop_dump_stream)
 fprintf (loop_dump_stream, ", deleting init_insn (%d)",
   (((first)->fld[0]).rtint));
      delete_insn (first);



      if (first == last)
 break;

      first = (((first)->fld[2]).rtx);
    }
}






static void
try_swap_copy_prop (loop, replacement, regno)
     const struct loop *loop;
     rtx replacement;
     unsigned int regno;
{
  rtx insn;
  rtx set = (rtx) 0;
  unsigned int new_regno;

  new_regno = (((replacement)->fld[0]).rtuint);

  for (insn = next_insn_in_loop (loop, loop->scan_start);
       insn != (rtx) 0;
       insn = next_insn_in_loop (loop, insn))
    {

      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i')
   && (set = (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i') ? (((enum rtx_code) ((((insn)->fld[5]).rtx))->code) == SET ? (((insn)->fld[5]).rtx) : single_set_2 (insn, (((insn)->fld[5]).rtx))) : (rtx) 0))
   && ((enum rtx_code) ((((set)->fld[0]).rtx))->code) == REG
   && ((((((set)->fld[0]).rtx))->fld[0]).rtuint) == new_regno
   && ((enum rtx_code) ((((set)->fld[1]).rtx))->code) == REG
   && ((((((set)->fld[1]).rtx))->fld[0]).rtuint) == regno)
 break;
    }

  if (insn != (rtx) 0)
    {
      rtx prev_insn;
      rtx prev_set;





      prev_insn = (((insn)->fld[1]).rtx);

      if (((rtx_class[(int) (((enum rtx_code) (insn)->code))]) == 'i')
   && (prev_set = (((rtx_class[(int) (((enum rtx_code) (prev_insn)->code))]) == 'i') ? (((enum rtx_code) ((((prev_insn)->fld[5]).rtx))->code) == SET ? (((prev_insn)->fld[5]).rtx) : single_set_2 (prev_insn, (((prev_insn)->fld[5]).rtx))) : (rtx) 0))
   && ((enum rtx_code) ((((prev_set)->fld[0]).rtx))->code) == REG
   && ((((((prev_set)->fld[0]).rtx))->fld[0]).rtuint) == regno)
 {
# 10391 "../../../kg++fe/gnu/loop.c"
   validate_change (prev_insn, &(((prev_set)->fld[0]).rtx),
      replacement, 1);
   validate_change (insn, &(((set)->fld[0]).rtx),
      (((set)->fld[1]).rtx), 1);
   validate_change (insn, &(((set)->fld[1]).rtx),
      replacement, 1);

   if (apply_change_group ())
     {
       if (loop_dump_stream)
  fprintf (loop_dump_stream,
    "  Swapped set of reg %d at %d with reg %d at %d.\n",
    regno, (((insn)->fld[0]).rtint),
    new_regno, (((prev_insn)->fld[0]).rtint));


       if ((((reg_n_info)->data.reg[regno])->first_uid) == (((prev_insn)->fld[0]).rtint))
  (((reg_n_info)->data.reg[regno])->first_uid) = (((insn)->fld[0]).rtint);



       try_copy_prop (loop, replacement, regno);
     }
 }
    }
}



static int
find_mem_in_note_1 (x, data)
     rtx *x;
     void *data;
{
  if (*x != (rtx) 0 && ((enum rtx_code) (*x)->code) == MEM)
    {
      rtx *res = (rtx *) data;
      *res = *x;
      return 1;
    }
  return 0;
}



static rtx
find_mem_in_note (note)
     rtx note;
{
  if (note && for_each_rtx (&note, find_mem_in_note_1, &note))
    return note;
  return (rtx) 0;
}






static int
replace_loop_mem (mem, data)
     rtx *mem;
     void *data;
{
  loop_replace_args *args = (loop_replace_args *) data;
  rtx m = *mem;

  if (m == (rtx) 0)
    return 0;

  switch (((enum rtx_code) (m)->code))
    {
    case MEM:
      break;

    case CONST_DOUBLE:


      return -1;

    default:

      return 0;
    }

  if (!rtx_equal_p (args->match, m))

    return 0;


  validate_change (args->insn, mem, args->replacement, 1);

  return 0;
}

static void
replace_loop_mems (insn, mem, reg, written)
     rtx insn;
     rtx mem;
     rtx reg;
     int written;
{
  loop_replace_args args;

  args.insn = insn;
  args.match = mem;
  args.replacement = reg;

  for_each_rtx (&insn, replace_loop_mem, &args);



  if (written)
    {
      rtx note, sub;
      rtx *link;

      for (link = &(((insn)->fld[8]).rtx); (note = *link); link = &(((note)->fld[1]).rtx))
 {
   if (((enum reg_note) ((enum machine_mode) (note)->mode)) == REG_EQUAL
       && (sub = find_mem_in_note (note))
       && true_dependence (mem, VOIDmode, sub, rtx_varies_p))
     {

       validate_change ((rtx) 0, link, (((note)->fld[1]).rtx), 1);
       break;
     }
 }
    }
}





static int
replace_loop_reg (px, data)
     rtx *px;
     void *data;
{
  rtx x = *px;
  loop_replace_args *args = (loop_replace_args *) data;

  if (x == (rtx) 0)
    return 0;

  if (x == args->match)
    validate_change (args->insn, px, args->replacement, 1);

  return 0;
}

static void
replace_loop_regs (insn, reg, replacement)
     rtx insn;
     rtx reg;
     rtx replacement;
{
  loop_replace_args args;

  args.insn = insn;
  args.match = reg;
  args.replacement = replacement;

  for_each_rtx (&insn, replace_loop_reg, &args);
}





static int
replace_label (x, data)
     rtx *x;
     void *data;
{
  rtx l = *x;
  rtx old_label = ((rtx_pair *) data)->r1;
  rtx new_label = ((rtx_pair *) data)->r2;

  if (l == (rtx) 0)
    return 0;

  if (((enum rtx_code) (l)->code) != LABEL_REF)
    return 0;

  if ((((l)->fld[0]).rtx) != old_label)
    return 0;

  (((l)->fld[0]).rtx) = new_label;
  ++(((new_label)->fld[4]).rtint);
  --(((old_label)->fld[4]).rtint);

  return 0;
}




static rtx
loop_insn_emit_after (loop, where_bb, where_insn, pattern)
     const struct loop *loop __attribute__ ((__unused__));
     basic_block where_bb __attribute__ ((__unused__));
     rtx where_insn;
     rtx pattern;
{
  return emit_insn_after (pattern, where_insn);
}






rtx
loop_insn_emit_before (loop, where_bb, where_insn, pattern)
     const struct loop *loop;
     basic_block where_bb __attribute__ ((__unused__));
     rtx where_insn;
     rtx pattern;
{
  if (! where_insn)
    return loop_insn_hoist (loop, pattern);
  return emit_insn_before (pattern, where_insn);
}





static rtx
loop_call_insn_emit_before (loop, where_bb, where_insn, pattern)
     const struct loop *loop __attribute__ ((__unused__));
     basic_block where_bb __attribute__ ((__unused__));
     rtx where_insn;
     rtx pattern;
{
  return emit_call_insn_before (pattern, where_insn);
}




rtx
loop_insn_hoist (loop, pattern)
     const struct loop *loop;
     rtx pattern;
{
  return loop_insn_emit_before (loop, 0, loop->start, pattern);
}




static rtx
loop_call_insn_hoist (loop, pattern)
     const struct loop *loop;
     rtx pattern;
{
  return loop_call_insn_emit_before (loop, 0, loop->start, pattern);
}




rtx
loop_insn_sink (loop, pattern)
     const struct loop *loop;
     rtx pattern;
{
  return loop_insn_emit_before (loop, 0, loop->sink, pattern);
}



static rtx
gen_load_of_final_value (reg, final_value)
     rtx reg, final_value;
{
  rtx seq;
  start_sequence ();
  final_value = force_operand (final_value, reg);
  if (final_value != reg)
    emit_move_insn (reg, final_value);
  seq = get_insns ();
  end_sequence ();
  return seq;
}






static rtx
loop_insn_sink_or_swim (loop, pattern)
     const struct loop *loop;
     rtx pattern;
{
  if (loop->exit_count)
    return loop_insn_hoist (loop, pattern);
  else
    return loop_insn_sink (loop, pattern);
}

static void
loop_ivs_dump (loop, file, verbose)
     const struct loop *loop;
     FILE *file;
     int verbose;
{
  struct iv_class *bl;
  int iv_num = 0;

  if (! loop || ! file)
    return;

  for (bl = (&((struct loop_info *) (loop)->aux)->ivs)->list; bl; bl = bl->next)
    iv_num++;

  fprintf (file, "Loop %d: %d IV classes\n", loop->num, iv_num);

  for (bl = (&((struct loop_info *) (loop)->aux)->ivs)->list; bl; bl = bl->next)
    {
      loop_iv_class_dump (bl, file, verbose);
      fputc_unlocked ('\n', file);
    }
}


static void
loop_iv_class_dump (bl, file, verbose)
     const struct iv_class *bl;
     FILE *file;
     int verbose __attribute__ ((__unused__));
{
  struct induction *v;
  rtx incr;
  int i;

  if (! bl || ! file)
    return;

  fprintf (file, "IV class for reg %d, benefit %d\n",
    bl->regno, bl->total_benefit);

  fprintf (file, " Init insn %d", (((bl->init_insn)->fld[0]).rtint));
  if (bl->initial_value)
    {
      fprintf (file, ", init val: ");
      print_simple_rtl (file, bl->initial_value);
    }
  if (bl->initial_test)
    {
      fprintf (file, ", init test: ");
      print_simple_rtl (file, bl->initial_test);
    }
  fputc_unlocked ('\n', file);

  if (bl->final_value)
    {
      fprintf (file, " Final val: ");
      print_simple_rtl (file, bl->final_value);
      fputc_unlocked ('\n', file);
    }

  if ((incr = biv_total_increment (bl)))
    {
      fprintf (file, " Total increment: ");
      print_simple_rtl (file, incr);
      fputc_unlocked ('\n', file);
    }


  for (i = 0, v = bl->biv; v; v = v->next_iv, i++)
    {
      fprintf (file, " Inc%d: insn %d, incr: ", i, (((v->insn)->fld[0]).rtint));
      print_simple_rtl (file, v->add_val);
      fputc_unlocked ('\n', file);
    }


  for (i = 0, v = bl->giv; v; v = v->next_iv, i++)
    {
      fprintf (file, " Giv%d: insn %d, benefit %d, ",
        i, (((v->insn)->fld[0]).rtint), v->benefit);
      if (v->giv_type == DEST_ADDR)
 print_simple_rtl (file, v->mem);
      else
 print_simple_rtl (file, (((rtx_class[(int) (((enum rtx_code) (v->insn)->code))]) == 'i') ? (((enum rtx_code) ((((v->insn)->fld[5]).rtx))->code) == SET ? (((v->insn)->fld[5]).rtx) : single_set_2 (v->insn, (((v->insn)->fld[5]).rtx))) : (rtx) 0));
      fputc_unlocked ('\n', file);
    }
}


static void
loop_biv_dump (v, file, verbose)
     const struct induction *v;
     FILE *file;
     int verbose;
{
  if (! v || ! file)
    return;

  fprintf (file,
    "Biv %d: insn %d",
    (((v->dest_reg)->fld[0]).rtuint), (((v->insn)->fld[0]).rtint));
  fprintf (file, " const ");
  print_simple_rtl (file, v->add_val);

  if (verbose && v->final_value)
    {
      fputc_unlocked ('\n', file);
      fprintf (file, " final ");
      print_simple_rtl (file, v->final_value);
    }

  fputc_unlocked ('\n', file);
}


static void
loop_giv_dump (v, file, verbose)
     const struct induction *v;
     FILE *file;
     int verbose;
{
  if (! v || ! file)
    return;

  if (v->giv_type == DEST_REG)
    fprintf (file, "Giv %d: insn %d",
      (((v->dest_reg)->fld[0]).rtuint), (((v->insn)->fld[0]).rtint));
  else
    fprintf (file, "Dest address: insn %d",
      (((v->insn)->fld[0]).rtint));

  fprintf (file, " src reg %d benefit %d",
    (((v->src_reg)->fld[0]).rtuint), v->benefit);
  fprintf (file, " lifetime %d",
    v->lifetime);

  if (v->replaceable)
    fprintf (file, " replaceable");

  if (v->no_const_addval)
    fprintf (file, " ncav");

  if (v->ext_dependent)
    {
      switch (((enum rtx_code) (v->ext_dependent)->code))
 {
 case SIGN_EXTEND:
   fprintf (file, " ext se");
   break;
 case ZERO_EXTEND:
   fprintf (file, " ext ze");
   break;
 case TRUNCATE:
   fprintf (file, " ext tr");
   break;
 default:
   fancy_abort ("../../../kg++fe/gnu/loop.c", 10853, __FUNCTION__);
 }
    }

  fputc_unlocked ('\n', file);
  fprintf (file, " mult ");
  print_simple_rtl (file, v->mult_val);

  fputc_unlocked ('\n', file);
  fprintf (file, " add  ");
  print_simple_rtl (file, v->add_val);

  if (verbose && v->final_value)
    {
      fputc_unlocked ('\n', file);
      fprintf (file, " final ");
      print_simple_rtl (file, v->final_value);
    }

  fputc_unlocked ('\n', file);
}


void
debug_ivs (loop)
     const struct loop *loop;
{
  loop_ivs_dump (loop, stderr, 1);
}


void
debug_iv_class (bl)
     const struct iv_class *bl;
{
  loop_iv_class_dump (bl, stderr, 1);
}


void
debug_biv (v)
     const struct induction *v;
{
  loop_biv_dump (v, stderr, 1);
}


void
debug_giv (v)
     const struct induction *v;
{
  loop_giv_dump (v, stderr, 1);
}
# 10920 "../../../kg++fe/gnu/loop.c"
static void
loop_dump_aux (loop, file, verbose)
     const struct loop *loop;
     FILE *file;
     int verbose __attribute__ ((__unused__));
{
  rtx label;

  if (! loop || ! file)
    return;



  if (! (((loop->first->head)->fld[1]).rtx)
      || ((enum rtx_code) ((((loop->first->head)->fld[1]).rtx))->code) != NOTE
      || ((((((loop->first->head)->fld[1]).rtx))->fld[5]).rtint)
      != NOTE_INSN_LOOP_BEG)
    fprintf (file, ";;  No NOTE_INSN_LOOP_BEG at %d\n",
      ((((((loop->first->head)->fld[1]).rtx))->fld[0]).rtint));
  if (! (((loop->last->end)->fld[2]).rtx)
      || ((enum rtx_code) ((((loop->last->end)->fld[2]).rtx))->code) != NOTE
      || ((((((loop->last->end)->fld[2]).rtx))->fld[5]).rtint)
      != NOTE_INSN_LOOP_END)
    fprintf (file, ";;  No NOTE_INSN_LOOP_END at %d\n",
      ((((((loop->last->end)->fld[2]).rtx))->fld[0]).rtint));

  if (loop->start)
    {
      fprintf (file,
        ";;  start %d (%d), cont dom %d (%d), cont %d (%d), vtop %d (%d), end %d (%d)\n",
        ((loop->start) ? (((enum rtx_code) (loop->start)->code) == NOTE ? ((next_nonnote_insn (loop->start)) ? ((((next_nonnote_insn (loop->start))->fld[3]).bb) ? ((((next_nonnote_insn (loop->start))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->start) ? ((((loop->start)->fld[3]).bb) ? ((((loop->start)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->start) ? (((loop->start)->fld[0]).rtint) : -1),
        ((loop->cont) ? (((enum rtx_code) (loop->cont)->code) == NOTE ? ((next_nonnote_insn (loop->cont)) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->cont) ? ((((loop->cont)->fld[3]).bb) ? ((((loop->cont)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->cont) ? (((loop->cont)->fld[0]).rtint) : -1),
        ((loop->cont) ? (((enum rtx_code) (loop->cont)->code) == NOTE ? ((next_nonnote_insn (loop->cont)) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->cont) ? ((((loop->cont)->fld[3]).bb) ? ((((loop->cont)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->cont) ? (((loop->cont)->fld[0]).rtint) : -1),
        ((loop->vtop) ? (((enum rtx_code) (loop->vtop)->code) == NOTE ? ((next_nonnote_insn (loop->vtop)) ? ((((next_nonnote_insn (loop->vtop))->fld[3]).bb) ? ((((next_nonnote_insn (loop->vtop))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->vtop) ? ((((loop->vtop)->fld[3]).bb) ? ((((loop->vtop)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->vtop) ? (((loop->vtop)->fld[0]).rtint) : -1),
        ((loop->end) ? (((enum rtx_code) (loop->end)->code) == NOTE ? ((next_nonnote_insn (loop->end)) ? ((((next_nonnote_insn (loop->end))->fld[3]).bb) ? ((((next_nonnote_insn (loop->end))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->end) ? ((((loop->end)->fld[3]).bb) ? ((((loop->end)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->end) ? (((loop->end)->fld[0]).rtint) : -1));
      fprintf (file, ";;  top %d (%d), scan start %d (%d)\n",
        ((loop->top) ? (((enum rtx_code) (loop->top)->code) == NOTE ? ((next_nonnote_insn (loop->top)) ? ((((next_nonnote_insn (loop->top))->fld[3]).bb) ? ((((next_nonnote_insn (loop->top))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->top) ? ((((loop->top)->fld[3]).bb) ? ((((loop->top)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->top) ? (((loop->top)->fld[0]).rtint) : -1),
        ((loop->scan_start) ? (((enum rtx_code) (loop->scan_start)->code) == NOTE ? ((next_nonnote_insn (loop->scan_start)) ? ((((next_nonnote_insn (loop->scan_start))->fld[3]).bb) ? ((((next_nonnote_insn (loop->scan_start))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->scan_start) ? ((((loop->scan_start)->fld[3]).bb) ? ((((loop->scan_start)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1),
        ((loop->scan_start) ? (((loop->scan_start)->fld[0]).rtint) : -1));
      fprintf (file, ";;  exit_count %d", loop->exit_count);
      if (loop->exit_count)
 {
   fputs_unlocked (", labels:", file);
   for (label = loop->exit_labels; label; label = (((label)->fld[1]).rtx))
     {
       fprintf (file, " %d ",
         (((((label)->fld[0]).rtx)) ? ((((((label)->fld[0]).rtx))->fld[0]).rtint) : -1));
     }
 }
      fputs_unlocked ("\n", file);




      if (((loop->cont) ? (((enum rtx_code) (loop->cont)->code) == NOTE ? ((next_nonnote_insn (loop->cont)) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb) ? ((((next_nonnote_insn (loop->cont))->fld[3]).bb)->index + 0) : - 1) : -1) : ((loop->cont) ? ((((loop->cont)->fld[3]).bb) ? ((((loop->cont)->fld[3]).bb)->index + 0) : - 1) : -1)) : -1) != loop->latch->index)
 fprintf (file, ";;  NOTE_INSN_LOOP_CONT not in loop latch\n");
    }
}



void
debug_loop (loop)
     const struct loop *loop;
{
  flow_loop_dump (loop, stderr, loop_dump_aux, 1);
}



void
debug_loops (loops)
     const struct loops *loops;
{
  flow_loops_dump (loops, stderr, loop_dump_aux, 1);
}
