# 1 "../../../kg++fe/gnu/MIPS/insn-recog.c"
# 1 "/usa/handong/simplnano/cmplr-open64-merge/targia32_sl1/g++fe/gnu//"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "../../../kg++fe/gnu/MIPS/insn-recog.c"



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
# 5 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
        
# 6 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 7 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 8 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 9 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
# 1 "../../../kg++fe/gnu/MIPS/insn-config.h" 1
# 10 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 11 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 12 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 13 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 14 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 15 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
# 1 "../../../kg++fe/gnu/resource.h" 1
# 27 "../../../kg++fe/gnu/resource.h"
struct resources
{
  char memory;
  char unch_memory;
  char volatil;
  char cc;
  HARD_REG_SET regs;
};


enum mark_resource_type
{
  MARK_SRC_DEST = 0,
  MARK_SRC_DEST_CALL = 1,
  MARK_DEST = 2
};

extern void mark_target_live_regs (rtx, rtx, struct resources *);
extern void mark_set_resources (rtx, struct resources *, int, enum mark_resource_type);

extern void mark_referenced_resources (rtx, struct resources *, int);
extern void clear_hashed_info_for_insn (rtx);
extern void incr_ticks_for_insn (rtx);
extern void mark_end_of_function_resources (rtx, int);
extern void init_resource_info (rtx);
extern void free_resource_info (void);
# 16 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 17 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
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
# 260 "../../../kg++fe/gnu/reload.h"
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
# 18 "../../../kg++fe/gnu/MIPS/insn-recog.c" 2
# 49 "../../../kg++fe/gnu/MIPS/insn-recog.c"
extern rtx gen_split_344 (rtx *);
extern rtx gen_split_345 (rtx *);
extern rtx gen_split_347 (rtx *);
extern rtx gen_split_348 (rtx *);
extern rtx gen_split_349 (rtx *);
extern rtx gen_split_350 (rtx *);
extern rtx gen_split_351 (rtx *);
extern rtx gen_split_352 (rtx *);
extern rtx gen_split_354 (rtx *);
extern rtx gen_split_355 (rtx *);
extern rtx gen_split_357 (rtx *);
extern rtx gen_split_358 (rtx *);
extern rtx gen_split_359 (rtx *);
extern rtx gen_split_360 (rtx *);
extern rtx gen_split_361 (rtx *);
extern rtx gen_split_362 (rtx *);
extern rtx gen_split_366 (rtx *);
extern rtx gen_split_367 (rtx *);
extern rtx gen_split_368 (rtx *);
extern rtx gen_split_369 (rtx *);
extern rtx gen_split_370 (rtx *);
extern rtx gen_split_390 (rtx *);
extern rtx gen_split_393 (rtx *);
extern rtx gen_split_396 (rtx *);
extern rtx gen_split_399 (rtx *);
extern rtx gen_split_400 (rtx *);
extern rtx gen_split_423 (rtx *);
extern rtx gen_split_424 (rtx *);
extern rtx gen_split_427 (rtx *);
extern rtx gen_split_429 (rtx *);
extern rtx gen_split_430 (rtx *);
extern rtx gen_split_431 (rtx *);
extern rtx gen_split_437 (rtx *);
extern rtx gen_split_439 (rtx *);
extern rtx gen_split_442 (rtx *);
extern rtx gen_split_445 (rtx *);
extern rtx gen_split_447 (rtx *);
extern rtx gen_split_448 (rtx *);
extern rtx gen_split_449 (rtx *);
extern rtx gen_split_450 (rtx *);
extern rtx gen_split_451 (rtx *);
extern rtx gen_split_453 (rtx *);
extern rtx gen_split_455 (rtx *);
extern rtx gen_split_456 (rtx *);
extern rtx gen_split_457 (rtx *);
extern rtx gen_split_458 (rtx *);
extern rtx gen_split_459 (rtx *);
extern rtx gen_split_461 (rtx *);
extern rtx gen_split_462 (rtx *);
extern rtx gen_split_464 (rtx *);
extern rtx gen_split_465 (rtx *);
extern rtx gen_split_466 (rtx *);
extern rtx gen_split_467 (rtx *);
extern rtx gen_split_468 (rtx *);
extern rtx gen_split_517 (rtx *);



static int recog_1 (rtx, rtx, int *);
static int
recog_1 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[0]).rtx);
  if (((enum rtx_code) (x1)->code) == MEM)
    goto L1584;
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L10;
    }
 L3285: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1626;
    }
  goto ret0;

 L1584: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3290;
    case DImode:
      goto L3291;
    default:
      break;
    }
  goto L3285;

 L3290: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1585;
  goto L3285;

 L1585: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1586;
    }
  goto L3285;

 L1586: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1587;
    }
  goto L3285;

 L1587: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1588;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1588: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 176;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3291: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1592;
  goto L3285;

 L1592: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1593;
    }
  goto L3285;

 L1593: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1594;
    }
  goto L3285;

 L1594: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L1595;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1595: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 177;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L10: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DFmode)
    goto L3292;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3292: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L11;
    case MINUS:
      goto L103;
    case MULT:
      goto L195;
    case NEG:
      goto L728;
    case DIV:
      goto L762;
    case SQRT:
      goto L1042;
    case ABS:
      goto L1076;
    case FLOAT_EXTEND:
      goto L1399;
    case FLOAT:
      goto L1450;
    case MEM:
      goto L1557;
    case IF_THEN_ELSE:
      goto L2744;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L11: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3304;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3304: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L697;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L12;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L697: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L698;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L698: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L699;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L699: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L700;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L700: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (! (target_flags & 0x01000000))))
    {
      return 55;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L12: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L13;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L13: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 2;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L103: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3306;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3306: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L713;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L104;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L713: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L714;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L714: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L715;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L715: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L716;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L716: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (! (target_flags & 0x01000000))))
    {
      return 57;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L104: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3308;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3308: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L748;
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L105;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L748: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L749;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L749: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[3] = x3;
      goto L750;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L750: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && (!(mips_arch == PROCESSOR_R5400) || (target_flags & 0x00040000)) && ! (target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (! (target_flags & 0x01000000))))
    {
      return 61;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L105: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 16;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L195: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L196;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L196: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L197;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L197: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && !(mips_arch == PROCESSOR_R4300)))
    {
      return 30;
    }
 L203: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (mips_arch == PROCESSOR_R4300)))
    {
      return 31;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L728: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3309;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3309: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L729;
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1134;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L729: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DFmode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L730;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L730: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, DFmode))
    {
      operands[1] = x4;
      goto L731;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L731: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, DFmode))
    {
      operands[2] = x4;
      goto L732;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L732: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[3] = x3;
      goto L733;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L733: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && (!(mips_arch == PROCESSOR_R5400) || (target_flags & 0x00040000)) && ! (target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (! (target_flags & 0x01000000))))
    {
      return 59;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1134: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 94;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L762: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3312;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3312: __attribute__ ((__unused__))
  if (const_float_1_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L775;
    }
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L763;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L775: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DFmode)
    goto L3314;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3314: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == SQRT)
    goto L1054;
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L776;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1054: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DFmode))
    {
      operands[2] = x3;
      goto L1055;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1055: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && flag_unsafe_math_optimizations))
    {
      return 83;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L776: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && flag_unsafe_math_optimizations))
    {
      return 65;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L763: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L764;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L764: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 63;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1042: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1043;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1043: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (!(mips_isa == 1)) && (! (target_flags & 0x00020000))))
    {
      return 81;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1076: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1077;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1077: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 87;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1399: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1400;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1400: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 142;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1450: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3315;
    case DImode:
      goto L3316;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3315: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1451;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1451: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 149;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3316: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1456;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1456: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (target_flags & 0x00000200) && (! (target_flags & 0x00020000))))
    {
      return 150;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1557: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3317;
    case DImode:
      goto L3318;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3317: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1558;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1558: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1559;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1559: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1560;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1560: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 172;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L3318: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1565;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1565: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1566;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1566: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1567;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1567: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 173;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2744: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2745;
    }
 L2762: __attribute__ ((__unused__))
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2763;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2745: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  switch (((enum machine_mode) (x3)->mode))
    {
    case SImode:
      goto L3319;
    case DImode:
      goto L3320;
    default:
      break;
    }
  goto L2762;

 L3319: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2746;
    }
  goto L2762;

 L2746: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2747;
  goto L2762;

 L2747: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2748;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L2748: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L2749;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L2749: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 328;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L3320: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2755;
    }
  goto L2762;

 L2755: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2756;
  goto L2762;

 L2756: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2757;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L2757: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[3] = x2;
      goto L2758;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L2758: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 329;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2762;

 L2763: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2764;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2764: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2765;
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2765: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2766;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2766: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2767;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L2767: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 330;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3285;

 L1626: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (general_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L1627;
    }
 L1638: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L1639;
    }
  goto ret0;

 L1627: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && !((target_flags & 0x00000200) && !(target_flags & 0x00002000))
   && (! (target_flags & 0x00020000))
   && (register_operand (operands[0], DFmode)
       || nonmemory_operand (operands[1], DFmode))))
    {
      return 185;
    }
 L1631: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && ((target_flags & 0x00000200) && !(target_flags & 0x00002000))
   && (! (target_flags & 0x00020000))
   && (register_operand (operands[0], DFmode)
       || nonmemory_operand (operands[1], DFmode))))
    {
      return 186;
    }
 L1635: __attribute__ ((__unused__))
  if ((((target_flags & 0x00000100) || (target_flags & 0x00020000)) && !(target_flags & 0x00100000)
   && (register_operand (operands[0], DFmode)
       || nonmemory_operand (operands[1], DFmode))))
    {
      return 187;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1638;

 L1639: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (register_operand (operands[0], DFmode)
       || register_operand (operands[1], DFmode))))
    {
      return 188;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_2 (rtx, rtx, int *);
static int
recog_2 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[0]).rtx);
  if (((enum rtx_code) (x1)->code) == MEM)
    goto L1570;
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L16;
    }
 L3284: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1614;
    }
  goto ret0;

 L1570: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3321;
    case DImode:
      goto L3322;
    default:
      break;
    }
  goto L3284;

 L3321: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1571;
  goto L3284;

 L1571: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1572;
    }
  goto L3284;

 L1572: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1573;
    }
  goto L3284;

 L1573: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1574;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1574: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 174;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3322: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1578;
  goto L3284;

 L1578: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1579;
    }
  goto L3284;

 L1579: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1580;
    }
  goto L3284;

 L1580: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (register_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L1581;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1581: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 175;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L16: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SFmode)
    goto L3323;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3323: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L17;
    case MINUS:
      goto L109;
    case MULT:
      goto L207;
    case NEG:
      goto L737;
    case DIV:
      goto L768;
    case SQRT:
      goto L1047;
    case ABS:
      goto L1081;
    case FLOAT_TRUNCATE:
      goto L1257;
    case FLOAT:
      goto L1460;
    case MEM:
      goto L1543;
    case IF_THEN_ELSE:
      goto L2717;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L17: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3335;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3335: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L705;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L18;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L705: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L706;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L706: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L707;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L707: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L708;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L708: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x01000000))))
    {
      return 56;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L18: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L19;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L19: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 3;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L109: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3337;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3337: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L721;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L110;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L721: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L722;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L722: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L723;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L723: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L724;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L724: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x01000000))))
    {
      return 58;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L110: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3339;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3339: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L756;
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L111;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L756: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L757;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L757: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[3] = x3;
      goto L758;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L758: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && (!(mips_arch == PROCESSOR_R5400) || (target_flags & 0x00040000)) && ! (target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x01000000))))
    {
      return 62;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L111: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 17;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L207: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L208;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L208: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L209;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L209: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && !(mips_arch == PROCESSOR_R4300)))
    {
      return 32;
    }
 L215: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (mips_arch == PROCESSOR_R4300)))
    {
      return 33;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L737: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3340;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3340: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L738;
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1139;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L738: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SFmode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L739;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L739: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SFmode))
    {
      operands[1] = x4;
      goto L740;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L740: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SFmode))
    {
      operands[2] = x4;
      goto L741;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L741: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[3] = x3;
      goto L742;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L742: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && (!(mips_arch == PROCESSOR_R5400) || (target_flags & 0x00040000)) && ! (target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (! (target_flags & 0x01000000))))
    {
      return 60;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1139: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 95;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L768: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3343;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3343: __attribute__ ((__unused__))
  if (const_float_1_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L781;
    }
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L769;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L781: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SFmode)
    goto L3345;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3345: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == SQRT)
    goto L1061;
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L782;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1061: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SFmode))
    {
      operands[2] = x3;
      goto L1062;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1062: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && flag_unsafe_math_optimizations))
    {
      return 84;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L782: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && flag_unsafe_math_optimizations))
    {
      return 66;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L769: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L770;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L770: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 64;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1047: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1048;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1048: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (!(mips_isa == 1))))
    {
      return 82;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1081: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1082;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1082: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 88;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1257: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1258;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1258: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 115;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1460: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3346;
    case DImode:
      goto L3347;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3346: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1461;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1461: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 151;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3347: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1466;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1466: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (target_flags & 0x00000200) && (! (target_flags & 0x00020000))))
    {
      return 152;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1543: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3348;
    case DImode:
      goto L3349;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3348: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1544;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1544: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1545;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1545: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1546;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1546: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 170;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L3349: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PLUS)
    goto L1551;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1551: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1552;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1552: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1553;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1553: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 171;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2717: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2718;
    }
 L2735: __attribute__ ((__unused__))
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2736;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2718: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  switch (((enum machine_mode) (x3)->mode))
    {
    case SImode:
      goto L3350;
    case DImode:
      goto L3351;
    default:
      break;
    }
  goto L2735;

 L3350: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2719;
    }
  goto L2735;

 L2719: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2720;
  goto L2735;

 L2720: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2721;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L2721: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L2722;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L2722: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 325;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L3351: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2728;
    }
  goto L2735;

 L2728: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2729;
  goto L2735;

 L2729: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2730;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L2730: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[3] = x2;
      goto L2731;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L2731: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 326;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2735;

 L2736: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2737;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2737: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2738;
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2738: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2739;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2739: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2740;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L2740: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 327;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3284;

 L1614: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (general_operand (x1, SFmode))
    {
      operands[1] = x1;
      goto L1615;
    }
 L1622: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, SFmode))
    {
      operands[1] = x1;
      goto L1623;
    }
  goto ret0;

 L1615: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))
   && (register_operand (operands[0], SFmode)
       || nonmemory_operand (operands[1], SFmode))))
    {
      return 182;
    }
 L1619: __attribute__ ((__unused__))
  if (((target_flags & 0x00000100) && !(target_flags & 0x00100000)
   && (register_operand (operands[0], SFmode)
       || nonmemory_operand (operands[1], SFmode))))
    {
      return 183;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1622;

 L1623: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (register_operand (operands[0], SFmode)
       || register_operand (operands[1], SFmode))))
    {
      return 184;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_3 (rtx, rtx, int *);
static int
recog_3 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[1]).rtx);
  switch (((enum rtx_code) (x1)->code))
    {
    case MINUS:
      goto L127;
    case MULT:
      goto L232;
    case PLUS:
      goto L291;
    case NEG:
      goto L338;
    case TRUNCATE:
      goto L510;
    case DIV:
      goto L917;
    case MOD:
      goto L951;
    case UDIV:
      goto L985;
    case UMOD:
      goto L1019;
    case ABS:
      goto L1066;
    case FFS:
      goto L1096;
    case NOT:
      goto L1143;
    case AND:
      goto L1241;
    case IOR:
      goto L1181;
    case XOR:
      goto L1205;
    case ZERO_EXTEND:
      goto L1298;
    case SIGN_EXTEND:
      goto L1382;
    case FIX:
      goto L1404;
    case UNSPEC:
      goto L3390;
    case HIGH:
      goto L1488;
    case LO_SUM:
      goto L1493;
    case ASHIFT:
      goto L1747;
    case ASHIFTRT:
      goto L1798;
    case LSHIFTRT:
      goto L1849;
    case ROTATERT:
      goto L1906;
    case EQ:
      goto L2031;
    case NE:
      goto L2051;
    case GT:
      goto L2061;
    case LT:
      goto L2085;
    case LE:
      goto L2109;
    case GTU:
      goto L2133;
    case LTU:
      goto L2157;
    case LEU:
      goto L2181;
    case IF_THEN_ELSE:
      goto L2663;
    default:
     break;
   }
  goto ret0;

 L127: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3391;
  goto ret0;

 L3391: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L128;
 L3392: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L317;
    }
  goto ret0;

 L128: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[1] = x2;
      goto L129;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3392;

 L129: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 20;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3392;

 L317: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == MULT)
    goto L318;
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L135;
    }
  goto ret0;

 L318: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L319;
    }
  goto ret0;

 L319: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L320;
    }
  goto ret0;

 L320: __attribute__ ((__unused__))
  if (((((mips_isa == 32) || (mips_isa == 64) ) && !(target_flags & 0x00100000)))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 4;
      return 38;
    }
 L366: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) ) && (target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 4;
      return 40;
    }
  goto ret0;

 L135: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT
       || ((((operands[2])->fld[0]).rtwint) != -32768 && (((operands[2])->fld[0]).rtwint) != -0x4000))))
    {
      return 21;
    }
  goto ret0;

 L232: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L233;
    }
  goto ret0;

 L233: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L234;
    }
  goto ret0;

 L234: __attribute__ ((__unused__))
  if (((((mips_arch == PROCESSOR_R3900) || (mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000))
   || (target_flags & 0x00040000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 34;
    }
 L251: __attribute__ ((__unused__))
  if ((!(mips_arch == PROCESSOR_R4000) || (target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 35;
    }
 L270: __attribute__ ((__unused__))
  if (((mips_arch == PROCESSOR_R4000) && !(target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 36;
    }
  goto ret0;

 L291: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == MULT)
    goto L292;
  goto ret0;

 L292: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L293;
    }
  goto ret0;

 L293: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L294;
    }
  goto ret0;

 L294: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L295;
    }
 L646: __attribute__ ((__unused__))
  if (rtx_equal_p (x2, operands[0])
      && ((target_flags & 0x00040000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 52;
    }
  goto ret0;

 L295: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R3900)
   || (mips_arch == PROCESSOR_R5400)
   || (mips_arch == PROCESSOR_R5500)
   || (((mips_isa == 32) || (mips_isa == 64) ) && !(target_flags & 0x00100000)))
   && !(target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 4;
      return 37;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L646;

 L338: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3393;
  goto ret0;

 L3393: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L339;
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 91;
    }
  goto ret0;

 L339: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L340;
    }
  goto ret0;

 L340: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L341;
    }
  goto ret0;

 L341: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) ) && (target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 39;
    }
  goto ret0;

 L510: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3397;
  goto ret0;

 L3397: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case ASHIFTRT:
      goto L1278;
    case LSHIFTRT:
      goto L1285;
    case ASHIFT:
      goto L1292;
    default:
     break;
   }
 L3395: __attribute__ ((__unused__))
  if (highpart_shift_operator (x2, DImode))
    {
      operands[5] = x2;
      goto L511;
    }
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1263;
    }
  goto ret0;

 L1278: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1279;
    }
  goto L3395;

 L1279: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1280;
    }
  goto L3395;

 L1280: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 119;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3395;

 L1285: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1286;
    }
  goto L3395;

 L1286: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1287;
    }
  goto L3395;

 L1287: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 120;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3395;

 L1292: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1293;
    }
  goto ret0;

 L1293: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L1294;
    }
  goto ret0;

 L1294: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 121;
    }
  goto ret0;

 L511: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode)
    goto L3400;
  goto ret0;

 L3400: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x3)->code))
    {
    case MULT:
      goto L512;
    case NEG:
      goto L569;
    default:
     break;
   }
  goto ret0;

 L512: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L513;
    }
  goto ret0;

 L513: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L514;
    }
  goto ret0;

 L514: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L515;
    }
  goto ret0;

 L515: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L516;
    }
  goto ret0;

 L516: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT)
    goto L3402;
  goto ret0;

 L3402: __attribute__ ((__unused__))
  if ((((x3)->fld[0]).rtwint) == 32LL)
    goto L3404;
  goto ret0;

 L3404: __attribute__ ((__unused__))
  if ((((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 47;
    }
 L3405: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 48;
    }
  goto ret0;

 L569: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == DImode
      && ((enum rtx_code) (x4)->code) == MULT)
    goto L570;
  goto ret0;

 L570: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[3] = x5;
      goto L571;
    }
  goto ret0;

 L571: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[1] = x6;
      goto L572;
    }
  goto ret0;

 L572: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[4] = x5;
      goto L573;
    }
  goto ret0;

 L573: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[2] = x6;
      goto L574;
    }
  goto ret0;

 L574: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 32LL
      && (((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 49;
    }
  goto ret0;

 L1263: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 116;
    }
  goto ret0;

 L917: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L918;
    }
  goto ret0;

 L918: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L919;
    }
  goto ret0;

 L919: __attribute__ ((__unused__))
  if ((!optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 73;
    }
  goto ret0;

 L951: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L952;
    }
  goto ret0;

 L952: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L953;
    }
  goto ret0;

 L953: __attribute__ ((__unused__))
  if ((!optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 75;
    }
  goto ret0;

 L985: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L986;
    }
  goto ret0;

 L986: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L987;
    }
  goto ret0;

 L987: __attribute__ ((__unused__))
  if ((!optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 77;
    }
  goto ret0;

 L1019: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1020;
    }
  goto ret0;

 L1020: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1021;
    }
  goto ret0;

 L1021: __attribute__ ((__unused__))
  if ((!optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 79;
    }
  goto ret0;

 L1066: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1067;
    }
  goto ret0;

 L1067: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 85;
    }
  goto ret0;

 L1096: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1097;
    }
  goto ret0;

 L1097: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 89;
    }
  goto ret0;

 L1143: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      return 96;
    }
  goto ret0;

 L1241: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == NOT)
    goto L1242;
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1152;
    }
 L1157: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1158;
    }
  goto ret0;

 L1242: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1243;
    }
  goto ret0;

 L1243: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == NOT)
    goto L1244;
  goto ret0;

 L1244: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1245;
    }
  goto ret0;

 L1245: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 113;
    }
  goto ret0;

 L1152: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1153;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L1157;

 L1153: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 98;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L1157;

 L1158: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1159;
    }
  goto ret0;

 L1159: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 99;
    }
  goto ret0;

 L1181: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1182;
    }
 L1187: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1188;
    }
  goto ret0;

 L1182: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1183;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L1187;

 L1183: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 103;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L1187;

 L1188: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1189;
    }
  goto ret0;

 L1189: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 104;
    }
  goto ret0;

 L1205: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (uns_arith_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1206;
    }
  goto ret0;

 L1206: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (uns_arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1207;
    }
  goto ret0;

 L1207: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 107;
    }
 L1213: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 108;
    }
  goto ret0;

 L1298: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case HImode:
      goto L3406;
    case QImode:
      goto L3407;
    default:
      break;
    }
  goto ret0;

 L3406: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == TRUNCATE)
    goto L1299;
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1322;
    }
 L3409: __attribute__ ((__unused__))
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1327;
    }
  goto ret0;

 L1299: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1300;
    }
  goto ret0;

 L1300: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 122;
    }
  goto ret0;

 L1322: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 126;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3409;

 L1327: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 127;
    }
  goto ret0;

 L3407: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == TRUNCATE)
    goto L1305;
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1352;
    }
 L3411: __attribute__ ((__unused__))
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1357;
    }
  goto ret0;

 L1305: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1306;
    }
  goto ret0;

 L1306: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 123;
    }
  goto ret0;

 L1352: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 132;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3411;

 L1357: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 133;
    }
  goto ret0;

 L1382: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case HImode:
      goto L3412;
    case QImode:
      goto L3413;
    default:
      break;
    }
  goto ret0;

 L3412: __attribute__ ((__unused__))
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      return 138;
    }
  goto ret0;

 L3413: __attribute__ ((__unused__))
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      return 140;
    }
  goto ret0;

 L1404: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3414;
    case SFmode:
      goto L3415;
    default:
      break;
    }
  goto ret0;

 L3414: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1405;
    }
  goto ret0;

 L1405: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && (!(mips_isa == 1))))
    {
      return 143;
    }
 L1418: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && !(!(mips_isa == 1)))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 144;
    }
  goto ret0;

 L3415: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1423;
    }
  goto ret0;

 L1423: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (!(mips_isa == 1))))
    {
      return 145;
    }
 L1436: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && !(!(mips_isa == 1)))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 146;
    }
  goto ret0;

 L3390: __attribute__ ((__unused__))
  if ((((((x1)->fld[0]).rtvec))->num_elem) == 1
      && (((x1)->fld[1]).rtint) == 0)
    goto L1470;
  goto ret0;

 L1470: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (general_operand (x2, BLKmode))
    {
      operands[1] = x2;
      goto L1471;
    }
  goto ret0;

 L1471: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 153;
    }
  goto ret0;

 L1488: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (immediate_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1489;
    }
  goto ret0;

 L1489: __attribute__ ((__unused__))
  if ((mips_split_addresses && !(target_flags & 0x00100000)))
    {
      return 157;
    }
  goto ret0;

 L1493: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1494;
    }
  goto ret0;

 L1494: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1495;
    }
  goto ret0;

 L1495: __attribute__ ((__unused__))
  if ((mips_split_addresses && !(target_flags & 0x00100000)))
    {
      return 158;
    }
  goto ret0;

 L1747: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1748;
    }
  goto ret0;

 L1748: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1749;
    }
  goto ret0;

 L1749: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 195;
    }
 L1755: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 196;
    }
  goto ret0;

 L1798: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1799;
    }
  goto ret0;

 L1799: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1800;
    }
  goto ret0;

 L1800: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 202;
    }
 L1806: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 203;
    }
  goto ret0;

 L1849: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3416;
  goto ret0;

 L3416: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1850;
    }
 L3417: __attribute__ ((__unused__))
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1862;
    }
  goto ret0;

 L1850: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1851;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3417;

 L1851: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 209;
    }
 L1857: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 210;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3417;

 L1862: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1863;
    }
  goto ret0;

 L1863: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 211;
    }
  goto ret0;

 L1906: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1907;
    }
  goto ret0;

 L1907: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1908;
    }
  goto ret0;

 L1908: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )))
    {
      return 217;
    }
  goto ret0;

 L2031: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2032;
    }
  goto ret0;

 L2032: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CONST_INT)
    goto L3418;
  goto ret0;

 L3418: __attribute__ ((__unused__))
  if ((((x2)->fld[0]).rtwint) == 0LL)
    goto L3420;
  goto ret0;

 L3420: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 231;
    }
 L3421: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 232;
    }
  goto ret0;

 L2051: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2052;
    }
  goto ret0;

 L2052: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CONST_INT
      && (((x2)->fld[0]).rtwint) == 0LL
      && (!(target_flags & 0x00100000)))
    {
      return 235;
    }
  goto ret0;

 L2061: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2062;
    }
  goto ret0;

 L2062: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2063;
    }
 L2068: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2069;
    }
  goto ret0;

 L2063: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 237;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L2068;

 L2069: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 238;
    }
  goto ret0;

 L2085: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2086;
    }
  goto ret0;

 L2086: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2087;
    }
  goto ret0;

 L2087: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 241;
    }
 L2093: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 242;
    }
  goto ret0;

 L2109: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2110;
    }
  goto ret0;

 L2110: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L2111;
    }
  goto ret0;

 L2111: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 245;
    }
 L2117: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 246;
    }
  goto ret0;

 L2133: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2134;
    }
  goto ret0;

 L2134: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2135;
    }
 L2140: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2141;
    }
  goto ret0;

 L2135: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 249;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L2140;

 L2141: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 250;
    }
  goto ret0;

 L2157: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2158;
    }
  goto ret0;

 L2158: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2159;
    }
  goto ret0;

 L2159: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 253;
    }
 L2165: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 254;
    }
  goto ret0;

 L2181: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2182;
    }
  goto ret0;

 L2182: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L2183;
    }
  goto ret0;

 L2183: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 257;
    }
 L2189: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 258;
    }
  goto ret0;

 L2663: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2664;
    }
 L2681: __attribute__ ((__unused__))
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2682;
    }
  goto ret0;

 L2664: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  switch (((enum machine_mode) (x3)->mode))
    {
    case SImode:
      goto L3422;
    case DImode:
      goto L3423;
    default:
      break;
    }
  goto L2681;

 L3422: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2665;
    }
  goto L2681;

 L2665: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2666;
  goto L2681;

 L2666: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2667;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L2667: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2668;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L2668: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) || 0))
    {
      return 319;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L3423: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2674;
    }
  goto L2681;

 L2674: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2675;
  goto L2681;

 L2675: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2676;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L2676: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2677;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L2677: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) || 0))
    {
      return 320;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2681;

 L2682: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2683;
    }
  goto ret0;

 L2683: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2684;
  goto ret0;

 L2684: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2685;
    }
  goto ret0;

 L2685: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2686;
    }
  goto ret0;

 L2686: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100))))
    {
      return 321;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_4 (rtx, rtx, int *);
static int
recog_4 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[1]).rtx);
  switch (((enum rtx_code) (x1)->code))
    {
    case MINUS:
      goto L169;
    case SIGN_EXTEND:
      goto L181;
    case MULT:
      goto L381;
    case NEG:
      goto L460;
    case TRUNCATE:
      goto L594;
    case PLUS:
      goto L663;
    case DIV:
      goto L934;
    case MOD:
      goto L968;
    case UDIV:
      goto L1002;
    case UMOD:
      goto L1036;
    case ABS:
      goto L1071;
    case FFS:
      goto L1111;
    case NOT:
      goto L1147;
    case AND:
      goto L1163;
    case IOR:
      goto L1193;
    case XOR:
      goto L1217;
    case ZERO_EXTEND:
      goto L1316;
    case FIX:
      goto L1440;
    case UNSPEC:
      goto L3461;
    case ASHIFT:
      goto L1786;
    case ASHIFTRT:
      goto L1837;
    case LSHIFTRT:
      goto L1894;
    case ROTATERT:
      goto L1912;
    case EQ:
      goto L2041;
    case NE:
      goto L2056;
    case GT:
      goto L2073;
    case LT:
      goto L2097;
    case LE:
      goto L2121;
    case GTU:
      goto L2145;
    case LTU:
      goto L2169;
    case LEU:
      goto L2193;
    case IF_THEN_ELSE:
      goto L2690;
    default:
     break;
   }
  goto ret0;

 L169: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3462;
  goto ret0;

 L3462: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L170;
 L3463: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L176;
    }
 L3464: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L485;
    }
  goto ret0;

 L170: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[1] = x2;
      goto L171;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3463;

 L171: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 26;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3463;

 L176: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L177;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3464;

 L177: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT
       || ((((operands[2])->fld[0]).rtwint) != -32768 && (((operands[2])->fld[0]).rtwint) != -0x4000))))
    {
      return 27;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3464;

 L485: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == MULT)
    goto L486;
  goto ret0;

 L486: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L487;
    }
  goto ret0;

 L487: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L488;
    }
  goto ret0;

 L488: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[5] = x3;
      goto L489;
    }
  goto ret0;

 L489: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L490;
    }
  goto ret0;

 L490: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && ((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && ((enum rtx_code) (operands[4])->code) == ((enum rtx_code) (operands[5])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 46;
    }
  goto ret0;

 L181: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3465;
    case HImode:
      goto L3467;
    case QImode:
      goto L3468;
    default:
      break;
    }
  goto ret0;

 L3465: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case MINUS:
      goto L182;
    case SUBREG:
      goto L3469;
    default:
     break;
   }
  goto ret0;

 L182: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (reg_or_0_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L183;
    }
 L189: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L190;
    }
  goto ret0;

 L183: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L184;
    }
  x3 = (((x2)->fld[0]).rtx);
  goto L189;

 L184: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 28;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L189;

 L190: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L191;
    }
  goto ret0;

 L191: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT
       || ((((operands[2])->fld[0]).rtwint) != -32768 && (((operands[2])->fld[0]).rtwint) != -0x4000))))
    {
      return 29;
    }
  goto ret0;

 L3469: __attribute__ ((__unused__))
  if ((((x2)->fld[1]).rtint) == 0)
    goto L1367;
  goto ret0;

 L1367: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (memory_operand (x3, HImode))
    {
      operands[1] = x3;
      goto L1368;
    }
  goto ret0;

 L1368: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 135;
    }
  goto ret0;

 L3467: __attribute__ ((__unused__))
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1378;
    }
  goto ret0;

 L1378: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 137;
    }
  goto ret0;

 L3468: __attribute__ ((__unused__))
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1395;
    }
  goto ret0;

 L1395: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 141;
    }
  goto ret0;

 L381: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3470;
  goto ret0;

 L3470: __attribute__ ((__unused__))
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L382;
    }
 L3471: __attribute__ ((__unused__))
  if (extend_operator (x2, DImode))
    {
      operands[3] = x2;
      goto L418;
    }
  goto ret0;

 L382: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L383;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3471;

 L383: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(mips_arch == PROCESSOR_R4000) && !(target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 41;
    }
 L402: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && ((((mips_arch == PROCESSOR_R3900)) && !(target_flags & 0x00100000)) || (mips_arch == PROCESSOR_R4000) || (target_flags & 0x00100000)))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 3;
      return 42;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3471;

 L418: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L419;
    }
  goto ret0;

 L419: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (extend_operator (x2, DImode))
    {
      operands[4] = x2;
      goto L420;
    }
  goto ret0;

 L420: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L421;
    }
  goto ret0;

 L421: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 43;
    }
 L442: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 44;
    }
  goto ret0;

 L460: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3472;
  goto ret0;

 L3472: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MULT)
    goto L461;
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1129;
    }
  goto ret0;

 L461: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L462;
    }
  goto ret0;

 L462: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L463;
    }
  goto ret0;

 L463: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L464;
    }
  goto ret0;

 L464: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L465;
    }
  goto ret0;

 L465: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && ((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 45;
    }
  goto ret0;

 L1129: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 93;
    }
  goto ret0;

 L594: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == TImode
      && ((enum rtx_code) (x2)->code) == LSHIFTRT)
    goto L595;
  goto ret0;

 L595: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == TImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L596;
  goto ret0;

 L596: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == TImode)
    goto L3474;
  goto ret0;

 L3474: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x4)->code))
    {
    case SIGN_EXTEND:
      goto L597;
    case ZERO_EXTEND:
      goto L623;
    default:
     break;
   }
  goto ret0;

 L597: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (se_register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L598;
    }
  goto ret0;

 L598: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum machine_mode) (x4)->mode) == TImode
      && ((enum rtx_code) (x4)->code) == SIGN_EXTEND)
    goto L599;
  goto ret0;

 L599: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (se_register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L600;
    }
  goto ret0;

 L600: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 64LL
      && ((target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 50;
    }
  goto ret0;

 L623: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (se_register_operand (x5, DImode))
    {
      operands[1] = x5;
      goto L624;
    }
  goto ret0;

 L624: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum machine_mode) (x4)->mode) == TImode
      && ((enum rtx_code) (x4)->code) == ZERO_EXTEND)
    goto L625;
  goto ret0;

 L625: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (se_register_operand (x5, DImode))
    {
      operands[2] = x5;
      goto L626;
    }
  goto ret0;

 L626: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 64LL
      && ((target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 51;
    }
  goto ret0;

 L663: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == MULT)
    goto L664;
  goto ret0;

 L664: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L665;
    }
  goto ret0;

 L665: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L666;
    }
  goto ret0;

 L666: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L667;
    }
  goto ret0;

 L667: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L668;
    }
  goto ret0;

 L668: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (rtx_equal_p (x2, operands[0])
      && ((target_flags & 0x00040000)
   && ! (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 53;
    }
 L692: __attribute__ ((__unused__))
  if (rtx_equal_p (x2, operands[0])
      && ((target_flags & 0x00040000)
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 54;
    }
  goto ret0;

 L934: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L935;
    }
  goto ret0;

 L935: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L936;
    }
  goto ret0;

 L936: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 74;
    }
  goto ret0;

 L968: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L969;
    }
  goto ret0;

 L969: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L970;
    }
  goto ret0;

 L970: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 76;
    }
  goto ret0;

 L1002: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1003;
    }
  goto ret0;

 L1003: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1004;
    }
  goto ret0;

 L1004: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 78;
    }
  goto ret0;

 L1036: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1037;
    }
  goto ret0;

 L1037: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_nonmemory_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1038;
    }
  goto ret0;

 L1038: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 80;
    }
  goto ret0;

 L1071: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1072;
    }
  goto ret0;

 L1072: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 86;
    }
  goto ret0;

 L1111: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1112;
    }
  goto ret0;

 L1112: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 2;
      return 90;
    }
  goto ret0;

 L1147: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      return 97;
    }
  goto ret0;

 L1163: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3477;
  goto ret0;

 L3477: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == NOT)
    goto L1250;
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1164;
    }
  goto ret0;

 L1250: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1251;
    }
  goto ret0;

 L1251: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == NOT)
    goto L1252;
  goto ret0;

 L1252: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1253;
    }
  goto ret0;

 L1253: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 114;
    }
  goto ret0;

 L1164: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1165;
    }
 L1176: __attribute__ ((__unused__))
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1177;
    }
  goto ret0;

 L1165: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) || !(target_flags & 0)) && !(target_flags & 0x00100000)))
    {
      return 100;
    }
 L1171: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) || !(target_flags & 0)) && (target_flags & 0x00100000)))
    {
      return 101;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L1176;

 L1177: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 102;
    }
  goto ret0;

 L1193: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1194;
    }
  goto ret0;

 L1194: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1195;
    }
  goto ret0;

 L1195: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) || !(target_flags & 0)) && !(target_flags & 0x00100000)))
    {
      return 105;
    }
 L1201: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) || !(target_flags & 0)) && (target_flags & 0x00100000)))
    {
      return 106;
    }
  goto ret0;

 L1217: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1218;
    }
  goto ret0;

 L1218: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1219;
    }
 L1230: __attribute__ ((__unused__))
  if (se_uns_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1231;
    }
  goto ret0;

 L1219: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) || !(target_flags & 0)) && !(target_flags & 0x00100000)))
    {
      return 109;
    }
 L1225: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 110;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L1230;

 L1231: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 111;
    }
 L1237: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 112;
    }
  goto ret0;

 L1316: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3478;
    case HImode:
      goto L3479;
    case QImode:
      goto L3481;
    default:
      break;
    }
  goto ret0;

 L3478: __attribute__ ((__unused__))
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1317;
    }
  goto ret0;

 L1317: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 125;
    }
  goto ret0;

 L3479: __attribute__ ((__unused__))
  if (nonimmediate_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1332;
    }
 L3480: __attribute__ ((__unused__))
  if (memory_operand (x2, HImode))
    {
      operands[1] = x2;
      goto L1337;
    }
  goto ret0;

 L1332: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 128;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3480;

 L1337: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 129;
    }
  goto ret0;

 L3481: __attribute__ ((__unused__))
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1362;
    }
 L3482: __attribute__ ((__unused__))
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1373;
    }
  goto ret0;

 L1362: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 134;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3482;

 L1373: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 136;
    }
  goto ret0;

 L1440: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3483;
    case SFmode:
      goto L3484;
    default:
      break;
    }
  goto ret0;

 L3483: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L1441;
    }
  goto ret0;

 L1441: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (target_flags & 0x00000200) && (! (target_flags & 0x00020000))))
    {
      return 147;
    }
  goto ret0;

 L3484: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L1446;
    }
  goto ret0;

 L1446: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (target_flags & 0x00000200) && (! (target_flags & 0x00020000))))
    {
      return 148;
    }
  goto ret0;

 L3461: __attribute__ ((__unused__))
  if ((((((x1)->fld[0]).rtvec))->num_elem) == 1
      && (((x1)->fld[1]).rtint) == 2)
    goto L1480;
  goto ret0;

 L1480: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (general_operand (x2, BLKmode))
    {
      operands[1] = x2;
      return 155;
    }
  goto ret0;

 L1786: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1787;
    }
  goto ret0;

 L1787: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1788;
    }
  goto ret0;

 L1788: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 200;
    }
 L1794: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 201;
    }
  goto ret0;

 L1837: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1838;
    }
  goto ret0;

 L1838: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1839;
    }
  goto ret0;

 L1839: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 207;
    }
 L1845: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 208;
    }
  goto ret0;

 L1894: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1895;
    }
  goto ret0;

 L1895: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1896;
    }
  goto ret0;

 L1896: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 215;
    }
 L1902: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 216;
    }
  goto ret0;

 L1912: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1913;
    }
  goto ret0;

 L1913: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1914;
    }
  goto ret0;

 L1914: __attribute__ ((__unused__))
  if ((((target_flags & 0x00002000) && ((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) ))))
    {
      return 218;
    }
  goto ret0;

 L2041: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2042;
    }
  goto ret0;

 L2042: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CONST_INT)
    goto L3485;
  goto ret0;

 L3485: __attribute__ ((__unused__))
  if ((((x2)->fld[0]).rtwint) == 0LL)
    goto L3487;
  goto ret0;

 L3487: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 233;
    }
 L3488: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 234;
    }
  goto ret0;

 L2056: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2057;
    }
  goto ret0;

 L2057: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CONST_INT
      && (((x2)->fld[0]).rtwint) == 0LL
      && ((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 236;
    }
  goto ret0;

 L2073: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2074;
    }
  goto ret0;

 L2074: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2075;
    }
 L2080: __attribute__ ((__unused__))
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2081;
    }
  goto ret0;

 L2075: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 239;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L2080;

 L2081: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 240;
    }
  goto ret0;

 L2097: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2098;
    }
  goto ret0;

 L2098: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2099;
    }
  goto ret0;

 L2099: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 243;
    }
 L2105: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 244;
    }
  goto ret0;

 L2121: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2122;
    }
  goto ret0;

 L2122: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[2] = x2;
      goto L2123;
    }
  goto ret0;

 L2123: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 247;
    }
 L2129: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 248;
    }
  goto ret0;

 L2145: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2146;
    }
  goto ret0;

 L2146: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2147;
    }
 L2152: __attribute__ ((__unused__))
  if (se_register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2153;
    }
  goto ret0;

 L2147: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 251;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[1]).rtx);
  goto L2152;

 L2153: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 252;
    }
  goto ret0;

 L2169: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2170;
    }
  goto ret0;

 L2170: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2171;
    }
  goto ret0;

 L2171: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 255;
    }
 L2177: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)))
    {
      return 256;
    }
  goto ret0;

 L2193: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2194;
    }
  goto ret0;

 L2194: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[2] = x2;
      goto L2195;
    }
  goto ret0;

 L2195: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 259;
    }
 L2201: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000) && (((operands[2])->fld[0]).rtwint) < 32767))
    {
      return 260;
    }
  goto ret0;

 L2690: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (equality_op (x2, VOIDmode))
    {
      operands[4] = x2;
      goto L2691;
    }
 L2708: __attribute__ ((__unused__))
  if (equality_op (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2709;
    }
  goto ret0;

 L2691: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  switch (((enum machine_mode) (x3)->mode))
    {
    case SImode:
      goto L3489;
    case DImode:
      goto L3490;
    default:
      break;
    }
  goto L2708;

 L3489: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2692;
    }
  goto L2708;

 L2692: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2693;
  goto L2708;

 L2693: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2694;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L2694: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L2695;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L2695: __attribute__ ((__unused__))
  if ((((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) || 0) && (target_flags & 0x00002000)))
    {
      return 322;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L3490: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2701;
    }
  goto L2708;

 L2701: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2702;
  goto L2708;

 L2702: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2703;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L2703: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L2704;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L2704: __attribute__ ((__unused__))
  if ((((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) || 0) && (target_flags & 0x00002000)))
    {
      return 323;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2708;

 L2709: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, CCmode))
    {
      operands[4] = x3;
      goto L2710;
    }
  goto ret0;

 L2710: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2711;
  goto ret0;

 L2711: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2712;
    }
  goto ret0;

 L2712: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2713;
    }
  goto ret0;

 L2713: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(mips_arch == PROCESSOR_R5500) && !(target_flags & 0x00100000)) && (! (target_flags & 0x00000100)) && (target_flags & 0x00002000)))
    {
      return 324;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_5 (rtx, rtx, int *);
static int
recog_5 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[0]).rtx);
  switch (((enum machine_mode) (x1)->mode))
    {
    case DFmode:
      goto L3281;
    case SFmode:
      goto L3280;
    case SImode:
      goto L3277;
    case DImode:
      goto L3286;
    case HImode:
      goto L3272;
    case QImode:
      goto L3273;
    case BLKmode:
      goto L3274;
    case CCmode:
      goto L3279;
    default:
      break;
    }
 L1916: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == PC)
    goto L2322;
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L2436;
    }
  goto ret0;

 L3281: __attribute__ ((__unused__))
  tem = recog_1 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L1916;

 L3280: __attribute__ ((__unused__))
  tem = recog_2 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  goto L1916;

 L3277: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == MEM)
    goto L1522;
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L22;
    }
 L3263: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 29)
    goto L28;
 L3264: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L34;
    }
 L3268: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 29)
    goto L120;
 L3269: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L126;
    }
 L3278: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L1528;
    }
 L3288: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2794;
    }
  goto L1916;

 L1522: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L1523;
  goto L3278;

 L1523: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == REG
      && (((x3)->fld[0]).rtint) == 29)
    goto L1524;
  goto L3278;

 L1524: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, SImode))
    {
      operands[0] = x3;
      goto L1525;
    }
  goto L3278;

 L1525: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode
      && ((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 31
      && ((target_flags & 0x00100000)))
    {
      return 165;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3278;

 L22: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode
      && ((enum rtx_code) (x1)->code) == PLUS)
    goto L23;
  x1 = (((x0)->fld[0]).rtx);
  goto L3263;

 L23: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L24;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3263;

 L24: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L25;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3263;

 L25: __attribute__ ((__unused__))
  if ((! (target_flags & 0x00100000)
   && ((target_flags & 0x00000010)
       || ((enum rtx_code) (operands[2])->code) != CONST_INT
       || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 4;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3263;

 L28: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode
      && ((enum rtx_code) (x1)->code) == PLUS)
    goto L29;
  x1 = (((x0)->fld[0]).rtx);
  goto L3264;

 L29: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L30;
  x1 = (((x0)->fld[0]).rtx);
  goto L3264;

 L30: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[0] = x2;
      goto L31;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3264;

 L31: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 5;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3264;

 L34: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode)
    goto L3352;
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L3352: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L35;
    case MINUS:
      goto L115;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L35: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3354;
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L3354: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L36;
 L3355: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L42;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L36: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[1] = x2;
      goto L37;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3355;

 L37: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 6;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3355;

 L42: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L43;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L43: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[1])->code) != REG
       || (((operands[1])->fld[0]).rtuint) >= 176
       || ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
       || (((operands[1])->fld[0]).rtuint) == 0
       || (((operands[1])->fld[0]).rtuint) == (0 + 1)
       || (((operands[1])->fld[0]).rtuint) == (0 + 29))
   && (((enum rtx_code) (operands[2])->code) != REG
       || (((operands[2])->fld[0]).rtuint) >= 176
       || ((((((operands[2])->fld[0]).rtuint)) >= 2 && ((((operands[2])->fld[0]).rtuint)) <= 7) || ((((operands[2])->fld[0]).rtuint)) == 16 || ((((operands[2])->fld[0]).rtuint)) == 17)
       || (((operands[2])->fld[0]).rtuint) == 0
       || (((operands[2])->fld[0]).rtuint) == (0 + 1)
       || (((operands[2])->fld[0]).rtuint) == (0 + 29))))
    {
      return 7;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L115: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L116;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L116: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L117;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L117: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 18;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3268;

 L120: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode
      && ((enum rtx_code) (x1)->code) == MINUS)
    goto L121;
  x1 = (((x0)->fld[0]).rtx);
  goto L3269;

 L121: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L122;
  x1 = (((x0)->fld[0]).rtx);
  goto L3269;

 L122: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, SImode))
    {
      operands[0] = x2;
      goto L123;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3269;

 L123: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 19;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3269;

 L126: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode)
    goto L3356;
  x1 = (((x0)->fld[0]).rtx);
  goto L3278;

 L3356: __attribute__ ((__unused__))
  tem = recog_3 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = (((x0)->fld[0]).rtx);
  goto L3278;

 L1528: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (move_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L1529;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3288;

 L1529: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (register_operand (operands[0], SImode)
       || register_operand (operands[1], SImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0))))
    {
      return 166;
    }
 L1533: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (register_operand (operands[0], SImode)
       || register_operand (operands[1], SImode)
       || (((enum rtx_code) (operands[0])->code) == MEM
    && ((enum rtx_code) ((((operands[0])->fld[0]).rtx))->code) == PLUS
    && ((enum rtx_code) (((((((operands[0])->fld[0]).rtx))->fld[1]).rtx))->code) == CONST
    && mips16_gp_offset_p (((((((operands[0])->fld[0]).rtx))->fld[1]).rtx))
    && ((enum rtx_code) (operands[1])->code) == CONST_INT
    && (((unsigned long long) ((((operands[1])->fld[0]).rtwint) + 0x8000) < 0x10000)
        || ((unsigned long long) ((((operands[1])->fld[0]).rtwint)) < 0x10000))))))
    {
      return 167;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3288;

 L2794: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (address_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L2795;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2795: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == SImode))
    {
      return 340;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3286: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 28)
    goto L1650;
 L3265: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L64;
    }
 L3266: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 29)
    goto L70;
 L3267: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L76;
    }
 L3270: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 29)
    goto L162;
 L3271: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L168;
    }
 L3275: __attribute__ ((__unused__))
  if (memory_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L1498;
    }
 L3276: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L1513;
    }
 L3289: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2798;
    }
  goto L1916;

 L1650: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == UNSPEC_VOLATILE
      && (((((x1)->fld[0]).rtvec))->num_elem) == 2
      && (((x1)->fld[1]).rtint) == 7)
    goto L1651;
  x1 = (((x0)->fld[0]).rtx);
  goto L3265;

 L1651: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (address_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L1652;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3265;

 L1652: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[1]);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1653;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3265;

 L1653: __attribute__ ((__unused__))
  if (pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 189;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3265;

 L64: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == PLUS)
    goto L65;
  x1 = (((x0)->fld[0]).rtx);
  goto L3266;

 L65: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L66;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3266;

 L66: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L67;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3266;

 L67: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && !(target_flags & 0x00100000)
   && ((target_flags & 0x00000010)
       || ((enum rtx_code) (operands[2])->code) != CONST_INT
       || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 10;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3266;

 L70: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == PLUS)
    goto L71;
  x1 = (((x0)->fld[0]).rtx);
  goto L3267;

 L71: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L72;
  x1 = (((x0)->fld[0]).rtx);
  goto L3267;

 L72: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[0] = x2;
      goto L73;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3267;

 L73: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000)))
    {
      return 11;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3267;

 L76: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode)
    goto L3424;
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L3424: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L77;
    case SIGN_EXTEND:
      goto L89;
    case MINUS:
      goto L157;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L77: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3427;
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L3427: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L78;
 L3428: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L84;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L78: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[1] = x2;
      goto L79;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3428;

 L79: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000)))
    {
      return 12;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3428;

 L84: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L85;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L85: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000)
   && (((enum rtx_code) (operands[1])->code) != REG
       || (((operands[1])->fld[0]).rtuint) >= 176
       || ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
       || (((operands[1])->fld[0]).rtuint) == 0
       || (((operands[1])->fld[0]).rtuint) == (0 + 1)
       || (((operands[1])->fld[0]).rtuint) == (0 + 29))
   && (((enum rtx_code) (operands[2])->code) != REG
       || (((operands[2])->fld[0]).rtuint) >= 176
       || ((((((operands[2])->fld[0]).rtuint)) >= 2 && ((((operands[2])->fld[0]).rtuint)) <= 7) || ((((operands[2])->fld[0]).rtuint)) == 16 || ((((operands[2])->fld[0]).rtuint)) == 17)
       || (((operands[2])->fld[0]).rtuint) == 0
       || (((operands[2])->fld[0]).rtuint) == (0 + 1)
       || (((operands[2])->fld[0]).rtuint) == (0 + 29))))
    {
      return 13;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L89: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L90;
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L90: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (reg_or_0_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L91;
    }
 L97: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L98;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L91: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L92;
    }
  x3 = (((x2)->fld[0]).rtx);
  goto L97;

 L92: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && !(target_flags & 0x00100000)
   && ((target_flags & 0x00000010)
       || ((enum rtx_code) (operands[2])->code) != CONST_INT
       || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 14;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L97;

 L98: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (arith_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L99;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L99: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000)))
    {
      return 15;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L157: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L158;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L158: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (se_arith_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L159;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L159: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 24;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3270;

 L162: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == MINUS)
    goto L163;
  x1 = (((x0)->fld[0]).rtx);
  goto L3271;

 L163: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 29)
    goto L164;
  x1 = (((x0)->fld[0]).rtx);
  goto L3271;

 L164: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (small_int (x2, DImode))
    {
      operands[0] = x2;
      goto L165;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3271;

 L165: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (((enum rtx_code) (operands[2])->code) != CONST_INT || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 25;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3271;

 L168: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode)
    goto L3429;
  x1 = (((x0)->fld[0]).rtx);
  goto L3275;

 L3429: __attribute__ ((__unused__))
  tem = recog_4 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x1 = (((x0)->fld[0]).rtx);
  goto L3275;

 L1498: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == REG
      && (((x1)->fld[0]).rtint) == 31
      && ((target_flags & 0x00100000) && (target_flags & 0x00002000)))
    {
      return 159;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3276;

 L1513: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode
      && ((enum rtx_code) (x1)->code) == SIGN_EXTEND)
    goto L1514;
  if (general_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L1502;
    }
 L1509: __attribute__ ((__unused__))
  if (move_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L1510;
    }
 L1518: __attribute__ ((__unused__))
  if (movdi_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L1519;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3289;

 L1514: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (move_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1515;
    }
  goto L1518;

 L1515: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0)
       || operands[1] == (const_tiny_rtx[0][(int) (DImode)]))))
    {
      return 163;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1518;

 L1502: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0x00100000)
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0)
       || operands[1] == (const_tiny_rtx[0][(int) (DImode)]))))
    {
      return 160;
    }
 L1506: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && (target_flags & 0x00100000)
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode))))
    {
      return 161;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1509;

 L1510: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)
   && (register_operand (operands[0], DImode)
       || register_operand (operands[1], DImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0)
       || operands[1] == (const_tiny_rtx[0][(int) (DImode)]))))
    {
      return 162;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1518;

 L1519: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000)
   && (register_operand (operands[0], DImode)
       || se_register_operand (operands[1], DImode))))
    {
      return 164;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3289;

 L2798: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (address_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L2799;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2799: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode))
    {
      return 341;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3272: __attribute__ ((__unused__))
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L1266;
    }
 L3282: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L1598;
    }
  goto L1916;

 L1266: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == HImode)
    goto L3491;
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L3491: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case TRUNCATE:
      goto L1267;
    case ZERO_EXTEND:
      goto L1310;
    case SIGN_EXTEND:
      goto L1386;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1267: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1268;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1268: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 117;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1310: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == QImode)
    goto L3494;
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L3494: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == TRUNCATE)
    goto L1311;
  if (nonimmediate_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1342;
    }
 L3496: __attribute__ ((__unused__))
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      goto L1347;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1311: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1312;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1312: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 124;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1342: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 130;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3496;

 L1347: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 131;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1386: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (memory_operand (x2, QImode))
    {
      operands[1] = x2;
      return 139;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3282;

 L1598: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (general_operand (x1, HImode))
    {
      operands[1] = x1;
      goto L1599;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L1599: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (register_operand (operands[0], HImode)
       || register_operand (operands[1], HImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0))))
    {
      return 178;
    }
 L1603: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (register_operand (operands[0], HImode)
       || register_operand (operands[1], HImode))))
    {
      return 179;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3273: __attribute__ ((__unused__))
  if (register_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L1271;
    }
 L3283: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L1606;
    }
  goto L1916;

 L1271: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == QImode
      && ((enum rtx_code) (x1)->code) == TRUNCATE)
    goto L1272;
  x1 = (((x0)->fld[0]).rtx);
  goto L3283;

 L1272: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L1273;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3283;

 L1273: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 118;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3283;

 L1606: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (general_operand (x1, QImode))
    {
      operands[1] = x1;
      goto L1607;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L1607: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (register_operand (operands[0], QImode)
       || register_operand (operands[1], QImode)
       || (((enum rtx_code) (operands[1])->code) == CONST_INT && (((operands[1])->fld[0]).rtwint) == 0))))
    {
      return 180;
    }
 L1611: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)
   && (register_operand (operands[0], QImode)
       || register_operand (operands[1], QImode))))
    {
      return 181;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3274: __attribute__ ((__unused__))
  if (memory_operand (x1, BLKmode))
    {
      operands[0] = x1;
      goto L1474;
    }
  goto L1916;

 L1474: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == BLKmode)
    goto L3497;
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3497: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == UNSPEC)
    goto L3499;
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3499: __attribute__ ((__unused__))
  if ((((((x1)->fld[0]).rtvec))->num_elem) == 1)
    goto L3501;
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3501: __attribute__ ((__unused__))
  switch ((((x1)->fld[1]).rtint))
    {
    case 1LL:
      goto L1475;
    case 3LL:
      goto L1484;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L1475: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L1476;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L1476: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 154;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L1484: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (reg_or_0_operand (x2, DImode))
    {
      operands[1] = x2;
      return 156;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3279: __attribute__ ((__unused__))
  if (nonimmediate_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L1538;
    }
 L3287: __attribute__ ((__unused__))
  if (register_operand (x1, CCmode))
    {
      operands[0] = x1;
      goto L2204;
    }
  goto L1916;

 L1538: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (general_operand (x1, CCmode))
    {
      operands[1] = x1;
      goto L1539;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3287;

 L1539: __attribute__ ((__unused__))
  if ((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && (! (target_flags & 0x00000100))))
    {
      return 169;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L3287;

 L2204: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == CCmode)
    goto L3503;
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3503: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case UNORDERED:
      goto L2205;
    case UNLT:
      goto L2211;
    case UNEQ:
      goto L2217;
    case UNLE:
      goto L2223;
    case EQ:
      goto L2229;
    case LT:
      goto L2235;
    case LE:
      goto L2241;
    case GT:
      goto L2247;
    case GE:
      goto L2253;
    default:
     break;
   }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2205: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3512;
    case SFmode:
      goto L3513;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3512: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2206;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2206: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2207;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2207: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 261;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3513: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2260;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2260: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2261;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2261: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 270;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2211: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3514;
    case SFmode:
      goto L3515;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3514: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2212;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2212: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2213;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2213: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 262;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3515: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2266;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2266: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2267;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2267: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 271;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2217: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3516;
    case SFmode:
      goto L3517;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3516: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2218;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2218: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2219;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2219: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 263;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3517: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2272;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2272: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2273;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2273: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 272;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2223: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3518;
    case SFmode:
      goto L3519;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3518: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2224;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2224: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2225;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2225: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 264;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3519: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2278;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2278: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2279;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2279: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 273;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2229: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3520;
    case SFmode:
      goto L3521;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3520: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2230;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2230: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2231;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2231: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 265;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3521: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2284;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2284: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2285;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2285: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 274;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2235: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3522;
    case SFmode:
      goto L3523;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3522: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2236;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2236: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2237;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2237: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 266;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3523: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2290;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2290: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2291;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2291: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 275;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2241: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3524;
    case SFmode:
      goto L3525;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3524: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2242;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2242: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2243;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2243: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 267;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3525: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2296;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2296: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2297;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2297: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 276;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2247: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3526;
    case SFmode:
      goto L3527;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3526: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2248;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2248: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2249;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2249: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 268;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3527: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2302;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2302: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2303;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2303: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 277;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2253: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DFmode:
      goto L3528;
    case SFmode:
      goto L3529;
    default:
      break;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3528: __attribute__ ((__unused__))
  if (register_operand (x2, DFmode))
    {
      operands[1] = x2;
      goto L2254;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2254: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L2255;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2255: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000))))
    {
      return 269;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L3529: __attribute__ ((__unused__))
  if (register_operand (x2, SFmode))
    {
      operands[1] = x2;
      goto L2308;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2308: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L2309;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2309: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 278;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L1916;

 L2322: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  switch (((enum machine_mode) (x1)->mode))
    {
    case SImode:
      goto L3530;
    case DImode:
      goto L3531;
    default:
      break;
    }
 L1917: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case IF_THEN_ELSE:
      goto L1918;
    case LABEL_REF:
      goto L2313;
    default:
     break;
   }
  goto ret0;

 L3530: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2323;
    }
  goto L1917;

 L2323: __attribute__ ((__unused__))
  if ((!((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)))
    {
      return 281;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1917;

 L3531: __attribute__ ((__unused__))
  if (se_register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2327;
    }
  goto L1917;

 L2327: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode))
    {
      return 282;
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L1917;

 L1918: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case CCmode:
      goto L3532;
    case SImode:
      goto L3533;
    case DImode:
      goto L3534;
    default:
      break;
    }
  goto ret0;

 L3532: __attribute__ ((__unused__))
  if (cmp_op (x2, CCmode))
    {
      operands[0] = x2;
      goto L1919;
    }
  goto ret0;

 L1919: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, CCmode))
    {
      operands[2] = x3;
      goto L1920;
    }
  goto ret0;

 L1920: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L1921;
  goto ret0;

 L1921: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case LABEL_REF:
      goto L1922;
    case PC:
      goto L1931;
    default:
     break;
   }
  goto ret0;

 L1922: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1923;

 L1923: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == PC
      && ((! (target_flags & 0x00000100))))
    {
      return 219;
    }
  goto ret0;

 L1931: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L1932;
  goto ret0;

 L1932: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1933;

 L1933: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100))))
    {
      return 220;
    }
  goto ret0;

 L3533: __attribute__ ((__unused__))
  if (cmp_op (x2, SImode))
    {
      operands[0] = x2;
      goto L1938;
    }
 L3535: __attribute__ ((__unused__))
  if (equality_op (x2, SImode))
    {
      operands[0] = x2;
      goto L1976;
    }
  goto ret0;

 L1938: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1939;
    }
  goto L3535;

 L1939: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L1940;
  goto L3535;

 L1940: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case LABEL_REF:
      goto L1941;
    case PC:
      goto L1950;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  goto L3535;

 L1941: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1942;

 L1942: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == PC
      && (!(target_flags & 0x00100000)))
    {
      return 221;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3535;

 L1950: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L1951;
  x2 = (((x1)->fld[0]).rtx);
  goto L3535;

 L1951: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1952;

 L1952: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 222;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3535;

 L1976: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode)
    goto L3537;
  goto ret0;

 L3537: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1977;
    }
 L3538: __attribute__ ((__unused__))
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2015;
    }
  goto ret0;

 L1977: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L1978;
    }
  x3 = (((x2)->fld[0]).rtx);
  goto L3538;

 L1978: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case LABEL_REF:
      goto L1979;
    case PC:
      goto L1997;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3538;

 L1979: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1980;

 L1980: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == PC
      && (!(target_flags & 0x00100000)))
    {
      return 225;
    }
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3538;

 L1997: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L1998;
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3538;

 L1998: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1999;

 L1999: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 227;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3538;

 L2015: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2016;
  goto ret0;

 L2016: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L2017;
    }
  goto ret0;

 L2017: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2018;
    }
  goto ret0;

 L2018: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 229;
    }
  goto ret0;

 L3534: __attribute__ ((__unused__))
  if (cmp_op (x2, DImode))
    {
      operands[0] = x2;
      goto L1957;
    }
 L3536: __attribute__ ((__unused__))
  if (equality_op (x2, DImode))
    {
      operands[0] = x2;
      goto L1985;
    }
  goto ret0;

 L1957: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1958;
    }
  goto L3536;

 L1958: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L1959;
  goto L3536;

 L1959: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case LABEL_REF:
      goto L1960;
    case PC:
      goto L1969;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  goto L3536;

 L1960: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1961;

 L1961: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == PC
      && (!(target_flags & 0x00100000)))
    {
      return 223;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3536;

 L1969: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L1970;
  x2 = (((x1)->fld[0]).rtx);
  goto L3536;

 L1970: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1971;

 L1971: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 224;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3536;

 L1985: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode)
    goto L3539;
  goto ret0;

 L3539: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1986;
    }
 L3540: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2024;
    }
  goto ret0;

 L1986: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L1987;
    }
  x3 = (((x2)->fld[0]).rtx);
  goto L3540;

 L1987: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case LABEL_REF:
      goto L1988;
    case PC:
      goto L2007;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3540;

 L1988: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L1989;

 L1989: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == PC
      && (!(target_flags & 0x00100000)))
    {
      return 226;
    }
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3540;

 L2007: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L2008;
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3540;

 L2008: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L2009;

 L2009: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 228;
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3540;

 L2024: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum rtx_code) (x3)->code) == CONST_INT
      && (((x3)->fld[0]).rtwint) == 0LL)
    goto L2025;
  goto ret0;

 L2025: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L2026;
    }
  goto ret0;

 L2026: __attribute__ ((__unused__))
  x2 = (((x1)->fld[2]).rtx);
  if (pc_or_label_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2027;
    }
  goto ret0;

 L2027: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 230;
    }
  goto ret0;

 L2313: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  operands[0] = x2;
  goto L2314;

 L2314: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 279;
    }
 L2319: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 280;
    }
  goto ret0;

 L2436: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum rtx_code) (x1)->code) == UNSPEC
      && (((((x1)->fld[0]).rtvec))->num_elem) == 1
      && (((x1)->fld[1]).rtint) == 4)
    goto L2437;
  goto ret0;

 L2437: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  operands[1] = x2;
  goto L2438;

 L2438: __attribute__ ((__unused__))
  if (((target_flags & 0x00004000)
   && ((enum rtx_code) (operands[1])->code) == SYMBOL_REF)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 292;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_6 (rtx, rtx, int *);
static int
recog_6 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case DImode:
      goto L3544;
    case SImode:
      goto L3543;
    default:
      break;
    }
 L2330: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PC)
    goto L2331;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2430;
    }
  goto ret0;

 L3544: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 28)
    goto L1643;
 L3542: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L47;
    }
  goto L2330;

 L1643: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == UNSPEC_VOLATILE
      && (((((x2)->fld[0]).rtvec))->num_elem) == 2
      && (((x2)->fld[1]).rtint) == 7)
    goto L1644;
  x2 = (((x1)->fld[0]).rtx);
  goto L3542;

 L1644: __attribute__ ((__unused__))
  x3 = (((((x2)->fld[0]).rtvec))->elem[0]);
  if (address_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L1645;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3542;

 L1645: __attribute__ ((__unused__))
  x3 = (((((x2)->fld[0]).rtvec))->elem[1]);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1646;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3542;

 L1646: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1647;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L3542;

 L1647: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 1)
    {
      return 189;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L3542;

 L47: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3545;
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3545: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L48;
    case MINUS:
      goto L140;
    case MULT:
      goto L407;
    case DIV:
      goto L826;
    case UDIV:
      goto L876;
    case NEG:
      goto L1121;
    case ASHIFT:
      goto L1760;
    case ASHIFTRT:
      goto L1811;
    case LSHIFTRT:
      goto L1868;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L48: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode)
    goto L3555;
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3555: __attribute__ ((__unused__))
  if (((enum rtx_code) (x3)->code) == MULT)
    goto L652;
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L49;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L652: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L653;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L653: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L654;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L654: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L655;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L655: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L656;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L656: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L657;
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L657: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L658;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L658: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L659;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L659: __attribute__ ((__unused__))
  if (((target_flags & 0x00040000)
   && ! (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 53;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L49: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L50;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L59;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L50: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L51;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L51: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L52;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L52: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 8;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L59: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L60;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L60: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L61;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L61: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((target_flags & 0x00000010)
       || ((enum rtx_code) (operands[2])->code) != CONST_INT
       || (((operands[2])->fld[0]).rtwint) != -32768)))
    {
      return 9;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L140: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L141;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L141: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L142;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L151;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L142: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L143;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L143: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L144;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L144: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 22;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L151: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L152;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L152: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L153;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L153: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && (((operands[2])->fld[0]).rtwint) != -32768))
    {
      return 23;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L407: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L408;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L408: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L409;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L409: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L410;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L410: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L411;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L411: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L412;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L412: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L413;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L413: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 43;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L826: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L827;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L827: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L828;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L828: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L829;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L829: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L830;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L830: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == MOD)
    goto L831;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L831: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L832;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L832: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2])
      && ((target_flags & 0x00002000) && optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 68;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L876: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L877;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L877: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L878;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L878: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L879;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L879: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L880;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L880: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == UMOD)
    goto L881;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L881: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L882;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L882: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2])
      && ((target_flags & 0x00002000) && optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 70;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1121: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1122;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1122: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1123;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1123: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1124;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1124: __attribute__ ((__unused__))
  if ((! (target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 92;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1760: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1761;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1761: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1762;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1771;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1762: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1763;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1763: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1764;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1764: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 197;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1771: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1772;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1772: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1773;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1773: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return 198;
    }
 L1782: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return 199;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1811: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1812;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1812: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1813;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1822;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1813: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1814;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1814: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1815;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1815: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 204;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1822: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1823;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1823: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1824;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1824: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return 205;
    }
 L1833: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return 206;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1868: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1869;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1869: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1870;
    }
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L1879;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1870: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1871;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1871: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1872;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1872: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return 212;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1879: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1880;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1880: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1881;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1881: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return 213;
    }
 L1890: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00002000) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return 214;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3543: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L800;
    }
  goto L2330;

 L800: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3556;
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3556: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case DIV:
      goto L801;
    case UDIV:
      goto L851;
    case FIX:
      goto L1410;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L801: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L802;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L802: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L803;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L803: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L804;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L804: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L805;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L805: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == MOD)
    goto L806;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L806: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L807;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L807: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2])
      && (optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 67;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L851: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L852;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L852: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L853;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L853: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L854;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L854: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L855;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L855: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == UMOD)
    goto L856;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L856: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L857;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L857: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2])
      && (optimize)
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 69;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1410: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  switch (((enum machine_mode) (x3)->mode))
    {
    case DFmode:
      goto L3559;
    case SFmode:
      goto L3560;
    default:
      break;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3559: __attribute__ ((__unused__))
  if (register_operand (x3, DFmode))
    {
      operands[1] = x3;
      goto L1411;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1411: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1412;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1412: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DFmode))
    {
      operands[2] = x2;
      goto L1413;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1413: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && (! (target_flags & 0x00020000)) && !(!(mips_isa == 1))))
    {
      return 144;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L3560: __attribute__ ((__unused__))
  if (register_operand (x3, SFmode))
    {
      operands[1] = x3;
      goto L1429;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1429: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1430;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1430: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SFmode))
    {
      operands[2] = x2;
      goto L1431;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L1431: __attribute__ ((__unused__))
  if (((! (target_flags & 0x00000100)) && !(!(mips_isa == 1))))
    {
      return 146;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2330;

 L2331: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3563;
    case DImode:
      goto L3564;
    default:
      break;
    }
  goto ret0;

 L3563: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L2348;
    case MEM:
      goto L2382;
    case SUBREG:
    case REG:
    case ADDRESSOF:
      goto L3561;
    default:
      goto ret0;
   }
 L3561: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2332;
    }
  goto ret0;

 L2348: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2349;
    }
  goto ret0;

 L2349: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == LABEL_REF)
    goto L2350;
  goto ret0;

 L2350: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  operands[1] = x4;
  goto L2351;

 L2351: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L2352;
  goto ret0;

 L2352: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L2353;
  goto ret0;

 L2353: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1])
      && (!((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && next_active_insn (insn) != 0
   && ((enum rtx_code) ((((next_active_insn (insn))->fld[5]).rtx))->code) == ADDR_DIFF_VEC
   && (((next_active_insn (insn))->fld[1]).rtx) == operands[1]))
    {
      return 285;
    }
  goto ret0;

 L2382: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == PLUS)
    goto L2383;
  goto ret0;

 L2383: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == SImode
      && ((enum rtx_code) (x4)->code) == MULT)
    goto L2384;
  goto ret0;

 L2384: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[0] = x5;
      goto L2385;
    }
  goto ret0;

 L2385: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (((enum rtx_code) (x5)->code) == CONST_INT
      && (((x5)->fld[0]).rtwint) == 4LL)
    goto L2386;
  goto ret0;

 L2386: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == LABEL_REF)
    goto L2387;
  goto ret0;

 L2387: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  operands[1] = x5;
  goto L2388;

 L2388: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2389;
  goto ret0;

 L2389: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2390;
    }
  goto ret0;

 L2390: __attribute__ ((__unused__))
  if (((target_flags & 0x00004000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 287;
    }
  goto ret0;

 L2332: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L2333;
  goto ret0;

 L2333: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L2334;
  goto ret0;

 L2334: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L2335;

 L2335: __attribute__ ((__unused__))
  if ((!((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode)))
    {
      return 283;
    }
  goto ret0;

 L3564: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L2358;
    case MEM:
      goto L2410;
    case SUBREG:
    case REG:
    case SIGN_EXTEND:
      goto L3562;
    default:
      goto ret0;
   }
 L3562: __attribute__ ((__unused__))
  if (se_register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2340;
    }
  goto ret0;

 L2358: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2359;
    }
  goto ret0;

 L2359: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == LABEL_REF)
    goto L2360;
  goto ret0;

 L2360: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  operands[1] = x4;
  goto L2361;

 L2361: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L2362;
  goto ret0;

 L2362: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L2363;
  goto ret0;

 L2363: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1])
      && ((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode && next_active_insn (insn) != 0
   && ((enum rtx_code) ((((next_active_insn (insn))->fld[5]).rtx))->code) == ADDR_DIFF_VEC
   && (((next_active_insn (insn))->fld[1]).rtx) == operands[1]))
    {
      return 286;
    }
  goto ret0;

 L2410: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == PLUS)
    goto L2411;
  goto ret0;

 L2411: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == DImode
      && ((enum rtx_code) (x4)->code) == SIGN_EXTEND)
    goto L2412;
  goto ret0;

 L2412: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (((enum machine_mode) (x5)->mode) == SImode
      && ((enum rtx_code) (x5)->code) == MULT)
    goto L2413;
  goto ret0;

 L2413: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[0] = x6;
      goto L2414;
    }
  goto ret0;

 L2414: __attribute__ ((__unused__))
  x6 = (((x5)->fld[1]).rtx);
  if (((enum rtx_code) (x6)->code) == CONST_INT
      && (((x6)->fld[0]).rtwint) == 8LL)
    goto L2415;
  goto ret0;

 L2415: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == LABEL_REF)
    goto L2416;
  goto ret0;

 L2416: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  operands[1] = x5;
  goto L2417;

 L2417: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2418;
  goto ret0;

 L2418: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2419;
    }
  goto ret0;

 L2419: __attribute__ ((__unused__))
  if (((target_flags & 0x00004000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 288;
    }
  goto ret0;

 L2340: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L2341;
  goto ret0;

 L2341: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum rtx_code) (x2)->code) == LABEL_REF)
    goto L2342;
  goto ret0;

 L2342: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  operands[1] = x3;
  goto L2343;

 L2343: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode))
    {
      return 284;
    }
  goto ret0;

 L2430: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case UNSPEC:
      goto L3567;
    case CALL:
      goto L2527;
    default:
     break;
   }
  goto ret0;

 L3567: __attribute__ ((__unused__))
  if ((((((x2)->fld[0]).rtvec))->num_elem) == 1
      && (((x2)->fld[1]).rtint) == 4)
    goto L2431;
  goto ret0;

 L2431: __attribute__ ((__unused__))
  x3 = (((((x2)->fld[0]).rtvec))->elem[0]);
  operands[1] = x3;
  goto L2432;

 L2432: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2433;
  goto ret0;

 L2433: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 31
      && ((target_flags & 0x00004000)
   && ((enum rtx_code) (operands[1])->code) == SYMBOL_REF))
    {
      return 292;
    }
  goto ret0;

 L2527: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum rtx_code) (x3)->code) == MEM)
    goto L2528;
 L2557: __attribute__ ((__unused__))
  switch (((enum machine_mode) (x3)->mode))
    {
    case SImode:
      goto L3568;
    case DImode:
      goto L3569;
    default:
      break;
    }
  goto ret0;

 L2528: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (call_insn_operand (x4, VOIDmode))
    {
      operands[1] = x4;
      goto L2529;
    }
  goto L2557;

 L2529: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  operands[2] = x3;
  goto L2530;

 L2530: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2531;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L2557;

 L2531: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2532;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L2557;

 L2532: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && !(target_flags & 0x00000400) && !(target_flags & 0x00001000)
   && ((enum rtx_code) (operands[3])->code) == REG && (((operands[3])->fld[0]).rtuint) == 31))
    {
      return 304;
    }
 L2542: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 305;
    }
 L2552: __attribute__ ((__unused__))
  if (((target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 306;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L2557;

 L3568: __attribute__ ((__unused__))
  if (((enum rtx_code) (x3)->code) == MEM)
    goto L2558;
  goto ret0;

 L2558: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L2559;
    }
  goto ret0;

 L2559: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  operands[2] = x3;
  goto L2560;

 L2560: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2561;
  goto ret0;

 L2561: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2562;
    }
  goto ret0;

 L2562: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && !((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && !(target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 307;
    }
 L2582: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && !((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && !(target_flags & 0x00000400) && (target_flags & 0x00001000)
   && ((enum rtx_code) (operands[3])->code) == REG && (((operands[3])->fld[0]).rtuint) == 31))
    {
      return 309;
    }
 L2592: __attribute__ ((__unused__))
  if ((!((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && (target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 310;
    }
  goto ret0;

 L3569: __attribute__ ((__unused__))
  if (((enum rtx_code) (x3)->code) == MEM)
    goto L2568;
  goto ret0;

 L2568: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (se_register_operand (x4, DImode))
    {
      operands[1] = x4;
      goto L2569;
    }
  goto ret0;

 L2569: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  operands[2] = x3;
  goto L2570;

 L2570: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2571;
  goto ret0;

 L2571: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2572;
    }
  goto ret0;

 L2572: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode && !(target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 308;
    }
 L2602: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode && (target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 311;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_7 (rtx, rtx, int *);
static int
recog_7 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum rtx_code) (x2)->code))
    {
    case MULT:
      goto L371;
    case NEG:
      goto L447;
    case MINUS:
      goto L470;
    case TRUNCATE:
      goto L579;
    case PLUS:
      goto L673;
    case DIV:
      goto L812;
    case UDIV:
      goto L862;
    case MOD:
      goto L958;
    case UMOD:
      goto L1026;
    case FFS:
      goto L1102;
    default:
     break;
   }
  goto ret0;

 L371: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode)
    goto L3601;
  goto ret0;

 L3601: __attribute__ ((__unused__))
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L372;
    }
 L3602: __attribute__ ((__unused__))
  if (extend_operator (x3, DImode))
    {
      operands[3] = x3;
      goto L427;
    }
  goto ret0;

 L372: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L373;
    }
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L373: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L374;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L374: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L375;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L375: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L376;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L376: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L377;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L377: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(mips_arch == PROCESSOR_R4000) && !(target_flags & 0x00100000)))
    {
      return 41;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[0]).rtx);
  goto L3602;

 L427: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L428;
    }
  goto ret0;

 L428: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (extend_operator (x3, DImode))
    {
      operands[4] = x3;
      goto L429;
    }
  goto ret0;

 L429: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L430;
    }
  goto ret0;

 L430: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L431;
  goto ret0;

 L431: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L432;
    }
  goto ret0;

 L432: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L433;
  goto ret0;

 L433: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[6] = x2;
      goto L434;
    }
  goto ret0;

 L434: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 44;
    }
  goto ret0;

 L447: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L448;
  goto ret0;

 L448: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L449;
    }
  goto ret0;

 L449: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L450;
    }
  goto ret0;

 L450: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L451;
    }
  goto ret0;

 L451: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L452;
    }
  goto ret0;

 L452: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L453;
  goto ret0;

 L453: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L454;
    }
  goto ret0;

 L454: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L455;
  goto ret0;

 L455: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L456;
    }
  goto ret0;

 L456: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && ((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 45;
    }
  goto ret0;

 L470: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[3] = x3;
      goto L471;
    }
  goto ret0;

 L471: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L472;
  goto ret0;

 L472: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L473;
    }
  goto ret0;

 L473: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L474;
    }
  goto ret0;

 L474: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[5] = x4;
      goto L475;
    }
  goto ret0;

 L475: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L476;
    }
  goto ret0;

 L476: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L477;
  goto ret0;

 L477: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L478;
    }
  goto ret0;

 L478: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L479;
  goto ret0;

 L479: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L480;
    }
  goto ret0;

 L480: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)
   && ((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && ((enum rtx_code) (operands[4])->code) == ((enum rtx_code) (operands[5])->code)))
    {
      return 46;
    }
  goto ret0;

 L579: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == TImode
      && ((enum rtx_code) (x3)->code) == LSHIFTRT)
    goto L580;
  goto ret0;

 L580: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == TImode
      && ((enum rtx_code) (x4)->code) == MULT)
    goto L581;
  goto ret0;

 L581: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (((enum machine_mode) (x5)->mode) == TImode)
    goto L3603;
  goto ret0;

 L3603: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x5)->code))
    {
    case SIGN_EXTEND:
      goto L582;
    case ZERO_EXTEND:
      goto L608;
    default:
     break;
   }
  goto ret0;

 L582: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (se_register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L583;
    }
  goto ret0;

 L583: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (((enum machine_mode) (x5)->mode) == TImode
      && ((enum rtx_code) (x5)->code) == SIGN_EXTEND)
    goto L584;
  goto ret0;

 L584: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (se_register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L585;
    }
  goto ret0;

 L585: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == CONST_INT
      && (((x4)->fld[0]).rtwint) == 64LL)
    goto L586;
  goto ret0;

 L586: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L587;
  goto ret0;

 L587: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L588;
    }
  goto ret0;

 L588: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L589;
  goto ret0;

 L589: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L590;
    }
  goto ret0;

 L590: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 50;
    }
  goto ret0;

 L608: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (se_register_operand (x6, DImode))
    {
      operands[1] = x6;
      goto L609;
    }
  goto ret0;

 L609: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (((enum machine_mode) (x5)->mode) == TImode
      && ((enum rtx_code) (x5)->code) == ZERO_EXTEND)
    goto L610;
  goto ret0;

 L610: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (se_register_operand (x6, DImode))
    {
      operands[2] = x6;
      goto L611;
    }
  goto ret0;

 L611: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == CONST_INT
      && (((x4)->fld[0]).rtwint) == 64LL)
    goto L612;
  goto ret0;

 L612: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L613;
  goto ret0;

 L613: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L614;
    }
  goto ret0;

 L614: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L615;
  goto ret0;

 L615: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L616;
    }
  goto ret0;

 L616: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 51;
    }
  goto ret0;

 L673: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L674;
  goto ret0;

 L674: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[3] = x4;
      goto L675;
    }
  goto ret0;

 L675: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[1] = x5;
      goto L676;
    }
  goto ret0;

 L676: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (extend_operator (x4, DImode))
    {
      operands[4] = x4;
      goto L677;
    }
  goto ret0;

 L677: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[2] = x5;
      goto L678;
    }
  goto ret0;

 L678: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L679;
  goto ret0;

 L679: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L680;
  goto ret0;

 L680: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L681;
    }
  goto ret0;

 L681: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L682;
  goto ret0;

 L682: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L683;
    }
  goto ret0;

 L683: __attribute__ ((__unused__))
  if (((target_flags & 0x00040000)
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 54;
    }
  goto ret0;

 L812: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L813;
    }
  goto ret0;

 L813: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L814;
    }
 L925: __attribute__ ((__unused__))
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L926;
    }
  goto ret0;

 L814: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L815;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L815: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L816;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L816: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == MOD)
    goto L817;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L817: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L818;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L818: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2]))
    goto L819;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L819: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L820;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L820: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L821;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L821: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && optimize))
    {
      return 68;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L925;

 L926: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L927;
  goto ret0;

 L927: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L928;
    }
  goto ret0;

 L928: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L929;
  goto ret0;

 L929: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L930;
    }
  goto ret0;

 L930: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize))
    {
      return 74;
    }
  goto ret0;

 L862: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L863;
    }
  goto ret0;

 L863: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L864;
    }
 L993: __attribute__ ((__unused__))
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L994;
    }
  goto ret0;

 L864: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L865;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L865: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L866;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L866: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == UMOD)
    goto L867;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L867: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L868;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L868: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2]))
    goto L869;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L869: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L870;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L870: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L871;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L871: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && optimize))
    {
      return 70;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L993;

 L994: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L995;
  goto ret0;

 L995: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L996;
    }
  goto ret0;

 L996: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L997;
  goto ret0;

 L997: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L998;
    }
  goto ret0;

 L998: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize))
    {
      return 78;
    }
  goto ret0;

 L958: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L959;
    }
  goto ret0;

 L959: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L960;
    }
  goto ret0;

 L960: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L961;
  goto ret0;

 L961: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L962;
    }
  goto ret0;

 L962: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L963;
  goto ret0;

 L963: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L964;
    }
  goto ret0;

 L964: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize))
    {
      return 76;
    }
  goto ret0;

 L1026: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1027;
    }
  goto ret0;

 L1027: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (se_nonmemory_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L1028;
    }
  goto ret0;

 L1028: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1029;
  goto ret0;

 L1029: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1030;
    }
  goto ret0;

 L1030: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1031;
  goto ret0;

 L1031: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L1032;
    }
  goto ret0;

 L1032: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !optimize))
    {
      return 80;
    }
  goto ret0;

 L1102: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L1103;
    }
  goto ret0;

 L1103: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1104;
  goto ret0;

 L1104: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L1105;
    }
  goto ret0;

 L1105: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1106;
  goto ret0;

 L1106: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L1107;
    }
  goto ret0;

 L1107: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && !(target_flags & 0x00100000)))
    {
      return 90;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_8 (rtx, rtx, int *);
static int
recog_8 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3581;
    case DImode:
      goto L3582;
    default:
      break;
    }
 L2366: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == PC)
    goto L2367;
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2606;
    }
  goto ret0;

 L3581: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L238;
    }
  goto L2366;

 L238: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3583;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L3583: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case MULT:
      goto L239;
    case TRUNCATE:
      goto L495;
    case PLUS:
      goto L631;
    case DIV:
      goto L787;
    case UDIV:
      goto L837;
    case MOD:
      goto L941;
    case UMOD:
      goto L1009;
    case FFS:
      goto L1087;
    default:
     break;
   }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L239: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L240;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L240: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L241;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L241: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L242;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L242: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L243;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L243: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L244;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L244: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L245;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L245: __attribute__ ((__unused__))
  if ((!(mips_arch == PROCESSOR_R4000) || (target_flags & 0x00100000)))
    {
      return 35;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L495: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (highpart_shift_operator (x3, DImode))
    {
      operands[5] = x3;
      goto L496;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L496: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == DImode
      && ((enum rtx_code) (x4)->code) == MULT)
    goto L497;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L497: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[3] = x5;
      goto L498;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L498: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[1] = x6;
      goto L499;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L499: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[4] = x5;
      goto L500;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L500: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[2] = x6;
      goto L501;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L501: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == CONST_INT
      && (((x4)->fld[0]).rtwint) == 32LL)
    goto L502;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L502: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L503;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L503: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L504;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L504: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L505;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L505: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L506;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L506: __attribute__ ((__unused__))
  if ((((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 47;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L631: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L632;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L632: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L633;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L633: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L634;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L634: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L635;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L635: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L636;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L636: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L637;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L637: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L638;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L638: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L639;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L639: __attribute__ ((__unused__))
  if (((target_flags & 0x00040000)))
    {
      return 52;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L787: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L788;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L788: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L789;
    }
 L908: __attribute__ ((__unused__))
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L909;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L789: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L790;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L790: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L791;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L791: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == MOD)
    goto L792;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L792: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L793;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L793: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2]))
    goto L794;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L794: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L795;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L795: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L796;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L796: __attribute__ ((__unused__))
  if ((optimize))
    {
      return 67;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L908;

 L909: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L910;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L910: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L911;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L911: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L912;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L912: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L913;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L913: __attribute__ ((__unused__))
  if ((!optimize))
    {
      return 73;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L837: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L838;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L838: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L839;
    }
 L976: __attribute__ ((__unused__))
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L977;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L839: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L840;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L840: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L841;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L841: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == UMOD)
    goto L842;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L842: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[1]))
    goto L843;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L843: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2]))
    goto L844;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L844: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L845;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L845: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L846;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L846: __attribute__ ((__unused__))
  if ((optimize))
    {
      return 69;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[1]).rtx);
  x3 = (((x2)->fld[1]).rtx);
  goto L976;

 L977: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L978;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L978: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L979;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L979: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L980;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L980: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L981;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L981: __attribute__ ((__unused__))
  if ((!optimize))
    {
      return 77;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L941: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L942;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L942: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L943;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L943: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L944;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L944: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L945;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L945: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L946;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L946: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L947;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L947: __attribute__ ((__unused__))
  if ((!optimize))
    {
      return 75;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1009: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1010;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1010: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (nonmemory_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L1011;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1011: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1012;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1012: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1013;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1013: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1014;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1014: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L1015;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1015: __attribute__ ((__unused__))
  if ((!optimize))
    {
      return 79;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1087: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L1088;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1088: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1089;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1089: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L1090;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1090: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1091;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1091: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L1092;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L1092: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 89;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L3582: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L370;
    }
  goto L2366;

 L370: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3591;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L3591: __attribute__ ((__unused__))
  tem = recog_7 (x0, insn, pnum_clobbers);
  if (tem >= 0)
    return tem;
  x2 = (((x1)->fld[0]).rtx);
  goto L2366;

 L2367: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3605;
    case DImode:
      goto L3606;
    default:
      break;
    }
  goto ret0;

 L3605: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MEM)
    goto L2368;
  goto ret0;

 L2368: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == PLUS)
    goto L2369;
  goto ret0;

 L2369: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == SImode
      && ((enum rtx_code) (x4)->code) == MULT)
    goto L2370;
  goto ret0;

 L2370: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (register_operand (x5, SImode))
    {
      operands[0] = x5;
      goto L2371;
    }
  goto ret0;

 L2371: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (((enum rtx_code) (x5)->code) == CONST_INT
      && (((x5)->fld[0]).rtwint) == 4LL)
    goto L2372;
  goto ret0;

 L2372: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == LABEL_REF)
    goto L2373;
  goto ret0;

 L2373: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  operands[1] = x5;
  goto L2374;

 L2374: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2375;
  goto ret0;

 L2375: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2376;
    }
  goto ret0;

 L2376: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2377;
  goto ret0;

 L2377: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 31
      && ((target_flags & 0x00004000)))
    {
      return 287;
    }
  goto ret0;

 L3606: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MEM)
    goto L2395;
  goto ret0;

 L2395: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == DImode
      && ((enum rtx_code) (x3)->code) == PLUS)
    goto L2396;
  goto ret0;

 L2396: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == DImode
      && ((enum rtx_code) (x4)->code) == SIGN_EXTEND)
    goto L2397;
  goto ret0;

 L2397: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (((enum machine_mode) (x5)->mode) == SImode
      && ((enum rtx_code) (x5)->code) == MULT)
    goto L2398;
  goto ret0;

 L2398: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[0] = x6;
      goto L2399;
    }
  goto ret0;

 L2399: __attribute__ ((__unused__))
  x6 = (((x5)->fld[1]).rtx);
  if (((enum rtx_code) (x6)->code) == CONST_INT
      && (((x6)->fld[0]).rtwint) == 8LL)
    goto L2400;
  goto ret0;

 L2400: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == LABEL_REF)
    goto L2401;
  goto ret0;

 L2401: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  operands[1] = x5;
  goto L2402;

 L2402: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2403;
  goto ret0;

 L2403: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2404;
    }
  goto ret0;

 L2404: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2405;
  goto ret0;

 L2405: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 31
      && ((target_flags & 0x00004000)))
    {
      return 288;
    }
  goto ret0;

 L2606: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CALL)
    goto L2607;
  goto ret0;

 L2607: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum rtx_code) (x3)->code) == MEM)
    goto L2608;
  goto ret0;

 L2608: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (call_insn_operand (x4, VOIDmode))
    {
      operands[1] = x4;
      goto L2609;
    }
  goto ret0;

 L2609: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  operands[2] = x3;
  goto L2610;

 L2610: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L2611;
  goto ret0;

 L2611: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, VOIDmode))
    {
      operands[3] = x2;
      goto L2612;
    }
  goto ret0;

 L2612: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum rtx_code) (x2)->code) == CALL)
    goto L2613;
  goto ret0;

 L2613: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum rtx_code) (x3)->code) == MEM)
    goto L2614;
  goto ret0;

 L2614: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (rtx_equal_p (x4, operands[1]))
    goto L2615;
  goto ret0;

 L2615: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (rtx_equal_p (x3, operands[2]))
    goto L2616;
  goto ret0;

 L2616: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2617;
  goto ret0;

 L2617: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2618;
    }
  goto ret0;

 L2618: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 312;
    }
 L2634: __attribute__ ((__unused__))
  if (((target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 313;
    }
  goto ret0;
 ret0:
  return -1;
}

static int recog_9 (rtx, rtx, int *);
static int
recog_9 (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));

  switch ((((((x0)->fld[0]).rtvec))->num_elem))
    {
    case 2:
      goto L45;
    case 4:
      goto L217;
    case 3:
      goto L236;
    case 5:
      goto L272;
    case 8:
      goto L1655;
    default:
      break;
    }
  goto ret0;

 L45: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  switch (((enum rtx_code) (x1)->code))
    {
    case SET:
      goto L46;
    case TRAP_IF:
      goto L891;
    case USE:
      goto L2425;
    case UNSPEC:
      goto L3541;
    case CALL:
      goto L2461;
    default:
     break;
   }
  goto ret0;

 L46: __attribute__ ((__unused__))
  return recog_6 (x0, insn, pnum_clobbers);

 L891: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum rtx_code) (x2)->code) == EQ)
    goto L892;
  goto ret0;

 L892: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L893;
    }
  goto ret0;

 L893: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (true_reg_or_0_operand (x3, VOIDmode))
    {
      operands[1] = x3;
      goto L894;
    }
  goto ret0;

 L894: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (immediate_operand (x2, VOIDmode))
    {
      operands[2] = x2;
      goto L895;
    }
  goto ret0;

 L895: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L896;
  goto ret0;

 L896: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == REG
      && (((x2)->fld[0]).rtint) == 24
      && ((target_flags & 0x00100000)))
    {
      return 72;
    }
  goto ret0;

 L2425: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (pmode_register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L2426;
    }
  goto ret0;

 L2426: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == RETURN)
    {
      return 291;
    }
  goto ret0;

 L3541: __attribute__ ((__unused__))
  if ((((((x1)->fld[0]).rtvec))->num_elem) == 1
      && (((x1)->fld[1]).rtint) == 11)
    goto L2441;
  goto ret0;

 L2441: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3570;
    case DImode:
      goto L3571;
    default:
      break;
    }
  goto ret0;

 L3570: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2442;
    }
  goto ret0;

 L2442: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2443;
  goto ret0;

 L2443: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2444;
    }
  goto ret0;

 L2444: __attribute__ ((__unused__))
  if ((! (target_flags & 0x00002000)))
    {
      return 293;
    }
  goto ret0;

 L3571: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2451;
    }
  goto ret0;

 L2451: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2452;
  goto ret0;

 L2452: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2453;
    }
  goto ret0;

 L2453: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000)))
    {
      return 294;
    }
  goto ret0;

 L2461: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum rtx_code) (x2)->code) == MEM)
    goto L2462;
 L2485: __attribute__ ((__unused__))
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3572;
    case DImode:
      goto L3573;
    default:
      break;
    }
  goto ret0;

 L2462: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (call_insn_operand (x3, VOIDmode))
    {
      operands[0] = x3;
      goto L2463;
    }
  goto L2485;

 L2463: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  operands[1] = x2;
  goto L2464;

 L2464: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2465;
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2485;

 L2465: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2466;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2485;

 L2466: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && !(target_flags & 0x00000400) && !(target_flags & 0x00001000)
   && ((enum rtx_code) (operands[2])->code) == REG && (((operands[2])->fld[0]).rtuint) == 31))
    {
      return 296;
    }
 L2474: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 297;
    }
 L2482: __attribute__ ((__unused__))
  if (((target_flags & 0x00000400) && !(target_flags & 0x00001000)))
    {
      return 298;
    }
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  x2 = (((x1)->fld[0]).rtx);
  goto L2485;

 L3572: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MEM)
    goto L2486;
  goto ret0;

 L2486: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[0] = x3;
      goto L2487;
    }
  goto ret0;

 L2487: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  operands[1] = x2;
  goto L2488;

 L2488: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2489;
  goto ret0;

 L2489: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2490;
    }
  goto ret0;

 L2490: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && !((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && !(target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 299;
    }
 L2506: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && !((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && !(target_flags & 0x00000400) && (target_flags & 0x00001000)
   && ((enum rtx_code) (operands[2])->code) == REG && (((operands[2])->fld[0]).rtuint) == 31))
    {
      return 301;
    }
 L2514: __attribute__ ((__unused__))
  if ((!((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode) && (target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 302;
    }
  goto ret0;

 L3573: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == MEM)
    goto L2494;
  goto ret0;

 L2494: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[0] = x3;
      goto L2495;
    }
  goto ret0;

 L2495: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  operands[1] = x2;
  goto L2496;

 L2496: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2497;
  goto ret0;

 L2497: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2498;
    }
  goto ret0;

 L2498: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)
   && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode && !(target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 300;
    }
 L2522: __attribute__ ((__unused__))
  if (((((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode && (target_flags & 0x00000400) && (target_flags & 0x00001000)))
    {
      return 303;
    }
  goto ret0;

 L217: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L218;
  goto ret0;

 L218: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  switch (((enum machine_mode) (x2)->mode))
    {
    case SImode:
      goto L3574;
    case DImode:
      goto L3575;
    default:
      break;
    }
  goto ret0;

 L3574: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L219;
    }
  goto ret0;

 L219: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3576;
  goto ret0;

 L3576: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case MULT:
      goto L220;
    case NEG:
      goto L325;
    case TRUNCATE:
      goto L521;
    default:
     break;
   }
  goto ret0;

 L220: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L221;
    }
  goto ret0;

 L221: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[2] = x3;
      goto L222;
    }
  goto ret0;

 L222: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L223;
  goto ret0;

 L223: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L224;
    }
  goto ret0;

 L224: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L225;
  goto ret0;

 L225: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L226;
    }
  goto ret0;

 L226: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L227;
  goto ret0;

 L227: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L228;
    }
  goto ret0;

 L228: __attribute__ ((__unused__))
  if (((((mips_arch == PROCESSOR_R3900) || (mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000))
   || (target_flags & 0x00040000)))
    {
      return 34;
    }
 L264: __attribute__ ((__unused__))
  if (((mips_arch == PROCESSOR_R4000) && !(target_flags & 0x00100000)))
    {
      return 36;
    }
  goto ret0;

 L325: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L326;
  goto ret0;

 L326: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L327;
    }
  goto ret0;

 L327: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L328;
    }
  goto ret0;

 L328: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L329;
  goto ret0;

 L329: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L330;
    }
  goto ret0;

 L330: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L331;
  goto ret0;

 L331: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L332;
    }
  goto ret0;

 L332: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L333;
  goto ret0;

 L333: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L334;
    }
  goto ret0;

 L334: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) ) && (target_flags & 0x00002000)))
    {
      return 39;
    }
  goto ret0;

 L521: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (highpart_shift_operator (x3, DImode))
    {
      operands[5] = x3;
      goto L522;
    }
  goto ret0;

 L522: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (((enum machine_mode) (x4)->mode) == DImode)
    goto L3579;
  goto ret0;

 L3579: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x4)->code))
    {
    case MULT:
      goto L523;
    case NEG:
      goto L551;
    default:
     break;
   }
  goto ret0;

 L523: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[3] = x5;
      goto L524;
    }
  goto ret0;

 L524: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[1] = x6;
      goto L525;
    }
  goto ret0;

 L525: __attribute__ ((__unused__))
  x5 = (((x4)->fld[1]).rtx);
  if (extend_operator (x5, DImode))
    {
      operands[4] = x5;
      goto L526;
    }
  goto ret0;

 L526: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (register_operand (x6, SImode))
    {
      operands[2] = x6;
      goto L527;
    }
  goto ret0;

 L527: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == CONST_INT
      && (((x4)->fld[0]).rtwint) == 32LL)
    goto L528;
  goto ret0;

 L528: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L529;
  goto ret0;

 L529: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L530;
    }
  goto ret0;

 L530: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L531;
  goto ret0;

 L531: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L532;
    }
  goto ret0;

 L532: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L533;
  goto ret0;

 L533: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[8] = x2;
      goto L534;
    }
  goto ret0;

 L534: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 48;
    }
  goto ret0;

 L551: __attribute__ ((__unused__))
  x5 = (((x4)->fld[0]).rtx);
  if (((enum machine_mode) (x5)->mode) == DImode
      && ((enum rtx_code) (x5)->code) == MULT)
    goto L552;
  goto ret0;

 L552: __attribute__ ((__unused__))
  x6 = (((x5)->fld[0]).rtx);
  if (extend_operator (x6, DImode))
    {
      operands[3] = x6;
      goto L553;
    }
  goto ret0;

 L553: __attribute__ ((__unused__))
  x7 = (((x6)->fld[0]).rtx);
  if (register_operand (x7, SImode))
    {
      operands[1] = x7;
      goto L554;
    }
  goto ret0;

 L554: __attribute__ ((__unused__))
  x6 = (((x5)->fld[1]).rtx);
  if (extend_operator (x6, DImode))
    {
      operands[4] = x6;
      goto L555;
    }
  goto ret0;

 L555: __attribute__ ((__unused__))
  x7 = (((x6)->fld[0]).rtx);
  if (register_operand (x7, SImode))
    {
      operands[2] = x7;
      goto L556;
    }
  goto ret0;

 L556: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (((enum rtx_code) (x4)->code) == CONST_INT
      && (((x4)->fld[0]).rtwint) == 32LL)
    goto L557;
  goto ret0;

 L557: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L558;
  goto ret0;

 L558: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L559;
    }
  goto ret0;

 L559: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L560;
  goto ret0;

 L560: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L561;
    }
  goto ret0;

 L561: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L562;
  goto ret0;

 L562: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[8] = x2;
      goto L563;
    }
  goto ret0;

 L563: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) )
   && (target_flags & 0x00002000)
   && ((enum rtx_code) (operands[3])->code) == ((enum rtx_code) (operands[4])->code)))
    {
      return 49;
    }
  goto ret0;

 L3575: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L387;
    }
  goto ret0;

 L387: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == MULT)
    goto L388;
  goto ret0;

 L388: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (se_register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L389;
    }
  goto ret0;

 L389: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L390;
    }
  goto ret0;

 L390: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L391;
  goto ret0;

 L391: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L392;
    }
  goto ret0;

 L392: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L393;
  goto ret0;

 L393: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[4] = x2;
      goto L394;
    }
  goto ret0;

 L394: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L395;
  goto ret0;

 L395: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, DImode))
    {
      operands[5] = x2;
      goto L396;
    }
  goto ret0;

 L396: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && ((((mips_arch == PROCESSOR_R3900)) && !(target_flags & 0x00100000)) || (mips_arch == PROCESSOR_R4000) || (target_flags & 0x00100000))))
    {
      return 42;
    }
  goto ret0;

 L236: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L237;
  goto ret0;

 L237: __attribute__ ((__unused__))
  return recog_8 (x0, insn, pnum_clobbers);

 L272: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L273;
  goto ret0;

 L273: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L274;
    }
  goto ret0;

 L274: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3607;
  goto ret0;

 L3607: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L275;
    case MINUS:
      goto L300;
    default:
     break;
   }
  goto ret0;

 L275: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L276;
  goto ret0;

 L276: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L277;
    }
  goto ret0;

 L277: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L278;
    }
  goto ret0;

 L278: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L279;
    }
  goto ret0;

 L279: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L280;
  goto ret0;

 L280: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L281;
    }
  goto ret0;

 L281: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L282;
  goto ret0;

 L282: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L283;
    }
  goto ret0;

 L283: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L284;
  goto ret0;

 L284: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L285;
    }
  goto ret0;

 L285: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[4]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L286;
  goto ret0;

 L286: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L287;
    }
  goto ret0;

 L287: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R3900)
   || (mips_arch == PROCESSOR_R5400)
   || (mips_arch == PROCESSOR_R5500)
   || (((mips_isa == 32) || (mips_isa == 64) ) && !(target_flags & 0x00100000)))
   && !(target_flags & 0x00100000)))
    {
      return 37;
    }
  goto ret0;

 L300: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L301;
    }
  goto ret0;

 L301: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L302;
  goto ret0;

 L302: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L303;
    }
  goto ret0;

 L303: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[3] = x4;
      goto L304;
    }
  goto ret0;

 L304: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L305;
  goto ret0;

 L305: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L306;
    }
  goto ret0;

 L306: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L307;
  goto ret0;

 L307: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L308;
    }
  goto ret0;

 L308: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L309;
  goto ret0;

 L309: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L310;
    }
  goto ret0;

 L310: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[4]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L311;
  goto ret0;

 L311: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L312;
    }
  goto ret0;

 L312: __attribute__ ((__unused__))
  if (((((mips_isa == 32) || (mips_isa == 64) ) && !(target_flags & 0x00100000))))
    {
      return 38;
    }
 L358: __attribute__ ((__unused__))
  if ((((mips_arch == PROCESSOR_R5400) || (mips_arch == PROCESSOR_R5500) || (mips_arch == PROCESSOR_SR71000) ) && (target_flags & 0x00002000)))
    {
      return 40;
    }
  goto ret0;

 L1655: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L1656;
  goto ret0;

 L1656: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (memory_operand (x2, BLKmode))
    {
      operands[0] = x2;
      goto L1657;
    }
  goto ret0;

 L1657: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (memory_operand (x2, BLKmode))
    {
      operands[1] = x2;
      goto L1658;
    }
  goto ret0;

 L1658: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1659;
  goto ret0;

 L1659: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L1660;
    }
  goto ret0;

 L1660: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1661;
  goto ret0;

 L1661: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L1662;
    }
  goto ret0;

 L1662: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1663;
  goto ret0;

 L1663: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L1664;
    }
  goto ret0;

 L1664: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[4]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L1665;
  goto ret0;

 L1665: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L1666;
    }
  goto ret0;

 L1666: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[5]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L1667;
  goto ret0;

 L1667: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (small_int (x2, SImode))
    {
      operands[2] = x2;
      goto L1668;
    }
  goto ret0;

 L1668: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[6]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L1669;
  goto ret0;

 L1669: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (small_int (x2, SImode))
    {
      operands[3] = x2;
      goto L1670;
    }
  goto ret0;

 L1670: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[7]);
  if (((enum rtx_code) (x1)->code) == USE)
    goto L1671;
  goto ret0;

 L1671: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum rtx_code) (x2)->code) == CONST_INT)
    goto L3609;
  goto ret0;

 L3609: __attribute__ ((__unused__))
  if ((int) (((x2)->fld[0]).rtwint) == (((x2)->fld[0]).rtwint))
    switch ((int) (((x2)->fld[0]).rtwint))
      {
      case 0LL:
        goto L3614;
      case 1LL:
        goto L3616;
      case 2LL:
        goto L3618;
      default:
        break;
      }
  goto ret0;

 L3614: __attribute__ ((__unused__))
  return 190;
 L3615: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 191;
    }
  goto ret0;

 L3616: __attribute__ ((__unused__))
  return 192;
 L3617: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 193;
    }
  goto ret0;

 L3618: __attribute__ ((__unused__))
  return 194;
 ret0:
  return -1;
}

int recog (rtx, rtx, int *);
int
recog (x0, insn, pnum_clobbers)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
     int *pnum_clobbers __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  int tem __attribute__ ((__unused__));
  recog_data.insn = (rtx) 0;

  switch (((enum rtx_code) (x0)->code))
    {
    case TRAP_IF:
      goto L1;
    case SET:
      goto L9;
    case PARALLEL:
      goto L3240;
    case UNSPEC:
      goto L3244;
    case UNSPEC_VOLATILE:
      goto L3246;
    case RETURN:
      goto L3247;
    case PREFETCH:
      goto L2636;
    case CONST_INT:
      goto L3250;
    default:
     break;
   }
  goto ret0;

 L1: __attribute__ ((__unused__))
  x1 = (((x0)->fld[0]).rtx);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 1LL)
    goto L2;
  if (trap_cmp_op (x1, VOIDmode))
    {
      operands[0] = x1;
      goto L5;
    }
 L884: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == EQ)
    goto L885;
  goto ret0;

 L2: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL)
    {
      return 0;
    }
  goto ret0;

 L5: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (reg_or_0_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L6;
    }
  goto L884;

 L6: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (nonmemory_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L7;
    }
  goto L884;

 L7: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL
      && ((!(mips_isa == 1) && !(target_flags & 0x00100000))))
    {
      return 1;
    }
  x1 = (((x0)->fld[0]).rtx);
  goto L884;

 L885: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L886;
    }
  goto ret0;

 L886: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (true_reg_or_0_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L887;
    }
  goto ret0;

 L887: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (immediate_operand (x1, VOIDmode))
    {
      operands[2] = x1;
      goto L888;
    }
  goto ret0;

 L888: __attribute__ ((__unused__))
  if ((!(target_flags & 0x00100000)))
    {
      return 71;
    }
 L902: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 72;
    }
  goto ret0;

 L9: __attribute__ ((__unused__))
  return recog_5 (x0, insn, pnum_clobbers);

 L3240: __attribute__ ((__unused__))
  return recog_9 (x0, insn, pnum_clobbers);

 L3244: __attribute__ ((__unused__))
  if ((((((x0)->fld[0]).rtvec))->num_elem) == 1)
    goto L3619;
  goto ret0;

 L3619: __attribute__ ((__unused__))
  switch ((((x0)->fld[1]).rtint))
    {
    case 5LL:
      goto L1535;
    case 11LL:
      goto L2446;
    default:
      break;
    }
  goto ret0;

 L1535: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (register_operand (x1, VOIDmode))
    {
      operands[0] = x1;
      return 168;
    }
  goto ret0;

 L2446: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  switch (((enum machine_mode) (x1)->mode))
    {
    case SImode:
      goto L3621;
    case DImode:
      goto L3622;
    default:
      break;
    }
  goto ret0;

 L3621: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2447;
    }
  goto ret0;

 L2447: __attribute__ ((__unused__))
  if ((! (target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 293;
    }
  goto ret0;

 L3622: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2456;
    }
  goto ret0;

 L2456: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000))
      && pnum_clobbers != ((void *)0))
    {
      *pnum_clobbers = 1;
      return 294;
    }
  goto ret0;

 L3246: __attribute__ ((__unused__))
  if ((((((x0)->fld[0]).rtvec))->num_elem) == 1)
    goto L3623;
  goto ret0;

 L3623: __attribute__ ((__unused__))
  switch ((((x0)->fld[1]).rtint))
    {
    case 6LL:
      goto L2421;
    case 10LL:
      goto L2458;
    case 12LL:
      goto L2769;
    case 13LL:
      goto L2772;
    case 14LL:
      goto L2775;
    case 15LL:
      goto L2778;
    case 16LL:
      goto L2781;
    case 17LL:
      goto L2784;
    case 18LL:
      goto L2787;
    case 19LL:
      goto L2789;
    case 20LL:
      goto L2791;
    default:
      break;
    }
  goto ret0;

 L2421: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL)
    {
      return 289;
    }
  goto ret0;

 L2458: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL
      && ((target_flags & 0x00000400) && (mips_abi == 0 || mips_abi == 4)))
    {
      return 295;
    }
  goto ret0;

 L2769: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L2770;
    }
  goto ret0;

 L2770: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 331;
    }
  goto ret0;

 L2772: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L2773;
    }
  goto ret0;

 L2773: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 332;
    }
  goto ret0;

 L2775: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2776;
    }
  goto ret0;

 L2776: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 333;
    }
  goto ret0;

 L2778: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2779;
    }
  goto ret0;

 L2779: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 334;
    }
  goto ret0;

 L2781: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, SFmode))
    {
      operands[0] = x1;
      goto L2782;
    }
  goto ret0;

 L2782: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 335;
    }
  goto ret0;

 L2784: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (consttable_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L2785;
    }
  goto ret0;

 L2785: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000)))
    {
      return 336;
    }
  goto ret0;

 L2787: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL
      && ((target_flags & 0x00100000)))
    {
      return 337;
    }
  goto ret0;

 L2789: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL
      && ((target_flags & 0x00100000)))
    {
      return 338;
    }
  goto ret0;

 L2791: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == CONST_INT
      && (((x1)->fld[0]).rtwint) == 0LL
      && ((target_flags & 0x00100000)))
    {
      return 339;
    }
  goto ret0;

 L3247: __attribute__ ((__unused__))
  if ((mips_can_use_return_insn ()))
    {
      return 290;
    }
  goto ret0;

 L2636: __attribute__ ((__unused__))
  x1 = (((x0)->fld[0]).rtx);
  switch (((enum machine_mode) (x1)->mode))
    {
    case SImode:
      goto L3634;
    case DImode:
      goto L3636;
    default:
      break;
    }
  goto ret0;

 L3634: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == PLUS)
    goto L2637;
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2644;
    }
  goto ret0;

 L2637: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2638;
    }
  goto ret0;

 L2638: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2639;
    }
  goto ret0;

 L2639: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (const_int_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L2640;
    }
  goto ret0;

 L2640: __attribute__ ((__unused__))
  x1 = (((x0)->fld[2]).rtx);
  if (const_int_operand (x1, SImode))
    {
      operands[2] = x1;
      goto L2641;
    }
  goto ret0;

 L2641: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == SImode))
    {
      return 314;
    }
  goto ret0;

 L2644: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (const_int_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L2645;
    }
  goto ret0;

 L2645: __attribute__ ((__unused__))
  x1 = (((x0)->fld[2]).rtx);
  if (const_int_operand (x1, SImode))
    {
      operands[2] = x1;
      goto L2646;
    }
  goto ret0;

 L2646: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == SImode))
    {
      return 315;
    }
  goto ret0;

 L3636: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == PLUS)
    goto L2649;
  if (se_register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2656;
    }
  goto ret0;

 L2649: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (se_register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2650;
    }
  goto ret0;

 L2650: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, DImode))
    {
      operands[3] = x2;
      goto L2651;
    }
  goto ret0;

 L2651: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (const_int_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L2652;
    }
  goto ret0;

 L2652: __attribute__ ((__unused__))
  x1 = (((x0)->fld[2]).rtx);
  if (const_int_operand (x1, DImode))
    {
      operands[2] = x1;
      goto L2653;
    }
  goto ret0;

 L2653: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode))
    {
      return 316;
    }
  goto ret0;

 L2656: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (const_int_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L2657;
    }
  goto ret0;

 L2657: __attribute__ ((__unused__))
  x1 = (((x0)->fld[2]).rtx);
  if (const_int_operand (x1, DImode))
    {
      operands[2] = x1;
      goto L2658;
    }
  goto ret0;

 L2658: __attribute__ ((__unused__))
  if (((((mips_isa == 4) || (mips_isa == 32) || (mips_isa == 64)) && !(target_flags & 0x00100000)) && (((target_flags & 0x00000002) && (target_flags & 0x00002000)) ? DImode : SImode) == DImode))
    {
      return 317;
    }
  goto ret0;

 L3250: __attribute__ ((__unused__))
  if ((((x0)->fld[0]).rtwint) == 0LL)
    {
      return 318;
    }
  goto ret0;
 ret0:
  return -1;
}

static rtx split_1 (rtx, rtx);
static rtx
split_1 (x0, insn)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  rtx tem __attribute__ ((__unused__));

  x1 = (((x0)->fld[0]).rtx);
  switch (((enum machine_mode) (x1)->mode))
    {
    case SImode:
      goto L3640;
    case DImode:
      goto L3641;
    case HImode:
      goto L3642;
    case QImode:
      goto L3643;
    case DFmode:
      goto L3644;
    default:
      break;
    }
  goto ret0;

 L3640: __attribute__ ((__unused__))
  if (register_operand (x1, SImode))
    {
      operands[0] = x1;
      goto L2802;
    }
  goto ret0;

 L2802: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == SImode)
    goto L3645;
 L3049: __attribute__ ((__unused__))
  if (((enum rtx_code) (x1)->code) == CONST_INT)
    goto L3651;
  goto ret0;

 L3645: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L2803;
    case MINUS:
      goto L2863;
    case MEM:
      goto L3054;
    case ASHIFT:
      goto L3087;
    case ASHIFTRT:
      goto L3135;
    case LSHIFTRT:
      goto L3183;
    default:
     break;
   }
  goto L3049;

 L2803: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (rtx_equal_p (x2, operands[0]))
    goto L2804;
 L2809: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2810;
    }
  goto L3049;

 L2804: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2805;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2809;

 L2805: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) > 0x7f
 && (((operands[1])->fld[0]).rtwint) <= 0x7f + 0x7f)
       || ((((operands[1])->fld[0]).rtwint) < - 0x80
    && (((operands[1])->fld[0]).rtwint) >= - 0x80 - 0x80))))
    {
      return gen_split_344 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2809;

 L2810: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2811;
    }
  goto L3049;

 L2811: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == REG
   && ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
   && (((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((((operands[2])->fld[0]).rtwint) > 0x7
 && (((operands[2])->fld[0]).rtwint) <= 0x7 + 0x7f)
       || ((((operands[2])->fld[0]).rtwint) < - 0x8
    && (((operands[2])->fld[0]).rtwint) >= - 0x8 - 0x80))))
    {
      return gen_split_345 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L2863: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (rtx_equal_p (x2, operands[0]))
    goto L2864;
 L2869: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2870;
    }
  goto L3049;

 L2864: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L2865;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2869;

 L2865: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) > 0x80
 && (((operands[1])->fld[0]).rtwint) <= 0x80 + 0x80)
       || ((((operands[1])->fld[0]).rtwint) < - 0x7f
    && (((operands[1])->fld[0]).rtwint) >= - 0x7f - 0x7f))))
    {
      return gen_split_354 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2869;

 L2870: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L2871;
    }
  goto L3049;

 L2871: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == REG
   && ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
   && (((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((((operands[2])->fld[0]).rtwint) > 0x8
 && (((operands[2])->fld[0]).rtwint) <= 0x8 + 0x80)
       || ((((operands[2])->fld[0]).rtwint) < - 0x7
    && (((operands[2])->fld[0]).rtwint) >= - 0x7 - 0x7f))))
    {
      return gen_split_355 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L3054: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L3055;
  goto L3049;

 L3055: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L3056;
  goto L3049;

 L3056: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (const_int_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L3057;
    }
  goto L3049;

 L3057: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) < 0
 && (((operands[1])->fld[0]).rtwint) >= -0x80)
       || ((((operands[1])->fld[0]).rtwint) >= 32 * 4
    && (((operands[1])->fld[0]).rtwint) <= 31 * 4 + 0x7c)
       || ((((operands[1])->fld[0]).rtwint) >= 0
    && (((operands[1])->fld[0]).rtwint) < 32 * 4
    && ((((operands[1])->fld[0]).rtwint) & 3) != 0))))
    {
      return gen_split_429 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L3087: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3088;
    }
  goto L3049;

 L3088: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3089;
    }
  goto L3049;

 L3089: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_445 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L3135: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3136;
    }
  goto L3049;

 L3136: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3137;
    }
  goto L3049;

 L3137: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_453 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L3183: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3653;
  goto L3049;

 L3653: __attribute__ ((__unused__))
  if (register_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3184;
    }
 L3654: __attribute__ ((__unused__))
  if (memory_operand (x2, SImode))
    {
      operands[1] = x2;
      goto L3190;
    }
  goto L3049;

 L3184: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3185;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L3654;

 L3185: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_461 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L3654;

 L3190: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (immediate_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3191;
    }
  goto L3049;

 L3191: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && !(target_flags & 0)))
    {
      return gen_split_462 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3049;

 L3651: __attribute__ ((__unused__))
  if (large_int (x1, SImode))
    {
      operands[1] = x1;
      goto L3050;
    }
 L3652: __attribute__ ((__unused__))
  if (const_int_operand (x1, SImode))
    {
      operands[1] = x1;
      goto L3061;
    }
  goto ret0;

 L3050: __attribute__ ((__unused__))
  if ((!(target_flags & 0) && !(target_flags & 0x00100000)))
    {
      return gen_split_427 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  goto L3652;

 L3061: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((operands[1])->fld[0]).rtwint) >= 0x100
   && (((operands[1])->fld[0]).rtwint) <= 0xff + 0x7f))
    {
      return gen_split_430 (operands);
    }
 L3065: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((operands[1])->fld[0]).rtwint) < 0
   && (((operands[1])->fld[0]).rtwint) > - 0x8000))
    {
      return gen_split_431 (operands);
    }
  goto ret0;

 L3641: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[0] = x1;
      goto L2850;
    }
  goto ret0;

 L2850: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == DImode)
    goto L3655;
  goto ret0;

 L3655: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x1)->code))
    {
    case PLUS:
      goto L2851;
    case MINUS:
      goto L2911;
    case NOT:
      goto L3008;
    case AND:
      goto L3013;
    case IOR:
      goto L3019;
    case XOR:
      goto L3025;
    case MEM:
      goto L3043;
    case ASHIFT:
      goto L3129;
    case ASHIFTRT:
      goto L3177;
    case LSHIFTRT:
      goto L3231;
    case SUBREG:
    case REG:
    case ADDRESSOF:
      goto L3661;
    default:
      goto ret0;
   }
 L3661: __attribute__ ((__unused__))
  if (register_operand (x1, DImode))
    {
      operands[1] = x1;
      goto L3039;
    }
  goto ret0;

 L2851: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (rtx_equal_p (x2, operands[0]))
    goto L2852;
 L2857: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2858;
    }
  goto ret0;

 L2852: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2853;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2857;

 L2853: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) > 0xf
 && (((operands[1])->fld[0]).rtwint) <= 0xf + 0xf)
       || ((((operands[1])->fld[0]).rtwint) < - 0x10
    && (((operands[1])->fld[0]).rtwint) >= - 0x10 - 0x10))))
    {
      return gen_split_351 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2857;

 L2858: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2859;
    }
  goto ret0;

 L2859: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == REG
   && ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
   && (((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((((operands[2])->fld[0]).rtwint) > 0x7
 && (((operands[2])->fld[0]).rtwint) <= 0x7 + 0xf)
       || ((((operands[2])->fld[0]).rtwint) < - 0x8
    && (((operands[2])->fld[0]).rtwint) >= - 0x8 - 0x10))))
    {
      return gen_split_352 (operands);
    }
  goto ret0;

 L2911: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (rtx_equal_p (x2, operands[0]))
    goto L2912;
 L2917: __attribute__ ((__unused__))
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2918;
    }
  goto ret0;

 L2912: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L2913;
    }
  x2 = (((x1)->fld[0]).rtx);
  goto L2917;

 L2913: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) > 0x10
 && (((operands[1])->fld[0]).rtwint) <= 0x10 + 0x10)
       || ((((operands[1])->fld[0]).rtwint) < - 0xf
    && (((operands[1])->fld[0]).rtwint) >= - 0xf - 0xf))))
    {
      return gen_split_361 (operands);
    }
  x1 = (((x0)->fld[1]).rtx);
  x2 = (((x1)->fld[0]).rtx);
  goto L2917;

 L2918: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L2919;
    }
  goto ret0;

 L2919: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == REG
   && ((((((operands[1])->fld[0]).rtuint)) >= 2 && ((((operands[1])->fld[0]).rtuint)) <= 7) || ((((operands[1])->fld[0]).rtuint)) == 16 || ((((operands[1])->fld[0]).rtuint)) == 17)
   && (((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((((operands[2])->fld[0]).rtwint) > 0x8
 && (((operands[2])->fld[0]).rtwint) <= 0x8 + 0x10)
       || ((((operands[2])->fld[0]).rtwint) < - 0x7
    && (((operands[2])->fld[0]).rtwint) >= - 0x7 - 0xf))))
    {
      return gen_split_362 (operands);
    }
  goto ret0;

 L3008: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3009;
    }
  goto ret0;

 L3009: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_390 (operands);
    }
  goto ret0;

 L3013: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3667;
  goto ret0;

 L3667: __attribute__ ((__unused__))
  if (((enum rtx_code) (x2)->code) == NOT)
    goto L3032;
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3014;
    }
  goto ret0;

 L3032: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L3033;
    }
  goto ret0;

 L3033: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == NOT)
    goto L3034;
  goto ret0;

 L3034: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L3035;
    }
  goto ret0;

 L3035: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00100000) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_400 (operands);
    }
  goto ret0;

 L3014: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3015;
    }
  goto ret0;

 L3015: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_393 (operands);
    }
  goto ret0;

 L3019: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3020;
    }
  goto ret0;

 L3020: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3021;
    }
  goto ret0;

 L3021: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_396 (operands);
    }
  goto ret0;

 L3025: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3026;
    }
  goto ret0;

 L3026: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[2] = x2;
      goto L3027;
    }
  goto ret0;

 L3027: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_399 (operands);
    }
  goto ret0;

 L3043: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L3044;
  goto ret0;

 L3044: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L3045;
  goto ret0;

 L3045: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (const_int_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L3046;
    }
  goto ret0;

 L3046: __attribute__ ((__unused__))
  if (((target_flags & 0x00002000) && (target_flags & 0x00100000) && reload_completed
   && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) < 0
 && (((operands[1])->fld[0]).rtwint) >= -0x10)
       || ((((operands[1])->fld[0]).rtwint) >= 32 * 8
    && (((operands[1])->fld[0]).rtwint) <= 31 * 8 + 0x8)
       || ((((operands[1])->fld[0]).rtwint) >= 0
    && (((operands[1])->fld[0]).rtwint) < 32 * 8
    && ((((operands[1])->fld[0]).rtwint) & 7) != 0))))
    {
      return gen_split_424 (operands);
    }
  goto ret0;

 L3129: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3130;
    }
  goto ret0;

 L3130: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3131;
    }
  goto ret0;

 L3131: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && !(target_flags & 0)
   && reload_completed
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_451 (operands);
    }
  goto ret0;

 L3177: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3178;
    }
  goto ret0;

 L3178: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3179;
    }
  goto ret0;

 L3179: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && (target_flags & 0x00002000) && !(target_flags & 0)
   && reload_completed
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_459 (operands);
    }
  goto ret0;

 L3231: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[1] = x2;
      goto L3232;
    }
  goto ret0;

 L3232: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (const_int_operand (x2, SImode))
    {
      operands[2] = x2;
      goto L3233;
    }
  goto ret0;

 L3233: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[2])->code) == CONST_INT
   && (((operands[2])->fld[0]).rtwint) > 8
   && (((operands[2])->fld[0]).rtwint) <= 16))
    {
      return gen_split_468 (operands);
    }
  goto ret0;

 L3039: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_423 (operands);
    }
  goto ret0;

 L3642: __attribute__ ((__unused__))
  if (register_operand (x1, HImode))
    {
      operands[0] = x1;
      goto L3068;
    }
  goto ret0;

 L3068: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == HImode
      && ((enum rtx_code) (x1)->code) == MEM)
    goto L3069;
  goto ret0;

 L3069: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L3070;
  goto ret0;

 L3070: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L3071;
  goto ret0;

 L3071: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (const_int_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L3072;
    }
  goto ret0;

 L3072: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) < 0
 && (((operands[1])->fld[0]).rtwint) >= -0x80)
       || ((((operands[1])->fld[0]).rtwint) >= 32 * 2
    && (((operands[1])->fld[0]).rtwint) <= 31 * 2 + 0x7e)
       || ((((operands[1])->fld[0]).rtwint) >= 0
    && (((operands[1])->fld[0]).rtwint) < 32 * 2
    && ((((operands[1])->fld[0]).rtwint) & 1) != 0))))
    {
      return gen_split_437 (operands);
    }
  goto ret0;

 L3643: __attribute__ ((__unused__))
  if (register_operand (x1, QImode))
    {
      operands[0] = x1;
      goto L3075;
    }
  goto ret0;

 L3075: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (((enum machine_mode) (x1)->mode) == QImode
      && ((enum rtx_code) (x1)->code) == MEM)
    goto L3076;
  goto ret0;

 L3076: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode
      && ((enum rtx_code) (x2)->code) == PLUS)
    goto L3077;
  goto ret0;

 L3077: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (rtx_equal_p (x3, operands[0]))
    goto L3078;
  goto ret0;

 L3078: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (const_int_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L3079;
    }
  goto ret0;

 L3079: __attribute__ ((__unused__))
  if (((target_flags & 0x00100000) && reload_completed && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG
   && ((((((operands[0])->fld[0]).rtuint)) >= 2 && ((((operands[0])->fld[0]).rtuint)) <= 7) || ((((operands[0])->fld[0]).rtuint)) == 16 || ((((operands[0])->fld[0]).rtuint)) == 17)
   && ((enum rtx_code) (operands[1])->code) == CONST_INT
   && (((((operands[1])->fld[0]).rtwint) < 0
 && (((operands[1])->fld[0]).rtwint) >= -0x80)
       || ((((operands[1])->fld[0]).rtwint) >= 32
    && (((operands[1])->fld[0]).rtwint) <= 31 + 0x7f))))
    {
      return gen_split_439 (operands);
    }
  goto ret0;

 L3644: __attribute__ ((__unused__))
  if (register_operand (x1, DFmode))
    {
      operands[0] = x1;
      goto L3082;
    }
  goto ret0;

 L3082: __attribute__ ((__unused__))
  x1 = (((x0)->fld[1]).rtx);
  if (register_operand (x1, DFmode))
    {
      operands[1] = x1;
      goto L3083;
    }
  goto ret0;

 L3083: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_442 (operands);
    }
  goto ret0;
 ret0:
  return 0;
}

rtx split_insns (rtx, rtx);
rtx
split_insns (x0, insn)
     rtx x0 __attribute__ ((__unused__));
     rtx insn __attribute__ ((__unused__));
{
  rtx * const operands __attribute__ ((__unused__)) = &recog_data.operand[0];
  rtx x1 __attribute__ ((__unused__));
  rtx x2 __attribute__ ((__unused__));
  rtx x3 __attribute__ ((__unused__));
  rtx x4 __attribute__ ((__unused__));
  rtx x5 __attribute__ ((__unused__));
  rtx x6 __attribute__ ((__unused__));
  rtx x7 __attribute__ ((__unused__));
  rtx tem __attribute__ ((__unused__));
  recog_data.insn = (rtx) 0;

  switch (((enum rtx_code) (x0)->code))
    {
    case SET:
      goto L2801;
    case PARALLEL:
      goto L3638;
    default:
     break;
   }
  goto ret0;

 L2801: __attribute__ ((__unused__))
  return split_1 (x0, insn);

 L3638: __attribute__ ((__unused__))
  switch ((((((x0)->fld[0]).rtvec))->num_elem))
    {
    case 2:
      goto L2813;
    case 5:
      goto L2921;
    default:
      break;
    }
  goto ret0;

 L2813: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  switch (((enum rtx_code) (x1)->code))
    {
    case SET:
      goto L2814;
    case UNSPEC:
      goto L3668;
    default:
     break;
   }
  goto ret0;

 L2814: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, DImode))
    {
      operands[0] = x2;
      goto L2815;
    }
  goto ret0;

 L2815: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == DImode)
    goto L3669;
  goto ret0;

 L3669: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L2816;
    case MINUS:
      goto L2876;
    case ASHIFT:
      goto L3094;
    case ASHIFTRT:
      goto L3142;
    case LSHIFTRT:
      goto L3196;
    default:
     break;
   }
  goto ret0;

 L2816: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2817;
    }
  goto ret0;

 L2817: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L2818;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L2836;
    }
  goto ret0;

 L2818: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2819;
  goto ret0;

 L2819: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2820;
    }
  goto ret0;

 L2820: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
       || (((operands[0])->fld[0]).rtuint) != (((operands[2])->fld[0]).rtuint))))
    {
      return gen_split_347 (operands);
    }
 L2829: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((((operands[0])->fld[0]).rtuint) != (((operands[1])->fld[0]).rtuint)
       || (((operands[0])->fld[0]).rtuint) != (((operands[2])->fld[0]).rtuint))))
    {
      return gen_split_348 (operands);
    }
  goto ret0;

 L2836: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2837;
  goto ret0;

 L2837: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2838;
    }
  goto ret0;

 L2838: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && (((operands[2])->fld[0]).rtwint) > 0))
    {
      return gen_split_349 (operands);
    }
 L2847: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && (((operands[2])->fld[0]).rtwint) > 0))
    {
      return gen_split_350 (operands);
    }
  goto ret0;

 L2876: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L2877;
    }
  goto ret0;

 L2877: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[2] = x3;
      goto L2878;
    }
  if (small_int (x3, DImode))
    {
      operands[2] = x3;
      goto L2896;
    }
  goto ret0;

 L2878: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2879;
  goto ret0;

 L2879: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2880;
    }
  goto ret0;

 L2880: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_357 (operands);
    }
 L2889: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[2])->code) == REG && ((unsigned int) ((int) ((((operands[2])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))))
    {
      return gen_split_358 (operands);
    }
  goto ret0;

 L2896: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2897;
  goto ret0;

 L2897: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L2898;
    }
  goto ret0;

 L2898: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && (((operands[2])->fld[0]).rtwint) > 0))
    {
      return gen_split_359 (operands);
    }
 L2907: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && ((unsigned int) ((int) ((((operands[0])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && ((enum rtx_code) (operands[1])->code) == REG && ((unsigned int) ((int) ((((operands[1])->fld[0]).rtuint)) - 0) < (31 - 0 + 1))
   && (((operands[2])->fld[0]).rtwint) > 0))
    {
      return gen_split_360 (operands);
    }
  goto ret0;

 L3094: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L3095;
    }
  goto ret0;

 L3095: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L3096;
    }
  goto ret0;

 L3096: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L3097;
  goto ret0;

 L3097: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L3098;
    }
  goto ret0;

 L3098: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_447 (operands);
    }
 L3107: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_448 (operands);
    }
 L3116: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_449 (operands);
    }
 L3125: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_450 (operands);
    }
  goto ret0;

 L3142: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L3143;
    }
  goto ret0;

 L3143: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L3144;
    }
  goto ret0;

 L3144: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L3145;
  goto ret0;

 L3145: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L3146;
    }
  goto ret0;

 L3146: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_455 (operands);
    }
 L3155: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_456 (operands);
    }
 L3164: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_457 (operands);
    }
 L3173: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_458 (operands);
    }
  goto ret0;

 L3196: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, DImode))
    {
      operands[1] = x3;
      goto L3197;
    }
  goto ret0;

 L3197: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (small_int (x3, SImode))
    {
      operands[2] = x3;
      goto L3198;
    }
  goto ret0;

 L3198: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L3199;
  goto ret0;

 L3199: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[3] = x2;
      goto L3200;
    }
  goto ret0;

 L3200: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_464 (operands);
    }
 L3209: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 32) != 0))
    {
      return gen_split_465 (operands);
    }
 L3218: __attribute__ ((__unused__))
  if ((reload_completed && !((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_466 (operands);
    }
 L3227: __attribute__ ((__unused__))
  if ((reload_completed && ((target_flags & 0x00010000) != 0) && !(target_flags & 0x00002000)
   && !(target_flags & 0) && !(target_flags & 0) && !(target_flags & 0x00100000)
   && ((enum rtx_code) (operands[0])->code) == REG && (((operands[0])->fld[0]).rtuint) < 176
   && ((enum rtx_code) (operands[1])->code) == REG && (((operands[1])->fld[0]).rtuint) < 176
   && ((((operands[2])->fld[0]).rtwint) & 63) < 32
   && ((((operands[2])->fld[0]).rtwint) & 63) != 0))
    {
      return gen_split_467 (operands);
    }
  goto ret0;

 L3668: __attribute__ ((__unused__))
  if ((((((x1)->fld[0]).rtvec))->num_elem) == 1
      && (((x1)->fld[1]).rtint) == 11)
    goto L3236;
  goto ret0;

 L3236: __attribute__ ((__unused__))
  x2 = (((((x1)->fld[0]).rtvec))->elem[0]);
  if (register_operand (x2, VOIDmode))
    {
      operands[0] = x2;
      goto L3237;
    }
  goto ret0;

 L3237: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L3238;
  goto ret0;

 L3238: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, VOIDmode))
    {
      operands[1] = x2;
      goto L3239;
    }
  goto ret0;

 L3239: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)))
    {
      return gen_split_517 (operands);
    }
  goto ret0;

 L2921: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[0]);
  if (((enum rtx_code) (x1)->code) == SET)
    goto L2922;
  goto ret0;

 L2922: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (register_operand (x2, SImode))
    {
      operands[0] = x2;
      goto L2923;
    }
  goto ret0;

 L2923: __attribute__ ((__unused__))
  x2 = (((x1)->fld[1]).rtx);
  if (((enum machine_mode) (x2)->mode) == SImode)
    goto L3674;
  goto ret0;

 L3674: __attribute__ ((__unused__))
  switch (((enum rtx_code) (x2)->code))
    {
    case PLUS:
      goto L2924;
    case MINUS:
      goto L2958;
    default:
     break;
   }
  goto ret0;

 L2924: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L2925;
  goto ret0;

 L2925: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[1] = x4;
      goto L2926;
    }
  goto ret0;

 L2926: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L2927;
    }
  goto ret0;

 L2927: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[3] = x3;
      goto L2928;
    }
  goto ret0;

 L2928: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2929;
  goto ret0;

 L2929: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2930;
    }
  goto ret0;

 L2930: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2931;
  goto ret0;

 L2931: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L2932;
    }
  goto ret0;

 L2932: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2933;
  goto ret0;

 L2933: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L2934;
    }
  goto ret0;

 L2934: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[4]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2935;
  goto ret0;

 L2935: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L2936;
    }
  goto ret0;

 L2936: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)
   && ((unsigned int) ((int) (true_regnum (operands[0])) - 0) < (31 - 0 + 1))
   && ((unsigned int) ((int) (true_regnum (operands[3])) - 0) < (31 - 0 + 1))))
    {
      return gen_split_366 (operands);
    }
 L2953: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)
   && ((unsigned int) ((int) (true_regnum (operands[0])) - 0) < (31 - 0 + 1))
   && true_regnum (operands[3]) == (64 + 1)))
    {
      return gen_split_367 (operands);
    }
  goto ret0;

 L2958: __attribute__ ((__unused__))
  x3 = (((x2)->fld[0]).rtx);
  if (register_operand (x3, SImode))
    {
      operands[1] = x3;
      goto L2959;
    }
  goto ret0;

 L2959: __attribute__ ((__unused__))
  x3 = (((x2)->fld[1]).rtx);
  if (((enum machine_mode) (x3)->mode) == SImode
      && ((enum rtx_code) (x3)->code) == MULT)
    goto L2960;
  goto ret0;

 L2960: __attribute__ ((__unused__))
  x4 = (((x3)->fld[0]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[2] = x4;
      goto L2961;
    }
  goto ret0;

 L2961: __attribute__ ((__unused__))
  x4 = (((x3)->fld[1]).rtx);
  if (register_operand (x4, SImode))
    {
      operands[3] = x4;
      goto L2962;
    }
  goto ret0;

 L2962: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[1]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2963;
  goto ret0;

 L2963: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[4] = x2;
      goto L2964;
    }
  goto ret0;

 L2964: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[2]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2965;
  goto ret0;

 L2965: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[5] = x2;
      goto L2966;
    }
  goto ret0;

 L2966: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[3]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2967;
  goto ret0;

 L2967: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[6] = x2;
      goto L2968;
    }
  goto ret0;

 L2968: __attribute__ ((__unused__))
  x1 = (((((x0)->fld[0]).rtvec))->elem[4]);
  if (((enum rtx_code) (x1)->code) == CLOBBER)
    goto L2969;
  goto ret0;

 L2969: __attribute__ ((__unused__))
  x2 = (((x1)->fld[0]).rtx);
  if (scratch_operand (x2, SImode))
    {
      operands[7] = x2;
      goto L2970;
    }
  goto ret0;

 L2970: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)
   && ((unsigned int) ((int) (true_regnum (operands[0])) - 0) < (31 - 0 + 1))
   && ((unsigned int) ((int) (true_regnum (operands[1])) - 0) < (31 - 0 + 1))))
    {
      return gen_split_368 (operands);
    }
 L2987: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)
   && ((unsigned int) ((int) (true_regnum (operands[0])) - 0) < (31 - 0 + 1))
   && true_regnum (operands[1]) == (64 + 1)))
    {
      return gen_split_369 (operands);
    }
 L3004: __attribute__ ((__unused__))
  if ((reload_completed && !(target_flags & 0)
   && ((unsigned int) ((int) (true_regnum (operands[0])) - 0) < (31 - 0 + 1))
   && ((unsigned int) ((int) (true_regnum (operands[1])) - 0) < (31 - 0 + 1))))
    {
      return gen_split_370 (operands);
    }
  goto ret0;
 ret0:
  return 0;
}
